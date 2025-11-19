void sub_19D84E0FC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, WTF *a54, uint64_t a55, WTF *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x200] = 0;
    LODWORD(STACK[0x208]) = 0;
    WTF::fastFree(v73, a2);
  }

  v74 = a71;
  if (a71)
  {
    a71 = 0;
    a72 = 0;
    WTF::fastFree(v74, a2);
  }

  WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a69, a2);
  WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a67, v75);
  if (LOBYTE(STACK[0x2D8]) == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x2C8], v76);
  }

  _Unwind_Resume(a1);
}

uint64_t WebCore::ScrollingStateScrollingNode::operator new(WebCore::ScrollingStateScrollingNode *this, void *a2)
{
  if (*MEMORY[0x1E69E26F0])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E26F0], a2);
  }

  else
  {
    return MEMORY[0x1EEE59890](544);
  }
}

void WebCore::LayerRepresentation::~LayerRepresentation(WebCore::LayerRepresentation **this, void *a2)
{
  if (*(this + 8) == 2)
  {
    WebCore::LayerRepresentation::releasePlatformLayer(this[1], a2);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    if (*(v3 + 2) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    else
    {
      --*(v3 + 2);
    }
  }
}

void sub_19D84E470(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 16))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 12);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = *a2 + 16 * *(*a2 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      result = IPC::Encoder::operator<<<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> const&>(a1, v6);
      do
      {
        v6 += 2;
        if (v6 == v8)
        {
          break;
        }
      }

      while (*v6 == 0 || v6[1] == -1);
    }

    while (v6 != v9);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v1 - 12))
  {
    return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::makeConstIterator(a1, v1);
  }

  return v1 + 16 * *(v1 - 4);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::makeConstIterator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 + 16 * v4;
  if (v5 != a2)
  {
    while (*a2 == 0 || *(a2 + 8) == -1)
    {
      a2 += 16;
      if (a2 == v5)
      {
        return v3 + 16 * v4;
      }
    }
  }

  return a2;
}

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    LODWORD(v7) = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v7 = v7;
    v12 = v6;
    do
    {
      if (v12[1] != -1 && *v12 != 0)
      {
        v13 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookupForReinsert(a1, v12);
        *v13 = *v12;
        if (v12 == a3)
        {
          v11 = v13;
        }
      }

      v12 += 2;
      --v7;
    }

    while (v7);
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

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, void *a2)
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

  v4 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v5 = 0;
  do
  {
    v6 = (v2 + 16 * (v4 & v3));
    v4 = ++v5 + (v4 & v3);
  }

  while (*v6 != 0);
  return v6;
}

uint64_t IPC::ArgumentCoder<WebCore::RenderingMode,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v5;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 4)
  {
LABEL_8:
    v2 = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>> const&,0ul>(a1, a2, a3);
  }

  else if (*(a2 + 16))
  {
    mpark::throw_bad_variant_access(a1);
  }
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>> const&,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    IPC::VectorArgumentCoder<false,WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  }

  else
  {

    IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>> const&,0ul,1ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>> const&,0ul,1ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 16) != 2)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<void const*,void>::encode(result, v4);
  }

  return result;
}

void IPC::VectorArgumentCoder<false,WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v4 = *(a2 + 12);
  if (v4)
  {
    v5 = *a2;
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      IPC::ArgumentCoder<__SecCertificate *,void>::encode(a1, v7);
      v6 -= 8;
    }

    while (v6);
  }
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>, __n128 a3@<Q0>)
{
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= v6 - *a1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36)
    {
      if (v5)
      {
        (*(*v36 + 16))(v36);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_48;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_48:
    *a1 = 0;
    *(a1 + 1) = 0;
    v37 = *(a1 + 3);
    if (v37 && v5)
    {
      (*(*v37 + 16))(v37);
    }

    goto LABEL_4;
  }

  v8 = *v6;
  if (v8 >= 3)
  {
LABEL_4:
    *a2 = 0;
    a2[24] = 0;
    return;
  }

  if (!*v6)
  {
    *a2 = 0;
    a2[16] = 0;
    goto LABEL_28;
  }

  if (v8 != 1)
  {
    IPC::Decoder::decode<WTF::RetainPtr<void const*>>(a1, cf);
    if ((cf[1] & 1) == 0)
    {
      v24 = 0;
      *a2 = 0;
      goto LABEL_30;
    }

    *a2 = cf[0];
    a2[16] = 2;
LABEL_28:
    v24 = 1;
LABEL_30:
    a2[24] = v24;
    return;
  }

  v9 = v6 & 0xFFFFFFFFFFFFFFF8;
  v10 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v5 < v10 - v7 || v5 - (v10 - v7) <= 7)
  {
    v38 = 0;
    v39 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (v40)
    {
      (*(*v40 + 16))(v40);
      v39 = *a1;
      v38 = *(a1 + 1);
    }

LABEL_53:
    *a1 = 0;
    *(a1 + 1) = 0;
    v41 = *(a1 + 3);
    if (v41 && v38)
    {
      (*(*v41 + 16))(v41, v39, v38);
    }

LABEL_40:
    v33 = *a1;
    v34 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35)
    {
      if (v34)
      {
        (*(*v35 + 16))(v35, v33);
      }
    }

    v22 = 0;
    *a2 = 0;
    goto LABEL_42;
  }

  *(a1 + 2) = v9 + 16;
  if (!v10)
  {
    v38 = v5;
    v39 = v7;
    goto LABEL_53;
  }

  v12 = *v10;
  v45 = 0uLL;
  if (v12 < 0x20000)
  {
    if (!v12)
    {
      goto LABEL_24;
    }

    v45.n128_u32[2] = v12;
    v45.n128_u64[0] = WTF::fastMalloc((8 * v12));
    while (1)
    {
      IPC::Decoder::decode<WTF::RetainPtr<__SecCertificate *>>(cf, a1);
      if ((cf[1] & 1) == 0)
      {
        goto LABEL_39;
      }

      v13 = v45.n128_u32[3];
      if (v45.n128_u32[3] != v45.n128_u32[2])
      {
        break;
      }

      v14 = WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v45, v45.n128_u32[3] + 1, cf);
      v15 = v45.n128_u32[3];
      v16 = v45.n128_u32[3] + 1;
      v17 = v45.n128_u64[0];
      v18 = *v14;
      *v14 = 0;
      *(v17 + 8 * v15) = v18;
      v45.n128_u32[3] = v16;
      if (cf[1])
      {
        goto LABEL_21;
      }

LABEL_23:
      if (!--v12)
      {
        goto LABEL_24;
      }
    }

    v19 = cf[0];
    cf[0] = 0;
    *(v45.n128_u64[0] + 8 * v45.n128_u32[3]) = v19;
    v45.n128_u32[3] = v13 + 1;
LABEL_21:
    v20 = cf[0];
    cf[0] = 0;
    if (v20)
    {
      CFRelease(v20);
    }

    goto LABEL_23;
  }

  do
  {
    IPC::Decoder::decode<WTF::RetainPtr<__SecCertificate *>>(cf, a1);
    if ((cf[1] & 1) == 0)
    {
LABEL_39:
      WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v7);
      goto LABEL_40;
    }

    v25 = v45.n128_u32[3];
    if (v45.n128_u32[3] == v45.n128_u32[2])
    {
      v26 = WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v45, v45.n128_u32[3] + 1, cf);
      v27 = v45.n128_u32[3];
      v28 = v45.n128_u32[3] + 1;
      v29 = v45.n128_u64[0];
      v30 = *v26;
      *v26 = 0;
      *(v29 + 8 * v27) = v30;
      v45.n128_u32[3] = v28;
      if ((cf[1] & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v31 = cf[0];
      cf[0] = 0;
      *(v45.n128_u64[0] + 8 * v45.n128_u32[3]) = v31;
      v45.n128_u32[3] = v25 + 1;
    }

    v32 = cf[0];
    cf[0] = 0;
    if (v32)
    {
      CFRelease(v32);
    }

LABEL_37:
    --v12;
  }

  while (v12);
  WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v45, v45.n128_u32[3]);
LABEL_24:
  a3.n128_u64[0] = 0;
  v21 = v45;
  v42 = a3;
  v45 = a3;
  v22 = 1;
  v44 = 1;
  WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v7);
  *cf = v42;
  *a2 = v21;
  a2[16] = 1;
  WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(cf, v23);
LABEL_42:
  a2[24] = v22;
}

void sub_19D84ECA0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf, char a13, uint64_t a14, char a15)
{
  if (a13 == 1)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a15, a2);
  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WTF::RetainPtr<__SecCertificate *>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::RetainPtr<__SecCertificate *>,void>::decode(a2, a1);
  if ((*(a1 + 8) & 1) == 0)
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

unint64_t WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 12) <= a3)
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

    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
          CFRelease(v12);
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

void WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) > a2)
  {
    if (*(a1 + 12) > a2)
    {
      WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, a2);
    }

    v4 = *a1;
    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        return;
      }

      v5 = *(a1 + 12);
      v6 = WTF::fastMalloc((8 * a2));
      *(a1 + 8) = a2;
      *a1 = v6;
      if (v6 != v4 && v5)
      {
        v7 = v6;
        v8 = 8 * v5;
        v9 = v4;
        do
        {
          v10 = *v9;
          *v9 = 0;
          *v7 = v10;
          v11 = *v9;
          *v9 = 0;
          if (v11)
          {
            CFRelease(v11);
          }

          ++v7;
          v9 = (v9 + 8);
          v8 -= 8;
        }

        while (v8);
      }
    }

    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v4, a2);
    }
  }
}

void WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    if (v2 != a2)
    {
      v5 = (*a1 + 8 * a2);
      v6 = 8 * v2 - 8 * a2;
      do
      {
        v7 = *v5;
        *v5 = 0;
        if (v7)
        {
          CFRelease(v7);
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    *(a1 + 12) = v3;
  }
}

void IPC::Decoder::decode<WTF::RetainPtr<void const*>>(void *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RetainPtr<void const*>,void>::decode(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
  {
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 48 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebsiteData::Entry,void>::encode(a1, v6);
      v6 += 48;
      v7 -= 48;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::WebsiteData::Entry>(uint64_t a1, IPC::Decoder *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::SecurityOriginData>(a2, &v22);
  result = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a2);
  v6 = *a2;
  if (*a2)
  {
    if ((result & 0x100000000) == 0)
    {
      goto LABEL_32;
    }

    if ((result ^ (result - 1)) > result - 1)
    {
      v5 = *(a2 + 1);
      v7 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v5 < v7 - v6 || v5 - (v7 - v6) <= 7)
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          goto LABEL_33;
        }

        v5 = 0;
LABEL_20:
        v6 = 0;
        goto LABEL_21;
      }

      *(a2 + 2) = v7 + 1;
      if (v7)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_32;
        }

        v9 = *v7;
        LOBYTE(v18) = 0;
        v20 = -1;
        v10 = v24;
        if (v24)
        {
          if (v24 == 255)
          {
            *(&v21 + 1) = v9;
            LODWORD(v21) = result;
            *a1 = 0;
            *(a1 + 24) = -1;
            goto LABEL_14;
          }

          v15 = v22;
          v18 = v22;
          v20 = v24;
          *(&v21 + 1) = v9;
          LODWORD(v21) = result;
          *(a1 + 24) = -1;
          v12 = (a1 + 24);
          *a1 = v15;
        }

        else
        {
          v11 = v23;
          v19 = v23;
          v20 = 0;
          *(&v21 + 1) = v9;
          LODWORD(v21) = result;
          *(a1 + 24) = -1;
          v12 = (a1 + 24);
          v18 = 0u;
          v13 = v22;
          v22 = 0u;
          *a1 = v13;
          *(a1 + 16) = v11;
        }

        *v12 = v10;
LABEL_14:
        *(a1 + 32) = v21;
        v14 = 1;
        *(a1 + 48) = 1;
        result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v18);
        goto LABEL_23;
      }

LABEL_21:
      while (1)
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (!result)
        {
          break;
        }

        if (!v5)
        {
          break;
        }

        result = (*(*result + 16))(result, v6);
        if (!*a2)
        {
          break;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        if (!v5)
        {
          goto LABEL_20;
        }

        (*(*result + 16))(result);
        v6 = *a2;
        v5 = *(a2 + 1);
      }
    }
  }

  v14 = 0;
  *a1 = 0;
  *(a1 + 48) = 0;
LABEL_23:
  if (v25 == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v22);
  }

  if ((v14 & 1) == 0)
  {
    v16 = *a2;
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v17)
      {
        return (*(*result + 16))(result, v16);
      }
    }
  }

  return result;
}

void sub_19D84F3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  *(mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor((*a1 + 48 * *(a1 + 12))) + 2) = *(v3 + 32);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19D84F5BCLL);
    }

    v3 = *a1;
    v4 = *a1 + 48 * *(a1 + 12);
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(a1 + 8) = v5 / 0x30;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::WebsiteData::Entry>::move(v3, v4, v6);
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

uint64_t WTF::VectorMover<false,WebKit::WebsiteData::Entry>::move(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor(a3);
      *(a3 + 32) = *(v5 + 32);
      result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v5);
      a3 += 48;
      v5 += 48;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 48 * v3;
    do
    {
      v6 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v6) + 48;
      v7 -= 48;
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

void *WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D84F6B8(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 56 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebGPU::BindGroupEntry,void>::encode(a1, v6);
      v6 += 56;
      v7 -= 56;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (*(result + 8) >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 12);
    v5 = *(result + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *result += v4;
      *(result + 8) = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 8) = 0;
LABEL_5:
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    v10 = 56 * v8;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebGPU::BindGroupEntry,void>::encode(v2, v9);
      v9 += 56;
      v10 -= 56;
    }

    while (v10);
  }

  return result;
}

