uint64_t WebKit::factoryForKeySystem(WebKit *this, const WTF::String *a2)
{
  v3 = WebCore::CDMFactory::registeredFactories(this);
  if (!*(v3 + 12))
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  while (1)
  {
    result = (*(**(*v4 + 8 * v5) + 24))(*(*v4 + 8 * v5), this);
    if (result)
    {
      break;
    }

    if (++v5 >= *(v4 + 12))
    {
      return 0;
    }
  }

  if (v5 < *(v4 + 12))
  {
    return *(*v4 + 8 * v5);
  }

  __break(0xC471u);
  return result;
}

uint64_t WebKit::RemoteCDMFactoryProxy::supportsKeySystem(int a1, WebKit *this, uint64_t *a3)
{
  v4 = WebKit::factoryForKeySystem(this, this) != 0;
  v5 = *a3;
  *a3 = 0;
  (*(*v5 + 16))(v5, v4);
  v6 = *(*v5 + 8);

  return v6(v5);
}

uint64_t WebKit::RemoteCDMFactoryProxy::didReceiveCDMMessage(uint64_t this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v5 = *(a3 + 7);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9[5] = v3;
    v9[6] = v4;
    v9[0] = v5;
    this = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((this + 48), v9);
    if (this)
    {
      v8 = this;
      ++*(this + 16);
      this = WebKit::RemoteCDMProxy::didReceiveMessage(this, a2, a3);
      if (v8[4] == 1)
      {
        return (*(*v8 + 24))(v8);
      }

      else
      {
        --v8[4];
      }
    }
  }

  return this;
}

uint64_t WebKit::RemoteCDMFactoryProxy::didReceiveCDMInstanceMessage(uint64_t this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v5 = *(a3 + 7);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9[5] = v3;
    v9[6] = v4;
    v9[0] = v5;
    this = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((this + 56), v9);
    if (this)
    {
      v8 = this;
      ++*(this + 32);
      this = WebKit::RemoteCDMInstanceProxy::didReceiveMessage(this, a2, a3);
      if (v8[8] == 1)
      {
        return (*(*v8 + 24))(v8);
      }

      else
      {
        --v8[8];
      }
    }
  }

  return this;
}

_DWORD *WebKit::RemoteCDMFactoryProxy::didReceiveCDMInstanceSessionMessage(_DWORD *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v5 = *(a3 + 7);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10[5] = v3;
    v10[6] = v4;
    v10[0] = v5;
    this = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 8, v10);
    if (this)
    {
      v8 = this + 8;
      ++this[8];
      WebKit::RemoteCDMInstanceSessionProxy::didReceiveMessage(this, a2, a3);
      return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v8, v9);
    }
  }

  return this;
}

BOOL WebKit::RemoteCDMFactoryProxy::didReceiveSyncCDMMessage(uint64_t a1, atomic_ullong *a2, uint64_t *a3, uint64_t *a4)
{
  if ((a3[7] - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v11 = a3[7];
  v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 48), &v11);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  ++v7[4];
  v9 = WebKit::RemoteCDMProxy::didReceiveSyncMessage(v7, a2, a3, a4);
  if (v8[4] == 1)
  {
    (*(*v8 + 24))(v8);
  }

  else
  {
    --v8[4];
  }

  return v9;
}

BOOL WebKit::RemoteCDMFactoryProxy::didReceiveSyncCDMInstanceMessage(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  if ((*(a3 + 56) - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v11 = *(a3 + 56);
  v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 56), &v11);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  ++v7[8];
  v9 = WebKit::RemoteCDMInstanceProxy::didReceiveSyncMessage(v7, a2, a3, a4);
  if (v8[8] == 1)
  {
    (*(*v8 + 24))(v8);
  }

  else
  {
    --v8[8];
  }

  return v9;
}

uint64_t WebKit::RemoteCDMFactoryProxy::didReceiveSyncCDMInstanceSessionMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11[1] = v3;
    v11[2] = v4;
    v11[0] = v5;
    v6 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 64), v11);
    if (v6)
    {
      v9 = *(v6 + 32);
      v8 = (v6 + 32);
      *v8 = v9 + 1;
      WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v8, v7);
    }
  }

  return 0;
}

void WebKit::RemoteCDMFactoryProxy::removeInstance(uint64_t *a1, uint64_t *a2)
{
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1 + 7,  a2);
  v4 = a1[7];
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
    if (v5 == v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v5 = 0;
  }

  if (v5 != v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1 + 7, v3);
  }

LABEL_8:
  v6 = a1[5];
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v6, a1[4], &v9);
    v7 = v9;
    if (v9)
    {
      v8 = a1[7];
      if (v8 && *(v8 - 12))
      {
        v9 = 0;
LABEL_15:
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v7 + 16));
        return;
      }

      WebKit::GPUProcess::tryExitIfUnusedAndUnderMemoryPressure(*(v9 + 80));
      v7 = v9;
      v9 = 0;
      if (v7)
      {
        goto LABEL_15;
      }
    }
  }
}

uint64_t *WebKit::RemoteCDMFactoryProxy::removeSession(uint64_t a1, uint64_t *a2)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 64),  a2);
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
    if (v5 == result)
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

    v5 = 0;
  }

  if (v5 != result)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 64), result);
  }

  return result;
}

uint64_t WebKit::RemoteCDMFactoryProxy::logger(WebKit::RemoteCDMFactoryProxy *this)
{
  result = *(this + 9);
  if (!result)
  {
    v3 = WTF::fastMalloc(0x18);
    *(v3 + 8) = 1;
    *v3 = &unk_1F10FAF48;
    *(v3 + 12) = 1;
    *(v3 + 16) = this;
    v4 = *(this + 9);
    *(this + 9) = v3;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 5);
    if (v5)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, *(this + 4), &v8);
      v6 = v8;
      result = *(this + 9);
      if (v8)
      {
        if (*(v8 + 136) <= -2)
        {
          v7 = (*(v8 + 345) >> 5) & 1;
        }

        else
        {
          LOBYTE(v7) = 1;
        }
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      v6 = 0;
      LOBYTE(v7) = 0;
      result = *(this + 9);
    }

    if (*(result + 16) == this)
    {
      *(result + 12) = v7;
    }

    v8 = 0;
    if (v6)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v6 + 16));
      return *(this + 9);
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteCDMFactoryProxy::sharedPreferencesForWebProcess@<X0>(WebKit::RemoteCDMFactoryProxy *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 5);
  if (result && (result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 4), &v6), (v5 = v6) != 0))
  {
    *a2 = *(v6 + 336);
    *(a2 + 16) = *(v5 + 352);
    *(a2 + 24) = 1;
    v6 = 0;
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

void WebKit::RemoteCDMInstanceProxy::create(uint64_t a1, uint64_t a2)
{
  v2 = *(*(**a2 + 72))();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  operator new();
}

uint64_t WebKit::RemoteCDMInstanceProxy::RemoteCDMInstanceProxy(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  *(a1 + 32) = 1;
  *a1 = &unk_1F10FC010;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_1F10FC068;
  *(a1 + 24) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v10 = *(a2 + 8);
  atomic_fetch_add(v10, 1u);
  *(a1 + 40) = v10;
  v11 = *a3;
  *a3 = 0;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = a5;
  *(a1 + 72) = 0;
  v13 = *(a2 + 48);
  atomic_fetch_add((v13 + 8), 1u);
  v14 = *(a2 + 56);
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  v15 = *(a1 + 48);
  if (!*(a1 + 8))
  {
    v17 = WTF::fastCompactMalloc(0x10);
    *v17 = 1;
    *(v17 + 8) = a1;
    v18 = *(a1 + 8);
    *(a1 + 8) = v17;
    if (v18)
    {
      if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v18);
        WTF::fastFree(v18, v16);
      }
    }
  }

  v19 = *(a1 + 8);
  atomic_fetch_add(v19, 1u);
  v23 = v19;
  (*(*v15 + 16))(v15, &v23);
  v21 = v23;
  v23 = 0;
  if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21);
    WTF::fastFree(v21, v20);
  }

  return a1;
}

void WebKit::RemoteCDMInstanceProxy::~RemoteCDMInstanceProxy(WebKit::RemoteCDMInstanceProxy *this)
{
  *this = &unk_1F10FC010;
  *(this + 2) = &unk_1F10FC068;
  (*(**(this + 6) + 24))(*(this + 6));
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, v2);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    std::default_delete<WebKit::RemoteCDMInstanceConfiguration>::operator()[abi:sn200100](this + 56, v5);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    if (v6[2] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[2];
    }
  }

  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v5);
  }

  if (*(this + 8) == 1)
  {
    *(this + 2) = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v5);
    v9 = *(this + 1);
    if (v9)
    {
      *(v9 + 8) = 0;
      v10 = *(this + 1);
      *(this + 1) = 0;
      if (v10)
      {
        if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v10);
          WTF::fastFree(v10, v8);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteCDMInstanceProxy::~RemoteCDMInstanceProxy(this);

  WTF::fastFree(v1, v2);
}

void non-virtual thunk toWebKit::RemoteCDMInstanceProxy::~RemoteCDMInstanceProxy(WebKit::RemoteCDMInstanceProxy *this)
{
  WebKit::RemoteCDMInstanceProxy::~RemoteCDMInstanceProxy((this - 16));
}

{
  WebKit::RemoteCDMInstanceProxy::~RemoteCDMInstanceProxy((this - 16));

  WTF::fastFree(v1, v2);
}

_DWORD *WebKit::RemoteCDMInstanceProxy::unrequestedInitializationDataReceived(_DWORD *result, void *a2, atomic_uint **a3)
{
  v3 = *(result + 5);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v4 + 24);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          v7 = result;
          v8 = (v6 + 16);
          ++*(v6 + 16);
          v9 = *(v6 + 40);
          if (v9)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v9, *(v6 + 32), &v19);
            if (v19)
            {
              v12 = *(v19 + 56);
              v13 = *(v7 + 8);
              v14 = IPC::Encoder::operator new(0x238, a2);
              *v14 = 981;
              *(v14 + 2) = 0;
              *(v14 + 3) = 0;
              *(v14 + 1) = v13;
              *(v14 + 68) = 0;
              *(v14 + 70) = 0;
              *(v14 + 69) = 0;
              IPC::Encoder::encodeHeader(v14);
              v20 = v14;
              IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a2);
              IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(v14, *a3);
              IPC::Connection::sendMessageImpl(v12, &v20, 0, 0);
              v15 = v20;
              v20 = 0;
              if (v15)
              {
                IPC::Encoder::~Encoder(v15, a2);
                bmalloc::api::tzoneFree(v17, v18);
              }

              v16 = v19;
              v19 = 0;
              if (v16)
              {
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v16 + 16));
              }
            }
          }

          return WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v8, a2);
        }
      }
    }
  }

  return result;
}

_DWORD *WebKit::RemoteCDMInstanceProxy::setStorageDirectory(_DWORD *this, const WTF::String *a2)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          v7 = this;
          v8 = (v5 + 16);
          ++*(v5 + 16);
          v9 = *(v5 + 40);
          if (v9 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v9, *(v5 + 32), &v13), v13))
          {
            v10 = WebKit::GPUConnectionToWebProcess::mediaKeysStorageDirectory(v13);
            v12 = v13;
            v13 = 0;
            if (v12)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v12 + 2);
            }
          }

          else
          {
            v10 = MEMORY[0x1E696EBA8];
          }

          v11 = *v10;
          if (v11)
          {
            atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
            if (v11[1] && *a2 && WTF::StringImpl::startsWith())
            {
              (*(**(v7 + 6) + 64))(*(v7 + 6), a2);
            }

            if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v11, a2);
            }
          }

          return WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v8, a2);
        }
      }
    }
  }

  return this;
}

_DWORD *WebKit::RemoteCDMInstanceProxy::createSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  (*(**(a1 + 48) + 80))(&v35);
  if (v35 && (v5 = *(a1 + 40)) != 0 && (v6 = *(v5 + 8)) != 0 && (v7 = *(v6 + 24)) != 0 && *(v7 + 8))
  {
    (*(*v35 + 16))();
    IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
    v34 = IdentifierInternal;
    v9 = *(a1 + 40);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v10 + 8), *(v9 + 8));
      v11 = *(v10 + 8);
      if (v11)
      {
        atomic_fetch_add(v11, 1u);
        IdentifierInternal = v34;
      }
    }

    else
    {
      v11 = 0;
    }

    v14 = v35;
    v35 = 0;
    v15 = WTF::fastMalloc(0x48);
    *(v15 + 32) = 1;
    *v15 = &unk_1F10FC0B0;
    *(v15 + 8) = 0;
    *(v15 + 16) = &unk_1F10FC118;
    *(v15 + 24) = 0;
    *(v15 + 40) = v11;
    *(v15 + 48) = v14;
    *(v15 + 56) = IdentifierInternal;
    *(v15 + 64) = 0;
    v33 = v15;
    v17 = WTF::fastCompactMalloc(0x10);
    *v17 = 1;
    *(v17 + 8) = v15 + 16;
    v18 = *(v15 + 24);
    *(v15 + 24) = v17;
    if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      WTF::fastFree(v18, v16);
    }

    v19 = *(v15 + 24);
    atomic_fetch_add(v19, 1u);
    v36[0] = v19;
    v20 = *(v33 + 48);
    ++v20[2];
    (*(*v20 + 24))(v20, v36);
    if (v20[2] == 1)
    {
      (*(*v20 + 8))(v20);
    }

    else
    {
      --v20[2];
    }

    v22 = v36[0];
    v36[0] = 0;
    if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v22);
      WTF::fastFree(v22, v21);
    }

    v23 = *(a1 + 40);
    if (v23)
    {
      v24 = *(v23 + 8);
      if (v24)
      {
        ++*(v24 + 16);
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = *(v24 + 24);
    if (v25 && (v26 = *(v25 + 8)) != 0)
    {
      v28 = *(v26 + 16);
      v27 = v26 + 16;
      *v27 = v28 + 1;
      WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>(v36, (v27 + 48), &v34, &v33);
      WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v27, v29);
    }

    else
    {
      WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>(v36, 0x40, &v34, &v33);
    }

    if (*(v24 + 16) == 1)
    {
      (*(*v24 + 24))(v24);
    }

    else
    {
      --*(v24 + 16);
    }

    v30 = v34;
    v31 = *a3;
    *a3 = 0;
    (*(*v31 + 16))(v31, v30, 1);
    (*(*v31 + 8))(v31);
    if (v33)
    {
      WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref((v33 + 32), v32);
    }
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12, 0, 0);
    (*(*v12 + 8))(v12);
  }

  result = v35;
  v35 = 0;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 8))(result);
    }

    else
    {
      --result[2];
    }
  }

  return result;
}

_DWORD *WebKit::RemoteCDMInstanceProxy::sharedPreferencesForWebProcess@<X0>(_DWORD *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 5);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    ++v3[4];
    this = WebKit::RemoteCDMProxy::sharedPreferencesForWebProcess(v3, a2);
    if (v3[4] == 1)
    {
      v4 = *(*v3 + 24);

      return v4(v3);
    }

    else
    {
      --v3[4];
    }
  }

  else
  {
    *a2 = 0;
    a2[24] = 0;
  }

  return this;
}

void WebKit::RemoteCDMInstanceSessionProxy::~RemoteCDMInstanceSessionProxy(WebKit::RemoteCDMInstanceSessionProxy *this, void *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  if (*(this + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, a2);
    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteCDMInstanceSessionProxy::~RemoteCDMInstanceSessionProxy(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteCDMInstanceSessionProxy::~RemoteCDMInstanceSessionProxy(WebKit::RemoteCDMInstanceSessionProxy *this, void *a2)
{
  WebKit::RemoteCDMInstanceSessionProxy::~RemoteCDMInstanceSessionProxy((this - 16), a2);
}

{
  WebKit::RemoteCDMInstanceSessionProxy::~RemoteCDMInstanceSessionProxy((this - 16), a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::RemoteCDMInstanceSessionProxy::setLogIdentifier(WebKit::RemoteCDMInstanceSessionProxy *this)
{
  v1 = *(this + 6);
  ++v1[2];
  result = (*(*v1 + 16))(v1);
  if (v1[2] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[2];
  }

  return result;
}

unsigned int *WebKit::RemoteCDMInstanceSessionProxy::requestLicense(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t *a6)
{
  if (*a5)
  {
    v12 = *(a1 + 40);
    if (v12 && (v13 = *(v12 + 8)) != 0)
    {
      ++*(v13 + 16);
      v14 = (*(**(v13 + 32) + 128))(*(v13 + 32), a4);
      v15 = v14;
      if (*(v13 + 16) == 1)
      {
        (*(*v13 + 24))(v13);
        if (v15)
        {
          goto LABEL_6;
        }
      }

      else
      {
        --*(v13 + 16);
        if (v14)
        {
LABEL_6:
          v16 = *(a1 + 48);
          ++v16[2];
          v23 = *a5;
          *a5 = 0;
          v17 = *a6;
          *a6 = 0;
          v18 = WTF::fastMalloc(0x10);
          *v18 = &unk_1F10FC220;
          v18[1] = v17;
          v22 = v18;
          (*(*v16 + 40))(v16, a2, a3, a4, &v23, &v22);
          v19 = v22;
          v22 = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }

          result = v23;
          v23 = 0;
          if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result + 2);
            result = (*(*result + 8))(result);
          }

          if (v16[2] == 1)
          {
            return (*(*v16 + 8))(v16);
          }

          --v16[2];
          return result;
        }
      }
    }

    else if ((*(*MEMORY[0x20] + 128))(MEMORY[0x20], a4))
    {
      goto LABEL_6;
    }
  }

  v23 = 0;
  v21 = *a6;
  *a6 = 0;
  (*(*v21 + 16))(v21, &v23, MEMORY[0x1E696EBA8], 0, 0);
  (*(*v21 + 8))(v21);
  result = v23;
  v23 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    return (*(*result + 8))(result);
  }

  return result;
}

unsigned int *WebKit::RemoteCDMInstanceSessionProxy::updateLicense(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  if (*a4)
  {
    v9 = *(a1 + 40);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      ++*(v10 + 16);
      (*(**(v10 + 32) + 136))(&v23);
      if (*(v10 + 16) == 1)
      {
        (*(*v10 + 24))(v10);
      }

      else
      {
        --*(v10 + 16);
      }
    }

    else
    {
      (*(*MEMORY[0x20] + 136))(&v23);
    }

    v14 = v23;
    if (v23)
    {
      v15 = *(a1 + 48);
      ++v15[2];
      v29[0] = v14;
      v23 = 0;
      v16 = *a5;
      *a5 = 0;
      v17 = WTF::fastMalloc(0x10);
      *v17 = &unk_1F10FC248;
      v17[1] = v16;
      v24 = v17;
      (*(*v15 + 48))(v15, a2, a3, v29, &v24);
      v18 = v24;
      v24 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      v19 = v29[0];
      v29[0] = 0;
      if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19 + 2);
        (*(*v19 + 8))(v19);
      }

      if (v15[2] == 1)
      {
        (*(*v15 + 8))(v15);
      }

      else
      {
        --v15[2];
      }
    }

    else
    {
      LOBYTE(v29[0]) = 0;
      v30 = 0;
      v27[0] = 0;
      v28 = 0;
      LOBYTE(v24) = 0;
      v26 = 0;
      v20 = *a5;
      *a5 = 0;
      (*(*v20 + 16))(v20, 0, v29, v27, &v24, 0);
      (*(*v20 + 8))(v20);
      if (v26 == 1)
      {
        v22 = v25;
        v25 = 0;
        if (v22)
        {
          if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22 + 2);
            (*(*v22 + 8))(v22);
          }
        }
      }

      if (v30 == 1)
      {
        WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v21);
      }
    }

    result = v23;
    v23 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    LOBYTE(v29[0]) = 0;
    v30 = 0;
    v27[0] = 0;
    v28 = 0;
    LOBYTE(v24) = 0;
    v26 = 0;
    v11 = *a5;
    *a5 = 0;
    (*(*v11 + 16))(v11, 1, v29, v27, &v24, 0);
    result = (*(*v11 + 8))(v11);
    if (v26 == 1)
    {
      result = v25;
      v25 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }
    }

    if (v30 == 1)
    {
      return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v13);
    }
  }

  return result;
}

