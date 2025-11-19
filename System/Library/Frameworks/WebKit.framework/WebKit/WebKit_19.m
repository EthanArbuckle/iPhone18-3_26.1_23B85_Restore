void IPC::Decoder::decode<WebCore::ResourceRequest>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, a2);
  if ((*(a2 + 200) & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

WTF::RefCountedBase *IPC::Decoder::decode<IPC::FormDataReference>@<X0>(WTF *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<IPC::FormDataReference,void>::decode(a1, a2);
  if ((a2[8] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(WTF::StringImpl *result, IPC::Decoder *this)
{
  v3 = result;
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_10;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_10:
    IPC::Decoder::markInvalid(this);
    goto LABEL_11;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_11:
    IPC::Decoder::markInvalid(this);
    *v3 = 0;
    *(v3 + 8) = 0;
    goto LABEL_12;
  }

  if (!v5)
  {
    *result = 0;
    goto LABEL_7;
  }

  result = IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::decode(&v6, this);
  *v3 = 0;
  *(v3 + 8) = 0;
  if (v7 == 1)
  {
    *v3 = v6;
LABEL_7:
    *(v3 + 8) = 1;
    return result;
  }

LABEL_12:

  return IPC::Decoder::markInvalid(this);
}

uint64_t IPC::Decoder::decode<WebCore::StoredCredentialsPolicy>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::StoredCredentialsPolicy,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<std::optional<WebKit::NavigatingToAppBoundDomain>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<std::optional<WebKit::NavigatingToAppBoundDomain>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2 & 0xFFFFFF;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2 & 0xFFFFFF;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::FetchOptions>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::FetchOptions,void>::decode(a2, a1);
  if ((*(a1 + 48) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WTF::URL>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::URL,void>::decode(a1, a2);
  if ((a2[40] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::CrossOriginEmbedderPolicy>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WebCore::LockHistory>(a2);
  v5 = IPC::Decoder::decode<WebCore::LockHistory>(a2);
  IPC::Decoder::decode<WTF::String>(a2, &v13);
  result = IPC::Decoder::decode<WTF::String>(a2, &v11);
  v8 = *a2;
  if (*a2)
  {
    if (v4 > 0xFFu && v5 > 0xFFu && (v14 & 1) != 0)
    {
      v9 = v13;
      v13 = 0;
      if (v12)
      {
        v10 = v11;
        *a1 = v4 | (v5 << 8);
        *(a1 + 8) = v9;
        *(a1 + 16) = v10;
        *(a1 + 24) = 1;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (v12)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

LABEL_7:
  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if (!v8)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::HTTPHeaderMap>(uint64_t a1, IPC::Decoder *this)
{
  v5 = *(this + 1);
  v6 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 - *this;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8 || v9 <= 7)
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_66;
  }

  *(this + 2) = v6 + 1;
  if (v6)
  {
    v2 = *v6;
    v48 = 0;
    v49 = 0;
    if (v2 < 0x10000)
    {
      if (!v2)
      {
LABEL_30:
        v51[0] = v48;
        v20 = v49;
        v48 = 0;
        v49 = 0;
        v51[1] = v20;
        v52 = 1;
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v48, this);
        goto LABEL_31;
      }

      LODWORD(v49) = v2;
      v48 = WTF::fastMalloc((16 * v2));
      while (1)
      {
        IPC::Decoder::decode<WebCore::HTTPHeaderMap::CommonHeader>(v46, this);
        if ((v47 & 1) == 0)
        {
          goto LABEL_26;
        }

        if (HIDWORD(v49) != v49)
        {
          break;
        }

        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::HTTPHeaderMap::CommonHeader>(&v48, v46);
        if (v47)
        {
          goto LABEL_13;
        }

LABEL_14:
        if (!--v2)
        {
          goto LABEL_30;
        }
      }

      v11 = HIDWORD(v49) + 1;
      v12 = v48 + 16 * HIDWORD(v49);
      *v12 = v46[0];
      v13 = v46[1];
      v46[1] = 0;
      *(v12 + 8) = v13;
      HIDWORD(v49) = v11;
LABEL_13:
      v14 = v46[1];
      v46[1] = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, this);
      }

      goto LABEL_14;
    }

    while (1)
    {
      IPC::Decoder::decode<WebCore::HTTPHeaderMap::CommonHeader>(v46, this);
      if ((v47 & 1) == 0)
      {
LABEL_26:
        LOBYTE(v51[0]) = 0;
        v52 = 0;
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v48, this);
        goto LABEL_27;
      }

      if (HIDWORD(v49) != v49)
      {
        break;
      }

      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::HTTPHeaderMap::CommonHeader>(&v48, v46);
      if (v47)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (!--v2)
      {
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::shrinkCapacity(&v48, HIDWORD(v49));
        goto LABEL_30;
      }
    }

    v15 = HIDWORD(v49) + 1;
    v16 = v48 + 16 * HIDWORD(v49);
    *v16 = v46[0];
    v17 = v46[1];
    v46[1] = 0;
    *(v16 + 8) = v17;
    HIDWORD(v49) = v15;
LABEL_21:
    v18 = v46[1];
    v46[1] = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, this);
    }

    goto LABEL_22;
  }

LABEL_66:
  IPC::Decoder::markInvalid(this);
  LOBYTE(v51[0]) = 0;
  v52 = 0;
LABEL_27:
  IPC::Decoder::markInvalid(this);
LABEL_31:
  v21 = *(this + 1);
  v22 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 - *this;
  v8 = v21 >= v23;
  v24 = v21 - v23;
  if (!v8 || v24 <= 7)
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_67;
  }

  *(this + 2) = v22 + 1;
  if (v22)
  {
    v2 = *v22;
    v53 = 0;
    v54 = 0;
    if (v2 >= 0x10000)
    {
      goto LABEL_68;
    }

    if (!v2)
    {
LABEL_39:
      v48 = v53;
      v26 = v54;
      v53 = 0;
      v54 = 0;
      v49 = v26;
      v50 = 1;
      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v53, v19);
      v2 = *this != 0;
      if (*this)
      {
        if ((v52 & 1) == 0)
        {
          goto LABEL_76;
        }

        WebCore::HTTPHeaderMap::HTTPHeaderMap();
        *&v28 = 0;
        v29 = v46[1];
        *a1 = v46[0];
        *(a1 + 8) = v29;
        v30 = v47;
        *v46 = v28;
        v47 = v28;
        *(a1 + 16) = v30;
        *(a1 + 32) = 1;
        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v47, v31);
        result = WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v46, v32);
        if ((v50 & 1) == 0)
        {
          LOBYTE(v2) = 1;
          goto LABEL_43;
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 32) = 0;
      }

      result = WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v48, v27);
      goto LABEL_43;
    }

    v34 = WTF::fastMalloc((16 * v2));
    LODWORD(v54) = v2;
    v53 = v34;
    while (1)
    {
      IPC::Decoder::decode<WebCore::HTTPHeaderMap::UncommonHeader>(v46, this);
      if ((v47 & 1) == 0)
      {
        goto LABEL_74;
      }

      if (HIDWORD(v54) != v54)
      {
        break;
      }

      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::HTTPHeaderMap::UncommonHeader>(&v53, v46);
      if (v47)
      {
        goto LABEL_52;
      }

LABEL_54:
      if (!--v2)
      {
        goto LABEL_39;
      }
    }

    v35 = HIDWORD(v54) + 1;
    v36 = (v53 + 16 * HIDWORD(v54));
    v37 = v46[0];
    v46[0] = 0;
    *v36 = v37;
    v38 = v46[1];
    v46[1] = 0;
    v36[1] = v38;
    HIDWORD(v54) = v35;
LABEL_52:
    v39 = v46[1];
    v46[1] = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v19);
    }

    v40 = v46[0];
    v46[0] = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v19);
    }

    goto LABEL_54;
  }

LABEL_67:
  IPC::Decoder::markInvalid(this);
  while (1)
  {
    result = IPC::Decoder::markInvalid(this);
    if (!*this)
    {
      break;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::HTTPHeaderMap::UncommonHeader>(&v53, v46);
    while (1)
    {
      std::optional<WebCore::HTTPHeaderMap::UncommonHeader>::~optional(v46, v41);
      if (!--v2)
      {
        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::shrinkCapacity(&v53, HIDWORD(v54));
        goto LABEL_39;
      }

LABEL_68:
      IPC::Decoder::decode<WebCore::HTTPHeaderMap::UncommonHeader>(v46, this);
      if ((v47 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v54) == v54)
      {
        goto LABEL_77;
      }

      v42 = HIDWORD(v54) + 1;
      v43 = (v53 + 16 * HIDWORD(v54));
      v44 = v46[0];
      v46[0] = 0;
      *v43 = v44;
      v45 = v46[1];
      v46[1] = 0;
      v43[1] = v45;
      HIDWORD(v54) = v42;
    }

    std::optional<WebCore::HTTPHeaderMap::UncommonHeader>::~optional(v46, v41);
LABEL_74:
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v53, v19);
  }

  LOBYTE(v2) = 0;
  *a1 = 0;
  *(a1 + 32) = 0;
LABEL_43:
  if (v52 == 1)
  {
    result = WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v51, v27);
  }

  if ((v2 & 1) == 0)
  {
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::SandboxFlag>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::SandboxFlag>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2 & 0xFFFFFF;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::CrossOriginOpenerPolicy>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WebCore::ImageBufferPixelFormat>(a2);
  v5 = IPC::Decoder::decode<WebCore::ImageBufferPixelFormat>(a2);
  IPC::Decoder::decode<WTF::String>(a2, &v13);
  result = IPC::Decoder::decode<WTF::String>(a2, &v11);
  v8 = *a2;
  if (*a2)
  {
    if (v4 & 0x100) != 0 && (v5 & 0x100) != 0 && (v14)
    {
      v9 = v13;
      v13 = 0;
      if (v12)
      {
        v10 = v11;
        *a1 = v4 | (v5 << 8);
        *(a1 + 8) = v9;
        *(a1 + 16) = v10;
        *(a1 + 24) = 1;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (v12)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

LABEL_7:
  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if (!v8)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t std::optional<WebCore::NavigationRequester>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 224) == 1)
  {
    v4 = *(a1 + 120);
    *(a1 + 120) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 112);
    *(a1 + 112) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(a1 + 88);
    *(a1 + 88) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, a2);
    v9 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v9)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v9, v8);
    }

    v10 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v10)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v10, v8);
    }

    v11 = *a1;
    *a1 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }
  }

  return a1;
}

void WebCore::CrossOriginOpenerPolicy::~CrossOriginOpenerPolicy(WebCore::CrossOriginOpenerPolicy *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

uint64_t std::optional<WTF::URL>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 40) == 1)
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  return a1;
}

uint64_t std::optional<WebCore::CrossOriginOpenerPolicy>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  return a1;
}

uint64_t std::optional<WebCore::HTTPHeaderMap>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 32) == 1)
  {
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((a1 + 16), a2);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(a1, v3);
  }

  return a1;
}

uint64_t std::optional<WebCore::FetchOptions>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  return a1;
}

WebCore::ResourceRequestBase *std::optional<WebCore::ResourceRequest>::~optional(WebCore::ResourceRequestBase *this)
{
  if (*(this + 200) == 1)
  {
    v2 = *(this + 24);
    *(this + 24) = 0;
    if (v2)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(this);
  }

  return this;
}

void IPC::ArgumentCoder<WebKit::NetworkSessionCreationParameters,void>::decode(_BYTE *a1, IPC::Decoder *a2)
{
  v253 = *MEMORY[0x1E69E9840];
  v93 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v94 = v3;
  IPC::Decoder::decode<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>>(a2, &v251);
  IPC::Decoder::decode<WTF::String>(a2, &v174);
  v92 = IPC::Decoder::decode<WebKit::AllowsCellularAccess>(a2);
  IPC::Decoder::decode<WTF::RetainPtr<__CFDictionary const*>>(a2, v4, &cf);
  IPC::Decoder::decode<WTF::String>(a2, &v170);
  IPC::Decoder::decode<WTF::String>(a2, &v168);
  v91 = IPC::Decoder::decode<BOOL>(a2);
  IPC::Decoder::decode<WTF::URL>(a2, &v164);
  IPC::Decoder::decode<WTF::URL>(a2, &v160);
  IPC::Decoder::decode<WTF::String>(a2, &v158);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a2, &v156);
  IPC::Decoder::decode<WTF::String>(a2, &v154);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a2, &v152);
  v90 = IPC::Decoder::decode<BOOL>(a2);
  v89 = IPC::Decoder::decode<BOOL>(a2);
  IPC::Decoder::decode<WebKit::WebPushD::WebPushDaemonConnectionConfiguration>(a2, v250);
  IPC::Decoder::decode<WTF::String>(a2, &v150);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a2, &v148);
  IPC::Decoder::decode<WTF::String>(a2, &v146);
  v88 = IPC::Decoder::decode<BOOL>(a2);
  v87 = IPC::Decoder::decode<BOOL>(a2);
  v86 = IPC::Decoder::decode<BOOL>(a2);
  v85 = IPC::Decoder::decode<BOOL>(a2);
  v84 = IPC::Decoder::decode<float>(a2);
  v83 = IPC::Decoder::decode<BOOL>(a2);
  v82 = IPC::Decoder::decode<BOOL>(a2);
  v81 = IPC::Decoder::decode<BOOL>(a2);
  v80 = IPC::Decoder::decode<BOOL>(a2);
  v78 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
  v79 = v5;
  v77 = IPC::Decoder::decode<BOOL>(a2);
  v76 = IPC::Decoder::decode<std::optional<BOOL>>(a2);
  v75 = IPC::Decoder::decode<BOOL>(a2);
  IPC::Decoder::decode<WTF::String>(a2, &v144);
  IPC::Decoder::decode<WTF::String>(a2, &v142);
  IPC::Decoder::decode<WTF::String>(a2, &v140);
  v6 = IPC::Decoder::decode<BOOL>(a2);
  v7 = IPC::Decoder::decode<BOOL>(a2);
  v8 = IPC::Decoder::decode<BOOL>(a2);
  v73 = IPC::Decoder::decode<unsigned long long>(a2);
  v74 = v9;
  v10 = IPC::Decoder::decode<WebKit::UnifiedOriginStorageLevel>(a2);
  v71 = IPC::Decoder::decode<unsigned long long>(a2);
  v72 = v11;
  IPC::Decoder::decode<std::optional<double>>(&v137, a2);
  IPC::Decoder::decode<std::optional<double>>(&v134, a2);
  IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v131);
  IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v128);
  IPC::Decoder::decode<WTF::String>(a2, &v126);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a2, &v124);
  IPC::Decoder::decode<WTF::String>(a2, &v122);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a2, &v120);
  IPC::Decoder::decode<WTF::String>(a2, &v118);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a2, &v116);
  IPC::Decoder::decode<WTF::String>(a2, &v114);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a2, &v112);
  IPC::Decoder::decode<WTF::String>(a2, &v110);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a2, &v108);
  v12 = IPC::Decoder::decode<BOOL>(a2);
  v13 = IPC::Decoder::decode<BOOL>(a2);
  v14 = IPC::Decoder::decode<BOOL>(a2);
  v15 = IPC::Decoder::decode<BOOL>(a2);
  IPC::Decoder::decode<std::optional<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v106, a2);
  IPC::Decoder::decode<WebKit::ResourceLoadStatisticsParameters>(&v100, a2);
  IPC::Decoder::decode<WTF::String>(a2, &v98);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a2, &v96);
  v16 = IPC::Decoder::decode<BOOL>(a2);
  if (*a2)
  {
    if ((v94 & 1) == 0
      || (v176[0] = v93, (v252 & 1) == 0)
      || (v177 = v251, (v175 & 1) == 0)
      || (v18 = v174, v174 = 0, v178 = v18, v92 <= 0xFFu)
      || (v179 = v92, (v173 & 1) == 0)
      || (v19 = cf, cf = 0, v180 = v19, (v171 & 1) == 0)
      || (v20 = v170, v170 = 0, v181 = v20, (v169 & 1) == 0)
      || (v21 = v168, v168 = 0, v182 = v21, (v91 & 0x100) == 0)
      || (v183 = v91, (v167 & 1) == 0)
      || (v22 = v164, v164 = 0, v184 = v22, v185 = v165, v186 = v166, LODWORD(v165) = v165 & 0xFFFFFFFE, (v163 & 1) == 0)
      || (v23 = v160, v160 = 0, v187 = v23, v188 = v161, v189 = v162, LODWORD(v161) = v161 & 0xFFFFFFFE, (v159 & 1) == 0)
      || (v24 = v158, v158 = 0, v190 = v24, (v157 & 1) == 0)
      || (v25 = v156, v156 = 0, v191 = v25, (v155 & 1) == 0)
      || (v26 = v154, v154 = 0, v192 = v26, (v153 & 1) == 0)
      || (v27 = v152, v152 = 0, v193 = v27, (v90 & 0x100) == 0)
      || (v194 = v90, (v89 & 0x100) == 0)
      || (v195 = v89, (v250[80] & 1) == 0)
      || (v28 = v16, WebKit::WebPushD::WebPushDaemonConnectionConfiguration::WebPushDaemonConnectionConfiguration(v196, v250), (v151 & 1) == 0)
      || (v29 = v150, v150 = 0, v196[10] = v29, (v149 & 1) == 0)
      || (v30 = v148, v148 = 0, v196[11] = v30, (v147 & 1) == 0)
      || (v31 = v146, v146 = 0, v196[12] = v31, (v88 & 0x100) == 0)
      || (v197 = v88, (v87 & 0x100) == 0)
      || (v198 = v87, (v86 & 0x100) == 0)
      || (v199 = v86, (v85 & 0x100) == 0)
      || (v200 = v85, (v84 & 0x100000000) == 0)
      || (v201 = v84, (v83 & 0x100) == 0)
      || (v202 = v83, (v82 & 0x100) == 0)
      || (v203 = v82, (v81 & 0x100) == 0)
      || (v204 = v81, (v80 & 0x100) == 0)
      || (v205 = v80, (v79 & 1) == 0)
      || (v206 = v78, v207 = BYTE4(v78), (v77 & 0x100) == 0)
      || (v208 = v77, (v76 & 0x10000) == 0)
      || (v209 = v76, (v75 & 0x100) == 0)
      || (v210 = v75, (v145 & 1) == 0)
      || (v32 = v144, v144 = 0, v211 = v32, (v143 & 1) == 0)
      || (v33 = v142, v142 = 0, v212 = v33, (v141 & 1) == 0)
      || (v34 = v140, v140 = 0, v213 = v34, (v6 & 0x100) == 0)
      || (v214 = v6, (v7 & 0x100) == 0)
      || (v215 = v7, (v8 & 0x100) == 0)
      || (v216 = v8, (v74 & 1) == 0)
      || (v217 = v73, v10 <= 0xFFu)
      || (v218 = v10, (v72 & 1) == 0)
      || (v219 = v71, (v139 & 1) == 0)
      || (v220 = v137, v221 = v138, (v136 & 1) == 0)
      || (v222 = v134, v223 = v135, (v133 & 1) == 0)
      || (v224 = v131, v225 = v132, (v130 & 1) == 0)
      || (v226 = v128, v227 = v129, (v127 & 1) == 0)
      || (v35 = v126, v126 = 0, v228 = v35, (v125 & 1) == 0)
      || (v36 = v124, v124 = 0, v229 = v36, (v123 & 1) == 0)
      || (v37 = v122, v122 = 0, v230 = v37, (v121 & 1) == 0)
      || (v38 = v120, v120 = 0, v231 = v38, (v119 & 1) == 0)
      || (v39 = v118, v118 = 0, v232 = v39, (v117 & 1) == 0)
      || (v40 = v116, v116 = 0, v233 = v40, (v115 & 1) == 0)
      || (v41 = v114, v114 = 0, v234 = v41, (v113 & 1) == 0)
      || (v42 = v112, v112 = 0, v235 = v42, (v111 & 1) == 0)
      || (v43 = v110, v110 = 0, v236 = v43, (v109 & 1) == 0)
      || (v44 = v108, v108 = 0, v237 = v44, (v12 & 0x100) == 0)
      || (v238 = v12, (v13 & 0x100) == 0)
      || (v239 = v13, (v14 & 0x100) == 0)
      || (v240 = v14, (v15 & 0x100) == 0)
      || (v241 = v15, (v107 & 1) == 0)
      || (std::__optional_move_base<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v242, v106), (v105 & 1) == 0)
      || (v45 = v100, v100 = 0u, *&v242[24] = v45, v46 = v102, v102 = 0u, v47 = v103, v103 = 0u, *(v243 + 3) = *&v101[3], v243[0] = *v101, v244 = v46, v245 = v47, v48 = v104, v104 = 0, v246 = v48, (v99 & 1) == 0)
      || (v49 = v98, v98 = 0, v247 = v49, (v97 & 1) == 0)
      || (v50 = v96, v96 = 0, v248 = v50, (v28 & 0x100) == 0))
    {
      __break(1u);
      goto LABEL_168;
    }

    v249 = v28;
    *(WebKit::NetworkSessionCreationParameters::NetworkSessionCreationParameters(a1, v176) + 656) = 1;
    WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(v176);
  }

  else
  {
    *a1 = 0;
    a1[656] = 0;
  }

  if (v97 == 1)
  {
LABEL_168:
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v96);
  }

  if (v99 == 1)
  {
    v51 = v98;
    v98 = 0;
    if (v51)
    {
      if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v17);
      }
    }
  }

  if (v105 == 1)
  {
    WebKit::ResourceLoadStatisticsParameters::~ResourceLoadStatisticsParameters(&v100, v17);
  }

  if (v107 == 1 && v106[16] == 1)
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v106, v17);
  }

  if (v109 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v108);
  }

  if (v111 == 1)
  {
    v52 = v110;
    v110 = 0;
    if (v52)
    {
      if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v17);
      }
    }
  }

  if (v113 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v112);
  }

  if (v115 == 1)
  {
    v53 = v114;
    v114 = 0;
    if (v53)
    {
      if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v53, v17);
      }
    }
  }

  if (v117 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v116);
  }

  if (v119 == 1)
  {
    v54 = v118;
    v118 = 0;
    if (v54)
    {
      if (atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v54, v17);
      }
    }
  }

  if (v121 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v120);
  }

  if (v123 == 1)
  {
    v55 = v122;
    v122 = 0;
    if (v55)
    {
      if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, v17);
      }
    }
  }

  if (v125 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v124);
  }

  if (v127 == 1)
  {
    v56 = v126;
    v126 = 0;
    if (v56)
    {
      if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v56, v17);
      }
    }
  }

  if (v141 == 1)
  {
    v57 = v140;
    v140 = 0;
    if (v57)
    {
      if (atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v57, v17);
      }
    }
  }

  if (v143 == 1)
  {
    v58 = v142;
    v142 = 0;
    if (v58)
    {
      if (atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v17);
      }
    }
  }

  if (v145 == 1)
  {
    v59 = v144;
    v144 = 0;
    if (v59)
    {
      if (atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v59, v17);
      }
    }
  }

  if (v147 == 1)
  {
    v60 = v146;
    v146 = 0;
    if (v60)
    {
      if (atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v60, v17);
      }
    }
  }

  if (v149 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v148);
  }

  if (v151 == 1)
  {
    v61 = v150;
    v150 = 0;
    if (v61)
    {
      if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v61, v17);
      }
    }
  }

  std::optional<WebKit::WebPushD::WebPushDaemonConnectionConfiguration>::~optional(v250, v17);
  if (v153 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v152);
  }

  if (v155 == 1)
  {
    v63 = v154;
    v154 = 0;
    if (v63)
    {
      if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v63, v62);
      }
    }
  }

  if (v157 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v156);
  }

  if (v159 == 1)
  {
    v64 = v158;
    v158 = 0;
    if (v64)
    {
      if (atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v64, v62);
      }
    }
  }

  if (v163 == 1)
  {
    v65 = v160;
    v160 = 0;
    if (v65)
    {
      if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v62);
      }
    }
  }

  if (v167 == 1)
  {
    v66 = v164;
    v164 = 0;
    if (v66)
    {
      if (atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v66, v62);
      }
    }
  }

  if (v169 == 1)
  {
    v67 = v168;
    v168 = 0;
    if (v67)
    {
      if (atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v67, v62);
      }
    }
  }

  if (v171 == 1)
  {
    v68 = v170;
    v170 = 0;
    if (v68)
    {
      if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v68, v62);
      }
    }
  }

  if (v173 == 1)
  {
    v69 = cf;
    cf = 0;
    if (v69)
    {
      CFRelease(v69);
    }
  }

  if (v175 == 1)
  {
    v70 = v174;
    v174 = 0;
    if (v70)
    {
      if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v70, v62);
      }
    }
  }
}

