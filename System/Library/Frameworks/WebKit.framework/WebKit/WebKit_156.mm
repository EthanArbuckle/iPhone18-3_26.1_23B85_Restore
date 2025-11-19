uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::createResolver(WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110C970;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v4 + 24));
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::createResolver(WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(result + 7);
  if (v3)
  {
    if (*(v3 + 8))
    {
      return WebKit::NetworkRTCProvider::createResolver(result, *(a1 + 24), (a1 + 32));
    }
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::WebRTCResolver::SetResolvedAddress>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3026;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v15 = v6;
  v7 = *a2;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *(*a2 + 12));
  v8 = *(v7 + 12);
  if (v8)
  {
    v9 = *v7;
    v10 = 20 * v8;
    do
    {
      v16 = *(v9 + 16);
      IPC::Encoder::operator<<<BOOL>(v6, &v16);
      IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&>(v6, v9, v16);
      v9 += 20;
      v10 -= 20;
    }

    while (v10);
  }

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

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::createResolver(WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&)::$_1,void,std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector::DNSError> &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110C998;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::createResolver(WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&)::$_1,void,std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector::DNSError> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110C998;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::createResolver(WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&)::$_1,void,std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector::DNSError> &&>::call(WTF *result, _DWORD *a2)
{
  v2 = *(result + 1);
  if (!v2)
  {
    return result;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  ++*(v3 - 36);
  if (*(a2 + 16))
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    if (*a2 != 2)
    {
      v6 = *(v3 + 24);
      v7 = *(result + 2);
      v8 = IPC::Encoder::operator new(0x238, a2);
      *v8 = 3025;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v7;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      *v32 = v8;
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v8, 1);
      IPC::Connection::sendMessageImpl(v6, v32, 0, 0);
      result = *v32;
      *v32 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v9);
        result = bmalloc::api::tzoneFree(v10, v11);
      }
    }

    goto LABEL_25;
  }

  v27 = 0;
  v28 = 0;
  v12 = a2[3];
  if (!v12)
  {
    goto LABEL_22;
  }

  if (v12 >= 0xCCCCCCD)
  {
    __break(0xC471u);
    return result;
  }

  LODWORD(v28) = 20 * v12 / 0x14u;
  v27 = WTF::fastMalloc((20 * v12));
  v13 = a2[3];
  if (!v13)
  {
LABEL_22:
    v24 = 0;
    goto LABEL_23;
  }

  v14 = 0;
  v15 = 20 * v13;
  v16 = *a2;
  do
  {
    v17 = *(v16 + 16);
    if (v17 == 2)
    {
      *v32 = &off_1F10EE1B0;
      *&v32[8] = 30;
      *&v32[12] = *v16;
    }

    else
    {
      if (v17 != 1)
      {
        goto LABEL_20;
      }

      *v32 = &off_1F10EE1B0;
      *&v32[8] = 2;
      *&v32[16] = 0;
      *&v32[24] = 0;
      *&v32[12] = *v16;
    }

    WebKit::WebRTCNetwork::IPAddress::IPAddress(&v29, v32);
    v31 = 1;
    *v32 = v29;
    *&v32[16] = v30;
    v18 = HIDWORD(v28);
    if (HIDWORD(v28) == v28)
    {
      v19 = WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v27, HIDWORD(v28) + 1, v32);
      v18 = HIDWORD(v28);
      v20 = v27 + 20 * HIDWORD(v28);
      v21 = *(v19 + 16);
      *v20 = *v19;
      *(v20 + 4) = v21;
    }

    else
    {
      v22 = v27 + 20 * HIDWORD(v28);
      v23 = v29;
      *(v22 + 4) = v30;
      *v22 = v23;
    }

    v14 = v18 + 1;
    HIDWORD(v28) = v14;
LABEL_20:
    v16 += 20;
    v15 -= 20;
  }

  while (v15);
  v24 = v14;
LABEL_23:
  WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v27, v24);
  v25 = *(v3 + 24);
  *v32 = &v27;
  IPC::Connection::send<Messages::WebRTCResolver::SetResolvedAddress>(v25, v32, *(v5 + 2));
  result = v27;
  if (v27)
  {
    v27 = 0;
    LODWORD(v28) = 0;
    result = WTF::fastFree(result, v26);
  }

LABEL_25:
  if (*(v3 - 36) == 1)
  {
    return (*(*(v3 - 56) + 8))();
  }

  --*(v3 - 36);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::stopResolver(WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C9C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v2 + 24));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::stopResolver(WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C9C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v3 + 24));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::stopResolver(WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(result + 56);
  if (v3)
  {
    if (*(v3 + 8))
    {
      return WebKit::NetworkRTCProvider::stopResolver(result, *(a1 + 24));
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::attributedBundleIdentifierFromPageIdentifier(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110C9E8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v2 + 24));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::attributedBundleIdentifierFromPageIdentifier(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110C9E8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v3 + 24));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::attributedBundleIdentifierFromPageIdentifier(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0::operator() const(void)::{lambda(void)#1},void>::call(uint64_t result)
{
  v1 = *(*(result + 8) + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = result;
      ++*(v2 - 36);
      v4 = *(v2 + 32);
      v13 = *(v2 + 40);
      result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 240), &v13);
      if (result)
      {
        v5 = result;
        ++*(result + 16);
        v13 = *(v3 + 24);
        WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((result + 1072), &v13, &v12);
        WTF::String::isolatedCopy();
        v7 = *(v3 + 16);
        v8 = v13;
        v13 = 0;
        v9 = *v7;
        *v7 = v8;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v6);
        }

        v10 = v13;
        v13 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v6);
        }

        result = v12;
        v12 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v6);
        }

        v11 = *(v5 + 16);
        if (!v11)
        {
          result = 290;
          __break(0xC471u);
          return result;
        }

        *(v5 + 16) = v11 - 1;
      }

      if (*(v2 - 36) == 1)
      {
        return (*(*(v2 - 56) + 8))(v2 - 56);
      }

      else
      {
        --*(v2 - 36);
      }
    }
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE3B0BCLL);
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

void *Messages::WebTransportSession::ReceiveDatagram::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a2, **a1, *(*a1 + 8));
  IPC::Encoder::operator<<<BOOL &>(a2, (a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(a2, v4);
}

void *Messages::WebTransportSession::StreamReceiveBytes::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a2, **(a1 + 8), *(*(a1 + 8) + 8));
  IPC::Encoder::operator<<<BOOL &>(a2, (a1 + 16));
  v4 = *(a1 + 24);

  return IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(a2, v4);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (result)
  {
    result = WTF::RefCounted<WebKit::NetworkTransportStream>::deref(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DE3B300);
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

id *WebKit::CompactContextMenuPresenter::CompactContextMenuPresenter(id *a1, void *a2, uint64_t a3)
{
  objc_initWeak(a1, a2);
  v5 = [WKCompactContextMenuPresenterButton buttonWithType:1];
  a1[1] = v5;
  if (v5)
  {
    v6 = v5;
    v5 = a1[1];
  }

  [(WKCompactContextMenuPresenterButton *)v5 setExternalDelegate:a3];
  [objc_msgSend(a1[1] "layer")];
  [a1[1] setHidden:1];
  [a1[1] setUserInteractionEnabled:0];
  [a1[1] setContextMenuInteractionEnabled:1];
  [a1[1] setShowsMenuAsPrimaryAction:1];
  return a1;
}

void WebKit::CompactContextMenuPresenter::~CompactContextMenuPresenter(id *this)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN6WebKit27CompactContextMenuPresenterD2Ev_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = this;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
  [this[1] removeFromSuperview];
  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
  }

  objc_destroyWeak(this);
}

void sub_19DE3B78C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
  }

  objc_destroyWeak(v1);
  _Unwind_Resume(a1);
}

uint64_t ___ZN6WebKit27CompactContextMenuPresenterD2Ev_block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) contextMenuInteraction];

  return [v1 dismissMenu];
}

uint64_t WebKit::CompactContextMenuPresenter::present(id *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  result = [objc_loadWeak(this) window];
  if (!result)
  {
    return result;
  }

  [this[1] setFrame:{x, y, width, height}];
  if (![this[1] superview])
  {
    [objc_loadWeak(this) addSubview:this[1]];
  }

  if (byte_1ED6427F1 == 1)
  {
    if (_MergedGlobals_86)
    {
LABEL_6:
      v8 = this[1];

      return [v8 performPrimaryAction];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E69DC738] instancesRespondToSelector:sel_performPrimaryAction];
    _MergedGlobals_86 = v9;
    byte_1ED6427F1 = 1;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v10 = [this[1] contextMenuInteraction];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidY = CGRectGetMidY(v15);

  return [v10 _presentMenuAtLocation:{MidX, MidY}];
}

void WebKit::DragDropInteractionState::prepareForDragSession(uint64_t a1, void *a2, void *aBlock)
{
  if (a2)
  {
    v6 = a2;
  }

  v7 = *(a1 + 40);
  *(a1 + 40) = a2;
  if (v7)
  {
  }

  v8 = _Block_copy(aBlock);
  _Block_release(*(a1 + 56));
  *(a1 + 56) = v8;

  _Block_release(0);
}

void WebKit::DragDropInteractionState::updatePreviewsForActiveDragSources(WebKit::DragDropInteractionState *this)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *(this + 111);
  if (!v1)
  {
    return;
  }

  v2 = *(this + 54);
  v3 = v2 + 336 * v1;
  v26 = &v36;
  do
  {
    if (*(v2 + 320) != 1 || (*v2 & 0x20) == 0 && (*v2 & 6) != 4)
    {
      goto LABEL_29;
    }

    v4 = *(this + 5);
    v5 = *(v2 + 328);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = [v4 items];
    v7 = [v6 countByEnumeratingWithState:&v30 objects:&v34 count:16];
    if (!v7)
    {
      goto LABEL_29;
    }

    v8 = *v31;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [v10 _privateLocalContext];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 integerValue] == v5)
        {
          if (!v10)
          {
            goto LABEL_29;
          }

          if ((*v2 & 4) != 0)
          {
            v17 = *(v2 + 272);
            if (v17)
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v28, v17);
              if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v17, v18);
              }
            }

            else
            {
              v28 = &stru_1F1147748;
              v19 = &stru_1F1147748;
            }

            WTF::URL::createCFURL(&v29, (v2 + 280));
            v34 = MEMORY[0x1E69E9820];
            v35 = 3321888768;
            v36 = ___ZZN6WebKit24DragDropInteractionState34updatePreviewsForActiveDragSourcesEvENK3__0cvU13block_pointerFP13UIDragPreviewvEEv_block_invoke;
            v37 = &__block_descriptor_48_e8_32c83_ZTSKZN6WebKit24DragDropInteractionState34updatePreviewsForActiveDragSourcesEvE3__0_e20___UIDragPreview_8__0l;
            v38 = v28;
            if (v28)
            {
              v20 = v28;
            }

            v39 = v29;
            if (v29)
            {
              v21 = v29;
            }

            v22 = [objc_msgSend(&v34 "copy")];
            v23 = v39;
            v39 = 0;
            if (v23)
            {
            }

            v24 = v38;
            v38 = 0;
            if (v24)
            {
            }

            [v10 setPreviewProvider:v22];
            v25 = v29;
            v29 = 0;
            if (v25)
            {
            }

            v12 = v28;
            v28 = 0;
            if (!v12)
            {
              goto LABEL_28;
            }
          }

          else
          {
            if ((*v2 & 0x20) == 0 || *(v2 + 48))
            {
              goto LABEL_28;
            }

            v12 = *(v2 + 40);
            if (v12)
            {
              v13 = v12;
            }

            v34 = MEMORY[0x1E69E9820];
            v35 = 3321888768;
            v36 = ___ZZN6WebKit24DragDropInteractionState34updatePreviewsForActiveDragSourcesEvENK3__1cvU13block_pointerFP13UIDragPreviewvEEv_block_invoke;
            v37 = &__block_descriptor_40_e8_32c83_ZTSKZN6WebKit24DragDropInteractionState34updatePreviewsForActiveDragSourcesEvE3__1_e20___UIDragPreview_8__0l;
            v38 = v12;
            if (v12)
            {
              v14 = v12;
            }

            v15 = [objc_msgSend(&v34 "copy")];
            v16 = v38;
            v38 = 0;
            if (v16)
            {
            }

            [v10 setPreviewProvider:v15];
            if (!v12)
            {
              goto LABEL_28;
            }
          }

LABEL_28:
          *(v2 + 320) = 0;
          goto LABEL_29;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v30 objects:&v34 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

LABEL_29:
    v2 += 336;
  }

  while (v2 != v3);
}

void WebKit::DragDropInteractionState::addDefaultDropPreview(WebKit::DragDropInteractionState *this, UIDragItem *a2, UITargetedDragPreview *a3)
{
  v8 = a3;
  v7 = a2;
  if (a2)
  {
    v4 = a2;
  }

  WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<UITargetedDragPreview*&>(this + 56, &v7, &v8, v6);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
  }
}

void sub_19DE3BE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<UITargetedDragPreview*&>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE3C030);
  }

  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE3C050);
  }

  v9 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::expand(a1, 0);
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
        goto LABEL_29;
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
      --*(*a1 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *a2 = 0;
  v19 = *v15;
  *v15 = v5;
  if (v19)
  {
  }

  v20 = *a3;
  if (v20)
  {
    v21 = v20;
  }

  v22 = v15[1];
  v15[1] = v20;
  if (v22)
  {
  }

  v23 = *a1;
  if (*a1)
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
LABEL_25:
      v15 = WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::expand(a1, v15);
      v23 = *a1;
      if (*a1)
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
    goto LABEL_25;
  }

  v26 = v23 + 16 * v28;
  v25 = 1;
LABEL_29:
  *a4 = v15;
  *(a4 + 8) = v26;
  *(a4 + 16) = v25;
}

uint64_t *WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::RetainPtr<UIDragItem>>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE3C110);
  }

  v3 = *result;
  if (!*result)
  {
LABEL_10:
    *a3 = 0;
    return result;
  }

  v4 = *(v3 - 8);
  v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v3 + 16 * v8);
  if (v9 != a2)
  {
    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == a2)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_8:
  result = *(v3 + 16 * v8 + 8);
  *a3 = result;
  if (result)
  {
    return result;
  }

  return result;
}

uint64_t *WebKit::DragDropInteractionState::finalDropPreview(WebKit::DragDropInteractionState *this, UIDragItem *a2)
{
  WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::RetainPtr<UIDragItem>>(this + 57, a2, &v4);
  v2 = v4;
  v4 = 0;
  if (v2)
  {
  }

  return v2;
}

void WebKit::DragDropInteractionState::deliverDelayedDropPreview(WebKit::DragDropInteractionState *this, UIView *a2, UIView *a3, WebCore::Image **a4)
{
  WebKit::uiImageForImage(&v40, a4[11]);
  v8 = v40;
  WebCore::cocoaColor(&v38, (a4 + 12), v9);
  WebKit::createTargetedDragPreview(&v39, v8, a2, a3, (a4 + 2), (a4 + 6), v38, 0, 0);
  v10 = v38;
  v38 = 0;
  if (v10)
  {
  }

  v11 = v39;
  if (!v39)
  {
    goto LABEL_50;
  }

  v12 = *(this + 56);
  if (v12)
  {
    v13 = *(v12 - 4);
    v14 = (v12 + 16 * v13);
    if (*(v12 - 12))
    {
      if (v13)
      {
        v15 = 16 * v13;
        v16 = *(this + 56);
        while (*v16 + 1 <= 1)
        {
          v16 += 2;
          v15 -= 16;
          if (!v15)
          {
            v16 = v14;
            goto LABEL_16;
          }
        }
      }

      else
      {
        v16 = *(this + 56);
      }

      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v16 = v14;
  v14 = (v12 + 16 * v13);
  if (v12)
  {
LABEL_16:
    v17 = (v12 + 16 * *(v12 - 4));
    goto LABEL_17;
  }

  v17 = 0;
LABEL_17:
  if (v17 != v16)
  {
    while (1)
    {
      v18 = *v16;
      if (*v16)
      {
        v19 = v18;
      }

      if (v18 == -1 || !v18)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE3C448);
      }

      v20 = *(this + 57);
      if (!v20)
      {
        WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::expand(this + 57, 0);
        v20 = *(this + 57);
      }

      v21 = *(v20 - 8);
      v22 = (v18 + ~(v18 << 32)) ^ ((v18 + ~(v18 << 32)) >> 22);
      v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
      v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
      v25 = v21 & ((v24 >> 31) ^ v24);
      v26 = (v20 + 16 * v25);
      v27 = *v26;
      if (*v26)
      {
        v28 = 0;
        v29 = 1;
        while (v27 != v18)
        {
          if (v27 == -1)
          {
            v28 = v26;
          }

          v25 = (v25 + v29) & v21;
          v26 = (v20 + 16 * v25);
          v27 = *v26;
          ++v29;
          if (!*v26)
          {
            if (v28)
            {
              *v28 = 0;
              v28[1] = 0;
              --*(*(this + 57) - 16);
              v26 = v28;
            }

            goto LABEL_32;
          }
        }

        goto LABEL_42;
      }

LABEL_32:
      v30 = v18;
      v31 = *v26;
      *v26 = v18;
      if (v31)
      {
      }

      v32 = v11;
      v33 = v26[1];
      v26[1] = v11;
      if (v33)
      {
      }

      v34 = *(this + 57);
      v35 = v34 ? *(v34 - 12) + 1 : 1;
      *(v34 - 12) = v35;
      v36 = (*(v34 - 16) + v35);
      v37 = *(v34 - 4);
      if (v37 <= 0x400)
      {
        break;
      }

      if (v37 <= 2 * v36)
      {
        goto LABEL_41;
      }

LABEL_42:
      [v18 setNeedsDropPreviewUpdate];

      do
      {
        v16 += 2;
      }

      while (v16 != v14 && *v16 + 1 <= 1);
      if (v16 == v17)
      {
        goto LABEL_49;
      }
    }

    if (3 * v37 > 4 * v36)
    {
      goto LABEL_42;
    }

LABEL_41:
    WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::expand(this + 57, v26);
    goto LABEL_42;
  }

LABEL_49:

LABEL_50:
  if (v8)
  {
  }
}

void sub_19DE3C46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar **WebKit::uiImageForImage(atomic_uchar **this, WebCore::Image *a2)
{
  v2 = this;
  if (a2 && (v4 = WebCore::DestinationColorSpace::SRGB(this), this = (*(*a2 + 304))(&v9, a2, v4), v9))
  {
    v5 = objc_alloc(MEMORY[0x1E69DCAB8]);
    *v2 = [v5 initWithCGImage:*WebCore::NativeImage::platformImage(v9)];
    this = v9;
    v9 = 0;
    if (this)
    {
      do
      {
        v7 = this[1];
        if ((v7 & 1) == 0)
        {
          return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(this[1], v6);
        }

        v8 = this[1];
        atomic_compare_exchange_strong_explicit(this + 1, &v8, (v7 - 2), memory_order_relaxed, memory_order_relaxed);
      }

      while (v8 != v7);
      if (v7 == 3)
      {
        return (*(*this + 1))(this);
      }
    }
  }

  else
  {
    *v2 = 0;
  }

  return this;
}