unsigned int *WebKit::RemoteCDMInstanceSessionProxy::loadSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *(a1 + 40);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    ++*(v10 + 16);
    (*(**(v10 + 32) + 144))(&v23);
    if (*(v10 + 16) == 1)
    {
      (*(*v10 + 24))(v10);
    }

    else
    {
      --*(v10 + 16);
    }
  }

  else
  {
    (*(*MEMORY[0x20] + 144))(&v23);
  }

  if (v24)
  {
    v11 = *(a1 + 48);
    ++v11[2];
    v12 = *a5;
    *a5 = 0;
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F10FC270;
    v13[1] = v12;
    v21[0] = v13;
    (*(*v11 + 56))(v11, a2, &v23, a4, v21);
    result = v21[0];
    v21[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v11[2] == 1)
    {
      result = (*(*v11 + 8))(v11);
    }

    else
    {
      --v11[2];
    }
  }

  else
  {
    LOBYTE(v21[0]) = 0;
    v22 = 0;
    v20[0] = 0;
    v20[8] = 0;
    v17[0] = 0;
    v19 = 0;
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16, v21, v20, v17, 0, 2);
    result = (*(*v16 + 8))(v16);
    if (v19 == 1)
    {
      result = v18;
      v18 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }
    }

    if (v22 == 1)
    {
      result = WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v14);
    }
  }

  if (v24 == 1)
  {
    result = v23;
    v23 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteCDMInstanceSessionProxy::closeSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 48);
  ++v4[2];
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10FC298;
  v6[1] = v5;
  v8 = v6;
  (*(*v4 + 64))(v4, a2, &v8);
  result = v8;
  v8 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v4[2] == 1)
  {
    return (*(*v4 + 8))(v4);
  }

  --v4[2];
  return result;
}

uint64_t WebKit::RemoteCDMInstanceSessionProxy::removeSessionData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 48);
  ++v6[2];
  v7 = *a4;
  *a4 = 0;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10FC2C0;
  v8[1] = v7;
  v10 = v8;
  (*(*v6 + 72))(v6, a2, a3, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v6[2] == 1)
  {
    return (*(*v6 + 8))(v6);
  }

  --v6[2];
  return result;
}

uint64_t WebKit::RemoteCDMInstanceSessionProxy::storeRecordOfKeyUsage(WebKit::RemoteCDMInstanceSessionProxy *this, const WTF::String *a2)
{
  v2 = *(this + 6);
  ++v2[2];
  result = (*(*v2 + 80))(v2, a2);
  if (v2[2] == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --v2[2];
  }

  return result;
}

_DWORD *WebKit::RemoteCDMInstanceSessionProxy::updateKeyStatuses(_DWORD *result, unsigned int *a2)
{
  v2 = *(result + 5);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          v6 = result;
          v7 = (v5 + 16);
          ++*(v5 + 16);
          v8 = *(v5 + 40);
          if (v8)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(v5 + 32), &v20);
            if (v20)
            {
              v10 = *(v20 + 56);
              v11 = *(v6 + 7);
              v12 = IPC::Encoder::operator new(0x238, a2);
              *v12 = 980;
              *(v12 + 2) = 0;
              *(v12 + 3) = 0;
              *(v12 + 1) = v11;
              *(v12 + 68) = 0;
              *(v12 + 70) = 0;
              *(v12 + 69) = 0;
              IPC::Encoder::encodeHeader(v12);
              v21 = v12;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a2[3]);
              v13 = a2[3];
              if (v13)
              {
                v14 = *a2;
                v15 = v14 + 16 * v13;
                do
                {
                  IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(v12, *v14);
                  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, *(v14 + 8));
                  v14 += 16;
                }

                while (v14 != v15);
              }

              IPC::Connection::sendMessageImpl(v10, &v21, 0, 0);
              v16 = v21;
              v21 = 0;
              if (v16)
              {
                IPC::Encoder::~Encoder(v16, a2);
                bmalloc::api::tzoneFree(v18, v19);
              }

              v17 = v20;
              v20 = 0;
              if (v17)
              {
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v17 + 16));
              }
            }
          }

          return WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v7, a2);
        }
      }
    }
  }

  return result;
}

_DWORD *WebKit::RemoteCDMInstanceSessionProxy::sendMessage(_DWORD *result, void *a2, atomic_uint **a3)
{
  v3 = *(result + 5);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v4 + 24);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          v7 = result;
          v8 = (v6 + 16);
          ++*(v6 + 16);
          v9 = *(v6 + 40);
          if (v9)
          {
            v11 = a2;
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v9, *(v6 + 32), &v22);
            if (v22)
            {
              v12 = *(v22 + 56);
              v13 = *a3;
              *a3 = 0;
              v21 = v13;
              v14 = *(v7 + 7);
              v15 = IPC::Encoder::operator new(0x238, a2);
              *v15 = 978;
              *(v15 + 2) = 0;
              *(v15 + 3) = 0;
              *(v15 + 1) = v14;
              *(v15 + 68) = 0;
              *(v15 + 70) = 0;
              *(v15 + 69) = 0;
              IPC::Encoder::encodeHeader(v15);
              v23 = v15;
              IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v15, v11);
              IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v15, &v21);
              IPC::Connection::sendMessageImpl(v12, &v23, 0, 0);
              v16 = v23;
              v23 = 0;
              if (v16)
              {
                IPC::Encoder::~Encoder(v16, a2);
                bmalloc::api::tzoneFree(v19, v20);
              }

              v17 = v21;
              v21 = 0;
              if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v17 + 2);
                (*(*v17 + 8))(v17);
              }

              v18 = v22;
              v22 = 0;
              if (v18)
              {
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v18 + 16));
              }
            }
          }

          return WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v8, a2);
        }
      }
    }
  }

  return result;
}

_DWORD *WebKit::RemoteCDMInstanceSessionProxy::sessionIdChanged(_DWORD *this, const WTF::String *a2)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          v6 = this;
          v7 = (v5 + 16);
          ++*(v5 + 16);
          v8 = *(v5 + 40);
          if (v8)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(v5 + 32), &v17);
            if (v17)
            {
              v10 = *(v17 + 56);
              v11 = *(v6 + 7);
              v12 = IPC::Encoder::operator new(0x238, a2);
              *v12 = 979;
              *(v12 + 2) = 0;
              *(v12 + 3) = 0;
              *(v12 + 1) = v11;
              *(v12 + 68) = 0;
              *(v12 + 70) = 0;
              *(v12 + 69) = 0;
              IPC::Encoder::encodeHeader(v12);
              v18 = v12;
              IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
              IPC::Connection::sendMessageImpl(v10, &v18, 0, 0);
              v13 = v18;
              v18 = 0;
              if (v13)
              {
                IPC::Encoder::~Encoder(v13, a2);
                bmalloc::api::tzoneFree(v15, v16);
              }

              v14 = v17;
              v17 = 0;
              if (v14)
              {
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v14 + 16));
              }
            }
          }

          return WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v7, a2);
        }
      }
    }
  }

  return this;
}

_DWORD *WebKit::RemoteAudioSessionProxy::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

_DWORD *WebKit::RemoteCDMInstanceProxy::deref(_DWORD *this)
{
  if (this[8] == 1)
  {
    return (*(*this + 24))();
  }

  --this[8];
  return this;
}

uint64_t non-virtual thunk toWebKit::RemoteCDMInstanceProxy::deref(uint64_t this)
{
  if (*(this + 16) == 1)
  {
    return (*(*(this - 16) + 24))();
  }

  --*(this + 16);
  return this;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[5 * v1];
  if (!*(result - 3))
  {
    return &result[5 * v1];
  }

  if (v1)
  {
    v3 = 40 * v1;
    while ((*result + 1) <= 1)
    {
      result += 5;
      v3 -= 40;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref((v5 + 32), a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (v5[8] == 1)
          {
            (*(*v5 + 24))(v5);
          }

          else
          {
            --v5[8];
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (v5[4] == 1)
          {
            (*(*v5 + 24))(v5);
          }

          else
          {
            --v5[4];
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void std::default_delete<WebKit::RemoteCDMInstanceConfiguration>::operator()[abi:sn200100](uint64_t a1, WTF::StringImpl *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }

    JUMPOUT(0x19EB14CF0);
  }
}

uint64_t IPC::Connection::send<Messages::RemoteAudioHardwareListener::AudioOutputDeviceChanged>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 934;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a2[1]);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}

void *WTF::HashTable<WebCore::AudioSessionCategory,WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>>,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::HashMap<WebCore::AudioSessionCategory,unsigned int,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    if (v5)
    {
      v7 = v5 << (6 * v6 >= (2 * v5));
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 8;
LABEL_6:
  v8 = WTF::fastMalloc((8 * v7 + 16));
  if (v7)
  {
    v10 = v7;
    v11 = v8 + 5;
    do
    {
      *(v11 - 4) = -1;
      *v11 = 0;
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  *a1 = (v8 + 4);
  v8[2] = v7 - 1;
  v8[3] = v7;
  *v8 = 0;
  v8[1] = v6;
  if (v5)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (v4 + 8 * v12);
      v15 = *v14;
      if (v15 <= 0xFD)
      {
        v16 = *a1;
        if (*a1)
        {
          v17 = *(v16 - 8);
        }

        else
        {
          v17 = 0;
        }

        v18 = 0;
        v19 = 9 * ((~(v15 << 15) + v15) ^ ((~(v15 << 15) + v15) >> 10));
        v20 = ((v19 ^ (v19 >> 6)) + ~((v19 ^ (v19 >> 6)) << 11)) ^ (((v19 ^ (v19 >> 6)) + ~((v19 ^ (v19 >> 6)) << 11)) >> 16);
        do
        {
          v21 = v20 & v17;
          v20 = ++v18 + v21;
        }

        while (*(v16 + 8 * v21) != 255);
        v22 = (v16 + 8 * v21);
        *v22 = *v14;
        if (v14 == a2)
        {
          v13 = v22;
        }
      }

      ++v12;
    }

    while (v12 != v5);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v9);
  return v13;
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::RemoteAudioSessionProxyManager::updatePresentingProcesses(void)::$_0,void,WebKit::RemoteAudioSessionProxy &>::call(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v4, *(a2 + 24), v22);
    v5 = *&v22[0];
  }

  else
  {
    v5 = 0;
    *&v22[0] = 0;
  }

  v6 = (v5 + 16);
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
      *&v22[0] = 0;
      v9 = v5;
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
  v9 = *&v22[0];
  *&v22[0] = 0;
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_8:
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v9 + 16));
LABEL_9:
  if ((*(v5 + 349) & 8) != 0)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
  }

  **(a1 + 8) = 1;
  if (*(a2 + 64) != 1)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
  }

  v10 = *(v5 + 208);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v10);
  v12 = result;
  v14 = v13;
  v15 = v10 ? &v10[5 * *(v10 - 1)] : 0;
  if (v15 == result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
  }

  do
  {
    v16 = *(a1 + 16);
    v17 = *(v12 + 3);
    v22[0] = *(v12 + 1);
    v22[1] = v17;
    v18 = *(v16 + 12);
    if (v18 == *(v16 + 8))
    {
      result = WTF::Vector<audit_token_t,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v16, v18 + 1, v22);
      v19 = (*v16 + 32 * *(v16 + 12));
      v20 = *result;
      v21 = *(result + 1);
    }

    else
    {
      v19 = (*v16 + 32 * v18);
      v20 = *(v12 + 1);
      v21 = *(v12 + 3);
    }

    *v19 = v20;
    v19[1] = v21;
    ++*(v16 + 12);
    do
    {
      v12 += 5;
    }

    while (v12 != v14 && (*v12 + 1) <= 1);
  }

  while (v12 != v15);
  if (v5)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
  }

  return result;
}