void sub_19D6C251C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, WebKit::SandboxExtensionImpl *a27, __int16 a28, WTF::StringImpl *a29, char a30, int a31, __int16 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, char a44, int a45, __int16 a46, WebKit::SandboxExtensionImpl *a47, __int16 a48, WTF::StringImpl *a49, char a50, WebKit::SandboxExtensionImpl *a51, __int16 a52, WTF::StringImpl *a53, char a54, WebKit::SandboxExtensionImpl *a55, __int16 a56, WTF::StringImpl *a57, char a58, WebKit::SandboxExtensionImpl *a59, __int16 a60, WTF::StringImpl *a61, char a62, WebKit::SandboxExtensionImpl *a63)
{
  WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(&STACK[0x360]);
  if (a28 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a27);
  }

  if (a30 == 1)
  {
    v69 = a29;
    a29 = 0;
    if (v69)
    {
      if (atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v69, v68);
      }
    }
  }

  if (a40 == 1)
  {
    WebKit::ResourceLoadStatisticsParameters::~ResourceLoadStatisticsParameters(&a32, v68);
  }

  if (a46 == 1 && a44 == 1)
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a42, v68);
  }

  if (a48 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a47);
  }

  if (a50 == 1)
  {
    v70 = a49;
    a49 = 0;
    if (v70)
    {
      if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v70, v68);
      }
    }
  }

  if (a52 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a51);
  }

  if (a54 == 1)
  {
    v71 = a53;
    a53 = 0;
    if (v71)
    {
      if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v71, v68);
      }
    }
  }

  if (a56 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a55);
  }

  if (a58 == 1)
  {
    v72 = a57;
    a57 = 0;
    if (v72)
    {
      if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v72, v68);
      }
    }
  }

  if (a60 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a59);
  }

  if (a62 == 1)
  {
    v73 = a61;
    a61 = 0;
    if (v73)
    {
      if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v73, v68);
      }
    }
  }

  if (a64 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a63);
  }

  if (a66 == 1)
  {
    v74 = a65;
    a65 = 0;
    if (v74)
    {
      if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v74, v68);
      }
    }
  }

  if (LOBYTE(STACK[0x228]) == 1)
  {
    v75 = STACK[0x220];
    STACK[0x220] = 0;
    if (v75)
    {
      if (atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v75, v68);
      }
    }
  }

  if (LOBYTE(STACK[0x238]) == 1)
  {
    v76 = STACK[0x230];
    STACK[0x230] = 0;
    if (v76)
    {
      if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v68);
      }
    }
  }

  if (LOBYTE(STACK[0x248]) == 1)
  {
    v77 = STACK[0x240];
    STACK[0x240] = 0;
    if (v77)
    {
      if (atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v77, v68);
      }
    }
  }

  if (LOBYTE(STACK[0x258]) == 1)
  {
    v78 = STACK[0x250];
    STACK[0x250] = 0;
    if (v78)
    {
      if (atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v78, v68);
      }
    }
  }

  if (LOBYTE(STACK[0x268]) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&STACK[0x260]);
  }

  if (LOBYTE(STACK[0x278]) == 1)
  {
    v79 = STACK[0x270];
    STACK[0x270] = 0;
    if (v79)
    {
      if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v79, v68);
      }
    }
  }

  std::optional<WebKit::WebPushD::WebPushDaemonConnectionConfiguration>::~optional(v66 - 240, v68);
  if (LOBYTE(STACK[0x288]) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&STACK[0x280]);
  }

  if (LOBYTE(STACK[0x298]) == 1)
  {
    v81 = STACK[0x290];
    STACK[0x290] = 0;
    if (v81)
    {
      if (atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v81, v80);
      }
    }
  }

  if (LOBYTE(STACK[0x2A8]) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&STACK[0x2A0]);
  }

  if (LOBYTE(STACK[0x2B8]) == 1)
  {
    v82 = STACK[0x2B0];
    STACK[0x2B0] = 0;
    if (v82)
    {
      if (atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v82, v80);
      }
    }
  }

  if (LOBYTE(STACK[0x2E8]) == 1)
  {
    v83 = STACK[0x2C0];
    STACK[0x2C0] = 0;
    if (v83)
    {
      if (atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v83, v80);
      }
    }
  }

  if (LOBYTE(STACK[0x318]) == 1)
  {
    v84 = STACK[0x2F0];
    STACK[0x2F0] = 0;
    if (v84)
    {
      if (atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v84, v80);
      }
    }
  }

  if (LOBYTE(STACK[0x328]) == 1)
  {
    v85 = STACK[0x320];
    STACK[0x320] = 0;
    if (v85)
    {
      if (atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v85, v80);
      }
    }
  }

  if (LOBYTE(STACK[0x338]) == 1)
  {
    v86 = STACK[0x330];
    STACK[0x330] = 0;
    if (v86)
    {
      if (atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v86, v80);
      }
    }
  }

  if (LOBYTE(STACK[0x348]) == 1)
  {
    v87 = STACK[0x340];
    STACK[0x340] = 0;
    if (v87)
    {
      CFRelease(v87);
    }
  }

  if (LOBYTE(STACK[0x358]) == 1)
  {
    v88 = STACK[0x350];
    STACK[0x350] = 0;
    if (v88)
    {
      if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v88, v80);
      }
    }
  }

  _Unwind_Resume(a1);
}

IPC::Decoder *IPC::Decoder::decode<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void IPC::Decoder::decode<WTF::RetainPtr<__CFDictionary const*>>(IPC::Decoder *a1@<X0>, WebKit::CoreIPCCFDictionary *a2@<X1>, uint64_t a3@<X8>)
{
  IPC::ArgumentCoder<WTF::RetainPtr<__CFDictionary const*>,void>::decode(a1, a2, a3);
  if ((*(a3 + 8) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a1);
  }
}

void IPC::Decoder::decode<WebKit::WebPushD::WebPushDaemonConnectionConfiguration>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::WebPushD::WebPushDaemonConnectionConfiguration,void>::decode(a1, a2);
  if ((a2[80] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

uint64_t IPC::Decoder::decode<WebKit::UnifiedOriginStorageLevel>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<unsigned char>(a1);
  v3 = v2;
  v5 = (v2 & 0x100) == 0 || v2 > 2u;
  if (v5)
  {
    IPC::Decoder::markInvalid(a1);
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return v3 | 0x100u;
  }
}

IPC::Decoder *IPC::Decoder::decode<std::optional<double>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::optional<unsigned long long>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<unsigned long long>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::optional<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::optional<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[24] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D6C3040(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 24) == 1 && *(v2 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebKit::ResourceLoadStatisticsParameters>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::ResourceLoadStatisticsParameters,void>::decode(a1, a2);
  if ((*(a1 + 64) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void WebKit::WebPushD::WebPushDaemonConnectionConfiguration::~WebPushDaemonConnectionConfiguration(WebKit::WebPushD::WebPushDaemonConnectionConfiguration *this, WTF::StringImpl *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *this;
  if (*this)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v5, a2);
  }
}

uint64_t std::optional<WebKit::WebPushD::WebPushDaemonConnectionConfiguration>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) == 1)
  {
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *a1;
    if (*a1)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  return a1;
}

uint64_t IPC::ArgumentCoder<WebKit::ITPThirdPartyData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  v5 = *(a2 + 20);
  if (v5)
  {
    v6 = *(a2 + 8);
    v7 = v6 + 24 * v5;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      IPC::Encoder::operator<<<BOOL>(a1, (v6 + 8));
      result = IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(v6 + 16));
      v6 += 24;
    }

    while (v6 != v7);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::ITPThirdPartyData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::RegistrableDomain>(a1, &v40);
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

LABEL_63:
    *a1 = 0;
    *(a1 + 1) = 0;
    v37 = *(a1 + 3);
    if (v37 && v5)
    {
      (*(*v37 + 16))(v37);
    }

    LOBYTE(v38) = 0;
    v39 = 0;
LABEL_23:
    v21 = *a1;
    v22 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v22)
    {
      result = (*(*result + 16))(result, v21);
    }

    goto LABEL_47;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_63;
  }

  v12 = *v6;
  v45 = 0;
  v46 = 0;
  if (v12 >= 0xAAAA)
  {
    do
    {
      result = IPC::Decoder::decode<WebKit::ITPThirdPartyDataForSpecificFirstParty>(&v42, a1);
      v24 = v44;
      if (v44)
      {
        if (HIDWORD(v46) == v46)
        {
          result = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v45, HIDWORD(v46) + 1, &v42);
          v25 = v45 + 24 * HIDWORD(v46);
          v26 = *result;
          *result = 0;
          *v25 = v26;
          v27 = *(result + 8);
        }

        else
        {
          v25 = v45 + 24 * HIDWORD(v46);
          v28 = v42;
          v42 = 0;
          *v25 = v28;
          v27 = v43;
        }

        *(v25 + 8) = v27;
        ++HIDWORD(v46);
      }

      if (v44 == 1)
      {
        result = v42;
        v42 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v7);
          }
        }
      }

      if ((v24 & 1) == 0)
      {
LABEL_22:
        LOBYTE(v38) = 0;
        v39 = 0;
        WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v7);
        goto LABEL_23;
      }

      --v12;
    }

    while (v12);
    v29 = HIDWORD(v46);
    if (v46 > HIDWORD(v46))
    {
      v30 = v45;
      if (HIDWORD(v46))
      {
        if (HIDWORD(v46) >= 0xAAAAAAB)
        {
          __break(0xC471u);
          goto LABEL_70;
        }

        v31 = 24 * HIDWORD(v46);
        v32 = WTF::fastMalloc((24 * HIDWORD(v46)));
        LODWORD(v46) = v31 / 0x18;
        v45 = v32;
        if (v32 != v30)
        {
          WTF::VectorTypeOperations<WebKit::ITPThirdPartyDataForSpecificFirstParty>::move(v30, (v30 + 24 * v29), v32);
        }
      }

      if (v30)
      {
        if (v45 == v30)
        {
          v45 = 0;
          LODWORD(v46) = 0;
        }

        WTF::fastFree(v30, v7);
      }
    }
  }

  else if (v12)
  {
    v13 = WTF::fastMalloc((24 * v12));
    LODWORD(v46) = 24 * v12 / 0x18u;
    v45 = v13;
    do
    {
      IPC::Decoder::decode<WebKit::ITPThirdPartyDataForSpecificFirstParty>(&v42, a1);
      v14 = v44;
      if (v44)
      {
        if (HIDWORD(v46) == v46)
        {
          v15 = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v45, HIDWORD(v46) + 1, &v42);
          v16 = v45 + 24 * HIDWORD(v46);
          v17 = *v15;
          *v15 = 0;
          *v16 = v17;
          v18 = *(v15 + 8);
        }

        else
        {
          v16 = v45 + 24 * HIDWORD(v46);
          v19 = v42;
          v42 = 0;
          *v16 = v19;
          v18 = v43;
        }

        *(v16 + 8) = v18;
        ++HIDWORD(v46);
      }

      if (v44 == 1 && (v20 = v42, v42 = 0, v20) && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v7);
        if ((v14 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if ((v14 & 1) == 0)
      {
        goto LABEL_22;
      }

      --v12;
    }

    while (v12);
  }

  *&v38 = v45;
  v33 = v46;
  v45 = 0;
  v46 = 0;
  *(&v38 + 1) = v33;
  v39 = 1;
  result = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v7);
LABEL_47:
  if (*a1)
  {
    if (v41)
    {
      v34 = v40;
      v40 = 0;
      if (v39)
      {
        *&v4 = 0;
        v35 = v38;
        v38 = v4;
        v42 = 0;
        *&v43 = 0;
        *a2 = v34;
        *(a2 + 8) = v35;
        *(&v43 + 1) = 0;
        *(a2 + 16) = *(&v35 + 1);
        *(a2 + 24) = 1;
        WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v21);
        result = v42;
        v42 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v21);
        }

        goto LABEL_53;
      }
    }

LABEL_70:
    __break(1u);
    return result;
  }

  *a2 = 0;
  *(a2 + 24) = 0;
LABEL_53:
  if (v39 == 1)
  {
    result = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v21);
  }

  if (v41 == 1)
  {
    result = v40;
    v40 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }
  }

  return result;
}

void sub_19D6C36C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::RegistrableDomain>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t std::optional<WebCore::RegistrableDomain>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    *a1 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  return a1;
}

uint64_t IPC::ArgumentCoder<IPC::FormDataReference,void>::encode(IPC::Encoder *a1, _DWORD **a2)
{
  v4 = *a2;
  if (*a2)
  {
    ++*v4;
  }

  v8[0] = v4;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,void>::encode<IPC::Encoder,WebCore::FormData>(a1, v8);
  v5 = v8[0];
  v8[0] = 0;
  if (v5)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v5);
  }

  if (*a2)
  {
    WTF::compactMap<0ul,WTF::CrashOnOverflow,16ul,IPC::FormDataReference::sandboxExtensionHandles(void)::{lambda(0ul &)#1},WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const>((*a2 + 2), v8);
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
  }

  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v8);
  return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v6);
}

void sub_19D6C3894(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

WTF::RefCountedBase *IPC::ArgumentCoder<IPC::FormDataReference,void>::decode@<X0>(WTF *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::RefPtr<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>>(a1, &v14);
  result = IPC::Decoder::decode<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v4, &v11);
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_13;
  }

  LOBYTE(v7) = v15;
  if ((v15 & 1) == 0 || (LOBYTE(v7) = v13, (v13 & 1) == 0))
  {
    __break(1u);
LABEL_13:
    *a2 = 0;
    goto LABEL_6;
  }

  v8 = v14;
  v14 = 0;
  if (v12)
  {
    v9 = v11;
    v10 = 8 * v12;
    do
    {
      if (*v9)
      {
        result = WebKit::SandboxExtension::consumePermanently(v9);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  *a2 = v8;
  LOBYTE(v7) = 1;
LABEL_6:
  a2[8] = v7;
  if (v13 == 1)
  {
    result = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v6);
  }

  if (v15 == 1)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      return WTF::RefCounted<WebCore::FormData>::deref(result);
    }
  }

  return result;
}