void sub_19DE3C5C8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uchar **a10)
{
  if (a10)
  {
    do
    {
      v11 = a10[1];
      if ((v11 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(a10[1], a2);
        goto LABEL_6;
      }

      v12 = a10[1];
      atomic_compare_exchange_strong_explicit(a10 + 1, &v12, (v11 - 2), memory_order_relaxed, memory_order_relaxed);
    }

    while (v12 != v11);
    if (v11 == 3)
    {
      (*(*a10 + 1))(a10);
    }
  }

LABEL_6:
  _Unwind_Resume(exception_object);
}

void WebKit::createTargetedDragPreview(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a5 + 8) > 0.0 && a2 && *(a5 + 12) > 0.0 && [a4 window] && (WebCore::FloatRect::operator CGRect(), objc_msgSend(a3, "convertRect:toView:", a4), v38.origin.x = v17, v38.origin.y = v18, v38.size.width = v19, v38.size.height = v20, WebCore::FloatRect::FloatRect(v39, &v38), v21 = v40, v40 > 0.0) && (v22 = v41, v41 > 0.0))
  {
    v24 = *(a5 + 8);
    v23 = *(a5 + 12);
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a6 + 12)];
    v26 = *(a6 + 12);
    if (v26)
    {
      v27 = v21 / v24;
      v28 = *a6;
      v29 = 16 * v26;
      v30 = v22 / v23;
      do
      {
        v38.origin = *v28;
        WebCore::FloatRect::scale(&v38, v27, v30);
        v31 = MEMORY[0x1E696B098];
        WebCore::FloatRect::operator CGRect();
        v32 = [v31 valueWithCGRect:?];
        if (v32)
        {
          [v25 addObject:v32];
        }

        ++v28;
        v29 -= 16;
      }

      while (v29);
    }

    v33 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:a2];
    WebCore::FloatRect::operator CGRect();
    [v33 setFrame:?];
    if ([v25 count])
    {
      v34 = [objc_alloc(MEMORY[0x1E69DC9A0]) initWithTextLineRects:v25];
    }

    else
    {
      v34 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
    }

    v35 = v34;
    if (a7)
    {
      [v34 setBackgroundColor:a7];
    }

    if (a8)
    {
      [v35 setVisiblePath:a8];
    }

    if (a9)
    {
      [a4 addSubview:v33];
    }

    WebCore::FloatRect::operator CGRect();
    MidX = CGRectGetMidX(v42);
    WebCore::FloatRect::operator CGRect();
    v37 = [objc_alloc(MEMORY[0x1E69DC9A8]) initWithContainer:a4 center:{MidX, CGRectGetMidY(v43)}];
    *a1 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v33 parameters:v35 target:v37];
    if (v37)
    {
    }

    if (v35)
    {
    }

    if (v33)
    {
    }

    if (v25)
    {
    }
  }

  else
  {
    *a1 = 0;
  }
}

void sub_19DE3C8B0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::DragDropInteractionState::deliverDelayedDropPreview(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, double a5, double a6, double a7, double a8)
{
  *&v92[16] = a7;
  *&v92[24] = a8;
  *v92 = a5;
  *&v92[8] = a6;
  v99 = *MEMORY[0x1E69E9840];
  v10 = [a3 count];
  v11 = *(a4 + 3);
  if (v10 == v11)
  {
    if (v11)
    {
      v12 = 0;
      while (1)
      {
        v13 = [a3 objectAtIndex:v12];
        if (v12 >= *(a4 + 3))
        {
LABEL_88:
          __break(0xC471u);
          JUMPOUT(0x19DE3CFF0);
        }

        v14 = v13;
        v15 = *a4;
        WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::RetainPtr<UIDragItem>>((a1 + 448), v13, &v98);
        a = v98.a;
        v98.a = 0.0;
        if (a != 0.0)
        {
        }

        [*&a size];
        v19 = v18;
        if (v18 > 0.0 && *&a != 0)
        {
          v21 = v17;
          if (v17 > 0.0)
          {
            v22 = (v15 + 16 * v12);
            if (v22[2] >= 1 && v22[3] >= 1)
            {
              break;
            }
          }
        }

LABEL_75:
        if (++v12 >= *(a4 + 3))
        {
          return;
        }
      }

      WebCore::IntRect::operator CGRect();
      v101.origin.x = v23;
      v101.origin.y = v24;
      v101.size.width = v25;
      v101.size.height = v26;
      v100 = CGRectIntersection(*v92, v101);
      v98.a = v100.origin.x;
      v98.b = v100.origin.y;
      v98.c = v100.size.width;
      v98.d = v100.size.height;
      *&v94.a = WebCore::enclosingIntRect(&v98, v27);
      v94.b = v28;
      WebCore::FloatRect::FloatRect(&v96, &v94);
      if (v97.f32[0] > 0.0)
      {
        LODWORD(v29) = v97.i32[1];
        if (v97.f32[1] > 0.0)
        {
          [objc_msgSend(*&a view];
          v89 = v31;
          v90 = v30;
          v33 = v32;
          v35 = v34;
          v36 = v96;
          v38 = *v22;
          v37 = v22[1];
          v40 = v22[2];
          v39 = v22[3];
          v41 = v97;
          memset(&v98, 0, sizeof(v98));
          CGAffineTransformMakeScale(&v98, v22[2] / v19, v22[3] / v21);
          v42 = objc_alloc(MEMORY[0x1E69DC9A8]);
          v95 = vadd_f32(v96, vmul_f32(v97, 0x3F0000003F000000));
          WebCore::FloatPoint::operator CGPoint();
          v94 = v98;
          v43 = [v42 initWithContainer:a2 center:&v94 transform:?];
          v44 = v35 * ((v36.f32[1] - v37) / v39);
          v45 = v33 * ((v36.f32[0] - v38) / v40);
          [objc_msgSend(*&a "parameters")];
          if (v14)
          {
            v46 = v14;
          }

          v47 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:objc_msgSend(*&a parameters:"view") target:{objc_msgSend(*&a, "parameters"), v43}];
          if (v14 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x19DE3D010);
          }

          if (!v14)
          {
            __break(0xC471u);
            JUMPOUT(0x19DE3D030);
          }

          v48 = v47;
          v49 = *(a1 + 456);
          if (!v49)
          {
            WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::expand((a1 + 456), 0);
            v49 = *(a1 + 456);
          }

          v50 = *(v49 - 8);
          v51 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v52 = 9 * ((v51 + ~(v51 << 13)) ^ ((v51 + ~(v51 << 13)) >> 8));
          v53 = (v52 ^ (v52 >> 15)) + ~((v52 ^ (v52 >> 15)) << 27);
          v54 = v50 & ((v53 >> 31) ^ v53);
          v55 = (v49 + 16 * v54);
          v56 = *v55;
          if (*v55)
          {
            v57 = 0;
            v58 = 1;
            do
            {
              if (v56 == v14)
              {
                if (v48)
                {
                }

                goto LABEL_72;
              }

              if (v56 == -1)
              {
                v57 = v55;
              }

              v54 = (v54 + v58) & v50;
              v55 = (v49 + 16 * v54);
              v56 = *v55;
              ++v58;
            }

            while (*v55);
            if (!v57)
            {
              goto LABEL_54;
            }

            *v57 = 0;
            v57[1] = 0;
            --*(*(a1 + 456) - 16);
            v59 = *v57;
            *v57 = v14;
            if (v59)
            {
            }
          }

          else
          {
LABEL_54:
            *v55 = v14;
            v57 = v55;
          }

          v79 = v57[1];
          v57[1] = v48;
          if (v79)
          {
          }

          v80 = *(a1 + 456);
          if (v80)
          {
            v81 = *(v80 - 12) + 1;
          }

          else
          {
            v81 = 1;
          }

          *(v80 - 12) = v81;
          v84 = (*(v80 - 16) + v81);
          v85 = *(v80 - 4);
          if (v85 > 0x400)
          {
            if (v85 > 2 * v84)
            {
              goto LABEL_72;
            }
          }

          else if (3 * v85 > 4 * v84)
          {
LABEL_72:
            [v14 setNeedsDropPreviewUpdate];
LABEL_73:
            if (v43)
            {
            }

            goto LABEL_75;
          }

          WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::expand((a1 + 456), v57);
          goto LABEL_72;
        }
      }

      v60 = objc_alloc(MEMORY[0x1E69DC9A8]);
      LODWORD(v98.a) = *v22 + v22[2] / 2;
      HIDWORD(v98.a) = v22[1] + v22[3] / 2;
      WebCore::IntPoint::operator CGPoint();
      v43 = [v60 initWithContainer:a2 center:?];
      if (v14)
      {
        v61 = v14;
      }

      v62 = [*&a retargetedPreviewWithTarget:v43];
      if (v14 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE3D050);
      }

      if (!v14)
      {
        goto LABEL_88;
      }

      v63 = v62;
      v64 = *(a1 + 456);
      if (!v64)
      {
        WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::expand((a1 + 456), 0);
        v64 = *(a1 + 456);
      }

      v65 = *(v64 - 8);
      v66 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
      v67 = 9 * ((v66 + ~(v66 << 13)) ^ ((v66 + ~(v66 << 13)) >> 8));
      v68 = (v67 ^ (v67 >> 15)) + ~((v67 ^ (v67 >> 15)) << 27);
      v69 = v65 & ((v68 >> 31) ^ v68);
      v70 = (v64 + 16 * v69);
      v71 = *v70;
      if (*v70)
      {
        v72 = 0;
        v73 = 1;
        do
        {
          if (v71 == v14)
          {

            goto LABEL_67;
          }

          if (v71 == -1)
          {
            v72 = v70;
          }

          v69 = (v69 + v73) & v65;
          v70 = (v64 + 16 * v69);
          v71 = *v70;
          ++v73;
        }

        while (*v70);
        if (!v72)
        {
          goto LABEL_48;
        }

        *v72 = 0;
        v72[1] = 0;
        --*(*(a1 + 456) - 16);
        v74 = *v72;
        *v72 = v14;
        if (v74)
        {
        }

        if (!v63)
        {
LABEL_50:
          v76 = v72[1];
          v72[1] = v63;
          if (v76)
          {
          }

          v77 = *(a1 + 456);
          if (v77)
          {
            v78 = *(v77 - 12) + 1;
          }

          else
          {
            v78 = 1;
          }

          *(v77 - 12) = v78;
          v82 = (*(v77 - 16) + v78);
          v83 = *(v77 - 4);
          if (v83 > 0x400)
          {
            if (v83 > 2 * v82)
            {
              goto LABEL_67;
            }
          }

          else if (3 * v83 > 4 * v82)
          {
LABEL_67:
            [v14 setNeedsDropPreviewUpdate];
            goto LABEL_73;
          }

          WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::expand((a1 + 456), v72);
          goto LABEL_67;
        }
      }

      else
      {
LABEL_48:
        *v70 = v14;
        v72 = v70;
        if (!v63)
        {
          goto LABEL_50;
        }
      }

      v75 = v63;
      goto LABEL_50;
    }
  }

  else
  {
    v86 = qword_1ED640A68;
    if (os_log_type_enabled(qword_1ED640A68, OS_LOG_TYPE_ERROR))
    {
      v87 = [a3 count];
      v88 = *(a4 + 3);
      LODWORD(v98.a) = 134218240;
      *(&v98.a + 4) = v87;
      WORD2(v98.b) = 2048;
      *(&v98.b + 6) = v88;
      _os_log_error_impl(&dword_19D52D000, v86, OS_LOG_TYPE_ERROR, "Failed to animate image placeholders: number of drag items (%tu) does not match number of placeholders (%tu)", &v98, 0x16u);
    }
  }
}

void sub_19DE3D074(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

id WebKit::DragDropInteractionState::previewForLifting(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  WebKit::DragDropInteractionState::createDragPreviewInternal(a1, a2, a3, a4, 0, a5, &v8);
  v5 = v8;
  if (v8)
  {
    v6 = v8;
  }

  return v5;
}

void WebKit::DragDropInteractionState::createDragPreviewInternal(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v103 = *MEMORY[0x1E69E9840];
  [a2 _privateLocalContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = [objc_msgSend(a2 "_privateLocalContext")], (v16 = *(a1 + 444)) == 0))
  {
LABEL_6:
    LOBYTE(v79[0]) = 0;
    v102 = 0;
    goto LABEL_7;
  }

  v17 = *(a1 + 432) + 200;
  v18 = 336 * v16;
  while (*(v17 + 128) != v15)
  {
    v17 += 336;
    v18 -= 336;
    if (!v18)
    {
      goto LABEL_6;
    }
  }

  v27 = *(v17 - 200);
  v28 = *(v17 - 184);
  v80 = *(v17 - 168);
  v79[0] = v27;
  v79[1] = v28;
  mpark::detail::copy_constructor<mpark::detail::traits<WTF::RetainPtr<UIImage>,WTF::RetainPtr<UIView>>,(mpark::detail::Trait)1>::copy_constructor(&v81, v17 - 160);
  std::__optional_copy_base<WebCore::TextIndicatorData,false>::__optional_copy_base[abi:sn200100](v83, (v17 - 144));
  std::__optional_copy_base<WebCore::Path,false>::__optional_copy_base[abi:sn200100](v93, v17);
  v29 = *(v17 + 72);
  if (v29)
  {
    atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
  }

  v97 = v29;
  v30 = *(v17 + 80);
  if (v30)
  {
    atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
  }

  v98 = v30;
  v31 = *(v17 + 104);
  v99 = *(v17 + 88);
  v100 = v31;
  v101 = *(v17 + 120);
  v102 = 1;
  if (*(a6 + 136) == 1)
  {
    WebKit::uiImageForImage(&v68, *(a6 + 88));
    v32 = *(a6 + 136);
    if (v32)
    {
      v33 = v68;
      WebCore::cocoaColor(v65, (a6 + 96), v14);
      WebKit::createTargetedDragPreview(v66, v33, a3, a4, a6 + 16, a6 + 48, v65[0], 0, a5);
      v34 = v66[0];
      if (v66[0])
      {
        v35 = v66[0];
        *a7 = v34;
        v36 = v34;
      }

      else
      {
        *a7 = 0;
      }

      v46 = v65[0];
      v65[0] = 0;
      if (v46)
      {
      }

      if (v33)
      {
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_110:
    v64 = (v32 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v32 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v64);
      WTF::fastFree(v64, v14);
    }

LABEL_79:
    v52 = v76;
    v76 = 0;
    if (v52)
    {
      if (*(v52 + 4) == 1)
      {
        (*(*v52 + 8))(v52);
      }

      else
      {
        --*(v52 + 4);
      }
    }

    v53 = v75;
    v75 = 0;
    if (v53)
    {
      if (v53[4] == 1)
      {
        (*(*v53 + 8))(v53);
      }

      else
      {
        --v53[4];
      }
    }

    v54 = v74;
    v74 = 0;
    if (v54)
    {
      if (v54[4] == 1)
      {
        (*(*v54 + 8))(v54);
      }

      else
      {
        --v54[4];
      }
    }

    v55 = v71;
    if (v71)
    {
      v71 = 0;
      v72 = 0;
      WTF::fastFree(v55, v14);
    }

    goto LABEL_8;
  }

  if (v82 || (v79[0] & 0x63) == 0)
  {
    if (v92 == 1 && (v79[0] & 0x1C) != 0)
    {
      v68 = v83[0];
      v69 = v83[1];
      v70 = v83[2];
      WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v71, &v84);
      v73 = v86;
      v37 = v87;
      if (v87)
      {
        ++v87[4];
      }

      v74 = v37;
      v38 = v88;
      if (v88)
      {
        ++v88[4];
      }

      v75 = v38;
      v39 = v89;
      if (v89)
      {
        ++*(v89 + 4);
      }

      v76 = v39;
      v77 = v90;
      if ((v90 & 0x8000000000000) != 0)
      {
        atomic_fetch_add((v90 & 0xFFFFFFFFFFFFLL), 1u);
        v39 = v76;
      }

      v78[0] = v91[0];
      *(v78 + 9) = *(v91 + 9);
      WebKit::uiImageForImage(v66, v39);
      v40 = v66[0];
      WebCore::cocoaColor(&v67, &v77, v41);
      WebKit::createTargetedDragPreview(v65, v40, a3, a4, &v69, &v71, v67, 0, a5);
      v42 = v65[0];
      if (v65[0])
      {
        v43 = v65[0];
        *a7 = v42;
        v44 = v42;
      }

      else
      {
        *a7 = 0;
      }

      v51 = v67;
      v67 = 0;
      if (v51)
      {
      }

      if (v40)
      {
      }

      v32 = v77;
      if ((v77 & 0x8000000000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_110;
    }

LABEL_7:
    *a7 = 0;
    goto LABEL_8;
  }

  if ((v79[0] & 0x20) == 0 || (v96 & 1) == 0)
  {
    v47 = v81;
    WebCore::FloatRect::FloatRect(&v68, (v79 + 8));
    v66[0] = 0;
    v66[1] = 0;
    WebKit::createTargetedDragPreview(v65, v47, a3, a4, &v68, v66, 0, 0, a5);
    v48 = v65[0];
    if (v65[0])
    {
      v49 = v65[0];
      *a7 = v48;
      v50 = v48;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  LOBYTE(v68) = 0;
  LOBYTE(v72) = -1;
  v45 = v95;
  if (v95 > 1u)
  {
    if (v95 != 2)
    {
      goto LABEL_93;
    }

    v56 = *&v93[0];
    atomic_fetch_add((*&v93[0] + 8), 1u);
    *&v68 = v56;
    v45 = v95;
  }

  else if (v95)
  {
    v68 = v93[0];
    v69 = v93[1];
    v70 = v93[2];
    v71 = v94;
    v45 = 1;
  }

  LOBYTE(v72) = v45;
LABEL_93:
  v57 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:WebCore::Path::platformPath(&v68)];
  v58 = v81;
  WebCore::FloatRect::FloatRect(v66, (v79 + 8));
  v65[0] = 0;
  v65[1] = 0;
  WebKit::createTargetedDragPreview(&v67, v58, a3, a4, v66, v65, 0, v57, a5);
  v59 = v67;
  if (v67)
  {
    v60 = v67;
    *a7 = v59;
    v61 = v59;
  }

  else
  {
    *a7 = 0;
  }

  if (v72 >= 2u && v72 != 255)
  {
    v62 = v68;
    *&v68 = 0;
    if (v62)
    {
      if (atomic_fetch_add(v62 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v62 + 2);
        (*(*v62 + 8))(v62);
      }
    }
  }

LABEL_8:
  if (v102 == 1)
  {
    v19 = v98;
    v98 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v14);
    }

    v20 = v97;
    v97 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v14);
    }

    if (v96 == 1)
    {
      if (v95 >= 2u && v95 != 255)
      {
        v21 = *&v93[0];
        *&v93[0] = 0;
        if (v21)
        {
          if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v21 + 2);
            (*(*v21 + 8))(v21);
          }
        }
      }

      v95 = -1;
    }

    if (v92 == 1)
    {
      if ((v90 & 0x8000000000000) != 0)
      {
        v63 = (v90 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v90 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v63);
          WTF::fastFree(v63, v14);
        }
      }

      v22 = v89;
      v89 = 0;
      if (v22)
      {
        if (*(v22 + 4) == 1)
        {
          (*(*v22 + 8))(v22);
        }

        else
        {
          --*(v22 + 4);
        }
      }

      v23 = v88;
      v88 = 0;
      if (v23)
      {
        if (v23[4] == 1)
        {
          (*(*v23 + 8))(v23);
        }

        else
        {
          --v23[4];
        }
      }

      v24 = v87;
      v87 = 0;
      if (v24)
      {
        if (v24[4] == 1)
        {
          (*(*v24 + 8))(v24);
        }

        else
        {
          --v24[4];
        }
      }

      v25 = v84;
      if (v84)
      {
        v84 = 0;
        v85 = 0;
        WTF::fastFree(v25, v14);
      }
    }

    if (v82 != 255)
    {
      v26 = v81;
      v81 = 0;
      if (v26)
      {
      }
    }
  }
}

