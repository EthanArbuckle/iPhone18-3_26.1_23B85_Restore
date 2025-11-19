void sub_19D81A990(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, WTF *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, WTF *a55, uint64_t a56, char a57)
{
  if (a57)
  {
    v58 = a56;
    a56 = 0;
    if (v58)
    {
      WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(v58);
    }

    WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(&a55, a2);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 24 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::CDMMediaCapability,void>::encode(a1, v6);
      v6 += 24;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::CDMMediaCapability>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v32);
  result = IPC::Decoder::decode<WTF::String>(a2, &v30);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (v5 <= &v6[-*a2])
  {
    goto LABEL_27;
  }

  v8 = v6 + 1;
  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_29;
  }

  v9 = *v6;
  if (v9 >= 2)
  {
    goto LABEL_32;
  }

  if (!*v6)
  {
    LOWORD(v10) = 0;
    v11 = 0x10000;
    if (v7)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

  if (v5 <= v8 - v7)
  {
    v20 = 0;
    v21 = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      (*(*v22 + 16))(v22);
      v21 = *a2;
      v20 = *(a2 + 1);
    }

    goto LABEL_36;
  }

  *(a2 + 2) = v6 + 2;
  if (v6 == -1)
  {
    v20 = v5;
    v21 = v7;
LABEL_36:
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23 && v20)
    {
      (*(*v23 + 16))(v23, v21, v20);
      v7 = *a2;
      v5 = *(a2 + 1);
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

LABEL_38:
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    if (v24 && v5)
    {
      (*(*v24 + 16))(v24, v7);
      v26 = *(a2 + 3);
      v27 = *a2;
      v28 = *(a2 + 1);
      v29 = 256;
      *a2 = 0;
      *(a2 + 1) = 0;
      if (!v26 || !v28)
      {
        goto LABEL_40;
      }

      (*(*v26 + 16))(v26, v27);
    }

    v29 = 256;
    goto LABEL_40;
  }

  v10 = *v8;
  if (v10 >= 2)
  {
    goto LABEL_38;
  }

  v11 = 0x10000;
  v9 = 256;
  if (v7)
  {
    while (1)
    {
LABEL_11:
      if (v33)
      {
        v12 = v32;
        v32 = 0;
        if (v31)
        {
          if ((v11 | v9) >> 16)
          {
            v13 = v30;
            *a1 = v12;
            *(a1 + 8) = v13;
            *(a1 + 16) = v10 | v9;
            v14 = 1;
            *(a1 + 24) = 1;
            goto LABEL_15;
          }
        }
      }

      __break(1u);
LABEL_27:
      *a2 = 0;
      *(a2 + 1) = 0;
      v17 = *(a2 + 3);
      if (v17)
      {
        if (v5)
        {
          (*(*v17 + 16))(v17);
          v5 = *(a2 + 1);
        }
      }

      else
      {
        v5 = 0;
      }

LABEL_29:
      *a2 = 0;
      *(a2 + 1) = 0;
      v18 = *(a2 + 3);
      if (v18)
      {
        if (v5)
        {
          (*(*v18 + 16))(v18);
          v7 = *a2;
          v5 = *(a2 + 1);
          goto LABEL_32;
        }
      }

      else
      {
        v5 = 0;
      }

      v7 = 0;
LABEL_32:
      *a2 = 0;
      *(a2 + 1) = 0;
      v19 = *(a2 + 3);
      if (v19 && v5)
      {
        (*(*v19 + 16))(v19, v7);
      }

      v29 = 0;
LABEL_40:
      v7 = *a2;
      v25 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (result)
      {
        if (v25)
        {
          result = (*(*result + 16))(result, v7);
          LOWORD(v10) = 0;
          v11 = 0;
          v7 = *a2;
          v9 = v29;
          if (*a2)
          {
            continue;
          }
        }
      }

      break;
    }
  }

LABEL_41:
  *a1 = 0;
  *(a1 + 24) = 0;
  if (v31)
  {
    result = v30;
    v30 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  v14 = 0;
LABEL_15:
  if (v33 == 1 && (result = v32, v32 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
    if (v14)
    {
      return result;
    }
  }

  else if (v14)
  {
    return result;
  }

  v15 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v15)
  {
    v16 = *(*result + 16);

    return v16();
  }

  return result;
}

void sub_19D81C030(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CDMMediaCapability>(unsigned int *a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 24 * a1[3];
  v5 = *result;
  *result = 0;
  *v4 = v5;
  v6 = *(result + 8);
  *(result + 8) = 0;
  *(v4 + 8) = v6;
  *(v4 + 16) = *(result + 16);
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * a1[3] <= a3)
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

    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D81C28CLL);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 24 * *(result + 3));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(v2 + 2) = v5 / 0x18;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::CDMMediaCapability>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::CDMMediaCapability>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
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
      *(a3 + 8) = v7;
      *(a3 + 16) = *(v5 + 8);
      v8 = *(v5 + 1);
      *(v5 + 1) = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
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

      a3 += 24;
      v5 = (v5 + 24);
    }

    while (v5 != a2);
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::CDMMediaCapability>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[1];
      v3[1] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
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

      v3 += 3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::CDMMediaCapability>::destruct(*a1, (*a1 + 24 * v3));
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

uint64_t IPC::ArgumentCoder<std::optional<WebCore::VideoConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::VideoConfiguration> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 40))
    {
      return IPC::ArgumentCoder<WebCore::VideoConfiguration,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::AudioConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::AudioConfiguration> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::ArgumentCoder<std::optional<WebCore::AudioConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::AudioConfiguration> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 48))
    {
      IPC::ArgumentCoder<WebCore::AudioConfiguration,void>::encode(a1, a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      IPC::ArgumentCoder<std::optional<WebCore::ResourceResponseData>,void>::encode<IPC::Encoder,std::optional<WebCore::ResourceResponseData>>(v4, v5);
    }
  }

  else
  {
    v7 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::ArgumentCoder<std::optional<WebCore::ResourceResponseData>,void>::encode<IPC::Encoder,std::optional<WebCore::ResourceResponseData>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 296))
  {
    v5 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v5);
    if (*(a2 + 296))
    {
      IPC::ArgumentCoder<WebCore::ResourceResponseData,void>::encode(a1, a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      IPC::ArgumentCoder<std::optional<WebCore::ResourceResponseData>,void>::decode<IPC::Decoder>(v4);
    }
  }

  else
  {
    v6 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
  }
}

void IPC::ArgumentCoder<std::optional<WebCore::ResourceResponseData>,void>::decode<IPC::Decoder>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this;
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    v2 = this;
    goto LABEL_11;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_11:
    v8 = v2;
    IPC::Decoder::markInvalid(v2);
    v2 = v8;
    goto LABEL_12;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_12:
    IPC::Decoder::markInvalid(v2);
LABEL_13:
    *a2 = 0;
    a2[304] = 0;
    return;
  }

  if (!v5)
  {
    *a2 = 0;
    a2[296] = 0;
    a2[304] = 1;
    return;
  }

  IPC::Decoder::decode<WebCore::ResourceResponseData>(v9, this);
  if (v10 != 1)
  {
    goto LABEL_13;
  }

  WebCore::ResourceResponseData::ResourceResponseData(a2, v9);
  a2[296] = 1;
  a2[304] = 1;
  if (v10)
  {
    WebCore::ResourceResponseData::~ResourceResponseData(v9, v6);
  }
}

void sub_19D81C644(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a48 == 1)
  {
    WebCore::ResourceResponseData::~ResourceResponseData(&a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::NetworkLoadMetrics>,void>::encode<IPC::Encoder,std::optional<WebCore::NetworkLoadMetrics> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 128))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 128))
    {
      return IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::NetworkLoadMetrics>,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

WebCore::AdditionalNetworkLoadMetricsForWebInspector *IPC::ArgumentCoder<std::optional<WebCore::NetworkLoadMetrics>,void>::decode<IPC::Decoder>@<X0>(WebCore::AdditionalNetworkLoadMetricsForWebInspector *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    v11 = this;
    IPC::Decoder::markInvalid(this);
    v2 = v11;
    goto LABEL_12;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_12:
    v12 = v2;
    IPC::Decoder::markInvalid(v2);
    v2 = v12;
    goto LABEL_13;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_13:
    this = IPC::Decoder::markInvalid(v2);
    *a2 = 0;
    *(a2 + 136) = 0;
    return this;
  }

  if (v5)
  {
    this = IPC::Decoder::decode<WebCore::NetworkLoadMetrics>(v13, this);
    if (v19)
    {
      v7 = v13[3];
      *(a2 + 32) = v13[2];
      *(a2 + 48) = v7;
      *(a2 + 64) = v13[4];
      v8 = v13[1];
      *a2 = v13[0];
      *(a2 + 16) = v8;
      v9 = v15;
      *(a2 + 80) = v14;
      *(a2 + 88) = v9;
      *(a2 + 96) = v16;
      v10 = v18;
      *(a2 + 112) = v17;
      *(a2 + 120) = v10;
      v6 = 1;
      *(a2 + 128) = 1;
    }

    else
    {
      v6 = 0;
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 128) = 0;
    v6 = 1;
  }

  *(a2 + 136) = v6;
  return this;
}

uint64_t IPC::ArgumentCoder<WebCore::ResourceResponseSource,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
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
  if (v2 >= 0xA)
  {
LABEL_8:
    v2 = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

uint64_t IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      result = IPC::ArgumentCoder<WebCore::ArchiveResource,void>::encode(a1, v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(uint64_t a1, const void *a2, uint64_t a3)
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
      goto LABEL_5;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
LABEL_5:
  if (a3)
  {
    return IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(a1, a2, a3);
  }

  return a1;
}

uint64_t IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, const void *a2, uint64_t a3)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a3);
  if (a3)
  {

    return IPC::Encoder::encodeSpan<float const,18446744073709551615ul>(a1, a2, a3);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(uint64_t a1, const void *a2, uint64_t a3)
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
      goto LABEL_5;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
LABEL_5:
  if (a3)
  {
    return IPC::StreamConnectionEncoder::encodeSpan<float const,18446744073709551615ul>(a1, a2, a3);
  }

  return a1;
}

IPC::Decoder *IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 1);
  v3 = ((*(result + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *result;
  v5 = v3 - *result;
  v13 = v2 >= v5;
  v6 = v2 - v5;
  if (!v13 || v6 <= 7)
  {
    v15 = result;
    v16 = a2;
    IPC::Decoder::markInvalid(result);
    result = v15;
    a2 = v16;
LABEL_19:
    v17 = a2;
    result = IPC::Decoder::markInvalid(result);
    a2 = v17;
    goto LABEL_20;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
    goto LABEL_19;
  }

  v8 = *v3;
  if (*v3)
  {
    if (v8 >> 62)
    {
      goto LABEL_20;
    }

    v9 = (v3 + 11) & 0xFFFFFFFFFFFFFFF8;
    v10 = v9 - v4;
    v11 = 4 * v8;
    v13 = v2 >= v10;
    v12 = v2 - v10;
    v13 = v13 && v12 >= v11;
    if (!v13)
    {
      goto LABEL_19;
    }

    *(result + 2) = v11 + v9;
    if (!v9)
    {
LABEL_20:
      v14 = 0;
      *a2 = 0;
      goto LABEL_17;
    }

    *a2 = v9;
    *(a2 + 8) = v8;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v14 = 1;
LABEL_17:
  *(a2 + 16) = v14;
  return result;
}

void *WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D81CA88(_Unwind_Exception *exception_object, void *a2)
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

IPC::Encoder *IPC::ArgumentCoder<std::optional<WebCore::FilterEffectGeometry>,void>::encode<IPC::Encoder,std::optional<WebCore::FilterEffectGeometry> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 20))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 20))
    {
      return IPC::Encoder::operator<<<WebCore::FilterEffectGeometry const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Encoder::operator<<<WebCore::FilterEffectGeometry const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

IPC::Encoder *IPC::Encoder::operator<<<WebCore::FilterEffectGeometry const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  return a1;
}

uint64_t IPC::Decoder::decode<WebCore::FilterEffectGeometry>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v17 = *a2;
    v18 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19 && v18 != 0)
    {
      (*(*v19 + 16))(v19, v17);
    }
  }

  v8 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
  if ((v7 & 1) == 0)
  {
    v15 = *a2;
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      if (v14)
      {
        v21 = v7;
        (*(*v16 + 16))(v16, v15);
        v7 = v21;
      }
    }
  }

  if (!*a2)
  {
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, 0);
    }

    IPC::Decoder::decode<WTF::OptionSet<WebCore::FilterEffectGeometry::Flags>>(a2);
    if (!*a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((v6 & 1) == 0 || (v7 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = IPC::Decoder::decode<WTF::OptionSet<WebCore::FilterEffectGeometry::Flags>>(a2);
  if (*a2)
  {
    if (result >= 0x100u)
    {
      *a1 = v4;
      *(a1 + 8) = v8;
      *(a1 + 16) = result;
      *(a1 + 20) = 1;
      return result;
    }

    goto LABEL_12;
  }

LABEL_13:
  *a1 = 0;
  *(a1 + 20) = 0;
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[17 * v5];
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<WebKit::JavaScriptEvaluationResult,void>::encode(a1, (v6 + 1));
      v6 += 17;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<BOOL>(a2);
  if ((result & 0x100) == 0)
  {
    goto LABEL_8;
  }

  if ((result & 1) == 0)
  {
    LOBYTE(v6[0]) = 0;
    v7 = 0;
    result = std::__optional_move_base<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1, v6);
    a1[24] = 1;
    if (v7 != 1)
    {
      return result;
    }

    return WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v5);
  }

  result = IPC::Decoder::decode<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v6, a2);
  if (v7 != 1)
  {
LABEL_8:
    *a1 = 0;
    a1[24] = 0;
    return result;
  }

  result = std::optional<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, v6);
  a1[24] = 1;
  if (v7)
  {
    return WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v5);
  }

  return result;
}