unint64_t IPC::Decoder::decode<WebKit::WebGPU::BindGroupEntry>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = a2[1];
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 3)
  {
    a2[2] = (v4 + 1);
    if (v4)
    {
      v8 = *v4 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    v34 = a2[3];
    if (!v34)
    {
      v6 = 0;
LABEL_41:
      v5 = 0;
      goto LABEL_42;
    }

    if (!v6)
    {
      goto LABEL_41;
    }

    (*(*v34 + 16))(v34);
    v5 = *a2;
    v6 = a2[1];
  }

LABEL_42:
  *a2 = 0;
  a2[1] = 0;
  v35 = a2[3];
  if (v35 && v6)
  {
    (*(*v35 + 16))(v35, v5);
  }

  v8 = 0;
LABEL_8:
  i = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v11 = v10;
  v12 = a2[1];
  v13 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13 - *a2;
  v15 = v12 >= v14;
  v16 = v12 - v14;
  if (!v15 || v16 <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v32 = a2[3];
    if (v32)
    {
      if (v12)
      {
        (*(*v32 + 16))(v32);
        v12 = a2[1];
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_37;
  }

  a2[2] = (v13 + 1);
  if (!v13)
  {
LABEL_37:
    *a2 = 0;
    a2[1] = 0;
    v33 = a2[3];
    if (v33 && v12)
    {
      (*(*v33 + 16))(v33);
    }

    v19 = 0;
    v18 = 0;
    goto LABEL_15;
  }

  v18 = *v13;
  v19 = 1;
LABEL_15:
  IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v47);
  v20 = *a2;
  if (!*a2)
  {
    goto LABEL_31;
  }

  if ((v11 & 1) == 0 || (v19 & 1) == 0 || (v49 & 1) == 0)
  {
    goto LABEL_30;
  }

  v45 = v47;
  v46 = v48;
  v21 = i & 0xFFFFFFFFFFFFFF00;
  for (i = i; ; i = 0)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    v24 = v23;
    v25 = a2[1];
    v26 = a2[2];
    v27 = *a2;
    if (v25 <= &v26[-*a2])
    {
      break;
    }

    a2[2] = (v26 + 1);
    if (!v26)
    {
      v42 = result;
      v43 = v24;
      goto LABEL_47;
    }

    v28 = *v26;
    if (v28 >= 4)
    {
      goto LABEL_51;
    }

    v29 = v28 | 0x100;
    if (!v27)
    {
      goto LABEL_52;
    }

LABEL_24:
    if ((v8 & 0x100000000) != 0 && v20 && (v24 & 1) != 0 && v29 > 0xFF)
    {
      *a1 = v8;
      *(a1 + 8) = i | v21;
      *(a1 + 16) = v18;
      *(a1 + 24) = v45;
      *(a1 + 32) = v46;
      *(a1 + 40) = result;
      *(a1 + 48) = v29;
      *(a1 + 56) = 1;
      return result;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    v30 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v31 = a2[3];
    if (v31)
    {
      if (v30)
      {
        (*(*v31 + 16))(v31, 0);
      }
    }

    v21 = 0;
  }

  v42 = result;
  v43 = v24;
  *a2 = 0;
  a2[1] = 0;
  v36 = a2[3];
  if (!v36)
  {
    v25 = 0;
LABEL_46:
    v27 = 0;
    goto LABEL_47;
  }

  if (!v25)
  {
    goto LABEL_46;
  }

  (*(*v36 + 16))(v36);
  v27 = *a2;
  v25 = a2[1];
LABEL_47:
  *a2 = 0;
  a2[1] = 0;
  v37 = a2[3];
  if (v37)
  {
    if (v25)
    {
      (*(*v37 + 16))(v37, v27);
      v27 = *a2;
      v25 = a2[1];
      goto LABEL_50;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = 0;
LABEL_50:
  result = v42;
  v24 = v43;
LABEL_51:
  *a2 = 0;
  a2[1] = 0;
  v38 = a2[3];
  if (v38)
  {
    v44 = v24;
    if (v25)
    {
      v41 = result;
      (*(*v38 + 16))(v38, v27);
      v29 = 0;
      result = v41;
      v24 = v44;
      if (*a2)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_52:
  *a1 = 0;
  *(a1 + 56) = 0;
  v39 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v39)
  {
    v40 = *(*result + 16);

    return v40();
  }

  return result;
}

unint64_t WTF::Vector<WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 56 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x4924925)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 56 * a2;
    v6 = WTF::fastMalloc((56 * a2));
    *(v2 + 8) = v5 / 0x38;
    *v2 = v6;
    if (v4)
    {
      v8 = 56 * v4;
      v9 = v3;
      do
      {
        v10 = *v9;
        v11 = *(v9 + 1);
        v12 = *(v9 + 2);
        *(v6 + 48) = *(v9 + 6);
        *(v6 + 16) = v11;
        *(v6 + 32) = v12;
        *v6 = v10;
        v6 += 56;
        v9 = (v9 + 56);
        v8 -= 56;
      }

      while (v8);
    }

    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 48 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebGPU::BindGroupLayoutEntry,void>::encode(a1, v6);
      v6 += 48;
      v7 -= 48;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (*(result + 8) >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 12);
    v5 = *(result + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *result += v4;
      *(result + 8) = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 8) = 0;
LABEL_5:
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    v10 = 48 * v8;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebGPU::BindGroupLayoutEntry,void>::encode(v2, v9);
      v9 += 48;
      v10 -= 48;
    }

    while (v10);
  }

  return result;
}

WTF *IPC::VectorArgumentCoder<false,WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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
    v36 = a1[3];
    if (v36)
    {
      if (v4)
      {
        (*(*v36 + 16))(v36);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_40;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_40:
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
  v41 = 0;
  v42 = 0;
  if (v11 >= 0x5555)
  {
    do
    {
      result = IPC::Decoder::decode<WebKit::WebGPU::BindGroupLayoutEntry>(&v37, a1);
      if ((v40 & 1) == 0)
      {
        goto LABEL_33;
      }

      v24 = HIDWORD(v42);
      if (HIDWORD(v42) == v42)
      {
        result = WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v41, HIDWORD(v42) + 1, &v37);
        v24 = HIDWORD(v42);
        v25 = v41;
        v26 = (v41 + 48 * HIDWORD(v42));
        v27 = *(result + 2);
        v28 = *result;
        v26[1] = *(result + 1);
      }

      else
      {
        v25 = v41;
        v26 = (v41 + 48 * HIDWORD(v42));
        v27 = v39;
        v28 = v37;
        v26[1] = v38;
      }

      v26[2] = v27;
      *v26 = v28;
      v29 = (v24 + 1);
      HIDWORD(v42) = v29;
      --v11;
    }

    while (v11);
    if (v42 > v29)
    {
      if (!v29)
      {
        goto LABEL_31;
      }

      v30 = v25;
      if (v29 >= 0x5555556)
      {
        __break(0xC471u);
        return result;
      }

      v31 = 48 * v29;
      v15 = WTF::fastMalloc((48 * v29));
      LODWORD(v42) = v31 / 0x30;
      v41 = v15;
      v25 = v30;
      if (v15 == v30)
      {
        goto LABEL_31;
      }

      v32 = 0;
      do
      {
        v33 = (v15 + v32);
        v34 = *(v30 + v32);
        v35 = *(v30 + v32 + 32);
        v33[1] = *(v30 + v32 + 16);
        v33[2] = v35;
        *v33 = v34;
        v32 += 48;
      }

      while (v31 != v32);
      if (!v30)
      {
        goto LABEL_17;
      }

      v25 = v30;
      if (v15 == v30)
      {
LABEL_31:
        v41 = 0;
        LODWORD(v42) = 0;
      }

      WTF::fastFree(v25, v6);
      v15 = v41;
      goto LABEL_17;
    }

    v15 = v25;
  }

  else
  {
    if (v11)
    {
      LODWORD(v42) = 48 * v11 / 0x30u;
      v41 = WTF::fastMalloc((48 * v11));
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebGPU::BindGroupLayoutEntry>(&v37, a1);
        if ((v40 & 1) == 0)
        {
          break;
        }

        v12 = HIDWORD(v42);
        if (HIDWORD(v42) == v42)
        {
          v13 = WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v41, HIDWORD(v42) + 1, &v37);
          v14 = HIDWORD(v42);
          v15 = v41;
          v16 = (v41 + 48 * HIDWORD(v42));
          v17 = v13[2];
          v18 = *v13;
          v16[1] = v13[1];
          v16[2] = v17;
          *v16 = v18;
          v12 = v14;
        }

        else
        {
          v15 = v41;
          v19 = (v41 + 48 * HIDWORD(v42));
          v20 = v39;
          v21 = v37;
          v19[1] = v38;
          v19[2] = v20;
          *v19 = v21;
        }

        HIDWORD(v42) = v12 + 1;
        if (!--v11)
        {
          goto LABEL_17;
        }
      }

LABEL_33:
      *a2 = 0;
      *(a2 + 16) = 0;
      goto LABEL_34;
    }

    v15 = 0;
  }

LABEL_17:
  v41 = 0;
  *a2 = v15;
  v22 = v42;
  HIDWORD(v42) = 0;
  *(a2 + 8) = v22;
  *(a2 + 16) = 1;