void sub_19DE3D934(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, WTF *a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, unsigned __int8 a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, WTF *a46, uint64_t a47, uint64_t a48, _DWORD *a49, _DWORD *a50, _DWORD *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, unsigned int *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a22 >= 2u && a22 != 255 && a15 && atomic_fetch_add(a15 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a15 + 2);
    (*(*a15 + 8))(a15);
  }

  if (LOBYTE(STACK[0x210]) == 1)
  {
    if (a69 && atomic_fetch_add_explicit(a69, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a69, a2);
    }

    if (a68 && atomic_fetch_add_explicit(a68, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a68, a2);
    }

    if (a67 == 1 && a65 >= 2u && a65 != 255 && a58 && atomic_fetch_add(a58 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a58 + 2);
      (*(*a58 + 8))(a58);
    }

    if (a57 == 1)
    {
      if ((a52 & 0x8000000000000) != 0)
      {
        v70 = (a52 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((a52 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v70);
          WTF::fastFree(v70, a2);
        }
      }

      if (a51)
      {
        if (a51[4] == 1)
        {
          (*(*a51 + 8))(a51);
        }

        else
        {
          --a51[4];
        }
      }

      if (a50)
      {
        if (a50[4] == 1)
        {
          (*(*a50 + 8))(a50);
        }

        else
        {
          --a50[4];
        }
      }

      if (a49)
      {
        if (a49[4] == 1)
        {
          (*(*a49 + 8))(a49);
        }

        else
        {
          --a49[4];
        }
      }

      if (a46)
      {
        WTF::fastFree(a46, a2);
      }
    }

    if (a39 != 255)
    {
      if (a38)
      {
      }
    }
  }

  _Unwind_Resume(a1);
}

id WebKit::DragDropInteractionState::previewForCancelling(WebKit::DragDropInteractionState *this, UIDragItem *a2, UIView *a3, UIView *a4)
{
  v21[0] = 0;
  v28 = 0;
  WebKit::DragDropInteractionState::createDragPreviewInternal(this, a2, a3, a4, 1, v21, &v29);
  if (v28 == 1)
  {
    if ((v27 & 0x8000000000000) != 0)
    {
      v20 = (v27 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v27 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v20);
        WTF::fastFree(v20, v6);
      }
    }

    v7 = v26;
    v26 = 0;
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

    v8 = v25;
    v25 = 0;
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

    v9 = v24;
    v24 = 0;
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

    v10 = v22;
    if (v22)
    {
      v22 = 0;
      v23 = 0;
      WTF::fastFree(v10, v6);
    }
  }

  v11 = v29;
  if ([objc_msgSend(v29 "view")] != a4)
  {
    if (!v11)
    {
      return v11;
    }

    goto LABEL_29;
  }

  v12 = [v11 view];
  v13 = v12;
  v14 = *(this + 21);
  if (v14 != *(this + 20))
  {
    *(*(this + 9) + 8 * v14) = v12;
    if (!v12)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v14 + (v14 >> 1) <= v14 + 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v14 + (v14 >> 1);
  }

  if (v15 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v15;
  }

  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(this + 72, v16);
  v14 = *(this + 21);
  *(*(this + 9) + 8 * v14) = v13;
  if (v13)
  {
LABEL_27:
    v17 = v13;
    LODWORD(v14) = *(this + 21);
  }

LABEL_28:
  *(this + 21) = v14 + 1;
  if (v11)
  {
LABEL_29:
    v18 = v11;
  }

  return v11;
}

void sub_19DE3DF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v28 - 40) = 0;
  if (v27)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::DragDropInteractionState::dragSessionWillRequestAdditionalItem(uint64_t a1, WTF::StringImpl *a2)
{
  std::__optional_destruct_base<WebKit::DragSourceState,false>::reset[abi:sn200100](a1 + 88, a2);
  v4 = _Block_copy(a2);
  _Block_release(*(a1 + 64));
  *(a1 + 64) = v4;

  _Block_release(0);
}

void WebKit::DragDropInteractionState::clearStagedDragSource(uint64_t a1, WTF::StringImpl *a2)
{
  if (a2)
  {
    if ((*(a1 + 424) & 1) == 0)
    {
      v12 = std::__throw_bad_optional_access[abi:sn200100]();
      if (*(v2 + 192) == 1)
      {
        WebCore::TextIndicatorData::~TextIndicatorData((v2 + 56), v11);
      }

      if (*(v2 + 48) != 255)
      {
        v13 = *(v2 + 40);
        *(v2 + 40) = 0;
        if (v13)
        {
        }
      }

      *(v2 + 48) = -1;
      _Unwind_Resume(v12);
    }

    v4 = *(a1 + 444);
    if (v4 == *(a1 + 440))
    {
      WTF::Vector<WebKit::DragSourceState,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::DragSourceState const&>(a1 + 432, a1 + 88);
    }

    else
    {
      v5 = *(a1 + 432) + 336 * v4;
      v6 = *(a1 + 88);
      v7 = *(a1 + 104);
      *(v5 + 32) = *(a1 + 120);
      *v5 = v6;
      *(v5 + 16) = v7;
      mpark::detail::copy_constructor<mpark::detail::traits<WTF::RetainPtr<UIImage>,WTF::RetainPtr<UIView>>,(mpark::detail::Trait)1>::copy_constructor((v5 + 40), a1 + 128);
      std::__optional_copy_base<WebCore::TextIndicatorData,false>::__optional_copy_base[abi:sn200100](v5 + 56, (a1 + 144));
      std::__optional_copy_base<WebCore::Path,false>::__optional_copy_base[abi:sn200100]((v5 + 200), a1 + 288);
      v8 = *(a1 + 360);
      if (v8)
      {
        atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      }

      *(v5 + 272) = v8;
      v9 = *(a1 + 368);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      *(v5 + 280) = v9;
      v10 = *(a1 + 392);
      *(v5 + 288) = *(a1 + 376);
      *(v5 + 304) = v10;
      *(v5 + 320) = *(a1 + 408);
      ++*(a1 + 444);
    }
  }

  std::__optional_destruct_base<WebKit::DragSourceState,false>::reset[abi:sn200100](a1 + 88, a2);
}

uint64_t WebKit::DragDropInteractionState::dropSessionDidEnterOrUpdate(void *a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  v5 = a1[6];
  a1[6] = a2;
  if (v5)
  {
  }

  result = WebCore::IntPoint::operator CGPoint();
  *a1 = v7;
  a1[1] = v8;
  return result;
}

void WebKit::DragDropInteractionState::stageDragItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = *MEMORY[0x1E69E9840];
  WebCore::IntPoint::operator CGPoint();
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  LOBYTE(v68) = *(a2 + 96) & (*(a2 + 96) << 23 >> 31);
  WebCore::IntRect::operator CGRect();
  *(&v68 + 1) = v8;
  v69 = v9;
  v70 = v10;
  v71 = v11;
  mpark::detail::copy_constructor<mpark::detail::traits<WTF::RetainPtr<UIImage>,WTF::RetainPtr<UIView>>,(mpark::detail::Trait)1>::copy_constructor(&v72, a3);
  v12 = *(a2 + 8);
  if (v12)
  {
    *v12 += 2;
    v13 = *(v12 + 8);
    v14 = *(v12 + 40);
    v58 = *(v12 + 24);
    v59 = v14;
    v57 = v13;
    WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v60, v12 + 56);
    v15 = *(v12 + 72);
    v62 = v15;
    v16 = *(v12 + 80);
    if (v16)
    {
      ++v16[4];
    }

    v63 = v16;
    v17 = *(v12 + 88);
    if (v17)
    {
      ++v17[4];
    }

    v64 = v17;
    v18 = *(v12 + 96);
    if (v18)
    {
      ++v18[4];
    }

    v19 = *(v12 + 104);
    v65 = v18;
    v66 = v19;
    if ((v19 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v19 & 0xFFFFFFFFFFFFLL), 1u);
      v15 = v62;
      v16 = v63;
      v17 = v64;
      v18 = v65;
      v19 = v66;
    }

    v20 = *(v12 + 112);
    *(v67 + 9) = *(v12 + 121);
    v67[0] = v20;
    v74 = v57;
    v75 = v58;
    v76 = v59;
    v77 = v60;
    *&v20 = v61;
    v60 = 0;
    v61 = 0;
    v78 = v20;
    v79 = v15;
    v63 = 0;
    v64 = 0;
    v80 = v16;
    v81 = v17;
    v65 = 0;
    v66 = 0;
    v82 = v18;
    v83 = v19;
    *(v84 + 9) = *(v67 + 9);
    v21 = 1;
    v84[0] = v67[0];
  }

  else
  {
    v21 = 0;
    LOBYTE(v74) = 0;
  }

  v85 = v21;
  std::__optional_copy_base<WebCore::Path,false>::__optional_copy_base[abi:sn200100](&v86, a2 + 16);
  v22 = *(a2 + 128);
  if (v22 && v22[1])
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v56, v22);
    if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v23);
    }

    v24 = 0;
    v25 = v56;
  }

  else
  {
    v25 = 0;
    v24 = 1;
  }

  MEMORY[0x19EB02040](&v89, v25);
  v26 = *(a2 + 136);
  if (v26 && *(v26 + 4))
  {
    WTF::URL::createCFURL(&v55, (a2 + 136));
    v27 = 0;
    v28 = v55;
  }

  else
  {
    v28 = 0;
    v27 = 1;
  }

  MEMORY[0x19EB01DE0](&v90, v28);
  v91 = 1;
  v92 = *(a2 + 192);
  v93 = ++WebKit::DragDropInteractionState::stageDragItem(WebCore::DragItem const&,mpark::variant<WTF::RetainPtr<UIImage>,WTF::RetainPtr<UIView>>)::currentDragSourceItemIdentifier;
  WebKit::DragSourceState::DragSourceState(v94, &v68);
  v109 = 1;
  std::__optional_storage_base<WebKit::DragSourceState,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::DragSourceState,false>>(a1 + 88, v94);
  if (v109 == 1)
  {
    v30 = v108;
    v108 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v29);
    }

    v31 = v107;
    v107 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v29);
    }

    if (v106 == 1)
    {
      if (v105 >= 2u && v105 != 255)
      {
        v32 = v104;
        v104 = 0;
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v32 + 2);
            (*(*v32 + 8))(v32);
          }
        }
      }

      v105 = -1;
    }

    if (v103 == 1)
    {
      if ((v102 & 0x8000000000000) != 0)
      {
        v54 = (v102 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v102 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v54);
          WTF::fastFree(v54, v29);
        }
      }

      v33 = v101;
      v101 = 0;
      if (v33)
      {
        if (v33[4] == 1)
        {
          (*(*v33 + 8))(v33);
        }

        else
        {
          --v33[4];
        }
      }

      v34 = v100;
      v100 = 0;
      if (v34)
      {
        if (v34[4] == 1)
        {
          (*(*v34 + 8))(v34);
        }

        else
        {
          --v34[4];
        }
      }

      v35 = v99;
      v99 = 0;
      if (v35)
      {
        if (v35[4] == 1)
        {
          (*(*v35 + 8))(v35);
        }

        else
        {
          --v35[4];
        }
      }

      v36 = v97;
      if (v97)
      {
        v97 = 0;
        v98 = 0;
        WTF::fastFree(v36, v29);
      }
    }

    if (v96 != 255)
    {
      v37 = v95;
      v95 = 0;
      if (v37)
      {
      }
    }

    v96 = -1;
  }

  v38 = v90;
  v90 = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v29);
  }

  v39 = v89;
  v89 = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v29);
  }

  if (v88 == 1)
  {
    if (v87 >= 2u && v87 != 255)
    {
      v40 = v86;
      v86 = 0;
      if (v40)
      {
        if (atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v40 + 2);
          (*(*v40 + 8))(v40);
        }
      }
    }

    v87 = -1;
  }

  if (v85 == 1)
  {
    if ((v83 & 0x8000000000000) != 0)
    {
      v53 = (v83 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v83 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v53);
        WTF::fastFree(v53, v29);
      }
    }

    v41 = v82;
    v82 = 0;
    if (v41)
    {
      if (v41[4] == 1)
      {
        (*(*v41 + 8))(v41);
      }

      else
      {
        --v41[4];
      }
    }

    v42 = v81;
    v81 = 0;
    if (v42)
    {
      if (v42[4] == 1)
      {
        (*(*v42 + 8))(v42);
      }

      else
      {
        --v42[4];
      }
    }

    v43 = v80;
    v80 = 0;
    if (v43)
    {
      if (v43[4] == 1)
      {
        (*(*v43 + 8))(v43);
      }

      else
      {
        --v43[4];
      }
    }

    v44 = v77;
    if (v77)
    {
      v77 = 0;
      LODWORD(v78) = 0;
      WTF::fastFree(v44, v29);
    }
  }

  if (v73 != 255)
  {
    v45 = v72;
    v72 = 0;
    if (v45)
    {
    }
  }

  v73 = -1;
  if ((v27 & 1) == 0 && (v46 = v55, v55 = 0, v46))
  {

    if (v24)
    {
      goto LABEL_87;
    }
  }

  else if (v24)
  {
    goto LABEL_87;
  }

  v47 = v56;
  v56 = 0;
  if (v47)
  {
  }

LABEL_87:
  if (v12)
  {
    if ((v66 & 0x8000000000000) != 0)
    {
      v52 = (v66 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v66 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v52);
        WTF::fastFree(v52, v29);
      }
    }

    v48 = v65;
    v65 = 0;
    if (v48)
    {
      if (v48[4] == 1)
      {
        (*(*v48 + 8))(v48);
      }

      else
      {
        --v48[4];
      }
    }

    v49 = v64;
    v64 = 0;
    if (v49)
    {
      if (v49[4] == 1)
      {
        (*(*v49 + 8))(v49);
      }

      else
      {
        --v49[4];
      }
    }

    v50 = v63;
    v63 = 0;
    if (v50)
    {
      if (v50[4] == 1)
      {
        (*(*v50 + 8))(v50);
      }

      else
      {
        --v50[4];
      }
    }

    v51 = v60;
    if (v60)
    {
      v60 = 0;
      LODWORD(v61) = 0;
      WTF::fastFree(v51, v29);
    }

    WTF::RefCounted<WebCore::TextIndicator>::deref(v12);
    WTF::RefCounted<WebCore::TextIndicator>::deref(v12);
  }
}

void sub_19DE3EA60(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17, uint64_t a18, uint64_t a19, _DWORD *a20, _DWORD *a21, _DWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, unsigned __int8 a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, WTF *a42, uint64_t a43, uint64_t a44, _DWORD *a45, _DWORD *a46, _DWORD *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, unsigned int *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unsigned __int8 a61, int a62, char a63)
{
  if (a64 && atomic_fetch_add_explicit(a64, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a64, a2);
    if (v65)
    {
      goto LABEL_8;
    }
  }

  else if (v65)
  {
    goto LABEL_8;
  }

  if (a10)
  {
  }

LABEL_8:
  if (a63 == 1 && a61 >= 2u && a61 != 255 && a54 && atomic_fetch_add(a54 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a54 + 2);
    (*(*a54 + 8))(a54);
  }

  if (a53 != 1)
  {
    goto LABEL_26;
  }

  if ((a48 & 0x8000000000000) != 0)
  {
    v68 = (a48 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a48 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v68);
      WTF::fastFree(v68, a2);
    }
  }

  if (a47)
  {
    if (a47[4] == 1)
    {
      (*(*a47 + 8))(a47);
    }

    else
    {
      --a47[4];
    }
  }

  if (a46)
  {
    if (a46[4] == 1)
    {
      (*(*a46 + 8))(a46);
    }

    else
    {
      --a46[4];
    }
  }

  if (a45)
  {
    if (a45[4] == 1)
    {
      (*(*a45 + 8))(a45);
    }

    else
    {
      --a45[4];
    }
  }

  if (a42)
  {
    WTF::fastFree(a42, a2);
    if (!v64)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_26:
    if (!v64)
    {
      goto LABEL_42;
    }
  }

  if ((a23 & 0x8000000000000) != 0)
  {
    v67 = (a23 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a23 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v67);
      WTF::fastFree(v67, a2);
    }
  }

  if (a22)
  {
    if (a22[4] == 1)
    {
      (*(*a22 + 8))(a22);
    }

    else
    {
      --a22[4];
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

  if (a17)
  {
    WTF::fastFree(a17, a2);
  }

  WTF::RefCounted<WebCore::TextIndicator>::deref(v64);
  WTF::RefCounted<WebCore::TextIndicator>::deref(v64);
LABEL_42:
  if (a35 != 255)
  {
    if (a34)
    {
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::DragDropInteractionState::takePreviewViewsForDragCancel@<X0>(WebKit::DragDropInteractionState *this@<X0>, void *a2@<X8>)
{
  v11 = 0;
  v12 = 0;
  *a2 = 0;
  a2[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a2, this + 18);
  v4 = *(this + 21);
  if (v4)
  {
    v5 = *(this + 9);
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      *v5 = 0;
      if (v7)
      {
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v8, v3);
  }

  *(this + 9) = v11;
  v9 = v12;
  v11 = 0;
  v12 = 0;
  *(this + 10) = v9;
  return WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v3);
}

void sub_19DE3F2C4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, a2);
  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v11);
  _Unwind_Resume(a1);
}