void sub_19D81CEC4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (v21)
    {
      if (v6)
      {
        (*(*v21 + 16))(v21);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_49:
        *a2 = 0;
        *(a2 + 1) = 0;
        v22 = *(a2 + 3);
        if (v22 && v6)
        {
          (*(*v22 + 16))(v22, v5);
        }

        *a1 = 0;
        a1[16] = 0;
LABEL_51:
        v23 = *a2;
        v24 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          if (v24)
          {
            return (*(*result + 16))(result, v23);
          }
        }

        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_49;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_49;
  }

  v8 = *v4;
  v29 = 0;
  v30 = 0;
  if (v8 >> 1 >= 0xF0F)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>(&v26, a2);
      v14 = v28;
      if (v28)
      {
        if (HIDWORD(v30) == v30)
        {
          WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>(&v29, &v26);
        }

        else
        {
          v15 = (v29 + 136 * HIDWORD(v30));
          v16 = v26;
          v26 = 0;
          *v15 = v16;
          WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult((v15 + 1), v27);
          ++HIDWORD(v30);
        }
      }

      else
      {
        *a1 = 0;
        a1[16] = 0;
      }

      if (v28 == 1)
      {
        WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(v27, v9);
        v17 = v26;
        v26 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v9);
          }
        }
      }

      if ((v14 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        v18 = HIDWORD(v30);
        if (v30 <= HIDWORD(v30))
        {
          goto LABEL_43;
        }

        result = v29;
        if (HIDWORD(v30))
        {
          v25 = v29;
          if (HIDWORD(v30) >= 0x1E1E1E2)
          {
            __break(0xC471u);
            return result;
          }

          v20 = WTF::fastMalloc((136 * HIDWORD(v30)));
          result = v25;
          LODWORD(v30) = 136 * v18 / 0x88;
          v29 = v20;
          if (v20 != v25)
          {
            WTF::VectorMover<false,std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>::move(v25, (v25 + 136 * v18), v20);
            result = v25;
          }
        }

        if (result)
        {
          if (v29 == result)
          {
            v29 = 0;
            LODWORD(v30) = 0;
          }

          WTF::fastFree(result, v9);
        }

        goto LABEL_43;
      }
    }
  }

  else
  {
    if (v8)
    {
      LODWORD(v30) = 136 * v8 / 0x88u;
      v29 = WTF::fastMalloc((136 * v8));
      do
      {
        IPC::Decoder::decode<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>(&v26, a2);
        v10 = v28;
        if (v28)
        {
          if (HIDWORD(v30) == v30)
          {
            WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>(&v29, &v26);
          }

          else
          {
            v11 = (v29 + 136 * HIDWORD(v30));
            v12 = v26;
            v26 = 0;
            *v11 = v12;
            WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult((v11 + 1), v27);
            ++HIDWORD(v30);
          }
        }

        else
        {
          *a1 = 0;
          a1[16] = 0;
        }

        if (v28 == 1 && (WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(v27, v9), v13 = v26, v26 = 0, v13) && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v9);
          if ((v10 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if ((v10 & 1) == 0)
        {
          goto LABEL_44;
        }

        --v8;
      }

      while (v8);
    }

LABEL_43:
    std::optional<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, &v29);
  }

LABEL_44:
  result = WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v9);
  if ((a1[16] & 1) == 0)
  {
    goto LABEL_51;
  }

  return result;
}

void sub_19D81D280(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (*(v28 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v14);
  if (v15 == 1)
  {
    IPC::ArgumentCoder<WebKit::JavaScriptEvaluationResult,void>::decode(a2, v12);
    if (v13)
    {
      while ((v15 & 1) == 0)
      {
        __break(1u);
LABEL_19:
        if (v6)
        {
          v4 = (*(*v4 + 16))(v4, v5);
          if (v13)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      v7 = v14;
      v14 = 0;
      *a1 = v7;
      WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(a1 + 8, v12);
      *(a1 + 136) = 1;
      if (v13)
      {
        WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(v12, v5);
      }
    }

    else
    {
      v5 = *a2;
      v6 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v4 = *(a2 + 3);
      if (v4)
      {
        goto LABEL_19;
      }

LABEL_17:
      *a1 = 0;
      *(a1 + 136) = 0;
    }

    if (v15)
    {
      v8 = v14;
      v14 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v5);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 136) = 0;
  }

  if ((*(a1 + 136) & 1) == 0)
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v10)
      {
        (*(*v11 + 16))(v11, v9);
      }
    }
  }
}

void sub_19D81D450(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a26 == 1)
  {
    WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(&a10, a2);
  }

  if (*(v26 - 24) == 1)
  {
    v28 = *(v26 - 32);
    *(v26 - 32) = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D81D500(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 136 * *(a1 + 12));
  v5 = *v3;
  *v3 = 0;
  *v4 = v5;
  WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult((v4 + 1), v3 + 1);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 136 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x1E1E1E2)
    {
      __break(0xC471u);
      JUMPOUT(0x19D81D6F4);
    }

    v3 = *a1;
    v4 = (*a1 + 136 * *(a1 + 12));
    v5 = 136 * a2;
    v6 = WTF::fastMalloc((136 * a2));
    *(a1 + 8) = v5 / 0x88;
    *a1 = v6;
    WTF::VectorMover<false,std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = a3 + 8;
    do
    {
      v6 = *v4;
      *v4 = 0;
      *(v5 - 8) = v6;
      WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(v5, v4 + 1);
      WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult((v4 + 8), v7);
      result = *v4;
      *v4 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }
      }

      v4 = (v4 + 136);
      v5 += 136;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::RefPtr<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,void>::encode<IPC::Encoder,WebCore::Font>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v7 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
    v4 = *a2;
    IPC::ArgumentCoder<WebCore::FontInternalAttributes,void>::encode(v3, v4 + 240);
    return IPC::ArgumentCoder<WebCore::FontPlatformData,void>::encode(v3, v4 + 88);
  }

  else
  {
    v6 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v6);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 24 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::TextList,void>::encode(a1, v6);
      v6 += 24;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::TextList>(uint64_t a1, IPC::Decoder *a2)
{
  v5 = *(a2 + 2);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v7 <= v5 - v6)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      if (v7)
      {
        (*(*v22 + 16))(v22);
        v6 = *a2;
        v7 = *(a2 + 1);
LABEL_34:
        *a2 = 0;
        *(a2 + 1) = 0;
        v23 = *(a2 + 3);
        if (v23)
        {
          if (v7)
          {
            (*(*v23 + 16))(v23, v6);
            v6 = *a2;
            v7 = *(a2 + 1);
LABEL_37:
            *a2 = 0;
            *(a2 + 1) = 0;
            v24 = *(a2 + 3);
            if (v24 && v7)
            {
              (*(*v24 + 16))(v24, v6);
            }

            v9 = 0;
            goto LABEL_5;
          }
        }

        else
        {
          v7 = 0;
        }

        v6 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
    goto LABEL_34;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_34;
  }

  v8 = *v5;
  if (v8 >= 3)
  {
    goto LABEL_37;
  }

  v9 = v8 | 0x100;
LABEL_5:
  IPC::Decoder::decode<WTF::AtomString>(a2, &v32);
  v11 = *a2;
  if (!*a2)
  {
    goto LABEL_23;
  }

  if (v9 <= 0xFF || (v33 & 1) == 0)
  {
    goto LABEL_22;
  }

  v2 = v32;
  while (1)
  {
    result = IPC::Decoder::decode<float>(a2);
    v13 = *(a2 + 1);
    v14 = *(a2 + 2);
    v10 = *a2;
    if (v13 <= &v14[-*a2])
    {
      v31 = result;
      *a2 = 0;
      *(a2 + 1) = 0;
      v25 = *(a2 + 3);
      if (v25)
      {
        if (v13)
        {
          (*(*v25 + 16))(v25);
          v10 = *a2;
          v13 = *(a2 + 1);
          goto LABEL_44;
        }
      }

      else
      {
        v13 = 0;
      }

      v10 = 0;
    }

    else
    {
      *(a2 + 2) = v14 + 1;
      if (v14)
      {
        v15 = *v14;
        if (v15 < 2)
        {
          v16 = 1;
          goto LABEL_13;
        }

        v30 = *v14;
        v31 = result;
        goto LABEL_48;
      }

      v31 = result;
    }

LABEL_44:
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (!v26)
    {
      v13 = 0;
LABEL_46:
      v10 = 0;
      v30 = 0;
      goto LABEL_48;
    }

    if (!v13)
    {
      goto LABEL_46;
    }

    (*(*v26 + 16))(v26, v10);
    v30 = 0;
    v10 = *a2;
    v13 = *(a2 + 1);
LABEL_48:
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (!v27 || !v13)
    {
      break;
    }

    (*(*v27 + 16))(v27, v10);
    v16 = 0;
    v10 = *a2;
    result = v31;
    v15 = v30;
LABEL_13:
    v17 = v15 ? v16 : 0;
    if (!v10)
    {
      break;
    }

    if (v11 && (result & 0x100000000) != 0 && (v16 & 1) != 0)
    {
      *a1 = v9;
      *(a1 + 8) = v2;
      *(a1 + 16) = result;
      *(a1 + 20) = v17;
      *(a1 + 24) = 1;
      return result;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    if (v33)
    {
      v18 = v32;
      v32 = 0;
      if (v18)
      {
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v10);
        }
      }
    }

    v19 = *a2;
    v20 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (v21)
    {
      if (v20)
      {
        (*(*v21 + 16))(v21, v19);
      }
    }

    LOBYTE(v9) = 0;
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (v11 && v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v10);
  }

  v28 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v28)
  {
    v29 = *(*result + 16);

    return v29();
  }

  return result;
}

void sub_19D81DC04(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v3 && v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextList>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 24 * *(a1 + 12);
  *v4 = *result;
  v5 = *(result + 8);
  *(result + 8) = 0;
  *(v4 + 8) = v5;
  LOBYTE(v5) = *(result + 20);
  *(v4 + 16) = *(result + 16);
  *(v4 + 20) = v5;
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D81DE14);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorTypeOperations<WebCore::TextList>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::TextList>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
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
      LODWORD(v6) = *(v5 + 4);
      *(a3 + 20) = *(v5 + 20);
      *(a3 + 16) = v6;
      result = *(v5 + 1);
      *(v5 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 24;
      v5 = (v5 + 24);
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorDestructor<true,WebCore::TextList>::destruct((*result + 24 * this), (*result + 24 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0xAAAAAAB)
      {
        __break(0xC471u);
        return result;
      }

      v6 = (24 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x18;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorTypeOperations<WebCore::TextList>::move(v5, (v5 + 24 * v4), result);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 48 * v5;
    do
    {
      result = IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData> const&>(a1, v6);
      v6 += 48;
      v7 -= 48;
    }

    while (v7);
  }

  return result;
}

unint64_t IPC::VectorArgumentCoder<false,WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if (v5)
  {
    v6 = result;
    v13 = 0;
    v14 = 0;
    if (result >= 0x5555)
    {
      while (1)
      {
        IPC::Decoder::decode<WebCore::FormDataElement>(v10, a2);
        v9 = v12;
        if (v12)
        {
          if (HIDWORD(v14) == v14)
          {
            WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::FormDataElement>(&v13, v10);
          }

          else
          {
            mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1>::move_constructor((v13 + 48 * HIDWORD(v14)), v10);
            ++HIDWORD(v14);
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 16) = 0;
        }

        if (v12 == 1 && v11 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(v10, v7);
        }

        if ((v9 & 1) == 0)
        {
          break;
        }

        if (!--v6)
        {
          WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v13, HIDWORD(v14));
          WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, &v13);
          goto LABEL_16;
        }
      }
    }

    else if (result)
    {
      LODWORD(v14) = 48 * result / 0x30u;
      v13 = WTF::fastMalloc((48 * result));
      while (1)
      {
        IPC::Decoder::decode<WebCore::FormDataElement>(v10, a2);
        v8 = v12;
        if (v12)
        {
          if (HIDWORD(v14) == v14)
          {
            WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::FormDataElement>(&v13, v10);
          }

          else
          {
            mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1>::move_constructor((v13 + 48 * HIDWORD(v14)), v10);
            ++HIDWORD(v14);
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 16) = 0;
        }

        if (v12 == 1 && v11 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(v10, v7);
        }

        if ((v8 & 1) == 0)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, &v13);
LABEL_16:
      *(a1 + 16) = 1;
    }

    return WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v7);
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

void sub_19D81E1F4(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  if (v11 == 1 && v10 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(va, a2);
  }

  WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, a2);
  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::FormDataElement>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::FormDataElement,void>::decode(a1, a2);
  if ((a1[48] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }
}

void sub_19D81E278(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 48) == 1)
  {
    if (*(v2 + 40) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(v2, a2);
    }

    *(v2 + 40) = -1;
  }

  _Unwind_Resume(exception_object);
}

_BYTE *WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::FormDataElement>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1>::move_constructor((*a1 + 48 * *(a1 + 12)), v3);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned __int8 *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * *(a1 + 3) <= a3)
  {
    v10 = *(a1 + 2);
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

    WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 2);
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

    WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned __int8 *WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned __int8 *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19D81E488);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 48 * *(result + 3));
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(v2 + 2) = v5 / 0x30;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::FormDataElement>::move(v3, v4, v6);
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

unsigned __int8 *WTF::VectorMover<false,WebCore::FormDataElement>::move(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1>::move_constructor(a3, v5);
      if (v5[40] != 255)
      {
        result = mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(v5, v6);
      }

      v5[40] = -1;
      a3 += 48;
      v5 += 48;
    }

    while (v5 != a2);
  }

  return result;
}

