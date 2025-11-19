uint64_t IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void IPC::Decoder::decode<WebCore::PrivateClickMeasurement>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::PrivateClickMeasurement,void>::decode(a2, a1);
  if ((*(a1 + 312) & 1) == 0)
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v6 = *(a2 + 3);
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

void sub_19D7F9D38(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 312) == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebKit::WebHitTestResultData>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::WebHitTestResultData,void>::decode(a2, a1);
  if ((a1[848] & 1) == 0)
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v6 = *(a2 + 3);
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

void sub_19D7F9DD4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 848) == 1)
  {
    WebKit::WebHitTestResultData::~WebHitTestResultData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if ((v5 & 1) == 0)
  {
    *a1 = 0;
    a1[16] = 0;
    return result;
  }

  v6 = result;
  v12 = 0;
  v13 = 0;
  if (result >= 0x20000)
  {
    while (1)
    {
      v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
      v10 = v8;
      v11 = v7;
      if ((v7 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v13) == v13)
      {
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&v12, &v10);
      }

      else
      {
        *(v12 + HIDWORD(v13)) = v8;
        ++HIDWORD(v13);
      }

      if (!--v6)
      {
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v12, HIDWORD(v13));
        goto LABEL_4;
      }
    }
  }

  else
  {
    if (!result)
    {
LABEL_4:
      std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, &v12);
      goto LABEL_5;
    }

    LODWORD(v13) = result;
    v12 = WTF::fastMalloc((8 * result));
    while (1)
    {
      v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
      v10 = v9;
      v11 = v7;
      if ((v7 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v13) == v13)
      {
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&v12, &v10);
      }

      else
      {
        *(v12 + HIDWORD(v13)) = v9;
        ++HIDWORD(v13);
      }

      if (!--v6)
      {
        goto LABEL_4;
      }
    }
  }

  *a1 = 0;
  a1[16] = 0;
LABEL_5:
  result = v12;
  if (v12)
  {
    v12 = 0;
    LODWORD(v13) = 0;
    return WTF::fastFree(result, v7);
  }

  return result;
}

void sub_19D7F9F44(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7F9FA4(_Unwind_Exception *exception_object, void *a2)
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

void *WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  *(*a1 + 8 * (*(a1 + 12))++) = *result;
  return result;
}

WTF *IPC::ArgumentCoder<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>,void>::encode<IPC::Encoder,WebCore::Image>(IPC::Encoder *a1, WebCore::Image **a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::Image,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

void IPC::VectorArgumentCoder<false,std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *a2;
    v6 = v5 + 16 * v4;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v5);
      IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(a1, (v5 + 8));
      v5 += 16;
    }

    while (v5 != v6);
  }
}

void IPC::ArgumentCoder<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>,void>::decode<IPC::Decoder,WebCore::Image>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v10 = a1;
    v7 = a1[3];
    if (v7)
    {
      if (v3)
      {
        (*(*v7 + 16))(v7);
        v5 = *v10;
        v3 = v10[1];
        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_13:
    *v10 = 0;
    v10[1] = 0;
    v8 = v10[3];
    if (v8)
    {
      if (v3)
      {
        (*(*v8 + 16))(v8, v5);
        v5 = *v10;
        v3 = v10[1];
        goto LABEL_17;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_17:
    *v10 = 0;
    v10[1] = 0;
    v9 = v10[3];
    if (v9)
    {
      if (v3)
      {
        (*(*v9 + 16))(v9, v5);
      }
    }

    *a2 = 0;
    a2[8] = 0;
    return;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v10 = a1;
    goto LABEL_13;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v10 = a1;
    goto LABEL_17;
  }

  if (v6)
  {
    IPC::ArgumentCoder<WebCore::Image,void>::decode(&v11, a1);
    *a2 = 0;
    a2[8] = 0;
    if (v12 != 1)
    {
      return;
    }

    *a2 = v11;
  }

  else
  {
    *a2 = 0;
  }

  a2[8] = 1;
}

void IPC::Decoder::decode<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v13);
  if (v14 == 1)
  {
    IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a2, &v11);
    if (v12)
    {
      if (v14)
      {
        v5 = v11;
        *a1 = v13;
        *(a1 + 8) = v5;
        *(a1 + 16) = 1;
      }

      else
      {
        __break(1u);
      }

      return;
    }

    *a1 = 0;
    *(a1 + 16) = 0;
    if (v14)
    {
      v6 = v13;
      v13 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
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
    (*(*v9 + 16))(v9, v7);
  }
}

void sub_19D7FA354(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    memcpy(v6, v4, 16 * v5);
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

unsigned int *WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > a2)
    {
      result = WTF::VectorTypeOperations<WebCore::RawFile>::destruct((*result + 16 * a2), (*result + 16 * v4));
      v3[3] = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (v3[2])
      {
        v3[2] = a2;
        result = WTF::fastRealloc(v5, (16 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((16 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v5)
      {
        result = memcpy(result, v5, 16 * v4);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::RawFile>::destruct(*a1, (*a1 + 16 * v3));
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

void sub_19D7FA610(_Unwind_Exception *exception_object, void *a2)
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

void *IPC::ArgumentCoder<std::optional<WebKit::PolicyDecisionConsoleMessage>,void>::encode<IPC::Encoder,std::optional<WebKit::PolicyDecisionConsoleMessage>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<WebKit::PolicyDecisionConsoleMessage,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WebKit::PolicyDecisionConsoleMessage>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

IPC::Decoder *IPC::Decoder::decode<WebKit::PolicyDecisionConsoleMessage>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<JSC::MessageLevel>(a2);
  v5 = IPC::Decoder::decode<JSC::MessageSource>(a2);
  result = IPC::Decoder::decode<WTF::String>(a2, &v12);
  if (*a2)
  {
    if (v4 & 0x100) != 0 && (v5 & 0x100) != 0 && (v13)
    {
      v8 = v12;
      *a1 = v4 | (v5 << 8);
      *(a1 + 8) = v8;
      *(a1 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v13)
  {
    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }
    }
  }

  v10 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v10)
  {
    v11 = *(*result + 16);

    return v11();
  }

  return result;
}

uint64_t IPC::ArgumentCoder<JSC::MessageSource,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = IPC::Decoder::decode<unsigned char>(a1);
  v2 = 0;
  if ((v1 & 0x100) != 0)
  {
    v3 = 0;
    if (v1 <= 0x10u)
    {
      v2 = byte_19E7030B6[v1 & 0x1F];
      v3 = byte_19E7030C7[v1 & 0x1F];
    }
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::encode<IPC::Encoder,std::optional<WebCore::IntSize> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 8))
    {
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
      return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

unint64_t IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::decode<IPC::Decoder>(uint64_t *a1)
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
      v5 = IPC::Decoder::decode<WebCore::IntSize>(a1);
      v6 = v5 & 0xFFFFFFFFFFFFFF00;
      v7 = v5;
      if ((v8 & 1) == 0)
      {
        v7 = 0;
        v6 = 0;
      }
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    return v6 | v7;
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

  v7 = 0;
  v6 = 0;
  return v6 | v7;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&,0ul>(result, a2, a3);
  }

  else if (*(a2 + 16))
  {
    mpark::throw_bad_variant_access(result);
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&,0ul,1ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&,0ul,1ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 16) != 2)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = result;
    for (i = 0; i != 16; i += 4)
    {
      result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, *(a2 + i));
    }
  }

  return result;
}

void *IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::decode<IPC::Decoder>@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *result;
  if (v2 <= v3 - *result)
  {
    v36 = result;
    v40 = a2;
    *result = 0;
    result[1] = 0;
    v31 = result[3];
    if (v31)
    {
      if (v2)
      {
        (*(*v31 + 16))(v31);
        v2 = v36[1];
      }
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_52;
  }

  result[2] = v3 + 1;
  if (!v3)
  {
    v36 = result;
    v40 = a2;
LABEL_52:
    a2 = v40;
    *v36 = 0;
    v36[1] = 0;
    result = v36[3];
    if (!result || !v2)
    {
      goto LABEL_4;
    }

    v24 = *(*result + 16);
    goto LABEL_43;
  }

  v5 = *v3;
  if (v5 < 3)
  {
    if (*v3)
    {
      if (v5 == 1)
      {
        v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
        v8 = ((v3 & 0xFFFFFFFFFFFFFFFCLL) + 4);
        if (v2 >= v8 - v4 && v2 - (v8 - v4) > 3)
        {
          result[2] = v7 + 8;
          if (v8)
          {
            *a2 = *v8;
            v6 = 1;
            *(a2 + 16) = 1;
            goto LABEL_40;
          }

          v37 = result;
          v39 = a2;
          v32 = v2;
          v33 = v4;
        }

        else
        {
          v37 = result;
          v39 = a2;
          v32 = 0;
          v33 = 0;
          *result = 0;
          result[1] = 0;
          v34 = result[3];
          if (v34)
          {
            (*(*v34 + 16))(v34);
            v33 = *v37;
            v32 = v37[1];
          }
        }

        *v37 = 0;
        v37[1] = 0;
        result = v37[3];
        if (result && v32)
        {
          result = (*(*result + 16))(result, v33, v32);
        }

        goto LABEL_58;
      }

      v10 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = v10 + 4 - v4;
      v12 = v2 >= v11;
      v13 = v2 - v11;
      if (!v12 || v13 <= 3)
      {
        goto LABEL_44;
      }

      result[2] = v10 + 8;
      if (v10 == -4)
      {
        goto LABEL_60;
      }

      v15 = ((v10 + 11) & 0xFFFFFFFFFFFFFFFCLL);
      if (v2 < v15 - v4 || v2 - (v15 - v4) <= 3)
      {
LABEL_44:
        v35 = result;
        v39 = a2;
        v25 = 0;
        v26 = 0;
        *result = 0;
        result[1] = 0;
        v27 = result[3];
        if (v27)
        {
          (*(*v27 + 16))(v27);
          v26 = *v35;
          v25 = v35[1];
        }

        goto LABEL_46;
      }

      v17 = *(v10 + 4);
      result[2] = v15 + 1;
      if (!v15)
      {
        goto LABEL_60;
      }

      v18 = *v15;
      v19 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v2 < v19 - v4 || v2 - (v19 - v4) <= 3)
      {
        goto LABEL_44;
      }

      result[2] = v19 + 1;
      if (!v19)
      {
        goto LABEL_60;
      }

      v21 = *v19;
      v22 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v2 < v22 - v4 || v2 - (v22 - v4) <= 3)
      {
        goto LABEL_44;
      }

      result[2] = v22 + 1;
      if (!v22)
      {
LABEL_60:
        v35 = result;
        v39 = a2;
        v25 = v2;
        v26 = v4;
LABEL_46:
        *v35 = 0;
        v35[1] = 0;
        v28 = v35[3];
        if (v28 && v25)
        {
          (*(*v28 + 16))(v28, v26, v25);
        }

        v29 = *v35;
        v30 = v35[1];
        *v35 = 0;
        v35[1] = 0;
        result = v35[3];
        if (result && v30)
        {
          result = (*(*result + 16))(result, v29);
        }

LABEL_58:
        v6 = 0;
        a2 = v39;
        goto LABEL_5;
      }

      v23 = *v22;
      *a2 = v17;
      *(a2 + 4) = v18;
      *(a2 + 8) = v21;
      *(a2 + 12) = v23;
      *(a2 + 16) = 2;
LABEL_39:
      v6 = 1;
      goto LABEL_40;
    }

    if (v4)
    {
      *(a2 + 16) = 0;
      goto LABEL_39;
    }

    *result = 0;
    result[1] = 0;
    result = result[3];
    if (!result)
    {
      goto LABEL_4;
    }

    v24 = *(*result + 16);
LABEL_43:
    v38 = a2;
    result = v24();
    a2 = v38;
  }

LABEL_4:
  v6 = 0;
LABEL_5:
  *a2 = 0;
LABEL_40:
  *(a2 + 20) = v6;
  return result;
}

uint64_t IPC::Encoder::encodeSpan<unsigned short const,18446744073709551615ul>(IPC::Encoder *a1, const void *a2, uint64_t a3)
{
  v5 = 2 * a3;
  v6 = IPC::Encoder::grow(a1, 2uLL, 2 * a3);
  if (v7 < 2 * a3)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {

    return memcpy(v6, a2, v5);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::span<char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, const void *a2, size_t a3)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a3);
  if (a3)
  {
    v7 = IPC::Encoder::grow(a1, 1uLL, a3);
    if (v8 < a3)
    {
      result = 1067;
      __break(0xC471u);
    }

    else
    {

      return memcpy(v7, a2, a3);
    }
  }

  return result;
}