unint64_t WTF::Vector<audit_token_t,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<audit_token_t,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<audit_token_t,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void **WTF::Vector<audit_token_t,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(void **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 3);
      v6 = WTF::fastMalloc((32 * a2));
      *(v3 + 2) = v2;
      *v3 = v6;
      result = memcpy(v6, v4, 32 * v5);
      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 2) = 0;
        }

        return WTF::fastFree(v4, v7);
      }
    }
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::RemoteAudioSessionProxyManager::beginAudioSessionInterruption(void)::$_0,void,WebKit::RemoteAudioSessionProxy &>::call(int a1, WebKit::RemoteAudioSessionProxy *this)
{
  if (*(this + 64) == 1)
  {
    return WebKit::RemoteAudioSessionProxy::beginInterruption(this);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::RemoteAudioSessionProxyManager::endAudioSessionInterruption(WebCore::AudioSessionMayResume)::$_0,void,WebKit::RemoteAudioSessionProxy &>::call(IPC::Encoder *result, uint64_t a2)
{
  if (*(a2 + 64) == 1)
  {
    v14 = v2;
    v15 = v3;
    v4 = *(result + 8);
    *(a2 + 65) = 0;
    WebKit::RemoteAudioSessionProxy::protectedConnection(&v11, *(a2 + 24), *(a2 + 32));
    v5 = v11;
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 951;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v12 = v7;
    v13 = v4;
    IPC::Encoder::operator<<<BOOL>(v7, &v13);
    IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
    result = v12;
    v12 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      result = bmalloc::api::tzoneFree(v9, v10);
      if (!v5)
      {
        return result;
      }
    }

    else if (!v5)
    {
      return result;
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  return result;
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 1))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB94F48);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 == v2)
    {
      return *(v3 + 16 * v8 + 8);
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB95024);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 == v2)
    {
      return *(v3 + 16 * v8 + 8);
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB95100);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 == v2)
    {
      return *(v3 + 16 * v8 + 8);
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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
    v8 = 0;
    while (1)
    {
      v9 = (v2 + 16 * v8);
      v10 = *v9;
      if (*v9 != -1)
      {
        if (v10)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = (v10 + ~(v10 << 32)) ^ ((v10 + ~(v10 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v17 = v13 & ((v16 >> 31) ^ v16);
          v18 = 1;
          do
          {
            v19 = v17;
            v20 = *(v12 + 16 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          v21 = (v12 + 16 * v19);
          v22 = v21[1];
          v21[1] = 0;
          if (v22)
          {
            if (v22[4] == 1)
            {
              (*(*v22 + 24))(v22);
            }

            else
            {
              --v22[4];
            }
          }

          *v21 = *v9;
          v23 = v9[1];
          v9[1] = 0;
          v21[1] = v23;
          v11 = v9[1];
          v9[1] = 0;
          if (!v11)
          {
            goto LABEL_24;
          }

          if (v11[4] == 1)
          {
LABEL_26:
            (*(*v11 + 24))(v11);
            goto LABEL_24;
          }

          --v11[4];
        }

        else
        {
          v11 = v9[1];
          v9[1] = 0;
          if (v11)
          {
            if (v11[4] == 1)
            {
              goto LABEL_26;
            }

            --v11[4];
          }
        }
      }

LABEL_24:
      if (++v8 == v3)
      {
        goto LABEL_30;
      }
    }
  }

  if (v2)
  {
LABEL_30:

    return WTF::fastFree((v2 - 16), v7);
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB955ECLL);
  }

  v9 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, 0);
    v9 = *a1;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_13:
    *v15 = v5;
    v19 = *a3;
    *a3 = 0;
    result = v15[1];
    v15[1] = v19;
    if (result)
    {
      if (*(result + 8) == 1)
      {
        result = (*(*result + 24))(result);
      }

      else
      {
        --*(result + 8);
      }
    }

    v21 = *a1;
    if (*a1)
    {
      v22 = *(v21 - 12) + 1;
    }

    else
    {
      v22 = 1;
    }

    *(v21 - 12) = v22;
    v25 = (*(v21 - 16) + v22);
    v26 = *(v21 - 4);
    if (v26 > 0x400)
    {
      if (v26 <= 2 * v25)
      {
LABEL_24:
        result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, v15);
        v15 = result;
        v21 = *a1;
        if (*a1)
        {
          v26 = *(v21 - 4);
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else if (3 * v26 <= 4 * v25)
    {
      goto LABEL_24;
    }

    *a4 = v15;
    *(a4 + 8) = v21 + 16 * v26;
    *(a4 + 16) = 1;
    return result;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v5)
  {
    if (v16 == -1)
    {
      v17 = v15;
    }

    v14 = (v14 + v18) & v10;
    v15 = (v9 + 16 * v14);
    v16 = *v15;
    ++v18;
    if (!*v15)
    {
      if (v17)
      {
        *v17 = 0;
        v17[1] = 0;
        --*(*a1 - 16);
        v5 = *a2;
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

  v23 = v9 + 16 * *(v9 - 4);
  *a4 = v15;
  *(a4 + 8) = v23;
  *(a4 + 16) = 0;
  v24 = *a3;
  *a3 = 0;
  result = v15[1];
  v15[1] = v24;
  if (result)
  {
    if (*(result + 8) == 1)
    {
      v27 = *(*result + 24);

      return v27();
    }

    else
    {
      --*(result + 8);
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            if (v26[8] == 1)
            {
              (*(*v26 + 24))(v26);
            }

            else
            {
              --v26[8];
            }
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            if (v28[8] == 1)
            {
              (*(*v28 + 24))(v28);
            }

            else
            {
              --v28[8];
            }
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            if (v15[8] == 1)
            {
              (*(*v15 + 24))(v15);
            }

            else
            {
              --v15[8];
            }
          }
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>::customDeleteBucket(a2);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

_DWORD *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>::customDeleteBucket(void *a1)
{
  result = a1[1];
  *a1 = -1;
  a1[1] = 0;
  if (result)
  {
    if (result[8] == 1)
    {
      return (*(*result + 24))();
    }

    else
    {
      --result[8];
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DB95A18);
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

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB95C40);
  }

  v8 = result;
  v9 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_13:
    *v15 = v4;
    v19 = *a4;
    *a4 = 0;
    v20 = v15[1];
    v15[1] = v19;
    if (v20)
    {
      result = WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref((v20 + 32), a2);
    }

    v21 = *a2;
    if (*a2)
    {
      v22 = *(v21 - 12) + 1;
    }

    else
    {
      v22 = 1;
    }

    *(v21 - 12) = v22;
    v26 = (*(v21 - 16) + v22);
    v27 = *(v21 - 4);
    if (v27 > 0x400)
    {
      if (v27 <= 2 * v26)
      {
LABEL_24:
        result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v15);
        v15 = result;
        v21 = *a2;
        if (*a2)
        {
          v27 = *(v21 - 4);
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else if (3 * v27 <= 4 * v26)
    {
      goto LABEL_24;
    }

    *v8 = v15;
    v8[1] = v21 + 16 * v27;
    *(v8 + 16) = 1;
    return result;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v4)
  {
    if (v16 == -1)
    {
      v17 = v15;
    }

    v14 = (v14 + v18) & v10;
    v15 = (v9 + 16 * v14);
    v16 = *v15;
    ++v18;
    if (!*v15)
    {
      if (v17)
      {
        *v17 = 0;
        v17[1] = 0;
        --*(*a2 - 16);
        v4 = *a3;
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

  v23 = v9 + 16 * *(v9 - 4);
  *v8 = v15;
  v8[1] = v23;
  *(v8 + 16) = 0;
  v24 = *a4;
  *a4 = 0;
  v25 = v15[1];
  v15[1] = v24;
  if (v25)
  {

    return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref((v25 + 32), a2);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref((v26 + 32), v10);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref((v28 + 32), v10);
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref((v15 + 32), v10);
          }
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v2 = result;
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    result = WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref((v3 + 32), a2);
  }

  v4 = *v2;
  v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v2, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DB95FA0);
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

void *WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,BOOL)> &&)::$_0,void,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::String const,BOOL,WebCore::CDMInstanceSession::SuccessValue>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FC220;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,BOOL)> &&)::$_0,void,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::String const,BOOL,WebCore::CDMInstanceSession::SuccessValue>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FC220;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,BOOL)> &&)::$_0,void,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::String const,BOOL,WebCore::CDMInstanceSession::SuccessValue>::call(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a2;
  *a2 = 0;
  v8 = v5;
  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v6 + 16))(v6, &v8, a3, a4, a5 == 1);
  (*(*v6 + 8))(v6);
  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::updateLicense(WTF::String,WebCore::CDMSessionType,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref>> &&,BOOL)> &&)::$_0,void,BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,WebCore::CDMMessageType,WebCore::CDMInstanceSession::SuccessValue>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FC248;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::updateLicense(WTF::String,WebCore::CDMSessionType,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref>> &&,BOOL)> &&)::$_0,void,BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,WebCore::CDMMessageType,WebCore::CDMInstanceSession::SuccessValue>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FC248;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::updateLicense(WTF::String,WebCore::CDMSessionType,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref>> &&,BOOL)> &&)::$_0,void,BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,WebCore::CDMMessageType,WebCore::CDMInstanceSession::SuccessValue>::call(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v6 + 16))(v6, a2, a3, a4, a5, a6 == 1);
  v7 = *(*v6 + 8);

  return v7(v6);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::loadSession(WebCore::CDMSessionType,WTF::String,WTF::String,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,BOOL,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0,void,std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &,std::optional<double>,std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,WebCore::CDMInstanceSession::SuccessValue,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FC270;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::loadSession(WebCore::CDMSessionType,WTF::String,WTF::String,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,BOOL,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0,void,std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &,std::optional<double>,std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,WebCore::CDMInstanceSession::SuccessValue,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FC270;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::loadSession(WebCore::CDMSessionType,WTF::String,WTF::String,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,BOOL,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0,void,std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &,std::optional<double>,std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,WebCore::CDMInstanceSession::SuccessValue,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>>::call(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v5 + 16))(v5, a2, a3, a4, a5 == 1);
  v6 = *(*v5 + 8);

  return v6(v5);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FC298;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FC298;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,BOOL)> &&)::$_0,void,WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMInstanceSession::SuccessValue>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FC2C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,BOOL)> &&)::$_0,void,WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMInstanceSession::SuccessValue>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FC2C0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCDMInstanceSessionProxy::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,BOOL)> &&)::$_0,void,WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMInstanceSession::SuccessValue>::call(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v4 + 16))(v4, a2, a3, a4 == 1);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void sub_19DB96A54(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23 + 64, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23 + 48, v25);
  v27 = a23;
  a23 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
  }

  v28 = a22;
  a22 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v26);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, v26);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, v29);
  v31 = a16;
  a16 = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v30);
  }

  v32 = a21;
  a21 = 0;
  if (v32)
  {
    if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v30);
    }
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *API::Object::constructInWrapper<API::UserStyleSheet,WebCore::UserStyleSheet,API::ContentWorld &>(API::Object *a1, uint64_t *a2, uint64_t a3)
{
  v6 = API::Object::apiObjectsUnderConstruction(a1);
  v18 = a1;
  v19 = [(API::Object *)a1 _apiObject];
  WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v6, &v19, &v18, v17);
  v7 = [(API::Object *)a1 _apiObject];
  WebCore::UserStyleSheet::UserStyleSheet(&v13, a2);
  API::UserStyleSheet::UserStyleSheet(v7, &v13, a3);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v8);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v9);
  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

void sub_19DB96DD4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23 + 64, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23 + 48, v25);
  v27 = a23;
  a23 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
  }

  v28 = a22;
  a22 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v26);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, v26);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, v29);
  v31 = a16;
  a16 = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v30);
  }

  v32 = a21;
  a21 = 0;
  if (v32)
  {
    if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v30);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB96FF4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB97088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB971B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB97258(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  CFRelease(*(v10 + 16));
  _Unwind_Resume(a1);
}

void sub_19DB97364(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB97414(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB97578(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9764C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB977E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB97978(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB97BA4(_Unwind_Exception *exception_object)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[2];
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB97D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10[2] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[2];
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB97E30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DB97F48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9801C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void getAllLocalAuthenticatorCredentialsImpl(NSString *a1, NSString *a2, NSData *a3, uint64_t a4)
{
  v81[6] = *MEMORY[0x1E69E9840];
  shouldUseAlternateKeychainAttribute = WebKit::shouldUseAlternateKeychainAttribute(a1);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = *MEMORY[0x1E697B020];
  v10 = *MEMORY[0x1E697ABD0];
  v80[0] = *MEMORY[0x1E697AFF8];
  v80[1] = v10;
  v81[0] = v9;
  v81[1] = a2;
  v11 = *MEMORY[0x1E697B260];
  v80[2] = *MEMORY[0x1E697B310];
  v80[3] = v11;
  v12 = *MEMORY[0x1E697B268];
  v81[2] = MEMORY[0x1E695E118];
  v81[3] = v12;
  v13 = *MEMORY[0x1E697B390];
  v70 = *MEMORY[0x1E697AEB0];
  v80[4] = *MEMORY[0x1E697AEB0];
  v80[5] = v13;
  v81[4] = *MEMORY[0x1E697AEB8];
  v81[5] = MEMORY[0x1E695E118];
  v68 = v8;
  [v8 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v81, v80, 6)}];
  v14 = MEMORY[0x1E697ADC8];
  if (a3)
  {
    [v8 setObject:a3 forKey:*MEMORY[0x1E697ADC8]];
  }

  v15 = MEMORY[0x1E697AC38];
  v16 = MEMORY[0x1E697AC40];
  if (a4)
  {
    if (shouldUseAlternateKeychainAttribute)
    {
      v17 = MEMORY[0x1E697AC38];
    }

    else
    {
      v17 = MEMORY[0x1E697AC40];
    }

    [v8 setObject:a4 forKey:*v17];
  }

  result = 0;
  v18 = SecItemCopyMatching(v8, &result);
  if (((a4 != 0) & shouldUseAlternateKeychainAttribute) == 1 && v18 == -25300)
  {
    [v8 removeObjectForKey:*v15];
    [v8 setObject:a4 forKey:*v16];
    v18 = SecItemCopyMatching(v8, &result);
  }

  if (v18 != -25300 && v18)
  {
    *a1 = 0;
  }

  else
  {
    cf = result;
    v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = result;
    v19 = [result countByEnumeratingWithState:&v74 objects:v79 count:16];
    if (v19)
    {
      v66 = *MEMORY[0x1E697AC48];
      v67 = *v75;
      v64 = *v15;
      v58 = *v16;
      v63 = *v14;
      v62 = *MEMORY[0x1E697ADD0];
      v61 = *MEMORY[0x1E697ACD0];
      v20 = *MEMORY[0x1E697AE90];
LABEL_15:
      v65 = v19;
      v21 = 0;
      while (1)
      {
        if (*v75 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v74 + 1) + 8 * v21);
        v23 = [v22 objectForKeyedSubscript:v66];
        v24 = v23;
        if (v23)
        {
          v25 = [v23 bytes];
          v26 = [v24 length];
          v27 = v26;
          if (v26)
          {
            if (HIDWORD(v26))
            {
              __break(0xC471u);
              return;
            }

            v28 = WTF::fastMalloc(v26);
            v29 = v28;
            v30 = 0;
            do
            {
              *(v28 + v30) = *(v25 + v30);
              ++v30;
            }

            while (v27 != v30);
            goto LABEL_23;
          }
        }

        else
        {
          v27 = 0;
        }

        v29 = 0;
LABEL_23:
        v71[0] = v29;
        v71[1] = v27;
        cbor::CBORReader::read();
        if (v29)
        {
          WTF::fastFree(v29, v31);
        }

        if (v73 != 1)
        {
          *a1 = 0;
          goto LABEL_70;
        }

        if (v72[0] != 5)
        {
          *a1 = 0;
LABEL_69:
          cbor::CBORValue::~CBORValue(v72);
LABEL_70:
          if (v69)
          {
          }

          goto LABEL_72;
        }

        Map = cbor::CBORValue::getMap(v72);
        cbor::CBORValue::CBORValue();
        v33 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, v71);
        cbor::CBORValue::~CBORValue(v71);
        v34 = Map + 8;
        if (Map + 8 == v33 || (v36 = *(v33 + 64), v35 = (v33 + 64), v36 != 3))
        {
          *a1 = 0;
          if (v73 == 1)
          {
            goto LABEL_69;
          }

          goto LABEL_70;
        }

        String = cbor::CBORValue::getString(v35);
        v38 = [v22 objectForKeyedSubscript:v64];
        if (!v38)
        {
          v38 = [v22 objectForKeyedSubscript:v58];
        }

        v39 = objc_alloc(MEMORY[0x1E695DF90]);
        v40 = *String;
        if (v40)
        {
          atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](v71, v40);
          if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v41);
          }
        }

        else
        {
          v71[0] = &stru_1F1147748;
          v42 = &stru_1F1147748;
        }

        v43 = [v39 initWithObjectsAndKeys:{v71[0], @"_WKLocalAuthenticatorCredentialNameKey", v38, @"_WKLocalAuthenticatorCredentialIDKey", objc_msgSend(v22, "objectForKeyedSubscript:", v63), @"_WKLocalAuthenticatorCredentialRelyingPartyIDKey", objc_msgSend(v22, "objectForKeyedSubscript:", v62), @"_WKLocalAuthenticatorCredentialLastModificationDateKey", objc_msgSend(v22, "objectForKeyedSubscript:", v61), @"_WKLocalAuthenticatorCredentialCreationDateKey", 0}];
        v44 = v71[0];
        v71[0] = 0;
        v8 = v68;
        if (v44)
        {
        }

        cbor::CBORValue::CBORValue();
        v45 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, v71);
        cbor::CBORValue::~CBORValue(v71);
        if (v34 == v45 || (v47 = *(v45 + 64), v46 = (v45 + 64), v47 != 2))
        {
          [v43 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"_WKLocalAuthenticatorCredentialUserHandleKey"}];
        }

        else
        {
          ByteString = cbor::CBORValue::getByteString(v46);
          v49 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*ByteString length:*(ByteString + 12)];
          [v43 setObject:v49 forKey:@"_WKLocalAuthenticatorCredentialUserHandleKey"];
          if (v49)
          {
          }
        }

        if ([objc_msgSend(v22 "allKeys")])
        {
          [v43 setObject:objc_msgSend(v22 forKey:{"objectForKeyedSubscript:", v70), @"_WKLocalAuthenticatorCredentialSynchronizableKey"}];
        }

        if ([objc_msgSend(v22 "allKeys")])
        {
          [v43 setObject:objc_msgSend(v22 forKey:{"objectForKeyedSubscript:", v20), @"_WKLocalAuthenticatorCredentialGroupKey"}];
        }

        cbor::CBORValue::CBORValue();
        v50 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, v71);
        cbor::CBORValue::~CBORValue(v71);
        if (v34 != v50)
        {
          v52 = *(v50 + 64);
          v51 = (v50 + 64);
          if (v52 == 3)
          {
            v53 = *cbor::CBORValue::getString(v51);
            if (v53)
            {
              atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](v71, v53);
              if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v53, v54);
              }
            }

            else
            {
              v71[0] = &stru_1F1147748;
              v55 = &stru_1F1147748;
            }

            [v43 setObject:v71[0] forKey:@"_WKLocalAuthenticatorCredentialDisplayNameKey"];
            v56 = v71[0];
            v71[0] = 0;
            if (v56)
            {
            }
          }
        }

        [v69 addObject:v43];
        if (v43)
        {
        }

        if (v73 == 1)
        {
          cbor::CBORValue::~CBORValue(v72);
        }

        if (++v21 == v65)
        {
          v19 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
          if (v19)
          {
            goto LABEL_15;
          }

          break;
        }
      }
    }

    *a1 = v69;
LABEL_72:
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v8)
  {
  }
}

void sub_19DB9882C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, CFTypeRef cf, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a32)
  {
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a31)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB98C8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB992BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, int a17, char a18, uint64_t a19, WTF::StringImpl *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, WTF *a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  cbor::CBORValue::~CBORValue(&a21);
  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v34);
  }

  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&a25, a26);
  if (a32 == 1)
  {
    cbor::CBORValue::~CBORValue(&a28);
  }

  if (a12)
  {
  }

  if (v32)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DB99A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, int a17, char a18, uint64_t a19, WTF::StringImpl *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, WTF *a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  cbor::CBORValue::~CBORValue(&a21);
  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v34);
  }

  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&a25, a26);
  if (a32 == 1)
  {
    cbor::CBORValue::~CBORValue(&a28);
  }

  if (a12)
  {
  }

  if (v32)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DB9A5B4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, CFTypeRef cf, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, PAL::CryptoDigest *a31, uint64_t a32, WTF *a33, int a34, int a35, char a36, WTF *a37, int a38)
{
  if (v43)
  {
  }

  if (a26)
  {
  }

  if (v42)
  {
  }

  if (a37)
  {
    WTF::fastFree(a37, a2);
  }

  if (a31)
  {
    PAL::CryptoDigest::~CryptoDigest(a31);
    bmalloc::api::tzoneFree(v46, v47);
  }

  if (a27)
  {
  }

  if (cf)
  {
    CFRelease(cf);
    if (!v41)
    {
LABEL_15:
      if (!v40)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if (!v41)
  {
    goto LABEL_15;
  }

  CFRelease(v41);
  if (!v40)
  {
LABEL_20:
    if (a36 == 1 && a33)
    {
      WTF::fastFree(a33, a2);
    }

    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, a2);
    }

    if (v38)
    {
    }

    if (*(v44 - 152) == 1)
    {
      cbor::CBORValue::~CBORValue((v44 - 184));
    }

    _Unwind_Resume(exception_object);
  }

LABEL_19:

  goto LABEL_20;
}

void sub_19DB9AFBC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF *a18, int a19, int a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  if (a21 == 1 && a18)
  {
    WTF::fastFree(a18, a2);
  }

  if (a27 == 1)
  {
    cbor::CBORValue::~CBORValue(&a23);
  }

  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(v36 - 160, *(v36 - 152));
  if (v35)
  {
  }

  if (v34)
  {
    CFRelease(v34);
    if (!v33)
    {
LABEL_10:
      if (!v32)
      {
LABEL_15:
        if (v31)
        {
        }

        _Unwind_Resume(a1);
      }

LABEL_14:
      CFRelease(v32);
      goto LABEL_15;
    }
  }

  else if (!v33)
  {
    goto LABEL_10;
  }

  CFRelease(v33);
  if (!v32)
  {
    goto LABEL_15;
  }

  goto LABEL_14;
}

void sub_19DB9B878(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39)
{
  if (a33 == 1)
  {
    if (a31 == 1)
    {
      WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a29);
    }

    if (a26 == 1)
    {
      if (a24 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&a22);
      }

      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v40 + 64);
    }
  }

  if (a17 == 1)
  {
    if (a15 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&a13);
    }

    if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(v39);
  _Unwind_Resume(a1);
}

unint64_t publicKeyCredentialParameters(uint64_t a1, void *a2)
{
  result = [a2 count];
  *a1 = 0;
  *(a1 + 8) = 0;
  if (result)
  {
    v5 = result;
    if (result >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v6 = WTF::fastMalloc((16 * result));
      v7 = 0;
      *(a1 + 8) = v5;
      *a1 = v6;
      v8 = (v6 + 8);
      do
      {
        result = [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{v7), "algorithm"), "longLongValue"}];
        *(v8 - 1) = 0;
        *v8 = result;
        ++v7;
        v8 += 2;
      }

      while (v5 != v7);
      *(a1 + 12) = v5;
    }
  }

  return result;
}

void sub_19DB9BB28(_Unwind_Exception *a1, void *a2)
{
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 12) = v4;
  WTF::fastFree(v3, a2);
  _Unwind_Resume(a1);
}