void *WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D81E52C(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t this)
{
  if (*(result + 8) > this)
  {
    v3 = result;
    v4 = *(result + 12);
    v5 = *result;
    v6 = 3 * this;
    if (v4 > this)
    {
      v7 = &v5[48 * this];
      v8 = 48 * v4 - 48 * this;
      do
      {
        if (*(v7 + 40) != 255)
        {
          result = mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(v7, this);
        }

        *(v7 + 40) = -1;
        v7 += 48;
        v8 -= 48;
      }

      while (v8);
      *(v3 + 12) = this;
      v5 = *v3;
      LODWORD(v4) = this;
    }

    if (this)
    {
      if (this >= 0x5555556)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((16 * v6));
      *(v3 + 8) = 16 * v6 / 0x30u;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::FormDataElement>::move(v5, &v5[48 * v4], result);
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

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>,void>::encode<IPC::Encoder,mpark::variant<WebCore::FloatPoint,WebCore::FloatSize> const&>(mpark *this, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>,void>::encode<IPC::Encoder,mpark::variant<WebCore::FloatPoint,WebCore::FloatSize> const&,0ul>(this, a2, a3);
  }

  else
  {
    if (*(a2 + 8))
    {
      mpark::throw_bad_variant_access(this);
    }

    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(this, *a2);
    v5 = *(a2 + 4);

    return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(this, v5);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>,void>::encode<IPC::Encoder,mpark::variant<WebCore::FloatPoint,WebCore::FloatSize> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 8) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = result;
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(result, *a2);
    v5 = *(a2 + 4);

    return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v4, v5);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::ScrollRequestType,mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>,WebCore::ScrollType,WebCore::ScrollClamping>,void>::encode<IPC::Encoder,std::tuple<WebCore::ScrollRequestType,mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>,WebCore::ScrollType,WebCore::ScrollClamping> const&,0ul,1ul,2ul,3ul>(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = a2[12];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>,void>::encode<IPC::Encoder,mpark::variant<WebCore::FloatPoint,WebCore::FloatSize> const&>(a1, (a2 + 4), v5);
  v6 = a2[16];
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  v7 = a2[17];
  return IPC::Encoder::operator<<<BOOL>(a1, &v7);
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::SnapOffset<float>,void>::encode(a1, v6);
      v6 += 40;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

unint64_t IPC::Decoder::decode<WebCore::SnapOffset<float>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = a2[1];
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 3)
  {
    v8 = (v4 + 1);
    a2[2] = (v4 + 1);
    if (v4)
    {
      v9 = *v4 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    v36 = a2[3];
    if (v36)
    {
      if (v6)
      {
        (*(*v36 + 16))(v36);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_59;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
  }

LABEL_59:
  *a2 = 0;
  a2[1] = 0;
  v37 = a2[3];
  if (!v37)
  {
    LODWORD(v45) = 0;
    v46 = 0;
    v6 = 0;
LABEL_61:
    v5 = 0;
    goto LABEL_62;
  }

  if (!v6)
  {
    LODWORD(v45) = 0;
    v46 = 0;
    goto LABEL_61;
  }

  (*(*v37 + 16))(v37, v5);
  v9 = 0;
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
LABEL_8:
  if (v6 <= &v8[-v5])
  {
    v45 = v9;
    v35 = a2[3];
    *a2 = 0;
    a2[1] = 0;
    if (v35)
    {
      if (v6)
      {
        (*(*v35 + 16))(v35);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_55;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_55:
    v46 = v45;
    goto LABEL_62;
  }

  v10 = v8 + 1;
  a2[2] = (v8 + 1);
  if (v8)
  {
    v11 = *v8;
    if (v11 < 2)
    {
      v12 = 0;
      v13 = v11 != 0;
      v46 = v9;
      goto LABEL_12;
    }

    LODWORD(v45) = v9;
    v46 = v9;
    goto LABEL_65;
  }

  LODWORD(v45) = v9;
  v46 = v9;
LABEL_62:
  *a2 = 0;
  a2[1] = 0;
  v38 = a2[3];
  if (v38)
  {
    if (v6)
    {
      (*(*v38 + 16))(v38, v5);
      v5 = *a2;
      v6 = a2[1];
      goto LABEL_65;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_65:
  *a2 = 0;
  a2[1] = 0;
  v39 = a2[3];
  if (!v39)
  {
    v13 = 0;
    v6 = 0;
LABEL_67:
    v5 = 0;
    v12 = 1;
    goto LABEL_68;
  }

  if (!v6)
  {
    v13 = 0;
    goto LABEL_67;
  }

  (*(*v39 + 16))(v39, v5);
  v13 = 0;
  v42 = a2[3];
  v44 = *a2;
  v43 = a2[1];
  v12 = 1;
  *a2 = 0;
  a2[1] = 0;
  if (!v42 || !v43)
  {
    v6 = 0;
LABEL_75:
    *a2 = 0;
    a2[1] = 0;
    if (v42)
    {
      if (v6)
      {
        (*(*v42 + 16))(v42);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_68;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_68;
  }

  (*(*v42 + 16))(v42, v44);
  v13 = 0;
  v5 = *a2;
  v6 = a2[1];
  v10 = a2[2];
  LODWORD(v9) = v45;
LABEL_12:
  LODWORD(v45) = v9;
  if (v6 <= &v10[-v5])
  {
    v42 = a2[3];
    goto LABEL_75;
  }

  a2[2] = (v10 + 1);
  if (v10)
  {
    v14 = *v10;
    if (v14 < 2)
    {
      v15 = 1;
      goto LABEL_16;
    }

    goto LABEL_71;
  }

LABEL_68:
  *a2 = 0;
  a2[1] = 0;
  v40 = a2[3];
  if (!v40)
  {
    v6 = 0;
LABEL_70:
    v5 = 0;
    v14 = 0;
    goto LABEL_71;
  }

  if (!v6)
  {
    goto LABEL_70;
  }

  (*(*v40 + 16))(v40, v5);
  v14 = 0;
  v5 = *a2;
  v6 = a2[1];
LABEL_71:
  *a2 = 0;
  a2[1] = 0;
  v41 = a2[3];
  if (v41 && v6)
  {
    (*(*v41 + 16))(v41, v5);
  }

  v15 = 0;
LABEL_16:
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a2);
  v19 = v18;
  v20 = a2[1];
  v21 = a2[2];
  v22 = *a2;
  if (v20 <= &v21[-*a2])
  {
    *a2 = 0;
    a2[1] = 0;
    v32 = a2[3];
    if (v32)
    {
      if (v20)
      {
        (*(*v32 + 16))(v32);
        v20 = a2[1];
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_46:
    *a2 = 0;
    a2[1] = 0;
    v33 = a2[3];
    if (v33)
    {
      if (v20)
      {
        (*(*v33 + 16))(v33);
        v23 = 0;
        v22 = *a2;
        v20 = a2[1];
        goto LABEL_49;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = 0;
    v23 = 0;
    goto LABEL_49;
  }

  a2[2] = (v21 + 1);
  if (!v21)
  {
    goto LABEL_46;
  }

  v23 = *v21;
  if (v23 < 2)
  {
    v24 = 1;
    goto LABEL_23;
  }

LABEL_49:
  *a2 = 0;
  a2[1] = 0;
  v34 = a2[3];
  if (v34 && v20)
  {
    (*(*v34 + 16))(v34, v22);
  }

  v24 = 0;
LABEL_23:
  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  result = IPC::Decoder::decode<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v47);
  if (*a2)
  {
    if (v46 & 0x100000000) != 0 && !v12 && (v15 & 1) != 0 && (v19 & 1) != 0 && (v24 & 1) != 0 && (v49)
    {
      v28 = v47;
      *a1 = v45;
      *(a1 + 4) = v13;
      *(a1 + 5) = v16;
      *(a1 + 8) = v17;
      *(a1 + 16) = v25;
      *(a1 + 24) = v28;
      *(a1 + 32) = v48;
      *(a1 + 40) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 40) = 0;
  if (v49)
  {
    v29 = v47;
    if (v47)
    {
      v47 = 0;
      LODWORD(v48) = 0;
      WTF::fastFree(v29, v27);
    }
  }

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

WTF *WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SnapOffset<float>>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 40 * a1[3];
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4 + 24, (v3 + 24));
  ++a1[3];
  return result;
}

void sub_19D81EE88(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * a1[3] <= a3)
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

    WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF *WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = (*result + 40 * *(result + 3));
      v5 = 40 * a2;
      v6 = WTF::fastMalloc((40 * a2));
      *(v2 + 2) = v5 / 0x28;
      *v2 = v6;
      result = WTF::VectorMover<false,WebCore::SnapOffset<float>>::move(v3, v4, v6);
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
  }

  return result;
}

WTF *WTF::VectorMover<false,WebCore::SnapOffset<float>>::move(WTF *result, WTF *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 24);
    v5 = (result + 24);
    do
    {
      v6 = *(v5 - 6);
      *(v4 - 8) = *(v5 - 8);
      *(v4 - 3) = v6;
      *v4 = 0;
      v4[1] = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4, v5);
      result = *v5;
      if (*v5)
      {
        *v5 = 0;
        v5[2] = 0;
        result = WTF::fastFree(result, v7);
      }

      v4 += 5;
      v8 = (v5 + 4);
      v5 += 10;
    }

    while (v8 != a2);
  }

  return result;
}

void sub_19D81F0C0(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 40 * v3;
    v6 = v4 + 24;
    do
    {
      v7 = *v6;
      if (*v6)
      {
        *v6 = 0;
        *(v6 + 2) = 0;
        WTF::fastFree(v7, a2);
      }

      v6 += 40;
      v5 -= 40;
    }

    while (v5);
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

unint64_t IPC::VectorArgumentCoder<true,unsigned long long,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<std::span<unsigned long long const,18446744073709551615ul>>(a1, v5);
  if (v6)
  {
    result = WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned long long const,18446744073709551615ul>(a2, v5[0], v5[1]);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  a2[16] = v4;
  return result;
}

unint64_t IPC::Decoder::decode<std::span<unsigned long long const,18446744073709551615ul>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::span<unsigned long long const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::span<unsigned long long const,18446744073709551615ul>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = result;
  if (result)
  {
    result = IPC::Decoder::decodeSpan<unsigned long long const>(a1, result);
    if (result && v8 == v6)
    {
      *a2 = result;
      *(a2 + 8) = v6;
      goto LABEL_4;
    }

LABEL_9:
    v7 = 0;
    *a2 = 0;
    goto LABEL_5;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
LABEL_4:
  v7 = 1;
LABEL_5:
  *(a2 + 16) = v7;
  return result;
}

unint64_t IPC::Decoder::decodeSpan<unsigned long long const>(uint64_t *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    return 0;
  }

  result = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *a1;
  v4 = a1[1];
  v6 = result - *a1;
  v7 = 8 * a2;
  v9 = v4 >= v6;
  v8 = v4 - v6;
  v9 = v9 && v8 >= v7;
  if (v9)
  {
    a1[2] = result + v7;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      if (!v4)
      {
        return 0;
      }

      (*(*result + 16))(result, v5);
      return 0;
    }
  }

  return result;
}

uint64_t WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned long long const,18446744073709551615ul>(uint64_t result, uint64_t *a2, unint64_t a3)
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

  if (!(a3 >> 29))
  {
    v6 = 8 * a3;
    v7 = WTF::fastMalloc((8 * a3));
    *(v4 + 8) = v3;
    *v4 = v7;
    do
    {
      v8 = *a2++;
      *v7++ = v8;
      v6 -= 8;
    }

    while (v6);
    return v4;
  }

  __break(0xC471u);
  return result;
}

void *WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D81F3CC(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::ArgumentCoder<WebCore::MediaSelectionOption::MediaType,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  v6 = v4 < 5;
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

mpark *IPC::ArgumentCoder<std::optional<WebCore::Color>,void>::encode<IPC::Encoder,std::optional<WebCore::Color> const&>(IPC::Encoder *a1, WebCore::Color *a2)
{
  if (*(a2 + 8))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::Color>,void>::decode<IPC::Decoder>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<WebCore::Color>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 2);
  if (*(result + 1) <= &v3[-*result])
  {
    v8 = result;
    IPC::Decoder::markInvalid(result);
    result = v8;
    goto LABEL_14;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
LABEL_14:
    v9 = result;
    IPC::Decoder::markInvalid(result);
    result = v9;
    goto LABEL_15;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_15:
    result = IPC::Decoder::markInvalid(result);
    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  if (v4)
  {
    IPC::Decoder::decode<WebCore::Color>(result, &v10);
    if (v11)
    {
      *a2 = 0;
      if (&v10 != a2)
      {
        v6 = v10;
        v10 = 0;
        *a2 = v6;
      }

      v7 = 1;
      *(a2 + 8) = 1;
    }

    else
    {
      v7 = 0;
      *a2 = 0;
    }

    *(a2 + 16) = v7;
    return std::optional<WebCore::Color>::~optional(&v10, v5);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 16))
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule> const&,0ul>(mpark *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }

    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(this, a2);

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(this, (a2 + 8));
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule> const&,0ul,1ul>(this, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule> const&,0ul,1ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 16) != 2)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(result, a2);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 1);
  v6 = *(result + 2);
  if (v5 <= &v6[-*result])
  {
    *result = 0;
    *(result + 1) = 0;
    v18 = *(result + 3);
    if (!v18)
    {
      v5 = 0;
      goto LABEL_37;
    }

    if (!v5)
    {
      goto LABEL_37;
    }

    (*(*v18 + 16))(v18);
    goto LABEL_36;
  }

  *(result + 2) = v6 + 1;
  if (!v6)
  {
LABEL_37:
    *v3 = 0;
    *(v3 + 1) = 0;
    result = *(v3 + 3);
    if (result && v5)
    {
      result = (*(*result + 16))(result);
    }

    goto LABEL_4;
  }

  v7 = *v6;
  if (v7 < 3)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        IPC::Decoder::decode<WTF::AtomString>(result, &v21);
        result = IPC::Decoder::decode<WTF::String>(v3, &v19);
        v10 = *v3;
        if (!*v3)
        {
          if (v20)
          {
            result = v19;
            v19 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v9);
              }
            }
          }

          v12 = 0;
LABEL_11:
          if (v22 == 1)
          {
            result = v21;
            v21 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v9);
              }
            }
          }

          if (v10)
          {
            *a2 = v12;
            *(a2 + 8) = v2;
            v8 = 1;
            *(a2 + 16) = 1;
            goto LABEL_24;
          }

          goto LABEL_36;
        }

        v11 = v22;
        if (v22)
        {
          v12 = v21;
          v21 = 0;
          v11 = v20;
          if (v20)
          {
            v2 = v19;
            goto LABEL_11;
          }
        }
      }

      else
      {
        result = IPC::Decoder::decode<WTF::AtomString>(result, &v21);
        v11 = v22;
        if (!*v3)
        {
          if (v22)
          {
            v17 = v21;
            v21 = 0;
            if (v17)
            {
              if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v17, v9);
              }
            }
          }

LABEL_36:
          v5 = *(v3 + 1);
          goto LABEL_37;
        }

        if (v22)
        {
          *a2 = v21;
          *(a2 + 16) = 2;
          v8 = 1;
          goto LABEL_24;
        }
      }
    }

    else
    {
      result = IPC::Decoder::decode<WTF::AtomString>(result, &v21);
      v11 = v22;
      if (!*v3)
      {
        goto LABEL_26;
      }

      if (v22)
      {
        *a2 = v21;
        v13 = (a2 + 16);
        v8 = 1;
LABEL_20:
        *v13 = 0;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    if (v11)
    {
      v14 = v21;
      v21 = 0;
      if (v14)
      {
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v9);
        }
      }
    }

    v15 = *v3;
    v16 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    result = *(v3 + 3);
    if (result && v16)
    {
      result = (*(*result + 16))(result, v15);
    }

    v8 = 0;
    v13 = a2;
    goto LABEL_20;
  }

LABEL_4:
  v8 = 0;
  *a2 = 0;
LABEL_24:
  *(a2 + 24) = v8;
  return result;
}

void sub_19D81F9D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::TextManipulationControllerManipulationFailure,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextManipulationControllerManipulationFailure,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::TextManipulationControllerManipulationFailure,void>::encode(a1, v6);
      v6 += 32;
      v7 -= 32;
    }

    while (v7);
  }

  return result;
}