mpark *IPC::ArgumentCoder<std::optional<WebKit::WebRTCNetwork::IPAddress>,void>::encode<IPC::Encoder,std::optional<WebKit::WebRTCNetwork::IPAddress> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 20))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 20))
    {
      v9 = *(a2 + 16);
      IPC::Encoder::operator<<<BOOL>(a1, &v9);
      return IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&>(a1, a2, v9);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 24 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebRTCNetwork::InterfaceAddress,void>::encode(a1, v6);
      v6 += 24;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::WebRTCNetwork::InterfaceAddress>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>(a2, &v8);
  result = IPC::Decoder::decode<float>(a2);
  if (*a2)
  {
    if ((v10 & 1) != 0 && (result & 0x100000000) != 0)
    {
      *a1 = v8;
      *(a1 + 16) = v9;
      *(a1 + 20) = result;
      *(a1 + 24) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
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
    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

unint64_t WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0xAAAAAAB)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(v2 + 8) = v5 / 0x18;
    *v2 = v6;
    if (v4)
    {
      v8 = 24 * v4;
      v9 = v3;
      do
      {
        v10 = *v9;
        *(v6 + 16) = *(v9 + 2);
        *v6 = v10;
        v6 += 24;
        v9 = (v9 + 24);
        v8 -= 24;
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

uint64_t WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v2 = result;
    v3 = *(result + 12);
    if (v3 > a2)
    {
      *(result + 12) = a2;
      LODWORD(v3) = a2;
    }

    v4 = *result;
    if (a2)
    {
      if (a2 >= 0xAAAAAAB)
      {
        __break(0xC471u);
        return result;
      }

      v5 = 24 * a2;
      result = WTF::fastMalloc((24 * a2));
      *(v2 + 8) = v5 / 0x18;
      *v2 = result;
      if (v3 && result != v4)
      {
        v6 = 24 * v3;
        v7 = v4;
        do
        {
          v8 = *v7;
          *(result + 16) = *(v7 + 2);
          *result = v8;
          result += 24;
          v7 = (v7 + 24);
          v6 -= 24;
        }

        while (v6);
      }
    }

    if (v4)
    {
      if (*v2 == v4)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::span<char const,18446744073709551615ul>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  v3 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *result;
  v5 = v3 - *result;
  v11 = v2 >= v5;
  v6 = v2 - v5;
  if (!v11 || v6 <= 7)
  {
    v16 = result;
    v18 = a2;
    *result = 0;
    result[1] = 0;
    v15 = result[3];
    if (!v15)
    {
      v2 = 0;
LABEL_32:
      v4 = 0;
      goto LABEL_33;
    }

    if (!v2)
    {
      goto LABEL_32;
    }

    (*(*v15 + 16))(v15);
    v4 = *v16;
    v2 = v16[1];
LABEL_33:
    *v16 = 0;
    v16[1] = 0;
    result = v16[3];
    if (result && v2)
    {
      result = (*(*result + 16))(result, v4);
    }

    v14 = 0;
    a2 = v18;
    goto LABEL_26;
  }

  v8 = v3 + 1;
  result[2] = (v3 + 1);
  if (!v3)
  {
    v16 = result;
    v18 = a2;
    goto LABEL_33;
  }

  v9 = *v3;
  if (v9)
  {
    v10 = v2 - (v8 - v4);
    v11 = v2 >= v8 - v4 && v10 >= v9;
    if (!v11)
    {
      *result = 0;
      result[1] = 0;
      result = result[3];
      if (result && v2)
      {
        v17 = a2;
        result = (*(*result + 16))(result);
        a2 = v17;
      }

      goto LABEL_25;
    }

    result[2] = v8 + v9;
    v13 = v10 == -1 || v9 != -1;
    if (!v8 || !v13)
    {
LABEL_25:
      v14 = 0;
LABEL_26:
      *a2 = 0;
      goto LABEL_27;
    }

    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v14 = 1;
LABEL_27:
  *(a2 + 16) = v14;
  return result;
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, WTF::StringImpl *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 1);
  v6 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 - *this;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8 || v9 <= 7)
  {
    IPC::Decoder::markInvalid(this);
LABEL_26:
    result = IPC::Decoder::markInvalid(this);
    *a3 = 0;
    *(a3 + 16) = 0;
    return result;
  }

  *(this + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_26;
  }

  v11 = *v6;
  v19 = 0;
  v20 = 0;
  if (v11 >= 0x2222)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>(this, v17);
      if ((v18 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (HIDWORD(v20) == v20)
      {
        WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>(&v19, v17);
      }

      else
      {
        std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>::pair[abi:sn200100](v19 + 120 * HIDWORD(v20), v17);
        ++HIDWORD(v20);
      }

      std::optional<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>::~optional(v17, v16);
      if (!--v11)
      {
        WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v19, HIDWORD(v20));
        goto LABEL_9;
      }
    }
  }

  if (v11)
  {
    LODWORD(v20) = 120 * v11 / 0x78u;
    v19 = WTF::fastMalloc((120 * v11));
    while (1)
    {
      IPC::Decoder::decode<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>(this, v17);
      if ((v18 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v20) == v20)
      {
        WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>(&v19, v17);
      }

      else
      {
        std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>::pair[abi:sn200100](v19 + 120 * HIDWORD(v20), v17);
        ++HIDWORD(v20);
      }

      std::optional<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>::~optional(v17, v15);
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

LABEL_24:
    *a3 = 0;
    *(a3 + 16) = 0;
    std::optional<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>::~optional(v17, v14);
    return WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, a2);
  }

LABEL_9:
  *a3 = v19;
  v12 = v20;
  v19 = 0;
  v20 = 0;
  *(a3 + 8) = v12;
  *(a3 + 16) = 1;
  return WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, a2);
}

void sub_19D7FB744(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::optional<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>::~optional(&a9, a2);
  WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9 - 48, v11);
  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[120] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t std::optional<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 120) == 1)
  {
    v3 = *(a1 + 80);
    *(a1 + 80) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v4)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v4);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  return a1;
}

WTF::StringImpl *IPC::ArgumentCoder<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebKit::WebCompiledContentRuleListData>(a1, v9);
  if ((v10 & 1) == 0 || (result = IPC::Decoder::decode<WTF::URL>(a1, v7), (v8 & 1) == 0))
  {
    *a2 = 0;
    a2[120] = 0;
    return std::optional<WebKit::WebCompiledContentRuleListData>::~optional(v9, v4);
  }

  if (v10)
  {
    std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>::pair[abi:sn200100]<WebKit::WebCompiledContentRuleListData,WTF::URL,0>(a2, v9, v7);
    a2[120] = 1;
    if (v8)
    {
      v6 = v7[0];
      v7[0] = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
        }
      }
    }

    return std::optional<WebKit::WebCompiledContentRuleListData>::~optional(v9, v4);
  }

  __break(1u);
  return result;
}

void sub_19D7FB8F8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a15 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  std::optional<WebKit::WebCompiledContentRuleListData>::~optional(&a17, a2);
  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebKit::WebCompiledContentRuleListData>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::WebCompiledContentRuleListData,void>::decode(a1, a2);
  if ((*(a2 + 80) & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

uint64_t std::optional<WebKit::WebCompiledContentRuleListData>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) == 1)
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v3);
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

uint64_t std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>::pair[abi:sn200100]<WebKit::WebCompiledContentRuleListData,WTF::URL,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = v8;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  WTF::URL::URL(a1 + 80, a3);
  return a1;
}

uint64_t WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>::pair[abi:sn200100](*a1 + 120 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return 1;
}

uint64_t std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>::pair[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  v4 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v4;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  WTF::URL::URL(a1 + 80, a2 + 10);
  return a1;
}

unint64_t WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 120 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x2222223)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7FBC94);
    }

    v3 = *a1;
    v4 = (*a1 + 120 * *(a1 + 12));
    v5 = 120 * a2;
    v6 = WTF::fastMalloc((120 * a2));
    *(a1 + 8) = v5 / 0x78;
    *a1 = v6;
    WTF::VectorMover<false,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>::move(WTF::StringImpl *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>::pair[abi:sn200100](a3, v5);
      v7 = v5[10];
      v5[10] = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }

      v8 = v5[1];
      v5[1] = 0;
      if (v8)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v8);
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v6);
        }
      }

      a3 += 120;
      v5 += 15;
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    if (result[3] > a2)
    {
      result = WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v4 = *v3;
    if (a2)
    {
      if (a2 >= 0x2222223)
      {
        __break(0xC471u);
        return result;
      }

      v5 = v3[3];
      v6 = (120 * a2);
      result = WTF::fastMalloc(v6);
      v3[2] = v6 / 0x78;
      *v3 = result;
      if (result != v4)
      {
        result = WTF::VectorMover<false,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>>::move(v4, v4 + 15 * v5, result);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

unsigned int *WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, WTF::StringImpl *a2)
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
      v5 = *result + 120 * a2;
      v6 = 120 * v2 - 120 * a2;
      do
      {
        v7 = *(v5 + 80);
        *(v5 + 80) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v5 + 8);
        *(v5 + 8) = 0;
        if (v8)
        {
          WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v8);
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

        v5 += 120;
        v6 -= 120;
      }

      while (v6);
    }

    v4[3] = v3;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v3 - 12))
  {
    return WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::makeConstIterator(a1, v3, a3);
  }

  return v3 + 8 * *(v3 - 4);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::makeConstIterator(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
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

  v6[0] = a2;
  v6[1] = v3 + 8 * v4;
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v6, a2, a3);
  return v6[0];
}

uint64_t WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(uint64_t result, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *result;
  if (*result != *(result + 8))
  {
    v4 = result;
    do
    {
      result = WTF::equal(*v3, 0, a3);
      if ((result & 1) == 0 && *v3 != -1)
      {
        break;
      }

      v5 = v4[1];
      v3 = (*v4 + 8);
      *v4 = v3;
    }

    while (v3 != v5);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ThirdPartyCookieBlockingMode,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
  }

  else
  {
    *(a1 + 2) = v1 + 1;
    if (v1)
    {
      v2 = *v1;
      v3 = 1;
      goto LABEL_4;
    }
  }

  IPC::Decoder::markInvalid(a1);
  v2 = 0;
  v3 = 0;
LABEL_4:
  v4 = v2 < 6;
  v5 = v2 | 0x100;
  if ((v3 & v4) != 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

WTF::StringImpl *WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, WTF **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (WTF::equal(*a2, 0, a3))
  {
    __break(0xC471u);
    JUMPOUT(0x19D7FC22CLL);
  }

  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D7FC24CLL);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v7) & v9;
  v11 = (v8 + 8 * v10);
  if ((WTF::equal(*v11, 0, v12) & 1) == 0)
  {
    v23 = 0;
    v24 = 1;
    do
    {
      if (*v11 == -1)
      {
        v23 = v11;
      }

      else
      {
        result = WTF::equalIgnoringASCIICase(*v11, *a2, v14);
        if (result)
        {
          v25 = *a1;
          if (*a1)
          {
            v26 = *(v25 - 4);
          }

          else
          {
            v26 = 0;
          }

          v22 = 0;
          v21 = v25 + 8 * v26;
          goto LABEL_13;
        }
      }

      v10 = (v10 + v24) & v9;
      v11 = (v8 + 8 * v10);
      ++v24;
    }

    while (!WTF::equal(*v11, 0, v14));
    if (v23)
    {
      *v23 = 0;
      --*(*a1 - 16);
      v11 = v23;
    }
  }

  v15 = *a2;
  *a2 = 0;
  result = *v11;
  *v11 = v15;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v13);
  }

  v17 = *a1;
  if (*a1)
  {
    v18 = *(v17 - 12) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 12) = v18;
  v19 = (*(v17 - 16) + v18);
  v20 = *(v17 - 4);
  if (v20 > 0x400)
  {
    if (v20 > 2 * v19)
    {
      goto LABEL_12;
    }

LABEL_18:
    result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, v11);
    v11 = result;
    v17 = *a1;
    if (*a1)
    {
      v20 = *(v17 - 4);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_12;
  }

  if (3 * v20 <= 4 * v19)
  {
    goto LABEL_18;
  }

LABEL_12:
  v21 = v17 + 8 * v20;
  v22 = 1;
LABEL_13:
  *a4 = v11;
  *(a4 + 8) = v21;
  *(a4 + 16) = v22;
  return result;
}

{
  if (WTF::equal(*a2, 0, a3))
  {
    __break(0xC471u);
    JUMPOUT(0x19DC874E8);
  }

  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC87508);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v7) & v9;
  v11 = (v8 + 8 * v10);
  if ((WTF::equal(*v11, 0, v12) & 1) == 0)
  {
    v23 = 0;
    v24 = 1;
    do
    {
      if (*v11 == -1)
      {
        v23 = v11;
      }

      else
      {
        result = WTF::equalIgnoringASCIICase(*v11, *a2, v14);
        if (result)
        {
          v25 = *a1;
          if (*a1)
          {
            v26 = *(v25 - 4);
          }

          else
          {
            v26 = 0;
          }

          v22 = 0;
          v21 = v25 + 8 * v26;
          goto LABEL_15;
        }
      }

      v10 = (v10 + v24) & v9;
      v11 = (v8 + 8 * v10);
      ++v24;
    }

    while (!WTF::equal(*v11, 0, v14));
    if (v23)
    {
      *v23 = 0;
      --*(*a1 - 16);
      v11 = v23;
    }
  }

  v15 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  result = *v11;
  *v11 = v15;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v13);
  }

  v17 = *a1;
  if (*a1)
  {
    v18 = *(v17 - 12) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 12) = v18;
  v19 = (*(v17 - 16) + v18);
  v20 = *(v17 - 4);
  if (v20 > 0x400)
  {
    if (v20 > 2 * v19)
    {
      goto LABEL_14;
    }

LABEL_27:
    result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, v11);
    v11 = result;
    v17 = *a1;
    if (*a1)
    {
      v20 = *(v17 - 4);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_14;
  }

  if (3 * v20 <= 4 * v19)
  {
    goto LABEL_27;
  }

LABEL_14:
  v21 = v17 + 8 * v20;
  v22 = 1;
LABEL_15:
  *a4 = v11;
  *(a4 + 8) = v21;
  *(a4 + 16) = v22;
  return result;
}