id *WebKit::GestureRecognizerConsistencyEnforcer::GestureRecognizerConsistencyEnforcer(id *this, WKContentView *a2)
{
  *this = 0;
  inited = objc_initWeak(this, a2);
  v4 = WTF::RunLoop::mainSingleton(inited);
  v5 = v4;
  while (1)
  {
    v6 = *(v4 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(v4 + 8);
    atomic_compare_exchange_strong_explicit((v4 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v4 + 8));
LABEL_6:
  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F110D4A0;
  v8[1] = this;
  v8[2] = WebKit::GestureRecognizerConsistencyEnforcer::timerFired;
  v8[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  this[1] = &unk_1F10E6DC8;
  this[6] = v8;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v5 + 8));
  }

  this[7] = 0;
  return this;
}

void sub_19DE3F410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(*v11 + 8))(v11);
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((a10 + 8));
  }

  objc_destroyWeak(v10);
  _Unwind_Resume(a1);
}

void WebKit::GestureRecognizerConsistencyEnforcer::timerFired(id *this)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(this);
  v2 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [WeakRetained deferringGestures];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        if (![v7 state] && objc_msgSend(v7, "isEnabled"))
        {
          [v2 addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v4);
  }

  if (![v2 count] || objc_msgSend(objc_msgSend(WeakRetained, "touchEventGestureRecognizer"), "state") < 3)
  {
    goto LABEL_21;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = [v2 countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (j = 0; j != v8; ++j)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v12 + 1) + 8 * j) setState:3];
      }

      v8 = [v2 countByEnumeratingWithState:&v12 objects:v22 count:16];
    }

    while (v8);
  }

  v11 = qword_1ED641468;
  if (os_log_type_enabled(qword_1ED641468, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v21 = v2;
    _os_log_fault_impl(&dword_19D52D000, v11, OS_LOG_TYPE_FAULT, "Touch event gesture recognizer failed to reset after ending gesture deferral: %@", buf, 0xCu);
    if (!WeakRetained)
    {
      return;
    }
  }

  else
  {
LABEL_21:
    if (!WeakRetained)
    {
      return;
    }
  }
}

void sub_19DE3F69C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::GestureRecognizerConsistencyEnforcer::~GestureRecognizerConsistencyEnforcer(WebKit::GestureRecognizerConsistencyEnforcer *this, void *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  *(this + 1) = &unk_1F10E6DC8;
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 8));
  objc_destroyWeak(this);
}

void WebKit::GestureRecognizerConsistencyEnforcer::beginTracking(WebKit::GestureRecognizerConsistencyEnforcer *this, WKDeferringGestureRecognizer *a2)
{
  WTF::RunLoop::TimerBase::stop((this + 8));
  v7 = a2;
  if (a2)
  {
    v4 = a2;
  }

  WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 7, &v7, &v6);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
  }
}

void sub_19DE3F7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::GestureRecognizerConsistencyEnforcer::endTracking(WebKit::GestureRecognizerConsistencyEnforcer *this, WKDeferringGestureRecognizer *a2)
{
  v6 = a2;
  ShouldValidate = WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>>,(WTF::ShouldValidateKey)1,WKDeferringGestureRecognizer const*>(this + 7, &v6);
  v4 = *(this + 7);
  if (v4)
  {
    v5 = (v4 + 8 * *(v4 - 4));
    if (v5 == ShouldValidate)
    {
      return;
    }
  }

  else
  {
    if (!ShouldValidate)
    {
      return;
    }

    v5 = 0;
  }

  if (v5 != ShouldValidate)
  {
    WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::remove(this + 7, ShouldValidate);
    v4 = *(this + 7);
  }

  if (!v4 || !*(v4 - 12))
  {
    WTF::RunLoop::TimerBase::start();
  }
}

void **WebKit::GestureRecognizerConsistencyEnforcer::reset(WebKit::GestureRecognizerConsistencyEnforcer *this)
{
  WTF::RunLoop::TimerBase::stop((this + 8));
  result = *(this + 7);
  if (result)
  {
    *(this + 7) = 0;

    return WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::deallocateTable(result, v2);
  }

  return result;
}

void WebKit::GestureRecognizerConsistencyEnforcer::deref(id *this)
{
  WeakRetained = objc_loadWeakRetained(this);

  if (WeakRetained)
  {
  }
}

void sub_19DE3F914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebKit::PageClientImpl::~PageClientImpl(WebKit::PageClientImpl *this)
{
  WebKit::PageClientImpl::~PageClientImpl((this - 40));
}

{
  WebKit::PageClientImpl::operator delete((this - 40));
}

double WebKit::PageClientImpl::operator delete(WebKit::PageClientImpl *a1)
{
  WebKit::PageClientImpl::~PageClientImpl(a1);
  if (*(v1 + 48))
  {
    *(v1 + 64) = 0;
    result = 0.0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  else
  {

    WTF::fastFree(v1, v2);
  }

  return result;
}

void WebKit::PageClientImpl::requestScroll(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  LODWORD(v8) = *a2;
  LODWORD(v9) = a2[1];
  v10 = WeakRetained;
  [WeakRetained _scrollToContentScrollPosition:*a3 scrollOrigin:a4 animated:{v8, v9}];
  if (v10)
  {
  }
}

void sub_19DE3FA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

double WebKit::PageClientImpl::viewScrollPosition(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  v2 = [WeakRetained _scroller];
  if (WeakRetained)
  {
  }

  if (!v2)
  {
    return 0.0;
  }

  [v2 contentOffset];
  v6.x = v3;
  v6.y = v4;
  WebCore::FloatPoint::FloatPoint(&v7, &v6);
  LODWORD(result) = v7;
  return result;
}

void sub_19DE3FA98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::isActiveViewVisible(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (!WeakRetained)
  {
    return 0;
  }

  v3 = WeakRetained;
  if (WebKit::PageClientImpl::isViewInWindow(this) && ![v3 _isBackground] || (objc_msgSend(v3, "_isShowingVideoPictureInPicture") & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 _mayAutomaticallyShowVideoPictureInPicture];
  }

  return v4;
}

BOOL WebKit::PageClientImpl::canTakeForegroundAssertions(WebKit::PageClientImpl *this)
{
  {
    WebKit::EndowmentStateTracker::singleton(void)::tracker = 0u;
    unk_1ED6432D8 = 0u;
  }

  if (*(WebKit::EndowmentStateTracker::ensureState(&WebKit::EndowmentStateTracker::singleton(void)::tracker) + 1))
  {
    return 1;
  }

  [objc_msgSend(objc_msgSend(MEMORY[0x1E69C75D0] "currentProcess")];
  return v2 == *MEMORY[0x1E69C7698];
}

void WebKit::PageClientImpl::processDidExit(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _processDidExit];
  if (WeakRetained)
  {
  }

  v3 = objc_loadWeakRetained(this + 2);
  [v3 _processDidExit];
  if (v3)
  {
  }
}

void sub_19DE3FC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::processWillSwap(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _processWillSwap];
  if (WeakRetained)
  {
  }

  v3 = objc_loadWeakRetained(this + 2);
  [v3 _processWillSwap];
  if (v3)
  {
  }
}

void sub_19DE3FCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didRelaunchProcess(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _didRelaunchProcess];
  if (WeakRetained)
  {
  }

  v3 = objc_loadWeakRetained(this + 2);
  [v3 _didRelaunchProcess];
  if (v3)
  {
  }
}

void sub_19DE3FD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didCreateContextInWebProcessForVisibilityPropagation(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _webProcessDidCreateContextForVisibilityPropagation];
  if (WeakRetained)
  {
  }
}

void sub_19DE3FDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didCreateContextInGPUProcessForVisibilityPropagation(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _gpuProcessDidCreateContextForVisibilityPropagation];
  if (WeakRetained)
  {
  }
}

void sub_19DE3FE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::createVisibilityPropagationView(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  v2 = [WeakRetained _createVisibilityPropagationView];
  if (WeakRetained)
  {
  }

  return v2;
}

void sub_19DE3FEB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::removeVisibilityPropagationView(id *this, UIView *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _removeVisibilityPropagationView:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE3FF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::gpuProcessDidExit(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _gpuProcessDidExit];
  if (WeakRetained)
  {
  }

  return WebKit::PageClientImplCocoa::gpuProcessDidExit(this);
}

void sub_19DE3FF94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didNotHandleTapAsClick(id *this, const WebCore::IntPoint *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _didNotHandleTapAsClick:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE40014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didHandleTapAsHover(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _didHandleTapAsHover];
  if (WeakRetained)
  {
  }
}

void sub_19DE4008C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didCompleteSyntheticClick(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _didCompleteSyntheticClick];
  if (WeakRetained)
  {
  }
}

void sub_19DE40104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::decidePolicyForGeolocationPermissionRequest(uint64_t a1, uint64_t a2, const WebKit::FrameInfoData *a3, uint64_t *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = *(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(*(WeakRetained + 52) + 64) + 16)) + 8);
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {
      v9 = [v8 _geolocationProvider];
      WebKit::FrameInfoData::FrameInfoData(&v16, a3);
      v15 = *a4;
      *a4 = 0;
      [v9 decidePolicyForGeolocationRequestFromOrigin:&v16 completionHandler:&v15 view:v7];
      v11 = v15;
      v15 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      v12 = cf;
      cf = 0;
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = v20;
      v20 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v10);
      }

      mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~copy_constructor(&v19);
      v14 = v18;
      v18 = 0;
      if (v14)
      {
      }

      WebCore::ResourceRequestBase::~ResourceRequestBase(&v17);
    }
  }
}

void sub_19DE402B8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, WTF::StringImpl *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CFTypeRef cf)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  v51 = cf;
  cf = 0;
  if (v51)
  {
    CFRelease(v51);
  }

  v52 = a41;
  a41 = 0;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, a2);
  }

  mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~copy_constructor(&a37);
  v53 = a36;
  a36 = 0;
  if (v53)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a12);

  _Unwind_Resume(a1);
}

void WebKit::PageClientImpl::didStartProvisionalLoadForMainFrame(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _didStartProvisionalLoadForMainFrame];
  v2 = objc_loadWeakRetained(this + 7);
  [v2 _didStartProvisionalLoadForMainFrame];
  if (v2)
  {
  }

  [WeakRetained _hidePasswordView];
  if (WeakRetained)
  {
  }
}

void sub_19DE403DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;
  if (v11)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didFailProvisionalLoadForMainFrame(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _hidePasswordView];
  if (WeakRetained)
  {
  }
}

void sub_19DE40470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didCommitLoadForMainFrame(id *this, const WTF::String *a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _hidePasswordView];
  [WeakRetained _setHasCustomContentView:a3 loadedMIMEType:a2];
  v6 = objc_loadWeakRetained(this + 7);
  [v6 _didCommitLoadForMainFrame];
  if (v6)
  {
  }

  if (WeakRetained)
  {
  }
}

void sub_19DE40528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;
  if (v11)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::disableDoubleTapGesturesDuringTapIfNecessary(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _disableDoubleTapGesturesDuringTapIfNecessary:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE405C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::handleSmartMagnificationInformationForPotentialTap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleSmartMagnificationInformationForPotentialTap:a2 renderRect:a3 fitEntireRect:a4 viewportMinimumScale:a5 viewportMaximumScale:a6 nodeIsRootLevel:a7 nodeIsPluginElement:a8];
  if (WeakRetained)
  {
  }
}

void sub_19DE4069C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::setCursor(id *this, const WebCore::Cursor *a2)
{
  result = WebKit::PageClientImpl::isViewWindowActive(this);
  if (result)
  {

    return MEMORY[0x1EEE5DF70](a2);
  }

  return result;
}

void WebKit::PageClientImpl::registerEditCommand(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(*a2 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v6 = [[WKEditCommand alloc] initWithWebEditCommandProxy:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained undoManagerForWebView];
  if (WeakRetained)
  {
  }

  v9 = &selRef_undoEditing_;
  if (a3)
  {
    v9 = &selRef_redoEditing_;
  }

  [v8 registerUndoWithTarget:*(a1 + 64) selector:*v9 object:v6];
  if (v5 && v5[1])
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v13, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v11);
    }

    [v8 setActionName:v13];
    v12 = v13;
    v13 = 0;
    if (v12)
    {
    }
  }

  if (v6)
  {
  }

  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v10);
    }
  }
}

void sub_19DE40830(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v11)
  {
  }

  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::clearAllEditCommands(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [objc_msgSend(WeakRetained "undoManager")];
  if (WeakRetained)
  {
  }
}

void sub_19DE4091C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::canUndoRedo(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (a2)
  {
    v5 = [objc_msgSend(WeakRetained "undoManager")];
  }

  else
  {
    v5 = [objc_msgSend(WeakRetained "undoManager")];
  }

  v6 = v5;
  if (v4)
  {
  }

  return v6;
}

void sub_19DE40994(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::executeUndoRedo(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (a2)
  {
    [objc_msgSend(WeakRetained "undoManager")];
  }

  else
  {
    [objc_msgSend(WeakRetained "undoManager")];
  }

  if (v4)
  {
  }
}

void sub_19DE40A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::accessibilityWebProcessTokenReceived(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
  [WeakRetained _setAccessibilityWebProcessToken:v5];
  if (v5)
  {
  }

  if (WeakRetained)
  {
  }
}

void sub_19DE40AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::interpretKeyEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = [WeakRetained _interpretKeyEvent:*(a2 + 104) withContext:a3];
  if (WeakRetained)
  {
  }

  return v6;
}

void sub_19DE40B50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::positionInformationDidChange(id *this, const WebKit::InteractionInformationAtPosition *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _positionInformationDidChange:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE40BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::saveImageToLibrary(uint64_t a1, WebCore::SharedBuffer **a2)
{
  WebCore::SharedBuffer::createNSData(&v3, *a2);
  UIImageDataWriteToSavedPhotosAlbum();
  v2 = v3;
  v3 = 0;
  if (v2)
  {
  }
}

void sub_19DE40C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::selectionDidChange(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _selectionChanged];
  if (WeakRetained)
  {
  }
}

void sub_19DE40CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::assistiveTechnologyMakeFirstResponder(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained becomeFirstResponder];
  if (WeakRetained)
  {
  }
}

void sub_19DE40D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::screenToRootView(id *this, const WebCore::IntPoint *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  WebCore::IntPoint::operator CGPoint();
  [WeakRetained convertPoint:0 fromView:?];
  v6.x = v3;
  v6.y = v4;
  WebCore::IntPoint::IntPoint(&v7, &v6);
  if (WeakRetained)
  {
  }

  return v7;
}

void sub_19DE40DD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::rootViewToScreen(id *this, const WebCore::IntPoint *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  WebCore::IntPoint::operator CGPoint();
  [WeakRetained convertPoint:0 toView:?];
  v6.x = v3;
  v6.y = v4;
  WebCore::IntPoint::IntPoint(&v7, &v6);
  if (WeakRetained)
  {
  }

  return v7;
}

void sub_19DE40E50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::rootViewToScreen(id *this, const WebCore::IntRect *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  WebCore::IntRect::operator CGRect();
  [WeakRetained convertRect:0 toView:?];
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v8 = WebCore::enclosingIntRect(v10, v7);
  if (WeakRetained)
  {
  }

  return v8;
}

void sub_19DE40EDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::accessibilityScreenToRootView(id *this, const WebCore::IntPoint *a2)
{
  WebCore::IntPoint::operator CGPoint();
  v4 = v3;
  v6 = v5;
  v11.x = v3;
  v11.y = v5;
  WeakRetained = objc_loadWeakRetained(this + 7);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accessibilityConvertPointFromSceneReferenceCoordinates:{v4, v6}];
    v11.x = v8;
    v11.y = v9;
  }

  WebCore::IntPoint::IntPoint(&v12, &v11);
  if (WeakRetained)
  {
  }

  return v12;
}

void sub_19DE40F7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::relayAccessibilityNotification(uint64_t a1, atomic_uint **a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (objc_opt_respondsToSelector())
  {
    v6 = *a2;
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v10, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v10 = &stru_1F1147748;
      v8 = &stru_1F1147748;
    }

    [WeakRetained accessibilityRelayNotification:v10 notificationData:*a3];
    v9 = v10;
    v10 = 0;
    if (v9)
    {
    }
  }

  if (WeakRetained)
  {
  }
}

void sub_19DE41054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::rootViewToAccessibilityScreen(id *this, const WebCore::IntRect *a2)
{
  WebCore::IntRect::operator CGRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v19 = v3;
  v20 = v5;
  v21 = v7;
  v22 = v9;
  WeakRetained = objc_loadWeakRetained(this + 7);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accessibilityConvertRectToSceneReferenceCoordinates:{v4, v6, v8, v10, *&v19, *&v20, *&v21, *&v22}];
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
  }

  v17 = WebCore::enclosingIntRect(&v19, v12);
  if (WeakRetained)
  {
  }

  return v17;
}

void sub_19DE41160(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::doneWithKeyEvent(id *this, const WebKit::NativeWebKeyboardEvent *a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _didHandleKeyEvent:*(a2 + 13) eventWasHandled:a3];
  if (WeakRetained)
  {
  }
}

void sub_19DE411E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::doneWithTouchEvent(id *this, const WebKit::WebTouchEvent *a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _touchEvent:a2 preventsNativeGestures:a3];
  if (WeakRetained)
  {
  }
}

void sub_19DE4126C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::doneDeferringTouchStart(id *this, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _doneDeferringTouchStart:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE412EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::doneDeferringTouchMove(id *this, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _doneDeferringTouchMove:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE4136C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::doneDeferringTouchEnd(id *this, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _doneDeferringTouchEnd:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE413EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::requestTextRecognition(uint64_t a1, WTF::URL *a2, uint64_t a3, atomic_uint **a4, atomic_uint **a5, uint64_t a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  WTF::URL::createCFURL(&v25, a2);
  v12 = v25;
  v13 = *a4;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v24, v13);
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v14);
    }
  }

  else
  {
    v24 = &stru_1F1147748;
    v15 = &stru_1F1147748;
  }

  v16 = v24;
  v17 = *a5;
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v23, v17);
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v18);
    }
  }

  else
  {
    v23 = &stru_1F1147748;
    v19 = &stru_1F1147748;
  }

  [WeakRetained requestTextRecognition:v12 imageData:a3 sourceLanguageIdentifier:v16 targetLanguageIdentifier:v23 completionHandler:a6];
  v20 = v23;
  v23 = 0;
  if (v20)
  {
  }

  v21 = v24;
  v24 = 0;
  if (v21)
  {
  }

  v22 = v25;
  v25 = 0;
  if (v22)
  {

    if (!WeakRetained)
    {
      return;
    }
  }

  else if (!WeakRetained)
  {
    return;
  }
}

void sub_19DE4155C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  if (a11)
  {
  }

  if (a12)
  {
  }

  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::dataOwnerForPasteboard(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained _dataOwnerForPasteboard:a2];
  if (WeakRetained)
  {
  }

  return v4;
}

void sub_19DE4163C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::textIndicatorInstallationLayer(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  v2 = [WeakRetained textIndicatorInstallationLayer];
  if (WeakRetained)
  {
  }

  return v2;
}