WTF *IPC::VectorArgumentCoder<false,WebCore::TextManipulationControllerManipulationFailure,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32)
    {
      if (v4)
      {
        (*(*v32 + 16))(v32);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_40;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_40:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
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
  v37 = 0;
  v38 = 0;
  if (v11 >= 0x8000)
  {
    do
    {
      result = IPC::Decoder::decode<WebCore::TextManipulationControllerManipulationFailure>(&v34, a1);
      if ((v36 & 1) == 0)
      {
        goto LABEL_23;
      }

      v21 = HIDWORD(v38);
      if (HIDWORD(v38) == v38)
      {
        result = WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v37, HIDWORD(v38) + 1, &v34);
        v21 = HIDWORD(v38);
        v23 = v37;
        v24 = (v37 + 32 * HIDWORD(v38));
        v25 = *(result + 1);
        *v24 = *result;
      }

      else
      {
        v23 = v37;
        v24 = (v37 + 32 * HIDWORD(v38));
        v25 = v35;
        *v24 = v34;
      }

      v24[1] = v25;
      v26 = (v21 + 1);
      HIDWORD(v38) = v26;
      --v11;
    }

    while (v11);
    if (v38 > v26)
    {
      if (!v26)
      {
        goto LABEL_35;
      }

      v33 = v23;
      if (v26 >> 27)
      {
        __break(0xC471u);
        return result;
      }

      v27 = v26;
      v28 = 32 * v26;
      v15 = WTF::fastMalloc((32 * v26));
      LODWORD(v38) = v27;
      v37 = v15;
      v23 = v33;
      if (v15 == v33)
      {
        goto LABEL_35;
      }

      v29 = 0;
      do
      {
        v30 = (v15 + v29);
        v31 = *(v33 + v29 + 16);
        *v30 = *(v33 + v29);
        v30[1] = v31;
        v29 += 32;
      }

      while (v28 != v29);
      if (!v33)
      {
        goto LABEL_17;
      }

      v23 = v33;
      if (v15 == v33)
      {
LABEL_35:
        v37 = 0;
        LODWORD(v38) = 0;
      }

      WTF::fastFree(v23, v6);
      v15 = v37;
      goto LABEL_17;
    }

    v15 = v23;
  }

  else
  {
    if (v11)
    {
      LODWORD(v38) = v11;
      v37 = WTF::fastMalloc((32 * v11));
      while (1)
      {
        IPC::Decoder::decode<WebCore::TextManipulationControllerManipulationFailure>(&v34, a1);
        if ((v36 & 1) == 0)
        {
          break;
        }

        v12 = HIDWORD(v38);
        if (HIDWORD(v38) == v38)
        {
          v13 = WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v37, HIDWORD(v38) + 1, &v34);
          v14 = HIDWORD(v38);
          v15 = v37;
          v16 = (v37 + 32 * HIDWORD(v38));
          v17 = v13[1];
          *v16 = *v13;
          v16[1] = v17;
          v12 = v14;
        }

        else
        {
          v15 = v37;
          v18 = (v37 + 32 * HIDWORD(v38));
          v19 = v35;
          *v18 = v34;
          v18[1] = v19;
        }

        HIDWORD(v38) = v12 + 1;
        if (!--v11)
        {
          goto LABEL_17;
        }
      }

LABEL_23:
      *a2 = 0;
      *(a2 + 16) = 0;
      goto LABEL_24;
    }

    v15 = 0;
  }

LABEL_17:
  v37 = 0;
  *a2 = v15;
  v20 = v38;
  HIDWORD(v38) = 0;
  *(a2 + 8) = v20;
  *(a2 + 16) = 1;
LABEL_24:
  result = v37;
  if (v37)
  {
    v37 = 0;
    LODWORD(v38) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

void sub_19D81FD30(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16)
{
  if (a15)
  {
    WTF::fastFree(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WebCore::TextManipulationControllerManipulationFailure>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = v5;
  result = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a2);
  v9 = v8;
  v10 = *(a2 + 1);
  v11 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *a2;
  v13 = v11 - *a2;
  v14 = v10 >= v13;
  v15 = v10 - v13;
  if (v14 && v15 > 7)
  {
    v17 = (v11 + 1);
    *(a2 + 2) = v11 + 1;
    if (!v11)
    {
      v33 = result;
      v36 = v9;
      goto LABEL_22;
    }

    v18 = *v11;
    v19 = 1;
    v20 = v12;
    goto LABEL_8;
  }

  while (1)
  {
    v33 = result;
    v36 = v9;
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (!v23)
    {
      v10 = 0;
LABEL_21:
      v12 = 0;
      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_21;
    }

    (*(*v23 + 16))(v23);
    v12 = *a2;
    v10 = *(a2 + 1);
LABEL_22:
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    if (v24)
    {
      if (v10)
      {
        (*(*v24 + 16))(v24, v12);
        v20 = *a2;
        v10 = *(a2 + 1);
        v12 = *a2;
        goto LABEL_25;
      }

      v20 = 0;
    }

    else
    {
      v20 = 0;
      v10 = 0;
    }

    v12 = 0;
LABEL_25:
    v19 = 0;
    v18 = 0;
    v17 = *(a2 + 2);
    result = v33;
    v9 = v36;
LABEL_8:
    if (v10 <= &v17[-v12])
    {
      v31 = v19;
      v29 = v18;
      v34 = result;
      v37 = v9;
      *a2 = 0;
      *(a2 + 1) = 0;
      v25 = *(a2 + 3);
      if (v25)
      {
        if (v10)
        {
          (*(*v25 + 16))(v25);
          v12 = *a2;
          v10 = *(a2 + 1);
LABEL_29:
          *a2 = 0;
          *(a2 + 1) = 0;
          v26 = *(a2 + 3);
          if (v26)
          {
            if (v10)
            {
              (*(*v26 + 16))(v26, v12);
              v12 = *a2;
              v10 = *(a2 + 1);
              goto LABEL_32;
            }
          }

          else
          {
            v10 = 0;
          }

          v12 = 0;
LABEL_32:
          result = v34;
          v9 = v37;
          v18 = v29;
          v19 = v31;
          goto LABEL_33;
        }
      }

      else
      {
        v10 = 0;
      }

      v12 = 0;
      goto LABEL_29;
    }

    *(a2 + 2) = v17 + 1;
    if (!v17)
    {
      v31 = v19;
      v29 = v18;
      v34 = result;
      v37 = v9;
      goto LABEL_29;
    }

    v21 = *v17;
    if (v21 < 5)
    {
      v22 = v21 | 0x100;
      if (!v12)
      {
        break;
      }

      goto LABEL_12;
    }

LABEL_33:
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (!v27)
    {
      v10 = 0;
LABEL_35:
      v20 = 0;
      goto LABEL_36;
    }

    v32 = v19;
    v30 = v18;
    v35 = result;
    v38 = v9;
    if (!v10)
    {
      goto LABEL_35;
    }

    (*(*v27 + 16))(v27, v12);
    v22 = 0;
    v20 = *a2;
    result = v35;
    v9 = v38;
    v18 = v30;
    v19 = v32;
    if (!*a2)
    {
      break;
    }

LABEL_12:
    if ((v6 & 1) != 0 && (v9 & 1) != 0 && (v19 & 1) != 0 && v22 > 0xFF)
    {
      *a1 = v4;
      *(a1 + 8) = result;
      *(a1 + 16) = v18;
      *(a1 + 24) = v22;
      *(a1 + 32) = 1;
      return result;
    }

    __break(1u);
  }

  v10 = *(a2 + 1);
  v27 = *(a2 + 3);
LABEL_36:
  *a1 = 0;
  *(a1 + 32) = 0;
  *a2 = 0;
  *(a2 + 1) = 0;
  if (v27 && v10)
  {
    v28 = *(*v27 + 16);

    return v28(v27, v20);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WebCore::ContentSecurityPolicyResponseHeaders,WTF::MarkableTraits<WebCore::ContentSecurityPolicyResponseHeaders>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ContentSecurityPolicyResponseHeaders,WTF::MarkableTraits<WebCore::ContentSecurityPolicyResponseHeaders>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
  if ((v4 & 1) == 0)
  {
    if (*(a2 + 20) == 1)
    {
      result = 157;
      __break(0xC471u);
    }

    else
    {

      return IPC::Encoder::operator<<<WebCore::ContentSecurityPolicyResponseHeaders const&>(a1, a2);
    }
  }

  return result;
}

uint64_t std::optional<WTF::Markable<WebCore::ContentSecurityPolicyResponseHeaders,WTF::MarkableTraits<WebCore::ContentSecurityPolicyResponseHeaders>>>::optional[abi:sn200100]<WTF::Markable<WebCore::ContentSecurityPolicyResponseHeaders,WTF::MarkableTraits<WebCore::ContentSecurityPolicyResponseHeaders>>,0>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v4 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v4;
  *(a1 + 24) = 1;
  return a1;
}

void sub_19D820148(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::ApplePayPaymentOrderDetails,void>::encode(a1, v6);
      v6 += 4;
      v7 -= 32;
    }

    while (v7);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ImageResource>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v19);
  IPC::Decoder::decode<WTF::String>(a2, &v17);
  IPC::Decoder::decode<WTF::String>(a2, &v15);
  result = IPC::Decoder::decode<WTF::String>(a2, &v13);
  v6 = *a2;
  if (*a2)
  {
    if (v20)
    {
      v7 = v19;
      v19 = 0;
      if (v18)
      {
        v8 = v17;
        v17 = 0;
        if (v16)
        {
          v9 = v15;
          v15 = 0;
          if (v14)
          {
            v10 = v13;
            *a1 = v7;
            *(a1 + 8) = v8;
            *(a1 + 16) = v9;
            *(a1 + 24) = v10;
            *(a1 + 32) = 1;
            goto LABEL_7;
          }
        }
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 32) = 0;
  if (v14)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_7:
  if (v16 == 1)
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

  if (v18 == 1)
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

  if (v20 == 1 && (result = v19, v19 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
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

void sub_19D82039C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, char a16)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ImageResource>(unsigned int *a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = a1[3];
  v5 = v4 + 1;
  v6 = (*a1 + 32 * v4);
  v7 = *result;
  *result = 0;
  *v6 = v7;
  v8 = result[1];
  result[1] = 0;
  v6[1] = v8;
  v9 = result[2];
  result[2] = 0;
  v6[2] = v9;
  v10 = result[3];
  result[3] = 0;
  v6[3] = v10;
  a1[3] = v5;
  return result;
}

unint64_t WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * a1[3] <= a3)
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

    WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
      JUMPOUT(0x19D82060CLL);
    }

    v3 = result;
    v4 = *result;
    v5 = (*result + 32 * *(result + 3));
    v6 = WTF::fastMalloc((32 * a2));
    *(v3 + 2) = v2;
    *v3 = v6;
    result = WTF::VectorMover<false,WebCore::ImageResource>::move(v4, v5, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::ImageResource>::move(WTF::StringImpl *result, WTF::StringImpl *a2, WTF::StringImpl **a3)
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
      v9 = v5[3];
      v5[3] = 0;
      a3[3] = v9;
      v10 = v5[3];
      v5[3] = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      v11 = v5[2];
      v5[2] = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }

      v12 = v5[1];
      v5[1] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
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

      a3 += 4;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&,0ul>(result, a2, a3);
  }

  else if (*(a2 + 16))
  {
    mpark::throw_bad_variant_access(result);
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&,0ul>(mpark *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }

    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(this, *a2);

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(this, (a2 + 8));
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&,0ul,1ul>(this, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&,0ul,1ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 16) != 2)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::VectorArgumentCoder<false,WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(result, a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 24 * v5;
    do
    {
      IPC::VectorArgumentCoder<false,WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v6);
      result = IPC::Encoder::operator<<<BOOL>(a1, (v6 + 16));
      v6 += 24;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::SpeechRecognitionUpdateType,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  v6 = v4 < 0xB;
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

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = result;
  v5 = *(result + 1);
  v6 = *(result + 2);
  v7 = *result;
  if (v5 <= v6 - *result)
  {
    *result = 0;
    *(result + 1) = 0;
    v39 = *(result + 3);
    if (v39)
    {
      if (v5)
      {
        (*(*v39 + 16))(v39);
        v5 = *(v3 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_73;
  }

  v8 = (v6 + 1);
  *(result + 2) = v6 + 1;
  if (!v6)
  {
LABEL_73:
    *v3 = 0;
    *(v3 + 1) = 0;
    result = *(v3 + 3);
    if (!result || !v5)
    {
      goto LABEL_4;
    }

    v26 = *(*result + 16);
    goto LABEL_40;
  }

  v9 = *v6;
  if (v9 >= 3)
  {
LABEL_4:
    *a2 = 0;
    *(a2 + 24) = 0;
    return result;
  }

  if (!*v6)
  {
    if (v7)
    {
      *(a2 + 16) = 0;
      v14 = 1;
      goto LABEL_17;
    }

    goto LABEL_38;
  }

  if (v9 == 1)
  {
    if (v5 <= v8 - v7)
    {
      v44 = 0;
      v45 = 0;
      *result = 0;
      *(result + 1) = 0;
      v46 = *(result + 3);
      if (v46)
      {
        (*(*v46 + 16))(v46);
        v45 = *v3;
        v44 = *(v3 + 1);
      }
    }

    else
    {
      *(result + 2) = v6 + 2;
      if (v6 != -1)
      {
        v10 = *v8;
        if (v10 < 8)
        {
          v11 = v10 | 0x100;
LABEL_11:
          result = IPC::Decoder::decode<WTF::String>(v3, v50);
          if (!*v3)
          {
            if (v50[1])
            {
              v27 = v50[0];
              v50[0] = 0;
              if (v27)
              {
                if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v27, v12);
                }
              }
            }

            v28 = *v3;
            v29 = *(v3 + 1);
            *v3 = 0;
            *(v3 + 1) = 0;
            result = *(v3 + 3);
            if (result && v29)
            {
              result = (*(*result + 16))(result, v28);
            }

            v14 = 0;
            *a2 = 0;
            goto LABEL_17;
          }

          if (v11 > 0xFF && (v50[1] & 1) != 0)
          {
            v13 = v50[0];
            *a2 = v11;
            *(a2 + 8) = v13;
            v14 = 1;
            *(a2 + 16) = 1;
LABEL_17:
            *(a2 + 24) = v14;
            return result;
          }

          __break(1u);
LABEL_38:
          *v3 = 0;
          *(v3 + 1) = 0;
          result = *(v3 + 3);
          if (!result)
          {
            goto LABEL_4;
          }

          v26 = *(*result + 16);
LABEL_40:
          result = v26();
          goto LABEL_4;
        }

LABEL_85:
        *v3 = 0;
        *(v3 + 1) = 0;
        v48 = *(v3 + 3);
        if (v48 && v5)
        {
          (*(*v48 + 16))(v48, v7);
        }

        v11 = 0;
        goto LABEL_11;
      }

      v44 = v5;
      v45 = v7;
    }

    *v3 = 0;
    *(v3 + 1) = 0;
    v47 = *(v3 + 3);
    if (v47 && v44)
    {
      (*(*v47 + 16))(v47, v45, v44);
      v7 = *v3;
      v5 = *(v3 + 1);
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    goto LABEL_85;
  }

  v15 = v6 & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v5 < v16 - v7 || v5 - (v16 - v7) <= 7)
  {
    v40 = 0;
    v41 = 0;
    *result = 0;
    *(result + 1) = 0;
    v42 = *(result + 3);
    if (v42)
    {
      (*(*v42 + 16))(v42);
      v41 = *v3;
      v40 = *(v3 + 1);
    }

    goto LABEL_78;
  }

  *(result + 2) = v15 + 16;
  if (!v16)
  {
    v40 = v5;
    v41 = v7;
LABEL_78:
    *v3 = 0;
    *(v3 + 1) = 0;
    v43 = *(v3 + 3);
    if (v43 && v40)
    {
      (*(*v43 + 16))(v43, v41, v40);
    }

    goto LABEL_65;
  }

  v18 = *v16;
  v53[0] = 0;
  v53[1] = 0;
  if (v18 >= 0xAAAA)
  {
    while (1)
    {
      result = IPC::Decoder::decode<WebCore::SpeechRecognitionResultData>(v50, v3);
      v30 = v52;
      if (v52)
      {
        if (HIDWORD(v53[1]) == LODWORD(v53[1]))
        {
          result = WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SpeechRecognitionResultData>(v53, v50);
        }

        else
        {
          v31 = v53[0] + 24 * HIDWORD(v53[1]);
          *v31 = 0;
          *(v31 + 1) = 0;
          v32 = v50[0];
          v50[0] = 0;
          *v31 = v32;
          LODWORD(v32) = v50[1];
          LODWORD(v50[1]) = 0;
          *(v31 + 2) = v32;
          LODWORD(v32) = HIDWORD(v50[1]);
          HIDWORD(v50[1]) = 0;
          *(v31 + 3) = v32;
          v31[16] = v51;
          ++HIDWORD(v53[1]);
        }
      }

      if (v52 == 1)
      {
        result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v50, v7);
      }

      if ((v30 & 1) == 0)
      {
        goto LABEL_64;
      }

      if (!--v18)
      {
        v33 = HIDWORD(v53[1]);
        if (LODWORD(v53[1]) <= HIDWORD(v53[1]))
        {
          goto LABEL_35;
        }

        v34 = v53[0];
        if (HIDWORD(v53[1]))
        {
          if (HIDWORD(v53[1]) >= 0xAAAAAAB)
          {
            __break(0xC471u);
            return result;
          }

          v35 = 24 * HIDWORD(v53[1]);
          v36 = WTF::fastMalloc((24 * HIDWORD(v53[1])));
          LODWORD(v53[1]) = v35 / 0x18;
          v53[0] = v36;
          if (v36 != v34)
          {
            WTF::VectorMover<false,WebCore::SpeechRecognitionResultData>::move(v34, v34 + 24 * v33, v36);
          }
        }

        if (v34)
        {
          if (v53[0] == v34)
          {
            v53[0] = 0;
            LODWORD(v53[1]) = 0;
          }

          WTF::fastFree(v34, v7);
        }

        goto LABEL_35;
      }
    }
  }

  if (v18)
  {
    LODWORD(v53[1]) = 24 * v18 / 0x18u;
    v53[0] = WTF::fastMalloc((24 * v18));
    while (1)
    {
      IPC::Decoder::decode<WebCore::SpeechRecognitionResultData>(v50, v3);
      v19 = v52;
      if (v52)
      {
        if (HIDWORD(v53[1]) == LODWORD(v53[1]))
        {
          WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SpeechRecognitionResultData>(v53, v50);
        }

        else
        {
          v20 = v53[0] + 24 * HIDWORD(v53[1]);
          *v20 = 0;
          *(v20 + 1) = 0;
          v21 = v50[0];
          v50[0] = 0;
          *v20 = v21;
          LODWORD(v21) = v50[1];
          LODWORD(v50[1]) = 0;
          *(v20 + 2) = v21;
          LODWORD(v21) = HIDWORD(v50[1]);
          HIDWORD(v50[1]) = 0;
          *(v20 + 3) = v21;
          v20[16] = v51;
          ++HIDWORD(v53[1]);
        }
      }

      if (v52 == 1)
      {
        WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v50, v7);
      }

      if ((v19 & 1) == 0)
      {
        break;
      }

      if (!--v18)
      {
        goto LABEL_35;
      }
    }

LABEL_64:
    v51 = 0;
    WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v53, v7);
LABEL_65:
    v37 = *v3;
    v38 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    result = *(v3 + 3);
    if (result && v38)
    {
      result = (*(*result + 16))(result, v37);
    }

    v24 = 0;
    *a2 = 0;
    goto LABEL_36;
  }