WTF::StringImpl **WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::ASCIICaseInsensitiveHash **a2)
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

  return WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WTF::StringImpl **WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::ASCIICaseInsensitiveHash **a3)
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

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v12 = 0;
  if (v7)
  {
    v14 = v6;
    v7 = v7;
    do
    {
      if (*v14 != -1)
      {
        if (WTF::equal(*v14, 0, v11))
        {
          v15 = *v14;
          *v14 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v10);
            }
          }
        }

        else
        {
          v16 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::reinsert(a1, v14);
          v17 = *v14;
          *v14 = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v18 = v16;
            WTF::StringImpl::destroy(v17, v10);
            v16 = v18;
          }

          if (v14 == a3)
          {
            v12 = v16;
          }
        }
      }

      ++v14;
      --v7;
    }

    while (v7);
    goto LABEL_16;
  }

  result = 0;
  if (v6)
  {
LABEL_16:
    WTF::fastFree((v6 - 16), v10);
    return v12;
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::reinsert(uint64_t *a1, WTF::ASCIICaseInsensitiveHash **a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = WTF::ASCIICaseInsensitiveHash::hash(*a2, a2);
  v7 = 0;
  do
  {
    v8 = v5 & v4;
    v10 = WTF::equal(*(v3 + 8 * v8), 0, v6);
    v5 = ++v7 + v8;
  }

  while (!v10);
  v11 = (v3 + 8 * v8);
  v12 = *v11;
  *v11 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = *a2;
  *a2 = 0;
  *v11 = v13;
  return v11;
}

uint64_t WTF::StringHasher::computeHashAndMaskTop8Bits<char16_t,WTF::ASCIICaseInsensitiveHash::FoldCase>(uint64_t a1, unint64_t a2)
{
  v2 = WTF::SuperFastHash::computeHashImpl<char16_t,WTF::ASCIICaseInsensitiveHash::FoldCase>(a1, a2);
  v3 = (v2 ^ (8 * v2)) + ((v2 ^ (8 * v2)) >> 5);
  v4 = (v3 ^ (4 * v3)) + ((v3 ^ (4 * v3)) >> 15);
  v5 = (v4 ^ (v4 << 10)) & 0xFFFFFF;
  if (v5)
  {
    return v5;
  }

  else
  {
    return 0x800000;
  }
}

uint64_t WTF::SuperFastHash::computeHashImpl<char16_t,WTF::ASCIICaseInsensitiveHash::FoldCase>(uint64_t a1, unint64_t a2)
{
  result = 2654435769;
  if (a2 >= 2)
  {
    v4 = (a1 + 2);
    for (i = 1; i < a2; i += 2)
    {
      v6 = *(v4 - 1) | (32 * (*(v4 - 1) - 65 < 0x1A));
      v7 = *v4;
      v4 += 2;
      v8 = ((((v7 - 65) < 0x1A) << 16) | (v7 << 11)) ^ ((result + v6) << 16) ^ (result + v6);
      result = v8 + (v8 >> 11);
    }
  }

  if (a2)
  {
    v9 = *(a1 + 2 * a2 - 2);
    v10 = (result + (v9 | (32 * ((v9 - 65) < 0x1A)))) ^ ((result + (v9 | (32 * ((v9 - 65) < 0x1A)))) << 11);
    return v10 + (v10 >> 17);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 16 * v5;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(v6 + 8));
      v6 += 16;
    }

    while (v6 != v7);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<WebKit::ScriptTrackingPrivacyHost>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v16);
  v6 = *(a2 + 1);
  v7 = ((*(a2 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v8 = *a2;
  v9 = v7 - *a2;
  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (!v10 || v11 <= 1)
  {
    IPC::Decoder::markInvalid(a2);
LABEL_19:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_20;
  }

  *(a2 + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_19;
  }

  v13 = *v7;
  if (v13 <= 0x7FF)
  {
    v14 = v13 | 0x10000;
    goto LABEL_9;
  }

LABEL_20:
  result = IPC::Decoder::markInvalid(a2);
  v14 = 0;
  v8 = *a2;
LABEL_9:
  if (v8)
  {
    if ((v17 & 1) != 0 && HIWORD(v14))
    {
      *a1 = v16;
      *(a1 + 8) = v14;
      *(a1 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v17)
  {
    v15 = v16;
    v16 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v5);
      }
    }
  }

  return IPC::Decoder::markInvalid(a2);
}

void sub_19D7FC6B4(int a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if ((a10 & 1) != 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  JUMPOUT(0x19D7FC6ACLL);
}

uint64_t std::optional<WebKit::ScriptTrackingPrivacyHost>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) == 1)
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

unint64_t WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ScriptTrackingPrivacyHost>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = v4 + 1;
  v6 = *a1 + 16 * v4;
  v7 = *result;
  *result = 0;
  *v6 = v7;
  *(v6 + 8) = *(result + 8);
  *(a1 + 12) = v5;
  return result;
}

unint64_t WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7FC8D8);
    }

    v4 = *a1;
    v5 = (*a1 + 16 * *(a1 + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorTypeOperations<WebKit::ScriptTrackingPrivacyHost>::move(v4, v5, v6);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::ScriptTrackingPrivacyHost>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      *(a3 + 8) = *(v5 + 4);
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 16;
      v5 = (v5 + 16);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WebKit::ScriptTrackingPrivacyHost>::destruct((*result + 16 * a2), (*result + 16 * v4));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >> 28)
      {
        __break(0xC471u);
        JUMPOUT(0x19D7FCA30);
      }

      result = WTF::fastMalloc((16 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorTypeOperations<WebKit::ScriptTrackingPrivacyHost>::move(v5, (v5 + 16 * v4), result);
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

WTF::StringImpl *WTF::VectorDestructor<true,WebKit::ScriptTrackingPrivacyHost>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 2;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebKit::ScriptTrackingPrivacyHost>::destruct(*a1, (*a1 + 16 * v3));
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

uint64_t IPC::VectorArgumentCoder<false,WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = 0;
    v7 = *a2;
    v8 = 56 * v5;
    do
    {
      v9 = v7 + v6;
      v14 = *(v7 + v6 + 48);
      result = IPC::Encoder::operator<<<BOOL>(a1, &v14);
      switch(v14)
      {
        case 2:
          if (*(v9 + 48) != 2)
          {
LABEL_15:
            mpark::throw_bad_variant_access(result);
          }

          result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (v7 + v6));
          break;
        case 1:
          if (*(v9 + 48) != 1)
          {
            goto LABEL_15;
          }

          IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (v7 + v6));
          v10 = v7 + v6;
          v11 = *(v7 + v6 + 8);
          v12 = IPC::Encoder::grow(a1, 8uLL, 8);
          if (v13 <= 7)
          {
            result = 1067;
            __break(0xC471u);
            return result;
          }

          *v12 = v11;
          IPC::ArgumentCoder<std::optional<long long>,void>::encode<IPC::Encoder,std::optional<long long> const&>(a1, (v10 + 16));
          result = IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, v10 + 32);
          break;
        case 0:
          if (*(v9 + 48))
          {
            goto LABEL_15;
          }

          result = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(v7 + v6), *(v7 + v6 + 12));
          break;
      }

      v6 += 56;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::HTTPBody::Element>(_BYTE *a1, IPC::Decoder *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (v25)
    {
      if (v6)
      {
        (*(*v25 + 16))(v25);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_48;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_48:
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26 && v6)
    {
      (*(*v26 + 16))(v26, v5);
    }

    goto LABEL_4;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_48;
  }

  v7 = *v4;
  if (v7 >= 3)
  {
    goto LABEL_4;
  }

  if (!v7)
  {
    result = IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v27);
    if (v29 != 1)
    {
      goto LABEL_4;
    }

    v30 = v27;
    v31 = v28;
    v35 = 0;
    goto LABEL_19;
  }

  if (v7 != 1)
  {
    result = IPC::Decoder::decode<WTF::String>(a2, &v27);
    if (v28 != 1)
    {
      goto LABEL_4;
    }

    v30 = v27;
    v35 = 2;
LABEL_19:
    v11 = 1;
LABEL_20:
    v36 = 1;
    goto LABEL_21;
  }

  IPC::Decoder::decode<WTF::String>(a2, &v40);
  v12 = IPC::Decoder::decode<long long>(a2);
  v14 = v13;
  IPC::ArgumentCoder<std::optional<long long>,void>::decode<IPC::Decoder>(a2, &v27);
  if ((v29 & 1) == 0)
  {
    v18 = *a2;
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20)
    {
      if (v19)
      {
        (*(*v20 + 16))(v20, v18);
      }
    }
  }

  result = IPC::Decoder::decode<std::optional<WTF::WallTime>>(&v37, a2);
  if (*a2)
  {
    if ((v41 & 1) == 0 || (v14 & 1) == 0 || (v29 & 1) == 0 || (v39 & 1) == 0)
    {
      goto LABEL_27;
    }

    HIBYTE(v42) = v38;
    *(&v42 + 7) = v37;
    v31 = v12;
    v32 = v27;
    v33 = v28;
    v30 = v40;
    v34 = v42;
    v11 = 1;
    v35 = 1;
    goto LABEL_20;
  }

  if (v41)
  {
    v21 = v40;
    v40 = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v8);
      }
    }
  }

  v22 = *a2;
  v23 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v24 = *(a2 + 3);
  if (v24 && v23)
  {
    (*(*v24 + 16))(v24, v22);
  }

LABEL_4:
  LOBYTE(v30) = 0;
  v36 = 0;
  v8 = *a2;
  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v11 = 0;
LABEL_21:
    if (!*a2)
    {
      break;
    }

    if (v11)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::move_constructor(&v27, &v30);
      mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::move_constructor(a1, &v27);
      a1[56] = 1;
      result = mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v27, v15);
      if ((v36 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    if (v9)
    {
      result = (*(*result + 16))(result, v8);
    }
  }

  *a1 = 0;
  a1[56] = 0;
  if (v11)
  {
LABEL_24:
    result = mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v30, v8);
  }

LABEL_25:
  if ((a1[56] & 1) == 0)
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

void sub_19D7FCFD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (*(v24 + 56) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v24, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::HTTPBody::Element>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::move_constructor(*a1 + 56 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x4924925)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7FD22CLL);
    }

    v3 = *a1;
    v4 = *a1 + 56 * *(a1 + 12);
    v5 = 56 * a2;
    v6 = WTF::fastMalloc((56 * a2));
    *(a1 + 8) = v5 / 0x38;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::HTTPBody::Element>::move(v3, v4, v6);
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