void sub_19D6C39A8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, WTF::RefCountedBase *a13, char a14)
{
  if (v14)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v14);
  }

  if (a12 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  if (a14 == 1)
  {
    v16 = a13;
    a13 = 0;
    if (v16)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v16);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::RefPtr<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>>@<X0>(WTF *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::RefPtr<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,void>::decode<IPC::Decoder,WebCore::FormData>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D6C3A3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(uint64_t result, void *a2)
{
  v2 = -*result;
  v3 = v2 & 7 | 8;
  if (*(result + 8) < v3)
  {
    goto LABEL_8;
  }

  *(*result + (v2 & 7)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_7;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 7 | 8;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 7)) = a2[1];
    v8 = *(result + 8);
    v9 = v8 >= v7;
    v10 = v8 - v7;
    if (v9)
    {
      *result += v7;
      *(result + 8) = v10;
      return result;
    }

LABEL_7:
    __break(1u);
  }

LABEL_8:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

unint64_t IPC::ArgumentCoder<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  v7 = a1[1];
  v8 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *a1;
  v10 = v8 - *a1;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (!v11 || v12 <= 7)
  {
    while (1)
    {
      v18 = result;
      v19 = v6;
      *a1 = 0;
      a1[1] = 0;
      v17 = a1[3];
      if (v17)
      {
        if (v7)
        {
          (*(*v17 + 16))(v17);
          v9 = *a1;
          v7 = a1[1];
          goto LABEL_16;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = 0;
LABEL_16:
      *a1 = 0;
      a1[1] = 0;
      result = a1[3];
      if (!result)
      {
        goto LABEL_17;
      }

      if (!v7)
      {
        goto LABEL_17;
      }

      (*(*result + 16))(result, v9);
      result = v18;
      v6 = v19;
      v15 = 0;
      v14 = 0;
      if (!*a1)
      {
        goto LABEL_17;
      }

LABEL_8:
      if (v6 & 1) != 0 && (v15)
      {
        *a2 = result;
        *(a2 + 8) = v14;
        v16 = 1;
        goto LABEL_11;
      }

      __break(1u);
    }
  }

  a1[2] = (v8 + 1);
  if (!v8)
  {
    v18 = result;
    v19 = v6;
    goto LABEL_16;
  }

  v14 = *v8;
  v15 = 1;
  if (v9)
  {
    goto LABEL_8;
  }

LABEL_17:
  v16 = 0;
  *a2 = 0;
LABEL_11:
  *(a2 + 16) = v16;
  return result;
}

unint64_t IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(a1);
  if ((v3 & 1) == 0)
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

uint64_t IPC::ArgumentCoder<IPC::ObjectIdentifierWriteReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = a2[1];
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  v5 = a2[2];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v5);
}

unint64_t IPC::ArgumentCoder<IPC::ObjectIdentifierWriteReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v16);
  v5 = a1[1];
  v6 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (v9 && v10 > 7)
  {
    a1[2] = (v6 + 1);
    if (!v6)
    {
      goto LABEL_15;
    }

    v12 = *v6;
    v13 = 1;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    while (1)
    {
      *a1 = 0;
      a1[1] = 0;
      v15 = a1[3];
      if (v15)
      {
        if (v5)
        {
          (*(*v15 + 16))(v15);
          v5 = a1[1];
        }
      }

      else
      {
        v5 = 0;
      }

LABEL_15:
      *a1 = 0;
      a1[1] = 0;
      result = a1[3];
      if (!result)
      {
        break;
      }

      if (!v5)
      {
        break;
      }

      result = (*(*result + 16))(result);
      v13 = 0;
      v12 = 0;
      if (!*a1)
      {
        break;
      }

LABEL_8:
      if (v17 & 1) != 0 && (v13)
      {
        *a2 = v16;
        *(a2 + 16) = v12;
        v14 = 1;
        goto LABEL_11;
      }

      __break(1u);
    }
  }

  v14 = 0;
  *a2 = 0;
LABEL_11:
  *(a2 + 24) = v14;
  return result;
}

unint64_t IPC::Decoder::decode<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a1, a2);
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

unint64_t IPC::ArgumentCoder<IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v6);
  v5 = *a1;
  if (!*a1)
  {
    *a2 = 0;
    goto LABEL_4;
  }

  if (v7)
  {
    *a2 = v6;
    LOBYTE(v5) = 1;
LABEL_4:
    a2[16] = v5;
    return result;
  }

  __break(1u);
  return result;
}

void IPC::Decoder::decode<std::optional<WebCore::SharedMemoryHandle>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }
}

void sub_19D6C3F58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 16) == 1)
  {
    WTF::MachSendRight::~MachSendRight(v1);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(IPC::Encoder *a1, IPC::SharedBufferReference *this)
{
  IPC::SharedBufferReference::serializableBuffer(this, v3);
  IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference::SerializableBuffer>,void>::encode<IPC::Encoder,std::optional<IPC::SharedBufferReference::SerializableBuffer>>(a1, v3);
  if (v4[24] == 1 && v4[16] == 1)
  {
    WTF::MachSendRight::~MachSendRight(v4);
  }
}

void sub_19D6C3FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17)
{
  if (a15 == 1 && a13 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a11);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<IPC::SharedBufferReference,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<std::optional<IPC::SharedBufferReference::SerializableBuffer>>(a1, v6);
  if (!*a1)
  {
    goto LABEL_10;
  }

  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    *a2 = 0;
    *(a2 + 24) = 0;
    goto LABEL_4;
  }

  IPC::SharedBufferReference::SharedBufferReference(&v4, v6);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 24) = 1;
LABEL_4:
  if (v8 == 1 && v7[24] == 1 && v7[16] == 1)
  {
    WTF::MachSendRight::~MachSendRight(v7);
  }
}

void IPC::Decoder::decode<std::optional<IPC::SharedBufferReference::SerializableBuffer>>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference::SerializableBuffer>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[40] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

void sub_19D6C40FC(_Unwind_Exception *exception_object)
{
  if (v1[40] == 1 && v1[32] == 1 && v1[24] == 1)
  {
    WTF::MachSendRight::~MachSendRight((v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<IPC::SharedFileHandle,void>::encode(uint64_t a1, IPC::SharedFileHandle *this)
{
  IPC::SharedFileHandle::toMachSendRight(&v3);
  IPC::Encoder::addAttachment(a1, &v3);
  WTF::MachSendRight::~MachSendRight(&v3);
}

uint64_t IPC::ArgumentCoder<IPC::StreamServerConnectionHandle,void>::encode(IPC::Encoder *a1, unint64_t a2)
{
  IPC::Encoder::addAttachment(a1, a2);
  IPC::Encoder::addAttachment(a1, a2 + 8);
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::MediaPlaybackTargetContextSerialized,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v12 = v4;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, &v12);
  v6 = v12;
  v12 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  LOBYTE(v12) = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v12);
  LOBYTE(v12) = *(a2 + 25);
  IPC::Encoder::operator<<<BOOL>(a1, &v12);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 26));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 27));
  v7 = *(a2 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v12 = v7;
  v8 = *(a2 + 40);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v13 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, &v12);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, &v13);
  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v9);
    }
  }

  return result;
}

uint64_t WebKit::MediaPlaybackTargetContextSerialized::deviceName@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 16);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::MediaPlaybackTargetContextSerialized,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v43);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (v26)
    {
      if (v4)
      {
        (*(*v26 + 16))(v26);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_47:
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27)
    {
      if (v4)
      {
        (*(*v27 + 16))(v27);
        v8 = 0;
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_50;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v8 = 0;
    goto LABEL_50;
  }

  v7 = v5 + 1;
  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_47;
  }

  v8 = *v5;
  if (v8 < 2)
  {
    v9 = 1;
    goto LABEL_5;
  }

LABEL_50:
  *a1 = 0;
  *(a1 + 1) = 0;
  v28 = *(a1 + 3);
  if (!v28 || !v4)
  {
    v10 = 0;
    v9 = 0;
    v29 = 0;
    v6 = 0;
LABEL_52:
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (v30 && v29)
    {
      (*(*v30 + 16))(v30, v6, v29);
      v11 = 0;
      v6 = *a1;
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v11 = 0;
    }

    goto LABEL_54;
  }

  (*(*v28 + 16))(v28, v6);
  v9 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
  v7 = *(a1 + 2);
LABEL_5:
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v4 <= &v7[-v6])
  {
    v29 = 0;
    v38 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v38 && v4)
    {
      (*(*v38 + 16))(v38);
      v6 = *a1;
      v29 = *(a1 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_52;
  }

  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
    v29 = v4;
    goto LABEL_52;
  }

  v11 = *v7;
  if (v11 < 2)
  {
    v12 = 1;
    goto LABEL_12;
  }

LABEL_54:
  *a1 = 0;
  *(a1 + 1) = 0;
  v31 = *(a1 + 3);
  if (!v31)
  {
    v6 = 0;
    v13 = 0;
    v12 = 0;
    v4 = 0;
    goto LABEL_56;
  }

  if (!v4)
  {
    v6 = 0;
    v13 = 0;
    v12 = 0;
    goto LABEL_56;
  }

  (*(*v31 + 16))(v31, v6);
  v12 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
LABEL_12:
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 2);
  if (v4 <= &v14[-v6])
  {
LABEL_56:
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32)
    {
      if (v4)
      {
        (*(*v32 + 16))(v32, v6);
        v6 = *a1;
        v4 = *(a1 + 1);
LABEL_59:
        *a1 = 0;
        *(a1 + 1) = 0;
        v33 = *(a1 + 3);
        if (v33)
        {
          if (v4)
          {
            (*(*v33 + 16))(v33, v6);
            v6 = *a1;
            v4 = *(a1 + 1);
            goto LABEL_62;
          }
        }

        else
        {
          v4 = 0;
        }

        v6 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_59;
  }

  *(a1 + 2) = v14 + 1;
  if (!v14)
  {
    goto LABEL_59;
  }

  v15 = *v14;
  if (v15 < 3)
  {
    v16 = v15 | 0x100;
    goto LABEL_19;
  }

LABEL_62:
  *a1 = 0;
  *(a1 + 1) = 0;
  v34 = *(a1 + 3);
  if (!v34)
  {
    v6 = 0;
    v16 = 0;
    v4 = 0;
    goto LABEL_64;
  }

  if (!v4)
  {
    v6 = 0;
    v16 = 0;
LABEL_64:
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35)
    {
      if (v4)
      {
        (*(*v35 + 16))(v35, v6);
        v6 = *a1;
        v4 = *(a1 + 1);
LABEL_67:
        *a1 = 0;
        *(a1 + 1) = 0;
        v36 = *(a1 + 3);
        if (v36)
        {
          if (v4)
          {
            (*(*v36 + 16))(v36, v6);
            v6 = *a1;
            v4 = *(a1 + 1);
            goto LABEL_70;
          }
        }

        else
        {
          v4 = 0;
        }

        v6 = 0;
        goto LABEL_70;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_67;
  }

  (*(*v34 + 16))(v34, v6);
  v16 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
LABEL_19:
  v17 = *(a1 + 2);
  if (v4 <= &v17[-v6])
  {
    goto LABEL_64;
  }

  *(a1 + 2) = v17 + 1;
  if (!v17)
  {
    goto LABEL_67;
  }

  v18 = *v17;
  if (v18 < 3)
  {
    v19 = v18 | 0x100;
    goto LABEL_23;
  }

LABEL_70:
  *a1 = 0;
  *(a1 + 1) = 0;
  v37 = *(a1 + 3);
  if (v37 && v4)
  {
    (*(*v37 + 16))(v37, v6);
  }

  v19 = 0;
LABEL_23:
  result = IPC::Decoder::decode<WebKit::CoreIPCAVOutputContext>(a1, &v40);
  if (!*a1)
  {
    goto LABEL_43;
  }

  if ((v44 & 1) == 0 || (v9 & 1) == 0 || (v12 & 1) == 0 || v16 <= 0xFF || v19 <= 0xFF || (v42 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    *a2 = 0;
    *(a2 + 48) = 0;
    if ((v42 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

  v22 = v43;
  v43 = 0;
  LOBYTE(v39) = v10;
  BYTE1(v39) = v13;
  BYTE2(v39) = v16;
  HIBYTE(v39) = v19;
  v23 = v40;
  v24 = v41;
  v40 = 0;
  v41 = 0;
  *(a2 + 8) = 2;
  *a2 = &unk_1F10E8450;
  *(a2 + 16) = v22;
  *(a2 + 24) = v39;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = 1;
LABEL_31:
  v25 = v41;
  v41 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v21);
  }

  result = v40;
  v40 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v21);
  }

LABEL_37:
  if (v44 == 1)
  {
    result = v43;
    v43 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }
  }

  return result;
}

void sub_19D6C48D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, char a20)
{
  if (a20 == 1 && a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::CoreIPCAVOutputContext>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::CoreIPCAVOutputContext,void>::decode(a1, a2);
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

void WebKit::MediaPlaybackTargetContextSerialized::~MediaPlaybackTargetContextSerialized(WebKit::MediaPlaybackTargetContextSerialized *this, WTF::StringImpl *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }
}

{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

char *IPC::ArgumentCoder<WebKit::JavaScriptEvaluationResult,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 120);
  IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a1, &v5);
  return IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>( a1,  (a2 + 112));
}

void IPC::ArgumentCoder<WebKit::JavaScriptEvaluationResult,void>::decode(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  IPC::Decoder::decode<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(a1, &v10);
  if (*a1)
  {
    if (v6 & 1) != 0 && (v11)
    {
      WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(v9, v4, &v10);
      WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(a2, v9);
      a2[128] = 1;
      WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(v9, v8);
      goto LABEL_5;
    }

    __break(1u);
  }

  *a2 = 0;
  a2[128] = 0;
LABEL_5:
  if (v11 == 1)
  {
    if (v10)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v10,  v7);
    }
  }
}

uint64_t *IPC::Decoder::decode<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    v5 = *a1;
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
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

void sub_19D6C4B94(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 8) == 1)
  {
    if (*v2)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( *v2,  a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<API::Array,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v7, a2);
  if (*a2)
  {
    if ((v8 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    result = API::Array::create(v7, &v6);
    *a1 = v6;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (v8 == 1)
  {
    return WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v5);
  }

  return result;
}

void sub_19D6C4C40(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a1[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D6C4C9C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<API::Dictionary,void>::decode(_BYTE *a1, IPC::Decoder *this)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *this;
  v7 = v5 - *this;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 3)
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_41;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
LABEL_41:
    IPC::Decoder::markInvalid(this);
    while (1)
    {
      v13 = IPC::Decoder::markInvalid(this);
      if (!*this)
      {
        break;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

LABEL_30:
      if (v25)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v25, v12);
      }
    }

    goto LABEL_40;
  }

  v11 = *v5;
  v25 = 0;
  if (!v11)
  {
    if (!v6)
    {
LABEL_40:
      *a1 = 0;
      a1[8] = 0;
      return;
    }

    v16 = 0;
    goto LABEL_23;
  }

  do
  {
    IPC::Decoder::decode<WTF::String>(this, &v23);
    if ((v24 & 1) == 0)
    {
      goto LABEL_30;
    }

    v13 = IPC::Decoder::decode<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(&v21, this);
    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_33;
    }

    if (v23 + 1 < 2)
    {
      goto LABEL_26;
    }

    WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(&v25, &v23, &v21, v20);
    if ((v20[16] & 1) == 0)
    {
      if (v22)
      {
LABEL_26:
        v19 = v21;
        v21 = 0;
        if (v19)
        {
          CFRelease(*(v19 + 8));
        }
      }

LABEL_28:
      if (v24 == 1)
      {
        v13 = v23;
        v23 = 0;
        if (v13)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_30;
    }

    if (v22)
    {
      v14 = v21;
      v21 = 0;
      if (v14)
      {
        CFRelease(*(v14 + 8));
      }
    }

    if (v24 == 1)
    {
      v15 = v23;
      v23 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v12);
        }
      }
    }

    --v11;
  }

  while (v11);
  v16 = v25;
  if (*this)
  {
LABEL_23:
    v17 = API::Object::newObject(0x18uLL, 9);
    v18 = API::Object::Object(v17);
    *v18 = &unk_1F110EAE0;
    *(v18 + 2) = v16;
    *a1 = v18;
    a1[8] = 1;
    return;
  }

  *a1 = 0;
  a1[8] = 0;
  if (v16)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v16, v12);
  }
}

void sub_19D6C4ED8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, WTF::StringImpl *a14, char a15)
{
  if ((a13 & 1) != 0 && a12)
  {
    CFRelease(*(a12 + 8));
  }

  if (a15 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebCore::ResourceError>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ResourceError,void>::decode(a1, a2);
  if ((a2[80] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

API::Error *API::Error::create@<X0>(atomic_uint **this@<X0>, API::Error **a2@<X8>)
{
  v5 = API::Object::newObject(0x60uLL, 10);
  result = API::Error::Error(v5, this);
  *a2 = v5;
  return result;
}

uint64_t IPC::ArgumentCoder<API::FrameHandle,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4 == 0);
  if (v4)
  {
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  }

  v6 = *(a2 + 24);
  return IPC::Encoder::operator<<<BOOL>(a1, &v6);
}

uint64_t IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(IPC::Decoder *this)
{
  v2 = *(this + 2);
  if (*(this + 1) <= &v2[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_10;
  }

  *(this + 2) = v2 + 1;
  if (!v2)
  {
LABEL_10:
    IPC::Decoder::markInvalid(this);
    goto LABEL_11;
  }

  v3 = *v2;
  if (v3 >= 2)
  {
LABEL_11:
    IPC::Decoder::markInvalid(this);
    goto LABEL_8;
  }

  if (v3)
  {
    return 0;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    IPC::Decoder::markInvalid(this);
    return 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<API::Size,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 24);

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<API::Rect,void>::encode(IPC::Encoder *a1, double *a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[4]);
  v4 = a2[5];

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

API::Object *API::Double::create@<X0>(double a1@<D0>, API::Object **a2@<X8>)
{
  v5 = API::Object::newObject(0x18uLL, 32);
  v5[2] = a1;
  result = API::Object::Object(v5);
  *result = &unk_1F10E8350;
  *a2 = result;
  return result;
}

API::Object *API::UInt64::create@<X0>(API::UInt64 *this@<X0>, API::Object **a2@<X8>)
{
  v4 = API::Object::newObject(0x18uLL, 33);
  *(v4 + 2) = this;
  result = API::Object::Object(v4);
  *result = &unk_1F10E7CE0;
  *a2 = result;
  return result;
}

uint64_t IPC::ArgumentCoder<API::Int64,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::Encoder::grow(a1, 8uLL, 8);
  if (v4 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = a2;
  }

  return result;
}

uint64_t IPC::Decoder::decode<long long>(IPC::Decoder *this)
{
  v2 = *(this + 1);
  v3 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 - *this;
  v5 = v2 >= v4;
  v6 = v2 - v4;
  if (v5 && v6 > 7)
  {
    *(this + 2) = v3 + 8;
    if (v3)
    {
      return *v3;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  IPC::Decoder::markInvalid(this);
  return 0;
}

void IPC::ArgumentCoder<API::Object,void>::encode(IPC::Encoder *a1, atomic_uchar **a2)
{
  if ((*(*a2 + 2))(a2) == 1)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 0);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 7));
    v6 = *(a2 + 7);
    if (v6)
    {
      v7 = a2[2];
      v8 = 8 * v6;
      do
      {
        IPC::ArgumentCoder<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,void>::encode<IPC::Encoder,API::Object>(a1, v7);
        v7 += 8;
        v8 -= 8;
      }

      while (v8);
    }

    return;
  }

  if ((*(*a2 + 2))(a2) == 31)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 1);
    v17 = *(a2 + 16);
    IPC::Encoder::operator<<<BOOL>(a1, &v17);
    return;
  }

  if ((*(*a2 + 2))(a2) == 8)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 2);
    v10 = a2[2];
    v11 = a2[3];

    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v10, v11);
    return;
  }

  if ((*(*a2 + 2))(a2) == 9)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 3);

    IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, a2 + 2);
    return;
  }

  if ((*(*a2 + 2))(a2) == 32)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 4);
    v12 = *(a2 + 2);

    IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v12);
    return;
  }

  if ((*(*a2 + 2))(a2) == 10)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 5);

    IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(a1, (a2 + 2));
    return;
  }

  if ((*(*a2 + 2))(a2) == 11)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 6);

    IPC::ArgumentCoder<API::FrameHandle,void>::encode(a1, a2);
    return;
  }

  if ((*(*a2 + 2))(a2) == 12)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 7);

    IPC::ArgumentCoder<WebKit::WebImage,void>::encode(a1, a2);
    return;
  }

  if ((*(*a2 + 2))(a2) == 13)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 8);

    IPC::ArgumentCoder<API::PageHandle,void>::encode(a1, a2);
    return;
  }

  if ((*(*a2 + 2))(a2) == 35)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 9);
    v13 = a1;
    v14 = a2;

    goto LABEL_53;
  }

  if ((*(*a2 + 2))(a2) == 37)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 10);

    IPC::ArgumentCoder<API::Rect,void>::encode(a1, a2);
    return;
  }

  if ((*(*a2 + 2))(a2) == 36)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 11);
    v13 = a1;
    v14 = a2;