LABEL_35:
  a3.n128_u64[0] = 0;
  v22 = v53[0];
  v23 = v53[1];
  v49 = a3;
  *v53 = a3;
  v24 = 1;
  v51 = 1;
  WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v53, v7);
  *v50 = v49;
  *a2 = v22;
  *(a2 + 8) = v23;
  *(a2 + 16) = 2;
  result = WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v50, v25);
LABEL_36:
  *(a2 + 24) = v24;
  return result;
}

void sub_19D820F9C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  if (v9 == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  }

  WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, a2);
  _Unwind_Resume(a1);
}

WTF *IPC::Decoder::decode<WebCore::SpeechRecognitionResultData>(uint64_t a1, void *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v42 = a2[3];
    if (v42)
    {
      if (v6)
      {
        (*(*v42 + 16))(v42);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_63;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_63:
    *a2 = 0;
    a2[1] = 0;
    v43 = a2[3];
    if (v43 && v6)
    {
      (*(*v43 + 16))(v43, v5);
    }

    LOBYTE(v47) = 0;
    v49 = 0;
LABEL_39:
    v29 = *a2;
    v30 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v30)
    {
      result = (*(*result + 16))(result, v29);
    }

LABEL_40:
    v31 = a2[1];
    v32 = a2[2];
    v33 = *a2;
    if (v31 <= &v32[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v44 = a2[3];
      if (v44)
      {
        if (v31)
        {
          (*(*v44 + 16))(v44);
          v31 = a2[1];
        }
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      a2[2] = v32 + 1;
      if (v32)
      {
        v34 = *v32;
        if (v34 < 2)
        {
          v35 = 1;
          goto LABEL_44;
        }

LABEL_70:
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (!result || !v31)
        {
          goto LABEL_71;
        }

        result = (*(*result + 16))(result, v33);
        v35 = 0;
        v33 = *a2;
LABEL_44:
        if (v34)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        if (v33)
        {
          if ((v49 & 1) == 0)
          {
            goto LABEL_83;
          }

          v37 = v47;
          v38 = v48;
          v47 = 0;
          v48 = 0;
          if ((v35 & 1) == 0)
          {
            goto LABEL_83;
          }

          v52 = v36;
          v50 = 0;
          v51 = 0;
          *a1 = v37;
          *(a1 + 8) = v38;
          *(a1 + 16) = v36;
          v39 = 1;
          *(a1 + 24) = 1;
          result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v33);
          goto LABEL_51;
        }

LABEL_71:
        v39 = 0;
        *a1 = 0;
        *(a1 + 24) = 0;
LABEL_51:
        if (v49 == 1)
        {
          result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v47, v33);
        }

        if ((v39 & 1) == 0)
        {
          v40 = *a2;
          v41 = a2[1];
          *a2 = 0;
          a2[1] = 0;
          result = a2[3];
          if (result)
          {
            if (v41)
            {
              return (*(*result + 16))(result, v40);
            }
          }
        }

        return result;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v45 = a2[3];
    if (v45)
    {
      if (v31)
      {
        (*(*v45 + 16))(v45);
        v34 = 0;
        v33 = *a2;
        v31 = a2[1];
        goto LABEL_70;
      }
    }

    else
    {
      v31 = 0;
    }

    v33 = 0;
    v34 = 0;
    goto LABEL_70;
  }

  a2[2] = v4 + 8;
  if (!v4)
  {
    goto LABEL_63;
  }

  v8 = *v4;
  v53 = 0;
  v54 = 0;
  if (v8 < 0x10000)
  {
    if (v8)
    {
      LODWORD(v54) = v8;
      v53 = WTF::fastMalloc((16 * v8));
      while (1)
      {
        IPC::Decoder::decode<WebCore::SpeechRecognitionAlternativeData>(&v50, a2);
        if ((v52 & 1) == 0)
        {
          goto LABEL_38;
        }

        if (HIDWORD(v54) != v54)
        {
          break;
        }

        v9 = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v53, HIDWORD(v54) + 1, &v50);
        v10 = HIDWORD(v54) + 1;
        v11 = (v53 + 16 * HIDWORD(v54));
        v12 = *v9;
        *v9 = 0;
        *v11 = v12;
        v11[1] = v9[1];
        HIDWORD(v54) = v10;
        if (v52)
        {
          goto LABEL_15;
        }

LABEL_18:
        if (!--v8)
        {
          goto LABEL_19;
        }
      }

      v13 = HIDWORD(v54) + 1;
      v14 = (v53 + 16 * HIDWORD(v54));
      v15 = v50;
      v50 = 0;
      *v14 = v15;
      v14[1] = v51;
      HIDWORD(v54) = v13;
LABEL_15:
      v16 = v50;
      v50 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v5);
      }

      goto LABEL_18;
    }

LABEL_19:
    v47 = v53;
    v17 = v54;
    v53 = 0;
    v54 = 0;
    v48 = v17;
    v49 = 1;
    result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v5);
    goto LABEL_40;
  }

  do
  {
    IPC::Decoder::decode<WebCore::SpeechRecognitionAlternativeData>(&v50, a2);
    if ((v52 & 1) == 0)
    {
LABEL_38:
      LOBYTE(v47) = 0;
      v49 = 0;
      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v5);
      goto LABEL_39;
    }

    if (HIDWORD(v54) == v54)
    {
      v19 = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v53, HIDWORD(v54) + 1, &v50);
      v20 = HIDWORD(v54) + 1;
      v21 = (v53 + 16 * HIDWORD(v54));
      v22 = *v19;
      *v19 = 0;
      *v21 = v22;
      v21[1] = v19[1];
      HIDWORD(v54) = v20;
      if ((v52 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v23 = HIDWORD(v54) + 1;
      v24 = (v53 + 16 * HIDWORD(v54));
      v25 = v50;
      v50 = 0;
      *v24 = v25;
      v24[1] = v51;
      HIDWORD(v54) = v23;
    }

    v26 = v50;
    v50 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v5);
    }

LABEL_28:
    --v8;
  }

  while (v8);
  v27 = HIDWORD(v54);
  if (v54 <= HIDWORD(v54))
  {
    goto LABEL_19;
  }

  result = v53;
  if (!HIDWORD(v54))
  {
LABEL_34:
    if (result)
    {
      if (v53 == result)
      {
        v53 = 0;
        LODWORD(v54) = 0;
      }

      WTF::fastFree(result, v5);
    }

    goto LABEL_19;
  }

  v46 = v53;
  if (!(HIDWORD(v54) >> 28))
  {
    v28 = WTF::fastMalloc((16 * HIDWORD(v54)));
    result = v46;
    LODWORD(v54) = v27;
    v53 = v28;
    if (v28 != v46)
    {
      WTF::VectorTypeOperations<WebCore::SpeechRecognitionAlternativeData>::move(v46, (v46 + 16 * v27), v28);
      result = v46;
    }

    goto LABEL_34;
  }

  __break(0xC471u);
LABEL_83:
  __break(1u);
  return result;
}

void sub_19D8214E0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, WTF::StringImpl *a14, uint64_t a15, char a16)
{
  if (a13)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SpeechRecognitionResultData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 24 * *(a1 + 12);
  *v4 = 0;
  *(v4 + 8) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v3);
  *(v4 + 16) = *(v3 + 16);
  ++*(a1 + 12);
  return result;
}

void sub_19D8215B8(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *result + 24 * *(result + 12);
      v5 = 24 * a2;
      v6 = WTF::fastMalloc((24 * a2));
      *(v2 + 8) = v5 / 0x18;
      *v2 = v6;
      result = WTF::VectorMover<false,WebCore::SpeechRecognitionResultData>::move(v3, v4, v6);
      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 8) = 0;
        }

        return WTF::fastFree(v3, v7);
      }
    }
  }

  return result;
}

uint64_t WTF::VectorMover<false,WebCore::SpeechRecognitionResultData>::move(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3, v5);
      *(a3 + 16) = *(v5 + 16);
      result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v6);
      a3 += 24;
      v5 += 24;
    }

    while (v5 != a2);
  }

  return result;
}

void sub_19D8217CC(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::ArgumentCoder<WebCore::VideoFrameRotation,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 1) & 0xFFFFFFFFFFFFFFFELL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 1)
  {
    a1[2] = (v2 + 1);
    if (v2)
    {
      v8 = 0;
      v9 = *v2;
      if (v9 > 179)
      {
        if (v9 != 270)
        {
          v10 = 0;
          v11 = 0;
          if (v9 != 180)
          {
            return v10 | v8 | v11;
          }
        }
      }

      else if (v9)
      {
        v10 = 0;
        v11 = 0;
        if (v9 != 90)
        {
          return v10 | v8 | v11;
        }
      }

      v11 = v9 & 0x100;
      v10 = v9;
      v8 = 0x10000;
      return v10 | v8 | v11;
    }

    v15 = a1;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v15 = a1;
    v13 = a1[3];
    if (!v13)
    {
      v1 = 0;
LABEL_17:
      v3 = 0;
      goto LABEL_18;
    }

    if (!v1)
    {
      goto LABEL_17;
    }

    (*(*v13 + 16))(v13);
    v3 = *v15;
    v1 = v15[1];
  }

LABEL_18:
  *v15 = 0;
  v15[1] = 0;
  v14 = v15[3];
  if (v14 && v1)
  {
    (*(*v14 + 16))(v14, v3);
  }

  v8 = 0;
  v10 = 0;
  v11 = 0;
  return v10 | v8 | v11;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::GradientColorStop,void>::encode(a1, v6);
      v6 += 4;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

uint64_t *IPC::VectorArgumentCoder<false,WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(uint64_t *result, uint64_t a2)
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
    v10 = 16 * v8;
    do
    {
      result = IPC::ArgumentCoder<WebCore::GradientColorStop,void>::encode(v2, v9);
      v9 += 4;
      v10 -= 16;
    }

    while (v10);
  }

  return result;
}