LABEL_34:
  result = v41;
  if (v41)
  {
    v41 = 0;
    LODWORD(v42) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

void sub_19D8501CC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 - 48);
  if (v4)
  {
    *(v2 - 48) = 0;
    *(v2 - 40) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebKit::WebGPU::BindGroupLayoutEntry>(uint64_t result, uint64_t *a2)
{
  v4 = result;
  v5 = a2[1];
  v6 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *a2;
  v8 = v6 - *a2;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (v9 && v10 > 3)
  {
    v12 = (v6 + 1);
    a2[2] = (v6 + 1);
    if (v6)
    {
      v152 = *v6 | 0x100000000;
      v13 = v7;
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    v80 = a2[3];
    if (!v80)
    {
      v5 = 0;
LABEL_130:
      v7 = 0;
      goto LABEL_131;
    }

    if (!v5)
    {
      goto LABEL_130;
    }

    (*(*v80 + 16))(v80, v7);
    v7 = *a2;
    v5 = a2[1];
  }

LABEL_131:
  *a2 = 0;
  a2[1] = 0;
  v81 = a2[3];
  if (!v81 || !v5)
  {
    v152 = 0;
    v82 = 0;
    v13 = 0;
LABEL_133:
    *a2 = 0;
    a2[1] = 0;
    v83 = a2[3];
    if (v83 && v82)
    {
      (*(*v83 + 16))(v83, v13, v82);
      v13 = *a2;
      v5 = a2[1];
    }

    else
    {
      v5 = 0;
      v13 = 0;
    }

    goto LABEL_135;
  }

  result = (*(*v81 + 16))(v81, v7);
  v152 = 0;
  v13 = *a2;
  v5 = a2[1];
  v12 = a2[2];
  v7 = *a2;
LABEL_8:
  if (v5 <= &v12[-v13])
  {
    v82 = 0;
    v133 = a2[3];
    *a2 = 0;
    a2[1] = 0;
    if (v133 && v5)
    {
      (*(*v133 + 16))(v133);
      v13 = *a2;
      v82 = a2[1];
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_133;
  }

  v14 = v12 + 1;
  a2[2] = (v12 + 1);
  if (!v12)
  {
    v82 = v5;
    goto LABEL_133;
  }

  v15 = *v12;
  if (v15 < 8)
  {
    v151 = v15 | 0x100;
    goto LABEL_12;
  }

LABEL_135:
  *a2 = 0;
  a2[1] = 0;
  v84 = a2[3];
  if (!v84)
  {
    v151 = 0;
LABEL_137:
    v5 = 0;
LABEL_138:
    v13 = 0;
    goto LABEL_139;
  }

  if (!v5)
  {
    v151 = 0;
    goto LABEL_138;
  }

  result = (*(*v84 + 16))(v84, v13);
  v151 = 0;
  v13 = *a2;
  v5 = a2[1];
  v14 = a2[2];
  v7 = *a2;
LABEL_12:
  if (v5 <= &v14[-v13])
  {
    v134 = a2[3];
    *a2 = 0;
    a2[1] = 0;
    if (v134)
    {
      if (v5)
      {
        (*(*v134 + 16))(v134);
        v13 = *a2;
        v5 = a2[1];
        goto LABEL_139;
      }

      goto LABEL_138;
    }

    goto LABEL_137;
  }

  v16 = v14 + 1;
  a2[2] = (v14 + 1);
  if (!v14)
  {
LABEL_139:
    *a2 = 0;
    a2[1] = 0;
    v85 = a2[3];
    if (v85)
    {
      if (v5)
      {
        (*(*v85 + 16))(v85, v13);
        v13 = *a2;
        v5 = a2[1];
        goto LABEL_142;
      }
    }

    else
    {
      v5 = 0;
    }

    v13 = 0;
LABEL_142:
    *a2 = 0;
    a2[1] = 0;
    v86 = a2[3];
    if (v86 && v5)
    {
      (*(*v86 + 16))(v86, v13);
    }

    goto LABEL_143;
  }

  if (*v14 >= 2u)
  {
    goto LABEL_142;
  }

  if (!*v14)
  {
    LOBYTE(v19) = 0;
    v20 = 0;
    LOBYTE(v2) = 1;
    goto LABEL_37;
  }

  if (v5 <= &v16[-v13])
  {
    v99 = 0;
    v100 = 0;
    *a2 = 0;
    a2[1] = 0;
    v101 = a2[3];
    if (v101)
    {
      (*(*v101 + 16))(v101);
      v100 = *a2;
      v99 = a2[1];
    }

    goto LABEL_181;
  }

  v17 = v14 + 2;
  a2[2] = v17;
  if (!v16)
  {
    v99 = v5;
    v100 = v13;
LABEL_181:
    *a2 = 0;
    a2[1] = 0;
    v102 = a2[3];
    if (v102 && v99)
    {
      (*(*v102 + 16))(v102, v100, v99);
      v13 = *a2;
      v5 = a2[1];
    }

    else
    {
      v5 = 0;
      v13 = 0;
    }

    goto LABEL_183;
  }

  v18 = *v16;
  if (v18 < 3)
  {
    v19 = v18 | 0x100;
    goto LABEL_20;
  }

LABEL_183:
  *a2 = 0;
  a2[1] = 0;
  v103 = a2[3];
  if (!v103)
  {
    v19 = 0;
    goto LABEL_185;
  }

  if (!v5)
  {
    v19 = 0;
    goto LABEL_186;
  }

  result = (*(*v103 + 16))(v103, v13);
  v19 = 0;
  v13 = *a2;
  v5 = a2[1];
  v17 = a2[2];
  v7 = *a2;
LABEL_20:
  if (v5 <= &v17[-v13])
  {
    v136 = a2[3];
    *a2 = 0;
    a2[1] = 0;
    if (!v5)
    {
      goto LABEL_186;
    }

    if (v136)
    {
      (*(*v136 + 16))(v136);
      v13 = *a2;
      v5 = a2[1];
LABEL_187:
      *a2 = 0;
      a2[1] = 0;
      v104 = a2[3];
      if (v104)
      {
        if (v5)
        {
          (*(*v104 + 16))(v104, v13);
          v20 = 0;
          v13 = *a2;
          v5 = a2[1];
          goto LABEL_190;
        }
      }

      else
      {
        v5 = 0;
      }

      v13 = 0;
      v20 = 0;
      goto LABEL_190;
    }

LABEL_185:
    v5 = 0;
LABEL_186:
    v13 = 0;
    goto LABEL_187;
  }

  a2[2] = (v17 + 1);
  if (!v17)
  {
    goto LABEL_187;
  }

  v20 = *v17;
  if (v20 < 2)
  {
    v21 = 1;
    goto LABEL_24;
  }

LABEL_190:
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (!result)
  {
    v13 = 0;
    v5 = 0;
LABEL_192:
    v7 = 0;
    v21 = 0;
    goto LABEL_24;
  }

  if (!v5)
  {
    v13 = 0;
    goto LABEL_192;
  }

  result = (*(*result + 16))(result, v13);
  v21 = 0;
  v13 = *a2;
  v5 = a2[1];
  v7 = *a2;
LABEL_24:
  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v150 = v22;
  v23 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v5 < v23 - v7 || v5 - (v23 - v7) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v76 = a2[3];
    if (v76)
    {
      if (v5)
      {
        (*(*v76 + 16))(v76);
        v13 = *a2;
        v5 = a2[1];
        goto LABEL_122;
      }
    }

    else
    {
      v5 = 0;
    }

    v13 = 0;
  }

  else
  {
    a2[2] = (v23 + 1);
    if (v23)
    {
      v24 = *v23;
      v25 = 1;
      if (v7)
      {
        goto LABEL_31;
      }

LABEL_125:
      v78 = a2[1];
      v79 = a2[3];
      *a2 = 0;
      a2[1] = 0;
      if (v79 && v78)
      {
        (*(*v79 + 16))(v79);
      }

      goto LABEL_143;
    }
  }

LABEL_122:
  *a2 = 0;
  a2[1] = 0;
  v77 = a2[3];
  if (v77 && v5)
  {
    result = (*(*v77 + 16))(v77, v13);
    v25 = 0;
    v24 = 0;
    v7 = *a2;
    if (*a2)
    {
LABEL_31:
      if (v19 <= 0xFF || (v21 & 1) == 0 || (v25 & 1) == 0)
      {
        goto LABEL_218;
      }

      v149 = v24;
      LOBYTE(v2) = 1;
      goto LABEL_35;
    }

    goto LABEL_125;
  }

LABEL_143:
  v87 = *a2;
  v88 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (!result || !v88)
  {
    v7 = 0;
    LOBYTE(v2) = 0;
    LOBYTE(v19) = 0;
LABEL_35:
    v20 = 1;
    goto LABEL_37;
  }

  result = (*(*result + 16))(result, v87);
  LOBYTE(v2) = 0;
  LOBYTE(v19) = 0;
  v20 = 1;
  v7 = *a2;
LABEL_37:
  v5 = a2[1];
  v26 = a2[2];
  if (v5 <= &v26[-v7])
  {
    *a2 = 0;
    a2[1] = 0;
    v89 = a2[3];
    if (v89)
    {
      if (v5)
      {
        (*(*v89 + 16))(v89, v7);
        v7 = *a2;
        v5 = a2[1];
LABEL_156:
        *a2 = 0;
        a2[1] = 0;
        v90 = a2[3];
        if (v90)
        {
          if (v5)
          {
            (*(*v90 + 16))(v90, v7);
            v7 = *a2;
            v5 = a2[1];
LABEL_159:
            *a2 = 0;
            a2[1] = 0;
            v91 = a2[3];
            if (v91 && v5)
            {
              (*(*v91 + 16))(v91, v7);
            }

            v31 = 0;
            goto LABEL_208;
          }
        }

        else
        {
          v5 = 0;
        }

        v7 = 0;
        goto LABEL_159;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    goto LABEL_156;
  }

  v27 = v26 + 1;
  a2[2] = (v26 + 1);
  if (!v26)
  {
    goto LABEL_156;
  }

  if (*v26 >= 2u)
  {
    goto LABEL_159;
  }

  if (*v26)
  {
    if (v5 <= &v27[-v7])
    {
      v105 = 0;
      v106 = 0;
      *a2 = 0;
      a2[1] = 0;
      v107 = a2[3];
      if (v107)
      {
        (*(*v107 + 16))(v107, v7);
        v106 = *a2;
        v105 = a2[1];
      }
    }

    else
    {
      v28 = v26 + 2;
      a2[2] = (v26 + 2);
      if (v26 != -1)
      {
        v29 = *v27;
        if (v29 < 3)
        {
          if (v7)
          {
            v30 = 0x10000;
            LODWORD(v31) = 256;
            v27 = v28;
            goto LABEL_47;
          }

          goto LABEL_206;
        }

LABEL_203:
        *a2 = 0;
        a2[1] = 0;
        v109 = a2[3];
        if (v109)
        {
          if (v5)
          {
            result = (*(*v109 + 16))(v109, v7);
            v7 = *a2;
            if (*a2)
            {
              goto LABEL_218;
            }

            v5 = a2[1];
            goto LABEL_206;
          }
        }

        else
        {
          v5 = 0;
        }

        v7 = 0;
LABEL_206:
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          goto LABEL_219;
        }

        goto LABEL_207;
      }

      v105 = v5;
      v106 = v7;
    }

    *a2 = 0;
    a2[1] = 0;
    v108 = a2[3];
    if (v108 && v105)
    {
      (*(*v108 + 16))(v108, v106, v105);
      v7 = *a2;
      v5 = a2[1];
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    goto LABEL_203;
  }

  LODWORD(v31) = 0;
  LOWORD(v29) = 0;
  v30 = 0x10000;
LABEL_47:
  v32 = v29 | v31;
  v31 = v30 | v31;
  if (v5 <= &v27[-v7])
  {
    i = 0;
    v135 = a2[3];
    *a2 = 0;
    a2[1] = 0;
    if (v135 && v5)
    {
      (*(*v135 + 16))(v135, v7);
      v7 = *a2;
      i = a2[1];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_210;
  }

  v33 = v27 + 1;
  a2[2] = (v27 + 1);
  if (v27)
  {
    if (*v27 >= 2u)
    {
      goto LABEL_212;
    }

    if (!*v27)
    {
      v40 = 0;
      v39 = 0;
      goto LABEL_64;
    }

    if (v5 <= &v33[-v7])
    {
      v116 = 0;
      v117 = 0;
      *a2 = 0;
      a2[1] = 0;
      v118 = a2[3];
      if (v118)
      {
        (*(*v118 + 16))(v118, v7);
        v117 = *a2;
        v116 = a2[1];
      }
    }

    else
    {
      a2[2] = (v27 + 2);
      if (v27 != -1)
      {
        v34 = *v33;
        if (v34 < 5)
        {
          v35 = v34 | 0x100;
          goto LABEL_55;
        }

LABEL_229:
        *a2 = 0;
        a2[1] = 0;
        v120 = a2[3];
        if (v120 && v5)
        {
          (*(*v120 + 16))(v120, v7);
        }

        v35 = 0;
LABEL_55:
        result = IPC::Decoder::decode<WebCore::BackgroundFetchFailureReason>(a2);
        v5 = a2[1];
        v36 = a2[2];
        v37 = *a2;
        if (v5 <= &v36[-*a2])
        {
          v121 = v20;
          v122 = result;
          *a2 = 0;
          a2[1] = 0;
          v123 = a2[3];
          if (v123)
          {
            if (v5)
            {
              (*(*v123 + 16))(v123);
              v37 = *a2;
              v5 = a2[1];
              goto LABEL_236;
            }
          }

          else
          {
            v5 = 0;
          }

          v37 = 0;
        }

        else
        {
          a2[2] = (v36 + 1);
          if (v36)
          {
            v38 = *v36;
            if (v38 < 2)
            {
              v7 = 1;
              if (v37)
              {
                goto LABEL_59;
              }

              goto LABEL_289;
            }

            v121 = v20;
            v122 = result;
            goto LABEL_249;
          }

          v121 = v20;
          v122 = result;
        }

LABEL_236:
        *a2 = 0;
        a2[1] = 0;
        v124 = a2[3];
        if (v124)
        {
          if (v5)
          {
            (*(*v124 + 16))(v124, v37);
            v38 = 0;
            v37 = *a2;
            v5 = a2[1];
            goto LABEL_249;
          }
        }

        else
        {
          v5 = 0;
        }

        v37 = 0;
        v38 = 0;
LABEL_249:
        *a2 = 0;
        a2[1] = 0;
        v132 = a2[3];
        if (!v132 || !v5)
        {
          v40 = 0x1000000;
          v20 = v121;
          goto LABEL_291;
        }

        (*(*v132 + 16))(v132, v37);
        v7 = 0;
        v37 = *a2;
        result = v122;
        v20 = v121;
        if (*a2)
        {
LABEL_59:
          if (v35 > 0xFF && result > 0xFFu && (v7 & 1) != 0)
          {
            v39 = 0;
            v40 = (v35 | (result << 8)) | ((v38 != 0) << 16) | 0x1000000;
            v7 = v37;
            goto LABEL_64;
          }

          goto LABEL_218;
        }

LABEL_289:
        v137 = a2[1];
        v138 = a2[3];
        *a2 = 0;
        a2[1] = 0;
        if (v138 && v137)
        {
          (*(*v138 + 16))(v138);
        }

        v40 = 0x1000000;
        goto LABEL_291;
      }

      v116 = v5;
      v117 = v7;
    }

    *a2 = 0;
    a2[1] = 0;
    v119 = a2[3];
    if (v119 && v116)
    {
      (*(*v119 + 16))(v119, v117, v116);
      v7 = *a2;
      v5 = a2[1];
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    goto LABEL_229;
  }

  for (i = v5; ; i = 0)
  {
LABEL_210:
    *a2 = 0;
    a2[1] = 0;
    v114 = a2[3];
    if (v114 && i)
    {
      (*(*v114 + 16))(v114, v7, i);
      v7 = *a2;
      v5 = a2[1];
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

LABEL_212:
    *a2 = 0;
    a2[1] = 0;
    v115 = a2[3];
    if (v115 && v5)
    {
      (*(*v115 + 16))(v115, v7);
    }

    v40 = 0;
LABEL_291:
    v139 = *a2;
    v140 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v141 = v40;
      if (v140)
      {
        result = (*(*result + 16))(result, v139);
        v39 = 1;
        v7 = *a2;
      }

      else
      {
        v7 = 0;
        v39 = 1;
      }

      v40 = v141;
    }

    else
    {
      v7 = 0;
      v39 = 1;
    }

LABEL_64:
    v41 = a2[1];
    v42 = a2[2];
    if (v41 <= &v42[-v7])
    {
      v146 = v4;
      v142 = v39;
      v92 = v40;
      v49 = v19;
      *a2 = 0;
      a2[1] = 0;
      v93 = a2[3];
      if (v93)
      {
        if (v41)
        {
          (*(*v93 + 16))(v93, v7);
          v7 = *a2;
          v41 = a2[1];
          goto LABEL_164;
        }
      }

      else
      {
        v41 = 0;
      }

      v7 = 0;
    }

    else
    {
      v43 = v42 + 1;
      a2[2] = (v42 + 1);
      if (v42)
      {
        if (*v42 < 2u)
        {
          if (!*v42)
          {
            v49 = v19;
            LOBYTE(v19) = v2;
            v50 = 0;
            v2 = 0;
            goto LABEL_79;
          }

          v146 = v4;
          if (v41 <= &v43[-v7])
          {
            v4 = v31;
            v125 = v39;
            v126 = v40;
            v127 = 0;
            v128 = 0;
            *a2 = 0;
            a2[1] = 0;
            v129 = a2[3];
            if (v129)
            {
              (*(*v129 + 16))(v129, v7);
              v128 = *a2;
              v127 = a2[1];
            }
          }

          else
          {
            a2[2] = (v42 + 2);
            if (v42 != -1)
            {
              v44 = *v43;
              v4 = v31;
              if (v44 < 3)
              {
                v45 = v39;
                v46 = v40;
                v47 = v44 | 0x100;
LABEL_72:
                v48 = IPC::Decoder::decode<WebCore::WebGPU::TextureFormat>(a2);
                result = IPC::Decoder::decode<WebCore::BackgroundFetchFailureReason>(a2);
                if (*a2)
                {
                  if (v47 <= 0xFF)
                  {
                    goto LABEL_218;
                  }

                  if ((v48 & 0x100) == 0)
                  {
                    goto LABEL_218;
                  }

                  v7 = result;
                  if (result <= 0xFFu)
                  {
                    goto LABEL_218;
                  }

                  v40 = v46;
                  v39 = v45;
                  v49 = v19;
                  LOBYTE(v19) = v2;
                  v2 = 0;
                  v50 = (v47 | (v48 << 8)) | (result << 16) | 0x1000000;
                  v7 = *a2;
                  goto LABEL_77;
                }

                v58 = a2[1];
                *a2 = 0;
                a2[1] = 0;
                v59 = a2[3];
                v40 = v46;
                v39 = v45;
                if (v59)
                {
                  v70 = v46;
                  v49 = v19;
                  if (v58)
                  {
                    (*(*v59 + 16))(v59, 0);
                  }

                  v50 = 0x1000000;
                  v40 = v70;
                  v39 = v45;
                }

                else
                {
                  v49 = v19;
                  v50 = 0x1000000;
                }

                LODWORD(v31) = v4;
                goto LABEL_100;
              }

LABEL_244:
              v45 = v39;
              v46 = v40;
              *a2 = 0;
              a2[1] = 0;
              v131 = a2[3];
              if (v131 && v41)
              {
                (*(*v131 + 16))(v131, v7);
              }

              v47 = 0;
              goto LABEL_72;
            }

            v4 = v31;
            v125 = v39;
            v126 = v40;
            v127 = v41;
            v128 = v7;
          }

          *a2 = 0;
          a2[1] = 0;
          v130 = a2[3];
          if (v130 && v127)
          {
            (*(*v130 + 16))(v130, v128, v127);
            v7 = *a2;
            v41 = a2[1];
          }

          else
          {
            v41 = 0;
            v7 = 0;
          }

          v40 = v126;
          v39 = v125;
          goto LABEL_244;
        }

        v146 = v4;
        v142 = v39;
        v92 = v40;
        v49 = v19;
        goto LABEL_174;
      }

      v146 = v4;
      v142 = v39;
      v92 = v40;
      v49 = v19;
    }

LABEL_164:
    *a2 = 0;
    a2[1] = 0;
    v94 = a2[3];
    if (!v94)
    {
      v41 = 0;
LABEL_166:
      v7 = 0;
      goto LABEL_174;
    }

    if (!v41)
    {
      goto LABEL_166;
    }

    (*(*v94 + 16))(v94, v7);
    v7 = *a2;
    v41 = a2[1];
LABEL_174:
    *a2 = 0;
    a2[1] = 0;
    v97 = a2[3];
    if (v97 && v41)
    {
      (*(*v97 + 16))(v97, v7);
    }

    v50 = 0;
    v40 = v92;
    v39 = v142;
LABEL_100:
    LOBYTE(v19) = v2;
    v60 = *a2;
    v61 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    v4 = v146;
    if (result)
    {
      LODWORD(v4) = v31;
      v68 = v39;
      v69 = v40;
      if (v61)
      {
        result = (*(*result + 16))(result, v60);
        v2 = 1;
        v7 = *a2;
      }

      else
      {
        v7 = 0;
        v2 = 1;
      }

      v40 = v69;
      v39 = v68;
LABEL_77:
      LODWORD(v31) = v4;
      v4 = v146;
      goto LABEL_79;
    }

    v7 = 0;
    v2 = 1;
LABEL_79:
    v5 = a2[1];
    v51 = a2[2];
    if (v5 <= &v51[-v7])
    {
      break;
    }

    a2[2] = (v51 + 1);
    if (!v51)
    {
      v143 = v39;
      v145 = v40;
      goto LABEL_170;
    }

    v52 = *v51;
    if (v52 >= 2)
    {
      v143 = v39;
      v145 = v40;
      goto LABEL_177;
    }

    if (!v52)
    {
      v53 = 0;
      v57 = 0x10000;
      goto LABEL_87;
    }

    if (!v7)
    {
      *a2 = 0;
      a2[1] = 0;
      v62 = a2[3];
      if (v62)
      {
        v73 = v40;
        v148 = v4;
        v74 = v31;
        v75 = v39;
        (*(*v62 + 16))(v62, 0);
        v39 = v75;
        LODWORD(v31) = v74;
        v4 = v148;
        v40 = v73;
      }

      v53 = 256;
      goto LABEL_105;
    }

    LOWORD(v53) = 256;
    v7 = 65792;
    v54 = v152;
    v56 = v150;
    v55 = v151;
    if ((v152 & 0x100000000) == 0)
    {
      goto LABEL_218;
    }

LABEL_89:
    if (v55 > 0xFF && (v19 & 1) != 0)
    {
      if (WORD1(v31))
      {
        if (!v39 && !v2)
        {
          v7 = WORD1(v7);
          if (v7)
          {
            *v4 = v54;
            *(v4 + 4) = v55;
            *(v4 + 8) = v49;
            *(v4 + 9) = v56;
            *(v4 + 16) = v149;
            *(v4 + 24) = v20;
            *(v4 + 32) = v32;
            *(v4 + 34) = v40;
            *(v4 + 38) = v50;
            *(v4 + 42) = v53;
            *(v4 + 48) = 1;
            return result;
          }
        }
      }
    }

LABEL_218:
    __break(1u);
LABEL_219:
    if (v5)
    {
      (*(*result + 16))(result, v7);
    }

LABEL_207:
    v31 = 256;
LABEL_208:
    v110 = *a2;
    v111 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v112 = a2[3];
    if (v112 && v111)
    {
      result = (*(*v112 + 16))(v112, v110);
      LOWORD(v29) = 0;
      v30 = 0;
      v7 = *a2;
      v5 = a2[1];
      v27 = a2[2];
      goto LABEL_47;
    }

    v7 = 0;
    v32 = v31;
  }

  v143 = v39;
  v145 = v40;
  *a2 = 0;
  a2[1] = 0;
  v95 = a2[3];
  if (!v95)
  {
    v5 = 0;
LABEL_169:
    v7 = 0;
    goto LABEL_170;
  }

  if (!v5)
  {
    goto LABEL_169;
  }

  (*(*v95 + 16))(v95, v7);
  v7 = *a2;
  v5 = a2[1];
LABEL_170:
  *a2 = 0;
  a2[1] = 0;
  v96 = a2[3];
  if (!v96)
  {
    v5 = 0;
LABEL_172:
    v7 = 0;
    goto LABEL_177;
  }

  if (!v5)
  {
    goto LABEL_172;
  }

  (*(*v96 + 16))(v96, v7);
  v7 = *a2;
  v5 = a2[1];
LABEL_177:
  *a2 = 0;
  a2[1] = 0;
  v98 = a2[3];
  if (v98 && v5)
  {
    (*(*v98 + 16))(v98, v7);
  }

  v53 = 0;
  v39 = v143;
  v40 = v145;
LABEL_105:
  v63 = *a2;
  v64 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v65 = a2[3];
  if (v65)
  {
    v147 = v4;
    v144 = v40;
    if (v64)
    {
      v71 = v31;
      v72 = v39;
      result = (*(*v65 + 16))(v65, v63);
      v57 = 0;
      v7 = *a2;
      v40 = v144;
      v39 = v72;
      LODWORD(v31) = v71;
      v4 = v147;
LABEL_87:
      v56 = v150;
      if (!v7)
      {
        goto LABEL_106;
      }

      v7 = v57 | v53;
      v54 = v152;
      v55 = v151;
      if ((v152 & 0x100000000) == 0)
      {
        goto LABEL_218;
      }

      goto LABEL_89;
    }
  }

LABEL_106:
  *v4 = 0;
  *(v4 + 48) = 0;
  v66 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v66)
  {
    v67 = *(*result + 16);

    return v67();
  }

  return result;
}

unint64_t WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x5555556)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(v2 + 8) = v5 / 0x30;
    *v2 = v6;
    if (v4)
    {
      v8 = 48 * v4;
      v9 = v3;
      do
      {
        v10 = *v9;
        v11 = *(v9 + 2);
        v6[1] = *(v9 + 1);
        v6[2] = v11;
        *v6 = v10;
        v6 += 3;
        v9 = (v9 + 48);
        v8 -= 48;
      }

      while (v8);
    }

    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::BufferBindingLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::BufferBindingLayout> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::BufferBindingLayout,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::TextureBindingLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::TextureBindingLayout> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::TextureBindingLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::TextureBindingLayout> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[3])
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[3])
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::TextureBindingLayout,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::StorageTextureBindingLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::StorageTextureBindingLayout> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::StorageTextureBindingLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::StorageTextureBindingLayout> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[3])
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[3])
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::StorageTextureBindingLayout,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::ExternalTextureBindingLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::ExternalTextureBindingLayout> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::ExternalTextureBindingLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::ExternalTextureBindingLayout> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 1))
  {
    v4 = 1;
    result = IPC::Encoder::operator<<<BOOL>(a1, &v4);
    if (*(a2 + 1))
    {
      return result;
    }

    a1 = std::__throw_bad_optional_access[abi:sn200100]();
  }

  v5 = 0;
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