LABEL_53:
    IPC::ArgumentCoder<API::Size,void>::encode(v13, v14);
    return;
  }

  if ((*(*a2 + 2))(a2) == 20)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 12);
    WTF::String::isolatedCopy();
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, &v18);
    v5 = v18;
    v18 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }

    return;
  }

  if ((*(*a2 + 2))(a2) == 23)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 13);
    v15 = (a2 + 2);
LABEL_61:

    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v15);
    return;
  }

  if ((*(*a2 + 2))(a2) == 24)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 14);

    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, (a2 + 2));
  }

  else
  {
    if ((*(*a2 + 2))(a2) != 25)
    {
      if ((*(*a2 + 2))(a2) == 33)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 16);
        v9 = a2[2];

        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v9);
        return;
      }

      if ((*(*a2 + 2))(a2) == 34)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 17);
        v16 = a2[2];

        IPC::ArgumentCoder<API::Int64,void>::encode(a1, v16);
        return;
      }

      if ((*(*a2 + 2))(a2) != 26)
      {
        return;
      }

      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 18);
      v15 = (a2 + 6);
      goto LABEL_61;
    }

    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 15);

    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a1, (a2 + 2));
  }
}

uint64_t IPC::Decoder::decode<WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<API::Array,void>::decode(a1, a2);
  if ((*(a1 + 8) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

API::Object *IPC::Decoder::decode<WTF::Ref<API::Boolean,WTF::RawPtrTraits<API::Boolean>,WTF::DefaultRefDerefTraits<API::Boolean>>>(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = a2[2];
  v5 = *a2;
  v6 = v2[1];
  if (v6 <= &v4[-v5])
  {
    *v2 = 0;
    v2[1] = 0;
    v14 = v2;
    v10 = v2[3];
    if (v10)
    {
      if (v6)
      {
        (*(*v10 + 16))(v10);
        v5 = *v14;
        v6 = v14[1];
        goto LABEL_10;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_10:
    *v14 = 0;
    v14[1] = 0;
    v11 = v14[3];
    if (v11)
    {
      goto LABEL_26;
    }

    v6 = 0;
    goto LABEL_12;
  }

  v2[2] = v4 + 1;
  if (!v4)
  {
    v14 = v2;
    goto LABEL_10;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    v14 = v2;
    while (1)
    {
      *v14 = 0;
      v14[1] = 0;
      v12 = v14[3];
      if (!v12)
      {
        v6 = 0;
LABEL_16:
        v2 = v14;
        goto LABEL_17;
      }

      if (!v6)
      {
        goto LABEL_16;
      }

      v11 = (*(*v12 + 16))(v12, v5);
      v5 = *v14;
      if (!*v14)
      {
        break;
      }

      __break(1u);
LABEL_26:
      if (v6)
      {
        (*(*v11 + 16))(v11, v5);
        v5 = *v14;
        v6 = v14[1];
      }

      else
      {
LABEL_12:
        v5 = 0;
      }
    }

    v2 = v14;
    v6 = v14[1];
  }

  else if (v5)
  {
    v8 = API::Object::newObject(0x18uLL, 31);
    *(v8 + 16) = v7;
    result = API::Object::Object(v8);
    *result = &unk_1F10E82D8;
    *a1 = result;
    *(a1 + 8) = 1;
    return result;
  }

LABEL_17:
  *a1 = 0;
  *(a1 + 8) = 0;
  *v2 = 0;
  v2[1] = 0;
  result = v2[3];
  if (result && v6)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<API::Data,void>::decode(a1, a2);
  if ((*(a1 + 8) & 1) == 0)
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

void IPC::Decoder::decode<WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<API::Dictionary,void>::decode(a1, a2);
  if ((a1[8] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t IPC::Decoder::decode<WTF::Ref<API::Double,WTF::RawPtrTraits<API::Double>,WTF::DefaultRefDerefTraits<API::Double>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if (*a2)
  {
    if (v5)
    {
      v6 = result;
      v7 = API::Object::newObject(0x18uLL, 32);
      *(v7 + 2) = v6;
      result = API::Object::Object(v7);
      *result = &unk_1F10E8350;
      *a1 = result;
      *(a1 + 8) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
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

void IPC::Decoder::decode<WTF::Ref<API::Error,WTF::RawPtrTraits<API::Error>,WTF::DefaultRefDerefTraits<API::Error>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::ResourceError>(a2, &v14);
  v5 = *a2;
  if (*a2)
  {
    if ((v18 & 1) == 0)
    {
      __break(1u);
LABEL_20:
      v10 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v11 = *(a2 + 3);
      if (v11 && v10)
      {
        v12 = *(*v11 + 16);

        v12();
      }

      return;
    }

    API::Error::create(&v14, &v13);
    *a1 = v13;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (v18 == 1)
  {
    v6 = v17;
    v17 = 0;
    if (v6)
    {
    }

    v7 = v16;
    v16 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }

    v8 = v15;
    v15 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }

    v9 = v14;
    v14 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v4);
    }
  }

  if (!v5)
  {
    goto LABEL_20;
  }
}

void sub_19D6C604C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, void *a18, uint64_t a19, char a20)
{
  if (a20 == 1)
  {
    if (a18)
    {
    }

    if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }

    if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }

    if (a10)
    {
      if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a10, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

API::Object *IPC::Decoder::decode<WTF::Ref<API::FrameHandle,WTF::RawPtrTraits<API::FrameHandle>,WTF::DefaultRefDerefTraits<API::FrameHandle>>>(uint64_t a1, API::Object **this)
{
  v4 = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(this);
  v6 = v5;
  v7 = this[1];
  v8 = this[2];
  v9 = *this;
  if (v7 <= v8 - *this)
  {
    v19 = v6;
    *this = 0;
    this[1] = 0;
    v16 = this[3];
    if (v16)
    {
      if (v7)
      {
        (*(*v16 + 16))(v16);
        v9 = *this;
        v7 = this[1];
        goto LABEL_23;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
  }

  else
  {
    this[2] = (v8 + 1);
    if (v8)
    {
      v10 = *v8;
      if (v10 < 2)
      {
        v11 = 1;
        goto LABEL_5;
      }

      v18 = *v8;
      v19 = v6;
      goto LABEL_27;
    }

    v19 = v6;
  }

LABEL_23:
  *this = 0;
  this[1] = 0;
  v17 = this[3];
  if (v17)
  {
    if (v7)
    {
      (*(*v17 + 16))(v17, v9);
      v18 = 0;
      v9 = *this;
      v7 = this[1];
      goto LABEL_27;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
  v18 = 0;
LABEL_27:
  *this = 0;
  this[1] = 0;
  result = this[3];
  if (!result)
  {
    v7 = 0;
    goto LABEL_15;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  (*(*result + 16))(result, v9);
  v11 = 0;
  v9 = *this;
  v6 = v19;
  v10 = v18;
LABEL_5:
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    if (v6 & 1) != 0 && (v11)
    {
      v13 = API::Object::newObject(0x20uLL, 11);
      result = API::Object::Object(v13);
      *result = &unk_1F10E7C40;
      *(result + 2) = v4;
      *(result + 24) = v12;
      *a1 = result;
      *(a1 + 8) = 1;
      return result;
    }

    __break(1u);
  }

  v7 = this[1];
  result = this[3];
LABEL_15:
  *a1 = 0;
  *(a1 + 8) = 0;
  *this = 0;
  this[1] = 0;
  if (result && v7)
  {
    v15 = *(*result + 16);

    return v15();
  }

  return result;
}

void IPC::Decoder::decode<WTF::Ref<WebKit::WebImage,WTF::RawPtrTraits<WebKit::WebImage>,WTF::DefaultRefDerefTraits<WebKit::WebImage>>>(uint64_t a1, IPC::Decoder *a2, __n128 a3)
{
  v5 = *(a2 + 2);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v7 <= &v5[-v6])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (v25)
    {
      if (v7)
      {
        (*(*v25 + 16))(v25);
        v6 = *a2;
        v7 = *(a2 + 1);
LABEL_54:
        *a2 = 0;
        *(a2 + 1) = 0;
        v26 = *(a2 + 3);
        if (v26)
        {
          if (v7)
          {
            (*(*v26 + 16))(v26, v6);
            v6 = *a2;
            v7 = *(a2 + 1);
LABEL_57:
            *a2 = 0;
            *(a2 + 1) = 0;
            v27 = *(a2 + 3);
            if (v27 && v7)
            {
              (*(*v27 + 16))(v27, v6);
            }

            LOBYTE(v31) = 0;
            v40 = 0;
            goto LABEL_59;
          }
        }

        else
        {
          v7 = 0;
        }

        v6 = 0;
        goto LABEL_57;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
    goto LABEL_54;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_54;
  }

  v8 = *v5;
  if (v8 >= 2)
  {
    goto LABEL_57;
  }

  if (!v8)
  {
    LOBYTE(v31) = 0;
    v39 = 0;
    v40 = 1;
    goto LABEL_26;
  }

  IPC::ArgumentCoder<WebCore::ImageBufferParameters,void>::decode(a2, &v54);
  if ((v59 & 1) == 0)
  {
    v22 = *a2;
    v23 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    if (v24 && v23)
    {
      (*(*v24 + 16))(v24, v22);
    }

    LOBYTE(v41) = 0;
    v49 = 0;
    goto LABEL_16;
  }

  IPC::Decoder::decode<WebCore::ShareableBitmapHandle>(v50, a2);
  if (v53 != 1)
  {
    LOBYTE(v41) = 0;
    v49 = 0;
    if (v56)
    {
      CFRelease(v56);
    }

    goto LABEL_16;
  }

  v41 = v54;
  v42 = v55;
  v43 = v56;
  v44 = v57;
  v45 = v58;
  a3.n128_f64[0] = WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v46, v50);
  v49 = 1;
  if (v53)
  {
    if (v52 == 1)
    {
      v9 = v51;
      v51 = 0;
      if (v9)
      {
        CFRelease(v9);
      }
    }

    WTF::MachSendRight::~MachSendRight(v50);
    if ((v49 & 1) == 0)
    {
LABEL_16:
      v10 = *a2;
      v11 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v12 = *(a2 + 3);
      if (v12 && v11)
      {
        (*(*v12 + 16))(v12, v10);
      }
    }
  }

  if (v49 == 1)
  {
    v31 = v41;
    v32 = v42;
    v13 = v43;
    v43 = 0;
    v33 = v13;
    v34 = v44;
    v35 = v45;
    a3.n128_f64[0] = WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v36, v46);
    v39 = 1;
    v40 = 1;
    if (v49)
    {
      if (v48 == 1)
      {
        v14 = cf;
        cf = 0;
        if (v14)
        {
          CFRelease(v14);
        }
      }

      WTF::MachSendRight::~MachSendRight(v46);
      v15 = v43;
      v43 = 0;
      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

  else
  {
    LOBYTE(v31) = 0;
    v40 = 0;
  }

  if ((v40 & 1) == 0)
  {
LABEL_59:
    v28 = *a2;
    v29 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v30 = *(a2 + 3);
    if (v30 && v29)
    {
      (*(*v30 + 16))(v30, v28, a3);
    }
  }

LABEL_26:
  v16 = *a2;
  if (*a2)
  {
    if ((v40 & 1) == 0)
    {
      __break(1u);
LABEL_40:
      v19 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v20 = *(a2 + 3);
      if (v20 && v19)
      {
        v21 = *(*v20 + 16);

        v21();
      }

      return;
    }

    WebKit::WebImage::create(&v31, &v41);
    *a1 = v41;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (v40 == 1 && v39 == 1)
  {
    if (v38 == 1)
    {
      v17 = v37;
      v37 = 0;
      if (v17)
      {
        CFRelease(v17);
      }
    }

    WTF::MachSendRight::~MachSendRight(v36);
    v18 = v33;
    v33 = 0;
    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (!v16)
  {
    goto LABEL_40;
  }
}

void sub_19D6C6750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CFTypeRef cf, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, CFTypeRef a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, CFTypeRef a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a26 == 1 && a24 == 1)
  {
    if (a18 == 1)
    {
      v47 = cf;
      cf = 0;
      if (v47)
      {
        CFRelease(v47);
      }
    }

    WTF::MachSendRight::~MachSendRight(&a14);
    if (a12)
    {
      CFRelease(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

API::Object *IPC::Decoder::decode<WTF::Ref<API::PageHandle,WTF::RawPtrTraits<API::PageHandle>,WTF::DefaultRefDerefTraits<API::PageHandle>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = v5;
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v9 = v8;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *a2;
  if (v10 <= &v11[-*a2])
  {
    v22 = v9;
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19)
    {
      if (v10)
      {
        (*(*v19 + 16))(v19);
        v12 = *a2;
        v10 = *(a2 + 1);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
  }

  else
  {
    *(a2 + 2) = v11 + 1;
    if (v11)
    {
      v13 = *v11;
      if (v13 < 2)
      {
        v14 = 1;
        goto LABEL_5;
      }

      v21 = *v11;
      v22 = v9;
      goto LABEL_28;
    }

    v22 = v9;
  }

LABEL_24:
  *a2 = 0;
  *(a2 + 1) = 0;
  v20 = *(a2 + 3);
  if (v20)
  {
    if (v10)
    {
      (*(*v20 + 16))(v20, v12);
      v21 = 0;
      v12 = *a2;
      v10 = *(a2 + 1);
      goto LABEL_28;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = 0;
  v21 = 0;
LABEL_28:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (!result)
  {
    v10 = 0;
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  (*(*result + 16))(result, v12);
  v14 = 0;
  v12 = *a2;
  v9 = v22;
  v13 = v21;
LABEL_5:
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    if (v6 & 1) != 0 && (v9 & 1) != 0 && (v14)
    {
      v16 = API::Object::newObject(0x28uLL, 13);
      result = API::Object::Object(v16);
      *result = &unk_1F10E7D30;
      *(result + 2) = v4;
      *(result + 3) = v7;
      *(result + 32) = v15;
      *a1 = result;
      *(a1 + 8) = 1;
      return result;
    }

    __break(1u);
  }

  v10 = *(a2 + 1);
  result = *(a2 + 3);
LABEL_16:
  *a1 = 0;
  *(a1 + 8) = 0;
  *a2 = 0;
  *(a2 + 1) = 0;
  if (result && v10)
  {
    v18 = *(*result + 16);

    return v18();
  }

  return result;
}

API::Object *IPC::Decoder::decode<WTF::Ref<API::Point,WTF::RawPtrTraits<API::Point>,WTF::DefaultRefDerefTraits<API::Point>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<unsigned long long>(a2);
  v6 = v5;
  v7 = IPC::Decoder::decode<unsigned long long>(a2);
  if (*a2)
  {
    if (v6 & 1) != 0 && (v8)
    {
      v9 = v7;
      v10 = API::Object::newObject(0x20uLL, 35);
      result = API::Object::Object(v10);
      *result = &unk_1F10E7C90;
      *(result + 2) = v4;
      *(result + 3) = v9;
      *a1 = result;
      *(a1 + 8) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
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

API::Object *IPC::Decoder::decode<WTF::Ref<API::Rect,WTF::RawPtrTraits<API::Rect>,WTF::DefaultRefDerefTraits<API::Rect>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<unsigned long long>(a2);
  v6 = v5;
  v7 = IPC::Decoder::decode<unsigned long long>(a2);
  v9 = v8;
  v10 = IPC::Decoder::decode<unsigned long long>(a2);
  v12 = v11;
  v13 = IPC::Decoder::decode<unsigned long long>(a2);
  if (*a2)
  {
    if (v6 & 1) != 0 && (v9 & 1) != 0 && (v12 & 1) != 0 && (v14)
    {
      v15 = v13;
      v16 = API::Object::newObject(0x30uLL, 37);
      result = API::Object::Object(v16);
      *result = &unk_1F10E7CB8;
      *(result + 2) = v4;
      *(result + 3) = v7;
      *(result + 4) = v10;
      *(result + 5) = v15;
      *a1 = result;
      *(a1 + 8) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v18 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v18)
  {
    v19 = *(*result + 16);

    return v19();
  }

  return result;
}

API::Object *IPC::Decoder::decode<WTF::Ref<API::Size,WTF::RawPtrTraits<API::Size>,WTF::DefaultRefDerefTraits<API::Size>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<unsigned long long>(a2);
  v6 = v5;
  v7 = IPC::Decoder::decode<unsigned long long>(a2);
  if (*a2)
  {
    if (v6 & 1) != 0 && (v8)
    {
      v9 = v7;
      v10 = API::Object::newObject(0x20uLL, 36);
      result = API::Object::Object(v10);
      *result = &unk_1F10E7C68;
      *(result + 2) = v4;
      *(result + 3) = v9;
      *a1 = result;
      *(a1 + 8) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
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

WTF::StringImpl *IPC::Decoder::decode<WTF::Ref<API::URL,WTF::RawPtrTraits<API::URL>,WTF::DefaultRefDerefTraits<API::URL>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v10);
  v6 = *a2;
  if (*a2)
  {
    if ((v11 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    result = API::URL::create(&v10, &v9);
    *a1 = v9;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (v11 == 1 && (result = v10, v10 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
    if (v6)
    {
      return result;
    }
  }

  else if (v6)
  {
    return result;
  }

  v7 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v7)
  {
    v8 = *(*result + 16);

    return v8();
  }

  return result;
}

void sub_19D6C6F3C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<API::URLRequest,WTF::RawPtrTraits<API::URLRequest>,WTF::DefaultRefDerefTraits<API::URLRequest>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::ResourceRequest>(a2, v10);
  v4 = *a2;
  if (*a2)
  {
    if ((v12 & 1) == 0)
    {
      __break(1u);
LABEL_12:
      v6 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v7 = *(a2 + 3);
      if (v7 && v6)
      {
        v8 = *(*v7 + 16);

        v8();
      }

      return;
    }

    API::URLRequest::create(v10, &v9);
    *a1 = v9;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (v12 == 1)
  {
    v5 = v11;
    v11 = 0;
    if (v5)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v10);
  }

  if (!v4)
  {
    goto LABEL_12;
  }
}

void sub_19D6C7070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, char a36)
{
  if (a36 == 1)
  {
    v37 = a35;
    a35 = 0;
    if (v37)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&a11);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<API::URLResponse,WTF::RawPtrTraits<API::URLResponse>,WTF::DefaultRefDerefTraits<API::URLResponse>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::ResourceResponse>(a2, v11);
  v5 = *a2;
  if (*a2)
  {
    if ((v13 & 1) == 0)
    {
      __break(1u);
LABEL_12:
      v7 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v8 = *(a2 + 3);
      if (v8 && v7)
      {
        v9 = *(*v8 + 16);

        v9();
      }

      return;
    }

    API::URLResponse::create(v11, &v10);
    *a1 = v10;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (v13 == 1)
  {
    v6 = v12;
    v12 = 0;
    if (v6)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v11, v4);
  }

  if (!v5)
  {
    goto LABEL_12;
  }
}

void sub_19D6C71A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, char a44)
{
  if (a44 == 1)
  {
    v45 = a42;
    a42 = 0;
    if (v45)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&a11, a2);
  }

  _Unwind_Resume(exception_object);
}

API::Object *IPC::Decoder::decode<WTF::Ref<API::UInt64,WTF::RawPtrTraits<API::UInt64>,WTF::DefaultRefDerefTraits<API::UInt64>>>(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = v2[1];
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 7)
  {
    v2[2] = v4 + 1;
    if (!v4)
    {
      v13 = v2;
      goto LABEL_13;
    }

    if (v5)
    {
      result = API::UInt64::create(*v4, &v14);
      *a1 = v14;
      *(a1 + 8) = 1;
      return result;
    }
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
    v13 = v2;
    v9 = v2[3];
    if (v9)
    {
      goto LABEL_23;
    }

    v6 = 0;
LABEL_12:
    v5 = 0;
LABEL_13:
    while (1)
    {
      v2 = v13;
      *v13 = 0;
      v13[1] = 0;
      v10 = v13[3];
      if (!v10)
      {
        break;
      }

      if (!v6)
      {
        break;
      }

      v9 = (*(*v10 + 16))(v10, v5);
      v2 = v13;
      if (!*v13)
      {
        break;
      }

      __break(1u);
LABEL_23:
      if (!v6)
      {
        goto LABEL_12;
      }

      (*(*v9 + 16))(v9);
      v5 = *v13;
      v6 = v13[1];
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v11 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  result = v2[3];
  if (result && v11)
  {
    v12 = *(*result + 16);

    return v12();
  }

  return result;
}

API::Object *IPC::Decoder::decode<WTF::Ref<API::Int64,WTF::RawPtrTraits<API::Int64>,WTF::DefaultRefDerefTraits<API::Int64>>>(uint64_t a1, API::Object **this)
{
  result = IPC::Decoder::decode<long long>(this);
  if (*this)
  {
    if (v5)
    {
      v6 = result;
      v7 = API::Object::newObject(0x18uLL, 34);
      *(v7 + 2) = v6;
      result = API::Object::Object(v7);
      *result = &unk_1F10E7D08;
      *a1 = result;
      *(a1 + 8) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v8 = this[1];
    *this = 0;
    this[1] = 0;
    result = this[3];
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

WTF::StringImpl *IPC::Decoder::decode<WTF::Ref<API::UserContentURLPattern,WTF::RawPtrTraits<API::UserContentURLPattern>,WTF::DefaultRefDerefTraits<API::UserContentURLPattern>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v10);
  if (*a2)
  {
    if ((v11 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v6 = API::Object::newObject(0x38uLL, 26);
    result = API::UserContentURLPattern::UserContentURLPattern(v6, &v10);
    *a1 = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a1 = 0;
  }

  *(a1 + 8) = v7;
  if (v11 == 1 && (result = v10, v10 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
    if (v7)
    {
      return result;
    }
  }

  else if (v7)
  {
    return result;
  }

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

void sub_19D6C7544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  operator delete(v10);
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v12);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<API::PageHandle,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  v5 = *(a2 + 32);
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

API::Object *API::String::create@<X0>(void *a1@<X0>, API::Object **a2@<X8>)
{
  v4 = API::Object::newObject(0x18uLL, 20);
  if (*a1)
  {
    WTF::String::isolatedCopy();
  }

  else
  {
    v6 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    v7 = v6;
  }

  result = API::Object::Object(v4);
  *v4 = &unk_1F10E83D8;
  *(v4 + 2) = v7;
  *a2 = v4;
  return result;
}

API::Object *API::URL::create@<X0>(atomic_uint **this@<X0>, API::Object **a2@<X8>)
{
  v5 = API::Object::newObject(0x20uLL, 23);
  result = API::Object::Object(v5);
  *result = &unk_1F10E8300;
  v7 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(result + 2) = v7;
  *(result + 3) = 0;
  *a2 = result;
  return result;
}

const void **API::URLRequest::create@<X0>(API::URLRequest *this@<X0>, API::Object **a2@<X8>)
{
  v5 = API::Object::newObject(0xD8uLL, 24);
  v6 = API::Object::Object(v5);
  *v6 = &unk_1F110EC40;
  result = WebCore::ResourceRequest::ResourceRequest(v6 + 2, this);
  *a2 = v5;
  return result;
}

void IPC::Decoder::decode<WebCore::ResourceResponse>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a1, a2);
  if ((*(a2 + 264) & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

API::URLResponse *API::URLResponse::create@<X0>(API::URLResponse *this@<X0>, API::URLResponse **a2@<X8>)
{
  v5 = API::Object::newObject(0x118uLL, 25);
  result = API::URLResponse::URLResponse(v5, this);
  *a2 = v5;
  return result;
}

WebCore::ResourceResponseBase *std::optional<WebCore::ResourceResponse>::~optional(WebCore::ResourceResponseBase *this, WTF::StringImpl *a2)
{
  if (*(this + 264) == 1)
  {
    v3 = *(this + 31);
    *(this + 31) = 0;
    if (v3)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(this, a2);
  }

  return this;
}

{
  if (*(this + 264) == 1)
  {
    v3 = *(this + 31);
    *(this + 31) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(this, a2);
  }

  return this;
}

uint64_t IPC::ArgumentCoder<WebKit::AdditionalFonts,void>::decode@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v9);
  if (*a1)
  {
    if ((v10 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    *&v6 = 0;
    v7 = v9;
    v9 = v6;
    v8 = v6;
    *a2 = v7;
    *(a2 + 16) = 1;
    result = WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v5);
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  if (v10 == 1)
  {
    return WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v5);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    result = *(a1 + 24);
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

void sub_19D6C7964(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::AppPrivacyReportTestingData,void>::decode(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    goto LABEL_28;
  }

  v4 = v2 + 1;
  a1[2] = v2 + 1;
  if (!v2)
  {
    v35 = a1;
    goto LABEL_31;
  }

  v5 = *v2;
  if (v5 < 2)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v33 = v5;
  v35 = a1;
  while (1)
  {
    *v35 = 0;
    v35[1] = 0;
    v20 = v35[3];
    if (!v20 || !v1)
    {
      v29 = 0;
      v30 = 0;
      v21 = 0;
      v3 = 0;
LABEL_37:
      *v35 = 0;
      v35[1] = 0;
      v22 = v35[3];
      if (v22 && v21)
      {
        (*(*v22 + 16))(v22, v3, v21);
        v34 = 0;
        v3 = *v35;
        v1 = v35[1];
      }

      else
      {
        v1 = 0;
        v3 = 0;
        v34 = 0;
      }

      goto LABEL_40;
    }

    (*(*v20 + 16))(v20, v3);
    v6 = 0;
    a1 = v35;
    v3 = *v35;
    v1 = v35[1];
    v4 = v35[2];
    v5 = v33;
LABEL_5:
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v1 <= &v4[-v3])
    {
      v29 = v6;
      v30 = v7;
      v21 = 0;
      v27 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v35 = a1;
      if (v27 && v1)
      {
        (*(*v27 + 16))(v27);
        v3 = *v35;
        v21 = v35[1];
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_37;
    }

    v8 = v4 + 1;
    a1[2] = v4 + 1;
    if (!v4)
    {
      v29 = v6;
      v30 = v7;
      v35 = a1;
      v21 = v1;
      goto LABEL_37;
    }

    v9 = *v4;
    if (v9 < 2)
    {
      v10 = 1;
      goto LABEL_12;
    }

    v34 = *v4;
    v29 = v6;
    v30 = v7;
    v35 = a1;
LABEL_40:
    *v35 = 0;
    v35[1] = 0;
    v23 = v35[3];
    if (!v23 || !v1)
    {
      v32 = 0;
      v24 = 0;
      v3 = 0;
      goto LABEL_42;
    }

    (*(*v23 + 16))(v23, v3);
    v10 = 0;
    a1 = v35;
    v3 = *v35;
    v1 = v35[1];
    v8 = v35[2];
    LOBYTE(v6) = v29;
    v7 = v30;
    v9 = v34;
LABEL_12:
    if (v1 <= &v8[-v3])
    {
      break;
    }

    a1[2] = v8 + 1;
    if (!v8)
    {
      v32 = v10;
      v34 = v9;
      v29 = v6;
      v30 = v7;
      v35 = a1;
      v24 = v1;
      goto LABEL_42;
    }

    v11 = *v8;
    if (v11 >= 2)
    {
      v31 = *v8;
      v32 = v10;
      v34 = v9;
      v29 = v6;
      v30 = v7;
      v35 = a1;
      goto LABEL_45;
    }

    v12 = 1;
    if (!v3)
    {
      goto LABEL_58;
    }

LABEL_16:
    if (v6 & 1) != 0 && (v10 & 1) != 0 && (v12)
    {
      v13 = 0x1000000;
      v12 = 1;
      v10 = 1;
      goto LABEL_20;
    }

    __break(1u);
LABEL_28:
    *a1 = 0;
    a1[1] = 0;
    v35 = a1;
    v18 = a1[3];
    if (!v18)
    {
      v1 = 0;
LABEL_30:
      v3 = 0;
      goto LABEL_31;
    }

    if (!v1)
    {
      goto LABEL_30;
    }

    (*(*v18 + 16))(v18);
    v3 = *v35;
    v1 = v35[1];
LABEL_31:
    *v35 = 0;
    v35[1] = 0;
    v19 = v35[3];
    if (!v19)
    {
      v1 = 0;
      goto LABEL_33;
    }

    if (v1)
    {
      (*(*v19 + 16))(v19, v3);
      v33 = 0;
      v3 = *v35;
      v1 = v35[1];
    }

    else
    {
LABEL_33:
      v3 = 0;
      v33 = 0;
    }
  }

  v32 = v10;
  v34 = v9;
  v29 = v6;
  v30 = v7;
  v24 = 0;
  v28 = a1[3];
  *a1 = 0;
  a1[1] = 0;
  v35 = a1;
  if (v28 && v1)
  {
    (*(*v28 + 16))(v28);
    v3 = *v35;
    v24 = v35[1];
  }

  else
  {
    v3 = 0;
  }

LABEL_42:
  *v35 = 0;
  v35[1] = 0;
  v25 = v35[3];
  if (v25 && v24)
  {
    (*(*v25 + 16))(v25, v3, v24);
    v31 = 0;
    v3 = *v35;
    v1 = v35[1];
  }

  else
  {
    v1 = 0;
    v3 = 0;
    v31 = 0;
  }

LABEL_45:
  *v35 = 0;
  v35[1] = 0;
  v26 = v35[3];
  if (!v26 || !v1)
  {
    v12 = 0;
    v7 = 0;
    v13 = 0;
    v9 = v34;
    v11 = v31;
    v10 = v32;
    goto LABEL_20;
  }

  a1 = (*(*v26 + 16))(v26, v3);
  v12 = 0;
  LOBYTE(v6) = v29;
  v7 = v30;
  v9 = v34;
  v11 = v31;
  v10 = v32;
  if (*v35)
  {
    goto LABEL_16;
  }

LABEL_58:
  v7 = 0;
  v13 = 0;
LABEL_20:
  v14 = v9 != 0;
  if ((v12 & (v11 != 0)) != 0)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  if ((v10 & v14) != 0)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  return v7 | v13 | v15 | v16;
}

uint64_t IPC::ArgumentCoder<WebKit::BackgroundFetchState,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2, v5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::ArgumentCoder<WebCore::BackgroundFetchOptions,void>::encode(a1, a2 + 80);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 112));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 120));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 128));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 136));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 144));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 145));
  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 146));
}

uint64_t IPC::ArgumentCoder<WebKit::BackgroundFetchState,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v94 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a1, &v90);
  if ((v93 & 1) == 0)
  {
    v45 = *a1;
    v46 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v47 = *(a1 + 3);
    if (v47 && v46 != 0)
    {
      (*(*v47 + 16))(v47, v45);
    }
  }

  IPC::Decoder::decode<WTF::URL>(a1, &v69);
  IPC::Decoder::decode<WTF::String>(a1, &v67);
  IPC::ArgumentCoder<WebCore::BackgroundFetchOptions,void>::decode(a1, &v62);
  if ((v66 & 1) == 0)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v4 = *(a1 + 1);
    v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = v4 >= v7;
    v9 = v4 - v7;
    if (v8 && v9 > 7)
    {
      *(a1 + 2) = v5 + 1;
      if (v5)
      {
        v60 = *v5;
        v61 = 1;
        v11 = v6;
        goto LABEL_10;
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v49 = *(a1 + 3);
      if (v49)
      {
        if (v4)
        {
          (*(*v49 + 16))(v49, v6);
          v6 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_85;
        }
      }

      else
      {
        v4 = 0;
      }

      v6 = 0;
    }

LABEL_85:
    *a1 = 0;
    *(a1 + 1) = 0;
    v50 = *(a1 + 3);
    if (v50)
    {
      if (v4)
      {
        (*(*v50 + 16))(v50, v6);
        v61 = 0;
        v60 = 0;
        v11 = *a1;
        v4 = *(a1 + 1);
        v6 = *a1;
        goto LABEL_10;
      }

      v11 = 0;
    }

    else
    {
      v11 = 0;
      v4 = 0;
    }

    v6 = 0;
    v61 = 0;
    v60 = 0;
LABEL_10:
    v12 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v4 < v12 - v6 || v4 - (v12 - v6) <= 7)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v51 = *(a1 + 3);
      if (v51)
      {
        if (v4)
        {
          (*(*v51 + 16))(v51, v11);
          v11 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_91;
        }
      }

      else
      {
        v4 = 0;
      }

      v11 = 0;
    }

    else
    {
      *(a1 + 2) = v12 + 1;
      if (v12)
      {
        v13 = *v12;
        v14 = 1;
        goto LABEL_14;
      }
    }

LABEL_91:
    *a1 = 0;
    *(a1 + 1) = 0;
    v52 = *(a1 + 3);
    if (v52)
    {
      if (v4)
      {
        (*(*v52 + 16))(v52, v11);
        v14 = 0;
        v13 = 0;
        v11 = *a1;
        v4 = *(a1 + 1);
        v6 = *a1;
        goto LABEL_14;
      }

      v11 = 0;
    }

    else
    {
      v11 = 0;
      v4 = 0;
    }

    v6 = 0;
    v14 = 0;
    v13 = 0;
LABEL_14:
    v15 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v4 < v15 - v6 || v4 - (v15 - v6) <= 7)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v53 = *(a1 + 3);
      if (v53)
      {
        if (v4)
        {
          (*(*v53 + 16))(v53, v11);
          v11 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_97;
        }
      }

      else
      {
        v4 = 0;
      }

      v11 = 0;
    }

    else
    {
      *(a1 + 2) = v15 + 1;
      if (v15)
      {
        v16 = *v15;
        v17 = 1;
        goto LABEL_18;
      }
    }

LABEL_97:
    *a1 = 0;
    *(a1 + 1) = 0;
    v54 = *(a1 + 3);
    if (v54)
    {
      if (v4)
      {
        (*(*v54 + 16))(v54, v11);
        v17 = 0;
        v16 = 0;
        v11 = *a1;
        v4 = *(a1 + 1);
        v6 = *a1;
        goto LABEL_18;
      }

      v11 = 0;
    }

    else
    {
      v11 = 0;
      v4 = 0;
    }

    v6 = 0;
    v17 = 0;
    v16 = 0;
LABEL_18:
    v18 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = (v18 - v6);
    v8 = v4 >= v19;
    v20 = v4 - v19;
    if (v8 && v20 > 7)
    {
      *(a1 + 2) = v18 + 1;
      if (v18)
      {
        v21 = *v18;
        v22 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v55 = *(a1 + 3);
      if (!v55)
      {
        v4 = 0;
LABEL_102:
        v11 = 0;
        goto LABEL_103;
      }

      if (!v4)
      {
        goto LABEL_102;
      }

      (*(*v55 + 16))(v55, v11);
      v11 = *a1;
      v4 = *(a1 + 1);
    }

LABEL_103:
    *a1 = 0;
    *(a1 + 1) = 0;
    v56 = *(a1 + 3);
    if (v56 && v4)
    {
      (*(*v56 + 16))(v56, v11);
    }

    v22 = 0;
    v21 = 0;
LABEL_23:
    v23 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
    result = IPC::Decoder::decode<WebCore::BackgroundFetchFailureReason>(a1);
    v25 = *(a1 + 1);
    v26 = *(a1 + 2);
    v27 = *a1;
    if (v25 <= &v26[-*a1])
    {
      v59 = result;
      *a1 = 0;
      *(a1 + 1) = 0;
      v57 = *(a1 + 3);
      if (v57)
      {
        if (v25)
        {
          (*(*v57 + 16))(v57);
          v27 = *a1;
          v25 = *(a1 + 1);
LABEL_108:
          *a1 = 0;
          *(a1 + 1) = 0;
          v58 = *(a1 + 3);
          if (v58)
          {
            if (v25)
            {
              (*(*v58 + 16))(v58, v27);
              v28 = 0;
              v27 = *a1;
              v25 = *(a1 + 1);
LABEL_112:
              *a1 = 0;
              *(a1 + 1) = 0;
              result = *(a1 + 3);
              if (!result || !v25)
              {
                goto LABEL_113;
              }

              (*(*result + 16))(result, v27);
              v29 = 0;
              v27 = *a1;
              result = v59;
              goto LABEL_27;
            }
          }

          else
          {
            v25 = 0;
          }

          v27 = 0;
          v28 = 0;
          goto LABEL_112;
        }
      }

      else
      {
        v25 = 0;
      }

      v27 = 0;
      goto LABEL_108;
    }

    *(a1 + 2) = v26 + 1;
    if (!v26)
    {
      v59 = result;
      goto LABEL_108;
    }

    v28 = *v26;
    if (v28 >= 2)
    {
      v59 = result;
      goto LABEL_112;
    }

    v29 = 1;
LABEL_27:
    if (v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (!v27)
    {
LABEL_113:
      *a2 = 0;
      a2[152] = 0;
      goto LABEL_55;
    }

    if (v93)
    {
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    v42 = *a1;
    v43 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v44 = *(a1 + 3);
    if (v44 && v43)
    {
      (*(*v44 + 16))(v44, v42);
    }
  }

  LOBYTE(v73) = 0;
  v75 = -1;
  if (!v92)
  {
    v31 = v90;
    v90 = 0uLL;
    v73 = v31;
    v74 = v91;
    goto LABEL_34;
  }

  if (v92 != 255)
  {
    v73 = v90;
LABEL_34:
    v75 = v92;
  }

  if ((v72 & 1) == 0)
  {
    goto LABEL_73;
  }

  v32 = v69;
  v69 = 0;
  v76 = v32;
  v77 = v70;
  v78 = v71;
  LODWORD(v70) = v70 & 0xFFFFFFFE;
  if ((v68 & 1) == 0)
  {
    goto LABEL_73;
  }

  v33 = v67;
  v67 = 0;
  v79 = v33;
  if ((v66 & 1) == 0)
  {
    goto LABEL_73;
  }

  v80[0] = v62;
  v34 = v63;
  v62 = 0;
  v63 = 0;
  v80[1] = v34;
  v35 = v64;
  v64 = 0;
  v81 = v35;
  v82 = v65;
  if ((v61 & 1) == 0)
  {
    goto LABEL_73;
  }

  v83 = v60;
  if ((v14 & 1) == 0)
  {
    goto LABEL_73;
  }

  v84 = v13;
  if ((v17 & 1) == 0)
  {
    goto LABEL_73;
  }

  v85 = v16;
  if ((v22 & 1) == 0)
  {
    goto LABEL_73;
  }

  v86 = v21;
  if (v23 <= 0xFFu)
  {
    goto LABEL_73;
  }

  v87 = v23;
  if (result <= 0xFFu)
  {
    goto LABEL_73;
  }

  v88 = result;
  if ((v29 & 1) == 0)
  {
    goto LABEL_73;
  }

  v89 = v30;
  WebKit::BackgroundFetchState::BackgroundFetchState(a2, &v73);
  a2[152] = 1;
  v37 = v81;
  v81 = 0;
  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v37, v36);
  }

  WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v80, v36);
  v39 = v79;
  v79 = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v38);
  }

  v40 = v76;
  v76 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v38);
  }

  result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v73);