unsigned int *IPC::Decoder::decode<WebCore::GradientColorStop>(uint64_t a1, IPC::Decoder *this)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 3)
  {
    *(this + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  IPC::Decoder::markInvalid(this);
  v10 = 0;
LABEL_8:
  result = IPC::ArgumentCoder<WebCore::Color,void>::decode(this, &v14);
  if ((v15 & 1) == 0)
  {
    result = IPC::Decoder::markInvalid(this);
  }

  if (*this)
  {
    if (v10 & 0x100000000) != 0 && (v15)
    {
      v13 = v14;
      *a1 = v10;
      *(a1 + 8) = v13;
      *(a1 + 16) = 1;
      goto LABEL_14;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if ((v15 & 1) != 0 && (v14 & 0x8000000000000) != 0)
  {
    result = (v14 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v14 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v12);
    }
  }

LABEL_14:
  if ((*(a1 + 16) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

uint64_t std::optional<WebCore::GradientColorStop>::~optional(uint64_t result, void *a2)
{
  if (*(result + 16) == 1)
  {
    v2 = *(result + 8);
    if ((v2 & 0x8000000000000) != 0)
    {
      v3 = (v2 & 0xFFFFFFFFFFFFLL);
      add = atomic_fetch_add(v3, 0xFFFFFFFF);
      if (add == 1)
      {
        atomic_store(add, v3);
        v5 = result;
        WTF::fastFree(v3, a2);
        return v5;
      }
    }
  }

  return result;
}

uint64_t WTF::VectorBuffer<WebCore::GradientColorStop,2ul,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  v2 = result;
  if (a2 < 3)
  {
    *result = result + 16;
    *(result + 8) = 2;
  }

  else
  {
    v3 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      result = WTF::fastMalloc((16 * a2));
      *(v2 + 8) = v3;
      *v2 = result;
    }
  }

  return result;
}

unint64_t WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::GradientColorStop>(unsigned int *a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = a1[3];
  v5 = *a1 + 16 * v4;
  *v5 = *result;
  *(v5 + 8) = 0;
  if (v5 != result)
  {
    v6 = *(result + 8);
    *(result + 8) = 0;
    *(v5 + 8) = v6;
  }

  a1[3] = v4 + 1;
  return result;
}

unint64_t WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = result;
    v3 = *result;
    v4 = (*result + 16 * result[3]);
    WTF::VectorBuffer<WebCore::GradientColorStop,2ul,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(result, a2);
    result = WTF::VectorMover<false,WebCore::GradientColorStop>::move(v3, v4, *v2);
    if (v2 + 4 != v3 && v3 != 0)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        v2[2] = 0;
      }

      return WTF::fastFree(v3, v5);
    }
  }

  return result;
}