uint64_t *IPC::ArgumentCoder<std::optional<WebKit::WebGPU::ComputePassTimestampWrites>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::ComputePassTimestampWrites> const&>(uint64_t *result, uint64_t a2)
{
  v3 = result[1];
  if ((*(a2 + 16) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      result[1] = 0;
      return result;
    }

    **result = 0;
    v5 = result[1];
    if (v5)
    {
      ++*result;
      result[1] = v5 - 1;
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    **result = 1;
    v4 = result[1];
    if (v4)
    {
      ++*result;
      result[1] = v4 - 1;
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_13:
  *result = 0;
  result[1] = 0;
LABEL_5:
  if (*(a2 + 16))
  {

    return IPC::ArgumentCoder<WebKit::WebGPU::RenderPassTimestampWrites,void>::encode(result, a2);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::ComputePassTimestampWrites>,void>::decode<IPC::Decoder>(v6, v7);
  }
}

uint64_t *IPC::ArgumentCoder<std::optional<WebKit::WebGPU::ComputePassTimestampWrites>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = result[1];
  v5 = result[2];
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    result[1] = 0;
    v24 = result[3];
    if (v24)
    {
      if (v4)
      {
        (*(*v24 + 16))(v24);
        v4 = v2[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_40:
    *v2 = 0;
    v2[1] = 0;
    v25 = v2[3];
    if (v25)
    {
      if (v4)
      {
        (*(*v25 + 16))(v25);
        v6 = *v2;
        v4 = v2[1];
LABEL_43:
        *v2 = 0;
        v2[1] = 0;
        result = v2[3];
        if (result)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_43;
  }

  result[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_40;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_43;
  }

  if (!v7)
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v20 = 1;
    goto LABEL_21;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(result);
  v9 = v8;
  v10 = v2[1];
  v11 = ((v2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = *v2;
  v13 = v11 - *v2;
  v14 = v10 >= v13;
  v15 = v10 - v13;
  if (v14 && v15 > 3)
  {
    v2[2] = (v11 + 1);
    if (v11)
    {
      v17 = *v11 | 0x100000000;
      v6 = v12;
      goto LABEL_12;
    }

    v27 = result;
    v29 = v8;
    goto LABEL_26;
  }

  while (1)
  {
    v27 = result;
    v29 = v9;
    *v2 = 0;
    v2[1] = 0;
    v21 = v2[3];
    if (!v21)
    {
      v10 = 0;
LABEL_25:
      v12 = 0;
      goto LABEL_26;
    }

    if (!v10)
    {
      goto LABEL_25;
    }

    (*(*v21 + 16))(v21, v12);
    v12 = *v2;
    v10 = v2[1];
LABEL_26:
    *v2 = 0;
    v2[1] = 0;
    v22 = v2[3];
    if (v22)
    {
      if (v10)
      {
        (*(*v22 + 16))(v22, v12);
        v17 = 0;
        v6 = *v2;
        v10 = v2[1];
        v12 = *v2;
        goto LABEL_29;
      }

      v6 = 0;
    }

    else
    {
      v6 = 0;
      v10 = 0;
    }

    v12 = 0;
    v17 = 0;
LABEL_29:
    result = v27;
    v9 = v29;
LABEL_12:
    v18 = ((v2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v10 < v18 - v12 || v10 - (v18 - v12) <= 3)
    {
      break;
    }

    v2[2] = (v18 + 1);
    if (!v18)
    {
      v26 = v17;
      v28 = result;
      v30 = v9;
      goto LABEL_33;
    }

    v19 = *v18 | 0x100000000;
    if (!v12)
    {
      goto LABEL_36;
    }

LABEL_16:
    if ((v9 & 1) != 0 && (v17 & 0x100000000) != 0 && (v19 & 0x100000000) != 0)
    {
      *a2 = result;
      *(a2 + 8) = v17;
      *(a2 + 12) = v19;
      v20 = 1;
      *(a2 + 16) = 1;
      goto LABEL_21;
    }

    __break(1u);
  }

  v26 = v17;
  v28 = result;
  v30 = v9;
  *v2 = 0;
  v2[1] = 0;
  v23 = v2[3];
  if (!v23)
  {
    v10 = 0;
LABEL_32:
    v6 = 0;
    goto LABEL_33;
  }

  if (!v10)
  {
    goto LABEL_32;
  }

  (*(*v23 + 16))(v23, v6);
  v6 = *v2;
  v10 = v2[1];
LABEL_33:
  *v2 = 0;
  v2[1] = 0;
  result = v2[3];
  if (!result || !v10)
  {
    goto LABEL_37;
  }

  (*(*result + 16))(result, v6);
  v19 = 0;
  v6 = *v2;
  result = v28;
  v9 = v30;
  v17 = v26;
  if (*v2)
  {
    goto LABEL_16;
  }

LABEL_36:
  v4 = v2[1];
  result = v2[3];
  *v2 = 0;
  v2[1] = 0;
  if (!result)
  {
    goto LABEL_37;
  }

LABEL_44:
  if (v4)
  {
    result = (*(*result + 16))(result, v6);
  }

LABEL_37:
  v20 = 0;
  *a2 = 0;
LABEL_21:
  *(a2 + 24) = v20;
  return result;
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    v6 = *a2;
    if (*a2)
    {

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }

    else
    {
      result = 157;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::StreamConnectionEncoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (!*(result + 8))
  {
LABEL_7:
    *result = 0;
    *(result + 8) = 0;
    if (!v2)
    {
      return result;
    }

    goto LABEL_4;
  }

  **result = v2 == 0;
  v3 = *(result + 8);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  ++*result;
  *(result + 8) = v3 - 1;
  if (!v2)
  {
    return result;
  }

LABEL_4:
  if (*a2)
  {
    return IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(result, a2);
  }

  result = 157;
  __break(0xC471u);
  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if ((*(a2 + 4) & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    **result = 0;
    v10 = *(result + 8);
    if (v10)
    {
      v8 = v10 - 1;
      v9 = *result + 1;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v2)
  {
    **result = 1;
    v3 = *(result + 8);
    if (v3)
    {
      v4 = v3 - 1;
      v2 = *result + 1;
      *result = v2;
      *(result + 8) = v4;
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = 0;
  *result = 0;
  *(result + 8) = 0;
LABEL_5:
  if ((*(a2 + 4) & 1) == 0)
  {
    result = std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_15;
  }

  v5 = -v2 & 3 | 4;
  if (v4 >= v5)
  {
    *(v2 + (-v2 & 3)) = *a2;
    v6 = *(result + 8);
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (!v7)
    {
      goto LABEL_15;
    }

    v9 = *result + v5;
LABEL_13:
    *result = v9;
    *(result + 8) = v8;
    return result;
  }

LABEL_16:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::WebGPU::TextureFormat,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v9 = a1[3];
    if (v9)
    {
      if (v1)
      {
        (*(*v9 + 16))(v9);
        v3 = *v11;
        v1 = v11[1];
        goto LABEL_11;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_11;
  }

  a1[2] = (v2 + 1);
  if (v2)
  {
    v4 = *v2;
    v5 = 1;
    goto LABEL_4;
  }

  v11 = a1;
LABEL_11:
  *v11 = 0;
  v11[1] = 0;
  v10 = v11[3];
  if (v10 && v1)
  {
    (*(*v10 + 16))(v10, v3);
  }

  v4 = 0;
  v5 = 0;
LABEL_4:
  v6 = v4 < 0x5F;
  v7 = v4 | 0x100;
  if ((v5 & v6) != 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[2 * v5];
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6[1]);
      v6 += 2;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (*(result + 8) >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 12);
    v5 = *(result + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *result += v4;
      *(result + 8) = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 8) = 0;
LABEL_5:
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    v10 = *a2 + 16 * v8;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(v2, v9);
      result = IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(v2, v9 + 1);
      v9 += 2;
    }

    while (v9 != v10);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::WebGPU::FeatureName>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v8 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v8;
        v1 = v8[1];
LABEL_9:
        *v8 = 0;
        v8[1] = 0;
        v7 = v8[3];
        if (v7)
        {
          if (v1)
          {
            (*(*v7 + 16))(v7, v3);
            a1 = v8;
            v3 = *v8;
            v1 = v8[1];
            goto LABEL_12;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        a1 = v8;
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_9;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v8 = a1;
    goto LABEL_9;
  }

  v4 = *v2;
  if (v4 < 0x13)
  {
    return v4 | 0x100;
  }

LABEL_12:
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
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

IPC::Decoder *IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,unsigned long long>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v19);
  if (v20 == 1)
  {
    v5 = *(a2 + 1);
    v6 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v7 = *a2;
    v8 = v6 - *a2;
    v9 = v5 >= v8;
    v10 = v5 - v8;
    if (v9 && v10 > 7)
    {
      *(a2 + 2) = v6 + 1;
      if (v6)
      {
        v12 = *v6;
        *a1 = v19;
        *(a1 + 8) = v12;
        *(a1 + 16) = 1;
        return result;
      }

      goto LABEL_19;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      if (v5)
      {
        (*(*v16 + 16))(v16);
        v7 = *a2;
        v5 = *(a2 + 1);
LABEL_19:
        *a2 = 0;
        *(a2 + 1) = 0;
        v17 = *(a2 + 3);
        if (v17 && v5)
        {
          (*(*v17 + 16))(v17);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
        if (v20)
        {
          v18 = v19;
          v19 = 0;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v7);
            }
          }
        }

        goto LABEL_11;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    goto LABEL_19;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_11:
  v13 = *a2;
  v14 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
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
    return (*(*result + 16))(result, v13);
  }

  return result;
}

void sub_19D852458(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * a1[3] <= a3)
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

    WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8525F0);
    }

    v3 = result;
    v4 = *result;
    v5 = (*result + 16 * *(result + 3));
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 2) = v2;
    *v3 = v6;
    result = WTF::VectorTypeOperations<WTF::KeyValuePair<WTF::String,unsigned long long>>::move(v4, v5, v6);
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

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WTF::KeyValuePair<WTF::String,unsigned long long>>::move(WTF::StringImpl *result, WTF::StringImpl *a2, WTF::StringImpl **a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      *v5 = 0;
      *a3 = v6;
      a3[1] = v7;
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return result;
}

void IPC::ArgumentCoder<std::optional<WebKit::SharedVideoFrame>,void>::encode<IPC::Encoder,std::optional<WebKit::SharedVideoFrame>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 48))
    {
      IPC::ArgumentCoder<WebKit::SharedVideoFrame,void>::encode(a1, a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      IPC::Decoder::decode<WebKit::SharedVideoFrame>(v4, v5);
    }
  }

  else
  {
    v7 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::Decoder::decode<WebKit::SharedVideoFrame>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::SharedVideoFrame,void>::decode(a1, a2);
  if ((*(a2 + 48) & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
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
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19D852750(_Unwind_Exception *exception_object)
{
  if (v1[48] == 1)
  {
    if (v1[40] == 2)
    {
      WTF::MachSendRight::~MachSendRight((v1 + 24));
    }

    v1[40] = -1;
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::ColorTargetState>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::optional<WebKit::WebGPU::ColorTargetState>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      result = IPC::ArgumentCoder<std::optional<WebKit::WebGPU::ColorTargetState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::ColorTargetState> const&>(a1, v6);
      v6 += 16;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

void *IPC::ArgumentCoder<std::optional<WebKit::WebGPU::ColorTargetState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::ColorTargetState> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 12))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 12))
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::ColorTargetState,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::String> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

void *IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::String> const&>(void *result, uint64_t a2)
{
  v3 = result[1];
  if ((*(a2 + 8) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      result[1] = 0;
      return result;
    }

    **result = 0;
    v5 = result[1];
    if (v5)
    {
      ++*result;
      result[1] = v5 - 1;
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    **result = 1;
    v4 = result[1];
    if (v4)
    {
      ++*result;
      result[1] = v4 - 1;
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_13:
  *result = 0;
  result[1] = 0;
LABEL_5:
  if (*(a2 + 8))
  {

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(result, a2);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    return IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v6);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (*(result + 8) >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 12);
    v5 = *(result + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *result += v4;
      *(result + 8) = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 8) = 0;
LABEL_5:
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    v10 = *a2 + 16 * v8;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(v2, v9);
      v11 = v9[1];
      result = IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(v2, &v11, 1);
      v9 += 2;
    }

    while (v9 != v10);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::ColorTargetState>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<std::optional<WebKit::WebGPU::ColorTargetState>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (*(result + 8) >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 3);
    v5 = *(result + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      v8 = (*result + v4);
      *result = v8;
      *(result + 8) = v7;
      goto LABEL_5;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    result = std::__throw_bad_optional_access[abi:sn200100]();
  }

  v8 = 0;
  v7 = 0;
  *v2 = 0;
  v2[1] = 0;
LABEL_5:
  v9 = *(a2 + 3);
  if (v9)
  {
    v10 = *a2;
    v11 = *a2 + 7;
    v12 = 16 * v9;
    while ((*(v11 + 5) & 1) == 0)
    {
      if (!v7)
      {
        v8 = 0;
        goto LABEL_36;
      }

      *v8 = 0;
      v24 = v2[1];
      if (!v24)
      {
        goto LABEL_41;
      }

      v7 = v24 - 1;
      v8 = (*v2 + 1);
LABEL_29:
      *v2 = v8;
      v2[1] = v7;
LABEL_30:
      v10 += 16;
      v11 += 16;
      v12 -= 16;
      if (!v12)
      {
        return result;
      }
    }

    if (v7)
    {
      *v8 = 1;
      v13 = v2[1];
      if (!v13)
      {
        goto LABEL_41;
      }

      v14 = v13 - 1;
      v15 = (*v2 + 1);
      *v2 = v15;
      v2[1] = v14;
      if ((*(v11 + 5) & 1) == 0)
      {
        goto LABEL_42;
      }

      if (v14)
      {
        *v15 = *(v11 - 7);
        v16 = v2[1];
        if (!v16)
        {
          goto LABEL_41;
        }

        v17 = v16 - 1;
        v18 = (*v2 + 1);
        *v2 = v18;
        v2[1] = v17;
        v19 = (v11 - 6);
        if ((*v11 & 1) == 0)
        {
          if (!v17)
          {
            goto LABEL_34;
          }

          *v18 = 0;
          v25 = v2[1];
          if (!v25)
          {
            goto LABEL_41;
          }

          v23 = v25 - 1;
          v22 = *v2 + 1;
          *v2 = v22;
          v2[1] = v23;
          goto LABEL_25;
        }

        if (v17)
        {
          *v18 = 1;
          v20 = v2[1];
          if (!v20)
          {
            goto LABEL_41;
          }

          ++*v2;
          v2[1] = v20 - 1;
          v21 = v11;
          goto LABEL_17;
        }

        v19 = (v10 + 1);
        v21 = (v10 + 7);
LABEL_38:
        *v2 = 0;
        v2[1] = 0;
LABEL_17:
        if ((*v21 & 1) == 0)
        {
          goto LABEL_42;
        }

        IPC::ArgumentCoder<WebKit::WebGPU::BlendComponent,void>::encode(v2, v19);
        result = IPC::ArgumentCoder<WebKit::WebGPU::BlendComponent,void>::encode(v2, (v11 - 3));
        v22 = *v2;
        v23 = v2[1];
LABEL_25:
        v26 = -v22 & 3 | 4;
        if (v23 < v26)
        {
          goto LABEL_34;
        }

        *(v22 + (-v22 & 3)) = *(v11 + 1);
        v27 = v2[1];
        v6 = v27 >= v26;
        v7 = v27 - v26;
        if (!v6)
        {
          goto LABEL_41;
        }

        v8 = (*v2 + v26);
        goto LABEL_29;
      }
    }

    else
    {
      *v2 = 0;
      v2[1] = 0;
      if ((*(v11 + 5) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    *v2 = 0;
    v2[1] = 0;
    v19 = (v11 - 6);
    if ((*v11 & 1) == 0)
    {
LABEL_34:
      v8 = 0;
      v7 = 0;
LABEL_36:
      *v2 = 0;
      v2[1] = 0;
      goto LABEL_30;
    }

    v21 = v11;
    goto LABEL_38;
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,double>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v10);
  if (v11 == 1)
  {
    result = IPC::Decoder::decode<unsigned long long>(a2);
    if (v5)
    {
      if (v11)
      {
        *a1 = v10;
        *(a1 + 8) = result;
        *(a1 + 16) = 1;
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    *a1 = 0;
    *(a1 + 16) = 0;
    if (v11)
    {
      v6 = v10;
      v10 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  v7 = *a2;
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
    return (*(*result + 16))(result, v7);
  }

  return result;
}

void sub_19D852CAC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<std::optional<WebKit::WebGPU::ColorTargetState>>(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v32 = a2[3];
    if (v32)
    {
      if (v6)
      {
        (*(*v32 + 16))(v32);
        v5 = *a2;
        v6 = a2[1];
LABEL_52:
        *a2 = 0;
        a2[1] = 0;
        v33 = a2[3];
        if (v33)
        {
          if (v6)
          {
            (*(*v33 + 16))(v33, v5);
            v5 = *a2;
            v6 = a2[1];
LABEL_55:
            *a2 = 0;
            a2[1] = 0;
            v34 = a2[3];
            if (v34 && v6)
            {
              (*(*v34 + 16))(v34, v5);
            }

LABEL_42:
            *v3 = 0;
            *(v3 + 16) = 0;
            v30 = a2[1];
            *a2 = 0;
            a2[1] = 0;
            result = a2[3];
            if (result && v30)
            {
              v31 = *(*result + 16);

              return v31();
            }

            return result;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_55;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_52;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_52;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_55;
  }

  if (v7)
  {
    result = IPC::Decoder::decode<WebCore::WebGPU::TextureFormat>(a2);
    v8 = result;
    v9 = a2[1];
    v10 = a2[2];
    v11 = *a2;
    if (v9 <= &v10[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v35 = a2[3];
      if (v35)
      {
        if (v9)
        {
          (*(*v35 + 16))(v35);
          v9 = a2[1];
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      a2[2] = (v10 + 1);
      if (v10)
      {
        v12 = *v10;
        if (v12 < 2)
        {
          if (!v12)
          {
            v16 = 0;
            v17 = 0;
            v15 = 0;
            v18 = 0;
            v14 = v11;
            goto LABEL_16;
          }

          v13 = IPC::Decoder::decode<WebKit::WebGPU::BlendComponent>(a2);
          result = IPC::Decoder::decode<WebKit::WebGPU::BlendComponent>(a2);
          v14 = *a2;
          if (!*a2)
          {
            goto LABEL_27;
          }

          if (!HIBYTE(v13) || !BYTE3(result))
          {
            goto LABEL_26;
          }

          v15 = 0;
          v16 = v13 & 0xFFFF00 | (result << 24) & 0xFFFFFFFFFF00;
          v17 = v13;
          v18 = 0x1000000000000;
LABEL_13:
          v11 = v14;
          while (1)
          {
LABEL_16:
            v19 = a2[1];
            v20 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
            if (v19 < v20 - v11 || v19 - (v20 - v11) <= 3)
            {
              v39 = v15;
              v40 = v17;
              v38 = v16;
              *a2 = 0;
              a2[1] = 0;
              v26 = a2[3];
              if (v26)
              {
                if (v19)
                {
                  (*(*v26 + 16))(v26);
                  v11 = *a2;
                  v19 = a2[1];
                  goto LABEL_38;
                }
              }

              else
              {
                v19 = 0;
              }

              v11 = 0;
            }

            else
            {
              a2[2] = (v20 + 1);
              if (v20)
              {
                v21 = *v20 | 0x100000000;
                if (!v11)
                {
                  goto LABEL_41;
                }

                goto LABEL_20;
              }

              v39 = v15;
              v40 = v17;
              v38 = v16;
            }

LABEL_38:
            *a2 = 0;
            a2[1] = 0;
            v27 = a2[3];
            if (!v27 || !v19)
            {
              goto LABEL_42;
            }

            result = (*(*v27 + 16))(v27, v11);
            v21 = 0;
            v14 = *a2;
            v16 = v38;
            v17 = v40;
            v15 = v39;
            if (!*a2)
            {
LABEL_41:
              v28 = a2[1];
              v29 = a2[3];
              *a2 = 0;
              a2[1] = 0;
              if (v29 && v28)
              {
                (*(*v29 + 16))(v29, v14);
              }

              goto LABEL_42;
            }

LABEL_20:
            if ((v8 & 0x100) != 0 && !v15 && (v21 & 0x100000000) != 0)
            {
              *v3 = v8 | ((v17 | v16 | v18) << 8);
              *(v3 + 8) = v21;
              LOBYTE(v7) = 1;
              goto LABEL_24;
            }

LABEL_26:
            __break(1u);
LABEL_27:
            v22 = a2[1];
            *a2 = 0;
            a2[1] = 0;
            v23 = a2[3];
            if (v23 && v22)
            {
              (*(*v23 + 16))(v23, 0);
            }

            v18 = 0x1000000000000;
LABEL_29:
            v24 = *a2;
            v25 = a2[1];
            *a2 = 0;
            a2[1] = 0;
            result = a2[3];
            if (result && v25)
            {
              result = (*(*result + 16))(result, v24);
              v16 = 0;
              v17 = 0;
              v14 = *a2;
              v15 = 1;
              goto LABEL_13;
            }

            v14 = 0;
            v11 = 0;
            v16 = 0;
            v17 = 0;
            v15 = 1;
          }
        }

LABEL_63:
        *a2 = 0;
        a2[1] = 0;
        v37 = a2[3];
        if (v37 && v9)
        {
          (*(*v37 + 16))(v37, v11);
        }

        v18 = 0;
        goto LABEL_29;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v36 = a2[3];
    if (v36)
    {
      if (v9)
      {
        (*(*v36 + 16))(v36);
        v11 = *a2;
        v9 = a2[1];
        goto LABEL_63;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    goto LABEL_63;
  }

  *result = 0;
LABEL_24:
  *(v3 + 12) = v7;
  *(v3 + 16) = 1;
  return result;
}

mpark *IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v8 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if (*(a2 + 24))
    {
      v10 = *(a2 + 16);
      IPC::Encoder::operator<<<BOOL>(a1, &v10);
      return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&>(a1, a2, v10);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&>(v5, v6, v7);
    }
  }

  else
  {
    v9 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v9);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 16))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *(a2 + 12);
    v6 = *a2;

    return IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v6, v5);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = result;
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(result, *a2);
    v5 = *(a2 + 4);

    return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, v5);
  }

  return result;
}

mpark *IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>> const&>(mpark *result, uint64_t a2)
{
  v3 = *(result + 1);
  if ((*(a2 + 24) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      *(result + 1) = 0;
      return result;
    }

    **result = 0;
    v5 = *(result + 1);
    if (v5)
    {
      ++*result;
      *(result + 1) = v5 - 1;
      return result;
    }

    goto LABEL_12;
  }

  if (!v3)
  {
LABEL_13:
    *result = 0;
    *(result + 1) = 0;
    goto LABEL_5;
  }

  **result = 1;
  v4 = *(result + 1);
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  ++*result;
  *(result + 1) = v4 - 1;
LABEL_5:
  if (*(a2 + 24))
  {
  }

  else
  {
    result = std::__throw_bad_optional_access[abi:sn200100]();
  }

  return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&>(result, a2);
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&>(mpark *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!*(a1 + 1))
  {
    goto LABEL_6;
  }

  **a1 = v2;
  v3 = *(a1 + 1);
  if (!v3)
  {
    __break(1u);
LABEL_6:
    *a1 = 0;
    *(a1 + 1) = 0;
    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&>(a1, a2, v2);
  }

  ++*a1;
  *(a1 + 1) = v3 - 1;
  return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&>(a1, a2, v2);
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 16))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *(a2 + 12);
    v6 = *a2;

    return IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(a1, v6, v5);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WebKit::WebGPU::Origin2DDict,void>::encode(result, a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = -*a1;
  v4 = v3 & 7 | 8;
  if (*(a1 + 8) >= v4)
  {
    *(*a1 + (v3 & 7)) = a3;
    v5 = *(a1 + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *a1 += v4;
      *(a1 + 8) = v7;
      if (!a3)
      {
        return a1;
      }

      return IPC::StreamConnectionEncoder::encodeSpan<float const,18446744073709551615ul>(a1, a2, a3);
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    return IPC::StreamConnectionEncoder::encodeSpan<float const,18446744073709551615ul>(a1, a2, a3);
  }

  return a1;
}

uint64_t IPC::Decoder::decode<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::VectorArgumentCoder<true,unsigned int,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D8534F8(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::VectorArgumentCoder<true,unsigned int,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, v6);
  if (v7 & 1) != 0 || (result = IPC::Decoder::markInvalid(a1), (v7))
  {
    result = WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(a2, v6[0], v6[1]);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  a2[16] = v5;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  v4 = ((*(result + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *result;
  v6 = v4 - *result;
  v14 = v3 >= v6;
  v7 = v3 - v6;
  if (!v14 || v7 <= 7)
  {
    v16 = result;
    IPC::Decoder::markInvalid(result);
    result = v16;
LABEL_19:
    result = IPC::Decoder::markInvalid(result);
    goto LABEL_20;
  }

  *(result + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_19;
  }

  v9 = *v4;
  if (*v4)
  {
    if (v9 >> 62)
    {
      goto LABEL_20;
    }

    v10 = (v4 + 11) & 0xFFFFFFFFFFFFFFF8;
    v11 = v10 - v5;
    v12 = 4 * v9;
    v14 = v3 >= v11;
    v13 = v3 - v11;
    v14 = v14 && v13 >= v12;
    if (!v14)
    {
      goto LABEL_19;
    }

    *(result + 2) = v12 + v10;
    if (!v10)
    {
LABEL_20:
      v15 = 0;
      *a2 = 0;
      goto LABEL_17;
    }

    *a2 = v10;
    *(a2 + 8) = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v15 = 1;
LABEL_17:
  *(a2 + 16) = v15;
  return result;
}

uint64_t WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(uint64_t result, int *a2, unint64_t a3)
{
  v3 = a3;
  v4 = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = a3;
  if (!a3)
  {
    return v4;
  }

  if (!(a3 >> 30))
  {
    v6 = 4 * a3;
    v7 = WTF::fastMalloc((4 * a3));
    *(v4 + 8) = v3;
    *v4 = v7;
    do
    {
      v8 = *a2++;
      *v7++ = v8;
      v6 -= 4;
    }

    while (v6);
    return v4;
  }

  __break(0xC471u);
  return result;
}

mpark *IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v8 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if (*(a2 + 24))
    {
      v10 = *(a2 + 16);
      IPC::Encoder::operator<<<BOOL>(a1, &v10);
      return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(a1, a2, v10);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(v5, v6, v7);
    }
  }

  else
  {
    v9 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v9);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 16))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *(a2 + 12);
    v6 = *a2;

    return IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v6, v5);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WebKit::WebGPU::Extent3DDict,void>::encode(result, a2);
  }

  return result;
}

mpark *IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>> const&>(mpark *result, uint64_t a2)
{
  v3 = *(result + 1);
  if ((*(a2 + 24) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      *(result + 1) = 0;
      return result;
    }

    **result = 0;
    v5 = *(result + 1);
    if (v5)
    {
      ++*result;
      *(result + 1) = v5 - 1;
      return result;
    }

    goto LABEL_12;
  }

  if (!v3)
  {
LABEL_13:
    *result = 0;
    *(result + 1) = 0;
    goto LABEL_5;
  }

  **result = 1;
  v4 = *(result + 1);
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  ++*result;
  *(result + 1) = v4 - 1;
LABEL_5:
  if (*(a2 + 24))
  {
  }

  else
  {
    result = std::__throw_bad_optional_access[abi:sn200100]();
  }

  return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(result, a2);
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(mpark *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!*(a1 + 1))
  {
    goto LABEL_6;
  }

  **a1 = v2;
  v3 = *(a1 + 1);
  if (!v3)
  {
    __break(1u);
LABEL_6:
    *a1 = 0;
    *(a1 + 1) = 0;
    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(a1, a2, v2);
  }

  ++*a1;
  *(a1 + 1) = v3 - 1;
  return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(a1, a2, v2);
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 16))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *(a2 + 12);
    v6 = *a2;

    return IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(a1, v6, v5);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WebKit::WebGPU::Extent3DDict,void>::encode(result, a2);
  }

  return result;
}

void *IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(void *result, uint64_t a2)
{
  v3 = result[1];
  if ((*(a2 + 16) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      result[1] = 0;
      return result;
    }

    **result = 0;
    v5 = result[1];
    if (v5)
    {
      ++*result;
      result[1] = v5 - 1;
      return result;
    }

    goto LABEL_12;
  }

  if (!v3)
  {
LABEL_13:
    *result = 0;
    result[1] = 0;
    goto LABEL_5;
  }

  **result = 1;
  v4 = result[1];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  ++*result;
  result[1] = v4 - 1;
LABEL_5:
  if (*(a2 + 16))
  {
  }

  else
  {
    result = std::__throw_bad_optional_access[abi:sn200100]();
  }

  return IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(result, a2);
}

uint64_t IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (*(result + 8) >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 12);
    v5 = *(result + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *result += v4;
      *(result + 8) = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 8) = 0;
LABEL_5:
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    v10 = 8 * v8;
    do
    {
      result = IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(v2, v9++);
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

WTF *IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v18 = a1[3];
    if (v18)
    {
      if (v4)
      {
        (*(*v18 + 16))(v18);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_28;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_28:
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
    a2[16] = 0;
    return result;
  }

  v10 = *v5;
  v21 = 0;
  v22 = 0;
  if (v10 >= 0x20000)
  {
    while (1)
    {
      v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
      v19 = v16;
      v20 = v12;
      if ((v12 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v22) == v22)
      {
        v14 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v21, HIDWORD(v22) + 1, &v19);
        *(v21 + HIDWORD(v22)) = *v14;
      }

      else
      {
        *(v21 + HIDWORD(v22)) = v16;
      }

      v15 = ++HIDWORD(v22);
      if (!--v10)
      {
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v21, v15);
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!v10)
    {
LABEL_15:
      std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a2, &v21);
      goto LABEL_22;
    }

    LODWORD(v22) = v10;
    v21 = WTF::fastMalloc((8 * v10));
    while (1)
    {
      v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
      v19 = v11;
      v20 = v12;
      if ((v12 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v22) == v22)
      {
        v13 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v21, HIDWORD(v22) + 1, &v19);
        *(v21 + HIDWORD(v22)) = *v13;
      }

      else
      {
        *(v21 + HIDWORD(v22)) = v11;
      }

      ++HIDWORD(v22);
      if (!--v10)
      {
        goto LABEL_15;
      }
    }
  }

  *a2 = 0;
  a2[16] = 0;
LABEL_22:
  result = v21;
  if (v21)
  {
    v21 = 0;
    LODWORD(v22) = 0;
    return WTF::fastFree(result, v12);
  }

  return result;
}

void sub_19D853C58(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D853CB4(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      *(result + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *result;
    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((8 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v4 && result != v5)
      {
        v6 = 8 * v4;
        v7 = v5;
        do
        {
          v8 = *v7;
          v7 = (v7 + 8);
          *result = v8;
          result += 8;
          v6 -= 8;
        }

        while (v6);
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

uint64_t IPC::VectorArgumentCoder<false,std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 2 * v5;
    do
    {
      result = IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, v6);
      v6 += 2;
      v7 -= 2;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (*(result + 8) >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 12);
    v5 = *(result + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *result += v4;
      *(result + 8) = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 8) = 0;
LABEL_5:
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    v10 = 2 * v8;
    do
    {
      result = IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(v2, v9);
      v9 += 2;
      v10 -= 2;
    }

    while (v10);
  }

  return result;
}

unint64_t WTF::Vector<std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 2 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 31)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 12);
      result = WTF::fastMalloc((2 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v5)
      {
        v7 = 2 * v5;
        v8 = v4;
        do
        {
          v9 = *v8;
          v8 = (v8 + 2);
          *result = v9;
          result += 2;
          v7 -= 2;
        }

        while (v7);
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

uint64_t IPC::ArgumentCoder<std::optional<WebCore::WebGPU::TextureFormat>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v10 = a1[3];
    if (v10)
    {
      if (v1)
      {
        (*(*v10 + 16))(v10);
        v3 = *v13;
        v1 = v13[1];
LABEL_11:
        *v13 = 0;
        v13[1] = 0;
        v11 = v13[3];
        if (v11)
        {
          if (v1)
          {
            (*(*v11 + 16))(v11, v3);
            v3 = *v13;
            v1 = v13[1];
            goto LABEL_15;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_11;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v13 = a1;
    goto LABEL_11;
  }

  v4 = *v2;
  if (v4 < 2)
  {
    if (v4)
    {
      v5 = IPC::Decoder::decode<WebCore::WebGPU::TextureFormat>(a1);
      v6 = (v5 & 0x100) << 8;
      v7 = (v5 & ((v5 << 7) >> 15));
      v8 = 256;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v6 = 0x10000;
    }

    return v7 | v8 | v6;
  }

  v13 = a1;
LABEL_15:
  *v13 = 0;
  v13[1] = 0;
  v12 = v13[3];
  if (v12 && v1)
  {
    (*(*v12 + 16))(v12, v3);
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  return v7 | v8 | v6;
}

uint64_t IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 96 * v5;
    do
    {
      result = IPC::ArgumentCoder<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::RenderPassColorAttachment> const&>(a1, v6);
      v6 += 96;
      v7 -= 96;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::RenderPassColorAttachment> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 88))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 88))
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::RenderPassColorAttachment,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 32))
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::RenderPassDepthStencilAttachment,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

WTF *IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(WTF *result, uint64_t a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (*(result + 1) >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 12);
    v5 = *(result + 1);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *result += v4;
      *(result + 1) = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 1) = 0;
LABEL_5:
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    v10 = 96 * v8;
    do
    {
      result = IPC::ArgumentCoder<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::RenderPassColorAttachment> const&>(v2, v9);
      v9 += 96;
      v10 -= 96;
    }

    while (v10);
  }

  return result;
}

WTF *IPC::ArgumentCoder<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::RenderPassColorAttachment> const&>(WTF *result, uint64_t a2)
{
  v3 = *(result + 1);
  if ((*(a2 + 88) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      *(result + 1) = 0;
      return result;
    }

    **result = 0;
    v5 = *(result + 1);
    if (v5)
    {
      ++*result;
      *(result + 1) = v5 - 1;
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    **result = 1;
    v4 = *(result + 1);
    if (v4)
    {
      ++*result;
      *(result + 1) = v4 - 1;
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_13:
  *result = 0;
  *(result + 1) = 0;
LABEL_5:
  if (*(a2 + 88))
  {

    return IPC::ArgumentCoder<WebKit::WebGPU::RenderPassColorAttachment,void>::encode(result, a2);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment> const&>(v6);
  }
}

WTF *IPC::ArgumentCoder<std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment> const&>(WTF *result, uint64_t a2)
{
  v3 = *(result + 1);
  if ((*(a2 + 32) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      *(result + 1) = 0;
      return result;
    }

    **result = 0;
    v5 = *(result + 1);
    if (v5)
    {
      ++*result;
      *(result + 1) = v5 - 1;
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    **result = 1;
    v4 = *(result + 1);
    if (v4)
    {
      ++*result;
      *(result + 1) = v4 - 1;
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_13:
  *result = 0;
  *(result + 1) = 0;
LABEL_5:
  if (*(a2 + 32))
  {

    return IPC::ArgumentCoder<WebKit::WebGPU::RenderPassDepthStencilAttachment,void>::encode(result, a2);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    return IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(v6, v7);
  }
}

WTF *IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(WTF *result, uint64_t a2)
{
  v3 = *(result + 1);
  if ((*(a2 + 8) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      *(result + 1) = 0;
      return result;
    }

    **result = 0;
    v5 = *(result + 1);
    if (v5)
    {
      ++*result;
      *(result + 1) = v5 - 1;
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    **result = 1;
    v4 = *(result + 1);
    if (v4)
    {
      ++*result;
      *(result + 1) = v4 - 1;
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_13:
  *result = 0;
  *(result + 1) = 0;
LABEL_5:
  if (*(a2 + 8))
  {

    return IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(result, a2);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    return IPC::Decoder::decode<std::optional<WebKit::WebGPU::RenderPassColorAttachment>>(v6, v7);
  }
}

WTF *IPC::Decoder::decode<std::optional<WebKit::WebGPU::RenderPassColorAttachment>>(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v38 = a2[3];
    if (v38)
    {
      if (v6)
      {
        (*(*v38 + 16))(v38);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_64;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_64:
    *a2 = 0;
    a2[1] = 0;
    v39 = a2[3];
    if (v39)
    {
      if (v6)
      {
        (*(*v39 + 16))(v39, v5);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_67;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_67:
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v6)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_52;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_64;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_67;
  }

  if (!v7)
  {
    LOBYTE(v43[0]) = 0;
    v49 = 0;
    result = std::__optional_move_base<WebKit::WebGPU::RenderPassColorAttachment,false>::__optional_move_base[abi:sn200100](a1, v43);
    *(a1 + 96) = 1;
    if (v49 != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v10 = v9;
  v11 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
  v13 = v12;
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v61, a2);
  v14 = a2[1];
  v15 = a2[2];
  v16 = *a2;
  if (v14 <= &v15[-*a2])
  {
    *a2 = 0;
    a2[1] = 0;
    v40 = a2[3];
    if (v40)
    {
      if (v14)
      {
        (*(*v40 + 16))(v40);
        v14 = a2[1];
      }
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_72;
  }

  a2[2] = (v15 + 1);
  if (!v15)
  {
LABEL_72:
    *a2 = 0;
    a2[1] = 0;
    v41 = a2[3];
    if (v41)
    {
      if (v14)
      {
        (*(*v41 + 16))(v41);
        v16 = *a2;
        v14 = a2[1];
        goto LABEL_75;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = 0;
LABEL_75:
    *a2 = 0;
    a2[1] = 0;
    v42 = a2[3];
    if (v42 && v14)
    {
      (*(*v42 + 16))(v42, v16);
    }

    goto LABEL_54;
  }

  v17 = *v15;
  if (v17 >= 2)
  {
    goto LABEL_75;
  }

  if (v17)
  {
    IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::decode<IPC::Decoder>(a2, v50);
    if ((v52 & 1) == 0)
    {
      v35 = *a2;
      v36 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      v37 = a2[3];
      if (!v37 || !v36 || ((*(*v37 + 16))(v37, v35), (v52 & 1) == 0))
      {
LABEL_54:
        LOBYTE(v56) = 0;
        v60 = 0;
        goto LABEL_18;
      }
    }

    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,(mpark::detail::Trait)1>::move_constructor(&v56, v50);
    v59 = 1;
    v60 = 1;
    if ((v52 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v50[0] = 0;
    LOBYTE(v52) = 0;
    std::__optional_move_base<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,false>::__optional_move_base[abi:sn200100](&v56, v50);
    v60 = 1;
    if (v52 != 1)
    {
      goto LABEL_18;
    }
  }

  if (!v51)
  {
    v21 = *v50;
    if (*v50)
    {
      *v50 = 0;
      *&v50[8] = 0;
      WTF::fastFree(v21, v18);
    }
  }

LABEL_18:
  if ((v60 & 1) == 0)
  {
    v30 = *a2;
    v31 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v32 = a2[3];
    if (v32)
    {
      if (v31)
      {
        (*(*v32 + 16))(v32, v30);
      }
    }
  }

  v22 = IPC::Decoder::decode<WebCore::WebGPU::PredefinedColorSpace>(a2);
  v23 = IPC::Decoder::decode<WebCore::WebGPU::PredefinedColorSpace>(a2);
  if (!*a2)
  {
    LOBYTE(v43[0]) = 0;
    v49 = 0;
LABEL_30:
    if (v60 == 1 && v59 == 1 && !v58)
    {
      v27 = v56;
      if (v56)
      {
        v56 = 0;
        v57 = 0;
        WTF::fastFree(v27, v24);
      }
    }

    if ((v49 & 1) == 0)
    {
      v33 = *a2;
      v34 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      result = a2[3];
      if (!result || !v34 || (result = (*(*result + 16))(result, v33), (v49 & 1) == 0))
      {
LABEL_52:
        *a1 = 0;
        *(a1 + 96) = 0;
        goto LABEL_41;
      }
    }

    *a1 = v43[0];
    *(a1 + 9) = *(v43 + 9);
    result = std::__optional_move_base<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,false>::__optional_move_base[abi:sn200100]((a1 + 32), &v44);
    *(a1 + 80) = v48;
    *(a1 + 88) = 1;
    *(a1 + 96) = 1;
    if ((v49 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_37:
    if (v47 == 1 && !v46)
    {
      result = v44;
      if (v44)
      {
        v44 = 0;
        v45 = 0;
        result = WTF::fastFree(result, v20);
      }
    }

LABEL_41:
    if (*(a1 + 96))
    {
      return result;
    }

    goto LABEL_44;
  }

  if (v10)
  {
    *v50 = v8;
    if (v13)
    {
      *&v50[8] = v11;
      v50[12] = BYTE4(v11);
      if (v63)
      {
        *&v50[16] = v61;
        v50[24] = v62;
        if (v60)
        {
          v25 = v23;
          std::__optional_move_base<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,false>::__optional_move_base[abi:sn200100](&v51, &v56);
          if (v22 > 0xFFu)
          {
            LOBYTE(v55) = v22;
            if (v25 > 0xFFu)
            {
              HIBYTE(v55) = v25;
              v43[0] = *v50;
              *(v43 + 9) = *&v50[9];
              std::__optional_move_base<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,false>::__optional_move_base[abi:sn200100](&v44, &v51);
              v48 = v55;
              v49 = 1;
              if (v54 == 1 && !v53)
              {
                v26 = v51;
                if (v51)
                {
                  v51 = 0;
                  v52 = 0;
                  WTF::fastFree(v26, v24);
                }
              }

              goto LABEL_30;
            }
          }
        }
      }
    }
  }

  __break(1u);
LABEL_44:
  v28 = *a2;
  v29 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    if (v29)
    {
      return (*(*result + 16))(result, v28);
    }
  }

  return result;
}

void sub_19D854AF0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, WTF *a25, int a26, uint64_t a27, uint64_t a28, WTF *a29, char a30, uint64_t a31, uint64_t a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 == 1 && !a29)
  {
    if (a25)
    {
      WTF::fastFree(a25, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WebKit::WebGPU::RenderPassColorAttachment,false>::__optional_move_base[abi:sn200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = *a2;
    *(a1 + 9) = *(a2 + 9);
    *a1 = v4;
    std::__optional_move_base<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,false>::__optional_move_base[abi:sn200100]((a1 + 32), (a2 + 2));
    *(a1 + 80) = *(a2 + 40);
    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_19D854C98(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 88) == 1 && *(v2 + 72) == 1)
  {
    if (!*(v2 + 64))
    {
      v4 = *(v2 + 32);
      if (v4)
      {
        *(v2 + 32) = 0;
        *(v2 + 40) = 0;
        WTF::fastFree(v4, a2);
      }
    }

    *(v2 + 64) = -1;
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::optional<WebKit::WebGPU::RenderPassColorAttachment>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = std::__optional_move_base<WebKit::WebGPU::RenderPassColorAttachment,false>::__optional_move_base[abi:sn200100](*a1 + 96 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 96 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x2AAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D854EA4);
    }

    v3 = *a1;
    v4 = (*a1 + 96 * *(a1 + 12));
    v5 = 96 * a2;
    v6 = WTF::fastMalloc((96 * a2));
    *(a1 + 8) = v5 / 0x60;
    *a1 = v6;
    WTF::VectorMover<false,std::optional<WebKit::WebGPU::RenderPassColorAttachment>>::move(v3, v4, v6);
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

WTF *WTF::VectorMover<false,std::optional<WebKit::WebGPU::RenderPassColorAttachment>>::move(WTF *result, WTF *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = std::__optional_move_base<WebKit::WebGPU::RenderPassColorAttachment,false>::__optional_move_base[abi:sn200100](a3, v5);
      if (*(v5 + 88) == 1 && *(v5 + 72) == 1)
      {
        if (!*(v5 + 64))
        {
          result = *(v5 + 4);
          if (result)
          {
            *(v5 + 4) = 0;
            *(v5 + 10) = 0;
            result = WTF::fastFree(result, v6);
          }
        }

        *(v5 + 64) = -1;
      }

      a3 += 96;
      v5 = (v5 + 96);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::PrimitiveState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::PrimitiveState> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[6])
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[6])
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::PrimitiveState,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::DepthStencilState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::DepthStencilState> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::DepthStencilState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::DepthStencilState> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 44))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 44))
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::DepthStencilState,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::MultisampleState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::MultisampleState> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::MultisampleState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::MultisampleState> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 12))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 12))
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::MultisampleState,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::FragmentState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::FragmentState> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::FragmentState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::FragmentState> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 56))
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::FragmentState,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::PrimitiveState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::PrimitiveState> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void *IPC::ArgumentCoder<std::optional<WebKit::WebGPU::PrimitiveState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::PrimitiveState> const&>(void *result, _BYTE *a2)
{
  v3 = result[1];
  if ((a2[6] & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      result[1] = 0;
      return result;
    }

    **result = 0;
    v5 = result[1];
    if (v5)
    {
      ++*result;
      result[1] = v5 - 1;
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    **result = 1;
    v4 = result[1];
    if (v4)
    {
      ++*result;
      result[1] = v4 - 1;
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_13:
  *result = 0;
  result[1] = 0;
LABEL_5:
  if (a2[6])
  {

    return IPC::ArgumentCoder<WebKit::WebGPU::PrimitiveState,void>::encode(result, a2);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::DepthStencilState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::DepthStencilState> const&>(v6);
  }
}

void *IPC::ArgumentCoder<std::optional<WebKit::WebGPU::DepthStencilState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::DepthStencilState> const&>(void *result, uint64_t a2)
{
  v3 = result[1];
  if ((*(a2 + 44) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      result[1] = 0;
      return result;
    }

    **result = 0;
    v5 = result[1];
    if (v5)
    {
      ++*result;
      result[1] = v5 - 1;
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    **result = 1;
    v4 = result[1];
    if (v4)
    {
      ++*result;
      result[1] = v4 - 1;
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_13:
  *result = 0;
  result[1] = 0;
LABEL_5:
  if (*(a2 + 44))
  {

    return IPC::ArgumentCoder<WebKit::WebGPU::DepthStencilState,void>::encode(result, a2);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::MultisampleState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::MultisampleState> const&>(v6);
  }
}

void *IPC::ArgumentCoder<std::optional<WebKit::WebGPU::MultisampleState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::MultisampleState> const&>(void *result, uint64_t a2)
{
  v3 = result[1];
  if ((*(a2 + 12) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      result[1] = 0;
      return result;
    }

    **result = 0;
    v5 = result[1];
    if (v5)
    {
      ++*result;
      result[1] = v5 - 1;
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    **result = 1;
    v4 = result[1];
    if (v4)
    {
      ++*result;
      result[1] = v4 - 1;
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_13:
  *result = 0;
  result[1] = 0;
LABEL_5:
  if (*(a2 + 12))
  {

    return IPC::ArgumentCoder<WebKit::WebGPU::MultisampleState,void>::encode(result, a2);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::FragmentState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::FragmentState> const&>(v6);
  }
}

void *IPC::ArgumentCoder<std::optional<WebKit::WebGPU::FragmentState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::FragmentState> const&>(void *result, uint64_t a2)
{
  v3 = result[1];
  if ((*(a2 + 56) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      result[1] = 0;
      return result;
    }

    **result = 0;
    v5 = result[1];
    if (v5)
    {
      ++*result;
      result[1] = v5 - 1;
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    **result = 1;
    v4 = result[1];
    if (v4)
    {
      ++*result;
      result[1] = v4 - 1;
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_13:
  *result = 0;
  result[1] = 0;
LABEL_5:
  if (*(a2 + 56))
  {

    return IPC::ArgumentCoder<WebKit::WebGPU::FragmentState,void>::encode(result, a2);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    return IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>>(v6, v7);
  }
}

unint64_t IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v12);
  if (v13 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (!*a2)
    {
      v6 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v7 = *(a2 + 3);
      if (v7 && v6)
      {
        (*(*v7 + 16))(v7, 0);
      }

      *a1 = 0;
      *(a1 + 16) = 0;
      if (v13)
      {
        v8 = v12;
        v12 = 0;
        if (v8)
        {
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v5);
          }
        }
      }

      goto LABEL_14;
    }

    if (v5 & 1) != 0 && (v13)
    {
      *a1 = v12;
      *(a1 + 8) = result;
      *(a1 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_14:
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
    return (*(*result + 16))(result, v9);
  }

  return result;
}

void sub_19D85549C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 28))
  {
    v3 = result;
    v4 = *result;
    v5 = (*result + 16 * *(result + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    WTF::VectorTypeOperations<WebKit::OptionItem>::move(v4, v5, v6);
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

uint64_t *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *result;
  if (v2 <= &v3[-*result])
  {
    v7 = result;
    v8 = a2;
    *result = 0;
    result[1] = 0;
    v6 = result[3];
    if (v6)
    {
      if (v2)
      {
        (*(*v6 + 16))(v6);
        v4 = *v7;
        v2 = v7[1];
        goto LABEL_11;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
LABEL_11:
    a2 = v8;
    *v7 = 0;
    v7[1] = 0;
    result = v7[3];
    if (result && v2)
    {
      result = (*(*result + 16))(result, v4);
      a2 = v8;
    }

    goto LABEL_4;
  }

  result[2] = (v3 + 1);
  if (!v3)
  {
    v7 = result;
    v8 = a2;
    goto LABEL_11;
  }

  v5 = *v3;
  if (v5 >= 2)
  {
LABEL_4:
    *a2 = 0;
    a2[24] = 0;
    return result;
  }

  return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>,void>::decode<IPC::Decoder>(result, v5, a2);
}

uint64_t *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (a2 == 1 && (result = IPC::Decoder::decode<WebKit::WebGPU::Extent3DDict>(result), (v4 & 0x100000000) != 0))
    {
      *a3 = result;
      *(a3 + 8) = v4;
      v5 = 1;
      *(a3 + 16) = 1;
    }

    else
    {
      v5 = 0;
      *a3 = 0;
    }
  }

  else
  {
    result = IPC::Decoder::decode<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(result, v7);
    if (v8 == 1)
    {
      *a3 = v7[0];
      *(a3 + 8) = v7[1];
      v6 = (a3 + 16);
      v5 = 1;
    }

    else
    {
      v5 = 0;
      v6 = a3;
    }

    *v6 = 0;
  }

  *(a3 + 24) = v5;
  return result;
}

unint64_t IPC::Decoder::decode<WebKit::WebGPU::Extent3DDict>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebKit::WebGPU::Extent3DDict,void>::decode(a1);
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

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::WebGPU::TextureUsage>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v9 = a1[3];
    if (v9)
    {
      if (v1)
      {
        (*(*v9 + 16))(v9);
        v3 = *v11;
        v1 = v11[1];
        goto LABEL_11;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_11;
  }

  a1[2] = (v2 + 1);
  if (v2)
  {
    v4 = *v2;
    v5 = 1;
    goto LABEL_4;
  }

  v11 = a1;
LABEL_11:
  *v11 = 0;
  v11[1] = 0;
  v10 = v11[3];
  if (v10 && v1)
  {
    (*(*v10 + 16))(v10, v3);
  }

  v4 = 0;
  v5 = 0;
LABEL_4:
  v6 = v4 < 0x20;
  v7 = v4 | 0x100;
  if ((v5 & v6) != 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      result = IPC::ArgumentCoder<std::optional<WebKit::WebGPU::VertexBufferLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::VertexBufferLayout> const&>(a1, v6);
      v6 += 40;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::VertexBufferLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::VertexBufferLayout> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 32))
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::VertexBufferLayout,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

WTF *IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(WTF *result, uint64_t a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (*(result + 1) >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 12);
    v5 = *(result + 1);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *result += v4;
      *(result + 1) = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 1) = 0;
LABEL_5:
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    v10 = 40 * v8;
    do
    {
      result = IPC::ArgumentCoder<std::optional<WebKit::WebGPU::VertexBufferLayout>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::VertexBufferLayout> const&>(v2, v9);
      v9 += 40;
      v10 -= 40;
    }

    while (v10);
  }

  return result;
}

WTF *IPC::ArgumentCoder<std::optional<WebKit::WebGPU::VertexBufferLayout>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::VertexBufferLayout> const&>(WTF *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  if (*(a2 + 32))
  {
    v2 = a2;
    if (!v4)
    {
      goto LABEL_30;
    }

    **result = 1;
    v5 = *(result + 1);
    if (!v5)
    {
      goto LABEL_29;
    }

    ++*result;
    *(result + 1) = v5 - 1;
    while (1)
    {
      if ((*(v2 + 32) & 1) == 0)
      {
        v23 = std::__throw_bad_optional_access[abi:sn200100]();
        return IPC::Decoder::decode<std::optional<WebKit::WebGPU::VertexBufferLayout>>(v23, v24);
      }

      result = IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(v3, v2);
      if (!*(v3 + 8))
      {
        break;
      }

      **v3 = *(v2 + 8);
      v6 = *(v3 + 8);
      if (v6)
      {
        v7 = v6 - 1;
        v8 = *v3 + 1;
        *v3 = v8;
        *(v3 + 8) = v7;
        v9 = (v2 + 16);
        v10 = (v2 + 28);
        v11 = -v8 & 7 | 8;
        if (v7 < v11)
        {
          goto LABEL_33;
        }

        *(v8 + (-v8 & 7)) = *v10;
        v12 = *(v3 + 8);
        v13 = v12 >= v11;
        v14 = v12 - v11;
        if (v13)
        {
          v15 = (*v3 + v11);
          *v3 = v15;
          *(v3 + 8) = v14;
          goto LABEL_12;
        }
      }

LABEL_29:
      __break(1u);
LABEL_30:
      *v3 = 0;
      *(v3 + 8) = 0;
    }

    v9 = (v2 + 16);
    v10 = (v2 + 28);
LABEL_33:
    v15 = 0;
    v14 = 0;
    *v3 = 0;
    *(v3 + 8) = 0;
LABEL_12:
    v16 = *v10;
    if (v16)
    {
      v17 = 24 * v16;
      v2 = *v9 + 8;
      do
      {
        if (v14)
        {
          *v15 = *(v2 - 8);
          v18 = *(v3 + 8);
          if (!v18)
          {
            goto LABEL_29;
          }

          ++*v3;
          *(v3 + 8) = v18 - 1;
        }

        else
        {
          *v3 = 0;
          *(v3 + 8) = 0;
        }

        result = IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(v3, v2);
        v19 = -*v3;
        v20 = v19 & 3 | 4;
        if (*(v3 + 8) < v20)
        {
          v15 = 0;
          v14 = 0;
          *v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *(*v3 + (v19 & 3)) = *(v2 + 8);
          v21 = *(v3 + 8);
          v13 = v21 >= v20;
          v14 = v21 - v20;
          if (!v13)
          {
            goto LABEL_29;
          }

          v15 = (*v3 + v20);
          *v3 = v15;
          *(v3 + 8) = v14;
        }

        v2 += 24;
        v17 -= 24;
      }

      while (v17);
    }
  }

  else if (v4)
  {
    **result = 0;
    v22 = *(result + 1);
    if (!v22)
    {
      goto LABEL_29;
    }

    ++*result;
    *(result + 1) = v22 - 1;
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
  }

  return result;
}

WTF *IPC::Decoder::decode<std::optional<WebKit::WebGPU::VertexBufferLayout>>(_BYTE *a1, void *a2)
{
  v5 = a2[2];
  v6 = *a2;
  v7 = a2[1];
  if (v7 <= v5 - v6)
  {
    *a2 = 0;
    a2[1] = 0;
    v55 = a2[3];
    if (v55)
    {
      if (v7)
      {
        (*(*v55 + 16))(v55);
        v6 = *a2;
        v7 = a2[1];
        goto LABEL_89;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_89:
    *a2 = 0;
    a2[1] = 0;
    v56 = a2[3];
    if (v56)
    {
      if (v7)
      {
        (*(*v56 + 16))(v56, v6);
        v6 = *a2;
        v7 = a2[1];
        goto LABEL_92;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_92:
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v7)
    {
      result = (*(*result + 16))(result, v6);
    }

    goto LABEL_93;
  }

  a2[2] = v5 + 1;
  if (!v5)
  {
    goto LABEL_89;
  }

  if (*v5 >= 2u)
  {
    goto LABEL_92;
  }

  if (!*v5)
  {
    LOBYTE(v62[0]) = 0;
    v65 = 0;
    result = std::__optional_move_base<WebKit::WebGPU::VertexBufferLayout,false>::__optional_move_base[abi:sn200100](a1, v62);
    a1[40] = 1;
    if (v65 == 1)
    {
      goto LABEL_59;
    }

    goto LABEL_94;
  }

  v8 = v5 & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 8);
  v10 = v8 + 8 - v6;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (v11 && v12 > 7)
  {
    v14 = (v8 + 16);
    a2[2] = v14;
    if (v9)
    {
      v15 = *v9;
      v16 = 1;
      goto LABEL_12;
    }

    v47 = v7;
    v48 = v6;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    *a2 = 0;
    a2[1] = 0;
    v49 = a2[3];
    if (v49)
    {
      (*(*v49 + 16))(v49);
      v48 = *a2;
      v47 = a2[1];
    }
  }

  *a2 = 0;
  a2[1] = 0;
  v50 = a2[3];
  if (v50 && v47)
  {
    (*(*v50 + 16))(v50, v48, v47);
    v6 = *a2;
    v7 = a2[1];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v16 = 0;
  v15 = 0;
  v14 = a2[2];
LABEL_12:
  if (v7 <= v14 - v6)
  {
    *a2 = 0;
    a2[1] = 0;
    v59 = a2[3];
    if (v59)
    {
      if (v7)
      {
        (*(*v59 + 16))(v59);
        v6 = *a2;
        v7 = a2[1];
        goto LABEL_102;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
  }

  else
  {
    a2[2] = v14 + 1;
    if (v14)
    {
      v17 = *v14;
      if (v17 < 2)
      {
        v18 = v17 | 0x100;
        goto LABEL_16;
      }

      goto LABEL_105;
    }
  }

LABEL_102:
  *a2 = 0;
  a2[1] = 0;
  v60 = a2[3];
  if (v60)
  {
    if (v7)
    {
      (*(*v60 + 16))(v60, v6);
      v6 = *a2;
      v7 = a2[1];
      goto LABEL_105;
    }
  }

  else
  {
    v7 = 0;
  }

  v6 = 0;
LABEL_105:
  *a2 = 0;
  a2[1] = 0;
  v61 = a2[3];
  if (v61)
  {
    if (v7)
    {
      (*(*v61 + 16))(v61, v6);
      v18 = 0;
      v6 = *a2;
      v7 = a2[1];
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
  }

  v6 = 0;
  v18 = 0;
LABEL_16:
  v19 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v7 < v19 - v6 || v7 - (v19 - v6) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v51 = a2[3];
    if (v51)
    {
      if (v7)
      {
        (*(*v51 + 16))(v51);
        v6 = *a2;
        v7 = a2[1];
LABEL_80:
        *a2 = 0;
        a2[1] = 0;
        v52 = a2[3];
        if (v52 && v7)
        {
          (*(*v52 + 16))(v52, v6);
        }

        v23 = 0;
        goto LABEL_82;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
    goto LABEL_80;
  }

  a2[2] = v19 + 8;
  if (!v19)
  {
    goto LABEL_80;
  }

  v20 = *v19;
  v69 = 0;
  v70 = 0;
  if (v20 >= 0xAAAA)
  {
    do
    {
      IPC::Decoder::decode<WebKit::WebGPU::VertexAttribute>(&v66, a2);
      if ((v68 & 1) == 0)
      {
        goto LABEL_45;
      }

      v29 = HIDWORD(v70);
      if (HIDWORD(v70) == v70)
      {
        v30 = WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v69, HIDWORD(v70) + 1, &v66);
        v31 = HIDWORD(v70);
        result = v69;
        v32 = v69 + 24 * HIDWORD(v70);
        v33 = *v30;
        *(v32 + 2) = *(v30 + 16);
        *v32 = v33;
        v29 = v31;
      }

      else
      {
        result = v69;
        v34 = v69 + 24 * HIDWORD(v70);
        v35 = v66;
        *(v34 + 2) = v67;
        *v34 = v35;
      }

      v36 = (v29 + 1);
      HIDWORD(v70) = v36;
      --v20;
    }

    while (v20);
    if (v70 <= v36)
    {
      v23 = result;
      goto LABEL_31;
    }

    if (!v36)
    {
      goto LABEL_70;
    }

    if (v36 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      return result;
    }

    v37 = result;
    v38 = 24 * v36;
    v23 = WTF::fastMalloc((24 * v36));
    LODWORD(v70) = v38 / 0x18;
    v69 = v23;
    result = v37;
    if (v23 == v37)
    {
LABEL_70:
      v69 = 0;
      LODWORD(v70) = 0;
    }

    else
    {
      v39 = 0;
      do
      {
        v40 = v23 + v39;
        v41 = *(v37 + v39);
        *(v40 + 2) = *(v37 + v39 + 16);
        *v40 = v41;
        v39 += 24;
      }

      while (v38 != v39);
      if (!v37)
      {
        goto LABEL_31;
      }
    }

    WTF::fastFree(result, v6);
    v23 = v69;
    goto LABEL_31;
  }

  if (!v20)
  {
    v23 = 0;
LABEL_31:
    v69 = 0;
    v2 = v70;
    v28 = 1;
    HIDWORD(v70) = 0;
    goto LABEL_46;
  }

  LODWORD(v70) = 24 * v20 / 0x18u;
  v69 = WTF::fastMalloc((24 * v20));
  while (1)
  {
    IPC::Decoder::decode<WebKit::WebGPU::VertexAttribute>(&v66, a2);
    if ((v68 & 1) == 0)
    {
      break;
    }

    v21 = HIDWORD(v70);
    if (HIDWORD(v70) == v70)
    {
      v22 = WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v69, HIDWORD(v70) + 1, &v66);
      v21 = HIDWORD(v70);
      v23 = v69;
      v24 = v69 + 24 * HIDWORD(v70);
      v25 = *v22;
      *(v24 + 2) = *(v22 + 16);
    }

    else
    {
      v23 = v69;
      v24 = v69 + 24 * HIDWORD(v70);
      v25 = v66;
      *(v24 + 2) = v67;
    }

    *v24 = v25;
    HIDWORD(v70) = v21 + 1;
    if (!--v20)
    {
      goto LABEL_31;
    }
  }

LABEL_45:
  v28 = 0;
  v23 = 0;
LABEL_46:
  v42 = v69;
  if (v69)
  {
    v69 = 0;
    LODWORD(v70) = 0;
    WTF::fastFree(v42, v6);
  }

  if (v28)
  {
    v43 = 1;
    goto LABEL_50;
  }

LABEL_82:
  v6 = *a2;
  v53 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v54 = a2[3];
  if (v54 && v53)
  {
    (*(*v54 + 16))(v54, v6);
  }

  v43 = 0;
LABEL_50:
  if (!*a2)
  {
LABEL_62:
    LOBYTE(v62[0]) = 0;
    v65 = 0;
    if (!v23)
    {
      v43 = 0;
    }

    if (v43 == 1)
    {
      WTF::fastFree(v23, v6);
    }

    goto LABEL_66;
  }

  if ((v16 & 1) == 0 || (*&v66 = v15, v18 <= 0xFF) || (BYTE8(v66) = v18, (v43 & 1) == 0))
  {
    __break(1u);
    goto LABEL_62;
  }

  v67 = v23;
  v68 = v2;
  std::optional<WebKit::WebGPU::VertexBufferLayout>::optional[abi:sn200100]<WebKit::WebGPU::VertexBufferLayout,0>(v62, &v66);
  result = v67;
  if (v67)
  {
    v67 = 0;
    LODWORD(v68) = 0;
    result = WTF::fastFree(result, v44);
  }

  if ((v65 & 1) == 0)
  {
LABEL_66:
    v45 = *a2;
    v46 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v46)
    {
      result = (*(*result + 16))(result, v45);
    }
  }

  if (v65 != 1)
  {
LABEL_93:
    *a1 = 0;
    a1[40] = 0;
    goto LABEL_94;
  }

  result = std::optional<WebKit::WebGPU::VertexBufferLayout>::optional[abi:sn200100]<WebKit::WebGPU::VertexBufferLayout,0>(a1, v62);
  a1[40] = 1;
  if (v65)
  {
LABEL_59:
    result = v63;
    if (v63)
    {
      v63 = 0;
      v64 = 0;
      result = WTF::fastFree(result, v27);
    }
  }

LABEL_94:
  if ((a1[40] & 1) == 0)
  {
    v57 = *a2;
    v58 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v58)
      {
        return (*(*result + 16))(result, v57);
      }
    }
  }

  return result;
}

void sub_19D856438(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, int a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, WTF *a20, int a21)
{
  if (a15 == 1)
  {
    if (a12)
    {
      WTF::fastFree(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WebKit::WebGPU::VertexBufferLayout,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v3 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v3;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_19D856544(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v5, a2);
  }

  if (*(v2 + 32) == 1)
  {
    v6 = *v3;
    if (*v3)
    {
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      WTF::fastFree(v6, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::optional<WebKit::WebGPU::VertexBufferLayout>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  std::__optional_move_base<WebKit::WebGPU::VertexBufferLayout,false>::__optional_move_base[abi:sn200100](*a1 + 40 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19D85674CLL);
    }

    v3 = *a1;
    v4 = (*a1 + 40 * *(a1 + 12));
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(a1 + 8) = v5 / 0x28;
    *a1 = v6;
    WTF::VectorMover<false,std::optional<WebKit::WebGPU::VertexBufferLayout>>::move(v3, v4, v6);
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

WTF *WTF::VectorMover<false,std::optional<WebKit::WebGPU::VertexBufferLayout>>::move(WTF *result, WTF *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = std::__optional_move_base<WebKit::WebGPU::VertexBufferLayout,false>::__optional_move_base[abi:sn200100](a3, v5);
      if (*(v5 + 32) == 1)
      {
        result = *(v5 + 2);
        if (result)
        {
          *(v5 + 2) = 0;
          *(v5 + 6) = 0;
          result = WTF::fastFree(result, v6);
        }
      }

      a3 += 40;
      v5 = (v5 + 40);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebGPU::VertexAttribute,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebGPU::VertexAttribute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 24 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebGPU::VertexAttribute,void>::encode(a1, v6);
      v6 += 24;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::WebGPU::VertexAttribute>(uint64_t result, void *a2)
{
  v2 = a2;
  v3 = a2[2];
  v4 = *a2;
  v5 = v2[1];
  if (v5 <= &v3[-v4])
  {
    v34 = result;
    v39 = v2;
    *v2 = 0;
    v2[1] = 0;
    v20 = v2[3];
    if (v20)
    {
      if (v5)
      {
        (*(*v20 + 16))(v20);
        v4 = *v39;
        v5 = v39[1];
LABEL_42:
        *v39 = 0;
        v39[1] = 0;
        v21 = v39[3];
        if (v21)
        {
          if (v5)
          {
            (*(*v21 + 16))(v21, v4);
            result = v34;
            v2 = v39;
            v4 = *v39;
            v5 = v39[1];
LABEL_45:
            *v2 = 0;
            v2[1] = 0;
            v22 = v2[3];
            if (v22)
            {
              v35 = result;
              v40 = v2;
              if (v5)
              {
                (*(*v22 + 16))(v22, v4);
                v7 = 0;
                result = v35;
                v2 = v40;
                v4 = *v40;
                v5 = v40[1];
              }

              else
              {
                v4 = 0;
                v7 = 0;
              }
            }

            else
            {
              v4 = 0;
              v5 = 0;
              v7 = 0;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v5 = 0;
        }

        v4 = 0;
        result = v34;
        v2 = v39;
        goto LABEL_45;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = 0;
    goto LABEL_42;
  }

  v2[2] = v3 + 1;
  if (!v3)
  {
    v34 = result;
    v39 = v2;
    goto LABEL_42;
  }

  v6 = *v3;
  if (v6 >= 0x1F)
  {
    goto LABEL_45;
  }

  v7 = v6 | 0x100;
LABEL_5:
  v8 = ((v2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v5 >= v8 - v4 && v5 - (v8 - v4) > 7)
  {
    v2[2] = v8 + 1;
    if (v8)
    {
      v10 = *v8;
      v11 = 1;
      v12 = v4;
      goto LABEL_12;
    }

    v28 = v7;
    v31 = result;
    v36 = v2;
    goto LABEL_28;
  }

  while (1)
  {
    v28 = v7;
    v31 = result;
    v36 = v2;
    *v2 = 0;
    v2[1] = 0;
    v16 = v2[3];
    if (!v16)
    {
      v5 = 0;
LABEL_27:
      v4 = 0;
      goto LABEL_28;
    }

    if (!v5)
    {
      goto LABEL_27;
    }

    (*(*v16 + 16))(v16);
    v4 = *v36;
    v5 = v36[1];
LABEL_28:
    *v36 = 0;
    v36[1] = 0;
    v17 = v36[3];
    if (v17)
    {
      if (v5)
      {
        (*(*v17 + 16))(v17, v4);
        v11 = 0;
        v10 = 0;
        result = v31;
        v2 = v36;
        v4 = *v36;
        v5 = v36[1];
        v12 = *v36;
        goto LABEL_31;
      }

      v4 = 0;
      v12 = 0;
    }

    else
    {
      v4 = 0;
      v12 = 0;
      v5 = 0;
    }

    v11 = 0;
    v10 = 0;
    result = v31;
    v2 = v36;
LABEL_31:
    v7 = v28;
LABEL_12:
    v13 = ((v2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v13 - v4 || v5 - (v13 - v4) <= 3)
    {
      v24 = v11;
      v26 = v10;
      v29 = v7;
      v32 = result;
      v37 = v2;
      *v2 = 0;
      v2[1] = 0;
      v18 = v2[3];
      if (v18)
      {
        if (v5)
        {
          (*(*v18 + 16))(v18, v12);
          result = v32;
          v2 = v37;
          v12 = *v37;
          v5 = v37[1];
          goto LABEL_35;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      result = v32;
LABEL_35:
      v7 = v29;
      v10 = v26;
      v11 = v24;
      goto LABEL_36;
    }

    v2[2] = v13 + 1;
    if (v13)
    {
      v15 = *v13 | 0x100000000;
      if (!v4)
      {
        break;
      }

      goto LABEL_19;
    }

LABEL_36:
    v30 = v7;
    v27 = v10;
    v25 = v11;
    v33 = result;
    v38 = v2;
    *v2 = 0;
    v2[1] = 0;
    v19 = v2[3];
    if (!v19)
    {
      v5 = 0;
LABEL_38:
      v4 = 0;
      goto LABEL_58;
    }

    if (!v5)
    {
      goto LABEL_38;
    }

    (*(*v19 + 16))(v19, v12);
    v15 = 0;
    result = v33;
    v2 = v38;
    v4 = *v38;
    v7 = v30;
    v10 = v27;
    v11 = v25;
    if (!*v38)
    {
      break;
    }

LABEL_19:
    if (v7 > 0xFF && (v11 & 1) != 0 && (v15 & 0x100000000) != 0)
    {
      *result = v7;
      *(result + 8) = v10;
      *(result + 16) = v15;
      *(result + 24) = 1;
      return result;
    }

    __break(1u);
  }

  v5 = v2[1];
  v19 = v2[3];
LABEL_58:
  *result = 0;
  *(result + 24) = 0;
  *v2 = 0;
  v2[1] = 0;
  if (v19 && v5)
  {
    v23 = *(*v19 + 16);

    return v23(v19, v4);
  }

  return result;
}

void *IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(void *result, uint64_t a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (result[1] >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 12);
    v5 = result[1];
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *result += v4;
      result[1] = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *result = 0;
  result[1] = 0;
LABEL_5:
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    v10 = 8 * v8;
    do
    {
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(v2, v9++);
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

mpark *IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v8 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if (*(a2 + 40))
    {
      v10 = *(a2 + 32);
      IPC::Encoder::operator<<<BOOL>(a1, &v10);
      return IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&>(a1, a2, v10);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&>(v5, v6, v7);
    }
  }

  else
  {
    v9 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v9);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 32))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *(a2 + 12);
    v6 = *a2;

    return IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v6, v5);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 32) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WebKit::WebGPU::ColorDict,void>::encode(result, a2);
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&>(mpark *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (!*(a1 + 1))
  {
    goto LABEL_6;
  }

  **a1 = v2;
  v3 = *(a1 + 1);
  if (!v3)
  {
    __break(1u);
LABEL_6:
    *a1 = 0;
    *(a1 + 1) = 0;
    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&>(a1, a2, v2);
  }

  ++*a1;
  *(a1 + 1) = v3 - 1;
  return IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&>(a1, a2, v2);
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 32))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *(a2 + 12);
    v6 = *a2;

    return IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(a1, v6, v5);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 32) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WebKit::WebGPU::ColorDict,void>::encode(result, a2);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 1);
  v3 = *(result + 2);
  v4 = *result;
  if (v2 <= &v3[-*result])
  {
    v7 = result;
    v8 = a2;
    *result = 0;
    *(result + 1) = 0;
    v6 = *(result + 3);
    if (v6)
    {
      if (v2)
      {
        (*(*v6 + 16))(v6);
        v4 = *v7;
        v2 = *(v7 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
LABEL_11:
    a2 = v8;
    *v7 = 0;
    *(v7 + 1) = 0;
    result = *(v7 + 3);
    if (result && v2)
    {
      result = (*(*result + 16))(result, v4);
      a2 = v8;
    }

    goto LABEL_4;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
    v7 = result;
    v8 = a2;
    goto LABEL_11;
  }

  v5 = *v3;
  if (v5 >= 2)
  {
LABEL_4:
    *a2 = 0;
    a2[40] = 0;
    return result;
  }

  return IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::decode<IPC::Decoder>(result, v5, a2);
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::decode<IPC::Decoder,0ul>(a1, a2, a3);
  }

  else
  {
    result = IPC::Decoder::decode<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v7);
    if (v8 == 1)
    {
      *a3 = v7[0];
      *(a3 + 8) = v7[1];
      v5 = (a3 + 32);
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v5 = a3;
    }

    *v5 = 0;
    *(a3 + 40) = v6;
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::decode<IPC::Decoder,0ul>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    v4 = result;
    result = IPC::ArgumentCoder<WebKit::WebGPU::ColorDict,void>::decode(result, v9);
    if (v10)
    {
      v5 = v9[1];
      *a3 = v9[0];
      *(a3 + 16) = v5;
      v6 = 1;
      *(a3 + 32) = 1;
    }

    else
    {
      v7 = *v4;
      v8 = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      result = *(v4 + 3);
      if (result)
      {
        if (v8)
        {
          result = (*(*result + 16))(result, v7);
        }
      }

      v6 = 0;
      *a3 = 0;
    }

    *(a3 + 40) = v6;
  }

  else
  {
    *a3 = 0;
    *(a3 + 40) = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebGPU::BlendState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::BlendState> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[6])
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (a2[6])
    {
      IPC::ArgumentCoder<WebKit::WebGPU::StorageTextureBindingLayout,void>::encode(a1, a2);
      return IPC::ArgumentCoder<WebKit::WebGPU::StorageTextureBindingLayout,void>::encode(a1, a2 + 3);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::CoreIPCAuditToken>,void>::encode<IPC::Encoder,std::optional<WebKit::CoreIPCAuditToken> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::CoreIPCAuditToken>,void>::encode<IPC::Encoder,std::optional<WebKit::CoreIPCAuditToken> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 32) == 1)
    {
      for (i = 0; i != 32; i += 4)
      {
        result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + i));
      }
    }

    else
    {
      v6 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*(a2 + 8))
  {
    if (!v2)
    {
      goto LABEL_15;
    }

    **result = 1;
    v2 = *(result + 8);
    if (!v2)
    {
      goto LABEL_14;
    }

    v3 = v2 - 1;
    v2 = *result + 1;
    *result = v2;
    *(result + 8) = v3;
    while ((*(a2 + 8) & 1) != 0)
    {
      v4 = -v2 & 7 | 8;
      if (v3 < v4)
      {
        goto LABEL_17;
      }

      *(v2 + (-v2 & 7)) = *a2;
      v5 = *(result + 8);
      v6 = v5 >= v4;
      v2 = v5 - v4;
      if (v6)
      {
        v7 = *result + v4;
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      v3 = 0;
      *result = 0;
      *(result + 8) = 0;
    }

    result = std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_17;
  }

  if (!v2)
  {
LABEL_17:
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

  **result = 0;
  v2 = *(result + 8);
  if (!v2)
  {
    goto LABEL_14;
  }

  --v2;
  v7 = *result + 1;
LABEL_10:
  *result = v7;
  *(result + 8) = v2;
  return result;
}