unint64_t publicKeyCredentialDescriptors(uint64_t a1, void *a2)
{
  result = [a2 count];
  *a1 = 0;
  *(a1 + 8) = 0;
  if (result)
  {
    v5 = result;
    if (result < 0x6666667)
    {
      v6 = 40 * result;
      v7 = WTF::fastMalloc((40 * result));
      v8 = 0;
      *(a1 + 8) = v6 / 0x28;
      *a1 = v7;
      while (1)
      {
        v9 = [a2 objectAtIndexedSubscript:v8];
        v10 = [v9 identifier];
        v11 = v10;
        if (v10)
        {
          [v10 bytes];
          [v11 length];
        }

        JSC::ArrayBuffer::tryCreate();
        v12 = v32;
        v32 = 0;
        v33 = 0;
        v34 = 1;
        v30 = v12;
        v31 = 1;
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v33);
        v13 = v32;
        v32 = 0;
        if (v13)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v13);
        }

        if (v12)
        {
          *v12 += 2;
        }

        v26 = v12;
        v27 = 1;
        v14 = [v9 transports];
        v15 = [v14 count];
        v16 = v15;
        v28 = 0;
        v29 = 0;
        if (v15)
        {
          if (HIDWORD(v15))
          {
            *(a1 + 12) = v8;
            __break(0xC471u);
            goto LABEL_28;
          }

          v17 = WTF::fastMalloc(v15);
          v18 = 0;
          LODWORD(v29) = v16;
          v28 = v17;
          do
          {
            v19 = [objc_msgSend(v14 objectAtIndexedSubscript:{v18), "intValue"}];
            if (v19 >= 7)
            {
              v20 = 0;
            }

            else
            {
              v20 = v19;
            }

            *(v17 + v18++) = v20;
          }

          while (v16 != v18);
          HIDWORD(v29) = v16;
        }

        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v30);
        v22 = v7 + 40 * v8;
        *v22 = 0;
        *(v22 + 8) = 0;
        *(v22 + 16) = -1;
        v23 = v27;
        if (v27 != 255)
        {
          v24 = v26;
          v26 = 0;
          *(v22 + 8) = v24;
          *(v22 + 16) = v23;
        }

        v25 = v28;
        v28 = 0;
        *(v22 + 24) = v25;
        LODWORD(v25) = v29;
        LODWORD(v29) = 0;
        *(v22 + 32) = v25;
        LODWORD(v25) = HIDWORD(v29);
        HIDWORD(v29) = 0;
        *(v22 + 36) = v25;
        if (v28)
        {
          LODWORD(v29) = 0;
          WTF::fastFree(v28, v21);
        }

        ++v8;
        result = mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v26);
        if (v8 == v5)
        {
          *(a1 + 12) = v5;
          return result;
        }
      }
    }

    __break(0xC471u);
LABEL_28:
    JUMPOUT(0x19DB9BD94);
  }

  return result;
}

void sub_19DB9BDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *(a3 + 12) = v9;
  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v10 + 8);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(va);
  *a3 = 0;
  *(a3 + 8) = 0;
  WTF::fastFree(v8, v12);
  _Unwind_Resume(a1);
}

uint64_t std::optional<WebCore::AuthenticationExtensionsClientInputs>::operator=[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs,void>(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 144) == 1)
  {
    v4 = *a2;
    *a2 = 0;
    v5 = *a1;
    *a1 = v4;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    *(a1 + 8) = *(a2 + 4);
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>>((a1 + 16), a2 + 16);
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>>((a1 + 64), a2 + 64);
  }

  else
  {
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs>(a1, a2);
  }

  return a1;
}

void sub_19DB9C068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, WTF *a48, int a49, uint64_t a50, WTF *a51, int a52)
{
  if (v52)
  {
  }

  _Block_release(v53);
  if (a48)
  {
    WTF::fastFree(a48, v55);
  }

  _Unwind_Resume(a1);
}

WTF::DeferrableRefCountedBase *produceClientDataJson(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    [a3 bytes];
    [a3 length];
  }

  JSC::ArrayBuffer::tryCreate();
  MEMORY[0x19EB02040](&v26, a4);
  WebCore::SecurityOrigin::createFromString(&v29, &v26, v9);
  v11 = v26;
  v26 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v30;
  if (v30)
  {
    *v30 += 2;
  }

  v25 = 1;
  v24 = 0;
  v26 = v12;
  v27 = 1;
  MEMORY[0x19EB02040](&v23, a5);
  WebCore::buildClientDataJson();
  v14 = v23;
  v23 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v26);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v24);
  v15 = JSC::ArrayBuffer::span(v28);
  v17 = v16;
  v18 = objc_alloc(MEMORY[0x1E695DEF0]);
  *a1 = [v18 initWithBytes:v15 length:{v17, v23}];
  v20 = v28;
  v28 = 0;
  if (v20)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v20);
  }

  v21 = v29;
  v29 = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v21, v19);
  }

  result = v30;
  v30 = 0;
  if (result)
  {
    return WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
  }

  return result;
}

void sub_19DB9C2C0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::DeferrableRefCountedBase *a16)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&a12);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&a10);
  v18 = a15;
  a15 = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v18, v17);
  }

  v19 = a16;
  a16 = 0;
  if (v19)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v19);
  }

  _Unwind_Resume(a1);
}

PAL::CryptoDigest *produceClientDataJsonHash(NSData *a1, void *a2)
{
  PAL::CryptoDigest::create();
  if (a2)
  {
    [a2 bytes];
    [a2 length];
  }

  PAL::CryptoDigest::addBytes();
  PAL::CryptoDigest::computeHash(a1, v7);
  result = v7;
  if (v7)
  {
    PAL::CryptoDigest::~CryptoDigest(v7);
    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void sub_19DB9C408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PAL::CryptoDigest *a10)
{
  if (a10)
  {
    PAL::CryptoDigest::~CryptoDigest(a10);
    bmalloc::api::tzoneFree(v11, v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9CA28(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39)
{
  if (a33 == 1)
  {
    if (a31 == 1)
    {
      WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a29);
    }

    if (a26 == 1)
    {
      if (a24 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&a22);
      }

      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v40 + 64);
    }
  }

  if (a17 == 1)
  {
    if (a15 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&a13);
    }

    if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(v39);
  _Unwind_Resume(a1);
}

void sub_19DB9CD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, WTF *a38, int a39, uint64_t a40, WTF *a41, int a42)
{
  if (v42)
  {
  }

  _Block_release(v43);
  if (a38)
  {
    WTF::fastFree(a38, v45);
  }

  _Unwind_Resume(a1);
}