LABEL_55:
  if (v66 == 1)
  {
    v41 = v64;
    v64 = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v27);
    }

    result = WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v27);
  }

  if (v68 == 1)
  {
    result = v67;
    v67 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v27);
      }
    }
  }

  if (v72 == 1)
  {
    result = v69;
    v69 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v27);
      }
    }
  }

  if (v93 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v90);
  }

  return result;
}

void sub_19D6C8708(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, char a16, WTF::StringImpl *a17, char a18, WTF::StringImpl *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, WTF::StringImpl *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, WTF::StringImpl *a37, uint64_t a38, uint64_t a39, WTF::StringImpl *a40)
{
  if (a16 == 1)
  {
    v42 = a14;
    a14 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, a2);
    }

    WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, a2);
  }

  if (a18 == 1)
  {
    v43 = a17;
    a17 = 0;
    if (v43)
    {
      if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, a2);
      }
    }
  }

  if (a24 == 1)
  {
    v44 = a19;
    a19 = 0;
    if (v44)
    {
      if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, a2);
      }
    }
  }

  if (*(v40 - 112) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v40 - 144);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::BackgroundFetchResult>(void *a1)
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
  if (v4 < 3)
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

uint64_t IPC::Decoder::decode<WebCore::BackgroundFetchFailureReason>(void *a1)
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
  if (v4 < 6)
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