uint64_t WTF::VectorMover<false,WebKit::HTTPBody::Element>::move(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::move_constructor(a3, v5);
      result = mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v5, v6);
      a3 += 56;
      v5 += 56;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<long long>,void>::encode<IPC::Encoder,std::optional<long long> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  if (a2[1])
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (a2[1])
    {
      v4 = *a2;
      result = IPC::Encoder::grow(a1, 8uLL, 8);
      if (v6 > 7)
      {
        *result = v4;
        return result;
      }
    }

    else
    {
      std::__throw_bad_optional_access[abi:sn200100]();
    }

    result = 1067;
    __break(0xC471u);
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<long long>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 1);
  v4 = *(result + 2);
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    *(result + 1) = 0;
    v11 = result;
    v9 = *(result + 3);
    if (v9)
    {
      if (v3)
      {
        (*(*v9 + 16))(v9);
        v5 = *v11;
        v3 = *(v11 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_11:
    *v11 = 0;
    *(v11 + 1) = 0;
    v10 = *(v11 + 3);
    if (v10)
    {
      if (v3)
      {
        (*(*v10 + 16))(v10, v5);
        v5 = *v11;
        v3 = *(v11 + 1);
        goto LABEL_15;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_15:
    *v11 = 0;
    *(v11 + 1) = 0;
    result = *(v11 + 3);
    if (result && v3)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_16;
  }

  *(result + 2) = v4 + 1;
  if (!v4)
  {
    v11 = result;
    goto LABEL_11;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v11 = result;
    goto LABEL_15;
  }

  if (!v6)
  {
    *a2 = 0;
    a2[8] = 0;
    v8 = 1;
    goto LABEL_17;
  }

  result = IPC::Decoder::decode<long long>(result);
  if ((v7 & 1) == 0)
  {
LABEL_16:
    v8 = 0;
    *a2 = 0;
    goto LABEL_17;
  }

  *a2 = result;
  v8 = 1;
  a2[8] = 1;
LABEL_17:
  a2[16] = v8;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 1);
  v4 = *(result + 2);
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    *(result + 1) = 0;
    v11 = result;
    v9 = *(result + 3);
    if (v9)
    {
      if (v3)
      {
        (*(*v9 + 16))(v9);
        v5 = *v11;
        v3 = *(v11 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_11:
    *v11 = 0;
    *(v11 + 1) = 0;
    v10 = *(v11 + 3);
    if (v10)
    {
      if (v3)
      {
        (*(*v10 + 16))(v10, v5);
        v5 = *v11;
        v3 = *(v11 + 1);
        goto LABEL_15;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_15:
    *v11 = 0;
    *(v11 + 1) = 0;
    result = *(v11 + 3);
    if (result && v3)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_16;
  }

  *(result + 2) = v4 + 1;
  if (!v4)
  {
    v11 = result;
    goto LABEL_11;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v11 = result;
    goto LABEL_15;
  }

  if (!v6)
  {
    *a2 = 0;
    a2[8] = 0;
    v8 = 1;
    goto LABEL_17;
  }

  result = IPC::Decoder::decode<WTF::Seconds>(result);
  if ((v7 & 1) == 0)
  {
LABEL_16:
    v8 = 0;
    *a2 = 0;
    goto LABEL_17;
  }

  *a2 = result;
  v8 = 1;
  a2[8] = 1;
LABEL_17:
  a2[16] = v8;
  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *a2, *(a2 + 12));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>,void>::encode<IPC::Encoder,WebCore::SerializedScriptValue>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>,void>::encode<IPC::Encoder,WebCore::SerializedScriptValue>(IPC::Encoder *a1, void *a2)
{
  if (*a2)
  {
    v6 = 1;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::SerializedScriptValue::Internals,void>::encode(v4, *a2 + 8);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

WTF *IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = a1;
    v10 = a1[3];
    if (v10)
    {
      if (v3)
      {
        (*(*v10 + 16))(v10);
        v5 = *v12;
        v3 = v12[1];
LABEL_16:
        *v12 = 0;
        v12[1] = 0;
        v11 = v12[3];
        if (v11)
        {
          if (v3)
          {
            (*(*v11 + 16))(v11, v5);
            v5 = *v12;
            v3 = v12[1];
            goto LABEL_20;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_16;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v12 = a1;
    goto LABEL_16;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    if (v6)
    {
      result = IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v13);
      if (v15)
      {
        *a2 = v13;
        *(a2 + 8) = v14;
        v8 = 1;
        *(a2 + 16) = 1;
      }

      else
      {
        v8 = 0;
        *a2 = 0;
      }

      *(a2 + 24) = v8;
    }

    else
    {
      LOBYTE(v13) = 0;
      v15 = 0;
      result = std::__optional_move_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a2, &v13);
      *(a2 + 24) = 1;
      if (v15 == 1)
      {
        result = v13;
        if (v13)
        {
          v13 = 0;
          LODWORD(v14) = 0;
          return WTF::fastFree(result, v9);
        }
      }
    }

    return result;
  }

  v12 = a1;
LABEL_20:
  *v12 = 0;
  v12[1] = 0;
  result = v12[3];
  if (result && v3)
  {
    result = (*(*result + 16))(result, v5);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

void sub_19D7FD8B8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
{
  if (a13 == 1)
  {
    if (a10)
    {
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>,void>::decode<IPC::Decoder,WebCore::SerializedScriptValue>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v157 = *(a1 + 3);
    if (v157)
    {
      if (v4)
      {
        (*(*v157 + 16))(v157);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_210;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_210:
    *a1 = 0;
    *(a1 + 1) = 0;
    v158 = *(a1 + 3);
    if (v158)
    {
      if (v4)
      {
        (*(*v158 + 16))(v158);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_213;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_213:
    *a1 = 0;
    *(a1 + 1) = 0;
    v159 = *(a1 + 3);
    if (v159 && v4)
    {
      (*(*v159 + 16))(v159, v6);
    }

    goto LABEL_140;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_213;
  }

  if (!v7)
  {
    *a2 = 0;
LABEL_132:
    *(a2 + 8) = 1;
    return;
  }

  IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v206);
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *a1;
  if (v8 <= v9 - *a1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v160 = *(a1 + 3);
    if (v160)
    {
      if (v8)
      {
        (*(*v160 + 16))(v160);
        v8 = *(a1 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_218;
  }

  *(a1 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_218:
    *a1 = 0;
    *(a1 + 1) = 0;
    v161 = *(a1 + 3);
    if (v161)
    {
      if (v8)
      {
        (*(*v161 + 16))(v161);
        v10 = *a1;
        v8 = *(a1 + 1);
        goto LABEL_221;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
LABEL_221:
    *a1 = 0;
    *(a1 + 1) = 0;
    v162 = *(a1 + 3);
    if (v162 && v8)
    {
      (*(*v162 + 16))(v162, v10);
    }

    goto LABEL_168;
  }

  if (*v9 >= 2u)
  {
    goto LABEL_221;
  }

  if (!*v9)
  {
    v23 = 0;
LABEL_27:
    v25 = 1;
    goto LABEL_28;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFF8;
  v12 = ((v9 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v8 < v12 - v10 || v8 - (v12 - v10) <= 7)
  {
    v153 = 0;
    v154 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    v155 = *(a1 + 3);
    if (v155)
    {
      (*(*v155 + 16))(v155);
      v154 = *a1;
      v153 = *(a1 + 1);
    }

    goto LABEL_205;
  }

  *(a1 + 2) = v11 + 16;
  if (!v12)
  {
    v153 = v8;
    v154 = v10;
LABEL_205:
    *a1 = 0;
    *(a1 + 1) = 0;
    v156 = *(a1 + 3);
    if (v156 && v153)
    {
      (*(*v156 + 16))(v156, v154, v153);
    }

    goto LABEL_167;
  }

  v13 = *v12;
  v203 = 0;
  v204 = 0;
  if (v13 >= 0x4924)
  {
    while (1)
    {
      IPC::Decoder::decode<JSC::ArrayBufferContents>(&v180, a1);
      v128 = v185;
      if (v185)
      {
        v129 = HIDWORD(v204);
        if (HIDWORD(v204) == v204)
        {
          WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,JSC::ArrayBufferContents>(&v203, &v180);
        }

        else
        {
          v130 = v203 + 56 * HIDWORD(v204);
          *(v130 + 1) = 0u;
          *(v130 + 2) = 0u;
          v130[48] = 0;
          *v130 = 0u;
          *v130 = v180;
          *&v180 = 0;
          v131 = *(v130 + 1);
          *(v130 + 1) = *(&v180 + 1);
          *(&v180 + 1) = v131;
          v132 = *(v130 + 2);
          *(v130 + 2) = v181;
          v181 = v132;
          v133 = *(v130 + 3);
          *(v130 + 3) = v182;
          v182 = v133;
          *(v130 + 4) = v183;
          *&v183 = 0;
          v134 = *(v130 + 5);
          *(v130 + 5) = *(&v183 + 1);
          *(&v183 + 1) = v134;
          v130[48] = v184;
          LOBYTE(v184) = 0;
          HIDWORD(v204) = v129 + 1;
        }
      }

      if (v185 == 1)
      {
        JSC::ArrayBufferContents::~ArrayBufferContents(&v180);
      }

      if ((v128 & 1) == 0)
      {
        goto LABEL_166;
      }

      if (!--v13)
      {
        v135 = HIDWORD(v204);
        if (v204 > HIDWORD(v204))
        {
          v136 = v203;
          if (HIDWORD(v204))
          {
            if (HIDWORD(v204) >= 0x4924925)
            {
              __break(0xC471u);
              return;
            }

            v137 = WTF::fastMalloc((56 * HIDWORD(v204)));
            LODWORD(v204) = 56 * v135 / 0x38;
            v203 = v137;
            if (v137 != v136)
            {
              WTF::VectorMover<false,JSC::ArrayBufferContents>::move(v136, (v136 + 56 * v135), v137);
            }
          }

          if (v136)
          {
            if (v203 == v136)
            {
              v203 = 0;
              LODWORD(v204) = 0;
            }

            WTF::fastFree(v136, v10);
          }
        }

        goto LABEL_23;
      }
    }
  }

  if (!v13)
  {
LABEL_23:
    v209 = v203;
    v21 = v204;
    v203 = 0;
    v204 = 0;
    v210 = v21;
    v211 = 1;
    WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v203, v10);
    v23 = WTF::fastMalloc(0x10);
    *v23 = 0;
    *(v23 + 8) = 0;
    v24 = v209;
    v209 = 0;
    *v23 = v24;
    LODWORD(v24) = v210;
    LODWORD(v210) = 0;
    *(v23 + 8) = v24;
    LODWORD(v24) = HIDWORD(v210);
    HIDWORD(v210) = 0;
    *(v23 + 12) = v24;
    if (v211)
    {
      WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v209, v22);
    }

    goto LABEL_27;
  }

  LODWORD(v204) = 56 * v13 / 0x38u;
  v203 = WTF::fastMalloc((56 * v13));
  while (1)
  {
    IPC::Decoder::decode<JSC::ArrayBufferContents>(&v180, a1);
    v14 = v185;
    if (v185)
    {
      v15 = HIDWORD(v204);
      if (HIDWORD(v204) == v204)
      {
        WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,JSC::ArrayBufferContents>(&v203, &v180);
      }

      else
      {
        v16 = v203 + 56 * HIDWORD(v204);
        *(v16 + 1) = 0u;
        *(v16 + 2) = 0u;
        v16[48] = 0;
        *v16 = 0u;
        *v16 = v180;
        *&v180 = 0;
        v17 = *(v16 + 1);
        *(v16 + 1) = *(&v180 + 1);
        *(&v180 + 1) = v17;
        v18 = *(v16 + 2);
        *(v16 + 2) = v181;
        v181 = v18;
        v19 = *(v16 + 3);
        *(v16 + 3) = v182;
        v182 = v19;
        *(v16 + 4) = v183;
        *&v183 = 0;
        v20 = *(v16 + 5);
        *(v16 + 5) = *(&v183 + 1);
        *(&v183 + 1) = v20;
        v16[48] = v184;
        LOBYTE(v184) = 0;
        HIDWORD(v204) = v15 + 1;
      }
    }

    if (v185 == 1)
    {
      JSC::ArrayBufferContents::~ArrayBufferContents(&v180);
    }

    if ((v14 & 1) == 0)
    {
      break;
    }

    if (!--v13)
    {
      goto LABEL_23;
    }
  }

LABEL_166:
  v211 = 0;
  WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v203, v10);
LABEL_167:
  v138 = *a1;
  v139 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v140 = *(a1 + 3);
  if (v140 && v139)
  {
    (*(*v140 + 16))(v140, v138);
  }

LABEL_168:
  v141 = *a1;
  v142 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v143 = *(a1 + 3);
  if (v143 && v142)
  {
    (*(*v143 + 16))(v143, v141);
  }

  v25 = 0;
  v23 = 0;
LABEL_28:
  v26 = *(a1 + 1);
  v27 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v28 = *a1;
  v29 = v27 - *a1;
  v30 = v26 >= v29;
  v31 = v26 - v29;
  if (!v30 || v31 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v147 = *(a1 + 3);
    if (v147)
    {
      if (v26)
      {
        (*(*v147 + 16))(v147);
        v26 = *(a1 + 1);
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_193:
    *a1 = 0;
    *(a1 + 1) = 0;
    v148 = *(a1 + 3);
    if (v148 && v26)
    {
      (*(*v148 + 16))(v148);
    }

    LOBYTE(v209) = 0;
    v211 = 0;
LABEL_51:
    v50 = *a1;
    v51 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v52 = *(a1 + 3);
    if (v52 && v51)
    {
      (*(*v52 + 16))(v52, v50);
    }

    goto LABEL_52;
  }

  *(a1 + 2) = v27 + 1;
  if (!v27)
  {
    goto LABEL_193;
  }

  v32 = *v27;
  v180 = 0uLL;
  if (v32 < 0x20000)
  {
    if (!v32)
    {
      goto LABEL_42;
    }

    v33 = WTF::fastMalloc((8 * v32));
    DWORD2(v180) = v32;
    *&v180 = v33;
    while (1)
    {
      IPC::Decoder::decode<std::unique_ptr<WebCore::DetachedRTCDataChannel>>(&v203, a1);
      if ((v204 & 1) == 0)
      {
        goto LABEL_50;
      }

      v35 = HIDWORD(v180);
      if (HIDWORD(v180) == DWORD2(v180))
      {
        v36 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v180, HIDWORD(v180) + 1, &v203);
        v37 = HIDWORD(v180);
        v38 = HIDWORD(v180) + 1;
        v39 = v180;
        v40 = *v36;
        *v36 = 0;
        *(v39 + 8 * v37) = v40;
        HIDWORD(v180) = v38;
        if ((v204 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v41 = v203;
        v203 = 0;
        *(v180 + 8 * HIDWORD(v180)) = v41;
        HIDWORD(v180) = v35 + 1;
      }

      std::unique_ptr<WebCore::DetachedRTCDataChannel>::reset[abi:sn200100](&v203, 0);
LABEL_41:
      if (!--v32)
      {
        goto LABEL_42;
      }
    }
  }

  do
  {
    IPC::Decoder::decode<std::unique_ptr<WebCore::DetachedRTCDataChannel>>(&v203, a1);
    if ((v204 & 1) == 0)
    {
LABEL_50:
      LOBYTE(v209) = 0;
      v211 = 0;
      WTF::Vector<std::unique_ptr<WebCore::DetachedRTCDataChannel>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v180, v34);
      goto LABEL_51;
    }

    v43 = HIDWORD(v180);
    if (HIDWORD(v180) != DWORD2(v180))
    {
      v49 = v203;
      v203 = 0;
      *(v180 + 8 * HIDWORD(v180)) = v49;
      HIDWORD(v180) = v43 + 1;
LABEL_47:
      std::unique_ptr<WebCore::DetachedRTCDataChannel>::reset[abi:sn200100](&v203, 0);
      goto LABEL_48;
    }

    v44 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v180, HIDWORD(v180) + 1, &v203);
    v45 = HIDWORD(v180);
    v46 = HIDWORD(v180) + 1;
    v47 = v180;
    v48 = *v44;
    *v44 = 0;
    *(v47 + 8 * v45) = v48;
    HIDWORD(v180) = v46;
    if (v204)
    {
      goto LABEL_47;
    }

LABEL_48:
    --v32;
  }

  while (v32);
  if (DWORD2(v180) > HIDWORD(v180))
  {
    v144 = v180;
    if (HIDWORD(v180))
    {
      DWORD2(v180) = HIDWORD(v180);
      *&v180 = WTF::fastRealloc(v180, (8 * HIDWORD(v180)));
    }

    else if (v180)
    {
      *&v180 = 0;
      DWORD2(v180) = 0;
      WTF::fastFree(v144, v28);
    }
  }

LABEL_42:
  v42 = *(&v180 + 1);
  v209 = v180;
  v180 = 0uLL;
  v210 = v42;
  v211 = 1;
  WTF::Vector<std::unique_ptr<WebCore::DetachedRTCDataChannel>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v180, v28);
LABEL_52:
  v53 = *(a1 + 1);
  v54 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v55 = *a1;
  v56 = v54 - *a1;
  v30 = v53 >= v56;
  v57 = v53 - v56;
  if (!v30 || v57 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v149 = *(a1 + 3);
    if (v149)
    {
      if (v53)
      {
        (*(*v149 + 16))(v149);
        v53 = *(a1 + 1);
      }
    }

    else
    {
      v53 = 0;
    }

LABEL_197:
    *a1 = 0;
    *(a1 + 1) = 0;
    v150 = *(a1 + 3);
    if (v150 && v53)
    {
      (*(*v150 + 16))(v150);
    }

    LOBYTE(v203) = 0;
    v205 = 0;
LABEL_79:
    v78 = *a1;
    v79 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v80 = *(a1 + 3);
    if (v80 && v79)
    {
      (*(*v80 + 16))(v80, v78);
    }

    goto LABEL_80;
  }

  *(a1 + 2) = v54 + 1;
  if (!v54)
  {
    goto LABEL_197;
  }

  v59 = *v54;
  v180 = 0uLL;
  if (v59 < 0x20000)
  {
    if (!v59)
    {
      goto LABEL_69;
    }

    v60 = WTF::fastMalloc((8 * v59));
    DWORD2(v180) = v59;
    *&v180 = v60;
    while (2)
    {
      IPC::Decoder::decode<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>>(&v200, a1);
      if ((v201 & 1) == 0)
      {
        goto LABEL_78;
      }

      v61 = HIDWORD(v180);
      if (HIDWORD(v180) == DWORD2(v180))
      {
        v62 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v180, HIDWORD(v180) + 1, &v200);
        v63 = HIDWORD(v180);
        v64 = HIDWORD(v180) + 1;
        v65 = v180;
        v66 = *v62;
        *v62 = 0;
        *(v65 + 8 * v63) = v66;
        HIDWORD(v180) = v64;
        if ((v201 & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v67 = v200;
        v200 = 0;
        *(v180 + 8 * HIDWORD(v180)) = v67;
        HIDWORD(v180) = v61 + 1;
      }

      v68 = v200;
      v200 = 0;
      if (v68)
      {
        WTF::ThreadSafeRefCounted<WebCore::WebCodecsEncodedAudioChunkStorage,(WTF::DestructionThread)0>::deref(v68, v55);
      }

LABEL_68:
      if (!--v59)
      {
        goto LABEL_69;
      }

      continue;
    }
  }

  while (2)
  {
    IPC::Decoder::decode<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>>(&v200, a1);
    if ((v201 & 1) == 0)
    {
LABEL_78:
      LOBYTE(v203) = 0;
      v205 = 0;
      WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v180, v55);
      goto LABEL_79;
    }

    v70 = HIDWORD(v180);
    if (HIDWORD(v180) == DWORD2(v180))
    {
      v71 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v180, HIDWORD(v180) + 1, &v200);
      v72 = HIDWORD(v180);
      v73 = HIDWORD(v180) + 1;
      v74 = v180;
      v75 = *v71;
      *v71 = 0;
      *(v74 + 8 * v72) = v75;
      HIDWORD(v180) = v73;
      if ((v201 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v76 = v200;
      v200 = 0;
      *(v180 + 8 * HIDWORD(v180)) = v76;
      HIDWORD(v180) = v70 + 1;
    }

    v77 = v200;
    v200 = 0;
    if (v77)
    {
      WTF::ThreadSafeRefCounted<WebCore::WebCodecsEncodedAudioChunkStorage,(WTF::DestructionThread)0>::deref(v77, v55);
    }

LABEL_76:
    if (--v59)
    {
      continue;
    }

    break;
  }

  if (DWORD2(v180) > HIDWORD(v180))
  {
    v145 = v180;
    if (HIDWORD(v180))
    {
      DWORD2(v180) = HIDWORD(v180);
      *&v180 = WTF::fastRealloc(v180, (8 * HIDWORD(v180)));
    }

    else if (v180)
    {
      *&v180 = 0;
      DWORD2(v180) = 0;
      WTF::fastFree(v145, v55);
    }
  }

LABEL_69:
  v69 = *(&v180 + 1);
  v203 = v180;
  v180 = 0uLL;
  v204 = v69;
  v205 = 1;
  WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v180, v55);
LABEL_80:
  v81 = *(a1 + 1);
  v82 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v83 = *a1;
  v84 = v82 - *a1;
  v30 = v81 >= v84;
  v85 = v81 - v84;
  if (!v30 || v85 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v151 = *(a1 + 3);
    if (v151)
    {
      if (v81)
      {
        (*(*v151 + 16))(v151);
        v81 = *(a1 + 1);
      }
    }

    else
    {
      v81 = 0;
    }

LABEL_201:
    *a1 = 0;
    *(a1 + 1) = 0;
    v152 = *(a1 + 3);
    if (v152 && v81)
    {
      (*(*v152 + 16))(v152);
    }

    LOBYTE(v200) = 0;
    v202 = 0;
LABEL_114:
    v99 = *a1;
    v117 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v118 = *(a1 + 3);
    if (v118)
    {
      if (v117)
      {
        (*(*v118 + 16))(v118, v99);
        if (*a1)
        {
          v98 = 0;
          goto LABEL_98;
        }
      }
    }

    LOBYTE(v163[0]) = 0;
    v179 = 0;
    goto LABEL_116;
  }

  *(a1 + 2) = v82 + 1;
  if (!v82)
  {
    goto LABEL_201;
  }

  v87 = *v82;
  v180 = 0uLL;
  if (v87 < 0x20000)
  {
    if (!v87)
    {
      goto LABEL_97;
    }

    v88 = WTF::fastMalloc((8 * v87));
    DWORD2(v180) = v87;
    *&v180 = v88;
    while (2)
    {
      IPC::Decoder::decode<WTF::RefPtr<WebCore::WebCodecsEncodedAudioChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedAudioChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedAudioChunkStorage>>>(&v212, a1);
      if ((v213 & 1) == 0)
      {
        goto LABEL_113;
      }

      v89 = HIDWORD(v180);
      if (HIDWORD(v180) == DWORD2(v180))
      {
        v90 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v180, HIDWORD(v180) + 1, &v212);
        v91 = HIDWORD(v180);
        v92 = HIDWORD(v180) + 1;
        v93 = v180;
        v94 = *v90;
        *v90 = 0;
        *(v93 + 8 * v91) = v94;
        HIDWORD(v180) = v92;
        if ((v213 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v95 = v212;
        v212 = 0;
        *(v180 + 8 * HIDWORD(v180)) = v95;
        HIDWORD(v180) = v89 + 1;
      }

      v96 = v212;
      v212 = 0;
      if (v96)
      {
        WTF::ThreadSafeRefCounted<WebCore::WebCodecsEncodedAudioChunkStorage,(WTF::DestructionThread)0>::deref(v96, v83);
      }

LABEL_96:
      if (!--v87)
      {
        goto LABEL_97;
      }

      continue;
    }
  }

  while (2)
  {
    IPC::Decoder::decode<WTF::RefPtr<WebCore::WebCodecsEncodedAudioChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedAudioChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedAudioChunkStorage>>>(&v212, a1);
    if ((v213 & 1) == 0)
    {
LABEL_113:
      LOBYTE(v200) = 0;
      v202 = 0;
      WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v180, v83);
      goto LABEL_114;
    }

    v109 = HIDWORD(v180);
    if (HIDWORD(v180) == DWORD2(v180))
    {
      v110 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v180, HIDWORD(v180) + 1, &v212);
      v111 = HIDWORD(v180);
      v112 = HIDWORD(v180) + 1;
      v113 = v180;
      v114 = *v110;
      *v110 = 0;
      *(v113 + 8 * v111) = v114;
      HIDWORD(v180) = v112;
      if ((v213 & 1) == 0)
      {
        goto LABEL_111;
      }
    }

    else
    {
      v115 = v212;
      v212 = 0;
      *(v180 + 8 * HIDWORD(v180)) = v115;
      HIDWORD(v180) = v109 + 1;
    }

    v116 = v212;
    v212 = 0;
    if (v116)
    {
      WTF::ThreadSafeRefCounted<WebCore::WebCodecsEncodedAudioChunkStorage,(WTF::DestructionThread)0>::deref(v116, v83);
    }

LABEL_111:
    if (--v87)
    {
      continue;
    }

    break;
  }

  if (DWORD2(v180) > HIDWORD(v180))
  {
    v146 = v180;
    if (HIDWORD(v180))
    {
      DWORD2(v180) = HIDWORD(v180);
      *&v180 = WTF::fastRealloc(v180, (8 * HIDWORD(v180)));
    }

    else if (v180)
    {
      *&v180 = 0;
      DWORD2(v180) = 0;
      WTF::fastFree(v146, v83);
    }
  }

LABEL_97:
  v97 = *(&v180 + 1);
  v200 = v180;
  v180 = 0uLL;
  v201 = v97;
  v98 = 1;
  v202 = 1;
  WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v180, v83);
  if (!*a1)
  {
    LOBYTE(v163[0]) = 0;
    v179 = 0;
    goto LABEL_104;
  }

LABEL_98:
  if ((v208 & 1) == 0)
  {
    goto LABEL_135;
  }

  v101 = v206;
  v102 = v207;
  v206 = 0;
  v207 = 0;
  if ((v25 & 1) == 0)
  {
    goto LABEL_135;
  }

  if ((v211 & 1) == 0)
  {
    goto LABEL_135;
  }

  v103 = v209;
  v104 = v210;
  v209 = 0;
  v210 = 0;
  if ((v205 & 1) == 0)
  {
    goto LABEL_135;
  }

  v105 = v203;
  v106 = v204;
  v203 = 0;
  v204 = 0;
  if ((v98 & 1) == 0)
  {
    goto LABEL_135;
  }

  *&v100 = 0;
  v107 = v200;
  v200 = 0;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0;
  v180 = v100;
  v163[0] = v101;
  v163[1] = v102;
  v181 = 0;
  v182 = 0;
  v163[2] = v23;
  v163[3] = v103;
  v183 = 0u;
  v163[4] = v104;
  v163[5] = v105;
  v184 = 0;
  v163[6] = v106;
  v185 = 0u;
  v163[7] = v107;
  v108 = v201;
  v201 = 0;
  v163[8] = v108;
  v186 = 0u;
  v164 = v100;
  v165 = 0u;
  v187 = v100;
  v188 = 0u;
  v166 = 0u;
  v167 = 0u;
  v189 = 0u;
  v190 = 0;
  v170 = 0u;
  v169 = 0u;
  v168 = 0u;
  v171 = 0;
  v172 = 0;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0;
  v179 = 1;
  WebCore::SerializedScriptValue::Internals::~Internals(&v180, v99);
  v23 = 0;
  if (v202)
  {
LABEL_104:
    WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v200, v99);
  }

LABEL_116:
  if (v205 == 1)
  {
    WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v203, v99);
  }

  if (v211 == 1)
  {
    WTF::Vector<std::unique_ptr<WebCore::DetachedRTCDataChannel>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v209, v99);
  }

  if (v23)
  {
    v119 = v25;
  }

  else
  {
    v119 = 0;
  }

  if (v119 == 1)
  {
    v120 = WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23, v99);
    WTF::fastFree(v120, v121);
  }

  if (v208 == 1)
  {
    v125 = v206;
    if (v206)
    {
      v206 = 0;
      LODWORD(v207) = 0;
      WTF::fastFree(v125, v99);
    }
  }

  v122 = v179;
  if ((v179 & 1) == 0)
  {
    goto LABEL_136;
  }

  while (*a1)
  {
    if (v122)
    {
      v123 = WTF::fastMalloc(0x120);
      WebCore::SerializedScriptValue::SerializedScriptValue();
      if (v179)
      {
        WebCore::SerializedScriptValue::Internals::~Internals(v163, v124);
      }

      *a2 = v123;
      goto LABEL_132;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    v99 = *a1;
    v126 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v127 = *(a1 + 3);
    if (v127 && v126)
    {
      (*(*v127 + 16))(v127, v99);
      v122 = v179;
    }

    else
    {
      v122 = 0;
    }
  }

  if (v122)
  {
    WebCore::SerializedScriptValue::Internals::~Internals(v163, v99);
  }

LABEL_140:
  *a2 = 0;
  *(a2 + 8) = 0;
}

void sub_19D7FEA20(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (a45 == 1)
  {
    WebCore::SerializedScriptValue::Internals::~Internals(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    if (result[3] > a2)
    {
      result = WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v4 = *v3;
    if (a2)
    {
      if (v3[2])
      {
        v3[2] = a2;
        result = WTF::fastRealloc(v4, (8 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v5 = v3[3];
      result = WTF::fastMalloc((8 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v4)
      {
        result = memcpy(result, v4, 8 * v5);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

unsigned int *WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, unint64_t a2)
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
      v5 = (*result + 8 * a2);
      v6 = 8 * v2 - 8 * a2;
      do
      {
        result = *v5;
        *v5 = 0;
        if (result)
        {
          result = WTF::RefCounted<WebKit::FrameState>::deref(result);
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    v4[3] = v3;
  }

  return result;
}

unsigned int *WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WTF::AtomString>::destruct((*result + 8 * a2), (*result + 8 * v4));
      v3[3] = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (v3[2])
      {
        v3[2] = a2;
        result = WTF::fastRealloc(v5, (8 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((8 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v5)
      {
        result = memcpy(result, v5, 8 * v4);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 48 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::TextRecognitionWordData,void>::encode(a1, v6);
      v6 += 48;
      v7 -= 48;
    }

    while (v7);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::TextRecognitionWordData>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v21);
  result = IPC::Decoder::decode<WebCore::FloatQuad>(a2, v19);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (v5 <= &v6[-*a2])
  {
    goto LABEL_27;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_29;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    v18 = *v6;
    goto LABEL_33;
  }

  for (i = 1; ; i = 0)
  {
    if (v8)
    {
      v10 = i;
    }

    else
    {
      v10 = 0;
    }

    if (!v7)
    {
LABEL_34:
      v13 = 0;
      *a1 = 0;
      goto LABEL_15;
    }

    if (v22 & 1) != 0 && (v20 & 1) != 0 && (i)
    {
      break;
    }

    __break(1u);
LABEL_27:
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      if (v5)
      {
        (*(*v16 + 16))(v16);
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
    v17 = *(a2 + 3);
    if (v17)
    {
      if (v5)
      {
        (*(*v17 + 16))(v17);
        v18 = 0;
        v7 = *a2;
        v5 = *(a2 + 1);
        goto LABEL_33;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    v18 = 0;
LABEL_33:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result || !v5)
    {
      goto LABEL_34;
    }

    result = (*(*result + 16))(result, v7);
    v7 = *a2;
    v8 = v18;
  }

  v11 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  v12 = v19[1];
  *(a1 + 8) = v19[0];
  *(a1 + 24) = v12;
  *a1 = v11;
  *(a1 + 40) = v10;
  v13 = 1;
LABEL_15:
  *(a1 + 48) = v13;
  if (v22 == 1 && (result = v21, v21 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
    if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v13)
    {
      return result;
    }

LABEL_21:
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v14)
    {
      v15 = *(*result + 16);

      return v15();
    }
  }

  return result;
}

void sub_19D7FF0CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16)
{
  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7FF278);
    }

    v3 = *a1;
    v4 = (*a1 + 48 * *(a1 + 12));
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(a1 + 8) = v5 / 0x30;
    *a1 = v6;
    WTF::VectorTypeOperations<WebCore::TextRecognitionWordData>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::TextRecognitionWordData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      v7 = *(v5 + 8);
      v8 = *(v5 + 24);
      *(a3 + 40) = *(v5 + 40);
      *(a3 + 24) = v8;
      *(a3 + 8) = v7;
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 48;
      v5 = (v5 + 48);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 56 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::TextRecognitionLineData,void>::encode(a1, v6);
      v6 += 56;
      v7 -= 56;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = *a2 + 24 * v5;
    v8 = v6;
    do
    {
      v9 = *v8;
      v8 += 3;
      IPC::encodeObjectDirectly<DDScannerResult>(a1, v9);
      result = IPC::VectorArgumentCoder<false,WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (v6 + 1));
      v6 = v8;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 40 * v5;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(a1, (v6 + 8));
      v6 += 40;
    }

    while (v6 != v7);
  }

  return result;
}

WTF *IPC::Decoder::decode<WebCore::TextRecognitionLineData>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::FloatQuad>(a2, &v64);
  v5 = *(a2 + 1);
  v6 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a2;
  v8 = v6 - *a2;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v53 = *(a2 + 3);
    if (v53)
    {
      if (v5)
      {
        (*(*v53 + 16))(v53);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_73;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_73:
    *a2 = 0;
    *(a2 + 1) = 0;
    v54 = *(a2 + 3);
    if (v54 && v5)
    {
      (*(*v54 + 16))(v54);
    }

    LOBYTE(v62) = 0;
    v63 = 0;
    goto LABEL_41;
  }

  v12 = *v6;
  v69 = 0;
  v70 = 0;
  if (v12 >= 0x5555)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::TextRecognitionWordData>(v67, a2);
      v25 = v68;
      if ((v68 & 1) == 0)
      {
        break;
      }

      v26 = HIDWORD(v70);
      if (HIDWORD(v70) == v70)
      {
        v27 = WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v69, HIDWORD(v70) + 1, v67);
        v26 = HIDWORD(v70);
        v28 = v69 + 48 * HIDWORD(v70);
        v29 = *v27;
        *v27 = 0;
        *v28 = v29;
        v30 = *(v27 + 8);
        v31 = *(v27 + 24);
        v28[40] = *(v27 + 40);
      }

      else
      {
        v28 = v69 + 48 * HIDWORD(v70);
        v32 = *v67;
        *v67 = 0;
        *v28 = v32;
        v30 = *&v67[8];
        v31 = *&v67[24];
        v28[40] = v67[40];
      }

      *(v28 + 24) = v31;
      *(v28 + 8) = v30;
      HIDWORD(v70) = v26 + 1;
      if (v68)
      {
        v33 = *v67;
        *v67 = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v7);
        }

        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      if (!--v12)
      {
        v34 = HIDWORD(v70);
        if (v70 <= HIDWORD(v70))
        {
          goto LABEL_20;
        }

        result = v69;
        if (HIDWORD(v70))
        {
          v61 = v69;
          if (HIDWORD(v70) >= 0x5555556)
          {
            __break(0xC471u);
            goto LABEL_106;
          }

          v35 = WTF::fastMalloc((48 * HIDWORD(v70)));
          result = v61;
          LODWORD(v70) = 48 * v34 / 0x30;
          v69 = v35;
          if (v35 != v61)
          {
            WTF::VectorTypeOperations<WebCore::TextRecognitionWordData>::move(v61, (v61 + 48 * v34), v35);
            result = v61;
          }
        }

        if (result)
        {
          if (v69 == result)
          {
            v69 = 0;
            LODWORD(v70) = 0;
          }

          WTF::fastFree(result, v7);
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    if (!v12)
    {
LABEL_20:
      *&v62 = v69;
      v23 = v70;
      v69 = 0;
      v70 = 0;
      *(&v62 + 1) = v23;
      v63 = 1;
      result = WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v7);
      goto LABEL_42;
    }

    v13 = WTF::fastMalloc((48 * v12));
    LODWORD(v70) = 48 * v12 / 0x30u;
    v69 = v13;
    while (1)
    {
      IPC::Decoder::decode<WebCore::TextRecognitionWordData>(v67, a2);
      v14 = v68;
      if ((v68 & 1) == 0)
      {
        break;
      }

      v15 = HIDWORD(v70);
      if (HIDWORD(v70) == v70)
      {
        v16 = WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v69, HIDWORD(v70) + 1, v67);
        v15 = HIDWORD(v70);
        v17 = v69 + 48 * HIDWORD(v70);
        v18 = *v16;
        *v16 = 0;
        *v17 = v18;
        v19 = *(v16 + 8);
        v20 = *(v16 + 24);
        v17[40] = *(v16 + 40);
      }

      else
      {
        v17 = v69 + 48 * HIDWORD(v70);
        v21 = *v67;
        *v67 = 0;
        *v17 = v21;
        v19 = *&v67[8];
        v20 = *&v67[24];
        v17[40] = v67[40];
      }

      *(v17 + 24) = v20;
      *(v17 + 8) = v19;
      HIDWORD(v70) = v15 + 1;
      if (v68)
      {
        v22 = *v67;
        *v67 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v7);
        }

        if ((v14 & 1) == 0)
        {
          break;
        }
      }

      if (!--v12)
      {
        goto LABEL_20;
      }
    }
  }

  LOBYTE(v62) = 0;
  v63 = 0;
  WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v7);
LABEL_41:
  v36 = *a2;
  v37 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v37)
  {
    result = (*(*result + 16))(result, v36);
  }

LABEL_42:
  v38 = *(a2 + 1);
  v39 = *(a2 + 2);
  v40 = *a2;
  if (v38 <= &v39[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v55 = *(a2 + 3);
    if (v55)
    {
      if (v38)
      {
        (*(*v55 + 16))(v55);
        v38 = *(a2 + 1);
      }
    }

    else
    {
      v38 = 0;
    }

LABEL_77:
    *a2 = 0;
    *(a2 + 1) = 0;
    v56 = *(a2 + 3);
    if (v56)
    {
      if (v38)
      {
        (*(*v56 + 16))(v56);
        v42 = 0;
        v40 = *a2;
        v38 = *(a2 + 1);
        goto LABEL_80;
      }
    }

    else
    {
      v38 = 0;
    }

    v40 = 0;
    v42 = 0;
    goto LABEL_80;
  }

  v41 = v39 + 1;
  *(a2 + 2) = v39 + 1;
  if (!v39)
  {
    goto LABEL_77;
  }

  v42 = *v39;
  if (v42 < 2)
  {
    v43 = 1;
    goto LABEL_46;
  }

LABEL_80:
  *a2 = 0;
  *(a2 + 1) = 0;
  v57 = *(a2 + 3);
  if (!v57 || !v38)
  {
    v44 = 0;
    v43 = 0;
    v58 = 0;
    v40 = 0;
LABEL_82:
    *a2 = 0;
    *(a2 + 1) = 0;
    v59 = *(a2 + 3);
    if (v59 && v58)
    {
      (*(*v59 + 16))(v59, v40, v58);
      v45 = 0;
      v40 = *a2;
      v38 = *(a2 + 1);
    }

    else
    {
      v38 = 0;
      v40 = 0;
      v45 = 0;
    }

    goto LABEL_84;
  }

  result = (*(*v57 + 16))(v57, v40);
  v43 = 0;
  v40 = *a2;
  v38 = *(a2 + 1);
  v41 = *(a2 + 2);
LABEL_46:
  if (v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  if (v38 <= v41 - v40)
  {
    v58 = 0;
    v60 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v38 && v60)
    {
      (*(*v60 + 16))(v60);
      v40 = *a2;
      v58 = *(a2 + 1);
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_82;
  }

  *(a2 + 2) = v41 + 1;
  if (!v41)
  {
    v58 = v38;
    goto LABEL_82;
  }

  v45 = *v41;
  if (v45 < 2)
  {
    v46 = 1;
    goto LABEL_53;
  }

LABEL_84:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (!result || !v38)
  {
LABEL_85:
    v50 = 0;
    *a1 = 0;
    *(a1 + 56) = 0;
    goto LABEL_62;
  }

  result = (*(*result + 16))(result, v40);
  v46 = 0;
  v40 = *a2;
LABEL_53:
  if (v45)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (!v40)
  {
    goto LABEL_85;
  }

  if ((v66 & 1) == 0 || (v63 & 1) == 0 || (v43 & 1) == 0 || (v46 & 1) == 0)
  {
LABEL_106:
    __break(1u);
    return result;
  }

  *&v4 = 0;
  v48 = v65;
  *v67 = v64;
  *&v67[16] = v65;
  v49 = v62;
  v62 = v4;
  LOBYTE(v68) = v44;
  HIBYTE(v68) = v47;
  *a1 = v64;
  *(a1 + 16) = v48;
  *&v67[32] = v4;
  *(a1 + 32) = v49;
  *(a1 + 48) = v68;
  v50 = 1;
  *(a1 + 56) = 1;
  result = WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67[32], v40);
LABEL_62:
  if (v63 == 1)
  {
    result = WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v40);
  }

  if ((v50 & 1) == 0)
  {
    v51 = *a2;
    v52 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v52)
      {
        return (*(*result + 16))(result, v51);
      }
    }
  }

  return result;
}

void sub_19D7FFB4C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a13 == 1)
  {
    WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextRecognitionLineData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 56 * *(a1 + 12);
  v5 = *(v3 + 16);
  *v4 = *v3;
  *(v4 + 16) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 32, (v3 + 32));
  *(v4 + 48) = *(v3 + 48);
  ++*(a1 + 12);
  return 1;
}

void sub_19D7FFC40(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x4924925)
  {
    v2 = result;
    v3 = *result;
    v4 = *result + 56 * *(result + 12);
    v5 = 56 * a2;
    v6 = WTF::fastMalloc((56 * a2));
    *(v2 + 8) = v5 / 0x38;
    *v2 = v6;
    WTF::VectorMover<false,WebCore::TextRecognitionLineData>::move(v3, v4, v6);
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

uint64_t WTF::VectorMover<false,WebCore::TextRecognitionLineData>::move(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = a3 + 32;
    v5 = result + 32;
    do
    {
      v6 = *(v5 - 16);
      *(v4 - 32) = *(v5 - 32);
      *(v4 - 16) = v6;
      *v4 = 0;
      *(v4 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v5);
      *(v4 + 16) = *(v5 + 16);
      result = WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v7);
      v4 += 56;
      v8 = v5 + 24;
      v5 += 56;
    }

    while (v8 != a2);
  }

  return result;
}

void sub_19D7FFE48(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 56 * v3;
    v5 = *a1 + 32;
    do
    {
      v5 = WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, a2) + 56;
      v4 -= 56;
    }

    while (v4);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

void IPC::Decoder::decode<WebCore::TextRecognitionDataDetector>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WTF::RetainPtr<DDScannerResult>>(a2, &v16);
  IPC::Decoder::decode<WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v13, a2);
  v5 = *a2;
  if (!*a2)
  {
    goto LABEL_14;
  }

  if ((v17 & 1) == 0 || (v15 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_5;
  }

  WebCore::TextRecognitionDataDetector::TextRecognitionDataDetector(&v11, &v16, &v13);
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = 1;
LABEL_5:
  if (v15 == 1)
  {
    v6 = v13;
    if (v13)
    {
      v13 = 0;
      v14 = 0;
      WTF::fastFree(v6, v4);
    }
  }

  if (v17 == 1)
  {
    v7 = v16;
    v16 = 0;
    if (v7)
    {
    }
  }

  if (!v5)
  {
    v8 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v9 = a2[3];
    if (v9)
    {
      if (v8)
      {
        v10 = *(*v9 + 16);

        v10();
      }
    }
  }
}

void sub_19D7FFFFC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, int a13, int a14, char a15, void *a16, char a17)
{
  if (a15 == 1 && a12)
  {
    WTF::fastFree(a12, a2);
  }

  if (a17 == 1)
  {
    if (a16)
    {
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextRecognitionDataDetector>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  *v3 = 0;
  v7 = (v5 + 24 * v4);
  *v7 = v6;
  v7[1] = 0;
  v7[2] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v7 + 1), (v3 + 8));
  ++*(a1 + 12);
  return 1;
}

void sub_19D8000C8(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0xAAAAAAB)
  {
    v2 = result;
    v3 = *result;
    v4 = *result + 24 * *(result + 12);
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(v2 + 8) = v5 / 0x18;
    *v2 = v6;
    WTF::VectorMover<false,WebCore::TextRecognitionDataDetector>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebCore::TextRecognitionDataDetector>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a3 + 8);
    do
    {
      v6 = *v4;
      *v4 = 0;
      *v5 = 0;
      v5[1] = 0;
      *(v5 - 1) = v6;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v5, (v4 + 8));
      v8 = *(v4 + 8);
      if (v8)
      {
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        WTF::fastFree(v8, v7);
      }

      v9 = *v4;
      *v4 = 0;
      if (v9)
      {
      }

      v4 += 24;
      v5 += 3;
    }

    while (v4 != a2);
  }
}

void sub_19D8002F8(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(v2 - 8);
  *(v2 - 8) = 0;
  if (v5)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::VectorTypeOperations<WebCore::TextRecognitionDataDetector>::destruct(char *a1, char *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 1);
      if (v4)
      {
        *(v3 + 1) = 0;
        *(v3 + 4) = 0;
        WTF::fastFree(v4, a2);
      }

      v5 = *v3;
      *v3 = 0;
      if (v5)
      {
      }

      v3 += 24;
    }

    while (v3 != a2);
  }
}

uint64_t WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::TextRecognitionDataDetector>::destruct(*a1, (*a1 + 24 * v3));
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

WTF::StringImpl *IPC::Decoder::decode<WebCore::TextRecognitionBlockData>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v13);
  result = IPC::Decoder::decode<WebCore::FloatQuad>(a2, v11);
  if (!*a2)
  {
    goto LABEL_19;
  }

  if ((v14 & 1) == 0 || (v12 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    v8 = 0;
    *a1 = 0;
    goto LABEL_7;
  }

  v6 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v7 = v11[1];
  *(a1 + 8) = v11[0];
  *(a1 + 24) = v7;
  *a1 = v6;
  v8 = 1;
LABEL_7:
  *(a1 + 40) = v8;
  if (v14 == 1 && (result = v13, v13 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
    if (v8)
    {
      return result;
    }
  }

  else if (v8)
  {
    return result;
  }

  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v9)
  {
    v10 = *(*result + 16);

    return v10();
  }

  return result;
}