void sub_19DB9D2F0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, WTF *a12, int a13, int a14, char a15, uint64_t a16, WTF *a17, int a18, int a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  v28 = *(v26 - 64);
  if (v28)
  {
    *(v26 - 64) = 0;
    *(v26 - 56) = 0;
    WTF::fastFree(v28, a2);
  }

  v29 = *(v26 - 48);
  if (v29)
  {
    *(v26 - 48) = 0;
    *(v26 - 40) = 0;
    WTF::fastFree(v29, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9D508(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, WTF *a14, int a15, int a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  v25 = *(v23 - 72);
  if (v25)
  {
    *(v23 - 72) = 0;
    *(v23 - 64) = 0;
    WTF::fastFree(v25, a2);
  }

  v26 = *(v23 - 56);
  if (v26)
  {
    *(v23 - 56) = 0;
    *(v23 - 48) = 0;
    WTF::fastFree(v26, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9D790(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, WTF *a12, int a13, int a14, char a15, uint64_t a16, WTF *a17, int a18, int a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  v28 = *(v26 - 64);
  if (v28)
  {
    *(v26 - 64) = 0;
    *(v26 - 56) = 0;
    WTF::fastFree(v28, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9DA28(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, WTF *a14, int a15, int a16, char a17, uint64_t a18, WTF *a19, int a20, int a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  v30 = *(v28 - 64);
  if (v30)
  {
    *(v28 - 64) = 0;
    *(v28 - 56) = 0;
    WTF::fastFree(v30, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9DCC0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, WTF *a14, int a15, int a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  v25 = *(v23 - 88);
  if (v25)
  {
    *(v23 - 88) = 0;
    *(v23 - 80) = 0;
    WTF::fastFree(v25, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9DE38(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration(va, a2);
  _Unwind_Resume(a1);
}

void uuidFromPushPartition(NSString *a1, void *a2)
{
  if ([a2 length] == 32)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@-%@-%@-%@", objc_msgSend(a2, "substringWithRange:", 0, 8), objc_msgSend(a2, "substringWithRange:", 8, 4), objc_msgSend(a2, "substringWithRange:", 12, 4), objc_msgSend(a2, "substringWithRange:", 16, 4), objc_msgSend(a2, "substringWithRange:", 20, 12)];
    *a1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
    if (v4)
    {
    }
  }

  else
  {
    *a1 = 0;
  }
}

void sub_19DB9E1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  if (a14)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9E3F8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (LOBYTE(STACK[0x230]) == 1)
  {
    WebCore::NotificationData::~NotificationData(&a47, a2);
  }

  _Unwind_Resume(a1);
}

void sub_19DB9E5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
  }

  if (v16)
  {
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c31_ZTSN3WTF9RetainPtrI8NSStringEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_32c31_ZTSN3WTF9RetainPtrI8NSStringEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v1)
  {
  }
}

void sub_19DB9E758(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 256) == 1)
  {
    WebCore::NotificationData::~NotificationData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9EC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  _Block_release(v11);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v14);
  }

  v15 = *(v12 - 40);
  *(v12 - 40) = 0;
  if (v15)
  {
    CFRelease(*(v15 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB9EDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  _Block_release(v11);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v14);
  }

  v15 = *(v12 - 40);
  *(v12 - 40) = 0;
  if (v15)
  {
    CFRelease(*(v15 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB9EEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    CFRelease(*(a14 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9F094(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    WTF::fastFree(v16, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB9F224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  _Block_release(v16);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v18);
  }

  if (a16)
  {
    CFRelease(*(a16 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB9F394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  _Block_release(v15);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v17);
  }

  if (a15)
  {
    CFRelease(*(a15 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB9F4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  _Block_release(v12);
  if (a11)
  {
    CFRelease(*(a11 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB9F5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  _Block_release(v10);
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB9F768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  _Block_release(v16);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v18);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v18);
  }

  if (a16)
  {
    CFRelease(*(a16 + 8));
  }

  _Unwind_Resume(a1);
}

void WebCore::AuthenticatorAssertionResponse::setLAContext(WebCore::AuthenticatorAssertionResponse *this, LAContext *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  v5 = *(this + 24);
  *(this + 24) = a2;
  if (v5)
  {
  }
}

uint64_t *std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(uint64_t **a1, cbor::CBORValue *this)
{
  v3 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__find_equal<cbor::CBORValue>(a1, &v9, this);
  v4 = *v3;
  if (!*v3)
  {
    v5 = v3;
    std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(a1, v8);
    std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__insert_node_at(a1, v9, v5, v8[0]);
    v4 = v8[0];
    v8[0] = 0;
    std::unique_ptr<std::__tree_node<std::__value_type<cbor::CBORValue,cbor::CBORValue>,void *>,std::__tree_node_destructor<WTF::FastAllocator<std::__tree_node<std::__value_type<cbor::CBORValue,cbor::CBORValue>,void *>>>>::~unique_ptr[abi:sn200100](v8, v6);
  }

  return v4;
}

void *std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__find_equal<cbor::CBORValue>(uint64_t a1, void *a2, cbor::CBORValue *this)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = a1;
    do
    {
      while (1)
      {
        v8 = v4;
        if (!cbor::CBORValue::CTAPLess::operator()(v7, this, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (!cbor::CBORValue::CTAPLess::operator()(v7, (v8 + 4), this))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_10:
  *a2 = v8;
  return v5;
}

uint64_t std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x60);
  *a2 = v4;
  a2[1] = a1;
  a2[2] = 0;
  result = _ZNSt3__14pairIKN4cbor9CBORValueES2_EC2B8sn200100IJOS2_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS8_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSH_IJXspT2_EEEE(v4 + 32);
  *(a2 + 16) = 1;
  return result;
}

uint64_t *std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<cbor::CBORValue,cbor::CBORValue>,void *>,std::__tree_node_destructor<WTF::FastAllocator<std::__tree_node<std::__value_type<cbor::CBORValue,cbor::CBORValue>,void *>>>>::~unique_ptr[abi:sn200100](uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    if (*(a1 + 16) == 1)
    {
      cbor::CBORValue::~CBORValue((v3 + 64));
      cbor::CBORValue::~CBORValue((v3 + 32));
    }

    WTF::fastFree(v3, a2);
  }

  return a1;
}

BOOL cbor::CBORValue::CTAPLess::operator()(int a1, cbor::CBORValue *this, cbor::CBORValue *a3)
{
  v3 = *this;
  if (*this != *a3)
  {
    return v3 < *a3;
  }

  if (v3 == 3)
  {
    String = cbor::CBORValue::getString(this);
    if (*String)
    {
      v10 = *(*String + 1);
    }

    else
    {
      v10 = 0;
    }

    v11 = *cbor::CBORValue::getString(a3);
    if (v11)
    {
      v13 = *(v11 + 1);
    }

    else
    {
      v13 = 0;
    }

    if (v10 != v13)
    {
      return v10 < v13;
    }

    return (WTF::codePointCompare(*String, v11, v12) & 0x80u) != 0;
  }

  else
  {
    if (v3 == 1)
    {
      v8 = *cbor::CBORValue::getInteger(this);
      return v8 > *cbor::CBORValue::getInteger(a3);
    }

    if (v3)
    {
      return 0;
    }

    v5 = *cbor::CBORValue::getInteger(this);
    return v5 < *cbor::CBORValue::getInteger(a3);
  }
}

uint64_t WTF::codePointCompare(WTF *this, const WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  if (!this)
  {
    if (a2 && *(a2 + 1))
    {
      v12 = &std::strong_ordering::less;
    }

    else
    {
      v12 = &std::strong_ordering::equal;
    }

    return *v12;
  }

  if (!a2)
  {
    return *(this + 1) != 0;
  }

  v3 = *(a2 + 4);
  v4 = *(this + 1);
  v5 = *(a2 + 1);
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if ((*(this + 16) & 4) == 0)
  {
    if ((v3 & 4) != 0)
    {
      if (v6)
      {
        v18 = *(a2 + 1);
        v19 = *(this + 1);
        while (1)
        {
          v20 = *v19;
          v21 = *v18;
          v11 = v20 > v21;
          if (v20 != v21)
          {
            goto LABEL_40;
          }

          ++v19;
          ++v18;
          if (!--v6)
          {
            goto LABEL_34;
          }
        }
      }
    }

    else if (v6)
    {
      v7 = *(a2 + 1);
      v8 = *(this + 1);
      while (1)
      {
        v9 = *v8;
        v10 = *v7;
        v11 = v9 > v10;
        if (v9 != v10)
        {
          break;
        }

        ++v8;
        ++v7;
        if (!--v6)
        {
          goto LABEL_34;
        }
      }

LABEL_40:
      if (v11)
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    goto LABEL_34;
  }

  if ((v3 & 4) != 0)
  {
    if (v6)
    {
      v22 = *(a2 + 1);
      v23 = *(this + 1);
      while (1)
      {
        v24 = *v23;
        v25 = *v22;
        v11 = v24 > v25;
        if (v24 != v25)
        {
          goto LABEL_40;
        }

        ++v23;
        ++v22;
        if (!--v6)
        {
          goto LABEL_34;
        }
      }
    }

    goto LABEL_34;
  }

  if (!v6)
  {
LABEL_34:
    if (v5 < v4)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return v26;
    }
  }

  v14 = *(a2 + 1);
  v15 = *(this + 1);
  while (1)
  {
    v16 = *v15;
    v17 = *v14;
    if (v17 != v16)
    {
      break;
    }

    ++v15;
    ++v14;
    if (!--v6)
    {
      goto LABEL_34;
    }
  }

  if (v17 < v16)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _ZNSt3__14pairIKN4cbor9CBORValueES2_EC2B8sn200100IJOS2_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS8_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSH_IJXspT2_EEEE(uint64_t a1)
{
  v2 = cbor::CBORValue::CBORValue();
  cbor::CBORValue::CBORValue((v2 + 32));
  return a1;
}

uint64_t std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(uint64_t a1, cbor::CBORValue *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1;
  v6 = a1 + 8;
  do
  {
    v7 = cbor::CBORValue::CTAPLess::operator()(v5, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || cbor::CBORValue::CTAPLess::operator()(v5, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void sub_19DBA01EC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  _Unwind_Resume(exception_object);
}

void wkAuthenticatorAttestationResponse(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = [_WKAuthenticatorAttestationResponse alloc];
  v9 = JSC::ArrayBuffer::span(*(a2 + 8));
  v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:v10];
  if ((*(a2 + 96) & 1) == 0)
  {
    __break(1u);
    return;
  }

  WebCore::AuthenticationExtensionsClientOutputs::toCBOR(&v25, (a2 + 16));
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v25 length:v27];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  v14 = JSC::ArrayBuffer::span(*(a2 + 112));
  v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v14 length:v15];
  if (a4)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = objc_opt_new();
  v19 = *(a2 + 156);
  if (v19)
  {
    v20 = *(a2 + 144);
    do
    {
      [v18 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *v20++)}];
      --v19;
    }

    while (v19);
  }

  if (v18)
  {
    v21 = v18;
  }

  *a1 = [(_WKAuthenticatorAttestationResponse *)v8 initWithClientDataJSON:a3 rawId:v24 extensionOutputsCBOR:v12 attestationObject:v16 attachment:v17 transports:v18];
  if (v16)
  {
  }

  v23 = v25;
  if (!v25)
  {
    if (!v24)
    {
      return;
    }

    goto LABEL_16;
  }

  v25 = 0;
  v26 = 0;
  WTF::fastFree(v23, v22);
  if (v24)
  {
LABEL_16:
  }
}

void sub_19DBA0414(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBA06E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBA09E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  _Unwind_Resume(exception_object);
}

void wkAuthenticatorAssertionResponse(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 136);
  if (v7)
  {
    v8 = JSC::ArrayBuffer::span(v7);
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 length:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [_WKAuthenticatorAssertionResponse alloc];
  v12 = JSC::ArrayBuffer::span(*(a2 + 8));
  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v12 length:v13];
  if ((*(a2 + 96) & 1) == 0)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  WebCore::AuthenticationExtensionsClientOutputs::toCBOR(&v29, (a2 + 16));
  v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v29 length:v31];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  v19 = JSC::ArrayBuffer::span(*(a2 + 120));
  v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v19 length:v20];
  v22 = JSC::ArrayBuffer::span(*(a2 + 128));
  v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v22 length:v23];
  v25 = 1;
  if (a4)
  {
    v25 = 2;
  }

  *a1 = [(_WKAuthenticatorAssertionResponse *)v11 initWithClientDataJSON:a3 rawId:v15 extensionOutputsCBOR:v17 authenticatorData:v21 signature:v24 userHandle:v10 attachment:v25];
  if (v24)
  {
  }

  if (v21)
  {
  }

  v27 = v29;
  if (!v29)
  {
    if (!v15)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v29 = 0;
  v30 = 0;
  WTF::fastFree(v27, v26);
  if (v15)
  {
LABEL_15:
  }

LABEL_16:
  if (v10)
  {
  }
}

void sub_19DBA0C24(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  if (v13)
  {
  }

  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBA0EFC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBA13AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
  }

  CFRelease(*(v3 + 8));
  std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(va, v5);
  _Unwind_Resume(a1);
}

uint64_t API::WebPushSubscriptionData::create(API::Object **a1, uint64_t a2)
{
  v4 = API::Object::newObject(0x60uLL, 122);
  v5 = API::Object::Object(v4);
  *v5 = &unk_1F10FC458;
  result = WebCore::PushSubscriptionData::PushSubscriptionData(v5 + 16, a2);
  *a1 = v4;
  return result;
}

void API::WebPushSubscriptionData::~WebPushSubscriptionData(API::WebPushSubscriptionData *this, void *a2)
{
  v3 = *(this + 10);
  if (v3)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }
}

{
  v3 = *(this + 10);
  if (v3)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  JUMPOUT(0x19EB14CF0);
}

void sub_19DBA16B8(_Unwind_Exception *exception_object, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    WTF::fastFree(v7, a2);
  }

  v8 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBA1984(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_19DBA1D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, WTF *a17, int a18, WTF *a19, int a20, int a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  if (v26)
  {
  }

  CFRelease(*(v27 + 8));
  if (a22 == 1)
  {
    if (a19)
    {
      WTF::fastFree(a19, v29);
    }

    if (a17)
    {
      WTF::fastFree(a17, v29);
    }

    if (a15)
    {
      WTF::fastFree(a15, v29);
    }

    if (a12)
    {
      if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a12, v29);
      }
    }
  }

  std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(&a24, v29);
  _Unwind_Resume(a1);
}

_BYTE *std::__optional_copy_base<WebCore::PushSubscriptionData,false>::__optional_copy_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[80] = 0;
  if (*(a2 + 80) == 1)
  {
    WebCore::PushSubscriptionData::PushSubscriptionData(a1, a2);
    a1[80] = 1;
  }

  return a1;
}

void sub_19DBA1E74(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 80) == 1)
  {
    v4 = *(v2 + 64);
    if (v4)
    {
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      WTF::fastFree(v4, a2);
    }

    v5 = *(v2 + 48);
    if (v5)
    {
      *(v2 + 48) = 0;
      *(v2 + 56) = 0;
      WTF::fastFree(v5, a2);
    }

    v6 = *(v2 + 32);
    if (v6)
    {
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      WTF::fastFree(v6, a2);
    }

    v7 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBA212C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, int a11, char a12, WTF::StringImpl *a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (v38)
  {
  }

  CFRelease(*(v37 + 8));
  if (a37)
  {
    WebKit::WebPushMessage::~WebPushMessage(&a9, v40);
  }

  _Unwind_Resume(a1);
}

void API::WebPushMessage::~WebPushMessage(API::WebPushMessage *this, WTF::StringImpl *a2)
{
  WebKit::WebPushMessage::~WebPushMessage((this + 16), a2);
}

{
  WebKit::WebPushMessage::~WebPushMessage((this + 16), a2);

  JUMPOUT(0x19EB14CF0);
}

uint64_t std::__optional_move_base<WebCore::NotificationPayload,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    WTF::URL::URL(a1, a2);
    v4 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a1 + 40) = v4;
    *(a1 + 48) = *(a2 + 48);
    std::__optional_move_base<WebCore::NotificationOptionsPayload,false>::__optional_move_base[abi:sn200100](a1 + 64, a2 + 64);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = 1;
  }

  return a1;
}

void sub_19DBA2358(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  if (*(v2 + 136) == 1)
  {
    std::__optional_storage_base<WebCore::NotificationOptionsPayload,false>::~__optional_storage_base(v2 + 64, a2);
    v7 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = *v2;
    *v2 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WebCore::NotificationOptionsPayload,false>::__optional_move_base[abi:sn200100](uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    *result = *a2;
    v2 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(result + 8) = v2;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(result + 16) = v3;
    v4 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(result + 24) = v4;
    v5 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(result + 32) = v5;
    v6 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(result + 40) = v6;
    *(result + 48) = *(a2 + 48);
    *(result + 56) = 1;
  }

  return result;
}

uint64_t std::__optional_copy_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_copy_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    v4 = *(a2 + 12);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 12) = v4;
    if (v4)
    {
      v5 = WTF::fastMalloc(v4);
      *(a1 + 8) = v4;
      *a1 = v5;
      memcpy(v5, *a2, *(a2 + 12));
    }

    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19DBA24E4(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<WebCore::NotificationPayload,false>::__optional_copy_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    v4 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *a1 = v4;
    v5 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v5;
    v6 = *(a2 + 40);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *(a1 + 40) = v6;
    *(a1 + 48) = *(a2 + 48);
    std::__optional_copy_base<WebCore::NotificationOptionsPayload,false>::__optional_copy_base[abi:sn200100](a1 + 64, a2 + 64);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = 1;
  }

  return a1;
}

void sub_19DBA25AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  if (*(v2 + 136) == 1)
  {
    std::__optional_storage_base<WebCore::NotificationOptionsPayload,false>::~__optional_storage_base(v2 + 64, a2);
    v7 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = *v2;
    *v2 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<WebCore::NotificationOptionsPayload,false>::__optional_copy_base[abi:sn200100](uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    *result = *a2;
    v2 = *(a2 + 8);
    if (v2)
    {
      atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    }

    *(result + 8) = v2;
    v3 = *(a2 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    *(result + 16) = v3;
    v4 = *(a2 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *(result + 24) = v4;
    v5 = *(a2 + 32);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *(result + 32) = v5;
    v6 = *(a2 + 40);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *(result + 40) = v6;
    *(result + 48) = *(a2 + 48);
    *(result + 56) = 1;
  }

  return result;
}

void sub_19DBA2A54(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mpark::detail::copy_constructor<mpark::detail::traits<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_constructor(va, a2);
  _Unwind_Resume(a1);
}

uint64_t mpark::detail::copy_constructor<mpark::detail::traits<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) != 255)
  {
    if (*(a1 + 16))
    {
      v3 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }

    else
    {
      WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!BYTE3(v3))
  {
    v5 = WTF::fastMalloc((v3 << 8));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = v6 << 8;
      do
      {
        v5 = (WebCore::NotificationData::NotificationData(v5, v7) + 256);
        v7 = (v7 + 256);
        v8 -= 256;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DBA2BA8(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WebKit::RemoteCDMProxy::create@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  result = *a1;
  if (*a1)
  {
    (*(*result + 32))(&v4);
    (*(**a1 + 64))(&v5);
    v6 = (*(**a1 + 112))();
    v7 = (*(**a1 + 120))();
    v8 = 0;
    WTF::makeUniqueRefWithoutFastMallocCheck<WebKit::RemoteCDMConfiguration,WebKit::RemoteCDMConfiguration&&>();
  }

  *a2 = 0;
  return result;
}

uint64_t WebKit::RemoteCDMProxy::RemoteCDMProxy(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F10FC570;
  *(a1 + 8) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v8 = *(a2 + 1);
  atomic_fetch_add(v8, 1u);
  v9 = *a3;
  *a3 = 0;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  v10 = *a4;
  *a4 = 0;
  *(a1 + 40) = v10;
  v11 = WebKit::RemoteCDMFactoryProxy::logger(a2);
  atomic_fetch_add((v11 + 8), 1u);
  *(a1 + 48) = v11;
  *(a1 + 56) = 0;
  return a1;
}

void WebKit::RemoteCDMProxy::~RemoteCDMProxy(WebKit::RemoteCDMProxy *this, void *a2)
{
  *this = &unk_1F10FC570;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4 + 16, a2);
    v6 = WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v5);
    MEMORY[0x19EB14CF0](v6, 0x1020C40F1F2B3BDLL);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::fastFree(v8, a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteCDMProxy::~RemoteCDMProxy(this, a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::RemoteCDMProxy::getSupportedConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 32);
  v8 = WTF::fastMalloc(0x10);
  v9 = *a4;
  *a4 = 0;
  *v8 = &unk_1F10FCC28;
  v8[1] = v9;
  if (v9)
  {
    v11 = v8;
    (*(*v7 + 24))(v7, a2, a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    result = 141;
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteCDMProxy::createInstance(uint64_t a1, uint64_t *a2)
{
  (*(**(a1 + 32) + 96))(&v9);
  if (v9)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      if (*(v4 + 8))
      {
        WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
        v10[0] = v9;
        v9 = 0;
        WebKit::RemoteCDMInstanceProxy::create(a1, v10);
      }
    }
  }

  v10[0] = 0;
  v5 = *a2;
  *a2 = 0;
  (*(*v5 + 16))(v5, 0, 0, v10);
  (*(*v5 + 8))(v5);
  v7 = v10[0];
  v10[0] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    if (*(result + 2) == 1)
    {
      return (*(*result + 8))(result);
    }

    else
    {
      --*(result + 2);
    }
  }

  return result;
}

_DWORD *WebKit::RemoteCDMProxy::sharedPreferencesForWebProcess@<X0>(_DWORD *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 3);
  if (v2 && (this = *(v2 + 8)) != 0)
  {
    v3 = this + 4;
    ++this[4];
    WebKit::RemoteCDMFactoryProxy::sharedPreferencesForWebProcess(this, a2);

    return WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v3, v4);
  }

  else
  {
    *a2 = 0;
    a2[24] = 0;
  }

  return this;
}

void WebKit::RemoteLegacyCDMFactoryProxy::~RemoteLegacyCDMFactoryProxy(WebKit::RemoteLegacyCDMFactoryProxy *this, void *a2)
{
  WebKit::RemoteLegacyCDMFactoryProxy::clear(this, a2);
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, v3);
  }

  v6 = *(this + 4);
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v6, v3);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v3);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteLegacyCDMFactoryProxy::~RemoteLegacyCDMFactoryProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteLegacyCDMFactoryProxy::clear(void *this, void *a2)
{
  v2 = this[4];
  v3 = this[5];
  v4 = this[3];
  this[4] = 0;
  this[5] = 0;
  if (!v4)
  {
    goto LABEL_39;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    goto LABEL_39;
  }

  if (!v3)
  {
    v7 = 0;
    v6 = 0;
LABEL_12:
    v9 = v7;
    v7 = (v3 + 16 * v6);
    if (!v3)
    {
      v11 = 0;
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v6 = *(v3 - 4);
  v7 = (v3 + 16 * v6);
  if (!*(v3 - 12))
  {
    goto LABEL_12;
  }

  if (!v6)
  {
    v10 = 0;
    v9 = v3;
    goto LABEL_15;
  }

  v8 = 16 * v6;
  v9 = v3;
  while ((*v9 + 1) <= 1)
  {
    v9 += 2;
    v8 -= 16;
    if (!v8)
    {
      v9 = v7;
      break;
    }
  }

LABEL_10:
  v10 = *(v3 - 4);
LABEL_15:
  v11 = (v3 + 16 * v10);
LABEL_16:
  while (v9 != v11)
  {
    v12 = *v9;
    v9 += 2;
    this = IPC::MessageReceiverMap::removeMessageReceiver(v5 + 64, 0x5Fu, v12);
    while (v9 != v7 && (*v9 + 1) <= 1)
    {
      v9 += 2;
    }
  }

  if (!v2)
  {
    v14 = 0;
    v13 = 0;
LABEL_30:
    v16 = v14;
    v14 = (v2 + 16 * v13);
    if (!v2)
    {
      v18 = 0;
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v13 = *(v2 - 4);
  v14 = (v2 + 16 * v13);
  if (!*(v2 - 12))
  {
    goto LABEL_30;
  }

  if (!v13)
  {
    v17 = 0;
    v16 = v2;
    goto LABEL_33;
  }

  v15 = 16 * v13;
  v16 = v2;
  while ((*v16 + 1) <= 1)
  {
    v16 += 2;
    v15 -= 16;
    if (!v15)
    {
      v16 = v14;
      break;
    }
  }

LABEL_28:
  v17 = *(v2 - 4);
LABEL_33:
  v18 = (v2 + 16 * v17);
LABEL_34:
  while (v16 != v18)
  {
    v19 = *v16;
    v16 += 2;
    this = IPC::MessageReceiverMap::removeMessageReceiver(v5 + 64, 0x5Du, v19);
    while (v16 != v14 && (*v16 + 1) <= 1)
    {
      v16 += 2;
    }
  }

LABEL_39:
  if (v3)
  {
    this = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  if (v2)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v2, a2);
  }

  return this;
}

_DWORD *WebKit::RemoteLegacyCDMFactoryProxy::createCDM(uint64_t a1, WebCore::LegacyCDM *this, uint64_t *a3, uint64_t *a4)
{
  WebCore::LegacyCDM::create(&v42, this, this);
  if (!v42)
  {
    LOBYTE(v43) = 0;
    v44 = 0;
    v21 = *a4;
    *a4 = 0;
    (*(*v21 + 16))(v21, &v43);
    result = (*(*v21 + 8))(v21);
    goto LABEL_14;
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v7 = *(a1 + 8);
  atomic_fetch_add(v7, 1u);
  v8 = *a3;
  v9 = *(a3 + 2);
  v10 = v42;
  v42 = 0;
  v11 = WTF::fastMalloc(0x38);
  v12 = v11;
  *v11 = &unk_1F10FC600;
  v11[1] = 0;
  v11[2] = &unk_1F10FC650;
  if (v9)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  v11[4] = v7;
  v11[5] = v13;
  v11[6] = v10;
  v11[3] = 0x100000001;
  v14 = *(v10 + 24);
  *(v10 + 24) = v11 + 2;
  if (v14)
  {
    v15 = *(v14 + 8);
    if (!v15)
    {
      goto LABEL_54;
    }

    *(v14 + 8) = v15 - 1;
  }

  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v17 = *(a1 + 24);
  if (v17)
  {
    v18 = *(v17 + 8);
    if (v18)
    {
      v23 = (v18 + 16);
      while (1)
      {
        v24 = *v23;
        if ((*v23 & 1) == 0)
        {
          break;
        }

        v25 = *v23;
        atomic_compare_exchange_strong_explicit(v23, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v25 == v24)
        {
          goto LABEL_22;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v23);
LABEL_22:
      v45[0] = 93;
      v45[1] = IdentifierInternal;
      WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v18 + 72), v45, v12, &v43);
      if (IdentifierInternal == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DBA3B78);
      }

      if (IdentifierInternal)
      {
        v26 = *(a1 + 32);
        if (!v26)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 32));
          v26 = *(a1 + 32);
        }

        v27 = *(v26 - 8);
        v28 = (IdentifierInternal + ~(IdentifierInternal << 32)) ^ ((IdentifierInternal + ~(IdentifierInternal << 32)) >> 22);
        v29 = 9 * ((v28 + ~(v28 << 13)) ^ ((v28 + ~(v28 << 13)) >> 8));
        v30 = (v29 ^ (v29 >> 15)) + ~((v29 ^ (v29 >> 15)) << 27);
        v31 = v27 & ((v30 >> 31) ^ v30);
        v32 = (v26 + 16 * v31);
        v33 = *v32;
        if (*v32)
        {
          v34 = 0;
          v35 = 1;
          while (v33 != IdentifierInternal)
          {
            if (v33 == -1)
            {
              v34 = v32;
            }

            v31 = (v31 + v35) & v27;
            v32 = (v26 + 16 * v31);
            v33 = *v32;
            ++v35;
            if (!*v32)
            {
              if (v34)
              {
                *v34 = 0;
                v34[1] = 0;
                --*(*(a1 + 32) - 16);
                v32 = v34;
              }

              goto LABEL_34;
            }
          }

          v39 = v32[1];
          v32[1] = v12;
          if (v39)
          {
            if (v39[7] == 1)
            {
              (*(*v39 + 24))(v39);
            }

            else
            {
              --v39[7];
            }
          }

          goto LABEL_46;
        }

LABEL_34:
        v36 = v32[1];
        *v32 = IdentifierInternal;
        v32[1] = v12;
        if (v36)
        {
          if (v36[7] == 1)
          {
            (*(*v36 + 24))(v36);
          }

          else
          {
            --v36[7];
          }
        }

        v37 = *(a1 + 32);
        if (v37)
        {
          v38 = *(v37 - 12) + 1;
        }

        else
        {
          v38 = 1;
        }

        *(v37 - 12) = v38;
        v40 = (*(v37 - 16) + v38);
        v41 = *(v37 - 4);
        if (v41 > 0x400)
        {
          if (v41 > 2 * v40)
          {
            goto LABEL_46;
          }
        }

        else if (3 * v41 > 4 * v40)
        {
LABEL_46:
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v18 + 16));
          v12 = 0;
          goto LABEL_10;
        }

        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 32));
        goto LABEL_46;
      }

LABEL_54:
      __break(0xC471u);
      JUMPOUT(0x19DBA3B58);
    }
  }

LABEL_10:
  v43 = IdentifierInternal;
  v44 = 1;
  v19 = *a4;
  *a4 = 0;
  (*(*v19 + 16))(v19, &v43);
  result = (*(*v19 + 8))(v19);
  if (v12)
  {
    if (v12[7] == 1)
    {
      result = (*(*v12 + 24))(v12);
    }

    else
    {
      --v12[7];
    }
  }

LABEL_14:
  v22 = v42;
  v42 = 0;
  if (v22)
  {
    return WTF::RefCounted<WebCore::LegacyCDM>::deref((v22 + 8));
  }

  return result;
}

uint64_t WebKit::RemoteLegacyCDMFactoryProxy::supportsKeySystem(int a1, WebCore::LegacyCDM *this, WTF::String *a3, uint64_t *a4)
{
  if (*(a3 + 8) == 1)
  {
    v5 = WebCore::LegacyCDM::keySystemSupportsMimeType(this, a3, a3);
  }

  else
  {
    v5 = WebCore::LegacyCDM::supportsKeySystem(this, this);
  }

  v6 = *a4;
  *a4 = 0;
  (*(*v6 + 16))(v6, v5);
  v7 = *(*v6 + 8);

  return v7(v6);
}

uint64_t WebKit::RemoteLegacyCDMFactoryProxy::didReceiveCDMMessage(uint64_t this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v5 = *(a3 + 7);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9[5] = v3;
    v9[6] = v4;
    v9[0] = v5;
    this = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((this + 32), v9);
    if (this)
    {
      v8 = this;
      ++*(this + 28);
      this = WebKit::RemoteLegacyCDMProxy::didReceiveMessage(this, a2, a3);
      if (v8[7] == 1)
      {
        return (*(*v8 + 24))(v8);
      }

      else
      {
        --v8[7];
      }
    }
  }

  return this;
}