IPC::Decoder *IPC::ArgumentCoder<WebKit::CoreIPCAuditToken,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::array<unsigned int,8ul>,void>::decode<IPC::Decoder>(a1, v7);
  if ((v8 & 1) == 0)
  {
    result = IPC::Decoder::markInvalid(a1);
  }

  v5 = *a1;
  if (!*a1)
  {
    *a2 = 0;
    goto LABEL_6;
  }

  if (v8)
  {
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    LOBYTE(v5) = 1;
LABEL_6:
    *(a2 + 32) = v5;
    return result;
  }

  __break(1u);
  return result;
}

void IPC::ArgumentCoder<WebKit::DataDetectionResult,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22[16] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v22[0] = v4;
  if (v4)
  {
    v4 = v4;
  }

  v5 = MEMORY[0x1E69E22C0];
  v6 = (*MEMORY[0x1E69E22C0])(v4);
  v22[1] = v6;
  if (v6)
  {
    v7 = v6;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v18, v22, 2);
  IPC::decodeRequiringAllowedClasses<NSArray,NSArray*>(&v16, a1);
  if (v18)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v18, v8);
  }

  for (i = 1; i != -1; --i)
  {
    v10 = v22[i];
    v22[i] = 0;
    if (v10)
    {
    }
  }

  if (*a1)
  {
    if ((v17 & 1) == 0)
    {
      __break(1u);
    }

    v11 = v16;
    if (v16 && (v20 = 0u, v21 = 0u, v18 = 0u, v19 = 0u, (v12 = [v16 countByEnumeratingWithState:&v18 objects:v22 count:16]) != 0))
    {
      v13 = *v19;
LABEL_16:
      v14 = 0;
      while (1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        (*v5)();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      if (*a1)
      {
        *a2 = v11;
        *(a2 + 8) = 1;
        return;
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    v15 = v17;
    *(a2 + 8) = 0;
    if ((v15 & 1) == 0)
    {
      return;
    }
  }

  if (v16)
  {
  }
}

uint64_t IPC::ArgumentCoder<WebKit::InsertTextOptions,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 1);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[4]);

  return IPC::ArgumentCoder<std::optional<WebCore::TextDirection>,void>::encode<IPC::Encoder,std::optional<WebCore::TextDirection> const&>(a1, a2 + 5);
}

unint64_t IPC::ArgumentCoder<WebKit::InsertTextOptions,void>::decode(uint64_t *a1)
{
  v1 = a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v44 = a1;
    v45 = a1[3];
    if (v45)
    {
      if (v2)
      {
        (*(*v45 + 16))(v45);
        v4 = *v44;
        v2 = v44[1];
LABEL_56:
        *v44 = 0;
        v44[1] = 0;
        v46 = v44[3];
        if (v46)
        {
          if (v2)
          {
            (*(*v46 + 16))(v46, v4);
            v6 = 0;
            v4 = *v44;
            v2 = v44[1];
            goto LABEL_60;
          }
        }

        else
        {
          v2 = 0;
        }

        v4 = 0;
        v6 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    goto LABEL_56;
  }

  v5 = v3 + 1;
  a1[2] = (v3 + 1);
  if (!v3)
  {
    v44 = a1;
    goto LABEL_56;
  }

  v6 = *v3;
  if (v6 < 2)
  {
    v7 = 1;
    goto LABEL_5;
  }

  v44 = a1;
LABEL_60:
  *v44 = 0;
  v44[1] = 0;
  v47 = v44[3];
  if (!v47 || !v2)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v4 = 0;
LABEL_62:
    *v44 = 0;
    v44[1] = 0;
    v51 = v44[3];
    if (v51 && v50)
    {
      (*(*v51 + 16))(v51, v4, v50);
      v10 = 0;
      v4 = *v44;
      v2 = v44[1];
    }

    else
    {
      v2 = 0;
      v4 = 0;
      v10 = 0;
    }

    goto LABEL_65;
  }

  (*(*v47 + 16))(v47, v4);
  v7 = 0;
  v1 = v44;
  v4 = *v44;
  v2 = v44[1];
  v5 = v44[2];
LABEL_5:
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v2 <= &v5[-v4])
  {
    v48 = v8;
    v49 = v7;
    v50 = 0;
    v109 = v1[3];
    *v1 = 0;
    v1[1] = 0;
    v44 = v1;
    if (v109 && v2)
    {
      (*(*v109 + 16))(v109);
      v4 = *v44;
      v50 = v44[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_62;
  }

  v9 = v5 + 1;
  v1[2] = (v5 + 1);
  if (!v5)
  {
    v44 = v1;
    v48 = v8;
    v49 = v7;
    v50 = v2;
    goto LABEL_62;
  }

  v10 = *v5;
  if (v10 < 2)
  {
    v11 = 1;
    goto LABEL_12;
  }

  v44 = v1;
  v48 = v8;
  v49 = v7;
LABEL_65:
  *v44 = 0;
  v44[1] = 0;
  v52 = v44[3];
  if (!v52 || !v2)
  {
    v11 = 0;
    v53 = 0;
    v4 = 0;
LABEL_67:
    *v44 = 0;
    v44[1] = 0;
    v54 = v44[3];
    if (v54 && v53)
    {
      (*(*v54 + 16))(v54, v4, v53);
      v13 = 0;
      v4 = *v44;
      v2 = v44[1];
    }

    else
    {
      v2 = 0;
      v4 = 0;
      v13 = 0;
    }

    goto LABEL_70;
  }

  (*(*v52 + 16))(v52, v4);
  v11 = 0;
  v1 = v44;
  v4 = *v44;
  v2 = v44[1];
  v9 = v44[2];
  LOBYTE(v7) = v49;
  v8 = v48;
LABEL_12:
  if (v2 <= &v9[-v4])
  {
    v48 = v8;
    v49 = v7;
    v53 = 0;
    v110 = v1[3];
    *v1 = 0;
    v1[1] = 0;
    v44 = v1;
    if (v110 && v2)
    {
      (*(*v110 + 16))(v110);
      v4 = *v44;
      v53 = v44[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_67;
  }

  v12 = v9 + 1;
  v1[2] = (v9 + 1);
  if (!v9)
  {
    v44 = v1;
    v48 = v8;
    v49 = v7;
    v53 = v2;
    goto LABEL_67;
  }

  v13 = *v9;
  if (v13 < 2)
  {
    v14 = 1;
    goto LABEL_16;
  }

  v44 = v1;
  v48 = v8;
  v49 = v7;
LABEL_70:
  *v44 = 0;
  v44[1] = 0;
  v55 = v44[3];
  if (!v55 || !v2)
  {
    v56 = 0;
    v57 = 0;
    v4 = 0;
LABEL_72:
    *v44 = 0;
    v44[1] = 0;
    v58 = v44[3];
    if (v58 && v57)
    {
      (*(*v58 + 16))(v58, v4, v57);
      v59 = 0;
      v4 = *v44;
      v2 = v44[1];
    }

    else
    {
      v2 = 0;
      v4 = 0;
      v59 = 0;
    }

    goto LABEL_74;
  }

  (*(*v55 + 16))(v55, v4);
  v14 = 0;
  v1 = v44;
  v4 = *v44;
  v2 = v44[1];
  v12 = v44[2];
  LOBYTE(v7) = v49;
  v8 = v48;
LABEL_16:
  if (v2 <= &v12[-v4])
  {
    v56 = v14;
    v48 = v8;
    v49 = v7;
    v57 = 0;
    v111 = v1[3];
    *v1 = 0;
    v1[1] = 0;
    v44 = v1;
    if (v111 && v2)
    {
      (*(*v111 + 16))(v111);
      v4 = *v44;
      v57 = v44[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_72;
  }

  v1[2] = (v12 + 1);
  if (!v12)
  {
    v44 = v1;
    v56 = v14;
    v48 = v8;
    v49 = v7;
    v57 = v2;
    goto LABEL_72;
  }

  v15 = *v12;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_20;
  }

  v44 = v1;
  v59 = *v12;
  v56 = v14;
  v48 = v8;
  v49 = v7;
LABEL_74:
  *v44 = 0;
  v44[1] = 0;
  v60 = v44[3];
  if (!v60)
  {
    v4 = 0;
    v61 = 0;
    v2 = 0;
    goto LABEL_76;
  }

  if (!v2)
  {
    v4 = 0;
    v61 = 0;
LABEL_76:
    *v44 = 0;
    v44[1] = 0;
    v62 = v44[3];
    if (v62)
    {
      if (v2)
      {
        (*(*v62 + 16))(v62, v4);
        v4 = *v44;
        v2 = v44[1];
LABEL_79:
        *v44 = 0;
        v44[1] = 0;
        v63 = v44[3];
        if (v63)
        {
          if (v2)
          {
            (*(*v63 + 16))(v63, v4);
            v1 = v44;
            v4 = *v44;
            v2 = v44[1];
            LOBYTE(v7) = v49;
            v8 = v48;
            v14 = v56;
            v15 = v59;
            v16 = v61;
            goto LABEL_82;
          }
        }

        else
        {
          v2 = 0;
        }

        v4 = 0;
        LOBYTE(v7) = v49;
        v8 = v48;
        v14 = v56;
        v15 = v59;
        v16 = v61;
        v1 = v44;
        goto LABEL_82;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    goto LABEL_79;
  }

  (*(*v60 + 16))(v60, v4);
  v16 = 0;
  v1 = v44;
  v4 = *v44;
  v2 = v44[1];
  LOBYTE(v7) = v49;
  v8 = v48;
  v14 = v56;
  v15 = v59;
LABEL_20:
  v17 = v1[2];
  if (v2 <= &v17[-v4])
  {
    v44 = v1;
    v61 = v16;
    v59 = v15;
    v56 = v14;
    v48 = v8;
    v49 = v7;
    goto LABEL_76;
  }

  v1[2] = (v17 + 1);
  if (!v17)
  {
    v44 = v1;
    v61 = v16;
    v59 = v15;
    v56 = v14;
    v48 = v8;
    v49 = v7;
    goto LABEL_79;
  }

  v18 = *v17;
  if (v18 < 2)
  {
    v19 = v18 | 0x100;
    goto LABEL_24;
  }

LABEL_82:
  *v1 = 0;
  v1[1] = 0;
  v64 = v1[3];
  if (!v64)
  {
    v4 = 0;
    v19 = 0;
    v2 = 0;
    goto LABEL_84;
  }

  v81 = v1;
  v82 = v16;
  v83 = v15;
  v84 = v14;
  v85 = v8;
  v86 = v7;
  if (!v2)
  {
    v4 = 0;
    v19 = 0;
LABEL_84:
    *v1 = 0;
    v1[1] = 0;
    v65 = v1[3];
    if (v65)
    {
      v102 = v19;
      v103 = v1;
      v104 = v16;
      v105 = v15;
      v106 = v14;
      v107 = v8;
      v108 = v7;
      if (v2)
      {
        (*(*v65 + 16))(v65, v4);
        v1 = v103;
        v4 = *v103;
        v2 = v103[1];
        LOBYTE(v7) = v108;
        v8 = v107;
        v14 = v106;
        v15 = v105;
        v16 = v104;
      }

      else
      {
        v4 = 0;
      }

      v19 = v102;
    }

    else
    {
      v2 = 0;
      v4 = 0;
    }

    goto LABEL_86;
  }

  (*(*v64 + 16))(v64, v4);
  v19 = 0;
  v1 = v81;
  v4 = *v81;
  v2 = v81[1];
  LOBYTE(v7) = v86;
  v8 = v85;
  v14 = v84;
  v15 = v83;
  v16 = v82;
LABEL_24:
  v20 = v1[2];
  if (v2 <= &v20[-v4])
  {
    goto LABEL_84;
  }

  v1[2] = (v20 + 1);
  if (!v20)
  {
LABEL_86:
    *v1 = 0;
    v1[1] = 0;
    v66 = v1[3];
    if (v66)
    {
      v95 = v19;
      v96 = v1;
      v97 = v16;
      v98 = v15;
      v99 = v14;
      v100 = v8;
      v101 = v7;
      if (v2)
      {
        (*(*v66 + 16))(v66, v4);
        v1 = v96;
        v4 = *v96;
        v2 = v96[1];
        LOBYTE(v7) = v101;
        v8 = v100;
        v14 = v99;
        v15 = v98;
        v16 = v97;
      }

      else
      {
        v4 = 0;
      }

      v19 = v95;
    }

    else
    {
      v2 = 0;
      v4 = 0;
    }

    goto LABEL_88;
  }

  v21 = *v20;
  if (v21 < 2)
  {
    if (!v21)
    {
      v34 = 0;
      v33 = 0;
      v35 = 0x10000;
      goto LABEL_34;
    }

    v22 = v19;
    v23 = v16;
    v24 = v15;
    v25 = v14;
    v26 = v13;
    v27 = v11;
    v28 = v10;
    v29 = v8;
    v30 = v7;
    v31 = v1;
    v32 = IPC::Decoder::decode<WebCore::UserStyleLevel>(v1);
    if ((v32 & 0xFF00) != 0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = 256;
    if (v32 > 0xFFu)
    {
      v35 = (v32 << 8) & 0xFF0000;
      LOBYTE(v7) = v30;
      v8 = v29;
      v10 = v28;
      v11 = v27;
      v13 = v26;
      v14 = v25;
      v15 = v24;
      v16 = v23;
      v1 = v31;
      v19 = v22;
      goto LABEL_34;
    }

    LOBYTE(v7) = v30;
    v8 = v29;
    v10 = v28;
    v11 = v27;
    v13 = v26;
    v14 = v25;
    v15 = v24;
    v16 = v23;
    v1 = v31;
    goto LABEL_52;
  }

LABEL_88:
  *v1 = 0;
  v1[1] = 0;
  v67 = v1[3];
  if (v67)
  {
    v22 = v19;
    v114 = v1;
    v87 = v16;
    v88 = v15;
    v89 = v14;
    v90 = v13;
    v91 = v11;
    v92 = v10;
    v93 = v8;
    v94 = v7;
    if (v2)
    {
      (*(*v67 + 16))(v67, v4);
    }

    v34 = 0;
    v33 = 0;
    LOBYTE(v7) = v94;
    v8 = v93;
    v10 = v92;
    v11 = v91;
    v13 = v90;
    v14 = v89;
    v15 = v88;
    v16 = v87;
    v1 = v114;
LABEL_52:
    v19 = v22;
    goto LABEL_90;
  }

  v34 = 0;
  v33 = 0;
LABEL_90:
  v68 = *v1;
  v69 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  v70 = v1[3];
  if (v70)
  {
    v112 = v33;
    v113 = v7;
    v71 = v34;
    v72 = v19;
    v73 = v1;
    v74 = v16;
    v75 = v15;
    v76 = v14;
    v77 = v13;
    v78 = v11;
    v79 = v10;
    v80 = v8;
    if (v69)
    {
      (*(*v70 + 16))(v70, v68);
    }

    v35 = 0;
    v33 = v112;
    LOBYTE(v7) = v113;
    v8 = v80;
    v10 = v79;
    v11 = v78;
    v13 = v77;
    v14 = v76;
    v15 = v75;
    v16 = v74;
    v1 = v73;
    v19 = v72;
    v34 = v71;
  }

  else
  {
    v35 = 0;
  }

LABEL_34:
  v36 = *v1;
  if (*v1)
  {
    if ((v7 & 1) != 0 && (v11 & 1) != 0 && (v14 & 1) != 0 && (v16 & 1) != 0 && v19 > 0xFF)
    {
      v37 = v33 | v34 | v35;
      v36 = WORD1(v37);
      if (v36)
      {
        v38 = v37 << 40;
        v39 = v8;
        v36 = v38 | 0x100000000000000;
        goto LABEL_42;
      }
    }

    __break(1u);
  }

  v39 = 0;
LABEL_42:
  v40 = 0x1000000;
  if ((v16 & (v15 != 0)) == 0)
  {
    v40 = 0;
  }

  v41 = 0x10000;
  if ((v14 & (v13 != 0)) == 0)
  {
    v41 = 0;
  }

  v42 = 256;
  if ((v11 & (v10 != 0)) == 0)
  {
    v42 = 0;
  }

  return ((v42 | v41 | v40 | (v19 << 32)) + v36) | v39;
}

IPC::Encoder *IPC::ArgumentCoder<WebKit::RemoteObjectInvocation,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::RefPtr<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>,void>::encode<IPC::Encoder,API::Dictionary>(a1, a2 + 8);

  return IPC::ArgumentCoder<std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>,void>::encode<IPC::Encoder,std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo> const&>(a1, (a2 + 16));
}

void IPC::ArgumentCoder<WebKit::RemoteObjectInvocation,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v15);
  IPC::Decoder::decode<WTF::RefPtr<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>(&v13, a1);
  IPC::Decoder::decode<std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>>(&v11, a1);
  if (*a1)
  {
    if ((v16 & 1) == 0 || (v14 & 1) == 0 || (v12 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WebKit::RemoteObjectInvocation::RemoteObjectInvocation(&v9, &v15, &v13, &v11);
    v5 = v9;
    v9 = 0uLL;
    *a2 = v5;
    v6 = v10;
    v10 = 0;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
    WebKit::RemoteObjectInvocation::~RemoteObjectInvocation(&v9);
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  if (v12 == 1)
  {
    std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>::reset[abi:sn200100](&v11, 0);
  }

  if (v14 == 1)
  {
    v7 = v13;
    v13 = 0;
    if (v7)
    {
      CFRelease(*(v7 + 1));
    }
  }

  if (v16 == 1)
  {
    v8 = v15;
    v15 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }
    }
  }
}

void sub_19D6C9AA8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a14 == 1)
  {
    std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>::reset[abi:sn200100](&a13, 0);
  }

  if (a18 == 1)
  {
    v20 = a17;
    a17 = 0;
    if (v20)
    {
      CFRelease(*(v20 + 8));
    }
  }

  if (*(v18 - 24) == 1)
  {
    v21 = *(v18 - 32);
    *(v18 - 32) = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::RefPtr<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::RefPtr<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>,void>::decode<IPC::Decoder,API::Dictionary>(a1, a2);
  if ((a1[8] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t IPC::Decoder::decode<std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 8) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void WebKit::RemoteObjectInvocation::~RemoteObjectInvocation(WTF::StringImpl **this)
{
  std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>::reset[abi:sn200100](this + 2, 0);
  v3 = this[1];
  this[1] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 1));
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v2);
    }
  }
}

uint64_t IPC::ArgumentCoder<WebKit::RevealItem,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);
  v4 = a2[2];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::RevealItem,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v11);
  result = IPC::ArgumentCoder<WebCore::StorageEstimate,void>::decode(a1, &v9);
  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = *a1;
    if (!*a1)
    {
      *a2 = 0;
      goto LABEL_8;
    }

    if (v12 & 1) != 0 && (v10)
    {
      break;
    }

    __break(1u);
LABEL_14:
    v5 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v8)
    {
      result = (*(*result + 16))(result, v5);
    }
  }

  v7 = v9;
  v6 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  LOBYTE(v6) = 1;
  *(a2 + 24) = 0;