void sub_19D800504(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16)
{
  if ((a16 & 1) != 0 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8006A8);
    }

    v3 = *a1;
    v4 = (*a1 + 40 * *(a1 + 12));
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(a1 + 8) = v5 / 0x28;
    *a1 = v6;
    WTF::VectorTypeOperations<WebCore::TextRecognitionBlockData>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::TextRecognitionBlockData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      v7 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 8) = v7;
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

WTF::StringImpl *WTF::VectorDestructor<true,WebCore::TextRecognitionBlockData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
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

uint64_t WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::TextRecognitionBlockData>::destruct(*a1, (*a1 + 40 * v3));
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

void IPC::ArgumentCoder<WTF::RetainPtr<NSData>,void>::decode<NSData,NSData*>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v9[0] = v4;
  if (v4)
  {
    v5 = v4;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v8, v9, 1);
  IPC::decodeRequiringAllowedClasses<NSData,NSData*>(a1, a2);
  if (v8)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v8, v6);
  }

  v7 = v9[0];
  v9[0] = 0;
  if (v7)
  {
  }
}

void sub_19D800894(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void *a11)
{
  if (a10)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(a10, a2);
  }

  if (a11)
  {
  }

  _Unwind_Resume(exception_object);
}

void IPC::decodeRequiringAllowedClasses<NSData,NSData*>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::decodeObjectDirectlyRequiringAllowedClasses<NSData>(a1, &v6);
  if (v7 == 1)
  {
    v3 = v6;
    *a2 = v6;
    if (v3)
    {
      v5 = v3;
      v4 = v3;
      *(a2 + 8) = 1;
    }

    else
    {
      *(a2 + 8) = 1;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, WTF::StringImpl *a2@<X1>, char *a3@<X8>)
{
  v5 = *(this + 1);
  v6 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 - *this;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8 || v9 <= 7)
  {
    IPC::Decoder::markInvalid(this);
LABEL_39:
    result = IPC::Decoder::markInvalid(this);
    *a3 = 0;
    a3[16] = 0;
    return result;
  }

  *(this + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_39;
  }

  v11 = *v6;
  v28 = 0;
  v29 = 0;
  if (v11 >= 0xAAAA)
  {
    v14 = *a3;
    v15 = a3[16];
    while (1)
    {
      IPC::Decoder::decode<WebKit::ContentWorldData>(this, &v24);
      v16 = v27;
      if (v27)
      {
        if (HIDWORD(v29) == v29)
        {
          WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ContentWorldData>(&v28, &v24);
        }

        else
        {
          v18 = v28 + 24 * HIDWORD(v29);
          *v18 = v24;
          v19 = v25;
          v25 = 0;
          *(v18 + 8) = v19;
          *(v18 + 16) = v26;
          ++HIDWORD(v29);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      if (v27 == 1)
      {
        v17 = v25;
        v25 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, a2);
          }
        }
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_38;
      }

      if (!--v11)
      {
        *a3 = v14;
        a3[16] = v15;
        WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v28, HIDWORD(v29));
        goto LABEL_9;
      }
    }
  }

  if (v11)
  {
    LODWORD(v29) = 24 * v11 / 0x18u;
    v28 = WTF::fastMalloc((24 * v11));
    v14 = *a3;
    v15 = a3[16];
    while (1)
    {
      IPC::Decoder::decode<WebKit::ContentWorldData>(this, &v24);
      v20 = v27;
      if (v27)
      {
        if (HIDWORD(v29) == v29)
        {
          WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ContentWorldData>(&v28, &v24);
        }

        else
        {
          v22 = v28 + 24 * HIDWORD(v29);
          *v22 = v24;
          v23 = v25;
          v25 = 0;
          *(v22 + 8) = v23;
          *(v22 + 16) = v26;
          ++HIDWORD(v29);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      if (v27 == 1)
      {
        v21 = v25;
        v25 = 0;
        if (v21)
        {
          if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, a2);
          }
        }
      }

      if ((v20 & 1) == 0)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_9;
      }
    }