uint64_t WebKit::RemoteLegacyCDMFactoryProxy::didReceiveCDMSessionMessage(uint64_t this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v5 = *(a3 + 7);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9[5] = v3;
    v9[6] = v4;
    v9[0] = v5;
    this = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((this + 40), v9);
    if (this)
    {
      v8 = this;
      ++*(this + 32);
      this = WebKit::RemoteLegacyCDMSessionProxy::didReceiveMessage(this, a2, a3);
      if (v8[8] == 1)
      {
        return (*(*v8 + 24))(v8);
      }

      else
      {
        --v8[8];
      }
    }
  }

  return this;
}

uint64_t WebKit::RemoteLegacyCDMFactoryProxy::didReceiveSyncCDMMessage(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  if ((*(a3 + 56) - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v11 = *(a3 + 56);
  v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 32), &v11);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  ++*(v7 + 28);
  v9 = WebKit::RemoteLegacyCDMProxy::didReceiveSyncMessage(v7, a2, a3, a4);
  if (v8[7] == 1)
  {
    (*(*v8 + 24))(v8);
  }

  else
  {
    --v8[7];
  }

  return v9;
}

uint64_t WebKit::RemoteLegacyCDMFactoryProxy::didReceiveSyncCDMSessionMessage(uint64_t a1, atomic_ullong *a2, IPC::Decoder *a3, uint64_t *a4)
{
  if ((*(a3 + 7) - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v11 = *(a3 + 7);
  v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), &v11);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  ++*(v7 + 32);
  v9 = WebKit::RemoteLegacyCDMSessionProxy::didReceiveSyncMessage(v7, a2, a3, a4);
  if (v8[8] == 1)
  {
    (*(*v8 + 24))(v8);
  }

  else
  {
    --v8[8];
  }

  return v9;
}

atomic_ullong *WebKit::RemoteLegacyCDMFactoryProxy::removeSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 24);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v11 = (v5 + 16);
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
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_11:
    IPC::MessageReceiverMap::removeMessageReceiver(v5 + 64, 0x5Fu, a2);
    v17 = *(a1 + 40);
    v16 = (a1 + 40);
    v15 = v17;
    if (!v17)
    {
      goto LABEL_39;
    }

    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBA4254);
    }

    v18 = *(v15 - 8);
    v19 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
    v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
    v22 = v18 & ((v21 >> 31) ^ v21);
    v23 = *(v15 + 16 * v22);
    if (v23 != a2)
    {
      v24 = 1;
      while (v23)
      {
        v22 = (v22 + v24) & v18;
        v23 = *(v15 + 16 * v22);
        ++v24;
        if (v23 == a2)
        {
          goto LABEL_20;
        }
      }

      v22 = *(v15 - 4);
    }

LABEL_20:
    if (v22 != *(v15 - 4))
    {
      v25 = (v15 + 16 * v22);
      v26 = v25[1];
      if (v26 && (v25[1] = 0, (v15 = *v16) == 0) || (v15 += 16 * *(v15 - 4), v15 != v25))
      {
        if (v15 != v25)
        {
          *v25 = -1;
          v25[1] = 0;
          v27 = *v16;
          v28 = vadd_s32(*(*v16 - 16), 0xFFFFFFFF00000001);
          *(v27 - 16) = v28;
          v29 = *(v27 - 4);
          if (6 * v28.i32[1] < v29 && v29 >= 9)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v16, v29 >> 1);
          }
        }
      }

      if (v26)
      {
        v31 = *(v26 + 40);
        *(v26 + 40) = 0;
        if (v31 && atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v31);
          WTF::fastFree(v31, v14);
        }

        if (*(v26 + 32) == 1)
        {
          (*(*v26 + 24))(v26);
        }

        else
        {
          --*(v26 + 32);
        }
      }
    }

    if (!*v16 || !*(*v16 - 12))
    {
LABEL_39:
      WebKit::GPUProcess::tryExitIfUnusedAndUnderMemoryPressure(*(v5 + 80));
    }

    v32 = *a3;
    *a3 = 0;
    (*(*v32 + 16))(v32);
    (*(*v32 + 8))(v32);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
  }

  else
  {
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

atomic_ullong *WebKit::RemoteLegacyCDMFactoryProxy::sharedPreferencesForWebProcess@<X0>(atomic_ullong *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this[3];
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    v5 = (v4 + 16);
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
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_9:
    *a2 = *(v4 + 336);
    *(a2 + 16) = *(v4 + 352);
    *(a2 + 24) = 1;

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v4 + 16));
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return this;
}

void WebKit::RemoteLegacyCDMProxy::~RemoteLegacyCDMProxy(WebKit::RemoteLegacyCDMProxy *this, void *a2)
{
  *this = &unk_1F10FC600;
  *(this + 2) = &unk_1F10FC650;
  v3 = *(this + 6);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;
  if (v4)
  {
    v5 = *(v4 + 8);
    if (!v5)
    {
      goto LABEL_11;
    }

    *(v4 + 8) = v5 - 1;
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    WTF::RefCounted<WebCore::LegacyCDM>::deref((v6 + 8));
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  if (*(this + 7) != 1)
  {
LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19DBA4428);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

void non-virtual thunk toWebKit::RemoteLegacyCDMProxy::~RemoteLegacyCDMProxy(WebKit::RemoteLegacyCDMProxy *this, void *a2)
{
  WebKit::RemoteLegacyCDMProxy::~RemoteLegacyCDMProxy((this - 16), a2);
}

{
  WebKit::RemoteLegacyCDMProxy::operator delete((this - 16), a2);
}

double WebKit::RemoteLegacyCDMProxy::operator delete(WebKit::RemoteLegacyCDMProxy *a1, void *a2)
{
  WebKit::RemoteLegacyCDMProxy::~RemoteLegacyCDMProxy(a1, a2);
  if (*(v2 + 24))
  {
    *(v2 + 48) = 0;
    result = 0.0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
  }

  else
  {

    WTF::fastFree(v2, v3);
  }

  return result;
}

_DWORD *WebKit::RemoteLegacyCDMProxy::supportsMIMEType(uint64_t a1, const WTF::String *a2, uint64_t *a3)
{
  v4 = *(a1 + 48);
  v5 = v4 + 2;
  ++v4[2];
  v6 = WebCore::LegacyCDM::supportsMIMEType(v4, a2);
  v7 = *a3;
  *a3 = 0;
  (*(*v7 + 16))(v7, v6);
  (*(*v7 + 8))(v7);

  return WTF::RefCounted<WebCore::LegacyCDM>::deref(v5);
}

_DWORD *WebKit::RemoteLegacyCDMProxy::createSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 32);
  if (!v3 || (v4 = *(v3 + 8)) == 0)
  {
    LOBYTE(v52) = 0;
    LOBYTE(v53) = 0;
    v18 = *a3;
    *a3 = 0;
    (*(*v18 + 16))(v18, &v52);
    return (*(*v18 + 8))(v18);
  }

  ++*(v4 + 16);
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v9 = *(a1 + 48);
  v11 = *(v9 + 8);
  v10 = (v9 + 8);
  *v10 = v11 + 1;
  v12 = WTF::fastMalloc(0x60);
  *(v12 + 32) = 1;
  *v12 = &unk_1F10FC678;
  *(v12 + 8) = 0;
  *(v12 + 16) = &unk_1F10FC6F0;
  *(v12 + 24) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v4 + 8), v4);
  v13 = *(v4 + 8);
  atomic_fetch_add(v13, 1u);
  *(v12 + 40) = v13;
  if (!*(v4 + 48))
  {
    v51 = IdentifierInternal;
    v14 = WTF::fastMalloc(0x18);
    *(v14 + 8) = 1;
    *v14 = &unk_1F10FAF48;
    *(v14 + 12) = 1;
    *(v14 + 16) = v4;
    atomic_fetch_add((v14 + 8), 1u);
    v15 = *(v4 + 48);
    *(v4 + 48) = v14;
    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15 + 2);
      (*(*v15 + 8))(v15);
    }

    v16 = *(v4 + 24);
    if (v16)
    {
      v17 = *(v16 + 8);
      if (v17)
      {
        while (1)
        {
          v50 = *(v17 + 16);
          if ((v50 & 1) == 0)
          {
            break;
          }

          v49 = *(v17 + 16);
          atomic_compare_exchange_strong_explicit((v17 + 16), &v49, v50 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v49 == v50)
          {
            goto LABEL_67;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v17 + 16));
LABEL_67:
        v20 = 0;
        if (*(v17 + 136) <= -2)
        {
          LODWORD(v16) = (*(v17 + 345) >> 5) & 1;
        }

        else
        {
          LOBYTE(v16) = 1;
        }

        goto LABEL_11;
      }

      LOBYTE(v16) = 0;
    }

    else
    {
      v17 = 0;
    }

    v20 = 1;
LABEL_11:
    if (*(v14 + 16) == v4)
    {
      *(v14 + 12) = v16;
    }

    if ((v20 & 1) == 0)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v17 + 16));
    }

    IdentifierInternal = v51;
    if (atomic_fetch_add((v14 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v14 + 8));
      (*(*v14 + 8))(v14);
    }
  }

  v21 = *(v4 + 48);
  atomic_fetch_add((v21 + 8), 1u);
  *(v12 + 48) = v21;
  *(v12 + 56) = a2;
  *(v12 + 64) = IdentifierInternal;
  WebCore::LegacyCDM::createSession();
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  v22 = a3;
  v23 = IdentifierInternal;
  if (!*(v12 + 72))
  {
    v24 = *(v12 + 48);
    atomic_fetch_add(v24 + 2, 1u);
    v25 = *(v12 + 56);
    v52 = "RemoteLegacyCDMSessionProxy";
    v53 = 28;
    v54 = "RemoteLegacyCDMSessionProxy";
    v55 = v25;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [30]>(v24, &WebKit2LogEME, 1, &v52, "could not create CDM session."))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [30]>(&WebKit2LogEME, 1, &v52, "could not create CDM session.");
    }

    if (v24 && atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v24 + 2);
      (*(*v24 + 8))(v24);
    }
  }

  WTF::RefCounted<WebCore::LegacyCDM>::deref(v10);
  v26 = *(v4 + 24);
  if (!v26)
  {
    goto LABEL_25;
  }

  v27 = *(v26 + 8);
  if (!v27)
  {
    goto LABEL_25;
  }

  v30 = (v27 + 16);
  while (1)
  {
    v31 = *v30;
    if ((*v30 & 1) == 0)
    {
      break;
    }

    v32 = *v30;
    atomic_compare_exchange_strong_explicit(v30, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v32 == v31)
    {
      goto LABEL_36;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v30);
LABEL_36:
  v56[0] = 95;
  v56[1] = v23;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v27 + 72), v56, v12, &v52);
  if (v23 == -1 || !v23)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBA4BE0);
  }

  v33 = *(v4 + 40);
  if (!v33)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v4 + 40));
    v33 = *(v4 + 40);
  }

  v34 = *(v33 - 8);
  v35 = (v23 + ~(v23 << 32)) ^ ((v23 + ~(v23 << 32)) >> 22);
  v36 = 9 * ((v35 + ~(v35 << 13)) ^ ((v35 + ~(v35 << 13)) >> 8));
  v37 = (v36 ^ (v36 >> 15)) + ~((v36 ^ (v36 >> 15)) << 27);
  v38 = v34 & ((v37 >> 31) ^ v37);
  v39 = (v33 + 16 * v38);
  v40 = *v39;
  if (*v39)
  {
    v41 = 0;
    v42 = 1;
    while (v40 != v23)
    {
      if (v40 == -1)
      {
        v41 = v39;
      }

      v38 = (v38 + v42) & v34;
      v39 = (v33 + 16 * v38);
      v40 = *v39;
      ++v42;
      if (!*v39)
      {
        if (v41)
        {
          *v41 = 0;
          v41[1] = 0;
          --*(*(v4 + 40) - 16);
          v39 = v41;
        }

        goto LABEL_48;
      }
    }

    v46 = v39[1];
    v39[1] = v12;
    if (v46)
    {
      if (v46[8] == 1)
      {
        (*(*v46 + 24))(v46);
      }

      else
      {
        --v46[8];
      }
    }

    goto LABEL_60;
  }

LABEL_48:
  v43 = v39[1];
  *v39 = v23;
  v39[1] = v12;
  if (v43)
  {
    if (v43[8] == 1)
    {
      (*(*v43 + 24))(v43);
    }

    else
    {
      --v43[8];
    }
  }

  v44 = *(v4 + 40);
  if (v44)
  {
    v45 = *(v44 - 12) + 1;
  }

  else
  {
    v45 = 1;
  }

  *(v44 - 12) = v45;
  v47 = (*(v44 - 16) + v45);
  v48 = *(v44 - 4);
  if (v48 > 0x400)
  {
    if (v48 > 2 * v47)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (3 * v48 <= 4 * v47)
  {
LABEL_59:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v4 + 40));
  }

LABEL_60:
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v27 + 16));
  v12 = 0;
LABEL_25:
  v52 = v23;
  LOBYTE(v53) = 1;
  v28 = *v22;
  *v22 = 0;
  (*(*v28 + 16))(v28, &v52);
  (*(*v28 + 8))(v28);
  if (v12)
  {
    if (*(v12 + 32) == 1)
    {
      (*(*v12 + 24))(v12);
    }

    else
    {
      --*(v12 + 32);
    }
  }

  return WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref((v4 + 16), v29);
}

uint64_t WebKit::RemoteLegacyCDMProxy::cdmMediaPlayer@<X0>(uint64_t this@<X0>, const WebCore::LegacyCDM *a2@<X1>, atomic_ullong **a3@<X8>)
{
  v4 = *(this + 32);
  if (!v4 || (v5 = this, (v6 = *(v4 + 8)) == 0))
  {
    *a3 = 0;
    return this;
  }

  v7 = (v6 + 16);
  ++*(v6 + 16);
  if (*(this + 40) && (WebKit::RemoteLegacyCDMFactoryProxy::gpuConnectionToWebProcess(&v11, *(v6 + 24)), (v8 = v11) != 0))
  {
    v9 = *(v11 + 128);
    ++v9[4];
    v10 = *(v5 + 40);
    if (!v10)
    {
      this = 157;
      __break(0xC471u);
      return this;
    }

    WebKit::RemoteMediaPlayerManagerProxy::mediaPlayer(v9, v10, 1, a3);
    if (v9[4] == 1)
    {
      (*(*v9 + 24))(v9);
    }

    else
    {
      --v9[4];
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16));
  }

  else
  {
    *a3 = 0;
  }

  return WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v7, a2);
}

void *WebKit::RemoteLegacyCDMFactoryProxy::gpuConnectionToWebProcess(void *this, uint64_t a2)
{
  v2 = this;
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      while (1)
      {
        v5 = *(v3 + 16);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v4 = *(v3 + 16);
        atomic_compare_exchange_strong_explicit((v3 + 16), &v4, v5 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v5)
        {
          goto LABEL_5;
        }
      }

      this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 16));
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_5:
  *v2 = v3;
  return this;
}

uint64_t WebKit::RemoteMediaPlayerManagerProxy::mediaPlayer@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = result;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (result + 24),  v10);
  v6 = *(v5 + 24);
  if (v6)
  {
    v6 += 16 * *(v6 - 4);
  }

  if (v6 == result)
  {
LABEL_9:
    v7 = 0;
  }

  else
  {
    v7 = *(*(result + 8) + 136);
    if (v7)
    {
      while (1)
      {
        v8 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v9 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          goto LABEL_10;
        }
      }

      result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
    }
  }

LABEL_10:
  *a4 = v7;
  return result;
}

void WebKit::RemoteLegacyCDMSessionProxy::~RemoteLegacyCDMSessionProxy(WebKit::RemoteLegacyCDMSessionProxy *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10FC678;
  *(this + 2) = &unk_1F10FC6F0;
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  if (*(this + 8) == 1)
  {
    v8 = *(this + 3);
    if (v8)
    {
      *(v8 + 8) = 0;
      v9 = *(this + 3);
      *(this + 3) = 0;
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v9);
          WTF::fastFree(v9, a2);
        }
      }
    }

    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteLegacyCDMSessionProxy::~RemoteLegacyCDMSessionProxy(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteLegacyCDMSessionProxy::~RemoteLegacyCDMSessionProxy(WebKit::RemoteLegacyCDMSessionProxy *this, WTF::StringImpl *a2)
{
  WebKit::RemoteLegacyCDMSessionProxy::~RemoteLegacyCDMSessionProxy((this - 16), a2);
}

{
  WebKit::RemoteLegacyCDMSessionProxy::~RemoteLegacyCDMSessionProxy((this - 16), a2);

  WTF::fastFree(v2, v3);
}

unsigned int *WebKit::RemoteLegacyCDMSessionProxy::generateKeyRequest(uint64_t a1, uint64_t a2, WTF::DeferrableRefCountedBase **a3, atomic_uint **a4, uint64_t *a5)
{
  v6 = *(a1 + 72);
  if (v6)
  {
    (**v6)(*(a1 + 72));
    WebKit::convertToUint8Array(&v30, a3);
    v11 = v30;
    if (!v30)
    {
      v31 = 0;
      v22 = *a5;
      *a5 = 0;
      (*(*v22 + 16))(v22, &v31, MEMORY[0x1E696EBA8], 0, 0);
      (*(*v22 + 8))(v22);
      v23 = v31;
      v31 = 0;
      if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23 + 2);
        (*(*v23 + 8))(v23);
      }

      goto LABEL_22;
    }

    WTF::String::operator=((a1 + 88), a4);
    v29 = 0;
    v28 = 0;
    v27 = 0;
    (*(*v6 + 56))(&v26, v6, a2, v11, &v29, &v28, &v27);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v13 = v29;
    v29 = v31;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v26;
    if (v26)
    {
      ++*v26;
    }

    WebKit::convertToOptionalSharedBuffer<WTF::RefPtr<JSC::GenericTypedArrayView<JSC::Uint8Adaptor>,WTF::RawPtrTraits<JSC::GenericTypedArrayView<JSC::Uint8Adaptor>>,WTF::DefaultRefDerefTraits<JSC::GenericTypedArrayView<JSC::Uint8Adaptor>>>>(&v31, v14);
    v15 = v28;
    v16 = v27;
    v17 = *a5;
    *a5 = 0;
    (*(*v17 + 16))(v17, &v31, &v29, v15, v16);
    (*(*v17 + 8))(v17);
    v19 = v31;
    v31 = 0;
    if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19 + 2);
      (*(*v19 + 8))(v19);
      if (v14)
      {
LABEL_11:
        if (*v14 == 1)
        {
          JSC::ArrayBufferView::operator delete();
        }

        else
        {
          --*v14;
        }
      }
    }

    else if (v14)
    {
      goto LABEL_11;
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      if (*v20 == 1)
      {
        JSC::ArrayBufferView::operator delete();
      }

      else
      {
        --*v20;
      }
    }

    v21 = v29;
    v29 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v18);
    }