void sub_19DE41694(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::makeViewBlank(id *this, int a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  v3 = [WeakRetained layer];
  *&v4 = (a2 ^ 1u);
  [v3 setOpacity:v4];
  if (WeakRetained)
  {
  }
}

void sub_19DE41718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::showBrowsingWarning(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained _showBrowsingWarning:a2 completionHandler:a3];
  }

  else
  {
    v8[0] = 0;
    v8[40] = 0;
    WTF::CompletionHandler<void ()(mpark::variant<WebKit::ContinueUnsafeLoad,WTF::URL> &&)>::operator()(a3);
    mpark::detail::move_constructor<mpark::detail::traits<WebKit::ContinueUnsafeLoad,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(v8, v6);
  }
}

void WebKit::PageClientImpl::clearBrowsingWarning(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _clearBrowsingWarning];
  if (WeakRetained)
  {
  }
}

void sub_19DE4183C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::clearBrowsingWarningIfForMainFrameNavigation(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _clearBrowsingWarningIfForMainFrameNavigation];
  if (WeakRetained)
  {
  }
}

void sub_19DE418B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::didPerformDictionaryLookup(uint64_t a1)
{
  objc_loadWeak((a1 + 56));
  WebCore::DictionaryLookup::showPopup();
  return 0;
}

void sub_19DE419B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::setRemoteLayerTreeRootNode(id *this, WebKit::RemoteLayerTreeNode *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  if (a2)
  {
    v4 = *(a2 + 7);
  }

  else
  {
    v4 = 0;
  }

  v5 = WeakRetained;
  [WeakRetained _setAcceleratedCompositingRootView:v4];
  if (v5)
  {
  }
}

void sub_19DE41ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::takeViewSnapshot(uint64_t a1@<X0>, void *a2@<X8>)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _takeViewSnapshot];
  }

  else
  {
    *a2 = 0;
  }
}

void WebKit::PageClientImpl::commitPotentialTapFailed(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _commitPotentialTapFailed];
  if (WeakRetained)
  {
  }
}

void sub_19DE41BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didGetTapHighlightGeometries(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  LOBYTE(v16) = a9;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _didGetTapHighlightForRequest:a2 color:a3 quads:a4 topLeftRadius:a5 topRightRadius:a6 bottomLeftRadius:a7 bottomRightRadius:a8 nodeHasBuiltInClickHandling:v16];
  if (WeakRetained)
  {
  }
}

void sub_19DE41C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didCommitLayerTree(id *this, const WebKit::RemoteLayerTreeTransaction *a2)
{
  WebKit::PageClientImplCocoa::didCommitLayerTree(this, a2);
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _didCommitLayerTree:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE41D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::layerTreeCommitComplete(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _layerTreeCommitComplete];
  if (WeakRetained)
  {
  }
}

void sub_19DE41D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::couldNotRestorePageState(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _couldNotRestorePageState];
  if (WeakRetained)
  {
  }
}

void sub_19DE41E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::restorePageState(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, _DWORD *a5, double a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  LODWORD(v12) = *a4;
  LODWORD(v13) = a4[1];
  LODWORD(v14) = *a5;
  LODWORD(v15) = a5[1];
  LODWORD(v16) = a5[2];
  LODWORD(v17) = a5[3];
  v18 = WeakRetained;
  [WeakRetained _restorePageScrollPosition:a2 scrollOrigin:a3 previousObscuredInset:v12 scale:{v13, v14, v15, v16, v17, a6}];
  if (v18)
  {
  }
}

void sub_19DE41ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::restorePageCenterAndScale(uint64_t a1, uint64_t a2, unsigned int a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  [WeakRetained _restorePageStateToUnobscuredCenter:a2 scale:{a3, a4}];
  if (WeakRetained)
  {
  }
}

void sub_19DE41F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::elementDidFocus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5, API::Object *this)
{
  if (this)
  {
    API::Object::toNSObject(this, &v13);
  }

  else
  {
    v13 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _elementDidFocus:a2 userIsInteracting:a3 blurPreviousNode:a4 activityStateChanges:a5 userObject:v13];
  if (WeakRetained)
  {
  }

  v12 = v13;
  v13 = 0;
  if (v12)
  {
  }
}

void sub_19DE42020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::updateInputContextAfterBlurringAndRefocusingElement(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _updateInputContextAfterBlurringAndRefocusingElement];
  if (WeakRetained)
  {
  }
}

void sub_19DE420A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didProgrammaticallyClearFocusedElement(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _didProgrammaticallyClearFocusedElement:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE42128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::updateFocusedElementInformation(id *this, const WebKit::FocusedElementInformation *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _updateFocusedElementInformation:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE421A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::isFocusingElement(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  v2 = [WeakRetained isFocusingElement];
  if (WeakRetained)
  {
  }

  return v2;
}

void sub_19DE42200(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::elementDidBlur(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _elementDidBlur];
  if (WeakRetained)
  {
  }
}

void sub_19DE42270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::focusedElementDidChangeInputMode(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _didUpdateInputMode:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE422F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didUpdateEditorState(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _didUpdateEditorState];
  if (WeakRetained)
  {
  }
}

void sub_19DE42368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::reconcileEnclosingScrollViewContentOffset(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _reconcileEnclosingScrollViewContentOffset:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE423E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::showPlaybackTargetPicker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint **a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = *a5;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v14, v10);
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v11);
    }
  }

  else
  {
    v14 = &stru_1F1147748;
    v12 = &stru_1F1147748;
  }

  [WeakRetained _showPlaybackTargetPicker:a2 fromRect:a3 routeSharingPolicy:a4 routingContextUID:v14];
  v13 = v14;
  v14 = 0;
  if (v13)
  {
  }

  if (WeakRetained)
  {
  }
}

void sub_19DE424CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::handleRunOpenPanel(id *this, const WebKit::WebPageProxy *a2, const WebKit::WebFrameProxy *a3, const WebKit::FrameInfoData *a4, API::OpenPanelParameters *a5, WebKit::WebOpenPanelResultListenerProxy *a6)
{
  v11 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_INFO, "PageClientImpl::handleRunOpenPanel", v17, 2u);
  }

  if (*(a5 + 72))
  {
    v12 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(a2 + 8) + 16));
    v13 = *(*(v12 + 6) + 80);
    if (v13)
    {
      v14 = WebCore::MediaSessionHelper::sharedHelper(v12);
      (*(*v14 + 24))(v14, v13);
    }
  }

  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _showRunOpenPanel:a5 frameInfo:a4 resultListener:a6];
  if (WeakRetained)
  {
  }

  return 1;
}

void sub_19DE42614(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::showShareSheet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7[0] = 0;
  v7[16] = 0;
  [WeakRetained _showShareSheet:a2 inRect:v7 completionHandler:a3];
  if (WeakRetained)
  {
  }

  return 1;
}

void sub_19DE4268C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::showContactPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _showContactPicker:a2 completionHandler:a3];
  if (WeakRetained)
  {
  }
}

void sub_19DE4270C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::showDigitalCredentialsPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _showDigitalCredentialsPicker:a2 completionHandler:a3];
  if (WeakRetained)
  {
  }
}

void sub_19DE42794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::dismissDigitalCredentialsPicker(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _dismissDigitalCredentialsPicker:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE42814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::dismissAnyOpenPicker(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained dismissPickersIfNeededWithReason:1];
  if (WeakRetained)
  {
  }
}

void sub_19DE42890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::showInspectorHighlight(id *this, const InspectorOverlayHighlight *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _showInspectorHighlight:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE42910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::hideInspectorHighlight(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _hideInspectorHighlight];
  if (WeakRetained)
  {
  }
}

void sub_19DE42988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::showInspectorIndication(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained setShowingInspectorIndication:1];
  if (WeakRetained)
  {
  }
}

void sub_19DE42A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::hideInspectorIndication(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained setShowingInspectorIndication:0];
  if (WeakRetained)
  {
  }
}

void sub_19DE42A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::enableInspectorNodeSearch(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _enableInspectorNodeSearch];
  if (WeakRetained)
  {
  }
}

void sub_19DE42AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::disableInspectorNodeSearch(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _disableInspectorNodeSearch];
  if (WeakRetained)
  {
  }
}

void sub_19DE42B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::closeFullScreenManager(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained closeFullScreenWindowController];
  if (WeakRetained)
  {
  }
}

void sub_19DE42BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::enterFullScreen(uint64_t a1, WTF::RefCountedBase *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v5 = [WeakRetained fullScreenWindowController];
  if (WeakRetained)
  {
  }

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 16));
    v7 = [v6 fullScreenWindowController];
    WebCore::FloatSize::operator CGSize();
    [v7 enterFullScreen:a2 completionHandler:?];
    if (v6)
    {
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a2, 0);
  }
}

void sub_19DE42CC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::exitFullScreen(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v4 = [WeakRetained fullScreenWindowController];
  if (WeakRetained)
  {
  }

  if (v4)
  {
    v6 = objc_loadWeakRetained((a1 + 16));
    [objc_msgSend(v6 "fullScreenWindowController")];
    if (v6)
    {
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(void)>::operator()(a2);
  }
}

void sub_19DE42DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::lockFullscreenOrientation(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v4 = [WeakRetained fullScreenWindowController];
  if ((a2 - 1) > 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = qword_19E703D18[(a2 - 1)];
  }

  [v4 setSupportedOrientations:v5];
  if (WeakRetained)
  {
  }

  return 1;
}

void sub_19DE42E3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::unlockFullscreenOrientation(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [objc_msgSend(WeakRetained "fullScreenWindowController")];
  if (WeakRetained)
  {
  }
}

void sub_19DE42ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::beganEnterFullScreen(uint64_t a1, uint64_t a2, uint64_t a3, WTF::RefCountedBase *a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v6 = [WeakRetained fullScreenWindowController];
  if (WeakRetained)
  {
  }

  if (v6)
  {
    v21 = objc_loadWeakRetained((a1 + 16));
    v7 = [v21 fullScreenWindowController];
    WebCore::IntRect::operator CGRect();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    WebCore::IntRect::operator CGRect();
    [v7 beganEnterFullScreenWithInitialFrame:a4 finalFrame:v9 completionHandler:{v11, v13, v15, v16, v17, v18, v19}];
    if (v21)
    {
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, 0);
  }
}

void sub_19DE4303C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::beganExitFullScreen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v6 = [WeakRetained fullScreenWindowController];
  if (WeakRetained)
  {
  }

  if (v6)
  {
    v21 = objc_loadWeakRetained((a1 + 16));
    v7 = [v21 fullScreenWindowController];
    WebCore::IntRect::operator CGRect();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    WebCore::IntRect::operator CGRect();
    [v7 beganExitFullScreenWithInitialFrame:a4 finalFrame:v9 completionHandler:{v11, v13, v15, v16, v17, v18, v19}];
    if (v21)
    {
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(void)>::operator()(a4);
  }
}

void sub_19DE431A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didFinishLoadingDataForCustomContentProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a4];
  [WeakRetained _didFinishLoadingDataForCustomContentProviderWithSuggestedFilename:a2 data:v7];
  if (v7)
  {
  }

  if (WeakRetained)
  {
  }
}

void sub_19DE43274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::scrollingNodeScrollViewWillStartPanGesture(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained scrollViewWillStartPanOrPinchGesture];
  if (WeakRetained)
  {
  }
}

void sub_19DE432FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::scrollingNodeScrollViewDidScroll(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _didScroll];
  if (WeakRetained)
  {
  }
}

void sub_19DE43374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::scrollingNodeScrollWillStartScroll(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _scrollingNodeScrollingWillBegin:&v4];
  if (WeakRetained)
  {
  }
}

void sub_19DE433E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::scrollingNodeScrollDidEndScroll(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _scrollingNodeScrollingDidEnd:&v4];
  if (WeakRetained)
  {
  }
}

void sub_19DE4344C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::navigationGestureDidBegin(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _navigationGestureDidBegin];
    v3 = WebKit::NavigationState::fromWebPage(v4[52], v2);
    if (v3)
    {
      WebKit::NavigationState::navigationGestureDidBegin(v3);
    }
  }
}

void WebKit::PageClientImpl::navigationGestureWillEnd(id *this, int a2, WebBackForwardListItem *a3)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v7 = WebKit::NavigationState::fromWebPage(WeakRetained[52], v6);
    if (v7)
    {
      WebKit::NavigationState::navigationGestureWillEnd(v7, a2, a3);
    }
  }
}

void WebKit::PageClientImpl::navigationGestureDidEnd(id *this, int a2, WebBackForwardListItem *a3)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v7 = WebKit::NavigationState::fromWebPage(WeakRetained[52], v6);
    if (v7)
    {
      WebKit::NavigationState::navigationGestureDidEnd(v7, a2, a3);
    }

    [v8 _navigationGestureDidEnd];
  }
}

void WebKit::PageClientImpl::navigationGestureDidEnd(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _navigationGestureDidEnd];
  if (WeakRetained)
  {
  }
}

void sub_19DE43680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::willRecordNavigationSnapshot(id *this, WebBackForwardListItem *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = WebKit::NavigationState::fromWebPage(WeakRetained[52], v4);
    if (v5)
    {
      WebKit::NavigationState::willRecordNavigationSnapshot(v5, a2);
    }
  }
}

void WebKit::PageClientImpl::didRemoveNavigationGestureSnapshot(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = WebKit::NavigationState::fromWebPage(WeakRetained[52], v2);
    if (v3)
    {
      WebKit::NavigationState::navigationGestureSnapshotWasRemoved(v3);
    }
  }
}

void WebKit::PageClientImpl::didFinishNavigation(id *this, Navigation *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _didFinishNavigation:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE43814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didFailNavigation(id *this, Navigation *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _didFailNavigation:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE43894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didSameDocumentNavigationForMainFrame(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  [WeakRetained _didSameDocumentNavigationForMainFrame:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE43914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didChangeBackgroundColor(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _updateScrollViewBackground];
  if (WeakRetained)
  {
  }
}

void sub_19DE4398C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::videoControlsManagerDidChange(id *this)
{
  WebKit::PageClientImplCocoa::videoControlsManagerDidChange(this);
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _videoControlsManagerDidChange];
  if (WeakRetained)
  {
  }
}

void sub_19DE43A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::videosInElementFullscreenChanged(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _videosInElementFullscreenChanged];
  if (WeakRetained)
  {
  }
}

void sub_19DE43A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::createValidationBubble@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  Weak = objc_loadWeak((a1 + 56));
  v8 = WTF::fastMalloc(0x48);
  result = MEMORY[0x19EB07040](v8, Weak, a2, a3);
  *a4 = v8;
  return result;
}

unsigned int *WebKit::PageClientImpl::createDataListSuggestionsDropdown@<X0>(id *this@<X0>, WebKit::WebPageProxy *a2@<X1>, uint64_t *a3@<X8>)
{
  Weak = objc_loadWeak(this + 7);

  return WebKit::WebDataListSuggestionsDropdownIOS::create(a2, Weak, a3);
}

void WebKit::PageClientImpl::didPerformDragOperation(id *this, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _didPerformDragOperation:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE43BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::startDrag(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = WebCore::ShareableBitmap::create();
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    WebCore::ShareableBitmap::makeCGImageCopy(&cf, v12);
    [WeakRetained _startDrag:&cf item:a2 elementID:{*a4, a4[1]}];
    v10 = cf;
    cf = 0;
    if (v10)
    {
      CFRelease(v10);
      if (!WeakRetained)
      {
LABEL_5:
        result = v12;
        v12 = 0;
        if (result)
        {
          return WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, v9);
        }

        return result;
      }
    }

    else if (!WeakRetained)
    {
      goto LABEL_5;
    }

    goto LABEL_5;
  }

  return result;
}

void sub_19DE43C90(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, WTF *a10)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::willReceiveEditDragSnapshot(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _willReceiveEditDragSnapshot];
  if (WeakRetained)
  {
  }
}

void sub_19DE43D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didReceiveEditDragSnapshot(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  std::__optional_copy_base<WebCore::TextIndicatorData,false>::__optional_copy_base[abi:sn200100](v10, a2);
  [WeakRetained _didReceiveEditDragSnapshot:v10];
  if (v17 != 1)
  {
    goto LABEL_13;
  }

  if ((v16 & 0x8000000000000) != 0)
  {
    v9 = (v16 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, v4);
    }
  }

  v5 = v15;
  v15 = 0;
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

  v6 = v14;
  v14 = 0;
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

  v7 = v13;
  v13 = 0;
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

  v8 = v11;
  if (!v11)
  {
LABEL_13:
    if (!WeakRetained)
    {
      return;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v12 = 0;
  WTF::fastFree(v8, v4);
  if (WeakRetained)
  {
LABEL_14:
  }
}

void sub_19DE43EBC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, uint64_t a17, _DWORD *a18, _DWORD *a19, _DWORD *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
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

  if (v26)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didChangeDragCaretRect(id *this, const WebCore::IntRect *a2, const WebCore::IntRect *a3)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  WebCore::IntRect::operator CGRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WebCore::IntRect::operator CGRect();
  [WeakRetained _didChangeDragCaretRect:v4 currentRect:{v6, v8, v10, v11, v12, v13, v14}];
  if (WeakRetained)
  {
  }
}

void sub_19DE440AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::performSwitchHapticFeedback(WebKit::PageClientImpl *this)
{
  v1 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:0];
  [v1 impactOccurred];
  if (v1)
  {
  }
}

void sub_19DE44130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::requestPasswordForQuickLookDocument(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v6 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v6 = MEMORY[0x1E69E9818];
  v6[1] = 50331650;
  v6[2] = WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::PageClientImpl::requestPasswordForQuickLookDocument(WTF::String const&,WTF::Function<void ()(WTF::String const&)> &&)::$_0>(WebKit::PageClientImpl::requestPasswordForQuickLookDocument(WTF::String const&,WTF::Function<void ()(WTF::String const&)> &&)::$_0)::{lambda(void *,NSString *)#1}::__invoke;
  v6[3] = &WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::PageClientImpl::requestPasswordForQuickLookDocument(WTF::String const&,WTF::Function<void ()(WTF::String const&)> &&)::$_0>(WebKit::PageClientImpl::requestPasswordForQuickLookDocument(WTF::String const&,WTF::Function<void ()(WTF::String const&)> &&)::$_0)::descriptor;
  v6[4] = v5;
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v8 = [WeakRetained _passwordView];
  v9 = v8;
  if (v8)
  {
    [v8 showPasswordFailureAlert];
    [v9 setUserDidEnterPassword:v6];
  }

  else
  {
    v10 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v14, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v14 = &stru_1F1147748;
      v12 = &stru_1F1147748;
    }

    [WeakRetained _showPasswordViewWithDocumentName:v14 passwordHandler:v6];
    v13 = v14;
    v14 = 0;
    if (v13)
    {
    }
  }

  if (WeakRetained)
  {
  }

  _Block_release(v6);
}

void sub_19DE44290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
  }

  _Block_release(v10);
  _Unwind_Resume(a1);
}