LABEL_38:
    *a3 = v14;
    a3[16] = v15;
    return WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, a2);
  }

LABEL_9:
  *a3 = v28;
  v12 = v29;
  v28 = 0;
  v29 = 0;
  *(a3 + 1) = v12;
  a3[16] = 1;
  return WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, a2);
}

void sub_19D800BF8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  *v16 = v18;
  v16[16] = v17;
  if (a12 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::ContentWorldData>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::ContentWorldData,void>::decode(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ContentWorldData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 24 * *(a1 + 12);
  *v4 = *v3;
  v5 = *(v3 + 8);
  *(v3 + 8) = 0;
  *(v4 + 8) = v5;
  *(v4 + 16) = *(v3 + 16);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D800E90);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::ContentWorldData>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebKit::ContentWorldData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
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
      *(a3 + 16) = *(v5 + 16);
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

uint64_t std::__optional_destruct_base<WebKit::ContentWorldData,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 24) == 1)
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

unsigned int *WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
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
        result = WTF::VectorMover<false,WebKit::ContentWorldData>::move(v5, (v5 + 24 * v4), result);
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

uint64_t WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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

_DWORD *IPC::VectorArgumentCoder<false,WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5 = *(this + 1);
  v6 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 - *this;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8 || v9 <= 7)
  {
    IPC::Decoder::markInvalid(this);
LABEL_35:
    result = IPC::Decoder::markInvalid(this);
    *a3 = 0;
    a3[16] = 0;
    return result;
  }

  *(this + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_35;
  }

  v11 = *v6;
  v23 = 0;
  v24 = 0;
  if (v11 >= 0x2762)
  {
    v14 = *a3;
    v15 = a3[16];
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebUserScriptData>(this, &v20);
      v16 = v22;
      if (v22)
      {
        if (HIDWORD(v24) == v24)
        {
          WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebUserScriptData>(&v23, &v20);
        }

        else
        {
          v17 = (v23 + 104 * HIDWORD(v24));
          *v17 = v20;
          WebCore::UserScript::UserScript((v17 + 1), v21);
          ++HIDWORD(v24);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      if (v22 == 1)
      {
        WebCore::UserScript::~UserScript(v21, a2);
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_34;
      }

      if (!--v11)
      {
        *a3 = v14;
        a3[16] = v15;
        WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v23, HIDWORD(v24));
        goto LABEL_9;
      }
    }
  }

  if (v11)
  {
    LODWORD(v24) = 104 * v11 / 0x68u;
    v23 = WTF::fastMalloc((104 * v11));
    v14 = *a3;
    v15 = a3[16];
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebUserScriptData>(this, &v20);
      v18 = v22;
      if (v22)
      {
        if (HIDWORD(v24) == v24)
        {
          WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebUserScriptData>(&v23, &v20);
        }

        else
        {
          v19 = (v23 + 104 * HIDWORD(v24));
          *v19 = v20;
          WebCore::UserScript::UserScript((v19 + 1), v21);
          ++HIDWORD(v24);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      if (v22 == 1)
      {
        WebCore::UserScript::~UserScript(v21, a2);
      }

      if ((v18 & 1) == 0)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_9;
      }
    }

LABEL_34:
    *a3 = v14;
    a3[16] = v15;
    return WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, a2);
  }