LABEL_22:
    if (v30)
    {
      if (*v30 == 1)
      {
        JSC::ArrayBufferView::operator delete();
      }

      else
      {
        --*v30;
      }
    }

    return (*(*v6 + 8))(v6);
  }

  v31 = 0;
  v25 = *a5;
  *a5 = 0;
  (*(*v25 + 16))(v25, &v31, MEMORY[0x1E696EBA8], 0, 0);
  (*(*v25 + 8))(v25);
  result = v31;
  v31 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    return (*(*result + 8))(result);
  }

  return result;
}

WTF::DeferrableRefCountedBase *WebKit::convertToUint8Array(void *a1, WTF::DeferrableRefCountedBase **a2)
{
  result = *a2;
  if (*a2 && (result = WebCore::FragmentedSharedBuffer::tryCreateArrayBuffer(&v9, result), (v5 = v9) != 0))
  {
    v9 = 0;
    v7 = v5;
    JSC::GenericTypedArrayView<JSC::Uint8Adaptor>::create(&v7, 0, *(*a2 + 7), 1, &v8);
    v6 = v7;
    *a1 = v8;
    v7 = 0;
    v8 = 0;
    if (v6)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
    }

    result = v9;
    v9 = 0;
    if (result)
    {
      return WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unsigned int *WebKit::convertToOptionalSharedBuffer<WTF::RefPtr<JSC::GenericTypedArrayView<JSC::Uint8Adaptor>,WTF::RawPtrTraits<JSC::GenericTypedArrayView<JSC::Uint8Adaptor>>,WTF::DefaultRefDerefTraits<JSC::GenericTypedArrayView<JSC::Uint8Adaptor>>>>(unsigned int *result, JSC::ArrayBufferView *this)
{
  v2 = result;
  if (this)
  {
    JSC::ArrayBufferView::baseAddress(this);
    JSC::ArrayBufferView::byteLength(this);
    result = WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul>>(&v5);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  *v2 = v4;
  return result;
}

uint64_t WebKit::RemoteLegacyCDMSessionProxy::releaseKeys(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    (**v1)(*(this + 72));
    (*(*v1 + 64))(v1);
    v2 = *(*v1 + 8);

    return v2(v1);
  }

  return this;
}

unsigned int *WebKit::RemoteLegacyCDMSessionProxy::update(uint64_t a1, WTF::DeferrableRefCountedBase **a2, uint64_t *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    (**v4)(*(a1 + 72));
    WebKit::convertToUint8Array(&v21, a2);
    if (!v21)
    {
      v20 = 0;
      v13 = *a3;
      *a3 = 0;
      (*(*v13 + 16))(v13, 0, &v20, 0, 0);
      (*(*v13 + 8))(v13);
      v14 = v20;
      v20 = 0;
      if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14 + 2);
        (*(*v14 + 8))(v14);
      }

      goto LABEL_16;
    }

    v20 = 0;
    v19 = 0;
    v18 = 0;
    v6 = (*(*v4 + 72))(v4, v21, &v20, &v19, &v18);
    v7 = v20;
    if (v20)
    {
      ++*v20;
    }

    WebKit::convertToOptionalSharedBuffer<WTF::RefPtr<JSC::GenericTypedArrayView<JSC::Uint8Adaptor>,WTF::RawPtrTraits<JSC::GenericTypedArrayView<JSC::Uint8Adaptor>>,WTF::DefaultRefDerefTraits<JSC::GenericTypedArrayView<JSC::Uint8Adaptor>>>>(&v17, v7);
    v8 = v19;
    v9 = v18;
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10, v6, &v17, v8, v9);
    (*(*v10 + 8))(v10);
    v11 = v17;
    v17 = 0;
    if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11 + 2);
      (*(*v11 + 8))(v11);
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else if (!v7)
    {
      goto LABEL_10;
    }

    if (*v7 == 1)
    {
      JSC::ArrayBufferView::operator delete();
    }

    else
    {
      --*v7;
    }

LABEL_10:
    v12 = v20;
    v20 = 0;
    if (v12)
    {
      if (*v12 == 1)
      {
        JSC::ArrayBufferView::operator delete();
      }

      else
      {
        --*v12;
      }
    }

LABEL_16:
    if (v21)
    {
      if (*v21 == 1)
      {
        JSC::ArrayBufferView::operator delete();
      }

      else
      {
        --*v21;
      }
    }

    return (*(*v4 + 8))(v4);
  }

  v21 = 0;
  v16 = *a3;
  *a3 = 0;
  (*(*v16 + 16))(v16, 0, &v21, 0, 0);
  (*(*v16 + 8))(v16);
  result = v21;
  v21 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    return (*(*result + 8))(result);
  }

  return result;
}

void *WebKit::RemoteLegacyCDMSessionProxy::getCachedKeyForKeyId(void *this, const WTF::String *a2, uint64_t a3)
{
  if (a2)
  {
    (**a2)(a2);
    (*(*a2 + 80))(a2, a3);
    v5 = *(*a2 + 8);

    return v5(a2);
  }

  else
  {
    *this = 0;
  }

  return this;
}

WTF::DeferrableRefCountedBase *WebKit::RemoteLegacyCDMSessionProxy::cachedKeyForKeyID(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  WebKit::RemoteLegacyCDMSessionProxy::getCachedKeyForKeyId(&v9, *(a1 + 72), a2);
  if (v9)
  {
    v10[0] = JSC::ArrayBuffer::span(v9);
    v10[1] = v4;
    WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul>>(&v11);
    v5 = v11;
  }

  else
  {
    v5 = 0;
  }

  v10[0] = v5;
  v6 = *a3;
  *a3 = 0;
  (*(*v6 + 16))(v6, v10);
  (*(*v6 + 8))(v6);
  v7 = v10[0];
  v10[0] = 0;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    return WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
  }

  return result;
}

_DWORD *WebKit::RemoteLegacyCDMSessionProxy::sendMessage(_DWORD *result, JSC::ArrayBufferView *a2, uint64_t *a3)
{
  v3 = *(result + 5);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v7 = result;
      v9 = *(v4 + 16);
      v8 = v4 + 16;
      *v8 = v9 + 1;
      WebKit::RemoteLegacyCDMFactoryProxy::gpuConnectionToWebProcess(&v21, *(v8 + 8));
      if (v21)
      {
        v11 = *(v21 + 56);
        if (a2)
        {
          v12 = JSC::ArrayBufferView::baseAddress(a2);
          v13 = JSC::ArrayBufferView::byteLength(a2);
          v22[0] = v12;
          v22[1] = v13;
          WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul>>(&v23);
          v14 = v23;
        }

        else
        {
          v14 = 0;
        }

        v23 = v14;
        v15 = *(v7 + 8);
        v16 = IPC::Encoder::operator new(0x238, v10);
        *v16 = 1391;
        *(v16 + 2) = 0;
        *(v16 + 3) = 0;
        *(v16 + 1) = v15;
        *(v16 + 68) = 0;
        *(v16 + 70) = 0;
        *(v16 + 69) = 0;
        IPC::Encoder::encodeHeader(v16);
        v22[0] = v16;
        IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v16, &v23);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v16, a3);
        IPC::Connection::sendMessageImpl(v11, v22, 0, 0);
        v17 = v22[0];
        v22[0] = 0;
        if (v17)
        {
          IPC::Encoder::~Encoder(v17, v10);
          bmalloc::api::tzoneFree(v19, v20);
        }

        v18 = v23;
        v23 = 0;
        if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v18 + 2);
          (*(*v18 + 8))(v18);
        }

        if (v21)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v21 + 16));
        }
      }

      return WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v8, v10);
    }
  }

  return result;
}

_DWORD *WebKit::RemoteLegacyCDMSessionProxy::sendError(_DWORD *this, __int16 a2, int a3)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v7 = this;
      v9 = *(v4 + 16);
      v8 = v4 + 16;
      *v8 = v9 + 1;
      WebKit::RemoteLegacyCDMFactoryProxy::gpuConnectionToWebProcess(&v19, *(v8 + 8));
      v11 = v19;
      if (v19)
      {
        v12 = *(v19 + 56);
        v13 = *(v7 + 8);
        v14 = IPC::Encoder::operator new(0x238, v10);
        *v14 = 1390;
        *(v14 + 2) = 0;
        *(v14 + 3) = 0;
        *(v14 + 1) = v13;
        *(v14 + 68) = 0;
        *(v14 + 70) = 0;
        *(v14 + 69) = 0;
        IPC::Encoder::encodeHeader(v14);
        v20 = v14;
        IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v14, a2);
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v14, a3);
        IPC::Connection::sendMessageImpl(v12, &v20, 0, 0);
        v16 = v20;
        v20 = 0;
        if (v16)
        {
          IPC::Encoder::~Encoder(v16, v15);
          bmalloc::api::tzoneFree(v17, v18);
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v11 + 16));
      }

      return WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v8, v10);
    }
  }

  return this;
}

_DWORD *WebKit::RemoteLegacyCDMSessionProxy::mediaKeysStorageDirectory@<X0>(_DWORD *this@<X0>, atomic_uint **a2@<X8>)
{
  v3 = *(this + 5);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    *v5 = v6 + 1;
    WebKit::RemoteLegacyCDMFactoryProxy::gpuConnectionToWebProcess(&v12, *(v5 + 8));
    v8 = v12;
    if (v12)
    {
      v9 = *WebKit::GPUConnectionToWebProcess::mediaKeysStorageDirectory(v12);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      *a2 = v9;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v8 + 2);
    }

    else
    {
      v11 = *MEMORY[0x1E696EBA8];
      if (*MEMORY[0x1E696EBA8])
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        *a2 = v11;
      }

      else
      {
        *a2 = 0;
      }
    }

    return WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v5, v7);
  }

  else
  {
    v10 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *a2 = v10;
  }

  return this;
}

void WebKit::RemoteMediaEngineConfigurationFactoryProxy::~RemoteMediaEngineConfigurationFactoryProxy(WebKit::RemoteMediaEngineConfigurationFactoryProxy *this, void *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  WebKit::RemoteMediaEngineConfigurationFactoryProxy::~RemoteMediaEngineConfigurationFactoryProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteMediaEngineConfigurationFactoryProxy::createDecodingConfiguration(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F10FCC50;
  v4[1] = v3;
  v6 = v4;
  WebCore::MediaEngineConfigurationFactory::createDecodingConfiguration();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::RemoteMediaEngineConfigurationFactoryProxy::createEncodingConfiguration(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F10FCC78;
  v4[1] = v3;
  v6 = v4;
  WebCore::MediaEngineConfigurationFactory::createEncodingConfiguration();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaEngineConfigurationFactoryProxy::ref(WebKit::RemoteMediaEngineConfigurationFactoryProxy *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v2, *(this + 2), &v7);
    v3 = v7;
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  while (1)
  {
    v4 = *(v3 + 16);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(v3 + 16);
    atomic_compare_exchange_strong_explicit((v3 + 16), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      v7 = 0;
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 16));
  v3 = v7;
  v7 = 0;
  if (!v3)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
}

atomic_ullong *WebKit::RemoteMediaEngineConfigurationFactoryProxy::deref(WebKit::RemoteMediaEngineConfigurationFactoryProxy *this)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(this + 3), *(this + 2), &v3);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v2 + 16));
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaEngineConfigurationFactoryProxy::sharedPreferencesForWebProcess@<X0>(WebKit::RemoteMediaEngineConfigurationFactoryProxy *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 3);
  if (result && (result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 2), &v6), (v5 = v6) != 0))
  {
    *a2 = *(v6 + 336);
    *(a2 + 16) = *(v5 + 352);
    *(a2 + 24) = 1;
    v6 = 0;
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

WebKit::RemoteMediaPlayerManagerProxy *WebKit::RemoteMediaPlayerManagerProxy::RemoteMediaPlayerManagerProxy(WebKit::RemoteMediaPlayerManagerProxy *this, atomic_ullong *a2)
{
  *(this + 4) = 1;
  *this = &unk_1F10FC788;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2;
  v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(a2 + 2);
  *(this + 5) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v4);
  *(this + 6) = 0;
  *(this + 7) = WTF::cryptographicallyRandomNumber<unsigned long long>();
  v5 = WebKit::GPUConnectionToWebProcess::logger(a2);
  atomic_fetch_add((v5 + 8), 1u);
  *(this + 8) = v5;
  return this;
}

void WebKit::RemoteMediaPlayerManagerProxy::~RemoteMediaPlayerManagerProxy(unsigned int **this, void *a2)
{
  *this = &unk_1F10FC788;
  WebKit::RemoteMediaPlayerManagerProxy::clear(this, a2);
  v4 = this[8];
  this[8] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = this[6];
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, v3);
  }

  v6 = this[5];
  this[5] = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, v3);
  }

  v7 = this[3];
  if (v7)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v7, v3);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteMediaPlayerManagerProxy::~RemoteMediaPlayerManagerProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteMediaPlayerManagerProxy::clear(WebKit::RemoteMediaPlayerManagerProxy *this, void *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (!v3)
  {
    v5 = 0;
    v4 = 0;
LABEL_10:
    v7 = v5;
    v5 = v3 + 16 * v4;
    if (!v3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v4 = *(v3 - 4);
  v5 = v3 + 16 * v4;
  if (!*(v3 - 12))
  {
    goto LABEL_10;
  }

  if (!v4)
  {
    v8 = 0;
    v7 = v3;
    goto LABEL_13;
  }

  v6 = 16 * v4;
  v7 = v3;
  while ((*v7 + 1) <= 1)
  {
    v7 += 16;
    v6 -= 16;
    if (!v6)
    {
      v7 = v5;
      break;
    }
  }

LABEL_8:
  v8 = *(v3 - 4);
LABEL_13:
  v9 = v3 + 16 * v8;
LABEL_17:
  while (v7 != v9)
  {
    WebKit::RemoteMediaPlayerProxy::invalidate(*(v7 + 8));
    do
    {
      v7 += 16;
    }

    while (v7 != v5 && (*v7 + 1) <= 1);
  }

  result = *(this + 6);
  if (result)
  {
    *(this + 6) = 0;
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  if (v3)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return result;
}

unsigned int *WebKit::RemoteMediaPlayerProxy::invalidate(WebKit::RemoteMediaPlayerProxy *this)
{
  WTF::RunLoop::TimerBase::stop((this + 208));
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v8);
  WebCore::MediaPlayer::invalidate(v8);
  v2 = v8;
  v8 = 0;
  if (v2)
  {
    v2 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    ++*v3;
    v6 = *(v3 + 2) - 1;
    *(v3 + 2) = v6;
    if (v6)
    {
      *(this + 15) = 0;
      v7 = v3;
    }

    else
    {
      *(*(v3 + 1) + 8) = 0;
      sandbox_extension_release();
      v7 = *(this + 15);
      *(this + 15) = 0;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    WTF::RefCounted<WebKit::SandboxExtension>::deref(v7);
LABEL_15:
    v2 = WTF::RefCounted<WebKit::SandboxExtension>::deref(v3);
  }

  if (*(this + 872) == 1)
  {
    atomic_fetch_add(WebKit::ScopedRenderingResourcesRequest::s_requests, 0xFFFFFFFF);
    if (!atomic_load(WebKit::ScopedRenderingResourcesRequest::s_requests))
    {
      WebKit::ScopedRenderingResourcesRequest::scheduleFreeRenderingResources(v2);
    }
  }

  *(this + 872) = 0;
  result = *(this + 111);
  *(this + 111) = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaPlayerManagerProxy::createMediaPlayer(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  result = *(a1 + 40);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 32), &v79);
    if (v79)
    {
      v12 = *(v79 + 56);
      while (1)
      {
        v13 = *v12;
        if ((*v12 & 1) == 0)
        {
          break;
        }

        v14 = *v12;
        atomic_compare_exchange_strong_explicit(v12, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v14 == v13)
        {
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_9:
      v15 = *(v79 + 192);
      v16 = (v15 + 8);
      while (1)
      {
        v17 = *v16;
        if ((*v16 & 1) == 0)
        {
          break;
        }

        v18 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_14;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v16);
LABEL_14:
      v78 = v15;
      if (WebKit::RemoteMediaPlayerProxy::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaPlayerProxy::s_heapRef, v11);
      }

      else
      {
        NonCompact = WebKit::RemoteMediaPlayerProxy::operatorNewSlow(0);
      }

      v20 = NonCompact;
      *(NonCompact + 16) = 1;
      v77 = (NonCompact + 16);
      *NonCompact = &unk_1F10FC7D0;
      *(NonCompact + 8) = 0;
      *(NonCompact + 24) = &unk_1F10FCAC0;
      *(NonCompact + 32) = 0;
      *(NonCompact + 40) = &unk_1F10FCAF8;
      *(NonCompact + 48) = 0;
      *(NonCompact + 56) = 0u;
      *(NonCompact + 72) = 0u;
      *(NonCompact + 88) = 0u;
      *(NonCompact + 104) = a2;
      *(NonCompact + 112) = a3;
      *(NonCompact + 120) = 0;
      *(NonCompact + 128) = v12;
      *(NonCompact + 136) = 0u;
      v21 = (NonCompact + 136);
      *(NonCompact + 152) = 0u;
      *(NonCompact + 168) = 0;
      v22 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
      v23 = *(a1 + 8);
      atomic_fetch_add(v23, 1u);
      *(v20 + 192) = 0;
      *(v20 + 176) = v23;
      *(v20 + 184) = a4;
      *(v20 + 200) = 0;
      v24 = WTF::RunLoop::mainSingleton(v22);
      v25 = v24;
      while (1)
      {
        v26 = *(v24 + 8);
        if ((v26 & 1) == 0)
        {
          break;
        }

        v27 = *(v24 + 8);
        atomic_compare_exchange_strong_explicit((v24 + 8), &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v27 == v26)
        {
          goto LABEL_21;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v24 + 8));
LABEL_21:
      v80 = v25;
      v28 = WTF::fastMalloc(0x20);
      *v28 = &unk_1F10FCD18;
      v28[1] = v20;
      v28[2] = WebKit::RemoteMediaPlayerProxy::timerFired;
      v28[3] = 0;
      WTF::RunLoop::TimerBase::TimerBase();
      *(v20 + 208) = &unk_1F10E6DC8;
      *(v20 + 248) = v28;
      v29 = v80;
      v80 = 0;
      if (v29)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(v29 + 1);
      }

      *(v20 + 256) = 0;
      *(v20 + 264) = 10000000;
      *(v20 + 268) = 1;
      *(v20 + 272) = 0;
      *(v20 + 280) = 10000000;
      *(v20 + 284) = 1;
      *(v20 + 288) = 0;
      *(v20 + 296) = 10000000;
      *(v20 + 300) = 1;
      *(v20 + 304) = 0;
      *(v20 + 312) = 10000000;
      *(v20 + 316) = 1;
      *(v20 + 320) = 0;
      *(v20 + 328) = 10000000;
      *(v20 + 332) = 1;
      *(v20 + 368) = 0;
      *(v20 + 376) = 0;
      *(v20 + 378) = 0;
      *(v20 + 380) = 0;
      *(v20 + 464) = 0;
      *(v20 + 336) = 0;
      *(v20 + 344) = 0;
      *(v20 + 352) = 0;
      *(v20 + 417) = 0u;
      *(v20 + 392) = 0u;
      *(v20 + 408) = 0u;
      *(v20 + 472) = 257;
      *(v20 + 474) = 1;
      *(v20 + 475) = 0;
      *(v20 + 478) = 0;
      v30 = *a5;
      if (*a5)
      {
        atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
      }

      *(v20 + 488) = v30;
      v31 = *(a5 + 8);
      if (v31)
      {
        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      }

      *(v20 + 496) = v31;
      v32 = *(a5 + 16);
      if (v32)
      {
        atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
      }

      *(v20 + 504) = v32;
      v33 = *(a5 + 24);
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      *(v20 + 512) = v33;
      v34 = *(a5 + 32);
      if (v34)
      {
        atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
      }

      *(v20 + 520) = v34;
      v35 = *(a5 + 52);
      *(v20 + 528) = 0uLL;
      *(v20 + 540) = v35;
      if (v35)
      {
        if (v35 >> 28)
        {
          __break(0xC471u);
          JUMPOUT(0x19DBA6F04);
        }

        v36 = WTF::fastMalloc((16 * v35));
        *(v20 + 536) = v35;
        *(v20 + 528) = v36;
        v37 = *(a5 + 52);
        if (v37)
        {
          v38 = *(a5 + 40);
          v39 = v38 + 16 * v37;
          do
          {
            v40 = *v38;
            if (*v38)
            {
              atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
            }

            *v36 = v40;
            *(v36 + 8) = *(v38 + 8);
            v36 += 16;
            v38 += 16;
          }

          while (v38 != v39);
        }
      }

      *(v20 + 544) = 0;
      *(v20 + 560) = 0;
      if (*(a5 + 72) == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v20 + 544, a5 + 56);
        *(v20 + 560) = 1;
      }

      *(v20 + 568) = 0;
      *(v20 + 584) = 0;
      if (*(a5 + 96) == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v20 + 568, a5 + 80);
        *(v20 + 584) = 1;
      }

      *(v20 + 592) = 0;
      *(v20 + 608) = 0;
      if (*(a5 + 120) == 1)
      {
        WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v20 + 592, a5 + 104);
        *(v20 + 608) = 1;
      }

      *(v20 + 616) = 0;
      *(v20 + 632) = 0;
      if (*(a5 + 144) == 1)
      {
        WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v20 + 616, a5 + 128);
        *(v20 + 632) = 1;
      }

      *(v20 + 640) = 0;
      *(v20 + 656) = 0;
      if (*(a5 + 168) == 1)
      {
        WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v20 + 640, a5 + 152);
        *(v20 + 656) = 1;
      }

      *(v20 + 664) = *(a5 + 176);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v20 + 680, a5 + 192);
      v41 = *(a5 + 220);
      *(v20 + 696) = 0u;
      *(v20 + 708) = v41;
      if (v41)
      {
        if (v41 >= 0x6666667)
        {
          goto LABEL_106;
        }

        v42 = 40 * v41;
        v43 = WTF::fastMalloc((40 * v41));
        *(v20 + 704) = v42 / 0x28;
        *(v20 + 696) = v43;
        v44 = *(a5 + 220);
        if (v44)
        {
          v45 = *(a5 + 208);
          v46 = v45 + 40 * v44;
          do
          {
            v47 = *v45;
            if (*v45)
            {
              atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
            }

            *v43 = v47;
            v48 = *(v45 + 8);
            if (v48)
            {
              atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
            }

            *(v43 + 8) = v48;
            v49 = *(v45 + 16);
            if (v49)
            {
              atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
            }

            *(v43 + 16) = v49;
            v50 = *(v45 + 24);
            *(v43 + 32) = *(v45 + 32);
            *(v43 + 24) = v50;
            v43 += 40;
            v45 += 40;
          }

          while (v45 != v46);
        }
      }

      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v20 + 712), a5 + 224);
      v51 = *(a5 + 256);
      *(v20 + 757) = *(a5 + 269);
      *(v20 + 744) = v51;
      *(v20 + 776) = 0u;
      *(v20 + 792) = 0u;
      *(v20 + 808) = 0;
      *(v20 + 812) = 1065353216;
      *(v20 + 816) = 0u;
      *(v20 + 832) = 1;
      *(v20 + 836) = 0;
      *(v20 + 840) = 0;
      *(v20 + 848) = 0;
      *(v20 + 856) = 0;
      *(v20 + 864) = 0;
      *(v20 + 872) = 1;
      atomic_fetch_add(WebKit::ScopedRenderingResourcesRequest::s_requests, 1u);
      *(v20 + 873) = 0;
      while (1)
      {
        v52 = *v16;
        if ((*v16 & 1) == 0)
        {
          break;
        }

        v53 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v53, v52 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v53 == v52)
        {
          goto LABEL_66;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v16);