uint64_t WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WebCore::GradientColorStop>::destruct((*result + 16 * a2), (*result + 16 * v4));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      result = WTF::VectorBuffer<WebCore::GradientColorStop,2ul,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(v3, a2);
      if (*v3 != v5)
      {
        result = WTF::VectorMover<false,WebCore::GradientColorStop>::move(v5, &v5[4 * v4], *v3);
      }
    }

    if ((v3 + 16) != v5 && v5 != 0)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      result = WTF::fastFree(v5, a2);
    }

    if (!*v3)
    {
      *v3 = v3 + 16;
      *(v3 + 8) = 2;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::RenderingPurpose,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
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
  if (v2 >= 8)
  {
LABEL_8:
    v2 = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&>(IPC::Encoder *a1, char *a2)
{
  v5 = a2[1];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&>(a1, *a2, a2[1], v5);
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&>(mpark *a1, char a2, mpark *a3, uint64_t a4)
{
  if (a4)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul>(a1, a2, a3, a4);
  }

  else
  {
    if (a3)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul>(mpark *a1, char a2, mpark *a3, uint64_t a4)
{
  if (a4 == 1)
  {
    if (a3 != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul>(a1, a2, a3, a4);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul>(mpark *a1, char a2, mpark *a3, uint64_t a4)
{
  if (a4 == 2)
  {
    if (a3 != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul,2ul>(a1, a2, a3, a4);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul,2ul>(mpark *result, char a2, mpark *a3, uint64_t a4)
{
  if (a4 == 3)
  {
    if (a3 != 3)
    {
      mpark::throw_bad_variant_access(result);
    }
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul,2ul,3ul>(result, a2, a3, a4);
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul,2ul,3ul>(mpark *a1, char a2, mpark *this, uint64_t a4)
{
  if (a4 == 4)
  {
    if (this != 4)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul,2ul,3ul,4ul>(this, a4);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul,2ul,3ul,4ul>(mpark *result, uint64_t a2)
{
  if (a2 == 5)
  {
    if (result != 5)
    {
      mpark::throw_bad_variant_access(result);
    }
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul,2ul,3ul,4ul,5ul>(result, a2);
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul,2ul,3ul,4ul,5ul>(mpark *result, uint64_t a2)
{
  if (a2 == 6)
  {
    if (result != 6)
    {
      mpark::throw_bad_variant_access(result);
    }
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul>(result, a2);
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul>(mpark *result, uint64_t a2)
{
  if (a2 > 9)
  {
    switch(a2)
    {
      case 10:
        if (result == 10)
        {
          return result;
        }

        goto LABEL_18;
      case 11:
        if (result != 11)
        {
          goto LABEL_18;
        }

        return result;
      case 12:
        if (result == 12)
        {
          return result;
        }

        goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (a2 == 7)
  {
    if (result == 7)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (a2 == 8)
  {
    if (result == 8)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (a2 != 9)
  {
LABEL_16:
    if (a2 != 13 || result == 13)
    {
      return result;
    }

LABEL_18:
    mpark::throw_bad_variant_access(result);
  }

  if (result != 9)
  {
    goto LABEL_18;
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&>(mpark *a1, _BYTE *a2)
{
  v2 = a2[1];
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
    return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&>(a1, a2, v2);
  }

  ++*a1;
  *(a1 + 1) = v3 - 1;
  return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&>(a1, a2, v2);
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&>(mpark *result, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul>(result, a2, a3);
  }

  else
  {
    if (a2[1])
    {
      mpark::throw_bad_variant_access(result);
    }

    if (*(result + 1))
    {
      **result = *a2;
      v4 = *(result + 1);
      if (v4)
      {
        ++*result;
        *(result + 1) = v4 - 1;
        return result;
      }

      __break(1u);
    }

    *result = 0;
    *(result + 1) = 0;
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul>(mpark *result, _BYTE *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (a2[1] != 1)
    {
      goto LABEL_23;
    }

    if (*(result + 1))
    {
      **result = *a2;
LABEL_20:
      v4 = *(result + 1);
      if (v4)
      {
        ++*result;
        *(result + 1) = v4 - 1;
        return result;
      }

      __break(1u);
    }

LABEL_28:
    *result = 0;
    *(result + 1) = 0;
    return result;
  }

  v3 = a2[1];
  if (a3 == 6)
  {
    if (v3 == 6)
    {
      return result;
    }

LABEL_23:
    mpark::throw_bad_variant_access(result);
  }

  if (a3 <= 3)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (v3 != 3)
        {
          goto LABEL_23;
        }

        return result;
      }

LABEL_24:
      v5 = a2[1];

      return IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul>(v5, a3);
    }

    if (v3 != 2)
    {
      goto LABEL_23;
    }

LABEL_18:
    if (*(result + 1))
    {
      **result = *a2;
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  if (a3 == 4)
  {
    if (v3 != 4)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (a3 != 5)
  {
    goto LABEL_24;
  }

  if (v3 != 5)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v8 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v8;
    goto LABEL_39;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_39:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_40;
  }

  v3 = *v1;
  if (v3 > 0xD)
  {
LABEL_40:
    LOBYTE(v4) = 0;
    v5 = 0;
    return (v1 << 8) | (v5 << 16) | v4;
  }

  if (v3 == 6)
  {
    if (v2)
    {
      LOBYTE(v4) = 0;
      v5 = 1;
    }

    else
    {
      IPC::Decoder::markInvalid(a1);
      LOBYTE(v4) = 0;
      v5 = 0;
    }

    LOBYTE(v1) = 6;
    return (v1 << 8) | (v5 << 16) | v4;
  }

  if (*v1 <= 2u)
  {
    if (!*v1)
    {
      LOWORD(v4) = IPC::Decoder::decode<WebCore::ColorInterpolationMethod::HSL>(a1);
      v7 = v4 >= 0x100u;
      if (v4 >= 0x100u)
      {
        LOBYTE(v1) = 0;
      }

      else
      {
        LOBYTE(v4) = 0;
        LOBYTE(v1) = 1;
      }

LABEL_31:
      v5 = v7;
      return (v1 << 8) | (v5 << 16) | v4;
    }

    if (v3 == 1)
    {
      LOWORD(v4) = IPC::Decoder::decode<WebCore::ColorInterpolationMethod::HSL>(a1);
      v7 = v4 >= 0x100u;
      if (v4 < 0x100u)
      {
        LOBYTE(v4) = 0;
      }

      LOBYTE(v1) = 1;
      goto LABEL_31;
    }

    LOWORD(v4) = IPC::Decoder::decode<WebCore::ColorInterpolationMethod::HSL>(a1);
    v7 = v4 >= 0x100u;
    LOBYTE(v1) = 2;
LABEL_29:
    if (!v7)
    {
      LOBYTE(v4) = 0;
      LOBYTE(v1) = 1;
    }

    goto LABEL_31;
  }

  switch(v3)
  {
    case 3:
      if (v2)
      {
        LOBYTE(v4) = 0;
        v5 = 1;
      }

      else
      {
        IPC::Decoder::markInvalid(a1);
        LOBYTE(v4) = 0;
        v5 = 0;
      }

      LOBYTE(v1) = 3;
      break;
    case 4:
      LOWORD(v4) = IPC::Decoder::decode<WebCore::ColorInterpolationMethod::HSL>(a1);
      v7 = v4 >= 0x100u;
      LOBYTE(v1) = 4;
      goto LABEL_29;
    case 5:
      if (v2)
      {
        LOBYTE(v4) = 0;
        v5 = 1;
      }

      else
      {
        IPC::Decoder::markInvalid(a1);
        LOBYTE(v4) = 0;
        v5 = 0;
      }

      LOBYTE(v1) = 5;
      break;
    default:
      v4 = IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::decode<IPC::Decoder,0ul,1ul,2ul,3ul,4ul,5ul,6ul>(a1, v3);
      LOBYTE(v1) = BYTE1(v4);
      v5 = BYTE2(v4);
      break;
  }

  return (v1 << 8) | (v5 << 16) | v4;
}

uint64_t IPC::Decoder::decode<WebCore::ColorInterpolationMethod::HSL>(void *a1)
{
  v2 = IPC::Decoder::decode<WebCore::HueInterpolationMethod>(a1);
  if (*a1)
  {
    if (v2 > 0xFFu)
    {
      v4 = 1;
      return v2 | (v4 << 8);
    }

    __break(1u);
  }

  else
  {
    v3 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v2 = a1[3];
    if (!v2)
    {
      v4 = 0;
      return v2 | (v4 << 8);
    }
  }

  if (v3)
  {
    (*(*v2 + 16))(v2);
  }

  v4 = 0;
  LOBYTE(v2) = 0;
  return v2 | (v4 << 8);
}

uint64_t IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::decode<IPC::Decoder,0ul,1ul,2ul,3ul,4ul,5ul,6ul>(uint64_t *a1, uint64_t a2)
{
  if (a2 <= 8)
  {
    if (a2 == 7)
    {
      if (*a1)
      {
        v2 = 1;
      }

      else
      {
        v10 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v11 = a1[3];
        if (v11 && v10)
        {
          (*(*v11 + 16))(v11, 0);
        }

        v2 = 0;
      }

      v3 = 7;
    }

    else
    {
      if (a2 != 8)
      {
LABEL_22:
        v4 = *a1;
        if (a2 == 12)
        {
          if (v4)
          {
            v2 = 1;
          }

          else
          {
            v16 = a1[1];
            *a1 = 0;
            a1[1] = 0;
            v17 = a1[3];
            if (v17 && v16)
            {
              (*(*v17 + 16))(v17, 0);
            }

            v2 = 0;
          }

          v3 = 12;
        }

        else
        {
          if (v4)
          {
            v2 = 1;
          }

          else
          {
            v18 = a1[1];
            *a1 = 0;
            a1[1] = 0;
            v19 = a1[3];
            if (v19 && v18)
            {
              (*(*v19 + 16))(v19, 0);
            }

            v2 = 0;
          }

          v3 = 13;
        }

        return (v3 << 8) | (v2 << 16);
      }

      if (*a1)
      {
        v2 = 1;
      }

      else
      {
        v14 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v15 = a1[3];
        if (v15 && v14)
        {
          (*(*v15 + 16))(v15, 0);
        }

        v2 = 0;
      }

      v3 = 8;
    }
  }

  else
  {
    switch(a2)
    {
      case 9:
        if (*a1)
        {
          v2 = 1;
        }

        else
        {
          v6 = a1[1];
          *a1 = 0;
          a1[1] = 0;
          v7 = a1[3];
          if (v7 && v6)
          {
            (*(*v7 + 16))(v7, 0);
          }

          v2 = 0;
        }

        v3 = 9;
        break;
      case 10:
        if (*a1)
        {
          v2 = 1;
        }

        else
        {
          v8 = a1[1];
          *a1 = 0;
          a1[1] = 0;
          v9 = a1[3];
          if (v9 && v8)
          {
            (*(*v9 + 16))(v9, 0);
          }

          v2 = 0;
        }

        v3 = 10;
        break;
      case 11:
        if (*a1)
        {
          v2 = 1;
        }

        else
        {
          v12 = a1[1];
          *a1 = 0;
          a1[1] = 0;
          v13 = a1[3];
          if (v13 && v12)
          {
            (*(*v13 + 16))(v13, 0);
          }

          v2 = 0;
        }

        v3 = 11;
        return (v3 << 8) | (v2 << 16);
      default:
        goto LABEL_22;
    }
  }

  return (v3 << 8) | (v2 << 16);
}

uint64_t *IPC::ArgumentCoder<std::array<float,20ul>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result[1];
  v3 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *result;
  v5 = v3 - *result;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (!v6 || v7 <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v3 + 1);
  if (!v3)
  {
    goto LABEL_102;
  }

  v9 = *v3;
  v10 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v10 - v4 || v2 - (v10 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v10 + 1);
  if (!v10)
  {
    goto LABEL_102;
  }

  v12 = *v10;
  v13 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v13 - v4 || v2 - (v13 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v13 + 1);
  if (!v13)
  {
    goto LABEL_102;
  }

  v15 = *v13;
  v16 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v16 - v4 || v2 - (v16 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v16 + 1);
  if (!v16)
  {
    goto LABEL_102;
  }

  v18 = *v16;
  v19 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v19 - v4 || v2 - (v19 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v19 + 1);
  if (!v19)
  {
    goto LABEL_102;
  }

  v21 = *v19;
  v22 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v22 - v4 || v2 - (v22 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v22 + 1);
  if (!v22)
  {
    goto LABEL_102;
  }

  v24 = *v22;
  v25 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v25 - v4 || v2 - (v25 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v25 + 1);
  if (!v25)
  {
    goto LABEL_102;
  }

  v27 = *v25;
  v28 = ((v25 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v28 - v4 || v2 - (v28 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v28 + 1);
  if (!v28)
  {
    goto LABEL_102;
  }

  v30 = *v28;
  v31 = ((v28 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v31 - v4 || v2 - (v31 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v31 + 1);
  if (!v31)
  {
    goto LABEL_102;
  }

  v33 = *v31;
  v34 = ((v31 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v34 - v4 || v2 - (v34 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v34 + 1);
  if (!v34)
  {
    goto LABEL_102;
  }

  v36 = *v34;
  v37 = ((v34 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v37 - v4 || v2 - (v37 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v37 + 1);
  if (!v37)
  {
    goto LABEL_102;
  }

  v39 = *v37;
  v40 = ((v37 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v40 - v4 || v2 - (v40 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v40 + 1);
  if (!v40)
  {
    goto LABEL_102;
  }

  v42 = *v40;
  v43 = ((v40 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v43 - v4 || v2 - (v43 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v43 + 1);
  if (!v43)
  {
    goto LABEL_102;
  }

  v44 = *v43;
  v45 = ((v43 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v45 - v4 || v2 - (v45 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v45 + 1);
  if (!v45)
  {
    goto LABEL_102;
  }

  v46 = *v45;
  v47 = ((v45 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v47 - v4 || v2 - (v47 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v47 + 1);
  if (!v47)
  {
    goto LABEL_102;
  }

  v48 = *v47;
  v49 = ((v47 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v49 - v4 || v2 - (v49 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v49 + 1);
  if (!v49)
  {
    goto LABEL_102;
  }

  v50 = *v49;
  v51 = ((v49 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v51 - v4 || v2 - (v51 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v51 + 1);
  if (!v51)
  {
    goto LABEL_102;
  }

  v52 = *v51;
  v53 = ((v51 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v53 - v4 || v2 - (v53 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v53 + 1);
  if (!v53)
  {
    goto LABEL_102;
  }

  v54 = *v53;
  v55 = ((v53 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v55 - v4 || v2 - (v55 - v4) <= 3)
  {
    goto LABEL_99;
  }

  result[2] = (v55 + 1);
  if (!v55)
  {
LABEL_102:
    v61 = a2;
    v62 = result;
    goto LABEL_103;
  }

  v56 = *v55;
  v57 = ((v55 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 >= v57 - v4 && v2 - (v57 - v4) > 3)
  {
    result[2] = (v57 + 1);
    if (v57)
    {
      v58 = *v57;
      *a2 = v9;
      *(a2 + 1) = v12;
      *(a2 + 2) = v15;
      *(a2 + 3) = v18;
      *(a2 + 4) = v21;
      *(a2 + 5) = v24;
      *(a2 + 6) = v27;
      *(a2 + 7) = v30;
      *(a2 + 8) = v33;
      *(a2 + 9) = v36;
      *(a2 + 10) = v39;
      *(a2 + 11) = v42;
      *(a2 + 12) = v44;
      *(a2 + 13) = v46;
      *(a2 + 14) = v48;
      *(a2 + 15) = v50;
      *(a2 + 16) = v52;
      *(a2 + 17) = v54;
      v59 = 1;
      *(a2 + 18) = v56;
      *(a2 + 19) = v58;
      goto LABEL_98;
    }

    goto LABEL_102;
  }

LABEL_99:
  v61 = a2;
  v62 = result;
  *result = 0;
  result[1] = 0;
  v60 = result[3];
  if (!v60)
  {
    v2 = 0;
LABEL_101:
    v4 = 0;
    goto LABEL_103;
  }

  if (!v2)
  {
    goto LABEL_101;
  }

  (*(*v60 + 16))(v60);
  v4 = *v62;
  v2 = v62[1];
LABEL_103:
  *v62 = 0;
  v62[1] = 0;
  result = v62[3];
  if (result && v2)
  {
    result = (*(*result + 16))(result, v4);
  }

  v59 = 0;
  a2 = v61;
  *v61 = 0;
LABEL_98:
  a2[80] = v59;
  return result;
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::InbandGenericCueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::InbandGenericCueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::InbandGenericCueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::InbandGenericCueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
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

WTF::StringImpl *IPC::Decoder::decode<WebCore::HTTPHeaderField>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v10);
  result = IPC::Decoder::decode<WTF::String>(a2, &v8);
  if (!*a2)
  {
    goto LABEL_16;
  }

  if ((v11 & 1) == 0 || (v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    *a1 = 0;
    a1[16] = 0;
    goto LABEL_5;
  }

  result = WebCore::HTTPHeaderField::create();
LABEL_5:
  if (v9 == 1)
  {
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v11 == 1)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if ((a1[16] & 1) == 0)
  {
    v6 = *a2;
    v7 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v7)
      {
        return (*(*result + 16))(result, v6);
      }
    }
  }

  return result;
}

void sub_19D822E18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, WTF::StringImpl *a11, char a12)
{
  if (*(v12 + 16) == 1)
  {
    v14 = *(v12 + 8);
    *(v12 + 8) = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, a2);
    }

    v15 = *v12;
    *v12 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct((*result + 16 * a2), (*result + 16 * v4));
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
        result = WTF::VectorTypeOperations<WebCore::DataListSuggestion>::move(v5, (v5 + 16 * v4), result);
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

void IPC::ArgumentCoder<WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,void>::encode<IPC::Encoder,WebCore::FragmentedSharedBuffer>(IPC::Encoder *a1, WebCore::FragmentedSharedBuffer **a2)
{
  if (*a2)
  {
    v5 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v5);
    IPC::ArgumentCoder<WebCore::FragmentedSharedBuffer,void>::encode(v3, *a2);
  }

  else
  {
    v4 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v4);
  }
}

uint64_t IPC::ArgumentCoder<WebCore::ServiceWorkerState,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  v6 = v4 < 6;
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

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 32))
    {
      mpark::throw_bad_variant_access(a1);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
    v6 = *(a2 + 16);

    return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 32) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(result, v4);
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerRegistrationOptions>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerRegistrationOptions> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationOptions,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t *IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
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
    a2[48] = 0;
    return result;
  }

  return IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(result, v5, a2);
}

uint64_t *IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2 == 1 && (result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(result), (v5 & 1) != 0))
    {
      *a3 = result;
      v6 = 1;
      *(a3 + 32) = 1;
    }

    else
    {
      v6 = 0;
      *a3 = 0;
    }
  }

  else
  {
    result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(result, v11);
    if (v12)
    {
      v7 = v11[1];
      *a3 = v11[0];
      *(a3 + 16) = v7;
      v8 = (a3 + 32);
      v6 = 1;
    }

    else
    {
      v9 = *v3;
      v10 = v3[1];
      *v3 = 0;
      v3[1] = 0;
      result = v3[3];
      if (result && v10)
      {
        result = (*(*result + 16))(result, v9);
      }

      v6 = 0;
      v8 = a3;
    }

    *v8 = 0;
  }

  *(a3 + 48) = v6;
  return result;
}

void *IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerRoutePattern>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerRoutePattern> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 64))
    {
      return IPC::ArgumentCoder<WebCore::ServiceWorkerRoutePattern,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = 112 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::ServiceWorkerRouteCondition,void>::encode(a1, v6);
      v6 += 112;
      v7 -= 112;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::unique_ptr<WebCore::ServiceWorkerRouteCondition>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::ServiceWorkerRouteCondition> const&>(IPC::Encoder *a1, void *a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::ServiceWorkerRouteCondition,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

WTF *WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerRouteCondition>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 112 * *(a1 + 12);
  std::__optional_move_base<WebCore::ServiceWorkerRoutePattern,false>::__optional_move_base[abi:sn200100](v4, v3);
  v5 = *(v3 + 72);
  *(v3 + 72) = 0;
  *(v4 + 72) = v5;
  LODWORD(v5) = *(v3 + 80);
  *(v4 + 84) = *(v3 + 84);
  *(v4 + 80) = v5;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 88, (v3 + 88));
  v7 = *(v3 + 104);
  *(v3 + 104) = 0;
  *(v4 + 104) = v7;
  ++*(a1 + 12);
  return result;
}

void sub_19D8235F4(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  if (*(v2 + 64) == 1)
  {
    WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 112 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x2492493)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = *a1;
      v4 = *a1 + 112 * *(a1 + 12);
      v5 = 112 * a2;
      v6 = WTF::fastMalloc((112 * a2));
      *(a1 + 8) = (613566757 * (v5 >> 4)) >> 32;
      *a1 = v6;
      WTF::VectorMover<false,WebCore::ServiceWorkerRouteCondition>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebCore::ServiceWorkerRouteCondition>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      v9 = std::__optional_move_base<WebCore::ServiceWorkerRoutePattern,false>::__optional_move_base[abi:sn200100](a3 + v6, (a1 + v6));
      v10 = *(a1 + v6 + 72);
      *(v8 + 72) = 0;
      *(v7 + 72) = v10;
      LODWORD(v10) = *(a1 + v6 + 80);
      v11 = *(a1 + v6 + 84);
      *(v9 + 88) = 0;
      v9 += 88;
      *(v9 - 4) = v11;
      *(v9 - 8) = v10;
      *(v9 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v9, (a1 + v6 + 88));
      v12 = *(a1 + v6 + 104);
      *(v8 + 104) = 0;
      *(v7 + 104) = v12;
      std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100]((a1 + v6 + 104), 0);
      WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + v6 + 88, v13);
      v15 = *(a1 + v6 + 72);
      *(v8 + 72) = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }

      if (*(a1 + v6 + 64) == 1)
      {
        WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern((a1 + v6), v14);
      }

      v6 += 112;
    }

    while (a1 + v6 != a2);
  }
}

void sub_19D8238C8(_Unwind_Exception *exception_object, void *a2)
{
  v6 = *(v3 + 11);
  if (v6)
  {
    *(v3 + 11) = 0;
    *(v2 + v4 + 96) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *(v3 + 9);
  *(v3 + 9) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  if (*(v2 + v4 + 64) == 1)
  {
    WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(v3, a2);
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,void>::encode<IPC::Encoder,mpark::variant<WebCore::RouterSourceDict,WebCore::RouterSourceEnum> const&>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,void>::encode<IPC::Encoder,mpark::variant<WebCore::RouterSourceDict,WebCore::RouterSourceEnum> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (a2[8])
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,void>::encode<IPC::Encoder,mpark::variant<WebCore::RouterSourceDict,WebCore::RouterSourceEnum> const&,0ul>(mpark *result, char *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (a2[8] != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, v4);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebFoundTextRange::PDFData,void>::encode(a1, v6);
      v6 += 4;
      v7 -= 32;
    }

    while (v7);
  }

  return result;
}

WTF *IPC::VectorArgumentCoder<false,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(WTF *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 1);
  v5 = ((*(result + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *result;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 7)
  {
    *result = 0;
    *(result + 1) = 0;
    v26 = *(result + 3);
    if (v26)
    {
      if (v4)
      {
        (*(*v26 + 16))(v26);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_42;
  }

  *(result + 2) = v5 + 1;
  if (!v5)
  {
LABEL_42:
    *v2 = 0;
    *(v2 + 1) = 0;
    result = *(v2 + 3);
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

  v10 = *v5;
  v30 = 0;
  v31 = 0;
  if (v10 >= 0x8000)
  {
    v18 = 0;
    LODWORD(v12) = 0;
    do
    {
      result = IPC::Decoder::decode<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>>(&v27, v2);
      if ((v29 & 1) == 0)
      {
        *a2 = 0;
        *(a2 + 16) = 0;
        if (!v18)
        {
          return result;
        }

        goto LABEL_19;
      }

      if (v12 == v31)
      {
        result = WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v30, v12 + 1, &v27);
        LODWORD(v12) = HIDWORD(v31);
        v18 = v30;
        v19 = (v30 + 32 * HIDWORD(v31));
        v20 = *(result + 1);
        *v19 = *result;
        v19[1] = v20;
      }

      else
      {
        v21 = v28;
        v22 = (v18 + 32 * v12);
        *v22 = v27;
        v22[1] = v21;
      }

      v12 = (v12 + 1);
      HIDWORD(v31) = v12;
      --v10;
    }

    while (v10);
    if (v31 <= v12)
    {
      v11 = v18;
      goto LABEL_17;
    }

    if (!v12)
    {
      goto LABEL_35;
    }

    if (v12 >> 27)
    {
      __break(0xC471u);
      return result;
    }

    result = WTF::fastMalloc((32 * v12));
    v11 = result;
    LODWORD(v31) = v12;
    v30 = result;
    if (result == v18)
    {
      goto LABEL_35;
    }

    v23 = 0;
    do
    {
      v24 = (result + v23);
      v25 = *(v18 + v23 + 16);
      *v24 = *(v18 + v23);
      v24[1] = v25;
      v23 += 32;
    }

    while (32 * v12 != v23);
    if (v18)
    {
      if (result == v18)
      {
LABEL_35:
        v30 = 0;
        LODWORD(v31) = 0;
      }

      result = WTF::fastFree(v18, v13);
      v11 = v30;
      LODWORD(v12) = HIDWORD(v31);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (!v10)
  {
    LODWORD(v12) = 0;
    v11 = 0;
LABEL_17:
    *a2 = v11;
    *(a2 + 8) = v31;
    *(a2 + 12) = v12;
    *(a2 + 16) = 1;
    return result;
  }

  v11 = WTF::fastMalloc((32 * v10));
  LODWORD(v12) = 0;
  LODWORD(v31) = v10;
  v30 = v11;
  while (1)
  {
    result = IPC::Decoder::decode<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>>(&v27, v2);
    if ((v29 & 1) == 0)
    {
      break;
    }

    if (v12 == v31)
    {
      result = WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v30, v12 + 1, &v27);
      LODWORD(v12) = HIDWORD(v31);
      v11 = v30;
      v14 = (v30 + 32 * HIDWORD(v31));
      v15 = *(result + 1);
      *v14 = *result;
      v14[1] = v15;
    }

    else
    {
      v16 = v28;
      v17 = (v11 + 32 * v12);
      *v17 = v27;
      v17[1] = v16;
    }

    LODWORD(v12) = v12 + 1;
    HIDWORD(v31) = v12;
    if (!--v10)
    {
      goto LABEL_17;
    }
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  v18 = v11;
LABEL_19:
  v30 = 0;
  LODWORD(v31) = 0;
  return WTF::fastFree(v18, v13);
}

void sub_19D823CD4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15)
{
  if (a15)
  {
    WTF::fastFree(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>(a2, a1);
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

uint64_t IPC::ArgumentCoder<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a1, &v14);
  if (v15)
  {
    result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a1, &v12);
    if (v13)
    {
      v5 = v12;
      *a2 = v14;
      *(a2 + 16) = v5;
      v6 = 1;
    }

    else
    {
      v10 = *a1;
      v11 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result)
      {
        if (v11)
        {
          result = (*(*result + 16))(result, v10);
        }
      }

      v6 = 0;
      *a2 = 0;
    }

    *(a2 + 32) = v6;
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
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
      result = (*(*result + 16))(result, v7);
    }

    *a2 = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

unint64_t WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
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
      v5 = *(result + 12);
      result = WTF::fastMalloc((32 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v5)
      {
        v7 = 32 * v5;
        v8 = v4;
        do
        {
          v9 = *v8;
          v10 = *(v8 + 1);
          v8 = (v8 + 32);
          *result = v9;
          *(result + 16) = v10;
          result += 32;
          v7 -= 32;
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

uint64_t IPC::ArgumentCoder<WebCore::ExceptionCode,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  v6 = v4 < 0x26;
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

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 24))
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::SecurityOriginData::Tuple,void>::encode(a1, a2);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 24) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = result;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(result, *a2);
    v5 = *(a2 + 8);

    return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, v5);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 2);
  if (*(result + 1) <= &v2[-*result])
  {
    v4 = result;
    v5 = a2;
    IPC::Decoder::markInvalid(result);
    result = v4;
    a2 = v5;
    goto LABEL_8;
  }

  *(result + 2) = v2 + 1;
  if (!v2)
  {
LABEL_8:
    v6 = a2;
    result = IPC::Decoder::markInvalid(result);
    a2 = v6;
    goto LABEL_9;
  }

  v3 = *v2;
  if (v3 >= 2)
  {
LABEL_9:
    *a2 = 0;
    a2[32] = 0;
    return result;
  }

  return IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(result, v3, a2);
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,0ul>(a1, a2, a3);
  }

  else
  {
    result = IPC::Decoder::decode<WebCore::SecurityOriginData::Tuple>(a1, &v7);
    if (v9 == 1)
    {
      *a3 = v7;
      *(a3 + 16) = v8;
      v5 = (a3 + 24);
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v5 = a3;
    }

    *v5 = 0;
    *(a3 + 32) = v6;
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::SecurityOriginData::Tuple>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::SecurityOriginData::Tuple,void>::decode(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t std::optional<WebCore::SecurityOriginData::Tuple>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *a1;
    *a1 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  return a1;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,0ul>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 != 1)
  {
    goto LABEL_10;
  }

  v4 = result;
  v5 = IPC::ArgumentCoder<PAL::SessionID,void>::decode(result);
  if ((v6 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v4);
    IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if (*v4)
    {
      goto LABEL_8;
    }

LABEL_9:
    result = IPC::Decoder::markInvalid(v4);
LABEL_10:
    v9 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  v7 = v5;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
  if (!*v4)
  {
    goto LABEL_9;
  }

  if ((v8 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *a3 = v7;
  *(a3 + 8) = result;
  v9 = 1;
  *(a3 + 24) = 1;
LABEL_6:
  *(a3 + 32) = v9;
  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<unsigned short>,void>::encode<IPC::Encoder,std::optional<unsigned short> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 2))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 2))
    {
      return IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<int>,void>::encode<IPC::Encoder,std::optional<int> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<int>,void>::encode<IPC::Encoder,std::optional<int> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 4))
    {
      return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<int>,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<int>,void>::decode<IPC::Decoder>(uint64_t *a1)
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
LABEL_13:
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
            goto LABEL_17;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_13;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v13 = a1;
    goto LABEL_13;
  }

  v4 = *v2;
  if (v4 < 2)
  {
    if (v4)
    {
      v5 = IPC::Decoder::decode<float>(a1);
      v6 = 0x100000000;
      v7 = v5 & 0xFFFFFF00;
      v8 = v5;
      if ((v5 & 0x100000000) != 0)
      {
        v6 = 0x100000000;
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v7 = 0;
    }

    return v8 | v6 | v7;
  }

  v13 = a1;
LABEL_17:
  *v13 = 0;
  v13[1] = 0;
  v12 = v13[3];
  if (v12 && v1)
  {
    (*(*v12 + 16))(v12, v3);
  }

  v6 = 0;
  v8 = 0;
  v7 = 0;
  return v8 | v6 | v7;
}

unint64_t WTF::Vector<WebCore::CaptureDevice,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::CaptureDevice,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::CaptureDevice,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::CaptureDevice,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8247D0);
    }

    v3 = *a1;
    v4 = (*a1 + 40 * *(a1 + 12));
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(a1 + 8) = v5 / 0x28;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::CaptureDevice>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::CaptureDevice>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      *(a3 + 8) = *(v5 + 8);
      v7 = *(v5 + 2);
      *(v5 + 2) = 0;
      *(a3 + 16) = v7;
      v8 = *(v5 + 3);
      *(v5 + 3) = 0;
      *(a3 + 24) = v8;
      *(a3 + 32) = *(v5 + 8);
      v9 = *(v5 + 3);
      *(v5 + 3) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }

      v10 = *(v5 + 2);
      *(v5 + 2) = 0;
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

      a3 += 40;
      v5 = (v5 + 40);
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebCore::CaptureDevice,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebCore::CaptureDevice>::destruct((*result + 40 * this), (*result + 40 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x6666667)
      {
        __break(0xC471u);
        JUMPOUT(0x19D8249ACLL);
      }

      v6 = (40 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x28;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::CaptureDevice>::move(v5, (v5 + 40 * v4), result);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::CaptureDevice>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[3];
      v3[3] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = v3[2];
      v3[2] = 0;
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

      v3 += 5;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::CaptureDevice,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::CaptureDevice>::destruct(*a1, (*a1 + 40 * v3));
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

void sub_19D824A9C(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 8);
  if ((a2[1] & 1) == 0)
  {
    if (v2)
    {
      **result = 0;
LABEL_9:
      v6 = *(result + 8);
      if (v6)
      {
        ++*result;
        *(result + 8) = v6 - 1;
        return result;
      }

      goto LABEL_11;
    }

LABEL_13:
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  **result = 1;
  v3 = *(result + 8);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = (*result + 1);
    *result = v5;
    *(result + 8) = v4;
    if ((a2[1] & 1) == 0)
    {
      goto LABEL_14;
    }

    if (v4)
    {
      *v5 = *a2;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  *result = 0;
  *(result + 8) = 0;
  if (a2[1])
  {
    goto LABEL_13;
  }

LABEL_14:
  v7 = std::__throw_bad_optional_access[abi:sn200100]();
  return IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::decode<IPC::Decoder>(v7);
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v17 = a1;
    v9 = a1[3];
    if (v9)
    {
      if (v1)
      {
        (*(*v9 + 16))(v9);
        v3 = *v17;
        v1 = v17[1];
LABEL_15:
        *v17 = 0;
        v17[1] = 0;
        v10 = v17[3];
        if (v10)
        {
          if (v1)
          {
            (*(*v10 + 16))(v10, v3);
            v3 = *v17;
            v1 = v17[1];
            goto LABEL_19;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_15;
  }

  v4 = v2 + 1;
  a1[2] = (v2 + 1);
  if (!v2)
  {
    v17 = a1;
    goto LABEL_15;
  }

  v5 = *v2;
  if (v5 < 2)
  {
    if (!*v2)
    {
      v6 = 0;
      goto LABEL_10;
    }

    if (v1 <= &v4[-v3])
    {
      v12 = 0;
      v13 = 0;
      *a1 = 0;
      a1[1] = 0;
      v18 = a1;
      v14 = a1[3];
      if (v14)
      {
        (*(*v14 + 16))(v14);
        v13 = *v18;
        v12 = v18[1];
      }
    }

    else
    {
      a1[2] = (v2 + 2);
      if (v2 != -1)
      {
        v6 = *v4;
        if (v6 < 0xC)
        {
          v5 = 256;
LABEL_10:
          v7 = 0x10000;
          return v6 | v5 | v7;
        }

        goto LABEL_25;
      }

      v18 = a1;
      v12 = v1;
      v13 = v3;
    }

    *v18 = 0;
    v18[1] = 0;
    v15 = v18[3];
    if (v15 && v12)
    {
      (*(*v15 + 16))(v15, v13, v12);
      a1 = v18;
      v3 = *v18;
      v1 = v18[1];
    }

    else
    {
      v1 = 0;
      v3 = 0;
      a1 = v18;
    }

LABEL_25:
    *a1 = 0;
    a1[1] = 0;
    v16 = a1[3];
    if (v16 && v1)
    {
      (*(*v16 + 16))(v16, v3);
    }

    v7 = 0;
    v6 = 0;
    v5 = 256;
    return v6 | v5 | v7;
  }

  v17 = a1;
LABEL_19:
  *v17 = 0;
  v17[1] = 0;
  v11 = v17[3];
  if (v11 && v1)
  {
    (*(*v11 + 16))(v11, v3);
  }

  v7 = 0;
  v6 = 0;
  v5 = 0;
  return v6 | v5 | v7;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoTransferCharacteristics>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v17 = a1;
    v9 = a1[3];
    if (v9)
    {
      if (v1)
      {
        (*(*v9 + 16))(v9);
        v3 = *v17;
        v1 = v17[1];
LABEL_15:
        *v17 = 0;
        v17[1] = 0;
        v10 = v17[3];
        if (v10)
        {
          if (v1)
          {
            (*(*v10 + 16))(v10, v3);
            v3 = *v17;
            v1 = v17[1];
            goto LABEL_19;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_15;
  }

  v4 = v2 + 1;
  a1[2] = (v2 + 1);
  if (!v2)
  {
    v17 = a1;
    goto LABEL_15;
  }

  v5 = *v2;
  if (v5 < 2)
  {
    if (!*v2)
    {
      v6 = 0;
      goto LABEL_10;
    }

    if (v1 <= &v4[-v3])
    {
      v12 = 0;
      v13 = 0;
      *a1 = 0;
      a1[1] = 0;
      v18 = a1;
      v14 = a1[3];
      if (v14)
      {
        (*(*v14 + 16))(v14);
        v13 = *v18;
        v12 = v18[1];
      }
    }

    else
    {
      a1[2] = (v2 + 2);
      if (v2 != -1)
      {
        v6 = *v4;
        if (v6 < 0x11)
        {
          v5 = 256;
LABEL_10:
          v7 = 0x10000;
          return v6 | v5 | v7;
        }

        goto LABEL_25;
      }

      v18 = a1;
      v12 = v1;
      v13 = v3;
    }

    *v18 = 0;
    v18[1] = 0;
    v15 = v18[3];
    if (v15 && v12)
    {
      (*(*v15 + 16))(v15, v13, v12);
      a1 = v18;
      v3 = *v18;
      v1 = v18[1];
    }

    else
    {
      v1 = 0;
      v3 = 0;
      a1 = v18;
    }

LABEL_25:
    *a1 = 0;
    a1[1] = 0;
    v16 = a1[3];
    if (v16 && v1)
    {
      (*(*v16 + 16))(v16, v3);
    }

    v7 = 0;
    v6 = 0;
    v5 = 256;
    return v6 | v5 | v7;
  }

  v17 = a1;
LABEL_19:
  *v17 = 0;
  v17[1] = 0;
  v11 = v17[3];
  if (v11 && v1)
  {
    (*(*v11 + 16))(v11, v3);
  }

  v7 = 0;
  v6 = 0;
  v5 = 0;
  return v6 | v5 | v7;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoMatrixCoefficients>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v17 = a1;
    v9 = a1[3];
    if (v9)
    {
      if (v1)
      {
        (*(*v9 + 16))(v9);
        v3 = *v17;
        v1 = v17[1];
LABEL_15:
        *v17 = 0;
        v17[1] = 0;
        v10 = v17[3];
        if (v10)
        {
          if (v1)
          {
            (*(*v10 + 16))(v10, v3);
            v3 = *v17;
            v1 = v17[1];
            goto LABEL_19;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_15;
  }

  v4 = v2 + 1;
  a1[2] = (v2 + 1);
  if (!v2)
  {
    v17 = a1;
    goto LABEL_15;
  }

  v5 = *v2;
  if (v5 < 2)
  {
    if (!*v2)
    {
      v6 = 0;
      goto LABEL_10;
    }

    if (v1 <= &v4[-v3])
    {
      v12 = 0;
      v13 = 0;
      *a1 = 0;
      a1[1] = 0;
      v18 = a1;
      v14 = a1[3];
      if (v14)
      {
        (*(*v14 + 16))(v14);
        v13 = *v18;
        v12 = v18[1];
      }
    }

    else
    {
      a1[2] = (v2 + 2);
      if (v2 != -1)
      {
        v6 = *v4;
        if (v6 < 0xA)
        {
          v5 = 256;
LABEL_10:
          v7 = 0x10000;
          return v6 | v5 | v7;
        }

        goto LABEL_25;
      }

      v18 = a1;
      v12 = v1;
      v13 = v3;
    }

    *v18 = 0;
    v18[1] = 0;
    v15 = v18[3];
    if (v15 && v12)
    {
      (*(*v15 + 16))(v15, v13, v12);
      a1 = v18;
      v3 = *v18;
      v1 = v18[1];
    }

    else
    {
      v1 = 0;
      v3 = 0;
      a1 = v18;
    }

LABEL_25:
    *a1 = 0;
    a1[1] = 0;
    v16 = a1[3];
    if (v16 && v1)
    {
      (*(*v16 + 16))(v16, v3);
    }

    v7 = 0;
    v6 = 0;
    v5 = 256;
    return v6 | v5 | v7;
  }

  v17 = a1;
LABEL_19:
  *v17 = 0;
  v17[1] = 0;
  v11 = v17[3];
  if (v11 && v1)
  {
    (*(*v11 + 16))(v11, v3);
  }

  v7 = 0;
  v6 = 0;
  v5 = 0;
  return v6 | v5 | v7;
}

WTF::StringImpl *IPC::ArgumentCoder<WTF::RefPtr<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,void>::encode<IPC::Encoder,WTF::JSONImpl::Value>(IPC::Encoder *a1, WTF::JSONImpl::Value **a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WTF::JSONImpl::Value,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}