void WebKit::PageClientImpl::requestDOMPasteAccess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _requestDOMPasteAccessForCategory:a2 requiresInteraction:a3 elementRect:a4 originIdentifier:a5 completionHandler:a6];
  if (WeakRetained)
  {
  }
}

void sub_19DE443C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::cancelPointersForGestureRecognizer(id *this, UIGestureRecognizer *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained cancelPointersForGestureRecognizer:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE44440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::activeTouchIdentifierForGestureRecognizer(id *this, UIGestureRecognizer *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  v4 = [WeakRetained activeTouchIdentifierForGestureRecognizer:a2];
  if (WeakRetained)
  {
  }

  return v4 & 0xFFFFFFFFFFLL;
}

void sub_19DE444A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::handleAutocorrectionContext(id *this, const WebAutocorrectionContext *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _handleAutocorrectionContext:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE44518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::showDataDetectorsUIForPositionInformation(id *this, const WebKit::InteractionInformationAtPosition *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _showDataDetectorsUIForPositionInformation:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE4459C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::hardwareKeyboardAvailabilityChanged(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained _hardwareKeyboardAvailabilityChanged];
  if (WeakRetained)
  {
  }
}

void sub_19DE44614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::didCleanupFullscreen(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [objc_msgSend(WeakRetained "fullScreenWindowController")];
  if (WeakRetained)
  {
  }
}

void sub_19DE44690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::writePromisedAttachmentToPasteboard(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _writePromisedAttachmentToPasteboard:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE44710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::setMouseEventPolicy(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _setMouseEventPolicy:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE44790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::showMediaControlsContextMenu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _showMediaControlsContextMenu:a2 items:a3 completionHandler:a4];
  if (WeakRetained)
  {
  }
}

void sub_19DE4482C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::handleAsynchronousCancelableScrollEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  [WeakRetained scrollView:a2 handleScrollUpdate:a3 completion:a4];
  if (WeakRetained)
  {
  }
}

void sub_19DE448C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::isSimulatingCompatibilityPointerTouches(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  v2 = [WeakRetained _isSimulatingCompatibilityPointerTouches];
  if (WeakRetained)
  {
  }

  return v2;
}

void sub_19DE44920(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::runModalJavaScriptDialog(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained runModalJavaScriptDialog:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE44998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

float WebKit::PageClientImpl::computedObscuredInset(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _computedObscuredInset];
  v3 = v2;
  if (WeakRetained)
  {
  }

  return v3;
}

void sub_19DE44A18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

__n128 __copy_helper_block_e8_32c65_ZTSKZN6WebKit14PageClientImpl26contentViewBackgroundColorEvE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

uint64_t WebKit::PageClientImpl::isScreenBeingCaptured(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  v2 = [WeakRetained screenIsBeingCaptured];
  if (WeakRetained)
  {
  }

  return v2;
}

void sub_19DE44A78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::requestScrollToRect(id *this, const WebCore::FloatRect *a2, const WebCore::FloatPoint *a3)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  WebCore::FloatRect::operator CGRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WebCore::FloatPoint::operator CGPoint();
  [WeakRetained _scrollToRect:v4 withOrigin:v6 minimumScrollDistance:{v8, v10, v11, v12, 0.0}];
  if (WeakRetained)
  {
  }
}

void sub_19DE44B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::sceneID(id *this@<X0>, uint64_t a2@<X8>)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  MEMORY[0x19EB02040](a2, [objc_msgSend(objc_msgSend(WeakRetained "window")]);
  if (WeakRetained)
  {
  }
}

void sub_19DE44BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::beginTextRecognitionForFullscreenVideo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained beginTextRecognitionForFullscreenVideo:a2 playerViewController:a3];
  if (WeakRetained)
  {
  }
}

void sub_19DE44C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::cancelTextRecognitionForFullscreenVideo(id *this, AVPlayerViewController *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained cancelTextRecognitionForFullscreenVideo:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE44CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::isTextRecognitionInFullscreenVideoEnabled(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  v2 = [WeakRetained isTextRecognitionInFullscreenVideoEnabled];
  if (WeakRetained)
  {
  }

  return v2;
}

void sub_19DE44D38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::beginTextRecognitionForVideoInElementFullscreen(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  *&v11 = a3;
  *&v12 = a4;
  *&v13 = a5;
  *&v14 = a6;
  [WeakRetained beginTextRecognitionForVideoInElementFullscreen:a2 bounds:{v11, v12, v13, v14}];
  if (WeakRetained)
  {
  }
}

void sub_19DE44DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::cancelTextRecognitionForVideoInElementFullscreen(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained cancelTextRecognitionForVideoInElementFullscreen];
  if (WeakRetained)
  {
  }
}

void sub_19DE44E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::presentingViewController(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if ([objc_msgSend(WeakRetained "fullScreenWindowController")])
  {
    v2 = [objc_msgSend(WeakRetained "fullScreenWindowController")];
    if (!WeakRetained)
    {
      return v2;
    }
  }

  else
  {
    v3 = WeakRetained[52];
    if (v3)
    {
      CFRetain(*(v3 + 8));
      v2 = (*(**(v3 + 120) + 504))(*(v3 + 120));
      CFRelease(*(v3 + 8));
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void sub_19DE44F34(_Unwind_Exception *a1)
{
  CFRelease(*(v2 + 8));

  _Unwind_Resume(a1);
}

float WebKit::PageClientImpl::rootViewToWebView(id *this, const WebCore::FloatRect *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  WebCore::FloatRect::operator CGRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_loadWeakRetained(this + 7);
  [WeakRetained convertRect:v12 fromView:{v5, v7, v9, v11}];
  v18.origin.x = v13;
  v18.origin.y = v14;
  v18.size.width = v15;
  v18.size.height = v16;
  WebCore::FloatRect::FloatRect(&v19, &v18);
  if (v12)
  {
  }

  if (WeakRetained)
  {
  }

  return v19;
}

void sub_19DE4501C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

float WebKit::PageClientImpl::webViewToRootView(id *this, const WebCore::FloatPoint *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  WebCore::FloatPoint::operator CGPoint();
  v5 = v4;
  v7 = v6;
  v8 = objc_loadWeakRetained(this + 7);
  [WeakRetained convertPoint:v8 toView:{v5, v7}];
  v12.x = v9;
  v12.y = v10;
  WebCore::FloatPoint::FloatPoint(&v13, &v12);
  if (v8)
  {
  }

  if (WeakRetained)
  {
  }

  return v13;
}

void sub_19DE450E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::scheduleVisibleContentRectUpdate(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _scheduleVisibleContentRectUpdate];
  if (WeakRetained)
  {
  }
}

void sub_19DE45164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::isPotentialTapInProgress(id *this)
{
  Weak = objc_loadWeak(this + 7);

  return [Weak isPotentialTapInProgress];
}

uint64_t WebKit::PageClientImpl::canStartNavigationSwipeAtLastInteractionLocation(id *this)
{
  Weak = objc_loadWeak(this + 7);

  return [Weak _canStartNavigationSwipeAtLastInteractionLocation];
}

void WebKit::PageClientImpl::createPDFPageNumberIndicator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  WebCore::IntRect::operator CGRect();
  [WeakRetained _createPDFPageNumberIndicator:a2 withFrame:a4 pageCount:?];
  if (WeakRetained)
  {
  }
}

void sub_19DE45264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::removePDFPageNumberIndicator(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  [WeakRetained _removePDFPageNumberIndicator:a2];
  if (WeakRetained)
  {
  }
}

void sub_19DE452E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::updatePDFPageNumberIndicatorLocation(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  WebCore::IntRect::operator CGRect();
  [WeakRetained _updatePDFPageNumberIndicator:a2 withFrame:?];
  if (WeakRetained)
  {
  }
}

void sub_19DE45378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::updatePDFPageNumberIndicatorCurrentPage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  [WeakRetained _updatePDFPageNumberIndicator:a2 currentPage:a3];
  if (WeakRetained)
  {
  }
}

void sub_19DE45400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImpl::removeAnyPDFPageNumberIndicator(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained _removeAnyPDFPageNumberIndicator];
  if (WeakRetained)
  {
  }
}

void sub_19DE45478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PointerTouchCompatibilitySimulator::handleScrollUpdate(float32x2_t *a1, void *a2, void *a3)
{
  if (a1[4].i8[0] != 1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(a1);
  v7 = [WeakRetained window];
  v8 = v7;
  if (!v7)
  {
    WebKit::PointerTouchCompatibilitySimulator::resetState(a1);
    v11 = 0;
    if (!WeakRetained)
    {
      return v11;
    }

    goto LABEL_13;
  }

  v9 = v7;
  v10 = [a3 phase];
  if ((v10 - 2) < 2)
  {
    WebKit::PointerTouchCompatibilitySimulator::resetState(a1);
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (!v10)
  {
    a1[3] = 0;
  }

  if ([a2 _wk_canScrollHorizontallyWithoutBouncing])
  {
    goto LABEL_11;
  }

  [a3 translationInView:WeakRetained];
  v14.f64[1] = v13;
  *&v15 = vcvt_f32_f64(v14);
  v26 = v15;
  a1[3] = vadd_f32(a1[3], *&v15);
  if (!WebCore::FloatSize::isZero(&a1[2]) || (v11 = 0, v16 = fabsf(a1[3].f32[0]), v16 >= 15.0) && v16 > fabsf(a1[3].f32[1] * 5.0))
  {
    [a3 locationInView:{WeakRetained, v26}];
    v28.x = v17;
    v28.y = v18;
    WebCore::FloatPoint::FloatPoint(&v29, &v28);
    a1[1] = v29;
    if (WebCore::FloatSize::isZero(&a1[2]))
    {
      v19 = +[_WKTouchEventGenerator sharedTouchEventGenerator];
      LODWORD(v28.x) = WebKit::PointerTouchCompatibilitySimulator::locationInScreen(a1);
      HIDWORD(v28.x) = v20;
      WebCore::FloatPoint::operator CGPoint();
      [v19 touchDown:v8 window:?];
      v21 = a1[3].f32[0];
      a1[2] = LODWORD(v21);
      a1[3] = 0;
      v22 = v21;
      v23 = 0.0;
    }

    else
    {
      v22 = a1[2].f32[0];
      v23 = a1[2].f32[1] + 0.0;
    }

    a1[2].f32[0] = v22 + v27;
    a1[2].f32[1] = v23;
    v24 = +[_WKTouchEventGenerator sharedTouchEventGenerator];
    LODWORD(v28.x) = WebKit::PointerTouchCompatibilitySimulator::locationInScreen(a1);
    HIDWORD(v28.x) = v25;
    WebCore::FloatPoint::operator CGPoint();
    [v24 moveToPoint:v8 duration:? window:?];
    v11 = 1;
  }

LABEL_12:

  if (WeakRetained)
  {
LABEL_13:
  }

  return v11;
}

void sub_19DE45684(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::PointerTouchCompatibilitySimulator::resetState(float32x2_t *this)
{
  if (!WebCore::FloatSize::isZero(&this[2]))
  {
    v2 = +[_WKTouchEventGenerator sharedTouchEventGenerator];
    v10 = WebKit::PointerTouchCompatibilitySimulator::locationInScreen(this);
    v11 = v3;
    WebCore::FloatPoint::operator CGPoint();
    v5 = v4;
    v7 = v6;
    WebKit::PointerTouchCompatibilitySimulator::window(&v9, this);
    v8 = v9;
    [v2 liftUp:v9 window:{v5, v7}];
    if (v8)
    {
    }
  }

  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
}

void sub_19DE4575C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

float WebKit::PointerTouchCompatibilitySimulator::locationInScreen(float32x2_t *this)
{
  *&v12.x = vadd_f32(this[1], this[2]);
  WebCore::FloatPoint::operator CGPoint();
  v3 = v2;
  v5 = v4;
  WeakRetained = objc_loadWeakRetained(this);
  WebKit::PointerTouchCompatibilitySimulator::window(&v11, this);
  v7 = v11;
  [WeakRetained convertPoint:objc_msgSend(objc_msgSend(objc_msgSend(v11 toCoordinateSpace:{"windowScene"), "screen"), "coordinateSpace"), v3, v5}];
  v12.x = v8;
  v12.y = v9;
  WebCore::FloatPoint::FloatPoint(&v13, &v12);
  if (v7)
  {
  }

  if (WeakRetained)
  {
  }

  return v13;
}

void sub_19DE45828(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

id WebKit::PointerTouchCompatibilitySimulator::window(WebKit::PointerTouchCompatibilitySimulator *this, id *a2)
{
  result = [objc_loadWeak(a2) window];
  *this = result;
  if (result)
  {

    return result;
  }

  return result;
}

uint64_t WebKit::ProcessStateMonitor::ProcessStateMonitor(uint64_t a1, uint64_t *a2)
{
  buf[3] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  v3 = *a2;
  *a2 = 0;
  *(a1 + 16) = v3;
  v4 = WTF::RunLoop::mainSingleton(a1);
  v5 = v4;
  while (1)
  {
    v6 = *(v4 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(v4 + 8);
    atomic_compare_exchange_strong_explicit((v4 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v4 + 8));
LABEL_6:
  buf[0] = v5;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F110D4C8;
  v8[1] = a1;
  WTF::RunLoop::TimerBase::TimerBase();
  *(a1 + 24) = &unk_1F10E6DC8;
  *(a1 + 64) = v8;
  v9 = buf[0];
  buf[0] = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v9 + 8));
  }

  *(a1 + 72) = 0;
  v10 = qword_1ED641030;
  v11 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = a1;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%p - ProcessStateMonitor::ProcessStateMonitor", buf, 0xCu);
  }

  v12 = WTF::RunLoop::mainSingleton(v11);
  if ((WTF::RunLoop::isCurrent(v12) & 1) == 0)
  {
    result = 48;
    __break(0xC471u);
    return result;
  }

  v13 = MEMORY[0x1E69C75F8];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3321888768;
  v26[2] = ___ZN6WebKit19ProcessStateMonitorC2EON3WTF8FunctionIFvbEEE_block_invoke;
  v26[3] = &__block_descriptor_40_e8_32c65_ZTSKZN6WebKit19ProcessStateMonitorC1EON3WTF8FunctionIFvbEEEE3__1_e40_v16__0___RBSProcessMonitorConfiguring__8l;
  v14 = *a1;
  if (*a1 || (v14 = WTF::fastCompactMalloc(0x10), *v14 = 1, *(v14 + 8) = a1, v16 = *a1, *a1 = v14, !v16))
  {
    atomic_fetch_add(v14, 1u);
  }

  else
  {
    if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, v15);
    }

    v14 = *a1;
    v17 = 1;
    atomic_fetch_add(*a1, 1u);
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  v17 = 0;
  atomic_fetch_add(v14, 1u);
LABEL_19:
  v27 = v14;
  v18 = [v13 monitorWithConfiguration:v26];
  v20 = v18;
  if (v18)
  {
    v21 = v18;
  }

  v22 = *(a1 + 72);
  *(a1 + 72) = v20;
  if (v22)
  {
  }

  if ((v17 & 1) == 0 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, v19);
  }

  WebKit::ProcessStateMonitor::checkRemainingRunTime(a1);
  v24 = v27;
  v27 = 0;
  if (v24)
  {
    if (atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v24);
      WTF::fastFree(v24, v23);
    }
  }

  return a1;
}

void sub_19DE45B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14, uint64_t a15)
{
  v19 = *(v15 + 72);
  *(v15 + 72) = 0;
  if (v19)
  {
  }

  *(v15 + 24) = v17;
  v20 = *(v15 + 64);
  *(v15 + 64) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  WTF::RunLoop::TimerBase::~TimerBase(v16);
  v22 = *(v15 + 16);
  *(v15 + 16) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  if (*(v15 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v15, v21);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

unsigned int *___ZN6WebKit19ProcessStateMonitorC2EON3WTF8FunctionIFvbEEE_block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69C7630] descriptor];
  [v4 setValues:24];
  [a2 setStateDescriptor:v4];
  v10[0] = [MEMORY[0x1E69C7610] predicateMatchingHandle:{objc_msgSend(MEMORY[0x1E69C75D0], "currentProcess")}];
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 1)}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = ___ZZN6WebKit19ProcessStateMonitorC1EON3WTF8FunctionIFvbEEEEN3__1clEPU39objcproto28RBSProcessMonitorConfiguring11objc_object_block_invoke;
  v8[3] = &__block_descriptor_40_e8_32c194_ZTSKZZN6WebKit19ProcessStateMonitorC1EON3WTF8FunctionIFvbEEEEN3__1clEPU39objcproto28RBSProcessMonitorConfiguring11objc_objectEUlP17RBSProcessMonitorP16RBSProcessHandleP21RBSProcessStateUpdateE__e74_v32__0__RBSProcessMonitor_8__RBSProcessHandle_16__RBSProcessStateUpdate_24l;
  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  v9 = v5;
  [a2 setUpdateHandler:v8];
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v6);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v6);
    }
  }

  return result;
}

void sub_19DE45EAC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14)
{
  if (a14 && atomic_fetch_add(a14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a14);
    WTF::fastFree(a14, a2);
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  else if (!v14)
  {
    goto LABEL_7;
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, a2);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c65_ZTSKZN6WebKit19ProcessStateMonitorC1EON3WTF8FunctionIFvbEEEE3__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 32) = v2;
  return result;
}

unsigned int *__destroy_helper_block_e8_32c65_ZTSKZN6WebKit19ProcessStateMonitorC1EON3WTF8FunctionIFvbEEEE3__1(uint64_t a1, void *a2)
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

void WebKit::ProcessStateMonitor::~ProcessStateMonitor(id *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  v3 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v9 = 134217984;
    v10 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - ProcessStateMonitor::~ProcessStateMonitor", &v9, 0xCu);
  }

  v4 = WTF::RunLoop::mainSingleton(v3);
  if ((WTF::RunLoop::isCurrent(v4) & 1) == 0)
  {
    goto LABEL_12;
  }

  [this[9] invalidate];
  WebKit::ProcessStateMonitor::processDidBecomeRunning(this);
  v5 = this[9];
  this[9] = 0;
  if (v5)
  {
  }

  this[3] = &unk_1F10E6DC8;
  v6 = this[8];
  this[8] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 3));
  v8 = this[2];
  this[2] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (*(this + 2) != 1)
  {
LABEL_12:
    __break(0xC471u);
    JUMPOUT(0x19DE460E4);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, v7);
}

void sub_19DE46108(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  *(v1 + 72) = 0;
  if (v3)
  {
  }

  *(v1 + 24) = &unk_1F10E6DC8;
  v4 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WTF::RunLoop::TimerBase::~TimerBase((v1 + 24));
  v6 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(v1 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v1, v5);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::ProcessStateMonitor::processWillBeSuspendedImmediately(uint64_t this)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(this + 12) != 2)
  {
    v1 = this;
    v2 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = v1;
      _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - ProcessStateMonitor::processWillBeSuspendedImmediately", &v3, 0xCu);
    }

    WTF::RunLoop::TimerBase::stop((v1 + 24));
    this = (*(**(v1 + 16) + 16))(*(v1 + 16), 1);
    *(v1 + 12) = 2;
  }

  return this;
}