LABEL_66:
      *(v20 + 880) = v78;
      *(v20 + 888) = 0;
      *(v20 + 896) = 0;
      v54 = *(a1 + 64);
      atomic_fetch_add((v54 + 8), 1u);
      *(v20 + 904) = v54;
      WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v20 + 192, (v20 + 528));
      *(v20 + 833) = *(v20 + 770);
      *(v20 + 816) = *(v20 + 664);
      WebCore::MediaPlayer::create();
      v55 = v80;
      v80 = 0;
      v56 = *(v20 + 136);
      *(v20 + 136) = v55;
      if (v56)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v56);
        v57 = v80;
        v80 = 0;
        if (v57)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v57);
        }

        v55 = *v21;
      }

      if (v55)
      {
        while (1)
        {
          v58 = *v55;
          if ((*v55 & 1) == 0)
          {
            break;
          }

          v59 = *v55;
          atomic_compare_exchange_strong_explicit(v55, &v59, v58 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v59 == v58)
          {
            goto LABEL_75;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v55);
LABEL_75:
        WebCore::MediaPlayer::setResourceOwner();
        WebCore::MediaPlayer::setPresentationSize(v55, (v20 + 744));
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v55);
      }

      else
      {
        WebCore::MediaPlayer::setResourceOwner();
        WebCore::MediaPlayer::setPresentationSize(0, (v20 + 744));
      }

      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v16, v60);
      if (a2 != -1)
      {
        if (!a2)
        {
          __break(0xC471u);
          JUMPOUT(0x19DBA6EFCLL);
        }

        v61 = *(a1 + 24);
        if (!v61)
        {
          result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 24));
          v61 = *(a1 + 24);
        }

        v62 = *(v61 - 8);
        v63 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
        v64 = 9 * ((v63 + ~(v63 << 13)) ^ ((v63 + ~(v63 << 13)) >> 8));
        v65 = (v64 ^ (v64 >> 15)) + ~((v64 ^ (v64 >> 15)) << 27);
        v66 = v62 & ((v65 >> 31) ^ v65);
        v67 = (v61 + 16 * v66);
        v68 = *v67;
        if (*v67)
        {
          v69 = 0;
          v70 = 1;
          do
          {
            if (v68 == a2)
            {
              result = WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v77);
              goto LABEL_97;
            }

            if (v68 == -1)
            {
              v69 = v67;
            }

            v66 = (v66 + v70) & v62;
            v67 = (v61 + 16 * v66);
            v68 = *v67;
            ++v70;
          }

          while (*v67);
          if (v69)
          {
            *v69 = 0;
            v69[1] = 0;
            --*(*(a1 + 24) - 16);
            v67 = v69;
          }
        }

        v71 = v67[1];
        *v67 = a2;
        v67[1] = v20;
        if (v71)
        {
          result = WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref((v71 + 16));
        }

        v72 = *(a1 + 24);
        if (v72)
        {
          v73 = *(v72 - 12) + 1;
        }

        else
        {
          v73 = 1;
        }

        *(v72 - 12) = v73;
        v74 = (*(v72 - 16) + v73);
        v75 = *(v72 - 4);
        if (v75 > 0x400)
        {
          if (v75 > 2 * v74)
          {
LABEL_97:
            v76 = v79;
            v79 = 0;
            if (v76)
            {
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v76 + 16));
            }

            return result;
          }
        }

        else if (3 * v75 > 4 * v74)
        {
          goto LABEL_97;
        }

        result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 24));
        goto LABEL_97;
      }

LABEL_106:
      __break(0xC471u);
      JUMPOUT(0x19DBA6EDCLL);
    }
  }

  return result;
}

void WebKit::RemoteMediaPlayerManagerProxy::deleteMediaPlayer(uint64_t *a1, uint64_t a2)
{
  v16 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1 + 3,  &v16);
  v4 = a1[3];
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v3)
  {
    goto LABEL_20;
  }

  v6 = v3[1];
  if (v6)
  {
    v3[1] = 0;
    v4 = a1[3];
  }

  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_18;
    }

    v7 = 0;
LABEL_12:
    if (v7 != v3)
    {
      *v3 = -1;
      v3[1] = 0;
      v8 = a1[3];
      v9 = *(v8 - 4);
      v10 = vadd_s32(*(v8 - 16), 0xFFFFFFFF00000001);
      *(v8 - 16) = v10;
      if (v9 >= 9 && 6 * v10.i32[1] < v9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1 + 3, v9 >> 1);
      }
    }

    goto LABEL_18;
  }

  v7 = (v4 + 16 * *(v4 - 4));
  if (v7 != v3)
  {
    goto LABEL_12;
  }

LABEL_18:
  if (v6)
  {
    WebKit::RemoteMediaPlayerProxy::invalidate(v6);
    WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v6 + 4);
  }

LABEL_20:
  v12 = a1[5];
  if (v12)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v12, a1[4], &v15);
    if (v15)
    {
      if (!atomic_load(WebKit::ScopedRenderingResourcesRequest::s_requests))
      {
        WebKit::GPUProcess::tryExitIfUnusedAndUnderMemoryPressure(*(v15 + 80));
      }

      v14 = v15;
      v15 = 0;
      if (v14)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v14 + 16));
      }
    }
  }
}

WTF::StringImpl **WebKit::RemoteMediaPlayerManagerProxy::getSupportedTypes(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = WebCore::MediaPlayer::mediaEngine();
  if (!v4)
  {
    WTFLogAlways();
    v19 = 0;
    v20 = 0;
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8, &v19);
    (*(*v8 + 8))(v8);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v9);
  }

  v18 = 0;
  result = (*(*v4 + 32))(v4, &v18);
  v19 = 0;
  v20 = 0;
  if (v18 && (v6 = *(v18 - 3), v6))
  {
    if (v6 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v7 = WTF::fastMalloc((8 * v6));
    LODWORD(v20) = v6;
    v19 = v7;
  }

  else
  {
    v7 = 0;
  }

  v10 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&v18);
  v12 = v18;
  if (v18)
  {
    v12 = &v18[*(v18 - 1)];
  }

  if (v12 != v10)
  {
    v13 = 0;
    do
    {
      v14 = *v10;
      if (*v10)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      }

      *(v7 + 8 * v13) = v14;
      do
      {
        ++v10;
      }

      while (v10 != v11 && *v10 + 1 <= 1);
      ++v13;
    }

    while (v10 != v12);
    HIDWORD(v20) = v13;
  }

  v15 = *a3;
  *a3 = 0;
  (*(*v15 + 16))(v15, &v19);
  (*(*v15 + 8))(v15);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v16);
  result = v18;
  if (v18)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v18, v17);
  }

  return result;
}

uint64_t WebKit::RemoteMediaPlayerManagerProxy::supportsTypeAndCodecs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = WebCore::MediaPlayer::mediaEngine();
  if (v6)
  {
    v7 = (*(*v6 + 40))(v6, a3);
  }

  else
  {
    WTFLogAlways();
    v7 = 0;
  }

  v8 = *a4;
  *a4 = 0;
  (*(*v8 + 16))(v8, v7);
  v9 = *(*v8 + 8);

  return v9(v8);
}

uint64_t WebKit::RemoteMediaPlayerManagerProxy::supportsKeySystem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = WebCore::MediaPlayer::mediaEngine();
  if (v8)
  {
    v9 = (*(*v8 + 72))(v8, a3, a4);
    v10 = *a5;
    *a5 = 0;
    (*(*v10 + 16))(v10, v9);
    v11 = *(*v10 + 8);

    return v11(v10);
  }

  else
  {

    return WTFLogAlways();
  }
}

_DWORD *WebKit::RemoteMediaPlayerManagerProxy::didReceivePlayerMessage(_DWORD *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v5 = *(a3 + 7);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9[5] = v3;
    v9[6] = v4;
    v9[0] = v5;
    this = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 3, v9);
    if (this)
    {
      v8 = this + 4;
      ++this[4];
      WebKit::RemoteMediaPlayerProxy::didReceiveMessage(this, a2, a3);
      return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v8);
    }
  }

  return this;
}

uint64_t WebKit::RemoteMediaPlayerManagerProxy::didReceiveSyncPlayerMessage(uint64_t a1, atomic_ullong *a2, IPC::Decoder *a3, uint64_t *a4)
{
  if ((*(a3 + 7) - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v11 = *(a3 + 7);
  v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v11);
  if (!v7)
  {
    return 0;
  }

  v8 = (v7 + 16);
  ++*(v7 + 16);
  v9 = WebKit::RemoteMediaPlayerProxy::didReceiveSyncMessage(v7, a2, a3, a4);
  WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v8);
  return v9;
}

atomic_ullong *WebKit::RemoteMediaPlayerManagerProxy::bitmapImageForCurrentTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WebKit::RemoteMediaPlayerManagerProxy::mediaPlayer(a1, a2, 1, &v26);
  v5 = v26;
  if (v26)
  {
    WebCore::MediaPlayer::nativeImageForCurrentTime(&v25, v26);
    if (v25)
    {
      v24 = WebCore::NativeImage::size(v25);
      WebCore::MediaPlayer::colorSpace(v16, v5);
      v6 = v16[0];
      v16[0] = 0;
      v18 = v6;
      v19 = 1;
      MEMORY[0x19EB0C920](&v20, &v24, &v18, 0, 1.0);
      WebCore::ShareableBitmap::create();
      if (v22 == 1)
      {
        v8 = cf;
        cf = 0;
        if (v8)
        {
          CFRelease(v8);
        }
      }

      if (v19 == 1)
      {
        v9 = v18;
        v18 = 0;
        if (v9)
        {
          CFRelease(v9);
        }
      }

      v10 = v16[0];
      v16[0] = 0;
      if (v10)
      {
        CFRelease(v10);
      }

      if (v23)
      {
        WebCore::ShareableBitmap::createGraphicsContext(&v17, v23);
        if (v17)
        {
          v20 = 0;
          cf = vcvt_f32_s32(v24);
          v16[0] = 0;
          v16[1] = cf;
          WebCore::GraphicsContext::drawNativeImage();
          WebCore::ShareableBitmap::createHandle();
          v11 = v17;
          v17 = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }
        }

        else
        {
          *a3 = 0;
          a3[80] = 0;
        }

        v12 = v23;
        v23 = 0;
        if (v12)
        {
          WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v12, v7);
        }
      }

      else
      {
        *a3 = 0;
        a3[80] = 0;
      }

      v13 = v25;
      v25 = 0;
      if (v13)
      {
        do
        {
          v14 = v13[1];
          if ((v14 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v13[1], v7);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v5);
          }

          v15 = v13[1];
          atomic_compare_exchange_strong_explicit(v13 + 1, &v15, (v14 - 2), memory_order_relaxed, memory_order_relaxed);
        }

        while (v15 != v14);
        if (v14 == 3)
        {
          (*(*v13 + 1))(v13);
        }
      }
    }

    else
    {
      *a3 = 0;
      a3[80] = 0;
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v5);
  }

  else
  {
    *a3 = 0;
    a3[80] = 0;
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::RemoteMediaSourceProxy*>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBA7934);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
        v25 = 0;
        v26 = v9 + 16 * *(v9 - 4);
        goto LABEL_30;
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
  v19 = *a3;
  if (v19)
  {
    while (1)
    {
      v20 = *(v19 + 8);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = *(v19 + 8);
      atomic_compare_exchange_strong_explicit((v19 + 8), &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v21 == v20)
      {
        goto LABEL_18;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v19 + 8));
  }

LABEL_18:
  v22 = v15[1];
  v15[1] = v19;
  if (v22)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref((v22 + 8), a2);
  }

  v23 = *v8;
  if (*v8)
  {
    v24 = *(v23 - 12) + 1;
  }

  else
  {
    v24 = 1;
  }

  *(v23 - 12) = v24;
  v27 = (*(v23 - 16) + v24);
  v28 = *(v23 - 4);
  if (v28 > 0x400)
  {
    if (v28 <= 2 * v27)
    {
LABEL_26:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v23 = *v8;
      if (*v8)
      {
        v28 = *(v23 - 4);
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else if (3 * v28 <= 4 * v27)
  {
    goto LABEL_26;
  }

  v26 = v23 + 16 * v28;
  v25 = 1;
LABEL_30:
  *a4 = v15;
  *(a4 + 8) = v26;
  *(a4 + 16) = v25;
  return result;
}

uint64_t *WebKit::RemoteMediaPlayerManagerProxy::invalidateMediaSource(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 48),  &v6);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
    if (v5 == result)
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

    v5 = 0;
  }

  if (v5 != result)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 48), result);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a2 + 3);
    if (v4 <= v5)
    {
      if (v5 > *(a1 + 8))
      {
        WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 3));
        LODWORD(v4) = *(a1 + 12);
      }
    }

    else
    {
      WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct((*a1 + 16 * v5), (*a1 + 16 * v4));
      *(a1 + 12) = v5;
      LODWORD(v4) = v5;
    }

    v6 = *a2;
    v7 = *a1;
    if (v4)
    {
      v8 = v6 + 16 * v4;
      do
      {
        WTF::String::operator=(v7, v6);
        *(v7 + 8) = *(v6 + 8);
        v6 += 16;
        v7 += 16;
      }

      while (v6 != v8);
      v6 = *a2;
      LODWORD(v4) = *(a1 + 12);
      v7 = *a1;
    }

    v9 = *(a2 + 3);
    if (v4 != v9)
    {
      v10 = v6 + 16 * v9;
      v11 = v7 + 16 * v4;
      v12 = v6 + 16 * v4;
      do
      {
        v13 = *v12;
        if (*v12)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        *v11 = v13;
        *(v11 + 8) = *(v12 + 8);
        v11 += 16;
        v12 += 16;
      }

      while (v12 != v10);
      LODWORD(v4) = *(a2 + 3);
    }

    *(a1 + 12) = v4;
  }

  return a1;
}