LABEL_8:
  *(a2 + 32) = v6;
  if (v12 == 1)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D6C9D78(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::ConsumerSharedCARingBufferHandle,void>::encode(IPC::Encoder *a1, unint64_t a2)
{
  IPC::Encoder::addAttachment(a1, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebKit::ConsumerSharedCARingBufferHandle,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<WebCore::SharedMemoryHandle>(a1, v17);
  v4 = *(v2 + 1);
  v5 = ((*(v2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v2;
  v7 = v5 - *v2;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 7)
  {
    *(v2 + 2) = v5 + 1;
    if (!v5)
    {
      goto LABEL_17;
    }

    v2 = *v5;
    v11 = 1;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    while (1)
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v12 = *(v2 + 3);
      if (v12)
      {
        if (v4)
        {
          (*(*v12 + 16))(v12);
          v4 = *(v2 + 1);
        }
      }

      else
      {
        v4 = 0;
      }

LABEL_17:
      *v2 = 0;
      *(v2 + 1) = 0;
      v13 = *(v2 + 3);
      if (!v13)
      {
        break;
      }

      if (!v4)
      {
        break;
      }

      (*(*v13 + 16))(v13);
      v11 = 0;
      v14 = *v2;
      v2 = 0;
      if (!v14)
      {
        break;
      }

LABEL_8:
      if (v19)
      {
        WTF::MachSendRight::MachSendRight();
        *&v16 = v18;
        if (v11)
        {
          *(&v16 + 1) = v2;
          WTF::MachSendRight::MachSendRight();
          *(a2 + 8) = v16;
          *(a2 + 24) = 1;
          WTF::MachSendRight::~MachSendRight(&v15);
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }

  *a2 = 0;
  *(a2 + 24) = 0;
LABEL_11:
  if (v19 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v17);
  }
}

void sub_19D6C9F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a12);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(_BYTE *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v8 = *(a2 + 3);
    if (v8)
    {
      if (v6)
      {
        (*(*v8 + 16))(v8);
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
    v9 = *(a2 + 3);
    if (v9)
    {
      if (v6)
      {
        (*(*v9 + 16))(v9, v5);
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
    v10 = *(a2 + 3);
    if (v10 && v6)
    {
      (*(*v10 + 16))(v10, v5);
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
    result[8] = 0;
    goto LABEL_8;
  }

  result = IPC::Decoder::decode<WTF::RetainPtr<__CFNumber const*>>(&v13, a2);
  if (v14 == 1)
  {
    *v3 = v13;
    v3[8] = 1;
LABEL_8:
    v3[16] = 1;
    return result;
  }

LABEL_16:
  *v3 = 0;
  v3[16] = 0;
  v11 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v11)
  {
    v12 = *(*result + 16);

    return v12();
  }

  return result;
}

void IPC::ArgumentCoder<WebCore::FontPlatformSerializedAttributes,void>::decode(_BYTE *a1, IPC::Decoder *a2)
{
  v10 = a2;
  IPC::Decoder::decode<WTF::String>(a2, &v286);
  IPC::Decoder::decode<WTF::String>(v10, &v284);
  IPC::Decoder::decode<WTF::String>(v10, &v282);
  v11 = v10[1];
  v12 = v10[2];
  v13 = *v10;
  if (v11 <= v12 - *v10)
  {
    *v10 = 0;
    v10[1] = 0;
    v126 = v10[3];
    if (v126)
    {
      if (v11)
      {
        (*(*v126 + 16))(v126);
        v11 = v10[1];
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_191;
  }

  v10[2] = v12 + 1;
  if (!v12)
  {
LABEL_191:
    *v10 = 0;
    v10[1] = 0;
    v127 = v10[3];
    if (v127)
    {
      if (v11)
      {
        (*(*v127 + 16))(v127);
        v13 = *v10;
        v11 = v10[1];
        goto LABEL_194;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
LABEL_194:
    *v10 = 0;
    v10[1] = 0;
    v128 = v10[3];
    if (v128 && v11)
    {
      (*(*v128 + 16))(v128, v13);
    }

    goto LABEL_40;
  }

  v14 = *v12;
  if (v14 >= 2)
  {
    goto LABEL_194;
  }

  if (!v14)
  {
    v196 = 0;
    v197 = 0;
    goto LABEL_8;
  }

  IPC::ArgumentCoder<WTF::RetainPtr<__CFData const*>,void>::decode(v10, &v202);
  if (cf)
  {
    v196 = v202;
    v197 = 1;
LABEL_8:
    v201 = 1;
    goto LABEL_9;
  }

  v40 = *v10;
  v41 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  v42 = v10[3];
  if (v42 && v41)
  {
    (*(*v42 + 16))(v42, v40);
  }

LABEL_40:
  v43 = *v10;
  v44 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  v45 = v10[3];
  if (v45 && v44)
  {
    (*(*v45 + 16))(v45, v43);
  }

  v196 = 0;
  v201 = 0;
LABEL_9:
  v15 = v10[1];
  v16 = v10[2];
  v17 = *v10;
  if (v15 <= v16 - *v10)
  {
    *v10 = 0;
    v10[1] = 0;
    v129 = v10[3];
    if (v129)
    {
      if (v15)
      {
        (*(*v129 + 16))(v129);
        v15 = v10[1];
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_199;
  }

  v10[2] = v16 + 1;
  if (!v16)
  {
LABEL_199:
    *v10 = 0;
    v10[1] = 0;
    v130 = v10[3];
    if (v130)
    {
      if (v15)
      {
        (*(*v130 + 16))(v130);
        v17 = *v10;
        v15 = v10[1];
        goto LABEL_202;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = 0;
LABEL_202:
    *v10 = 0;
    v10[1] = 0;
    v106 = v10[3];
    if (!v106 || !v15)
    {
      goto LABEL_131;
    }

    goto LABEL_170;
  }

  v18 = *v16;
  if (v18 >= 2)
  {
    goto LABEL_202;
  }

  if (!v18)
  {
    v198 = 0;
    v19 = 0;
    v200 = 1;
    goto LABEL_16;
  }

  IPC::ArgumentCoder<WTF::RetainPtr<__CFBoolean const*>,void>::decode(v10, &v202);
  if (cf)
  {
    v19 = v202;
    v200 = 1;
    v198 = 1;
    goto LABEL_16;
  }

  v17 = *v10;
  v105 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  v106 = v10[3];
  if (v106 && v105)
  {
LABEL_170:
    (*(*v106 + 16))(v106, v17);
  }

LABEL_131:
  v107 = *v10;
  v108 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  v109 = v10[3];
  if (v109 && v108)
  {
    (*(*v109 + 16))(v109, v107);
  }

  v200 = 0;
  v19 = 0;
LABEL_16:
  v199 = v19;
  IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v279, v10);
  IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v276, v10);
  IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v273, v10);
  IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v270, v10);
  IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v267, v10);
  IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v264, v10);
  IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v261, v10);
  IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v258, v10);
  IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v255, v10);
  v20 = v10[1];
  v21 = v10[2];
  v22 = *v10;
  if (v20 <= v21 - *v10)
  {
    *v10 = 0;
    v10[1] = 0;
    v131 = v10[3];
    if (v131)
    {
      if (v20)
      {
        (*(*v131 + 16))(v131);
        v20 = v10[1];
      }
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_207;
  }

  v10[2] = (v21 + 1);
  if (!v21)
  {
LABEL_207:
    *v10 = 0;
    v10[1] = 0;
    v132 = v10[3];
    if (v132)
    {
      if (v20)
      {
        (*(*v132 + 16))(v132);
        v22 = *v10;
        v20 = v10[1];
        goto LABEL_210;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = 0;
LABEL_210:
    *v10 = 0;
    v10[1] = 0;
    v133 = v10[3];
    if (v133 && v20)
    {
      (*(*v133 + 16))(v133, v22);
    }

    goto LABEL_176;
  }

  if (*v21 >= 2u)
  {
    goto LABEL_210;
  }

  if (!*v21)
  {
    LOBYTE(v202) = 0;
    LOBYTE(v204) = 0;
    std::__optional_move_base<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v253, &v202);
    v254 = 1;
    if (v204 != 1)
    {
      goto LABEL_57;
    }

    v39 = &v202;
LABEL_56:
    WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v38);
    goto LABEL_57;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFF8;
  v24 = ((v21 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v20 < v24 - v22 || &v20[-(v24 - v22)] <= 7)
  {
    v112 = 0;
    v113 = 0;
    *v10 = 0;
    v10[1] = 0;
    v114 = v10[3];
    if (v114)
    {
      (*(*v114 + 16))(v114);
      v113 = *v10;
      v112 = v10[1];
    }

    goto LABEL_173;
  }

  v10[2] = (v23 + 16);
  if (!v24)
  {
    v112 = v20;
    v113 = v22;
LABEL_173:
    *v10 = 0;
    v10[1] = 0;
    v115 = v10[3];
    if (v115 && v112)
    {
      (*(*v115 + 16))(v115, v113, v112);
    }

    LOBYTE(v250[0]) = 0;
    v251 = 0;
    goto LABEL_175;
  }

  v2 = *v24;
  v246 = 0;
  v247 = 0;
  if (v2 >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>>(&v202, v10);
      if ((v204 & 1) == 0)
      {
LABEL_52:
        LOBYTE(v250[0]) = 0;
        v251 = 0;
        goto LABEL_53;
      }

      if (HIDWORD(v247) != v247)
      {
        break;
      }

      v46 = WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v246, HIDWORD(v247) + 1, &v202);
      v47 = HIDWORD(v247) + 1;
      v48 = (v246 + 16 * HIDWORD(v247));
      v49 = *v46;
      *v46 = 0;
      *v48 = v49;
      v50 = v46[1];
      v46[1] = 0;
      v48[1] = v50;
      HIDWORD(v247) = v47;
      if (v204)
      {
        goto LABEL_46;
      }

LABEL_50:
      if (!--v2)
      {
        v2 = HIDWORD(v247);
        if (v247 > HIDWORD(v247))
        {
          v5 = v246;
          if (HIDWORD(v247))
          {
            if (HIDWORD(v247) >> 28)
            {
              goto LABEL_501;
            }

            v110 = WTF::fastMalloc((16 * HIDWORD(v247)));
            LODWORD(v247) = v2;
            v246 = v110;
            if (v110 != v5)
            {
              WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>>::move(v5, &v5[2 * v2], v110);
            }
          }

          if (v5)
          {
            if (v246 == v5)
            {
              v246 = 0;
              LODWORD(v247) = 0;
            }

            WTF::fastFree(v5, v26);
          }
        }

        goto LABEL_36;
      }
    }

    v51 = HIDWORD(v247) + 1;
    v52 = (v246 + 16 * HIDWORD(v247));
    v53 = v202;
    v202 = 0;
    *v52 = v53;
    v54 = cf;
    cf = 0;
    v52[1] = v54;
    HIDWORD(v247) = v51;
LABEL_46:
    v55 = cf;
    cf = 0;
    if (v55)
    {
      CFRelease(v55);
    }

    v56 = v202;
    v202 = 0;
    if (v56)
    {
      CFRelease(v56);
    }

    goto LABEL_50;
  }

  if (v2)
  {
    v25 = WTF::fastMalloc((16 * v2));
    LODWORD(v247) = v2;
    v246 = v25;
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>>(&v202, v10);
      if ((v204 & 1) == 0)
      {
        goto LABEL_52;
      }

      if (HIDWORD(v247) != v247)
      {
        break;
      }

      v27 = WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v246, HIDWORD(v247) + 1, &v202);
      v28 = HIDWORD(v247) + 1;
      v29 = (v246 + 16 * HIDWORD(v247));
      v30 = *v27;
      *v27 = 0;
      *v29 = v30;
      v31 = v27[1];
      v27[1] = 0;
      v29[1] = v31;
      HIDWORD(v247) = v28;
      if (v204)
      {
        goto LABEL_31;
      }

LABEL_35:
      if (!--v2)
      {
        goto LABEL_36;
      }
    }

    v32 = HIDWORD(v247) + 1;
    v33 = (v246 + 16 * HIDWORD(v247));
    v34 = v202;
    v202 = 0;
    *v33 = v34;
    v35 = cf;
    cf = 0;
    v33[1] = v35;
    HIDWORD(v247) = v32;
LABEL_31:
    v36 = cf;
    cf = 0;
    if (v36)
    {
      CFRelease(v36);
    }

    v37 = v202;
    v202 = 0;
    if (v37)
    {
      CFRelease(v37);
    }

    goto LABEL_35;
  }

LABEL_36:
  std::optional<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v250, &v246);
LABEL_53:
  WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v246, v26);
  if (v251)
  {
    goto LABEL_54;
  }

LABEL_175:
  v116 = *v10;
  v117 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  v118 = v10[3];
  if (v118)
  {
    if (v117)
    {
      (*(*v118 + 16))(v118, v116);
      if (v251)
      {
LABEL_54:
        std::optional<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v253, v250);
        v254 = 1;
        if ((v251 & 1) == 0)
        {
          goto LABEL_57;
        }

        v39 = v250;
        goto LABEL_56;
      }
    }
  }

LABEL_176:
  v253[0] = 0;
  v254 = 0;
LABEL_57:
  v57 = v10[1];
  if ((v254 & 1) == 0)
  {
    v95 = *v10;
    *v10 = 0;
    v10[1] = 0;
    v96 = v10[3];
    if (!v96 || !v57)
    {
      v57 = 0;
      v58 = *v10;
LABEL_112:
      *v10 = 0;
      v10[1] = 0;
      v97 = v10[3];
      if (v97)
      {
        if (v57)
        {
          (*(*v97 + 16))(v97, v58);
          v57 = v10[1];
        }
      }

      else
      {
        v57 = 0;
      }

      goto LABEL_114;
    }

    (*(*v96 + 16))(v96, v95);
    v57 = v10[1];
  }

  v58 = *v10;
  v59 = v10[2];
  if (v57 <= v59 - *v10)
  {
    goto LABEL_112;
  }

  v10[2] = (v59 + 1);
  if (!v59)
  {
LABEL_114:
    *v10 = 0;
    v10[1] = 0;
    v98 = v10[3];
    if (v98)
    {
      if (v57)
      {
        (*(*v98 + 16))(v98);
        v58 = *v10;
        v57 = v10[1];
        goto LABEL_117;
      }
    }

    else
    {
      v57 = 0;
    }

    v58 = 0;
LABEL_117:
    *v10 = 0;
    v10[1] = 0;
    v99 = v10[3];
    if (v99 && v57)
    {
      (*(*v99 + 16))(v99, v58);
    }

    goto LABEL_185;
  }

  if (*v59 >= 2u)
  {
    goto LABEL_117;
  }

  if (*v59)
  {
    v60 = v59 & 0xFFFFFFFFFFFFFFF8;
    v61 = ((v59 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v57 < v61 - v58 || &v57[-(v61 - v58)] <= 7)
    {
      v119 = 0;
      v120 = 0;
      *v10 = 0;
      v10[1] = 0;
      v121 = v10[3];
      if (v121)
      {
        (*(*v121 + 16))(v121);
        v120 = *v10;
        v119 = v10[1];
      }
    }

    else
    {
      v10[2] = (v60 + 16);
      if (v61)
      {
        v2 = *v61;
        v294 = 0;
        v295 = 0;
        if (v2 < 0x10000)
        {
          if (!v2)
          {
            goto LABEL_78;
          }

          v62 = WTF::fastMalloc((16 * v2));
          LODWORD(v295) = v2;
          v294 = v62;
          while (1)
          {
            IPC::Decoder::decode<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<__CFNumber const*>>>(&v202, v10);
            if ((v204 & 1) == 0)
            {
              goto LABEL_91;
            }

            if (HIDWORD(v295) != v295)
            {
              break;
            }

            v64 = WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v294, HIDWORD(v295) + 1, &v202);
            v65 = HIDWORD(v295) + 1;
            v66 = &v294[2 * HIDWORD(v295)];
            v67 = *v64;
            *v64 = 0;
            *v66 = v67;
            v68 = v64[1];
            v64[1] = 0;
            *(v66 + 1) = v68;
            HIDWORD(v295) = v65;
            if (v204)
            {
              goto LABEL_73;
            }

LABEL_77:
            if (!--v2)
            {
              goto LABEL_78;
            }
          }

          v69 = HIDWORD(v295) + 1;
          v70 = &v294[2 * HIDWORD(v295)];
          v71 = v202;
          v202 = 0;
          *v70 = v71;
          v72 = cf;
          cf = 0;
          *(v70 + 1) = v72;
          HIDWORD(v295) = v69;
LABEL_73:
          v73 = cf;
          cf = 0;
          if (v73)
          {
            CFRelease(v73);
          }

          v74 = v202;
          v202 = 0;
          if (v74)
          {
            CFRelease(v74);
          }

          goto LABEL_77;
        }

        while (1)
        {
          IPC::Decoder::decode<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<__CFNumber const*>>>(&v202, v10);
          if ((v204 & 1) == 0)
          {
LABEL_91:
            LOBYTE(v246) = 0;
            v248 = 0;
            goto LABEL_92;
          }

          if (HIDWORD(v295) != v295)
          {
            break;
          }

          v77 = WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v294, HIDWORD(v295) + 1, &v202);
          v78 = HIDWORD(v295) + 1;
          v79 = &v294[2 * HIDWORD(v295)];
          v80 = *v77;
          *v77 = 0;
          *v79 = v80;
          v81 = v77[1];
          v77[1] = 0;
          *(v79 + 1) = v81;
          HIDWORD(v295) = v78;
          if (v204)
          {
            goto LABEL_85;
          }

LABEL_89:
          if (!--v2)
          {
            v2 = HIDWORD(v295);
            if (v295 <= HIDWORD(v295))
            {
              goto LABEL_78;
            }

            v5 = v294;
            if (!HIDWORD(v295))
            {
              goto LABEL_147;
            }

            if (!(HIDWORD(v295) >> 28))
            {
              v111 = WTF::fastMalloc((16 * HIDWORD(v295)));
              LODWORD(v295) = v2;
              v294 = v111;
              if (v111 != v5)
              {
                WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>>::move(v5, &v5[2 * v2], v111);
              }

LABEL_147:
              if (v5)
              {
                if (v294 == v5)
                {
                  v294 = 0;
                  LODWORD(v295) = 0;
                }

                WTF::fastFree(v5, v63);
              }

LABEL_78:
              std::optional<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<__CFNumber const*>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<__CFNumber const*>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v246, &v294);
LABEL_92:
              WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v294, v63);
              if (v248)
              {
LABEL_93:
                std::optional<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<__CFNumber const*>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<__CFNumber const*>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v250, &v246);
                v252 = 1;
                if (v248)
                {
                  v76 = &v246;
LABEL_95:
                  WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v76, v75);
                }

                goto LABEL_96;
              }

LABEL_184:
              v123 = *v10;
              v124 = v10[1];
              *v10 = 0;
              v10[1] = 0;
              v125 = v10[3];
              if (v125)
              {
                if (v124)
                {
                  (*(*v125 + 16))(v125, v123);
                  if (v248)
                  {
                    goto LABEL_93;
                  }
                }
              }

LABEL_185:
              LOBYTE(v250[0]) = 0;
              v252 = 0;
              goto LABEL_96;
            }

LABEL_501:
            __break(0xC471u);
            JUMPOUT(0x19D6CBEA0);
          }
        }

        v82 = HIDWORD(v295) + 1;
        v83 = &v294[2 * HIDWORD(v295)];
        v84 = v202;
        v202 = 0;
        *v83 = v84;
        v85 = cf;
        cf = 0;
        *(v83 + 1) = v85;
        HIDWORD(v295) = v82;
LABEL_85:
        v86 = cf;
        cf = 0;
        if (v86)
        {
          CFRelease(v86);
        }

        v87 = v202;
        v202 = 0;
        if (v87)
        {
          CFRelease(v87);
        }

        goto LABEL_89;
      }

      v119 = v57;
      v120 = v58;
    }

    *v10 = 0;
    v10[1] = 0;
    v122 = v10[3];
    if (v122 && v119)
    {
      (*(*v122 + 16))(v122, v120, v119);
    }

    LOBYTE(v246) = 0;
    v248 = 0;
    goto LABEL_184;
  }

  LOBYTE(v202) = 0;
  LOBYTE(v204) = 0;
  std::__optional_move_base<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<__CFNumber const*>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v250, &v202);
  v252 = 1;
  if (v204 == 1)
  {
    v76 = &v202;
    goto LABEL_95;
  }