LABEL_9:
  *a3 = v23;
  v12 = v24;
  v23 = 0;
  v24 = 0;
  *(a3 + 1) = v12;
  a3[16] = 1;
  return WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, a2);
}

void sub_19D801314(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *v22 = v25;
  v22[16] = v24;
  if (a22 == 1)
  {
    WebCore::UserScript::~UserScript((v23 + 16), a2);
  }

  WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v26 - 80), a2);
  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebKit::WebUserScriptData>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::WebUserScriptData,void>::decode(a1, a2);
  if ((*(a2 + 104) & 1) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
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

void sub_19D8013D4(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 104) == 1)
  {
    WebCore::UserScript::~UserScript((v2 + 16), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebUserScriptData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 104 * *(a1 + 12));
  *v4 = *v3;
  WebCore::UserScript::UserScript((v4 + 1), (v3 + 16));
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 104 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x2762763)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8015CCLL);
    }

    v3 = *a1;
    v4 = *a1 + 104 * *(a1 + 12);
    v5 = 104 * a2;
    v6 = WTF::fastMalloc((104 * a2));
    *(a1 + 8) = v5 / 0x68;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::WebUserScriptData>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebKit::WebUserScriptData>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a3 + 16;
    do
    {
      *(v5 - 16) = *v4;
      WebCore::UserScript::UserScript(v5, (v4 + 16));
      WebCore::UserScript::~UserScript((v4 + 16), v6);
      v4 += 104;
      v5 += 104;
    }

    while (v4 != a2);
  }
}

void WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *a1, unint64_t a2)
{
  if (a1[2] > a2)
  {
    if (a1[3] > a2)
    {
      WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, a2);
    }

    v4 = *a1;
    if (a2)
    {
      if (a2 >= 0x2762763)
      {
        __break(0xC471u);
        return;
      }

      v5 = a1[3];
      v6 = (104 * a2);
      v7 = WTF::fastMalloc(v6);
      a1[2] = v6 / 0x68;
      *a1 = v7;
      if (v7 != v4)
      {
        WTF::VectorMover<false,WebKit::WebUserScriptData>::move(v4, v4 + 104 * v5, v7);
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

unsigned int *WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, unint64_t a2)
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
      v5 = 104 * v2 - 104 * a2;
      result = (104 * a2 + *result + 16);
      do
      {
        WebCore::UserScript::~UserScript(result, a2);
        result = (v6 + 104);
        v5 -= 104;
      }

      while (v5);
    }

    v4[3] = v3;
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 1);
  v6 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 - *this;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8 || v9 <= 7)
  {
    IPC::Decoder::markInvalid(this);
LABEL_26:
    result = IPC::Decoder::markInvalid(this);
    *a3 = 0;
    *(a3 + 16) = 0;
    return result;
  }

  *(this + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_26;
  }

  v11 = *v6;
  v22 = 0;
  v23 = 0;
  if (v11 >= 0x2222)
  {
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebUserStyleSheetData>(this, &v19);
      if ((v21 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (HIDWORD(v23) == v23)
      {
        WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebUserStyleSheetData>(&v22, &v19);
      }

      else
      {
        v16 = (v22 + 120 * HIDWORD(v23));
        *v16 = v19;
        WebCore::UserStyleSheet::UserStyleSheet((v16 + 1), v20);
        ++HIDWORD(v23);
      }

      std::optional<WebKit::WebUserStyleSheetData>::~optional(&v19, v15);
      if (!--v11)
      {
        WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v22, HIDWORD(v23));
        goto LABEL_9;
      }
    }
  }

  if (v11)
  {
    LODWORD(v23) = 120 * v11 / 0x78u;
    v22 = WTF::fastMalloc((120 * v11));
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebUserStyleSheetData>(this, &v19);
      if ((v21 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v23) == v23)
      {
        WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebUserStyleSheetData>(&v22, &v19);
      }

      else
      {
        v18 = (v22 + 120 * HIDWORD(v23));
        *v18 = v19;
        WebCore::UserStyleSheet::UserStyleSheet((v18 + 1), v20);
        ++HIDWORD(v23);
      }

      std::optional<WebKit::WebUserStyleSheetData>::~optional(&v19, v17);
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

LABEL_25:
    *a3 = 0;
    *(a3 + 16) = 0;
    std::optional<WebKit::WebUserStyleSheetData>::~optional(&v19, v14);
    return WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, a2);
  }

LABEL_9:
  *a3 = v22;
  v12 = v23;
  v22 = 0;
  v23 = 0;
  *(a3 + 8) = v12;
  *(a3 + 16) = 1;
  return WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, a2);
}

void sub_19D801994(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::optional<WebKit::WebUserStyleSheetData>::~optional(&a9, a2);
  WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9 - 64, v11);
  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::WebUserStyleSheetData>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::WebUserStyleSheetData,void>::decode(a1, a2);
  if ((a2[120] & 1) == 0)
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

void sub_19D801A34(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 120) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 80, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 64, v4);
    v6 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }

    v7 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WebKit::WebUserStyleSheetData>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 120) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 64, v3);
    v5 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  return a1;
}

uint64_t WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebUserStyleSheetData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 120 * *(a1 + 12));
  *v4 = *v3;
  WebCore::UserStyleSheet::UserStyleSheet((v4 + 1), (v3 + 16));
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 120 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x2222223)
    {
      __break(0xC471u);
      JUMPOUT(0x19D801CF8);
    }

    v3 = *a1;
    v4 = (*a1 + 120 * *(a1 + 12));
    v5 = 120 * a2;
    v6 = WTF::fastMalloc((120 * a2));
    *(a1 + 8) = v5 / 0x78;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::WebUserStyleSheetData>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebKit::WebUserStyleSheetData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = a3 + 16;
    v5 = result + 64;
    do
    {
      *(v4 - 16) = *(v5 - 64);
      WebCore::UserStyleSheet::UserStyleSheet(v4, (v5 - 48));
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + 16, v6);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v7);
      v9 = *(v5 - 40);
      *(v5 - 40) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
      }

      v10 = v5 - 64;
      result = *(v5 - 48);
      *(v5 - 48) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }
      }

      v4 += 120;
      v5 += 120;
    }

    while ((v10 + 120) != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorTypeOperations<WebKit::WebUserStyleSheetData>::destruct((*result + 120 * a2), (*result + 120 * v4));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >= 0x2222223)
      {
        __break(0xC471u);
        JUMPOUT(0x19D801EB8);
      }

      v6 = (120 * a2);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x78;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebKit::WebUserStyleSheetData>::move(v5, (v5 + 120 * v4), result);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::WebUserStyleSheetData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v3 + 10), a2);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v3 + 8), v4);
      v5 = v3[3];
      v3[3] = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      result = v3[2];
      v3[2] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 15;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, WTF::StringImpl *a2@<X1>, char *a3@<X8>)
{
  v5 = *(this + 1);
  v6 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 - *this;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8 || v9 <= 7)
  {
    IPC::Decoder::markInvalid(this);
LABEL_39:
    result = IPC::Decoder::markInvalid(this);
    *a3 = 0;
    a3[16] = 0;
    return result;
  }

  *(this + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_39;
  }

  v11 = *v6;
  v27 = 0;
  v28 = 0;
  if (v11 >= 0xAAAA)
  {
    v14 = *a3;
    v15 = a3[16];
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebScriptMessageHandlerData>(this, &v24);
      v16 = v26;
      if (v26)
      {
        if (HIDWORD(v28) == v28)
        {
          WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebScriptMessageHandlerData>(&v27, &v24);
        }

        else
        {
          v18 = v27 + 24 * HIDWORD(v28);
          *v18 = v24;
          v19 = v25;
          v25 = 0;
          *(v18 + 16) = v19;
          ++HIDWORD(v28);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      if (v26 == 1)
      {
        v17 = v25;
        v25 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, a2);
          }
        }
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_38;
      }

      if (!--v11)
      {
        *a3 = v14;
        a3[16] = v15;
        WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v27, HIDWORD(v28));
        goto LABEL_9;
      }
    }
  }

  if (v11)
  {
    LODWORD(v28) = 24 * v11 / 0x18u;
    v27 = WTF::fastMalloc((24 * v11));
    v14 = *a3;
    v15 = a3[16];
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebScriptMessageHandlerData>(this, &v24);
      v20 = v26;
      if (v26)
      {
        if (HIDWORD(v28) == v28)
        {
          WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebScriptMessageHandlerData>(&v27, &v24);
        }

        else
        {
          v22 = v27 + 24 * HIDWORD(v28);
          *v22 = v24;
          v23 = v25;
          v25 = 0;
          *(v22 + 16) = v23;
          ++HIDWORD(v28);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      if (v26 == 1)
      {
        v21 = v25;
        v25 = 0;
        if (v21)
        {
          if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, a2);
          }
        }
      }

      if ((v20 & 1) == 0)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_9;
      }
    }