_BYTE *mpark::detail::copy_constructor<mpark::detail::traits<WTF::RetainPtr<UIImage>,WTF::RetainPtr<UIView>>,(mpark::detail::Trait)1>::copy_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[8] = -1;
  if (*(a2 + 8) != 255)
  {
    v4 = *a2;
    *a1 = *a2;
    if (v4)
    {
      v5 = v4;
    }

    a1[8] = *(a2 + 8);
  }

  return a1;
}

void sub_19DE4633C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) != 255)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
    }
  }

  *(v1 + 8) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t WebKit::DragSourceState::DragSourceState(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  if (*(a2 + 48) != 255)
  {
    v6 = *(a2 + 5);
    *(a2 + 5) = 0;
    *(a1 + 40) = v6;
    *(a1 + 48) = *(a2 + 48);
  }

  std::__optional_move_base<WebCore::TextIndicatorData,false>::__optional_move_base[abi:sn200100](a1 + 56, (a2 + 56));
  std::__optional_move_base<WebCore::Path,false>::__optional_move_base[abi:sn200100]((a1 + 200), a2 + 200);
  v7 = *(a2 + 34);
  *(a2 + 34) = 0;
  *(a1 + 272) = v7;
  WTF::URL::URL(a1 + 280, a2 + 35);
  *(a1 + 320) = a2[20];
  return a1;
}

void sub_19DE46408(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 272);
  *(v2 + 272) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (*(v2 + 264) == 1)
  {
    mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(v2 + 200);
  }

  if (*(v2 + 192) == 1)
  {
    WebCore::TextIndicatorData::~TextIndicatorData((v2 + 56), a2);
  }

  if (*(v2 + 48) != 255)
  {
    v5 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v5)
    {
    }
  }

  *(v2 + 48) = -1;
  _Unwind_Resume(exception_object);
}

WTF *std::__optional_storage_base<WebCore::TextIndicatorData,false>::__construct[abi:sn200100]<WebCore::TextIndicatorData>(WTF *result, WTF *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(a2 + 2);
    *(result + 1) = *(a2 + 1);
    *(result + 2) = v5;
    *result = v4;
    *(result + 6) = 0;
    *(result + 7) = 0;
    result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(result + 48, a2 + 12);
    *(v3 + 16) = *(a2 + 16);
    v6 = *(a2 + 9);
    *(a2 + 9) = 0;
    *(v3 + 9) = v6;
    v7 = *(a2 + 10);
    *(a2 + 10) = 0;
    *(v3 + 10) = v7;
    v8 = *(a2 + 11);
    *(a2 + 11) = 0;
    *(v3 + 11) = v8;
    *(v3 + 12) = 0;
    if (v3 != a2)
    {
      v9 = *(a2 + 12);
      *(a2 + 12) = 0;
      *(v3 + 12) = v9;
    }

    v10 = *(a2 + 104);
    *(v3 + 113) = *(a2 + 113);
    *(v3 + 104) = v10;
    *(v3 + 136) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19DE46544(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::DragSourceState::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  v6 = (a1 + 40);
  v7 = a2 + 5;
  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  if (v8 == 255)
  {
    if (v9 != 255)
    {
      if (!*(a2 + 48))
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else if (v9 == 255)
  {
    v10 = *v6;
    *v6 = 0;
    if (v10)
    {
    }

    *(a1 + 48) = -1;
  }

  else
  {
    if (*(a2 + 48))
    {
      if (v8 != 1)
      {
LABEL_11:
        v17 = a1 + 40;
        v18 = a2 + 40;
        mpark::detail::assignment<mpark::detail::traits<WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BERenderingProcess>>>::assign_alt<1ul,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BENetworkingProcess>>(mpark::detail::alt<1ul,WTF::RetainPtr<BENetworkingProcess>> &,WTF::RetainPtr<BENetworkingProcess> &&)::{unnamed type#1}::operator()(&v17);
        goto LABEL_16;
      }
    }

    else if (*(a1 + 48))
    {
LABEL_13:
      v17 = a1 + 40;
      v18 = a2 + 40;
      mpark::detail::assignment<mpark::detail::traits<WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BERenderingProcess>>>::assign_alt<0ul,WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BEWebContentProcess>>(mpark::detail::alt<0ul,WTF::RetainPtr<BEWebContentProcess>> &,WTF::RetainPtr<BEWebContentProcess> &&)::{unnamed type#1}::operator()(&v17);
      goto LABEL_16;
    }

    v11 = *v7;
    *v7 = 0;
    v12 = *v6;
    *v6 = v11;
    if (v12)
    {
    }
  }

LABEL_16:
  std::__optional_storage_base<WebCore::TextIndicatorData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::TextIndicatorData,false>>((a1 + 56), a2 + 56);
  std::__optional_storage_base<WebCore::Path,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::Path,false>>(a1 + 200, (a2 + 200));
  v14 = *(a2 + 34);
  *(a2 + 34) = 0;
  v15 = *(a1 + 272);
  *(a1 + 272) = v14;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  WTF::URL::operator=(a1 + 280, a2 + 280);
  *(a1 + 320) = a2[20];
  return a1;
}

void std::__optional_destruct_base<WebKit::DragSourceState,false>::reset[abi:sn200100](uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 336) == 1)
  {
    v3 = *(a1 + 280);
    *(a1 + 280) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 272);
    *(a1 + 272) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    if (*(a1 + 264) == 1)
    {
      mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(a1 + 200);
    }

    if (*(a1 + 192) == 1)
    {
      WebCore::TextIndicatorData::~TextIndicatorData((a1 + 56), a2);
    }

    if (*(a1 + 48) != 255)
    {
      v5 = *(a1 + 40);
      *(a1 + 40) = 0;
      if (v5)
      {
      }
    }

    *(a1 + 48) = -1;
    *(a1 + 336) = 0;
  }
}

void std::__optional_storage_base<WebCore::TextIndicatorData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::TextIndicatorData,false>>(WebCore::TextIndicatorData *a1, uint64_t a2)
{
  if (*(a1 + 136) == *(a2 + 136))
  {
    if (*(a1 + 136))
    {

      WebCore::TextIndicatorData::operator=(a1, a2);
    }
  }

  else if (*(a1 + 136))
  {
    WebCore::TextIndicatorData::~TextIndicatorData(a1, a2);
    *(v3 + 136) = 0;
  }

  else
  {

    std::__optional_storage_base<WebCore::TextIndicatorData,false>::__construct[abi:sn200100]<WebCore::TextIndicatorData>(a1, a2);
  }
}

uint64_t WebCore::TextIndicatorData::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 12);
  *(a1 + 64) = *(a2 + 16);
  v7 = *(a2 + 9);
  *(a2 + 9) = 0;
  v8 = *(a1 + 72);
  *(a1 + 72) = v7;
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

  v9 = *(a2 + 10);
  *(a2 + 10) = 0;
  v10 = *(a1 + 80);
  *(a1 + 80) = v9;
  if (v10)
  {
    if (v10[4] == 1)
    {
      (*(*v10 + 8))(v10);
    }

    else
    {
      --v10[4];
    }
  }

  v11 = *(a2 + 11);
  *(a2 + 11) = 0;
  v12 = *(a1 + 88);
  *(a1 + 88) = v11;
  if (v12)
  {
    if (v12[4] == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      --v12[4];
    }
  }

  if (a1 != a2)
  {
    v13 = *(a1 + 96);
    if ((v13 & 0x8000000000000) != 0)
    {
      v17 = (v13 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v13 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);
        WTF::fastFree(v17, v6);
      }
    }

    v14 = *(a2 + 12);
    *(a2 + 12) = 0;
    *(a1 + 96) = v14;
  }

  v15 = *(a2 + 104);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 104) = v15;
  return a1;
}

void std::__optional_storage_base<WebCore::Path,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::Path,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {
      v4 = *(a1 + 56);
      v5 = *(a2 + 56);
      if (v4 != 255 || v5 != 255)
      {
        switch(v5)
        {
          case 255:

            mpark::detail::destructor<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>,(mpark::detail::Trait)1>::destroy(a1);
            break;
          case 2:
            if (v4 == 2)
            {
              v6 = *a2;
              *a2 = 0;
              v7 = *a1;
              *a1 = v6;
              if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v7 + 2);
                v8 = *(*v7 + 8);

                v8();
              }
            }

            else
            {
              mpark::detail::destructor<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>,(mpark::detail::Trait)1>::destroy(a1);
              v9 = *a2;
              *a2 = 0;
              *a1 = v9;
              *(a1 + 56) = 2;
            }

            break;
          case 1:
            if (v4 == 1)
            {
              v10 = *a2;
              v11 = a2[1];
              v12 = a2[2];
              *(a1 + 48) = *(a2 + 6);
              *(a1 + 16) = v11;
              *(a1 + 32) = v12;
              *a1 = v10;
            }

            else
            {
              v13 = a1;
              v14 = a2;
              mpark::detail::assignment<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>>::assign_alt<1ul,WebCore::PathSegment,WebCore::PathSegment>(mpark::detail::alt<1ul,WebCore::PathSegment> &,WebCore::PathSegment &&)::{unnamed type#1}::operator()(&v13);
            }

            break;
          default:
            if (*(a1 + 56))
            {
              v13 = a1;
              v14 = a2;
              mpark::detail::assignment<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>>::assign_alt<0ul,std::monostate,std::monostate>(mpark::detail::alt<0ul,std::monostate> &,std::monostate &&)::{unnamed type#1}::operator()(&v13);
            }

            break;
        }
      }
    }
  }

  else if (*(a1 + 64))
  {
    mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(a1);
    *(a1 + 64) = 0;
  }

  else
  {
    mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::impl(a1, a2);
    *(a1 + 64) = 1;
  }
}

void *___ZZN6WebKit24DragDropInteractionState34updatePreviewsForActiveDragSourcesEvENK3__0cvU13block_pointerFP13UIDragPreviewvEEv_block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E69DC998] previewForURL:*(a1 + 40) title:*(a1 + 32)];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = v2;
  }

  return v2;
}

void *__copy_helper_block_e8_32c83_ZTSKZN6WebKit24DragDropInteractionState34updatePreviewsForActiveDragSourcesEvE3__0(void *result, uint64_t a2)
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

void sub_19DE46B3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c83_ZTSKZN6WebKit24DragDropInteractionState34updatePreviewsForActiveDragSourcesEvE3__0(uint64_t a1)
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

void *___ZZN6WebKit24DragDropInteractionState34updatePreviewsForActiveDragSourcesEvENK3__1cvU13block_pointerFP13UIDragPreviewvEEv_block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:*(a1 + 32)];
  v2 = objc_alloc(MEMORY[0x1E69DC9A0]);
  v3 = MEMORY[0x1E696B098];
  [v1 bounds];
  v9[0] = [v3 valueWithCGRect:?];
  v4 = [v2 initWithTextLineRects:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 1)}];
  v5 = [objc_alloc(MEMORY[0x1E69DC998]) initWithView:v1 parameters:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  if (v4)
  {
  }

  if (v1)
  {
  }

  return v6;
}

void sub_19DE46CB0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c83_ZTSKZN6WebKit24DragDropInteractionState34updatePreviewsForActiveDragSourcesEvE3__1(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_32c83_ZTSKZN6WebKit24DragDropInteractionState34updatePreviewsForActiveDragSourcesEvE3__1(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v1)
  {
  }
}

uint64_t WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::deallocateTable(void **a1, void *a2)
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
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t std::__optional_copy_base<WebCore::TextIndicatorData,false>::__optional_copy_base[abi:sn200100](uint64_t a1, __int128 *a2)
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
    WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 48, (a2 + 3));
    *(a1 + 64) = *(a2 + 16);
    v6 = *(a2 + 9);
    if (v6)
    {
      ++*(v6 + 16);
    }

    *(a1 + 72) = v6;
    v7 = *(a2 + 10);
    if (v7)
    {
      ++*(v7 + 16);
    }

    *(a1 + 80) = v7;
    v8 = *(a2 + 11);
    if (v8)
    {
      ++*(v8 + 16);
    }

    v9 = *(a2 + 12);
    *(a1 + 88) = v8;
    *(a1 + 96) = v9;
    if ((v9 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v10 = *(a2 + 104);
    *(a1 + 113) = *(a2 + 113);
    *(a1 + 104) = v10;
    *(a1 + 136) = 1;
  }

  return a1;
}

void sub_19DE46E44(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 136) == 1)
  {
    WebCore::TextIndicatorData::~TextIndicatorData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::PageClientImpl::requestPasswordForQuickLookDocument(WTF::String const&,WTF::Function<void ()(WTF::String const&)> &&)::$_0>(WebKit::PageClientImpl::requestPasswordForQuickLookDocument(WTF::String const&,WTF::Function<void ()(WTF::String const&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

WTF::StringImpl *WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::PageClientImpl::requestPasswordForQuickLookDocument(WTF::String const&,WTF::Function<void ()(WTF::String const&)> &&)::$_0>(WebKit::PageClientImpl::requestPasswordForQuickLookDocument(WTF::String const&,WTF::Function<void ()(WTF::String const&)> &&)::$_0)::{lambda(void *,NSString *)#1}::__invoke(uint64_t a1)
{
  MEMORY[0x19EB02040](&v4);
  (*(**(a1 + 32) + 16))(*(a1 + 32), &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

void sub_19DE46F18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t __copy_helper_block_e8_32c194_ZTSKZZN6WebKit19ProcessStateMonitorC1EON3WTF8FunctionIFvbEEEEN3__1clEPU39objcproto28RBSProcessMonitorConfiguring11objc_objectEUlP17RBSProcessMonitorP16RBSProcessHandleP21RBSProcessStateUpdateE_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 32) = v2;
  return result;
}

unsigned int *__destroy_helper_block_e8_32c194_ZTSKZZN6WebKit19ProcessStateMonitorC1EON3WTF8FunctionIFvbEEEEN3__1clEPU39objcproto28RBSProcessMonitorConfiguring11objc_objectEUlP17RBSProcessMonitorP16RBSProcessHandleP21RBSProcessStateUpdateE_(uint64_t a1, void *a2)
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

void *WTF::Detail::CallableWrapper<WebKit::ProcessStateMonitor::ProcessStateMonitor(WTF::Function<void ()(BOOL)> &&)::$_1::operator()(objc_object  {objcproto28RBSProcessMonitorConfiguring}*)::{lambda(RBSProcessMonitor *,RBSProcessHandle *,RBSProcessStateUpdate *)#1}::operator() const(objc_object  {objcproto28RBSProcessMonitorConfiguring}*,RBSProcessMonitor *,RBSProcessHandle *)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110D478;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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
  v8 = WTF::fastZeroedMalloc((16 * v7 + 16));
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
      v12 = v4 + 16 * v10;
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = v20;
            v23 = *(v15 + 16 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = v15 + 16 * v22;
          v25 = *(v24 + 8);
          *(v24 + 8) = 0;
          if (v25)
          {

            v26 = *v24;
            *v24 = 0;
            if (v26)
            {
            }
          }

          else
          {
            *v24 = 0;
          }

          v27 = *v12;
          *v12 = 0;
          *v24 = v27;
          v28 = *(v12 + 8);
          *(v12 + 8) = 0;
          *(v24 + 8) = v28;
          v29 = *(v12 + 8);
          *(v12 + 8) = 0;
          if (v29)
          {
          }

          v30 = *v12;
          *v12 = 0;
          if (v30)
          {
          }

          if (v12 == a2)
          {
            v11 = v24;
          }
        }

        else
        {
          v14 = *(v12 + 8);
          *(v12 + 8) = 0;
          if (v14)
          {

            v13 = *v12;
          }

          *v12 = 0;
          if (v13)
          {
          }
        }
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

uint64_t WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 29))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    if (v5)
    {
      v8 = v6;
      v9 = 8 * v5;
      v10 = v4;
      do
      {
        v11 = *v10;
        *v10 = 0;
        *v8 = v11;
        v12 = *v10;
        *v10 = 0;
        if (v12)
        {
        }

        ++v8;
        v10 = (v10 + 8);
        v9 -= 8;
      }

      while (v9);
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WebKit::DragSourceState,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::DragSourceState const&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::DragSourceState,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 336 * *(a1 + 12);
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *v4 = *v3;
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  mpark::detail::copy_constructor<mpark::detail::traits<WTF::RetainPtr<UIImage>,WTF::RetainPtr<UIView>>,(mpark::detail::Trait)1>::copy_constructor((v4 + 40), v3 + 40);
  std::__optional_copy_base<WebCore::TextIndicatorData,false>::__optional_copy_base[abi:sn200100](v4 + 56, (v3 + 56));
  std::__optional_copy_base<WebCore::Path,false>::__optional_copy_base[abi:sn200100]((v4 + 200), v3 + 200);
  v7 = *(v3 + 272);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(v4 + 272) = v7;
  v8 = *(v3 + 280);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(v4 + 280) = v8;
  v9 = *(v3 + 304);
  *(v4 + 288) = *(v3 + 288);
  *(v4 + 304) = v9;
  *(v4 + 320) = *(v3 + 320);
  ++*(a1 + 12);
  return 1;
}

void sub_19DE47364(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 192) == 1)
  {
    WebCore::TextIndicatorData::~TextIndicatorData((v2 + 56), a2);
  }

  if (*(v2 + 48) != 255)
  {
    v4 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v4)
    {
    }
  }

  *(v2 + 48) = -1;
  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebKit::DragSourceState,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 336 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::DragSourceState,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::DragSourceState,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebKit::DragSourceState,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xC30C31)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = *a1;
      v4 = *(a1 + 12);
      v5 = 336 * a2;
      v6 = WTF::fastMalloc((336 * a2));
      *(a1 + 8) = v5 / 0x150;
      *a1 = v6;
      if (v4)
      {
        v8 = v6;
        v9 = 336 * v4;
        v10 = v3;
        do
        {
          WebKit::DragSourceState::DragSourceState(v8, v10);
          v11 = *(v10 + 35);
          *(v10 + 35) = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v7);
          }

          v12 = *(v10 + 34);
          *(v10 + 34) = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v7);
          }

          if (*(v10 + 264) == 1)
          {
            mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(v10 + 200);
          }

          if (*(v10 + 192) == 1)
          {
            WebCore::TextIndicatorData::~TextIndicatorData((v10 + 56), v7);
          }

          if (*(v10 + 48) != 255)
          {
            v13 = *(v10 + 5);
            *(v10 + 5) = 0;
            if (v13)
            {
            }
          }

          *(v10 + 48) = -1;
          v8 += 336;
          v10 = (v10 + 336);
          v9 -= 336;
        }

        while (v9);
      }

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
}

void WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::GestureRecognizerConsistencyEnforcer>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::GestureRecognizerConsistencyEnforcer *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained(*(a1 + 8));
    v4 = WeakRetained;
    if (WeakRetained)
    {
    }

    v5 = *(a1 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = (v5 + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8);
  if (v2)
  {

    WebKit::GestureRecognizerConsistencyEnforcer::deref(v2);
  }
}

void sub_19DE4769C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE47874);
  }

  v7 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::expand(a1, 0);
    v7 = *a1;
    v4 = *a2;
  }

  v8 = *(v7 - 8);
  v9 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 8 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v4)
      {
        v20 = 0;
        v21 = v7 + 8 * *(v7 - 4);
        goto LABEL_25;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v7 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      --*(*a1 - 16);
      v4 = *a2;
      v13 = v15;
    }
  }

  *a2 = 0;
  v17 = *v13;
  *v13 = v4;
  if (v17)
  {
  }

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
  v22 = (*(v18 - 16) + v19);
  v23 = *(v18 - 4);
  if (v23 > 0x400)
  {
    if (v23 <= 2 * v22)
    {
LABEL_21:
      v13 = WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::expand(a1, v13);
      v18 = *a1;
      if (*a1)
      {
        v23 = *(v18 - 4);
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else if (3 * v23 <= 4 * v22)
  {
    goto LABEL_21;
  }

  v21 = v18 + 8 * v23;
  v20 = 1;
LABEL_25:
  *a3 = v13;
  *(a3 + 8) = v21;
  *(a3 + 16) = v20;
}

void *WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::expand(uint64_t *a1, void **a2)
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

  return WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void **a3)
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
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 8 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = v20;
            v23 = *(v15 + 8 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = (v15 + 8 * v22);
          *v13 = 0;
          *v24 = v14;
          v25 = *v13;
          *v13 = 0;
          if (v25)
          {
          }

          if (v13 == a3)
          {
            v12 = v24;
          }
        }

        else
        {
          *v13 = 0;
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

void WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::remove(uint64_t *a1, void **a2)
{
  v4 = *a2;
  *a2 = 0;
  if (v4)
  {
  }

  *a2 = -1;
  v5 = *a1;
  v6 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::rehash(a1, v7 >> 1, 0);
  }
}

uint64_t WTF::HashTable<WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::RetainPtr<WKDeferringGestureRecognizer>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::RetainPtr<WKDeferringGestureRecognizer>>,WTF::DefaultHash<WTF::RetainPtr<WKDeferringGestureRecognizer>>>,(WTF::ShouldValidateKey)1,WKDeferringGestureRecognizer const*>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DE47B98);
  }

  v4 = *(v2 - 8);
  v5 = (~(v3 << 32) + v3) ^ ((~(v3 << 32) + v3) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 8 * v8);
  if (v9 == v3)
  {
    return v2 + 8 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 8 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 8 * v8;
    }
  }

  return v2 + 8 * *(v2 - 4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessStateMonitor::ProcessStateMonitor(WTF::Function<void ()(BOOL)> &&)::$_0,void>::call(uint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(result + 8);
  if (*(v1 + 12) == 1)
  {
    v2 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = v1;
      _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - ProcessStateMonitor::suspendTimerFired", &v3, 0xCu);
    }

    return WebKit::ProcessStateMonitor::processWillBeSuspendedImmediately(v1);
  }

  return result;
}

void WebKit::Daemon::Coder<WebCore::CertificateInfo,void>::encode(uint64_t a1)
{
  v2 = SecTrustSerialize();
  if (v2)
  {
    v3 = v2;
    __src = 1;
    WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &__src, 1uLL);
    Length = CFDataGetLength(v3);
    WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &Length, 8uLL);
    BytePtr = CFDataGetBytePtr(v3);
    v5 = CFDataGetLength(v3);
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(0xC471u);
    }

    else
    {
      WebKit::Daemon::Encoder::encodeFixedLengthData(a1, BytePtr, v5);
      CFRelease(v3);
    }
  }

  else
  {
    v6 = 0;
    WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &v6, 1uLL);
  }
}

void WebKit::Daemon::Coder<WebCore::CertificateInfo,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 == v4)
  {
    goto LABEL_2;
  }

  if (v3 >= v4)
  {
    v5 = *a1;
    v6 = *(*a1 + v4);
    v7 = v4 + 1;
    a1[2] = v4 + 1;
    if ((v6 & 1) == 0)
    {
      *a2 = 0;
LABEL_10:
      *(a2 + 8) = 1;
      return;
    }

    if (v3 - v7 < 8)
    {
LABEL_2:
      *a2 = 0;
      *(a2 + 8) = 0;
      return;
    }

    if (v3 >= v7)
    {
      v8 = *(v5 + v7);
      v9 = v4 + 9;
      a1[2] = v9;
      if (v3 - v9 < v8)
      {
        v10 = 0;
        v11 = 0;
LABEL_16:
        if (v11 != v8)
        {
          goto LABEL_2;
        }

        v12 = CFDataCreate(0, v10, v8);
        v13 = SecTrustDeserialize();
        if (v12)
        {
          CFRelease(v12);
        }

        if (!v13)
        {
          goto LABEL_2;
        }

        *a2 = v13;
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
        if (v8 == -1)
        {
          v11 = v3 - v9;
        }

        else
        {
          v11 = v8;
        }

        v10 = (v5 + v9);
        a1[2] = v8 + v9;
        goto LABEL_16;
      }
    }
  }

  __break(1u);
}

uint64_t WebKit::Daemon::Coder<WebCore::PrivateClickMeasurement,void>::encode(uint64_t a1, uint64_t a2)
{
  LOBYTE(v10[0]) = *a2;
  WebKit::Daemon::Encoder::encodeFixedLengthData(a1, v10, 1uLL);
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(a1, (a2 + 8));
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(a1, (a2 + 16));
  v10[0] = *(a2 + 24);
  WebKit::Daemon::Encoder::encodeFixedLengthData(a1, v10, 8uLL);
  LOBYTE(v10[0]) = *(a2 + 32);
  WebKit::Daemon::Encoder::encodeFixedLengthData(a1, v10, 1uLL);
  v4 = *(a2 + 48);
  v10[0] = *(a2 + 40);
  LOBYTE(v10[1]) = v4;
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<WebKit::Daemon::Encoder,std::optional<unsigned long long>>(a1, v10);
  IPC::ArgumentCoder<std::optional<WebCore::PCM::AttributionTriggerData>,void>::encode<WebKit::Daemon::Encoder,std::optional<WebCore::PCM::AttributionTriggerData> const&>(a1, (a2 + 56));
  v5 = *(a2 + 208);
  *v10 = *(a2 + 192);
  v11 = v5;
  IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::encode<WebKit::Daemon::Encoder,std::optional<WTF::WallTime> const&>(a1, v10);
  IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::encode<WebKit::Daemon::Encoder,std::optional<WTF::WallTime> const&>(a1, &v11);
  LOBYTE(v10[0]) = 0;
  LOBYTE(v10[1]) = 0;
  if (*(a2 + 232) == 1)
  {
    v6 = *(a2 + 224);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v10[0] = v6;
    LOBYTE(v10[1]) = 1;
  }

  IPC::ArgumentCoder<std::optional<WebCore::PCM::EphemeralNonce>,void>::encode<WebKit::Daemon::Encoder,std::optional<WebCore::PCM::EphemeralNonce>>(a1, v10);
  if (LOBYTE(v10[1]) == 1)
  {
    v8 = v10[0];
    v10[0] = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }
  }

  return WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(a1, (a2 + 304));
}

void WebKit::Daemon::Coder<WebCore::PrivateClickMeasurement,void>::decode(uint64_t *a1@<X0>, WTF::StringImpl *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1[1];
  v6 = a1[2];
  if (v7 == v6)
  {
    goto LABEL_31;
  }

  if (v7 < v6)
  {
    goto LABEL_145;
  }

  v3 = a1;
  v8 = *(*a1 + v6);
  a1[2] = v6 + 1;
  v111 = v8 | 0x100;
  LOBYTE(v109) = 0;
  v110 = 0;
  v60[0] = 0;
  v60[8] = 0;
  WebKit::Daemon::Decoder::operator>><WebCore::RegistrableDomain>(a1, v60);
  v10 = v60[8];
  if (v60[8])
  {
    v11 = *v60;
  }

  else
  {
    v11 = 0;
  }

  if (v110 == v60[8])
  {
    if (v110)
    {
      v12 = v109;
      v109 = v11;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }
  }

  else
  {
    if (!v110)
    {
      v109 = v11;
      v110 = 1;
      goto LABEL_22;
    }

    v13 = v109;
    v109 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }

    v110 = 0;
  }

  if (v10 && v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v12 = v11;
LABEL_20:
    WTF::StringImpl::destroy(v12, v9);
  }

LABEL_22:
  if (v110 != 1)
  {
LABEL_31:
    *a3 = 0;
    *(a3 + 312) = 0;
    return;
  }

  LOBYTE(v107) = 0;
  v108 = 0;
  v60[0] = 0;
  v60[8] = 0;
  WebKit::Daemon::Decoder::operator>><WebCore::RegistrableDomain>(v3, v60);
  v14 = v60[8];
  if (v60[8])
  {
    v4 = *v60;
  }

  else
  {
    v4 = 0;
  }

  if (v108 == v60[8])
  {
    if (v108)
    {
      v15 = v107;
      v107 = v4;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        goto LABEL_42;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (!v108)
    {
      v107 = v4;
      v108 = 1;
      goto LABEL_44;
    }

    v16 = v107;
    v107 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, a2);
    }

    v108 = 0;
  }

  if (v14 && v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v15 = v4;
LABEL_42:
    WTF::StringImpl::destroy(v15, a2);
  }

LABEL_44:
  if (v108 == 1)
  {
    v17 = v3[1];
    v18 = v3[2];
    if (v17 - v18 < 8)
    {
      goto LABEL_50;
    }

    if (v17 < v18)
    {
      goto LABEL_145;
    }

    v19 = *v3;
    v20 = *(*v3 + v18);
    v3[2] = v18 + 8;
    v105 = v20;
    v106 = 1;
    if (v17 == v18 + 8)
    {
      goto LABEL_50;
    }

    if (v17 < v18 + 8)
    {
      goto LABEL_145;
    }

    v21 = *(v19 + v18 + 8);
    v3[2] = v18 + 9;
    v104 = v21 | 0x100;
    if (v17 == v18 + 9)
    {
      goto LABEL_50;
    }

    if (v17 < v18 + 9)
    {
      goto LABEL_145;
    }

    v24 = *(v19 + v18 + 9);
    v25 = v18 + 10;
    v3[2] = v18 + 10;
    if (v24)
    {
      if (v17 - v25 < 8)
      {
LABEL_50:
        *a3 = 0;
        *(a3 + 312) = 0;
LABEL_51:
        v22 = v107;
        v107 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, a2);
        }

        goto LABEL_55;
      }

      if (v17 < v25)
      {
        goto LABEL_145;
      }

      v26 = *(v19 + v25);
      v25 = v18 + 18;
      v3[2] = v18 + 18;
      v27 = 1;
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    v4 = &v112;
    *&v102 = v26;
    BYTE8(v102) = v27;
    v103 = 1;
    LOBYTE(v86) = 0;
    v101 = 0;
    if (v17 != v25)
    {
      if (v17 < v25)
      {
        goto LABEL_145;
      }

      v28 = *(v19 + v25);
      v3[2] = v25 + 1;
      if (v28)
      {
        WebKit::Daemon::Coder<WebCore::PCM::AttributionTriggerData,void>::decode(v3, &v112);
        if (v123 == 1)
        {
          *v60 = v112;
          v60[2] = BYTE2(v112);
          v60[8] = 0;
          v60[16] = 0;
          if (v113 != 1)
          {
            goto LABEL_71;
          }

          goto LABEL_146;
        }

        v34 = 0;
        v60[0] = 0;
        v69 = 0;
        goto LABEL_116;
      }

      v60[0] = 0;
      v68 = 0;
      v69 = 1;
      LOBYTE(v86) = 0;
      v100 = 0;
      goto LABEL_81;
    }

    v60[0] = 0;
    v69 = 0;
    while (1)
    {
      if (v69 == 1 && v68 == 1)
      {
        WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(v60, a2);
      }

      if (v101 != 1)
      {
        *a3 = 0;
        *(a3 + 312) = 0;
        goto LABEL_132;
      }

      IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::decode<WebKit::Daemon::Decoder>(v60, v3);
      v37 = *&v60[1];
      if (v60[16] & 1) != 0 && (v38 = v60[0], IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::decode<WebKit::Daemon::Decoder>(v60, v3), (v60[16]))
      {
        v35 = v60[0];
        v36 = *&v60[1];
        v39 = 1;
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }

      LOBYTE(v112) = v38;
      *(v4 + 1) = v37;
      v113 = v35;
      *(v4 + 17) = v36;
      v115 = v39;
      if (!v39)
      {
        *a3 = 0;
        *(a3 + 312) = 0;
        goto LABEL_130;
      }

      LOBYTE(v83) = 0;
      v85 = 0;
      WebKit::Daemon::Decoder::operator>><std::optional<WebCore::PCM::EphemeralNonce>>(v3, &v83);
      if (v85 != 1)
      {
        *a3 = 0;
        *(a3 + 312) = 0;
        goto LABEL_129;
      }

      LOBYTE(v81) = 0;
      v82 = 0;
      WebKit::Daemon::Decoder::operator>><WTF::String>(v3, &v81);
      if (v82 != 1)
      {
        *a3 = 0;
        *(a3 + 312) = 0;
        goto LABEL_124;
      }

      if (v111 & 0x100) != 0 && (v110 & 1) != 0 && (v108 & 1) != 0 && (v106 & 1) != 0 && (v104 & 0x100) != 0 && (v103 & 1) != 0 && (v101 & 1) != 0 && (v115 & 1) != 0 && (v85)
      {
        break;
      }

LABEL_145:
      __break(1u);
LABEL_146:
      v56 = *(&v112 + 1);
      *(&v112 + 1) = 0;
      *&v60[8] = v56;
      v60[16] = 1;
LABEL_71:
      v61[0] = 0;
      v61[8] = 0;
      if (v115 == 1)
      {
        v29 = v114;
        v114 = 0;
        *v61 = v29;
        v61[8] = 1;
      }

      v61[16] = 0;
      v61[24] = 0;
      if (v117 == 1)
      {
        v57 = v116;
        v116 = 0;
        *&v61[16] = v57;
        v61[24] = 1;
      }

      LOBYTE(v62) = 0;
      v64 = 0;
      if (v118 == 1)
      {
        v30 = *(v4 + 14);
        *(v4 + 14) = 0u;
        v62 = v30;
        v31 = *(v4 + 18);
        *(v4 + 18) = 0u;
        v63 = v31;
        v64 = 1;
      }

      LOBYTE(v65) = 0;
      v67 = 0;
      if (v122 == 1)
      {
        v32 = *(v4 + 6);
        v119 = 0;
        v120 = 0;
        v65 = v32;
        v33 = v121;
        v121 = 0;
        v66 = v33;
        v67 = 1;
      }

      v34 = 1;
      v68 = 1;
      v69 = 1;
      WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v112, a2);
LABEL_116:
      if (v101 == v34)
      {
        if (v101)
        {
          std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::AttributionTriggerData,false>>(&v86, v60);
        }
      }

      else if (v101)
      {
        if (v100 == 1)
        {
          WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v86, a2);
        }

        v101 = 0;
      }

      else
      {
        v100 = 0;
        v86 = *v60;
        v87 = v60[2];
        LOBYTE(v88) = 0;
        v89 = 0;
        if (v60[16] == 1)
        {
          v58 = *&v60[8];
          *&v60[8] = 0;
          v88 = v58;
          v89 = 1;
        }

        LOBYTE(v90) = 0;
        v91 = 0;
        if (v61[8] == 1)
        {
          v51 = *v61;
          *v61 = 0;
          v90 = v51;
          v91 = 1;
        }

        LOBYTE(v92) = 0;
        v93 = 0;
        if (v61[24] == 1)
        {
          v59 = *&v61[16];
          *&v61[16] = 0;
          v92 = v59;
          v93 = 1;
        }

        LOBYTE(v94) = 0;
        v96 = 0;
        if (v64 == 1)
        {
          v52 = v62;
          v62 = 0u;
          v94 = v52;
          v53 = v63;
          v63 = 0u;
          v95 = v53;
          v96 = 1;
        }

        LOBYTE(v97) = 0;
        v99 = 0;
        if (v67 == 1)
        {
          v54 = v65;
          v65 = 0uLL;
          v97 = v54;
          v55 = v66;
          v66 = 0;
          v98 = v55;
          v99 = 1;
        }

        v100 = 1;
LABEL_81:
        v101 = 1;
      }
    }

    WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v60, &v111, &v109, &v107, &v105, &v104, &v102, &v86, &v112, &v83, &v81);
    *a3 = v60[0];
    v41 = *&v60[8];
    *&v60[8] = 0uLL;
    *(a3 + 8) = v41;
    *(a3 + 24) = *v61;
    *(a3 + 33) = *&v61[9];
    *(a3 + 56) = 0;
    *(a3 + 184) = 0;
    if (v70 == 1)
    {
      std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(a3 + 56, &v62);
    }

    v42 = v72;
    *(a3 + 192) = v71;
    *(a3 + 208) = v42;
    *(a3 + 224) = 0;
    *(a3 + 232) = 0;
    if (v74 == 1)
    {
      v43 = v73;
      v73 = 0;
      *(a3 + 224) = v43;
      *(a3 + 232) = 1;
    }

    v44 = v75;
    v45 = v76;
    v75 = 0u;
    v76 = 0u;
    *(a3 + 240) = v44;
    *(a3 + 256) = v45;
    *(a3 + 272) = 0;
    *(a3 + 296) = 0;
    if (v79 == 1)
    {
      v46 = v77;
      v77 = 0uLL;
      *(a3 + 272) = v46;
      v47 = v78;
      v78 = 0;
      *(a3 + 288) = v47;
      *(a3 + 296) = 1;
    }

    v48 = v80;
    v80 = 0;
    *(a3 + 304) = v48;
    *(a3 + 312) = 1;
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v60, v40);
    if (v82)
    {
      v49 = v81;
      v81 = 0;
      if (v49)
      {
        if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v49, a2);
        }
      }
    }

LABEL_124:
    if ((v85 & 1) != 0 && v84 == 1)
    {
      v50 = v83;
      v83 = 0;
      if (v50)
      {
        if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v50, a2);
        }
      }
    }

LABEL_129:
    if ((v101 & 1) == 0)
    {
      goto LABEL_132;
    }

LABEL_130:
    if (v100 == 1)
    {
      WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v86, a2);
    }

LABEL_132:
    if ((v108 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  *a3 = 0;
  *(a3 + 312) = 0;
LABEL_55:
  if (v110)
  {
    v23 = v109;
    v109 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, a2);
      }
    }
  }
}