LABEL_96:
  v88 = v10[1];
  if ((v252 & 1) == 0)
  {
    v100 = *v10;
    *v10 = 0;
    v10[1] = 0;
    v101 = v10[3];
    if (!v101 || !v88)
    {
      v88 = 0;
      v89 = *v10;
LABEL_122:
      *v10 = 0;
      v10[1] = 0;
      v102 = v10[3];
      if (v102)
      {
        if (v88)
        {
          (*(*v102 + 16))(v102, v89);
          v88 = v10[1];
        }
      }

      else
      {
        v88 = 0;
      }

      goto LABEL_124;
    }

    (*(*v101 + 16))(v101, v100);
    v88 = v10[1];
  }

  v89 = *v10;
  v90 = v10[2];
  if (v88 <= v90 - *v10)
  {
    goto LABEL_122;
  }

  v91 = v90 + 1;
  v10[2] = v90 + 1;
  if (!v90)
  {
LABEL_124:
    *v10 = 0;
    v10[1] = 0;
    v103 = v10[3];
    if (v103)
    {
      if (v88)
      {
        (*(*v103 + 16))(v103);
        v89 = *v10;
        v88 = v10[1];
        goto LABEL_127;
      }
    }

    else
    {
      v88 = 0;
    }

    v89 = 0;
LABEL_127:
    *v10 = 0;
    v10[1] = 0;
    v104 = v10[3];
    if (v104 && v88)
    {
      (*(*v104 + 16))(v104, v89);
    }

    goto LABEL_442;
  }

  if (*v90 >= 2u)
  {
    goto LABEL_127;
  }

  if (!*v90)
  {
    LOBYTE(v246) = 0;
    v248 = 0;
    v249 = 1;
    goto LABEL_221;
  }

  if (v88 <= v91 - v89)
  {
    v134 = 0;
    v135 = 0;
    *v10 = 0;
    v10[1] = 0;
    v136 = v10[3];
    if (v136)
    {
      (*(*v136 + 16))(v136);
      v135 = *v10;
      v134 = v10[1];
    }

    goto LABEL_215;
  }

  v10[2] = v90 + 2;
  if (v90 == -1)
  {
    v134 = v88;
    v135 = v89;
LABEL_215:
    *v10 = 0;
    v10[1] = 0;
    v137 = v10[3];
    if (v137 && v134)
    {
      (*(*v137 + 16))(v137, v135, v134);
    }

    goto LABEL_216;
  }

  if (*v91 >= 2u)
  {
    goto LABEL_216;
  }

  if (*v91)
  {
    v92 = IPC::Decoder::decode<WTF::String>(v10, &v291);
    if (v292 == 1)
    {
      v202 = v291;
      v94 = 1;
      LOBYTE(cf) = 1;
      LOBYTE(v204) = 1;
      LOBYTE(v2) = 1;
      goto LABEL_218;
    }

LABEL_216:
    LOBYTE(v202) = 0;
    LOBYTE(v204) = 0;
    v138 = *v10;
    v93 = v10[1];
    *v10 = 0;
    v10[1] = 0;
    v92 = v10[3];
    if (v92)
    {
      goto LABEL_430;
    }

    goto LABEL_217;
  }

  v92 = IPC::Decoder::decode<WTF::RetainPtr<__CFNumber const*>>(&v291, v10);
  if (v292 != 1)
  {
    goto LABEL_216;
  }

  LOBYTE(v2) = 0;
  v202 = v291;
  LOBYTE(cf) = 0;
  v94 = 1;
  LOBYTE(v204) = 1;
  while (1)
  {
LABEL_218:
    v138 = *v10;
    if (*v10)
    {
      if ((v94 & 1) == 0)
      {
        goto LABEL_429;
      }

      v3 = v202;
      v202 = 0;
      v292 = v2;
      v291 = 0;
      LOBYTE(v295) = v2;
      v4 = 1;
      v296 = 1;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RetainPtr<__CFNumber const*>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v291, v138);
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RetainPtr<__CFNumber const*>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v202, v139);
      v294 = 0;
      v246 = v3;
      LOBYTE(v247) = v2;
      v248 = 1;
      v249 = 1;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RetainPtr<__CFNumber const*>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v294, v140);
    }

    else
    {
      if (v94)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RetainPtr<__CFNumber const*>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v202, 0);
      }

      v176 = v10[1];
      *v10 = 0;
      v10[1] = 0;
      v177 = v10[3];
      if (v177 && v176)
      {
        (*(*v177 + 16))(v177);
      }

LABEL_442:
      LOBYTE(v246) = 0;
      v249 = 0;
      v178 = *v10;
      v179 = v10[1];
      *v10 = 0;
      v10[1] = 0;
      v180 = v10[3];
      if (v180 && v179)
      {
        (*(*v180 + 16))(v180, v178);
      }
    }

LABEL_221:
    v141 = v10[1];
    v142 = v10[2];
    v143 = *v10;
    if (v141 <= v142 - *v10)
    {
      *v10 = 0;
      v10[1] = 0;
      v186 = v10[3];
      if (v186)
      {
        if (v141)
        {
          (*(*v186 + 16))(v186);
          v141 = v10[1];
        }
      }

      else
      {
        v141 = 0;
      }
    }

    else
    {
      v10[2] = v142 + 1;
      if (v142)
      {
        v144 = *v142;
        if (v144 >= 2)
        {
          goto LABEL_426;
        }

        if (!v144)
        {
          v195 = 0;
          v192 = 0;
          v193 = 0;
          v190 = 0;
          v191 = 0;
          v7 = 0;
          v6 = 1;
          goto LABEL_273;
        }

        IPC::Decoder::decode<WTF::String>(v10, &v297);
        IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v202, v10);
        IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v294, v10);
        IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v291, v10);
        v92 = IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v288, v10);
        v5 = *v10;
        if (*v10)
        {
          if ((v298 & 1) == 0)
          {
            goto LABEL_429;
          }

          v195 = v297;
          v297 = 0;
          if ((v204 & 1) == 0)
          {
            goto LABEL_429;
          }

          LOBYTE(v2) = cf;
          if (cf == 1)
          {
            v6 = v202;
            v202 = 0;
          }

          else
          {
            v6 = 0;
          }

          if ((v296 & 1) == 0)
          {
            goto LABEL_429;
          }

          LOBYTE(v3) = v295;
          if (v295 == 1)
          {
            v7 = v294;
            v294 = 0;
          }

          else
          {
            v7 = 0;
          }

          if ((v293 & 1) == 0)
          {
            goto LABEL_429;
          }

          v4 = v292;
          if (v292 == 1)
          {
            v8 = v291;
            v291 = 0;
          }

          else
          {
            v8 = 0;
          }

          if ((v290 & 1) == 0)
          {
            goto LABEL_429;
          }

          LOBYTE(v19) = v289;
          if (v289)
          {
            v9 = v288;
          }

          else
          {
            v9 = 0;
          }
        }

        else if (v290 & 1) != 0 && (v289)
        {
          if (v288)
          {
            CFRelease(v288);
          }

          v195 = 0;
          LOBYTE(v19) = 1;
        }

        else
        {
          v195 = 0;
        }

        if (v293 == 1 && v292 == 1 && v291)
        {
          CFRelease(v291);
        }

        if (v296 == 1 && v295 == 1 && v294)
        {
          CFRelease(v294);
        }

        if (v204 == 1 && cf == 1 && v202)
        {
          CFRelease(v202);
        }

        if (v298 == 1 && (v145 = v297, v297 = 0, v145) && atomic_fetch_add_explicit(v145, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v145, v138);
          if (v5)
          {
LABEL_260:
            if (v2)
            {
              v146 = v6;
            }

            else
            {
              v146 = 0;
            }

            if (v3)
            {
              v147 = v7;
            }

            else
            {
              v147 = 0;
            }

            v192 = v147;
            v193 = v146;
            if (v4)
            {
              v148 = v8;
            }

            else
            {
              v148 = 0;
            }

            if (v19)
            {
              v149 = v9;
            }

            else
            {
              v149 = 0;
            }

            v190 = v149;
            v191 = v148;
            v6 = 1;
            v7 = 1;
            goto LABEL_273;
          }
        }

        else if (v5)
        {
          goto LABEL_260;
        }

        goto LABEL_425;
      }
    }

    *v10 = 0;
    v10[1] = 0;
    v187 = v10[3];
    if (v187)
    {
      if (v141)
      {
        (*(*v187 + 16))(v187);
LABEL_425:
        v143 = *v10;
        v141 = v10[1];
        goto LABEL_426;
      }
    }

    else
    {
      v141 = 0;
    }

    v143 = 0;
LABEL_426:
    *v10 = 0;
    v10[1] = 0;
    v172 = v10[3];
    if (v172 && v141)
    {
      (*(*v172 + 16))(v172, v143);
    }

    v173 = *v10;
    v174 = v10[1];
    *v10 = 0;
    v10[1] = 0;
    v175 = v10[3];
    if (v175 && v174)
    {
      (*(*v175 + 16))(v175, v173);
    }

    v6 = 0;
    v195 = 0;
LABEL_273:
    v150 = v10[1];
    v151 = v10[2];
    v152 = *v10;
    if (v150 <= v151 - *v10)
    {
      *v10 = 0;
      v10[1] = 0;
      v188 = v10[3];
      if (v188)
      {
        if (v150)
        {
          (*(*v188 + 16))(v188);
          v150 = v10[1];
        }
      }

      else
      {
        v150 = 0;
      }

LABEL_466:
      *v10 = 0;
      v10[1] = 0;
      v189 = v10[3];
      if (v189)
      {
        if (v150)
        {
          (*(*v189 + 16))(v189);
          v152 = *v10;
          v150 = v10[1];
          goto LABEL_469;
        }
      }

      else
      {
        v150 = 0;
      }

      v152 = 0;
LABEL_469:
      *v10 = 0;
      v10[1] = 0;
      v182 = v10[3];
      if (!v182 || !v150)
      {
        goto LABEL_446;
      }

LABEL_454:
      (*(*v182 + 16))(v182, v152);
      goto LABEL_446;
    }

    v10[2] = v151 + 1;
    if (!v151)
    {
      goto LABEL_466;
    }

    v153 = *v151;
    if (v153 >= 2)
    {
      goto LABEL_469;
    }

    if (!v153)
    {
      LODWORD(v5) = 0;
      v9 = 0;
      v8 = 1;
      goto LABEL_280;
    }

    IPC::ArgumentCoder<WTF::RetainPtr<__CFArray const*>,void>::decode(v10, v152, &v202);
    if (cf)
    {
      v9 = v202;
      v8 = 1;
      LODWORD(v5) = 1;
      goto LABEL_280;
    }

    v152 = *v10;
    v181 = v10[1];
    *v10 = 0;
    v10[1] = 0;
    v182 = v10[3];
    if (v182 && v181)
    {
      goto LABEL_454;
    }

LABEL_446:
    v183 = *v10;
    v184 = v10[1];
    *v10 = 0;
    v10[1] = 0;
    v185 = v10[3];
    if (v185 && v184)
    {
      (*(*v185 + 16))(v185, v183);
    }

    v8 = 0;
    v9 = 0;
LABEL_280:
    v92 = IPC::Decoder::decode<std::optional<WTF::RetainPtr<__CFNumber const*>>>(&v294, v10);
    if (!*v10)
    {
      break;
    }

    if (v287)
    {
      v154 = v286;
      v286 = 0;
      v202 = v154;
      if (v285)
      {
        v155 = v284;
        v284 = 0;
        cf = v155;
        if (v283)
        {
          v156 = v282;
          v282 = 0;
          v204 = v156;
          if (v201)
          {
            LOBYTE(v205) = 0;
            v206 = 0;
            if (v197)
            {
              v205 = v196;
              v206 = 1;
              v196 = 0;
            }

            if (v200)
            {
              LOBYTE(v207) = 0;
              v208 = 0;
              if (v198)
              {
                v207 = v199;
                v208 = 1;
                v199 = 0;
              }

              if (v281)
              {
                LOBYTE(v209) = 0;
                v210 = 0;
                if (v280 == 1)
                {
                  v157 = v279;
                  v279 = 0;
                  v209 = v157;
                  v210 = 1;
                }

                if (v278)
                {
                  LOBYTE(v211) = 0;
                  v212 = 0;
                  if (v277 == 1)
                  {
                    v158 = v276;
                    v276 = 0;
                    v211 = v158;
                    v212 = 1;
                  }

                  if (v275)
                  {
                    LOBYTE(v213) = 0;
                    v214 = 0;
                    if (v274 == 1)
                    {
                      v159 = v273;
                      v273 = 0;
                      v213 = v159;
                      v214 = 1;
                    }

                    if (v272)
                    {
                      LOBYTE(v215) = 0;
                      v216 = 0;
                      if (v271 == 1)
                      {
                        v160 = v270;
                        v270 = 0;
                        v215 = v160;
                        v216 = 1;
                      }

                      if (v269)
                      {
                        LOBYTE(v217) = 0;
                        v218 = 0;
                        if (v268 == 1)
                        {
                          v161 = v267;
                          v267 = 0;
                          v217 = v161;
                          v218 = 1;
                        }

                        if (v266)
                        {
                          LOBYTE(v219) = 0;
                          v220 = 0;
                          if (v265 == 1)
                          {
                            v162 = v264;
                            v264 = 0;
                            v219 = v162;
                            v220 = 1;
                          }

                          if (v263)
                          {
                            LOBYTE(v221) = 0;
                            v222 = 0;
                            if (v262 == 1)
                            {
                              v163 = v261;
                              v261 = 0;
                              v221 = v163;
                              v222 = 1;
                            }

                            if (v260)
                            {
                              LOBYTE(v223) = 0;
                              v224 = 0;
                              if (v259 == 1)
                              {
                                v164 = v258;
                                v258 = 0;
                                v223 = v164;
                                v224 = 1;
                              }

                              if (v257)
                              {
                                LOBYTE(v225) = 0;
                                v226 = 0;
                                if (v256 == 1)
                                {
                                  v165 = v255;
                                  v255 = 0;
                                  v225 = v165;
                                  v226 = 1;
                                }

                                if (v254)
                                {
                                  v10 = &v202;
                                  v92 = std::__optional_move_base<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v227, v253);
                                  if (v252)
                                  {
                                    v92 = std::__optional_move_base<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<__CFNumber const*>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v228, v250);
                                    if (v249)
                                    {
                                      LOBYTE(v229) = 0;
                                      v231 = 0;
                                      v92 = a1;
                                      if (v248 == 1)
                                      {
                                        v230 = -1;
                                        if (v247 != 255)
                                        {
                                          v166 = v246;
                                          v246 = 0;
                                          v229 = v166;
                                          v230 = v247;
                                        }

                                        v231 = 1;
                                      }

                                      if (v6)
                                      {
                                        LOBYTE(v232) = 0;
                                        v241 = 0;
                                        if (v7)
                                        {
                                          v232 = v195;
                                          LOBYTE(v233) = 0;
                                          v234 = 0;
                                          if (v2)
                                          {
                                            v233 = v193;
                                            v234 = 1;
                                            v193 = 0;
                                          }

                                          LOBYTE(v235) = 0;
                                          v236 = 0;
                                          if (v3)
                                          {
                                            v235 = v192;
                                            v236 = 1;
                                            v192 = 0;
                                          }

                                          LOBYTE(v237) = 0;
                                          v238 = 0;
                                          if (v4)
                                          {
                                            v237 = v191;
                                            v238 = 1;
                                            v191 = 0;
                                          }

                                          LOBYTE(v239) = 0;
                                          v240 = 0;
                                          if (v19)
                                          {
                                            v239 = v190;
                                            v240 = 1;
                                            v190 = 0;
                                          }

                                          v195 = 0;
                                          v241 = 1;
                                        }

                                        if (v8)
                                        {
                                          LOBYTE(v242) = 0;
                                          v243 = 0;
                                          if (v5)
                                          {
                                            v242 = v9;
                                            v243 = 1;
                                            v9 = 0;
                                          }

                                          if (v296)
                                          {
                                            LOBYTE(v244) = 0;
                                            v245 = 0;
                                            if (v295 == 1)
                                            {
                                              v167 = v294;
                                              v294 = 0;
                                              v244 = v167;
                                              v245 = 1;
                                            }

                                            *(WebCore::FontPlatformSerializedAttributes::FontPlatformSerializedAttributes(a1, &v202) + 384) = 1;
                                            WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes(&v202, v168);
                                            goto LABEL_342;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_429:
    __break(1u);
LABEL_430:
    if (v93)
    {
      v92 = (*(*v92 + 16))(v92, v138);
    }

LABEL_217:
    v94 = 0;
  }

  *a1 = 0;
  a1[384] = 0;
  if ((v296 & 1) == 0)
  {
    goto LABEL_345;
  }

LABEL_342:
  if (v295 == 1 && v294)
  {
    CFRelease(v294);
  }

LABEL_345:
  if ((v8 & v5) == 1 && v9)
  {
    CFRelease(v9);
  }

  if ((v6 & v7) == 1)
  {
    if ((v19 & (v190 != 0)) == 1)
    {
      CFRelease(v190);
    }

    if ((v4 & (v191 != 0)) == 1)
    {
      CFRelease(v191);
    }

    if ((v3 & (v192 != 0)) == 1)
    {
      CFRelease(v192);
    }

    if ((v2 & (v193 != 0)) == 1)
    {
      CFRelease(v193);
    }

    if (v195 && atomic_fetch_add_explicit(v195, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v195, v138);
    }
  }

  if (v249 == 1 && v248 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::RetainPtr<__CFNumber const*>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v246, v138);
  }

  if (v252 == 1 && v251 == 1)
  {
    WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v250, v138);
  }

  if (v254 == 1 && v253[16] == 1)
  {
    WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v253, v138);
  }

  if (v257 == 1 && v256 == 1 && v255)
  {
    CFRelease(v255);
  }

  if (v260 == 1 && v259 == 1 && v258)
  {
    CFRelease(v258);
  }

  if (v263 == 1 && v262 == 1 && v261)
  {
    CFRelease(v261);
  }

  if (v266 == 1 && v265 == 1 && v264)
  {
    CFRelease(v264);
  }

  if (v269 == 1 && v268 == 1 && v267)
  {
    CFRelease(v267);
  }

  if (v272 == 1 && v271 == 1 && v270)
  {
    CFRelease(v270);
  }

  if (v275 == 1 && v274 == 1 && v273)
  {
    CFRelease(v273);
  }

  if (v278 == 1 && v277 == 1 && v276)
  {
    CFRelease(v276);
  }

  if (v281 == 1 && v280 == 1 && v279)
  {
    CFRelease(v279);
  }

  if ((v200 & v198) == 1 && v199)
  {
    CFRelease(v199);
  }

  if ((v201 & v197) == 1 && v196)
  {
    CFRelease(v196);
  }

  if (v283 == 1)
  {
    v169 = v282;
    v282 = 0;
    if (v169)
    {
      if (atomic_fetch_add_explicit(v169, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v169, v138);
      }
    }
  }

  if (v285 == 1)
  {
    v170 = v284;
    v284 = 0;
    if (v170)
    {
      if (atomic_fetch_add_explicit(v170, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v170, v138);
      }
    }
  }

  if (v287 == 1)
  {
    v171 = v286;
    v286 = 0;
    if (v171)
    {
      if (atomic_fetch_add_explicit(v171, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v171, v138);
      }
    }
  }
}