LABEL_38:
    *a3 = v14;
    a3[16] = v15;
    return WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, a2);
  }

LABEL_9:
  *a3 = v27;
  v12 = v28;
  v27 = 0;
  v28 = 0;
  *(a3 + 1) = v12;
  a3[16] = 1;
  return WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, a2);
}

void sub_19D8021C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  *v16 = v18;
  v16[16] = v17;
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::WebScriptMessageHandlerData>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::WebScriptMessageHandlerData,void>::decode(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
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

uint64_t WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebScriptMessageHandlerData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 24 * *(a1 + 12);
  *v4 = *v3;
  v5 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v4 + 16) = v5;
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D802488);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorTypeOperations<WebKit::WebScriptMessageHandlerData>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::WebScriptMessageHandlerData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = *v5;
      v6 = v5[2];
      v5[2] = 0;
      *(a3 + 16) = v6;
      result = v5[2];
      v5[2] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 24;
      v5 += 3;
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorDestructor<true,WebCore::DOMCacheEngine::CacheInfo>::destruct((*result + 24 * this), (*result + 24 * v4));
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
        result = WTF::VectorTypeOperations<WebKit::WebScriptMessageHandlerData>::move(v5, (v5 + 24 * v4), result);
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

uint64_t WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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

uint64_t IPC::StreamConnectionEncoder::encodeSpan<long long const,18446744073709551615ul>(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = 8 * a3;
  v5 = *(a1 + 8);
  v6 = -*a1;
  v7 = v4 & 0xFFFFFFFFFFFFFFF8 | v6 & 7;
  if (v5 < v7)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    return v5 >= v7;
  }

  v8 = v6 & 7;
  if (v5 < v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 - v8 >= v4)
  {
    memcpy((*a1 + v8), a2, v4);
    v9 = *(a1 + 8);
    v10 = v9 >= v7;
    v11 = v9 - v7;
    if (!v10)
    {
      goto LABEL_9;
    }

    *a1 += v7;
    *(a1 + 8) = v11;
    return v5 >= v7;
  }

LABEL_10:
  result = 1067;
  __break(0xC471u);
  return result;
}

uint64_t IPC::ArgumentCoder<unsigned int,void>::encode<IPC::StreamConnectionEncoder>(uint64_t result, int a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) >= v3)
  {
    *(*result + (v2 & 3)) = a2;
    v4 = *(result + 8);
    v5 = v4 >= v3;
    v6 = v4 - v3;
    if (v5)
    {
      *result += v3;
      *(result + 8) = v6;
      return result;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = 8 * a3;
  v5 = *(a1 + 8);
  v6 = -*a1;
  v7 = v4 & 0xFFFFFFFFFFFFFFF8 | v6 & 7;
  if (v5 < v7)
  {
    goto LABEL_9;
  }

  v8 = v6 & 7;
  if (v5 < v8)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    *a1 = 0;
    *(a1 + 8) = 0;
    return v5 >= v7;
  }

  if (v5 - v8 >= v4)
  {
    memcpy((*a1 + v8), a2, v4);
    v9 = *(a1 + 8);
    v10 = v9 >= v7;
    v11 = v9 - v7;
    if (v10)
    {
      *a1 += v7;
      *(a1 + 8) = v11;
      return v5 >= v7;
    }

    goto LABEL_8;
  }

  result = 1067;
  __break(0xC471u);
  return result;
}

void *IPC::FixedVectorArgumentCoder<true,unsigned char>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v10);
  if (v12 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (result = (*(*result + 16))(result, v7), (v12)))
  {
    if (v11)
    {
      result = WTF::EmbeddedFixedVector<unsigned char,WTF::FastMalloc>::create<unsigned char const,18446744073709551615ul>(v10, v11, &v13);
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

    *a2 = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v6;
  return result;
}

char *WTF::EmbeddedFixedVector<unsigned char,WTF::FastMalloc>::create<unsigned char const,18446744073709551615ul>@<X0>(char *result@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  if (HIDWORD(a2))
  {
    __break(0xC471u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    result = WTF::fastMalloc((a2 + 4));
    *result = v4;
    if (v4)
    {
      v6 = result + 4;
      do
      {
        v7 = *v5++;
        *v6++ = v7;
        --v4;
      }

      while (v4);
    }

    *a3 = result;
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<WebCore::DOMCacheEngine::CacheInfo>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v12);
  result = IPC::Decoder::decode<WTF::String>(a2, &v10);
  if (*a2)
  {
    if (v13 & 1) != 0 && (v11)
    {
      v6 = v10;
      *a1 = v12;
      *(a1 + 16) = v6;
      *(a1 + 24) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (v11)
  {
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }
    }
  }

  v8 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v8)
  {
    v9 = *(*result + 16);

    return v9();
  }

  return result;
}

unint64_t WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = (*result + 24 * *(result + 3));
      v5 = 24 * a2;
      v6 = WTF::fastMalloc((24 * a2));
      *(v2 + 2) = v5 / 0x18;
      *v2 = v6;
      result = WTF::VectorTypeOperations<WebKit::WebScriptMessageHandlerData>::move(v3, v4, v6);
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

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>> const&,0ul>(a1, a2, a3);
  }

  else if (*(a2 + 8))
  {
    mpark::throw_bad_variant_access(a1);
  }
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>> const&,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 8) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    IPC::ArgumentCoder<WebCore::FormData,void>::encode(a1, v4);
  }

  else
  {

    IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>> const&,0ul,1ul>(a1, a2, a3);
  }
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>> const&,0ul,1ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 8) != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(a1, v4);
  }
}

uint64_t IPC::ArgumentCoder<std::span<double const,6ul>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, __int128 *a2)
{
  result = IPC::Encoder::grow(a1, 8uLL, 48);
  if (v4 <= 0x2F)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    *(result + 16) = a2[1];
    *(result + 32) = v6;
    *result = v5;
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 8))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *a2;

    return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v5);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 8) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(result, v4);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ExceptionCode>,void>::decode<IPC::Decoder>(uint64_t *a1)
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
      v5 = IPC::Decoder::decode<WebCore::ExceptionCode>(a1);
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

mpark *IPC::ArgumentCoder<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 24))
    {
      v8 = *(a2 + 16);
      IPC::Encoder::operator<<<BOOL>(a1, &v8);
      return IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2, v8);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 104 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::IDBCursorRecord,void>::encode(a1, v6);
      v6 += 104;
      v7 -= 104;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v9 = a1[3];
    if (v9)
    {
      if (v3)
      {
        (*(*v9 + 16))(v9);
        v5 = *v11;
        v3 = v11[1];
LABEL_13:
        *v11 = 0;
        v11[1] = 0;
        v10 = v11[3];
        if (v10)
        {
          if (v3)
          {
            (*(*v10 + 16))(v10, v5);
            v5 = *v11;
            v3 = v11[1];
LABEL_17:
            *v11 = 0;
            v11[1] = 0;
            result = v11[3];
            if (result)
            {
              if (v3)
              {
                result = (*(*result + 16))(result, v5);
              }
            }

LABEL_18:
            *a2 = 0;
            a2[32] = 0;
            return result;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_13;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v11 = a1;
    goto LABEL_13;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v11 = a1;
    goto LABEL_17;
  }

  if (v6)
  {
    result = IPC::Decoder::decode<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, v12);
    if (v13 == 1)
    {
      result = mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(a2, v12);
      a2[24] = 1;
      a2[32] = 1;
      if ((v13 & 1) == 0)
      {
        return result;
      }

      return mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v12, v8);
    }

    goto LABEL_18;
  }

  LOBYTE(v12[0]) = 0;
  v13 = 0;
  result = std::__optional_move_base<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__optional_move_base[abi:sn200100](a2, v12);
  a2[32] = 1;
  if (v13 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v12, v8);
  }

  return result;
}

void sub_19D803164(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&a11, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WebCore::IDBCursorRecord>(_BYTE *a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebCore::IDBKeyData>(a2, &v30);
  IPC::Decoder::decode<WebCore::IDBKeyData>(a2, &v27);
  result = IPC::Decoder::decode<WebCore::IDBValue>(v23, a2);
  if (!*a2)
  {
    goto LABEL_18;
  }

  if ((v32 & 1) == 0 || (v17 = v30, result = mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v18, v31), (v29 & 1) == 0) || (v18[12] = v27, result = mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v19, v28), (v26 & 1) == 0))
  {
    __break(1u);
LABEL_18:
    *a1 = 0;
    a1[104] = 0;
    goto LABEL_8;
  }

  *&v6 = 0;
  *v20 = *v23;
  v7 = v24;
  v24 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v21 = v7;
  v8 = v25;
  v25 = v6;
  v22 = v8;
  WebCore::IDBCursorRecord::IDBCursorRecord(a1, &v17);
  a1[104] = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v9);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20[1], v10);
  v12 = v20[0];
  v20[0] = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v12, v11);
  }

  mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v19, v11);
  result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v18, v13);
LABEL_8:
  if (v26 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v5);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23[1], v14);
    result = v23[0];
    v23[0] = 0;
    if (result)
    {
      result = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(result, v5);
    }
  }

  if (v29 == 1)
  {
    result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v28, v5);
  }

  if (v32 == 1)
  {
    result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v31, v5);
  }

  if ((a1[104] & 1) == 0)
  {
    v15 = *a2;
    v16 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v16)
      {
        return (*(*result + 16))(result, v15);
      }
    }
  }

  return result;
}

void sub_19D803374(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (*(v28 + 104) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28 + 88, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28 + 72, v30);
    v32 = *(v28 + 64);
    *(v28 + 64) = 0;
    if (v32)
    {
      WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v32, v31);
    }

    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v28 + 40, v31);
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v28 + 8, v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::IDBCursorRecord>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = WebCore::IDBCursorRecord::IDBCursorRecord(*a1 + 104 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 104 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    if (a2 >= 0x2762763)
    {
      __break(0xC471u);
      JUMPOUT(0x19D803648);
    }

    v2 = result;
    v3 = *result;
    v4 = *result + 104 * *(result + 12);
    v5 = 104 * a2;
    v6 = WTF::fastMalloc((104 * a2));
    *(v2 + 8) = v5 / 0x68;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::IDBCursorRecord>::move(v3, v4, v6);
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

  return result;
}

uint64_t WTF::VectorMover<false,WebCore::IDBCursorRecord>::move(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      WebCore::IDBCursorRecord::IDBCursorRecord(a3 + v6, v5 + v6);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6 + 88, v8);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6 + 72, v9);
      v11 = *(v5 + v6 + 64);
      *(v5 + v6 + 64) = 0;
      if (v11)
      {
        WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v11, v10);
      }

      mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v7 + 40, v10);
      result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v7 + 8, v12);
      v6 += 104;
    }

    while (v5 + v6 != a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, unsigned int *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[3]);
  v5 = a2[3];
  if (v5)
  {
    v6 = 32 * v5;
    v7 = (*a2 + 24);
    do
    {
      v10 = *(v7 - 23);
      IPC::Encoder::operator<<<BOOL>(a1, &v10);
      v8 = v7 - 16;
      v9 = *v7;
      v7 += 32;
      v11 = v9;
      IPC::Encoder::operator<<<BOOL>(a1, &v11);
      result = IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&>(a1, v8, v11);
      v6 -= 32;
    }

    while (v6);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::IDBValue,void>::encode(a1, v6);
      v6 += 40;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::IDBKeyData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 32 * *(a1 + 12));
  *v4 = *v3;
  result = mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor((v4 + 4), (v3 + 8));
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
      JUMPOUT(0x19D803990);
    }

    v3 = result;
    v4 = *result;
    v5 = (*result + 32 * *(result + 12));
    v6 = WTF::fastMalloc((32 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    result = WTF::VectorMover<false,WebCore::IDBKeyData>::move(v4, v5, v6);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v4, v7);
    }
  }

  return result;
}

uint64_t WTF::VectorMover<false,WebCore::IDBKeyData>::move(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = a3 + 8;
    v6 = result;
    do
    {
      v7 = *v6;
      v6 += 4;
      *(v5 - 8) = v7;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v5, v4 + 1);
      result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl((v4 + 1), v8);
      v5 += 32;
      v4 = v6;
    }

    while (v6 != a2);
  }

  return result;
}

WTF *WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::IDBValue>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  *v3 = 0;
  v7 = (v5 + 40 * v4);
  *v7 = v6;
  v7[1] = 0;
  v7[2] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v7 + 1), (v3 + 8));
  v7[3] = 0;
  v7[4] = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v7 + 3), (v3 + 24));
  ++*(a1 + 12);
  return result;
}

void sub_19D803A98(_Unwind_Exception *a1, void *a2)
{
  v6 = *v3;
  if (*v3)
  {
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  v8 = *v4;
  *v4 = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v8, v7);
  }

  _Unwind_Resume(a1);
}

unint64_t WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = (*result + 40 * *(result + 12));
      v5 = 40 * a2;
      v6 = WTF::fastMalloc((40 * a2));
      *(v2 + 8) = v5 / 0x28;
      *v2 = v6;
      result = WTF::VectorMover<false,WebCore::IDBValue>::move(v3, v4, v6);
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