uint64_t WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t result, void *a2)
{
  v2 = *(result + 12);
  if (v2)
  {
    v5 = result;
    WTF::VectorDestructor<true,WebCore::GradientColorStop>::destruct(*result, (*result + 16 * v2));
    result = v5;
  }

  v3 = *result;
  if (result + 16 != *result && v3 != 0)
  {
    *result = 0;
    *(result + 8) = 0;
    v6 = result;
    WTF::fastFree(v3, a2);
    return v6;
  }

  return result;
}

unsigned int *WTF::VectorDestructor<true,WebCore::GradientColorStop>::destruct(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 1);
      if ((v4 & 0x8000000000000) != 0)
      {
        result = (v4 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }
      }

      v3 += 4;
    }

    while (v3 != a2);
  }

  return result;
}

unsigned int *WTF::VectorBuffer<WebCore::GradientColorStop,2ul,WTF::FastMalloc>::adopt(uint64_t a1, unsigned int *a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    v10 = v5;
    if (v4)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v4, a2);
    }

    v5 = v10;
    *a1 = v10;
  }

  result = a2 + 4;
  v7 = *a2;
  if (*a2 == a2 + 4)
  {
    result = WTF::VectorMover<false,WebCore::GradientColorStop>::move(result, &result[4 * a2[3]], v5);
    v8 = a2[2];
  }

  else
  {
    *a2 = result;
    *a1 = v7;
    v8 = a2[2];
    a2[2] = 2;
  }

  *(a1 + 8) = v8;
  v9 = a2[3];
  a2[3] = 0;
  *(a1 + 12) = v9;
  return result;
}

unsigned int *WTF::VectorMover<false,WebCore::GradientColorStop>::move(unsigned int *result, unsigned int *a2, void *a3)
{
  if (result != a2)
  {
    v3 = result + 2;
    do
    {
      v4 = v3 - 1;
      *a3 = *(v3 - 2);
      a3[1] = 0;
      if (a3 != v3 - 1)
      {
        v5 = *v3;
        *v3 = 0;
        a3[1] = v5;
      }

      v6 = *v3;
      if ((*v3 & 0x8000000000000) != 0)
      {
        result = (v6 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          v10 = a3;
          v8 = a2;
          v9 = v3;
          v7 = v3 - 1;
          result = WTF::fastFree(result, a2);
          v4 = v7;
          a2 = v8;
          v3 = v9;
          a3 = v10;
        }
      }

      a3 += 2;
      v3 += 2;
    }

    while (v4 + 2 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::ApplicationManifest::Icon>::destruct(*a1, (*a1 + 72 * v3));
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

void sub_19D7DCEA0(_Unwind_Exception *exception_object, void *a2)
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::ApplicationManifest::Icon>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[7];
      v3[7] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v3 + 5), a2);
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 9;
    }

    while (v3 != a2);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebCore::ApplePayError>::deref(_DWORD *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebCore::ApplePayError::~ApplePayError((result - 2), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::ApplePayInstallmentItem>::destruct(*a1, (*a1 + 48 * v3));
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::ApplePayInstallmentItem>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 5);
      *(v3 + 5) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = *(v3 + 4);
      *(v3 + 4) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(v3 + 3);
      *(v3 + 3) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *(v3 + 2);
      *(v3 + 2) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      result = *(v3 + 1);
      *(v3 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 = (v3 + 48);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::ApplePayShippingMethod>::destruct(*a1, (*a1 + 104 * v3));
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::ApplePayShippingMethod>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
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

      v6 = v3[1];
      v3[1] = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
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

      v3 += 13;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::ApplePayLineItem>::destruct(*a1, (*a1 + 80 * v3));
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::ApplePayLineItem>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 8);
      *(v3 + 8) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = *(v3 + 2);
      *(v3 + 2) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      result = *(v3 + 1);
      *(v3 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 = (v3 + 80);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::WebLockManagerSnapshot::Info>::destruct(*a1, (*a1 + 24 * v3));
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::WebLockManagerSnapshot::Info>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[2];
      v3[2] = 0;
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

uint64_t IPC::Decoder::markInvalid(IPC::Decoder *this)
{
  v1 = *this;
  v2 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  result = *(this + 3);
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return (*(*result + 16))(result, v1);
  }

  return result;
}

uint64_t std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7DD3E4(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  *v3 = 0;
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v4 + 1;
  return 1;
}

uint64_t IPC::ArgumentCoder<std::optional<BOOL>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  v3 = *a1;
  if (v2 <= &v1[-*a1])
  {
    v9 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v9;
    goto LABEL_13;
  }

  v4 = v1 + 1;
  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_13:
    v10 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v10;
    goto LABEL_14;
  }

  if (*v1 >= 2u)
  {
LABEL_14:
    IPC::Decoder::markInvalid(a1);
    v7 = 0;
    v5 = 0;
    v6 = 0;
    return v5 | v6 | v7;
  }

  if (*v1)
  {
    if (v2 <= &v4[-v3])
    {
      v11 = a1;
      IPC::Decoder::markInvalid(a1);
      a1 = v11;
    }

    else
    {
      *(a1 + 2) = v1 + 2;
      if (v1 != -1)
      {
        v5 = *v4;
        if (v5 < 2)
        {
          v6 = 256;
          goto LABEL_6;
        }

LABEL_17:
        IPC::Decoder::markInvalid(a1);
        v7 = 0;
        v5 = 0;
        v6 = 256;
        return v5 | v6 | v7;
      }
    }

    v12 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v12;
    goto LABEL_17;
  }

  v5 = 0;
  v6 = 0;
LABEL_6:
  v7 = 0x10000;
  return v5 | v6 | v7;
}

uint64_t IPC::Encoder::encodeSpan<float const,18446744073709551615ul>(IPC::Encoder *a1, const void *a2, uint64_t a3)
{
  v5 = 4 * a3;
  v6 = IPC::Encoder::grow(a1, 4uLL, 4 * a3);
  if (v7 < 4 * a3)
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

uint64_t IPC::StreamConnectionEncoder::encodeSpan<float const,18446744073709551615ul>(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = 4 * a3;
  v5 = *(a1 + 8);
  v6 = -*a1;
  v7 = v4 & 0xFFFFFFFFFFFFFFFCLL | v6 & 3;
  if (v5 < v7)
  {
    goto LABEL_9;
  }

  v8 = v6 & 3;
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

uint64_t IPC::ArgumentCoder<WebCore::PathRoundedRect::Strategy,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
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
  if (v2 >= 2)
  {
LABEL_8:
    v2 = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

uint64_t IPC::ArgumentCoder<std::span<float const,4ul>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, _OWORD *a2)
{
  result = IPC::Encoder::grow(a1, 4uLL, 16);
  if (v4 <= 0xF)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = *a2;
  }

  return result;
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 52))
    {
      mpark::throw_bad_variant_access(a1);
    }

    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
    v6 = *(a2 + 4);

    return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v6);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 52) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
    v6 = *(a2 + 4);

    return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v6);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 52) != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul,2ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul,2ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (*(a2 + 52) != 3)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::PathBezierCurveTo,void>::encode(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul,2ul,3ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul,2ul,3ul>(IPC::Encoder *result, uint64_t a2, uint64_t a3)
{
  if (a3 <= 12)
  {
    if (a3 > 9)
    {
      if (a3 == 12)
      {
        if (*(a2 + 52) != 12)
        {
          goto LABEL_46;
        }

        return IPC::ArgumentCoder<std::span<float const,4ul>,void>::encode<IPC::Encoder>(result, a2);
      }

      else if (a3 == 10)
      {
        if (*(a2 + 52) != 10)
        {
          goto LABEL_46;
        }

        return IPC::Encoder::operator<<<WebCore::PathRoundedRect const&>(result, a2);
      }

      else
      {
        if (*(a2 + 52) != 11)
        {
          goto LABEL_46;
        }

        return IPC::ArgumentCoder<WebCore::PathContinuousRoundedRect,void>::encode(result, a2);
      }
    }

    if (a3 > 5)
    {
      if (a3 > 7)
      {
        if (a3 == 8)
        {
          if (*(a2 + 52) != 8)
          {
            goto LABEL_46;
          }
        }

        else if (*(a2 + 52) != 9)
        {
          goto LABEL_46;
        }

        return IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(result, a2);
      }

      if (a3 != 6)
      {
        if (*(a2 + 52) != 7)
        {
          goto LABEL_46;
        }

        return IPC::ArgumentCoder<WebCore::PathEllipse,void>::encode(result, a2);
      }

      if (*(a2 + 52) != 6)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (a3 != 5)
      {
        if (a3 != 4)
        {
          goto LABEL_21;
        }

        if (*(a2 + 52) != 4)
        {
          goto LABEL_46;
        }

        return IPC::ArgumentCoder<WebCore::PathArcTo,void>::encode(result, a2);
      }

      if (*(a2 + 52) != 5)
      {
        goto LABEL_46;
      }
    }

    return IPC::ArgumentCoder<WebCore::PathArc,void>::encode(result, a2);
  }

  switch(a3)
  {
    case 14:
      if (*(a2 + 52) == 14)
      {

        return IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(result, a2);
      }

LABEL_46:
      mpark::throw_bad_variant_access(result);
    case 13:
      if (*(a2 + 52) != 13)
      {
        goto LABEL_46;
      }

      return IPC::ArgumentCoder<WebCore::PathBezierCurveTo,void>::encode(result, a2);
    case 15:
      if (*(a2 + 52) != 15)
      {
        goto LABEL_46;
      }

      return IPC::ArgumentCoder<WebCore::PathDataArc,void>::encode(result, a2);
    default:
LABEL_21:
      if (a3 != 16 || *(a2 + 52) == 16)
      {
        return result;
      }

      goto LABEL_46;
  }
}

IPC::Encoder *IPC::Encoder::operator<<<WebCore::PathRoundedRect const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  return a1;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (*(a2 + 52) == 3)
      {

        return IPC::ArgumentCoder<WebCore::PathBezierCurveTo,void>::encode(result, a2);
      }
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_29;
      }

      if (*(a2 + 52) == 4)
      {

        return IPC::ArgumentCoder<WebCore::PathArcTo,void>::encode(result, a2);
      }
    }

LABEL_33:
    mpark::throw_bad_variant_access(result);
  }

  if (a3 == 1)
  {
    if (*(a2 + 52) != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  if (!a3)
  {
    if (*(a2 + 52))
    {
      goto LABEL_33;
    }

LABEL_20:
    v19 = -*result;
    v20 = v19 & 3 | 4;
    if (*(result + 1) < v20)
    {
      goto LABEL_35;
    }

    *(*result + (v19 & 3)) = *a2;
    v21 = *(result + 1);
    v22 = v21 - v20;
    if (v21 < v20)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v15 = *result + v20;
    *result = v15;
    *(result + 1) = v22;
    v16 = -v15 & 3 | 4;
    if (v22 >= v16)
    {
      v17 = -v15 & 3;
      v18 = *(a2 + 4);
      goto LABEL_24;
    }

LABEL_35:
    *result = 0;
    *(result + 1) = 0;
    return result;
  }

  if (a3 != 2)
  {
LABEL_29:

    return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul,2ul,3ul,4ul>(result, a2, a3);
  }

  if (*(a2 + 52) != 2)
  {
    goto LABEL_33;
  }

  v3 = -*result;
  v4 = v3 & 3 | 4;
  if (*(result + 1) < v4)
  {
    goto LABEL_35;
  }

  *(*result + (v3 & 3)) = *a2;
  v5 = *(result + 1);
  v6 = v5 - v4;
  if (v5 < v4)
  {
    goto LABEL_34;
  }

  v7 = *result + v4;
  *result = v7;
  *(result + 1) = v6;
  v8 = -v7 & 3 | 4;
  if (v6 < v8)
  {
    goto LABEL_35;
  }

  *(v7 + (-v7 & 3)) = *(a2 + 4);
  v9 = *(result + 1);
  v10 = v9 - v8;
  if (v9 < v8)
  {
    goto LABEL_34;
  }

  v11 = *result + v8;
  *result = v11;
  *(result + 1) = v10;
  v12 = -v11 & 3 | 4;
  if (v10 < v12)
  {
    goto LABEL_35;
  }

  *(v11 + (-v11 & 3)) = *(a2 + 8);
  v13 = *(result + 1);
  v14 = v13 - v12;
  if (v13 < v12)
  {
    goto LABEL_34;
  }

  v15 = *result + v12;
  *result = v15;
  *(result + 1) = v14;
  v16 = -v15 & 3 | 4;
  if (v14 < v16)
  {
    goto LABEL_35;
  }

  v17 = -v15 & 3;
  v18 = *(a2 + 12);
LABEL_24:
  *(v15 + v17) = v18;
  v23 = *(result + 1);
  v24 = v23 >= v16;
  v25 = v23 - v16;
  if (!v24)
  {
    goto LABEL_34;
  }

  *result += v16;
  *(result + 1) = v25;
  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul,2ul,3ul,4ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 7)
  {
    if (a3 != 10)
    {
      if (a3 == 9)
      {
        if (*(a2 + 52) != 9)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (a3 != 8)
        {
LABEL_12:

          return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul>(a1, a2, a3);
        }

        if (*(a2 + 52) != 8)
        {
          goto LABEL_32;
        }
      }

      return IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(a1, a2);
    }

    if (*(a2 + 52) != 10)
    {
      goto LABEL_32;
    }

    return IPC::ArgumentCoder<WebCore::PathRoundedRect,void>::encode(a1, a2);
  }

  else
  {
    switch(a3)
    {
      case 5:
        if (*(a2 + 52) != 5)
        {
          goto LABEL_32;
        }

        break;
      case 6:
        if (*(a2 + 52) != 6)
        {
          goto LABEL_32;
        }

        break;
      case 7:
        if (*(a2 + 52) == 7)
        {

          return IPC::ArgumentCoder<WebCore::PathEllipse,void>::encode(a1, a2);
        }

LABEL_32:
        mpark::throw_bad_variant_access(a1);
      default:
        goto LABEL_12;
    }

    return IPC::ArgumentCoder<WebCore::PathArc,void>::encode(a1, a2);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 > 12)
  {
    if (a3 == 14)
    {
      if (*(a2 + 52) == 14)
      {

        return IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(result, a2);
      }

LABEL_27:
      mpark::throw_bad_variant_access(result);
    }

    if (a3 == 13)
    {
      if (*(a2 + 52) != 13)
      {
        goto LABEL_27;
      }

      return IPC::ArgumentCoder<WebCore::PathBezierCurveTo,void>::encode(result, a2);
    }

LABEL_19:

    return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul>(result, a2, a3);
  }

  if (a3 == 12)
  {
    if (*(a2 + 52) != 12)
    {
      goto LABEL_27;
    }

    v3 = -*result;
    v4 = v3 & 3 | 0x10;
    if (*(result + 1) >= v4)
    {
      *(*result + (v3 & 3)) = *a2;
      v5 = *(result + 1);
      v6 = v5 >= v4;
      v7 = v5 - v4;
      if (v6)
      {
        *result += v4;
        *(result + 1) = v7;
        return result;
      }

      __break(1u);
    }

    *result = 0;
    *(result + 1) = 0;
    return result;
  }

  if (a3 != 11)
  {
    goto LABEL_19;
  }

  if (*(a2 + 52) != 11)
  {
    goto LABEL_27;
  }

  return IPC::ArgumentCoder<WebCore::PathContinuousRoundedRect,void>::encode(result, a2);
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 != 15)
  {
    if (a3 != 16 || *(a2 + 52) == 16)
    {
      return result;
    }

LABEL_9:
    mpark::throw_bad_variant_access(result);
  }

  if (*(a2 + 52) != 15)
  {
    goto LABEL_9;
  }

  return IPC::ArgumentCoder<WebCore::PathDataArc,void>::encode(result, a2);
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
    if (v7)
    {
      if (*this)
      {
        *a3 = result;
        *(a3 + 52) = 0;
        goto LABEL_9;
      }

LABEL_15:
      result = IPC::Decoder::markInvalid(this);
      *a3 = 0;
      *(a3 + 56) = 0;
      return result;
    }

LABEL_13:
    IPC::Decoder::markInvalid(this);
    if (*this)
    {
      __break(1u);
    }

    goto LABEL_15;
  }

  if (a2 == 1)
  {
    result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
    if (v6)
    {
      if (*this)
      {
        *a3 = result;
        *(a3 + 52) = 1;
LABEL_9:
        *(a3 + 56) = 1;
        return result;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder,0ul,1ul>(this, a2, a3);
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder,0ul,1ul>@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 != 2)
  {
    switch(a2)
    {
      case 3:
        v5 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
        v7 = v6;
        if ((v6 & 1) == 0)
        {
          IPC::Decoder::markInvalid(this);
        }

        v8 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
        v10 = v9;
        if ((v9 & 1) == 0)
        {
          IPC::Decoder::markInvalid(this);
        }

        result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
        if ((v12 & 1) == 0)
        {
          v21 = v12;
          v22 = result;
          IPC::Decoder::markInvalid(this);
          v12 = v21;
          result = v22;
        }

        if (!*this)
        {
          goto LABEL_33;
        }

        if (v7 & 1) != 0 && (v10 & 1) != 0 && (v12)
        {
          *a3 = v5;
          *(a3 + 8) = v8;
          *(a3 + 16) = result;
          v13 = 3;
LABEL_14:
          *(a3 + 52) = v13;
          v14 = 1;
LABEL_15:
          *(a3 + 56) = v14;
          return result;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        result = IPC::Decoder::markInvalid(this);
        break;
      case 4:
        result = IPC::Decoder::decode<WebCore::PathArcTo>(this, &v23);
        if ((v24 & 0x100000000) != 0)
        {
          *a3 = v23;
          *(a3 + 16) = v24;
          v13 = 4;
          goto LABEL_14;
        }

        break;
      case 5:
        result = IPC::ArgumentCoder<WebCore::PathArc,void>::decode(this, &v23);
        if (v25)
        {
          *a3 = v23;
          *(a3 + 16) = v24;
          v13 = 5;
          goto LABEL_14;
        }

        goto LABEL_33;
      case 6:
        result = IPC::Decoder::decode<WebCore::PathClosedArc>(this, &v23);
        if (v25)
        {
          *a3 = v23;
          *(a3 + 16) = v24;
          v13 = 6;
          goto LABEL_14;
        }

        break;
      default:

        return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder,0ul,1ul,2ul,3ul,4ul,5ul,6ul>(this, a2, a3);
    }

    v14 = 0;
    *a3 = 0;
    goto LABEL_15;
  }

  v15 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
  v17 = v16;
  if ((v16 & 1) == 0)
  {
    IPC::Decoder::markInvalid(this);
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
  v18 = result;
  v20 = v19;
  if ((v19 & 1) == 0)
  {
    result = IPC::Decoder::markInvalid(this);
  }

  if (*this)
  {
    if (v17 & 1) != 0 && (v20)
    {
      *a3 = v15;
      *(a3 + 8) = v18;
      v13 = 2;
      goto LABEL_14;
    }

    goto LABEL_32;
  }

  result = IPC::Decoder::markInvalid(this);
  *a3 = 0;
  *(a3 + 56) = 0;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::PathArcTo>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    v9 = v8;
    if ((v8 & 1) == 0)
    {
      v22 = *a1;
      v23 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v24 = *(a1 + 3);
      if (v24)
      {
        if (v23)
        {
          v27 = result;
          v29 = v9;
          (*(*v24 + 16))(v24, v22);
          result = v27;
          v9 = v29;
        }
      }
    }

    v10 = *(a1 + 1);
    v11 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v12 = *a1;
    v13 = v11 - *a1;
    v14 = v10 >= v13;
    v15 = v10 - v13;
    if (!v14 || v15 <= 3)
    {
      break;
    }

    *(a1 + 2) = v11 + 1;
    if (!v11)
    {
      v28 = result;
      v30 = v9;
      goto LABEL_28;
    }

    v17 = *v11 | 0x100000000;
    if (!v12)
    {
      goto LABEL_33;
    }

LABEL_10:
    if ((v6 & 1) != 0 && (v9 & 1) != 0 && (v17 & 0x100000000) != 0)
    {
      *a2 = v4;
      *(a2 + 8) = result;
      *(a2 + 16) = v17;
      *(a2 + 20) = 1;
      return result;
    }

    __break(1u);
LABEL_16:
    v18 = *a1;
    v19 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      (*(*v20 + 16))(v20, v18);
    }
  }

  v28 = result;
  v30 = v9;
  *a1 = 0;
  *(a1 + 1) = 0;
  v25 = *(a1 + 3);
  if (!v25)
  {
    v10 = 0;
LABEL_26:
    v12 = 0;
    goto LABEL_28;
  }

  if (!v10)
  {
    goto LABEL_26;
  }

  (*(*v25 + 16))(v25);
  v12 = *a1;
  v10 = *(a1 + 1);
LABEL_28:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (!result)
  {
    v10 = 0;
    goto LABEL_34;
  }

  if (!v10)
  {
    goto LABEL_34;
  }

  (*(*result + 16))(result, v12);
  v17 = 0;
  result = v28;
  v9 = v30;
  if (*a1)
  {
    goto LABEL_10;
  }

LABEL_33:
  v10 = *(a1 + 1);
  result = *(a1 + 3);
LABEL_34:
  *a2 = 0;
  *(a2 + 20) = 0;
  *a1 = 0;
  *(a1 + 1) = 0;
  if (result && v10)
  {
    v26 = *(*result + 16);

    return v26();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::PathClosedArc>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::PathClosedArc,void>::decode(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder,0ul,1ul,2ul,3ul,4ul,5ul,6ul>@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  switch(a2)
  {
    case 7:
      this = IPC::Decoder::decode<WebCore::PathEllipse>(this, &v16);
      if (v18)
      {
        v15 = v17;
        *a3 = v16;
        *(a3 + 16) = v15;
        v12 = 7;
        goto LABEL_18;
      }

LABEL_28:
      v13 = 0;
      *a3 = 0;
      goto LABEL_19;
    case 8:
      this = IPC::Decoder::decode<WebCore::PathEllipseInRect>(this, &v16);
      if (v17)
      {
        *a3 = v16;
        v12 = 8;
        goto LABEL_18;
      }

      goto LABEL_28;
    case 9:
      this = IPC::ArgumentCoder<WebCore::PathRect,void>::decode(this, &v16);
      if (v17)
      {
        *a3 = v16;
        v12 = 9;
        goto LABEL_18;
      }

LABEL_27:
      this = IPC::Decoder::markInvalid(v3);
      goto LABEL_28;
    case 10:
      this = IPC::ArgumentCoder<WebCore::PathRoundedRect,void>::decode(this, &v16);
      if (v20)
      {
        v14 = v17;
        *a3 = v16;
        *(a3 + 16) = v14;
        *(a3 + 32) = v18;
        *(a3 + 48) = v19;
        v12 = 10;
LABEL_18:
        *(a3 + 52) = v12;
        v13 = 1;
LABEL_19:
        *(a3 + 56) = v13;
        return this;
      }

      goto LABEL_27;
    case 11:
      this = IPC::ArgumentCoder<WebCore::PathContinuousRoundedRect,void>::decode(this, &v16);
      if (BYTE8(v17))
      {
        *a3 = v16;
        *(a3 + 16) = v17;
        v12 = 11;
        goto LABEL_18;
      }

      goto LABEL_27;
    case 12:
      v5 = *(this + 1);
      v6 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v7 = *this;
      v8 = v6 - *this;
      v9 = v5 >= v8;
      v10 = v5 - v8;
      if (!v9 || v10 <= 0xF)
      {
        IPC::Decoder::markInvalid(this);
        goto LABEL_33;
      }

      *(this + 2) = v6 + 1;
      if (!v6)
      {
LABEL_33:
        IPC::Decoder::markInvalid(v3);
        if (*v3)
        {
          __break(1u);
        }

        goto LABEL_35;
      }

      if (!v7)
      {
LABEL_35:
        this = IPC::Decoder::markInvalid(v3);
        *a3 = 0;
        *(a3 + 56) = 0;
        return this;
      }

      *a3 = *v6;
      v12 = 12;
      goto LABEL_18;
  }

  return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul>(this, a2, a3);
}

uint64_t IPC::Decoder::decode<WebCore::PathEllipse>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v30 = *a1;
    v31 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32 && v31 != 0)
    {
      (*(*v32 + 16))(v32, v30);
    }
  }

  v7 = *(a1 + 1);
  v8 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *a1;
  v10 = v8 - *a1;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (v11 && v12 > 3)
  {
    *(a1 + 2) = v8 + 1;
    if (v8)
    {
      v14 = *v8 | 0x100000000;
      v15 = v9;
      goto LABEL_9;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (!v34)
    {
      v7 = 0;
LABEL_52:
      v9 = 0;
      goto LABEL_53;
    }

    if (!v7)
    {
      goto LABEL_52;
    }

    (*(*v34 + 16))(v34, v9);
    v9 = *a1;
    v7 = *(a1 + 1);
  }

LABEL_53:
  *a1 = 0;
  *(a1 + 1) = 0;
  v35 = *(a1 + 3);
  if (!v35)
  {
    v15 = 0;
    v7 = 0;
LABEL_55:
    v9 = 0;
    v14 = 0;
    goto LABEL_9;
  }

  if (!v7)
  {
    v15 = 0;
    goto LABEL_55;
  }

  (*(*v35 + 16))(v35, v9);
  v14 = 0;
  v15 = *a1;
  v7 = *(a1 + 1);
  v9 = *a1;
LABEL_9:
  v16 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v7 >= v16 - v9 && v7 - (v16 - v9) > 3)
  {
    *(a1 + 2) = v16 + 1;
    if (v16)
    {
      v18 = *v16 | 0x100000000;
      goto LABEL_16;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36)
    {
      if (v7)
      {
        (*(*v36 + 16))(v36, v15);
        v15 = *a1;
        v7 = *(a1 + 1);
        goto LABEL_59;
      }
    }

    else
    {
      v7 = 0;
    }

    v15 = 0;
  }

LABEL_59:
  *a1 = 0;
  *(a1 + 1) = 0;
  v37 = *(a1 + 3);
  if (v37)
  {
    if (v7)
    {
      (*(*v37 + 16))(v37, v15);
      v18 = 0;
      v15 = *a1;
      v7 = *(a1 + 1);
      v9 = *a1;
      goto LABEL_16;
    }

    v15 = 0;
  }

  else
  {
    v15 = 0;
    v7 = 0;
  }

  v9 = 0;
  v18 = 0;
LABEL_16:
  v19 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v7 < v19 - v9 || v7 - (v19 - v9) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38)
    {
      if (v7)
      {
        (*(*v38 + 16))(v38, v15);
        v15 = *a1;
        v7 = *(a1 + 1);
        goto LABEL_65;
      }
    }

    else
    {
      v7 = 0;
    }

    v15 = 0;
  }

  else
  {
    *(a1 + 2) = v19 + 1;
    if (v19)
    {
      v20 = *v19 | 0x100000000;
      goto LABEL_20;
    }
  }

LABEL_65:
  *a1 = 0;
  *(a1 + 1) = 0;
  v39 = *(a1 + 3);
  if (v39)
  {
    if (v7)
    {
      (*(*v39 + 16))(v39, v15);
      v20 = 0;
      v15 = *a1;
      v7 = *(a1 + 1);
      v9 = *a1;
      goto LABEL_20;
    }

    v15 = 0;
  }

  else
  {
    v15 = 0;
    v7 = 0;
  }

  v9 = 0;
  v20 = 0;
LABEL_20:
  v21 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v7 < v21 - v9 || v7 - (v21 - v9) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (v40)
    {
      if (v7)
      {
        (*(*v40 + 16))(v40, v15);
        v15 = *a1;
        v7 = *(a1 + 1);
        goto LABEL_71;
      }
    }

    else
    {
      v7 = 0;
    }

    v15 = 0;
  }

  else
  {
    *(a1 + 2) = v21 + 1;
    if (v21)
    {
      v22 = *v21 | 0x100000000;
      goto LABEL_24;
    }
  }

LABEL_71:
  *a1 = 0;
  *(a1 + 1) = 0;
  v41 = *(a1 + 3);
  if (v41)
  {
    if (v7)
    {
      (*(*v41 + 16))(v41, v15);
      v22 = 0;
      v15 = *a1;
      v7 = *(a1 + 1);
      v9 = *a1;
      goto LABEL_24;
    }

    v15 = 0;
  }

  else
  {
    v15 = 0;
    v7 = 0;
  }

  v9 = 0;
  v22 = 0;
LABEL_24:
  v23 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v24 = v23 - v9;
  v11 = v7 >= v24;
  v25 = v7 - v24;
  if (!v11 || v25 <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v42 = *(a1 + 3);
    if (v42)
    {
      if (v7)
      {
        (*(*v42 + 16))(v42, v15);
        v15 = *a1;
        v7 = *(a1 + 1);
        goto LABEL_77;
      }
    }

    else
    {
      v7 = 0;
    }

    v15 = 0;
    goto LABEL_77;
  }

  *(a1 + 2) = v23 + 1;
  if (v23)
  {
    v26 = *v23 | 0x100000000;
    goto LABEL_29;
  }

LABEL_77:
  *a1 = 0;
  *(a1 + 1) = 0;
  v43 = *(a1 + 3);
  if (v43 && v7)
  {
    (*(*v43 + 16))(v43, v15);
  }

  v26 = 0;
LABEL_29:
  result = IPC::Decoder::decode<WebCore::RotationDirection>(a1);
  if (*a1)
  {
    if ((v6 & 1) != 0 && (v14 & 0x100000000) != 0 && (v18 & 0x100000000) != 0 && (v20 & 0x100000000) != 0 && (v22 & 0x100000000) != 0 && (v26 & 0x100000000) != 0 && result > 0xFFu)
    {
      *a2 = v4;
      *(a2 + 8) = v14;
      *(a2 + 12) = v18;
      *(a2 + 16) = v20;
      *(a2 + 20) = v22;
      *(a2 + 24) = v26;
      *(a2 + 28) = result;
      *(a2 + 32) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  v28 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v28)
  {
    v29 = *(*result + 16);

    return v29();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::PathEllipseInRect>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v14 = *a1;
    v15 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16 && v15 != 0)
    {
      (*(*v16 + 16))(v16, v14);
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v8 & 1) == 0)
  {
    v12 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13)
    {
      if (v11)
      {
        v18 = v8;
        v19 = result;
        (*(*v13 + 16))(v13, v12);
        v8 = v18;
        result = v19;
      }
    }
  }

  if (*a1)
  {
    if (v6 & 1) != 0 && (v8)
    {
      *a2 = v4;
      *(a2 + 8) = result;
      *(a2 + 16) = 1;
      return result;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  v9 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v9)
    {
      result = (*(*result + 16))(result, 0);
      if (*a1)
      {
        goto LABEL_26;
      }

      v9 = *(a1 + 1);
      result = *(a1 + 3);
    }
  }

  else
  {
    v9 = 0;
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  *a1 = 0;
  *(a1 + 1) = 0;
  if (result && v9)
  {
    v10 = *(*result + 16);

    return v10();
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == 13)
  {
    v17 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    v19 = v18;
    if ((v18 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a1);
    }

    v20 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    v22 = v21;
    if ((v21 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a1);
    }

    result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    v23 = result;
    v25 = v24;
    if ((v24 & 1) == 0)
    {
      result = IPC::Decoder::markInvalid(a1);
    }

    if (*a1)
    {
      if (v19 & 1) != 0 && (v22 & 1) != 0 && (v25)
      {
        *a3 = v17;
        *(a3 + 8) = v20;
        *(a3 + 16) = v23;
        *(a3 + 52) = 13;
        v16 = 1;
        goto LABEL_17;
      }

      goto LABEL_32;
    }

    result = IPC::Decoder::markInvalid(a1);
    *a3 = 0;
    *(a3 + 56) = 0;
  }

  else
  {
    if (a2 == 14)
    {
      v5 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
      v7 = v6;
      if ((v6 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a1);
      }

      v8 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
      v10 = v9;
      if ((v9 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a1);
      }

      v11 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
      v13 = v12;
      if ((v12 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a1);
      }

      result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
      if ((v15 & 1) == 0)
      {
        v26 = v15;
        v27 = result;
        IPC::Decoder::markInvalid(a1);
        v15 = v26;
        result = v27;
      }

      if (!*a1)
      {
        goto LABEL_33;
      }

      if (v7 & 1) != 0 && (v10 & 1) != 0 && (v13 & 1) != 0 && (v15)
      {
        *a3 = v5;
        *(a3 + 8) = v8;
        *(a3 + 16) = v11;
        *(a3 + 24) = result;
        v16 = 1;
        *(a3 + 52) = 14;
LABEL_17:
        *(a3 + 56) = v16;
        return result;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      result = IPC::Decoder::markInvalid(a1);
      v16 = 0;
      *a3 = 0;
      goto LABEL_17;
    }

    return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul>(a1, a2, a3);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == 15)
  {
    result = IPC::Decoder::decode<WebCore::PathDataArc>(result, v6);
    if (v7)
    {
      *a3 = *v6;
      *(a3 + 12) = *&v6[12];
      *(a3 + 52) = 15;
      v3 = 1;
    }

    else
    {
      v3 = 0;
      *a3 = 0;
    }

    *(a3 + 56) = v3;
  }

  else if (a2 == 16)
  {
    if (*result)
    {
      *(a3 + 52) = 16;
      *(a3 + 56) = 1;
    }

    else
    {
      result = IPC::Decoder::markInvalid(result);
      *a3 = 0;
      *(a3 + 56) = 0;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 56) = 0;
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::PathDataArc>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v9 = v8;
  result = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v12 = v11;
  v13 = *(a1 + 1);
  v14 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = *a1;
  v16 = v14 - *a1;
  v17 = v13 >= v16;
  v18 = v13 - v16;
  if (v17 && v18 > 3)
  {
    *(a1 + 2) = v14 + 1;
    if (!v14)
    {
      v23 = result;
      v24 = v12;
      goto LABEL_19;
    }

    v20 = *v14 | 0x100000000;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_24:
    v13 = *(a1 + 1);
    result = *(a1 + 3);
    goto LABEL_25;
  }

  while (1)
  {
    v23 = result;
    v24 = v12;
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (!v21)
    {
      v13 = 0;
LABEL_17:
      v15 = 0;
      goto LABEL_19;
    }

    if (!v13)
    {
      goto LABEL_17;
    }

    (*(*v21 + 16))(v21);
    v15 = *a1;
    v13 = *(a1 + 1);
LABEL_19:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result)
    {
      break;
    }

    if (!v13)
    {
      goto LABEL_25;
    }

    (*(*result + 16))(result, v15);
    v20 = 0;
    result = v23;
    v12 = v24;
    if (!*a1)
    {
      goto LABEL_24;
    }

LABEL_8:
    if ((v6 & 1) != 0 && (v9 & 1) != 0 && (v12 & 1) != 0 && (v20 & 0x100000000) != 0)
    {
      *a2 = v4;
      *(a2 + 8) = v7;
      *(a2 + 16) = result;
      *(a2 + 24) = v20;
      *(a2 + 28) = 1;
      return result;
    }

    __break(1u);
  }

  v13 = 0;
LABEL_25:
  *a2 = 0;
  *(a2 + 28) = 0;
  *a1 = 0;
  *(a1 + 1) = 0;
  if (result && v13)
  {
    v22 = *(*result + 16);

    return v22();
  }

  return result;
}

uint64_t IPC::Encoder::encodeSpan<unsigned long long const,18446744073709551615ul>(IPC::Encoder *a1, const void *a2, uint64_t a3)
{
  v5 = 8 * a3;
  v6 = IPC::Encoder::grow(a1, 8uLL, 8 * a3);
  if (v7 < 8 * a3)
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

uint64_t IPC::VectorArgumentCoder<false,WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 24 * v5;
    do
    {
      IPC::ArgumentCoder<WebKit::MediaDescriptionInfo,void>::encode(a1, v6);
      result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v6 + 16));
      v6 += 24;
    }

    while (v6 != v7);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::InitializationSegmentInfo::TrackInformation>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v42);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (v5 <= &v6[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v32 = *(a2 + 3);
    if (v32)
    {
      if (v5)
      {
        (*(*v32 + 16))(v32);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_65:
    *a2 = 0;
    *(a2 + 1) = 0;
    v33 = *(a2 + 3);
    if (v33)
    {
      if (v5)
      {
        (*(*v33 + 16))(v33);
        v9 = 0;
        v7 = *a2;
        v5 = *(a2 + 1);
        goto LABEL_68;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    v9 = 0;
    goto LABEL_68;
  }

  v8 = v6 + 1;
  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_65;
  }

  v9 = *v6;
  if (v9 < 2)
  {
    v10 = 1;
    goto LABEL_5;
  }

LABEL_68:
  *a2 = 0;
  *(a2 + 1) = 0;
  v34 = *(a2 + 3);
  if (!v34 || !v5)
  {
    v11 = 0;
    v10 = 0;
    v35 = 0;
    v7 = 0;
LABEL_70:
    *a2 = 0;
    *(a2 + 1) = 0;
    v36 = *(a2 + 3);
    if (v36 && v35)
    {
      (*(*v36 + 16))(v36, v7, v35);
      v13 = 0;
      v7 = *a2;
      v5 = *(a2 + 1);
    }

    else
    {
      v5 = 0;
      v7 = 0;
      v13 = 0;
    }

    goto LABEL_72;
  }

  result = (*(*v34 + 16))(v34, v7);
  v10 = 0;
  v7 = *a2;
  v5 = *(a2 + 1);
  v8 = *(a2 + 2);
LABEL_5:
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v5 <= v8 - v7)
  {
    v35 = 0;
    v40 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v5 && v40)
    {
      (*(*v40 + 16))(v40);
      v7 = *a2;
      v35 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_70;
  }

  v12 = v8 + 1;
  *(a2 + 2) = v8 + 1;
  if (!v8)
  {
    v35 = v5;
    goto LABEL_70;
  }

  v13 = *v8;
  if (v13 < 2)
  {
    v14 = 1;
    goto LABEL_12;
  }

LABEL_72:
  *a2 = 0;
  *(a2 + 1) = 0;
  v37 = *(a2 + 3);
  if (!v37 || !v5)
  {
    v15 = 0;
    v18 = 0;
    v38 = 0;
    v7 = 0;
LABEL_74:
    *a2 = 0;
    *(a2 + 1) = 0;
    v39 = *(a2 + 3);
    if (v39 && v38)
    {
      (*(*v39 + 16))(v39, v7, v38);
      v16 = 0;
      v7 = *a2;
      v5 = *(a2 + 1);
    }

    else
    {
      v5 = 0;
      v7 = 0;
      v16 = 0;
    }

    goto LABEL_77;
  }

  result = (*(*v37 + 16))(v37, v7);
  v14 = 0;
  v7 = *a2;
  v5 = *(a2 + 1);
  v12 = *(a2 + 2);
LABEL_12:
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v5 <= v12 - v7)
  {
    v18 = v14;
    v38 = 0;
    v41 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v5 && v41)
    {
      (*(*v41 + 16))(v41);
      v7 = *a2;
      v38 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_74;
  }

  *(a2 + 2) = v12 + 1;
  if (!v12)
  {
    v18 = v14;
    v38 = v5;
    goto LABEL_74;
  }

  v16 = *v12;
  if (v16 < 2)
  {
    v17 = 1;
    goto LABEL_19;
  }

  v18 = v14;
LABEL_77:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (!result || !v5)
  {
    goto LABEL_78;
  }

  result = (*(*result + 16))(result, v7);
  v17 = 0;
  v7 = *a2;
  v14 = v18;
LABEL_19:
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v7)
  {
    if ((v43 & 1) == 0 || (v10 & 1) == 0 || (v14 & 1) == 0 || (v17 & 1) == 0)
    {
      goto LABEL_44;
    }

    v10 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
    }

    LOBYTE(v16) = 1;
    goto LABEL_30;
  }

LABEL_78:
  v10 = 0;
  LOBYTE(v16) = 0;
LABEL_30:
  if (v43 == 1)
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

  v5 = *(a2 + 1);
  if ((v16 & 1) == 0)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v19 = *a2;
    v20 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20 - *a2;
    v22 = v5 >= v21;
    v23 = v5 - v21;
    if (!v22 || v23 <= 7)
    {
      break;
    }

    *(a2 + 2) = v20 + 1;
    if (!v20)
    {
      goto LABEL_52;
    }

    v24 = *v20;
    v25 = 1;
    if (!v19)
    {
      goto LABEL_53;
    }

LABEL_40:
    if (v16 & 1) != 0 && (v25)
    {
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 9) = v15;
      *(a1 + 10) = v18;
      *(a1 + 16) = v24;
      *(a1 + 24) = 1;
      return result;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    v26 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v5)
      {
        result = (*(*result + 16))(result, v26);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v27 = *(a2 + 3);
  if (v27)
  {
    if (v5)
    {
      (*(*v27 + 16))(v27);
      v19 = *a2;
      v5 = *(a2 + 1);
      goto LABEL_52;
    }
  }

  else
  {
    v5 = 0;
  }

  v19 = 0;
LABEL_52:
  *a2 = 0;
  *(a2 + 1) = 0;
  v28 = *(a2 + 3);
  if (v28)
  {
    if (v5)
    {
      result = (*(*v28 + 16))(v28);
      v25 = 0;
      v24 = 0;
      v19 = *a2;
      if (*a2)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_53:
  *a1 = 0;
  *(a1 + 24) = 0;
  v29 = v16 ^ 1;
  if (!v10)
  {
    v29 = 1;
  }

  if ((v29 & 1) == 0 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v19);
  }

  v30 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v30)
  {
    v31 = *(*result + 16);

    return v31();
  }

  return result;
}

void sub_19D7DF968(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::InitializationSegmentInfo::TrackInformation>(unsigned int *a1, unint64_t a2)
{
  result = WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 24 * a1[3];
  v5 = *result;
  *result = 0;
  *v4 = v5;
  LOBYTE(v5) = *(result + 10);
  *(v4 + 8) = *(result + 8);
  *(v4 + 10) = v5;
  *(v4 + 16) = *(result + 16);
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7DFBC8);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 24 * *(result + 3));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(v2 + 2) = v5 / 0x18;
    *v2 = v6;
    result = WTF::VectorTypeOperations<WebKit::InitializationSegmentInfo::TrackInformation>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::InitializationSegmentInfo::TrackInformation>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      LOWORD(v6) = *(v5 + 4);
      *(a3 + 10) = *(v5 + 10);
      *(a3 + 8) = v6;
      *(a3 + 16) = *(v5 + 2);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
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
      v8 = *(v6 + 8);
      result = IPC::Encoder::operator<<<BOOL>(a1, &v8);
      v6 += 16;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 4 * v5;
    do
    {
      v8 = *v6++;
      result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v8);
      v7 -= 4;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::PlatformTextTrackData,void>::encode(a1, v6);
      v6 += 40;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

unint64_t WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7DFFBCLL);
    }

    v4 = *a1;
    v5 = (*a1 + 16 * *(a1 + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorTypeOperations<WebCore::ContentType>::move(v4, v5, v6);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::ContentType>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
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

uint64_t WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct((*result + 16 * a2), (*result + 16 * v4));
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
        result = WTF::VectorTypeOperations<WebCore::ContentType>::move(v5, (v5 + 16 * v4), result);
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

uint64_t std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7E014C(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 4 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 30))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((4 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    if (v5)
    {
      v8 = 4 * v5;
      v9 = v6;
      v10 = v4;
      do
      {
        v11 = *v10;
        v10 = (v10 + 4);
        *v9++ = v11;
        v8 -= 4;
      }

      while (v8);
    }

    if (v4)
    {
      if (v6 == v4)
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

uint64_t WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
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
    result = *result;
    if (a2)
    {
      if (a2 >> 30)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((4 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v4 && result != v5)
      {
        v6 = 0;
        do
        {
          *(result + v6) = *(v5 + v6);
          v6 += 4;
        }

        while (4 * v4 != v6);
      }
    }

    if (v5)
    {
      if (result == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::PlatformTextTrackData>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v58);
  IPC::Decoder::decode<WTF::String>(a2, &v56);
  result = IPC::Decoder::decode<WTF::String>(a2, &v54);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (v5 <= &v6[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v32 = *(a2 + 3);
    if (v32)
    {
      if (v5)
      {
        (*(*v32 + 16))(v32);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_71:
    *a2 = 0;
    *(a2 + 1) = 0;
    v33 = *(a2 + 3);
    if (v33)
    {
      if (v5)
      {
        (*(*v33 + 16))(v33);
        v7 = *a2;
        v5 = *(a2 + 1);
        goto LABEL_74;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    goto LABEL_74;
  }

  v8 = v6 + 1;
  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_71;
  }

  v9 = *v6;
  if (v9 < 3)
  {
    v10 = v9 | 0x100;
    goto LABEL_5;
  }

LABEL_74:
  *a2 = 0;
  *(a2 + 1) = 0;
  v34 = *(a2 + 3);
  if (!v34)
  {
    v10 = 0;
    v5 = 0;
LABEL_76:
    v7 = 0;
    goto LABEL_77;
  }

  if (!v5)
  {
    v10 = 0;
    goto LABEL_76;
  }

  result = (*(*v34 + 16))(v34, v7);
  v10 = 0;
  v7 = *a2;
  v5 = *(a2 + 1);
  v8 = *(a2 + 2);
LABEL_5:
  if (v5 <= v8 - v7)
  {
    v43 = v10;
    v44 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v44)
    {
      if (v5)
      {
        (*(*v44 + 16))(v44);
        v7 = *a2;
        v5 = *(a2 + 1);
LABEL_107:
        v10 = v43;
LABEL_77:
        *a2 = 0;
        *(a2 + 1) = 0;
        v35 = *(a2 + 3);
        if (v35)
        {
          v41 = v10;
          if (v5)
          {
            (*(*v35 + 16))(v35, v7);
            v7 = *a2;
            v5 = *(a2 + 1);
          }

          else
          {
            v7 = 0;
          }

          v10 = v41;
        }

        else
        {
          v5 = 0;
          v7 = 0;
        }

        goto LABEL_79;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    goto LABEL_107;
  }

  v11 = v8 + 1;
  *(a2 + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_77;
  }

  v12 = *v8;
  if (v12 < 6)
  {
    v13 = v12 | 0x100;
    goto LABEL_9;
  }

LABEL_79:
  *a2 = 0;
  *(a2 + 1) = 0;
  v36 = *(a2 + 3);
  if (!v36)
  {
    v13 = 0;
    v5 = 0;
    v7 = 0;
    goto LABEL_81;
  }

  v39 = v10;
  if (!v5)
  {
    v13 = 0;
    v7 = 0;
LABEL_81:
    *a2 = 0;
    *(a2 + 1) = 0;
    v37 = *(a2 + 3);
    if (v37)
    {
      v52 = v13;
      v40 = v10;
      if (v5)
      {
        (*(*v37 + 16))(v37, v7);
        v7 = *a2;
        v5 = *(a2 + 1);
      }

      else
      {
        v7 = 0;
      }

      v10 = v40;
      v13 = v52;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    goto LABEL_83;
  }

  result = (*(*v36 + 16))(v36, v7);
  v13 = 0;
  v7 = *a2;
  v5 = *(a2 + 1);
  v11 = *(a2 + 2);
  v10 = v39;
LABEL_9:
  if (v5 <= v11 - v7)
  {
    v53 = v13;
    v45 = v10;
    v46 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v46)
    {
      if (v5)
      {
        (*(*v46 + 16))(v46);
        v7 = *a2;
        v5 = *(a2 + 1);
LABEL_111:
        v10 = v45;
        v13 = v53;
        goto LABEL_81;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    goto LABEL_111;
  }

  *(a2 + 2) = v11 + 1;
  if (!v11)
  {
    goto LABEL_81;
  }

  v14 = *v11;
  if (v14 < 3)
  {
    v15 = v14 | 0x100;
    goto LABEL_13;
  }

LABEL_83:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v51 = v13;
    v38 = v10;
    if (v5)
    {
      result = (*(*result + 16))(result, v7);
      v15 = 0;
      v7 = *a2;
      v5 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
      v15 = 0;
    }

    v10 = v38;
    v13 = v51;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v15 = 0;
  }

LABEL_13:
  v16 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v16 - v7 || v5 - (v16 - v7) <= 3)
  {
    goto LABEL_60;
  }

  v17 = (v16 + 1);
  *(a2 + 2) = v16 + 1;
  if (!v16)
  {
    v49 = v15;
    v50 = v13;
    v48 = v10;
    goto LABEL_63;
  }

  v18 = *v16 | 0x100000000;
LABEL_17:
  if (v5 <= v17 - v7)
  {
    v47 = v18;
    v49 = v15;
    v50 = v13;
    v48 = v10;
    v30 = 0;
    v42 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v5 && v42)
    {
      (*(*v42 + 16))(v42);
      v7 = *a2;
      v30 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    *(a2 + 2) = v17 + 1;
    if (v17)
    {
      v19 = *v17;
      if (v19 < 2)
      {
        v20 = 1;
        goto LABEL_21;
      }

      v47 = v18;
      v49 = v15;
      v50 = v13;
      v48 = v10;
      goto LABEL_67;
    }

    v47 = v18;
    v49 = v15;
    v50 = v13;
    v48 = v10;
    v30 = v5;
  }

  while (1)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31 && v30)
    {
      (*(*v31 + 16))(v31, v7, v30);
      v19 = 0;
      v7 = *a2;
      v5 = *(a2 + 1);
    }

    else
    {
      v5 = 0;
      v7 = 0;
      v19 = 0;
    }

LABEL_67:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result || !v5)
    {
      goto LABEL_68;
    }

    result = (*(*result + 16))(result, v7);
    v20 = 0;
    v7 = *a2;
    v10 = v48;
    v15 = v49;
    v13 = v50;
    v18 = v47;
LABEL_21:
    v21 = v19 ? v20 : 0;
    if (!v7)
    {
LABEL_68:
      v25 = 0;
      *a1 = 0;
      goto LABEL_40;
    }

    if (v59 & 1) != 0 && (v57 & 1) != 0 && (v55 & 1) != 0 && v10 > 0xFF && v13 > 0xFF && v15 > 0xFF && (v18 & 0x100000000) != 0 && (v20)
    {
      break;
    }

    __break(1u);
LABEL_60:
    v49 = v15;
    v50 = v13;
    v48 = v10;
    *a2 = 0;
    *(a2 + 1) = 0;
    v28 = *(a2 + 3);
    if (v28)
    {
      if (v5)
      {
        (*(*v28 + 16))(v28);
        v7 = *a2;
        v5 = *(a2 + 1);
        goto LABEL_63;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_63:
    *a2 = 0;
    *(a2 + 1) = 0;
    v29 = *(a2 + 3);
    if (v29 && v5)
    {
      result = (*(*v29 + 16))(v29, v7);
      v18 = 0;
      v7 = *a2;
      v5 = *(a2 + 1);
      v17 = *(a2 + 2);
      v10 = v48;
      v15 = v49;
      v13 = v50;
      goto LABEL_17;
    }

    v47 = 0;
    v30 = 0;
    v7 = 0;
  }

  v22 = v58;
  if (v58)
  {
    atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
  }

  v23 = v56;
  if (v56)
  {
    atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
  }

  v24 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
  }

  *a1 = v22;
  *(a1 + 8) = v23;
  *(a1 + 16) = v24;
  *(a1 + 24) = v10;
  *(a1 + 25) = v13;
  *(a1 + 26) = v15;
  *(a1 + 28) = v18;
  v25 = 1;
  *(a1 + 32) = v21;
LABEL_40:
  *(a1 + 40) = v25;
  if (v55 == 1)
  {
    result = v54;
    v54 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if (v57 == 1)
  {
    result = v56;
    v56 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if (v59 == 1 && (result = v58, v58 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
    if ((v25 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (v25)
    {
      return result;
    }

LABEL_54:
    v26 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v26)
    {
      v27 = *(*result + 16);

      return v27();
    }
  }

  return result;
}

void sub_19D7E0B3C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, char a16)
{
  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (*(v16 - 40) == 1)
  {
    v18 = *(v16 - 48);
    *(v16 - 48) = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PlatformTextTrackData>(unsigned int *a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 40 * a1[3];
  v5 = *result;
  *result = 0;
  *v4 = v5;
  v6 = *(result + 8);
  *(result + 8) = 0;
  *(v4 + 8) = v6;
  v7 = *(result + 16);
  *(result + 16) = 0;
  *(v4 + 16) = v7;
  LOBYTE(v7) = *(result + 32);
  *(v4 + 24) = *(result + 24);
  *(v4 + 32) = v7;
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7E0DF4);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 40 * *(result + 3));
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(v2 + 2) = v5 / 0x28;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::PlatformTextTrackData>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::PlatformTextTrackData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
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
      v8 = *(v5 + 2);
      *(v5 + 2) = 0;
      *(a3 + 16) = v8;
      v9 = *(v5 + 3);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 24) = v9;
      v10 = *(v5 + 2);
      *(v5 + 2) = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      v11 = *(v5 + 1);
      *(v5 + 1) = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::PlatformTextTrackData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[2];
      v3[2] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = v3[1];
      v3[1] = 0;
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

uint64_t WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::PlatformTextTrackData>::destruct(*a1, (*a1 + 40 * v3));
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

void sub_19D7E0FBC(_Unwind_Exception *exception_object, void *a2)
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

void IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(IPC::Encoder *a1, atomic_uint **a2)
{
  if (*a2)
  {
    v5 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v5);
    IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(v3, *a2);
  }

  else
  {
    v4 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v4);
  }
}

void IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::decode<IPC::Decoder,WebCore::SharedBuffer>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = IPC::Decoder::decode<BOOL>(a1);
  if ((v4 & 0x100) == 0)
  {
    *a2 = 0;
    a2[8] = 0;
    return;
  }

  if ((v4 & 1) == 0)
  {
    *a2 = 0;
LABEL_4:
    a2[8] = 1;
    return;
  }

  IPC::ArgumentCoder<WebCore::SharedBuffer,void>::decode(a1, &v5);
  *a2 = 0;
  a2[8] = 0;
  if (v6 == 1)
  {
    *a2 = v5;
    goto LABEL_4;
  }
}

uint64_t IPC::ArgumentCoder<WTF::Markable<double,WTF::MarkableTraits<double>>,void>::encode<IPC::Encoder,WTF::Markable<double,WTF::MarkableTraits<double>>>(IPC::Encoder *a1, double *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 0);
  v4 = *a2;

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

unint64_t IPC::VectorArgumentCoder<false,WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if (v5)
  {
    v6 = result;
    v8 = 0;
    v9 = 0;
    if (result >= 0x555)
    {
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebsiteDataStoreParameters>(a2, v10);
        if ((v11 & 1) == 0)
        {
          break;
        }

        if (HIDWORD(v9) == v9)
        {
          WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteDataStoreParameters>(&v8, v10);
        }

        else
        {
          WebKit::WebsiteDataStoreParameters::WebsiteDataStoreParameters(v8 + 768 * HIDWORD(v9), v10);
          ++HIDWORD(v9);
        }

        std::optional<WebKit::WebsiteDataStoreParameters>::~optional(v10);
        if (!--v6)
        {
          WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v8, HIDWORD(v9));
          WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, &v8);
          goto LABEL_10;
        }
      }
    }

    else
    {
      if (!result)
      {
LABEL_9:
        WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, &v8);
LABEL_10:
        *(a1 + 16) = 1;
        return WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v7);
      }

      LODWORD(v9) = 768 * result / 0x300u;
      v8 = WTF::fastMalloc((768 * result));
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebsiteDataStoreParameters>(a2, v10);
        if ((v11 & 1) == 0)
        {
          break;
        }

        if (HIDWORD(v9) == v9)
        {
          WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteDataStoreParameters>(&v8, v10);
        }

        else
        {
          WebKit::WebsiteDataStoreParameters::WebsiteDataStoreParameters(v8 + 768 * HIDWORD(v9), v10);
          ++HIDWORD(v9);
        }

        std::optional<WebKit::WebsiteDataStoreParameters>::~optional(v10);
        if (!--v6)
        {
          goto LABEL_9;
        }
      }
    }

    *a1 = 0;
    *(a1 + 16) = 0;
    std::optional<WebKit::WebsiteDataStoreParameters>::~optional(v10);
    return WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v7);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  return result;
}

void sub_19D7E1314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::optional<WebKit::WebsiteDataStoreParameters>::~optional(&a11);
  WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v12);
  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebKit::WebsiteDataStoreParameters>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::WebsiteDataStoreParameters,void>::decode(a1, a2);
  if ((a2[768] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

uint64_t std::optional<WebKit::WebsiteDataStoreParameters>::~optional(uint64_t a1)
{
  if (*(a1 + 768) == 1)
  {
    if (*(a1 + 760) == 1)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a1 + 752));
    }

    if (*(a1 + 744) == 1)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a1 + 736));
    }

    if (*(a1 + 728) == 1)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a1 + 720));
    }

    if (*(a1 + 712) == 1)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a1 + 704));
    }

    if (*(a1 + 696) == 1)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a1 + 688));
    }

    WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters((a1 + 32));
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a1 + 16));
    v3 = *a1;
    if (*a1)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v3, v2);
    }
  }

  return a1;
}

unint64_t WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 768 * a1[3] <= a3)
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

    WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF *WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7E163CLL);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 768 * *(result + 3));
    v5 = 768 * a2;
    v6 = WTF::fastMalloc((768 * a2));
    *(v2 + 2) = v5 / 0x300;
    *v2 = v6;
    result = WTF::VectorMover<false,WebKit::WebsiteDataStoreParameters>::move(v3, v4, v6);
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

WTF *WTF::VectorMover<false,WebKit::WebsiteDataStoreParameters>::move(WTF *result, WTF *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = (v5 + v6);
      WebKit::WebsiteDataStoreParameters::WebsiteDataStoreParameters(a3 + v6, v5 + v6);
      if (*(v5 + v6 + 760) == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v7 + 94);
      }

      if (*(v7 + 744) == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v5 + v6 + 736));
      }

      v8 = (v5 + v6);
      if (*(v5 + v6 + 728) == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v8 + 90);
      }

      if (*(v8 + 712) == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v5 + v6 + 704));
      }

      v9 = (v5 + v6);
      if (*(v5 + v6 + 696) == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v9 + 86);
      }

      WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(v9 + 4);
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v9 + 2);
      result = *v9;
      if (*v9)
      {
        v11 = v5 + v6;
        *v11 = 0;
        *(v11 + 2) = 0;
        result = WTF::fastFree(result, v10);
      }

      v6 += 768;
    }

    while ((v5 + v6) != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    v5 = 3 * this;
    if (v4 > this)
    {
      v6 = *result;
      v7 = 768 * this;
      v8 = 768 * v4;
      do
      {
        v9 = v6 + v7;
        if (*(v6 + v7 + 760) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v9 + 752));
        }

        if (*(v9 + 744) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v6 + v7 + 736));
        }

        v10 = v6 + v7;
        if (*(v6 + v7 + 728) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v10 + 720));
        }

        if (*(v10 + 712) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v6 + v7 + 704));
        }

        v11 = v6 + v7;
        if (*(v6 + v7 + 696) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v11 + 688));
        }

        WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters((v11 + 32));
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v11 + 16));
        result = *v11;
        if (*v11)
        {
          v12 = v6 + v7;
          *v12 = 0;
          *(v12 + 8) = 0;
          result = WTF::fastFree(result, this);
        }

        v6 += 768;
        v8 -= 768;
      }

      while (v7 != v8);
      v3[3] = this;
      LODWORD(v4) = this;
    }

    v13 = *v3;
    if (this)
    {
      if (this >= 0x555556)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((v5 << 8));
      v3[2] = (v5 << 8) / 0x300u;
      *v3 = result;
      if (result != v13)
      {
        result = WTF::VectorMover<false,WebKit::WebsiteDataStoreParameters>::move(v13, (v13 + 768 * v4), result);
      }
    }

    if (v13)
    {
      if (*v3 == v13)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v13, this);
    }
  }

  return result;
}

unint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if (v5)
  {
    v6 = result;
    v19 = 0;
    v20 = 0;
    if (result >= 0x10000)
    {
      while (1)
      {
        IPC::Decoder::decode<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>(&v16, a2);
        v8 = v18;
        if (v18)
        {
          if (HIDWORD(v20) == v20)
          {
            WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>(&v19, &v16);
          }

          else
          {
            v10 = (v19 + 16 * HIDWORD(v20));
            *v10 = v16;
            v11 = v17;
            v17 = 0;
            v10[1] = v11;
            ++HIDWORD(v20);
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 16) = 0;
        }

        if (v18 == 1)
        {
          v9 = v17;
          v17 = 0;
          if (v9)
          {
            if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v9, v7);
            }
          }
        }

        if ((v8 & 1) == 0)
        {
          break;
        }

        if (!--v6)
        {
          WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v19, HIDWORD(v20));
          WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, &v19);
          goto LABEL_5;
        }
      }
    }

    else if (result)
    {
      LODWORD(v20) = result;
      v19 = WTF::fastMalloc((16 * result));
      while (1)
      {
        IPC::Decoder::decode<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>(&v16, a2);
        v12 = v18;
        if (v18)
        {
          if (HIDWORD(v20) == v20)
          {
            WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>(&v19, &v16);
          }

          else
          {
            v14 = (v19 + 16 * HIDWORD(v20));
            *v14 = v16;
            v15 = v17;
            v17 = 0;
            v14[1] = v15;
            ++HIDWORD(v20);
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 16) = 0;
        }

        if (v18 == 1)
        {
          v13 = v17;
          v17 = 0;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v7);
            }
          }
        }

        if ((v12 & 1) == 0)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
LABEL_4:
      WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, &v19);
LABEL_5:
      *(a1 + 16) = 1;
    }

    return WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v7);
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

void sub_19D7E1B34(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<WebCore::RegistrableDomain>(a2, &v12), v13 == 1))
  {
    v8 = v12;
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
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
  }

  return result;
}

void *WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 16 * *(a1 + 12));
  *v4 = *result;
  v5 = result[1];
  result[1] = 0;
  v4[1] = v5;
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7E1DE8);
    }

    v4 = *a1;
    v5 = (*a1 + 16 * *(a1 + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorTypeOperations<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>::move(v4, v5, v6);
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

WTF::StringImpl *WTF::VectorTypeOperations<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>::move(WTF::StringImpl *result, WTF::StringImpl *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 1);
      *(v5 + 1) = 0;
      a3[1] = v6;
      result = *(v5 + 1);
      *(v5 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 2;
      v5 = (v5 + 16);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct((*result + 16 * a2), (*result + 16 * v4));
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
        result = WTF::VectorTypeOperations<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>::move(v5, (v5 + 16 * v4), result);
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

uint64_t WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(*a1, (*a1 + 16 * v3));
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

WTF::StringImpl **IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::decode<IPC::Decoder>@<X0>(WTF::StringImpl **this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this;
  v4 = this[1];
  v5 = ((this[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
    IPC::Decoder::markInvalid(this);
LABEL_29:
    this = IPC::Decoder::markInvalid(v2);
    *a2 = 0;
    a2[8] = 0;
    return this;
  }

  this[2] = (v5 + 4);
  if (!v5)
  {
    goto LABEL_29;
  }

  v10 = 0;
  v11 = *v5;
  v18 = 0;
  if (v11)
  {
    while (1)
    {
      IPC::Decoder::decode<WTF::String>(v2, &v16);
      if ((v17 & 1) == 0)
      {
        *a2 = 0;
        a2[8] = 0;
        goto LABEL_25;
      }

      v14 = v16;
      if (v16 + 1 <= 1)
      {
        *a2 = 0;
        a2[8] = 0;
        goto LABEL_21;
      }

      this = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v18, &v16, v13, v15);
      if ((v15[16] & 1) == 0)
      {
        break;
      }

      if (v17 == 1)
      {
        this = v16;
        v16 = 0;
        if (this)
        {
          if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            this = WTF::StringImpl::destroy(this, v12);
          }
        }
      }

      if (!--v11)
      {
        v10 = v18;
        goto LABEL_8;
      }
    }

    *a2 = 0;
    a2[8] = 0;
    if ((v17 & 1) == 0)
    {
      goto LABEL_25;
    }

    v14 = v16;
LABEL_21:
    v16 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

LABEL_25:
    this = v18;
    if (v18)
    {
      return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v18, v12);
    }
  }

  else
  {
LABEL_8:
    *a2 = v10;
    a2[8] = 1;
  }

  return this;
}

void sub_19D7E2108(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, char a13, WTF::StringImpl **a14)
{
  if ((a13 & 1) != 0 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a14, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::VectorArgumentCoder<false,WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  if ((v5 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v6 = result;
  v13 = 0;
  v14 = 0;
  if (result >= 0x8000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::OrganizationStorageAccessPromptQuirk>(a1, v11);
      if ((v12 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v14) == v14)
      {
        WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::OrganizationStorageAccessPromptQuirk>(&v13, v11);
      }

      else
      {
        WebCore::OrganizationStorageAccessPromptQuirk::OrganizationStorageAccessPromptQuirk((v13 + 32 * HIDWORD(v14)), v11);
        ++HIDWORD(v14);
      }

      std::optional<WebCore::OrganizationStorageAccessPromptQuirk>::~optional(v11, v8);
      if (!--v6)
      {
        WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v13, HIDWORD(v14));
        WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a2, &v13);
        goto LABEL_5;
      }
    }
  }

  else
  {
    if (!result)
    {
LABEL_4:
      WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a2, &v13);
LABEL_5:
      *(a2 + 16) = 1;
      return WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v7);
    }

    LODWORD(v14) = result;
    v13 = WTF::fastMalloc((32 * result));
    while (1)
    {
      IPC::Decoder::decode<WebCore::OrganizationStorageAccessPromptQuirk>(a1, v11);
      if ((v12 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v14) == v14)
      {
        WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::OrganizationStorageAccessPromptQuirk>(&v13, v11);
      }

      else
      {
        WebCore::OrganizationStorageAccessPromptQuirk::OrganizationStorageAccessPromptQuirk((v13 + 32 * HIDWORD(v14)), v11);
        ++HIDWORD(v14);
      }

      std::optional<WebCore::OrganizationStorageAccessPromptQuirk>::~optional(v11, v10);
      if (!--v6)
      {
        goto LABEL_4;
      }
    }
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  std::optional<WebCore::OrganizationStorageAccessPromptQuirk>::~optional(v11, v9);
  return WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v7);
}

void sub_19D7E22CC(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::optional<WebCore::OrganizationStorageAccessPromptQuirk>::~optional(va, a2);
  WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v4);
  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::OrganizationStorageAccessPromptQuirk>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::OrganizationStorageAccessPromptQuirk,void>::decode(a1, a2);
  if ((a2[32] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

uint64_t std::optional<WebCore::OrganizationStorageAccessPromptQuirk>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
    v4 = *(a1 + 8);
    if (v4)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, v3);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }
  }

  return a1;
}

unsigned int *WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, unint64_t a2)
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
      v5 = 32 * v2 - 32 * a2;
      v6 = *result + 32 * a2 + 16;
      do
      {
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, a2);
        v7 = *(v6 - 8);
        if (v7)
        {
          WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v7, a2);
        }

        result = *(v6 - 16);
        *(v6 - 16) = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }

        v6 += 32;
        v5 -= 32;
      }

      while (v5);
    }

    v4[3] = v3;
  }

  return result;
}

void *WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D7E2488(_Unwind_Exception *exception_object, void *a2)
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

void *WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D7E24D8(_Unwind_Exception *exception_object, void *a2)
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

void *WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D7E2528(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::ArgumentCoder<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,void>::encode<IPC::Encoder,WebCore::SecurityOrigin>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::NavigatingToAppBoundDomain>,void>::encode<IPC::Encoder,std::optional<WebKit::NavigatingToAppBoundDomain>>(IPC::Encoder *a1, char *a2)
{
  if ((a2[1] & 1) == 0)
  {
    v9 = 0;
    v3 = &v9;
    return IPC::Encoder::operator<<<BOOL>(a1, v3);
  }

  v8 = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  if (a2[1])
  {
    v10 = *a2;
    v3 = &v10;
    return IPC::Encoder::operator<<<BOOL>(a1, v3);
  }

  v6 = std::__throw_bad_optional_access[abi:sn200100]();
  return IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v6, v7);
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<mpark::variant<std::monostate,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<std::monostate,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,0ul>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<std::monostate,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<std::monostate,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,0ul>(mpark *result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 == 2)
  {
    if (a3 == 2)
    {
      goto LABEL_4;
    }

LABEL_8:
    mpark::throw_bad_variant_access(result);
  }

  if (a4 != 1)
  {
    return result;
  }

  if (a3 != 1)
  {
    goto LABEL_8;
  }

LABEL_4:

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(result, a2);
}

uint64_t IPC::ArgumentCoder<WebCore::StoredCredentialsPolicy,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
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
  if (v2 >= 3)
  {
LABEL_8:
    v2 = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::NavigatingToAppBoundDomain>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v8 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_9:
    v9 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v9;
    goto LABEL_10;
  }

  v2 = *v1;
  if (v2 >= 2)
  {
LABEL_10:
    IPC::Decoder::markInvalid(a1);
    v5 = 0;
    v3 = 0;
    v4 = 0;
    return v3 | v4 | v5;
  }

  if (v2)
  {
    v7 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a1);
    v5 = (v7 & 0x100) << 8;
    v3 = (v7 & ((v7 << 7) >> 15));
    v4 = 256;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0x10000;
  }

  return v3 | v4 | v5;
}

uint64_t IPC::ArgumentCoder<WebKit::NavigatingToAppBoundDomain,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v8 = a1[3];
    if (v8)
    {
      if (v1)
      {
        (*(*v8 + 16))(v8);
        v3 = *v11;
        v1 = v11[1];
LABEL_9:
        *v11 = 0;
        v11[1] = 0;
        v9 = v11[3];
        if (v9)
        {
          if (v1)
          {
            (*(*v9 + 16))(v9, v3);
            v3 = *v11;
            v1 = v11[1];
            goto LABEL_13;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_9;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v11 = a1;
    goto LABEL_9;
  }

  v4 = *v2;
  if (v4 < 2)
  {
    v5 = v4 != 0;
    v6 = 256;
    return v6 | v5;
  }

  v11 = a1;
LABEL_13:
  *v11 = 0;
  v11[1] = 0;
  v10 = v11[3];
  if (v10 && v1)
  {
    (*(*v10 + 16))(v10, v3);
  }

  v5 = 0;
  v6 = 0;
  return v6 | v5;
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v3 = v2 - *a1;
  v4 = v1 >= v3;
  v5 = v1 - v3;
  if (!v4 || v5 <= 1)
  {
    v12 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v12;
LABEL_10:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_11;
  }

  *(a1 + 2) = v2 + 1;
  if (!v2)
  {
    goto LABEL_10;
  }

  v7 = *v2;
  if (v7 > 0x7FF)
  {
LABEL_11:
    v10 = 0;
    v9 = 0;
    v8 = 0;
    return v9 | v10 | v8;
  }

  v8 = v7 & 0x700;
  v9 = v7;
  v10 = 0x10000;
  return v9 | v10 | v8;
}

uint64_t *WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *result;
  *result = 0;
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v4 + 1;
  return result;
}

unint64_t WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, WTF::StringImpl *a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > a2)
    {
      v5 = (*result + 8 * a2);
      v6 = 8 * v4 - 8 * a2;
      do
      {
        result = *v5;
        *v5 = 0;
        if (result)
        {
          result = WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(result, a2);
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
      v3[3] = a2;
      LODWORD(v4) = a2;
    }

    v7 = *v3;
    if (a2)
    {
      if (v3[2])
      {
        v3[2] = a2;
        result = WTF::fastRealloc(v7, (8 * a2));
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
      if (result != v7)
      {
        result = memcpy(result, v7, 8 * v4);
      }
    }

    if (v7)
    {
      if (*v3 == v7)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v7, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v8, a2);
      }

      ++v6;
      v7 -= 8;
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

IPC::Decoder *IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 2);
  if (*(result + 1) <= &v3[-*result])
  {
    v7 = result;
    IPC::Decoder::markInvalid(result);
    result = v7;
    goto LABEL_10;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
LABEL_10:
    v8 = result;
    IPC::Decoder::markInvalid(result);
    result = v8;
    goto LABEL_11;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_11:
    result = IPC::Decoder::markInvalid(result);
    goto LABEL_12;
  }

  if (!v4)
  {
    *a2 = 0;
    a2[8] = 0;
    v6 = 1;
    goto LABEL_7;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(result);
  if ((v5 & 1) == 0)
  {
LABEL_12:
    v6 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = result;
  v6 = 1;
  a2[8] = 1;
LABEL_7:
  a2[16] = v6;
  return result;
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::SandboxFlag>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v3 = v2 - *a1;
  v4 = v1 >= v3;
  v5 = v1 - v3;
  if (!v4 || v5 <= 1)
  {
    v8 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v8;
LABEL_9:
    IPC::Decoder::markInvalid(a1);
    return 0;
  }

  *(a1 + 2) = v2 + 1;
  if (!v2)
  {
    goto LABEL_9;
  }

  return *v2 | 0x10000u;
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 2);
  if (*(result + 1) <= &v3[-*result])
  {
    v7 = result;
    IPC::Decoder::markInvalid(result);
    result = v7;
    goto LABEL_10;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
LABEL_10:
    v8 = result;
    IPC::Decoder::markInvalid(result);
    result = v8;
    goto LABEL_11;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_11:
    result = IPC::Decoder::markInvalid(result);
    goto LABEL_12;
  }

  if (v4)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(result);
    if (v6)
    {
      *a2 = result;
      v5 = 1;
      *(a2 + 8) = 1;
      goto LABEL_6;
    }

LABEL_12:
    v5 = 0;
    *a2 = 0;
    goto LABEL_6;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = 1;
LABEL_6:
  *(a2 + 16) = v5;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 2);
  if (*(result + 1) <= &v3[-*result])
  {
    v7 = result;
    IPC::Decoder::markInvalid(result);
    result = v7;
    goto LABEL_10;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
LABEL_10:
    v8 = result;
    IPC::Decoder::markInvalid(result);
    result = v8;
    goto LABEL_11;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_11:
    result = IPC::Decoder::markInvalid(result);
    goto LABEL_12;
  }

  if (v4)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(result);
    if (v6)
    {
      *a2 = result;
      v5 = 1;
      *(a2 + 8) = 1;
      goto LABEL_6;
    }

LABEL_12:
    v5 = 0;
    *a2 = 0;
    goto LABEL_6;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = 1;
LABEL_6:
  *(a2 + 16) = v5;
  return result;
}

unint64_t IPC::ArgumentCoder<mpark::variant<std::monostate,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder,0ul>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3 != 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      *a1 = result;
      *(a1 + 8) = 2;
      v6 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v6 = 0;
    *a1 = 0;
    goto LABEL_7;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  *a1 = result;
  v6 = 1;
  *(a1 + 8) = 1;
LABEL_7:
  *(a1 + 16) = v6;
  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

IPC::Decoder *IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_13;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_13:
    IPC::Decoder::markInvalid(v2);
    goto LABEL_14;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_14:
    this = IPC::Decoder::markInvalid(v2);
    *a2 = 0;
    *(a2 + 16) = 0;
    return this;
  }

  if (v5)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    this = IPC::ArgumentCoder<WTF::UUID,void>::decode(this, v8);
    if ((v9 & 1) == 0)
    {
      this = IPC::Decoder::markInvalid(v2);
      v7 = 0;
      *a2 = 0;
      goto LABEL_9;
    }

    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 8) = v6;
  }

  v7 = 1;
LABEL_9:
  *(a2 + 16) = v7;
  return this;
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 2);
  if (*(result + 1) <= &v3[-*result])
  {
    v7 = result;
    IPC::Decoder::markInvalid(result);
    result = v7;
    goto LABEL_10;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
LABEL_10:
    v8 = result;
    IPC::Decoder::markInvalid(result);
    result = v8;
    goto LABEL_11;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_11:
    result = IPC::Decoder::markInvalid(result);
    goto LABEL_12;
  }

  if (v4)
  {
    result = IPC::Decoder::decode<unsigned long long>(result);
    if (v6)
    {
      *a2 = result;
      v5 = 1;
      *(a2 + 8) = 1;
      goto LABEL_6;
    }

LABEL_12:
    v5 = 0;
    *a2 = 0;
    goto LABEL_6;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = 1;
LABEL_6:
  *(a2 + 16) = v5;
  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<unsigned long long>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<BOOL>(a1);
  if ((result & 0x100) == 0)
  {
    goto LABEL_7;
  }

  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[8] = 0;
    v6 = 1;
    goto LABEL_5;
  }

  result = IPC::Decoder::decode<unsigned long long>(a1);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    v6 = 0;
    *a2 = 0;
    goto LABEL_5;
  }

  *a2 = result;
  v6 = 1;
  a2[8] = 1;
LABEL_5:
  a2[16] = v6;
  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
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
    result = std::__optional_move_base<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1, v6);
    a1[24] = 1;
    if (v7 != 1)
    {
      return result;
    }

    return WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v5);
  }

  result = IPC::Decoder::decode<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v6, a2);
  if (v7 != 1)
  {
LABEL_8:
    *a1 = 0;
    a1[24] = 0;
    return result;
  }

  result = std::optional<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, v6);
  a1[24] = 1;
  if (v7)
  {
    return WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v5);
  }

  return result;
}

void sub_19D7E3254(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, a1);
  if ((a1[16] & 1) == 0)
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

void sub_19D7E32F4(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v17 = *(a1 + 3);
    if (v17)
    {
      if (v4)
      {
        (*(*v17 + 16))(v17);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_37;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_37:
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
    a2[16] = 0;
    return result;
  }

  v10 = *v5;
  v18 = 0;
  v19 = 0;
  if (v10 >= 0x5555)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>>(a1, &v20);
      v14 = v22;
      if (v22)
      {
        if (HIDWORD(v19) == v19)
        {
          WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>>(&v18, &v20);
        }

        else
        {
          std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>::pair[abi:sn200100](v18 + 48 * HIDWORD(v19), &v20);
          ++HIDWORD(v19);
        }
      }

      else
      {
        *a2 = 0;
        a2[16] = 0;
      }

      if (v22 == 1)
      {
        v15 = v20;
        if (v20)
        {
          v20 = 0;
          v21 = 0;
          WTF::fastFree(v15, v11);
        }
      }

      if ((v14 & 1) == 0)
      {
        break;
      }

      if (!--v10)
      {
        WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v18, HIDWORD(v19));
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (v10)
    {
      LODWORD(v19) = 48 * v10 / 0x30u;
      v18 = WTF::fastMalloc((48 * v10));
      do
      {
        IPC::Decoder::decode<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>>(a1, &v20);
        v12 = v22;
        if (v22)
        {
          if (HIDWORD(v19) == v19)
          {
            WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>>(&v18, &v20);
          }

          else
          {
            std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>::pair[abi:sn200100](v18 + 48 * HIDWORD(v19), &v20);
            ++HIDWORD(v19);
          }
        }

        else
        {
          *a2 = 0;
          a2[16] = 0;
        }

        if (v22 == 1 && (v13 = v20) != 0)
        {
          v20 = 0;
          v21 = 0;
          WTF::fastFree(v13, v11);
          if ((v12 & 1) == 0)
          {
            return WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v11);
          }
        }

        else if ((v12 & 1) == 0)
        {
          return WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v11);
        }

        --v10;
      }

      while (v10);
    }

LABEL_33:
    std::optional<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a2, &v18);
  }

  return WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v11);
}

void sub_19D7E35B4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    v18 = a11;
    if (a11)
    {
      a11 = 0;
      a12 = 0;
      WTF::fastFree(v18, a2);
    }
  }

  WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, a2);
  _Unwind_Resume(a1);
}

WTF *IPC::Decoder::decode<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[48] & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
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

void sub_19D7E366C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 48) == 1)
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

uint64_t std::optional<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7E36CC(_Unwind_Exception *exception_object, void *a2)
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

WTF *IPC::ArgumentCoder<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v8);
  if (v10 == 1)
  {
    result = IPC::ArgumentCoder<std::optional<WTF::UUID>,void>::decode<IPC::Decoder>(a1, v11);
    if (v12)
    {
      while ((v10 & 1) == 0)
      {
        __break(1u);
LABEL_13:
        if (v6)
        {
          result = (*(*result + 16))(result, v5);
          if (v12)
          {
            continue;
          }
        }

        goto LABEL_11;
      }

      result = std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>::pair[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>,0>(a2, &v8, v11);
      v7 = 1;
    }

    else
    {
      v5 = *a1;
      v6 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result)
      {
        goto LABEL_13;
      }

LABEL_11:
      v7 = 0;
      *a2 = 0;
    }

    a2[48] = v7;
    if (v10)
    {
      result = v8;
      if (v8)
      {
        v8 = 0;
        v9 = 0;
        return WTF::fastFree(result, v5);
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[48] = 0;
  }

  return result;
}

void sub_19D7E3808(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
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

uint64_t std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>::pair[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>,0>(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v5 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 32) = v5;
  return a1;
}

void sub_19D7E3874(_Unwind_Exception *exception_object, void *a2)
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

uint64_t std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>::pair[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  return a1;
}

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

  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  return a1;
}

void sub_19D7E38CC(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>::pair[abi:sn200100](*a1 + 48 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7E3AB4);
    }

    v3 = *a1;
    v4 = (*a1 + 48 * *(a1 + 12));
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(a1 + 8) = v5 / 0x30;
    *a1 = v6;
    WTF::VectorMover<false,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>>::move(v3, v4, v6);
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

WTF *WTF::VectorMover<false,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>>::move(WTF *result, WTF *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>::pair[abi:sn200100](a3, v5);
      result = *v5;
      if (*v5)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        result = WTF::fastFree(result, v6);
      }

      a3 += 48;
      v5 += 48;
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    if (result[3] > this)
    {
      result = WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, this);
    }

    v4 = *v3;
    if (this)
    {
      if (this >= 0x5555556)
      {
        __break(0xC471u);
        return result;
      }

      v5 = v3[3];
      v6 = (48 * this);
      result = WTF::fastMalloc(v6);
      v3[2] = v6 / 0x30;
      *v3 = result;
      if (result != v4)
      {
        result = WTF::VectorMover<false,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>>::move(v4, (v4 + 48 * v5), result);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v4, this);
    }
  }

  return result;
}

unsigned int *WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, unint64_t a2)
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
      v5 = *result + 48 * a2;
      v6 = 48 * v2 - 48 * a2;
      do
      {
        result = *v5;
        if (*v5)
        {
          *v5 = 0;
          *(v5 + 8) = 0;
          result = WTF::fastFree(result, a2);
        }

        v5 += 48;
        v6 -= 48;
      }

      while (v6);
    }

    v4[3] = v3;
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::ITPThirdPartyDataForSpecificFirstParty>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::RegistrableDomain>(a2, &v19);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *a2;
  if (v4 <= &v5[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15)
    {
      if (v4)
      {
        (*(*v15 + 16))(v15);
        v4 = *(a2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_26:
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      if (v4)
      {
        (*(*v16 + 16))(v16);
        v18 = 0;
        v6 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_30;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v18 = 0;
    goto LABEL_30;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_26;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

  v18 = v7;
LABEL_30:
  *a2 = 0;
  *(a2 + 1) = 0;
  v17 = *(a2 + 3);
  if (v17 && v4)
  {
    (*(*v17 + 16))(v17, v6);
  }

  v8 = 0;
  v7 = v18;
LABEL_5:
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = IPC::Decoder::decode<WTF::Seconds>(a2);
  if (*a2)
  {
    if (v20 & 1) != 0 && (v8 & 1) != 0 && (v11)
    {
      *a1 = v19;
      *(a1 + 8) = v9;
      *(a1 + 16) = result;
      *(a1 + 24) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (v20)
  {
    v14 = v19;
    v19 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v11);
      }
    }
  }

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

void sub_19D7E3EB4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7E4064);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorTypeOperations<WebKit::ITPThirdPartyDataForSpecificFirstParty>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::ITPThirdPartyDataForSpecificFirstParty>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
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

uint64_t IPC::ArgumentCoder<WTF::RefPtr<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,void>::encode<IPC::Encoder,WebCore::FormData>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v6 = 1;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::FormData,void>::encode(v4, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

WTF *IPC::ArgumentCoder<WTF::RefPtr<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,void>::decode<IPC::Decoder,WebCore::FormData>@<X0>(WTF *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this;
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    v6 = this;
    IPC::Decoder::markInvalid(this);
    v2 = v6;
    goto LABEL_11;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_11:
    v7 = v2;
    IPC::Decoder::markInvalid(v2);
    v2 = v7;
    goto LABEL_12;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_12:
    this = IPC::Decoder::markInvalid(v2);
    *a2 = 0;
    a2[8] = 0;
    return this;
  }

  if (!v5)
  {
    *a2 = 0;
LABEL_6:
    a2[8] = 1;
    return this;
  }

  this = IPC::ArgumentCoder<WebCore::FormData,void>::decode(&v8, this);
  *a2 = 0;
  a2[8] = 0;
  if (v9 == 1)
  {
    *a2 = v8;
    goto LABEL_6;
  }

  return this;
}

void IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  if (*(a1 + 1) <= &v3[-*a1])
  {
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v5;
    goto LABEL_12;
  }

  *(a1 + 2) = v3 + 1;
  if (!v3)
  {
LABEL_12:
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v6;
    goto LABEL_13;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_13:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_14;
  }

  if (v4)
  {
    IPC::Decoder::decode<WebCore::SharedMemoryHandle>(a1, v7);
    if (v9 == 1)
    {
      WTF::MachSendRight::MachSendRight();
      *(a2 + 8) = v8;
      *(a2 + 16) = 1;
      *(a2 + 24) = 1;
      if ((v9 & 1) == 0)
      {
        return;
      }

      goto LABEL_7;
    }

LABEL_14:
    *a2 = 0;
    *(a2 + 24) = 0;
    return;
  }

  v7[0] = 0;
  v9 = 0;
  std::__optional_move_base<WebCore::SharedMemoryHandle,false>::__optional_move_base[abi:sn200100](a2, v7);
  *(a2 + 24) = 1;
  if (v9 == 1)
  {
LABEL_7:
    WTF::MachSendRight::~MachSendRight(v7);
  }
}

void sub_19D7E42F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference::SerializableBuffer>,void>::encode<IPC::Encoder,std::optional<IPC::SharedBufferReference::SerializableBuffer>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 32))
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
      return IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::SharedMemoryHandle>>(a1, a2 + 8);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference::SerializableBuffer>,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference::SerializableBuffer>,void>::decode<IPC::Decoder>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  v6 = *this;
  if (v5 <= v4 - *this)
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_32;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_32:
    IPC::Decoder::markInvalid(this);
    goto LABEL_33;
  }

  if (*v4 >= 2u)
  {
LABEL_33:
    IPC::Decoder::markInvalid(this);
LABEL_27:
    *a2 = 0;
    a2[40] = 0;
    return;
  }

  if (*v4)
  {
    v7 = v4 & 0xFFFFFFFFFFFFFFF8;
    v8 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
    v9 = v8 - v6;
    v10 = v5 >= v9;
    v11 = v5 - v9;
    if (v10 && v11 > 7)
    {
      *(this + 2) = v7 + 16;
      if (v8)
      {
        v13 = *v8;
        IPC::Decoder::decode<std::optional<WebCore::SharedMemoryHandle>>(v20, this);
        if (*this)
        {
          v18 = v13;
          if (v21)
          {
            std::__optional_move_base<WebCore::SharedMemoryHandle,false>::__optional_move_base[abi:sn200100](v19, v20);
            v14 = v18;
            std::__optional_move_base<WebCore::SharedMemoryHandle,false>::__optional_move_base[abi:sn200100](v15, v19);
            v17 = 1;
            if (v19[16] == 1)
            {
              WTF::MachSendRight::~MachSendRight(v19);
            }

LABEL_15:
            if (v21 == 1 && v20[16] == 1)
            {
              WTF::MachSendRight::~MachSendRight(v20);
            }

            if ((v17 & 1) == 0)
            {
              IPC::Decoder::markInvalid(this);
              if ((v17 & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            *a2 = v14;
            std::__optional_move_base<WebCore::SharedMemoryHandle,false>::__optional_move_base[abi:sn200100]((a2 + 8), v15);
            a2[32] = 1;
            a2[40] = 1;
            if ((v17 & 1) != 0 && v16 == 1)
            {
              goto LABEL_21;
            }

            return;
          }

          goto LABEL_29;
        }

LABEL_30:
        LOBYTE(v14) = 0;
        v17 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      IPC::Decoder::markInvalid(this);
    }

    IPC::Decoder::markInvalid(this);
    IPC::Decoder::decode<std::optional<WebCore::SharedMemoryHandle>>(v20, this);
    if (*this)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  LOBYTE(v14) = 0;
  v17 = 0;
  std::__optional_move_base<IPC::SharedBufferReference::SerializableBuffer,false>::__optional_move_base[abi:sn200100](a2, &v14);
  a2[40] = 1;
  if (v17 == 1 && v16 == 1)
  {
LABEL_21:
    WTF::MachSendRight::~MachSendRight(v15);
  }
}

void sub_19D7E459C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 == 1 && a13 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D7E4610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, char a15)
{
  if (a15 == 1 && a13 == 1)
  {
    JUMPOUT(0x19D7E4604);
  }

  JUMPOUT(0x19D7E4608);
}

_BYTE *std::__optional_move_base<IPC::SharedBufferReference::SerializableBuffer,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    std::__optional_move_base<WebCore::SharedMemoryHandle,false>::__optional_move_base[abi:sn200100]((a1 + 8), a2 + 8);
    a1[32] = 1;
  }

  return a1;
}

void sub_19D7E4690(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1 && *(v1 + 24) == 1)
  {
    WTF::MachSendRight::~MachSendRight(v2);
  }

  _Unwind_Resume(exception_object);
}

char *IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, char **a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 3);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  v5 = *a2;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(*a2);
  v7 = result;
  v9 = v8;
  if (v5)
  {
    v5 += 32 * *(v5 - 1);
  }

  if (v5 != result)
  {
    do
    {
      IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a1, v7);
      result = IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&>(a1, v7 + 8);
      do
      {
        v7 += 32;
      }

      while (v7 != v9 && (*v7 + 1) <= 1);
    }

    while (v7 != v5);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[4 * v1];
  if (!*(result - 3))
  {
    return &result[4 * v1];
  }

  if (v1)
  {
    v3 = 32 * v1;
    while ((*result + 1) <= 1)
    {
      result += 4;
      v3 -= 32;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&>(IPC::Encoder *a1, char *a2)
{
  v5 = a2[16];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&>(a1, a2, v5);
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (a2[16])
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;
    return IPC::Encoder::operator<<<BOOL>(a1, &v4);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (a2[16] != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::Encoder::operator<<<BOOL>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul,1ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul,1ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 16) != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *a2;

    return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v5);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul,1ul,2ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul,1ul,2ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (*(a2 + 16) != 3)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul,1ul,2ul,3ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul,1ul,2ul,3ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 4)
  {
    if (*(a2 + 16) != 4)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *a2;

    return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v5);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul,1ul,2ul,3ul,4ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul,1ul,2ul,3ul,4ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 5)
  {
    if (*(a2 + 16) != 5)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul,1ul,2ul,3ul,4ul,5ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&,0ul,1ul,2ul,3ul,4ul,5ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 6)
  {
    if (*(a2 + 16) != 6)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(result, a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a1, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, void **a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 3);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = &(*a2)[2 * *(*a2 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a1, v6);
      result = IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a1, v6 + 1);
      do
      {
        v6 += 2;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
    }

    while (v6 != v9);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v3 = *(result - 1);
  v4 = &result[2 * v3];
  if (!*(result - 3))
  {
    return &result[2 * v3];
  }

  if (v3)
  {
    v5 = 16 * v3;
    while ((*result + 1) <= 1)
    {
      result += 2;
      v5 -= 16;
      if (!v5)
      {
        return v4;
      }
    }
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  v4 = result[1];
  v5 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *result;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
LABEL_169:
    *v2 = 0;
    v2[1] = 0;
    v75 = v2[3];
    if (v75)
    {
      if (v4)
      {
        (*(*v75 + 16))(v75);
        v4 = v2[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_171;
  }

  result[2] = (v5 + 1);
  if (!v5)
  {
LABEL_171:
    *v2 = 0;
    v2[1] = 0;
    result = v2[3];
    if (result)
    {
      if (v4)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    a2[8] = 0;
    return result;
  }

  v10 = *v5;
  v81 = 0;
  if (!v10)
  {
    v74 = 0;
LABEL_164:
    *a2 = v74;
    a2[8] = 1;
    return result;
  }

  v11 = 0;
  while (1)
  {
    v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v2);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = v12;
    v15 = v2[1];
    v16 = v2[2];
    v13 = *v2;
    if (v15 <= v16 - *v2)
    {
      *v2 = 0;
      v2[1] = 0;
      v65 = v2[3];
      if (!v65 || !v15)
      {
        goto LABEL_13;
      }

      (*(*v65 + 16))(v65);
LABEL_127:
      v15 = v2[1];
LABEL_128:
      v66 = v2[3];
      goto LABEL_129;
    }

    v17 = (v16 + 1);
    v2[2] = v16 + 1;
    if (!v16)
    {
      goto LABEL_128;
    }

    v18 = *v16;
    if (v18 > 6)
    {
      goto LABEL_13;
    }

    if (!*v16)
    {
      if (v15 <= &v17[-v13])
      {
        *v2 = 0;
        v2[1] = 0;
        v67 = v2[3];
        if (v67)
        {
          (*(*v67 + 16))(v67);
          v13 = *v2;
          v15 = v2[1];
          goto LABEL_134;
        }
      }

      else
      {
        v2[2] = v16 + 2;
        if (v16 != -1)
        {
          if (*v17 < 2u)
          {
            v78[0] = *v17;
            v79 = 0;
            goto LABEL_27;
          }

LABEL_137:
          v69 = v2[3];
          *v2 = 0;
          v2[1] = 0;
          if (v69 && v15)
          {
            (*(*v69 + 16))(v69, v13);
            v66 = v2[3];
            v15 = v2[1];
LABEL_129:
            *v2 = 0;
            v2[1] = 0;
            if (v66 && v15)
            {
              (*(*v66 + 16))(v66);
            }
          }

          goto LABEL_13;
        }

LABEL_134:
        v68 = v2[3];
        *v2 = 0;
        v2[1] = 0;
        if (v68)
        {
          if (v15)
          {
            (*(*v68 + 16))(v68, v13);
            v13 = *v2;
            v15 = v2[1];
          }

          else
          {
            v13 = 0;
          }

          goto LABEL_137;
        }
      }

LABEL_141:
      *v2 = 0;
      v2[1] = 0;
      goto LABEL_13;
    }

    switch(v18)
    {
      case 1u:
        if (v15 <= &v17[-v13])
        {
          *v2 = 0;
          v2[1] = 0;
          v70 = v2[3];
          if (!v70)
          {
            goto LABEL_141;
          }

          (*(*v70 + 16))(v70);
          v13 = *v2;
          v15 = v2[1];
        }

        else
        {
          v2[2] = v16 + 2;
          if (v16 != -1)
          {
            if (*v17 < 2u)
            {
              v78[0] = *v17;
              v79 = 1;
              goto LABEL_27;
            }

            goto LABEL_128;
          }
        }

        v72 = v2[3];
        *v2 = 0;
        v2[1] = 0;
        if (!v72)
        {
          goto LABEL_141;
        }

        if (v15)
        {
          (*(*v72 + 16))(v72, v13);
          goto LABEL_127;
        }

        goto LABEL_128;
      case 2u:
        v38 = IPC::Decoder::decode<unsigned long long>(v2);
        if (v13)
        {
          *v78 = v38;
          v79 = 2;
          goto LABEL_27;
        }

        goto LABEL_13;
      case 3u:
        IPC::Decoder::decode<WTF::String>(v2, &v87);
        if (v88 == 1)
        {
          *v78 = v87;
          v79 = 3;
          goto LABEL_27;
        }

        goto LABEL_13;
      case 4u:
        v39 = IPC::Decoder::decode<WTF::Seconds>(v2);
        if (v13)
        {
          *v78 = v39;
          v40 = 4;
          goto LABEL_86;
        }

        goto LABEL_13;
    }

    if (v18 != 5)
    {
      v48 = v16 & 0xFFFFFFFFFFFFFFFCLL;
      v49 = ((v16 & 0xFFFFFFFFFFFFFFFCLL) + 4);
      if (v15 < v49 - v13 || v15 - (v49 - v13) <= 3)
      {
        *v2 = 0;
        v2[1] = 0;
        v52 = v2[3];
        if (!v52)
        {
          goto LABEL_92;
        }

        (*(*v52 + 16))(v52);
        v13 = *v2;
        v15 = v2[1];
      }

      else
      {
        v2[2] = v48 + 8;
        if (v49)
        {
          v50 = *v49;
          v86 = 0;
          if (!v50)
          {
            v51 = 0;
LABEL_85:
            *v78 = v51;
            v40 = 6;
LABEL_86:
            v79 = v40;
LABEL_27:
            v80 = 1;
            goto LABEL_28;
          }

          while (1)
          {
            v84 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v2);
            LOBYTE(v85) = v13;
            if ((v13 & 1) == 0)
            {
              break;
            }

            v82 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v2);
            v83 = v13;
            if ((v13 & 1) == 0)
            {
              break;
            }

            if ((v85 & 1) == 0)
            {
              __break(1u);
              goto LABEL_169;
            }

            if (v84 - 1 > 0xFFFFFFFFFFFFFFFDLL)
            {
              break;
            }

            WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&v86, &v84, &v82, &v87);
            if ((v89 & 1) == 0)
            {
              break;
            }

            if (!--v50)
            {
              v51 = v86;
              goto LABEL_85;
            }
          }

          if (v86)
          {
            WTF::fastFree((v86 - 16), v13);
          }

LABEL_91:
          v52 = v2[3];
          goto LABEL_92;
        }
      }

      v52 = v2[3];
      *v2 = 0;
      v2[1] = 0;
      if (v52)
      {
        if (v15)
        {
          (*(*v52 + 16))(v52, v13);
        }

        goto LABEL_91;
      }

LABEL_92:
      v53 = *v2;
      v54 = v2[1];
      *v2 = 0;
      v2[1] = 0;
      if (v52 && v54)
      {
        (*(*v52 + 16))(v52, v53);
      }

LABEL_13:
      v19 = 0;
      v78[0] = 0;
      v80 = 0;
LABEL_14:
      v13 = *v2;
      v20 = v2[1];
      *v2 = 0;
      v2[1] = 0;
      v21 = v2[3];
      if (v21 && v20)
      {
        (*(*v21 + 16))(v21, v13);
        v19 = v80;
      }

      goto LABEL_15;
    }

    v41 = v16 & 0xFFFFFFFFFFFFFFF8;
    v42 = ((v16 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v15 < v42 - v13 || v15 - (v42 - v13) <= 7)
    {
      *v2 = 0;
      v2[1] = 0;
      v71 = v2[3];
      if (v71)
      {
        (*(*v71 + 16))(v71);
        v13 = *v2;
        v15 = v2[1];
LABEL_154:
        v73 = v2[3];
        *v2 = 0;
        v2[1] = 0;
        if (v73 && v15)
        {
          (*(*v73 + 16))(v73, v13);
        }
      }

      LOBYTE(v87) = 0;
      v89 = 0;
      goto LABEL_114;
    }

    v2[2] = v41 + 16;
    if (!v42)
    {
      goto LABEL_154;
    }

    v43 = *v42;
    v84 = 0;
    v85 = 0;
    if (v43 >= 0x20000)
    {
      while (1)
      {
        v55 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v2);
        v82 = v55;
        v83 = v46;
        if ((v46 & 1) == 0)
        {
          break;
        }

        if (HIDWORD(v85) == v85)
        {
          WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&v84, &v82);
        }

        else
        {
          *(v84 + HIDWORD(v85)) = v55;
          ++HIDWORD(v85);
        }

        if (!--v43)
        {
          v56 = HIDWORD(v85);
          if (v85 > HIDWORD(v85))
          {
            v77 = v84;
            if (HIDWORD(v85))
            {
              if (HIDWORD(v85) >> 29)
              {
                __break(0xC471u);
                JUMPOUT(0x19D7E552CLL);
              }

              v76 = (8 * HIDWORD(v85));
              v57 = WTF::fastMalloc(v76);
              LODWORD(v85) = v56;
              v84 = v57;
              if (v57 != v77)
              {
                v63 = v77;
                do
                {
                  v64 = *v63;
                  v63 = (v63 + 8);
                  *v57 = v64;
                  v57 = (v57 + 8);
                  v76 = (v76 - 8);
                }

                while (v76);
              }
            }

            if (v77)
            {
              if (v84 == v77)
              {
                v84 = 0;
                LODWORD(v85) = 0;
              }

              WTF::fastFree(v77, v46);
            }
          }

          goto LABEL_72;
        }
      }
    }

    else
    {
      if (!v43)
      {
LABEL_72:
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v87, &v84);
        v47 = 1;
        v89 = 1;
        goto LABEL_107;
      }

      v44 = WTF::fastMalloc((8 * v43));
      LODWORD(v85) = v43;
      v84 = v44;
      while (1)
      {
        v45 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v2);
        v82 = v45;
        v83 = v46;
        if ((v46 & 1) == 0)
        {
          break;
        }

        if (HIDWORD(v85) == v85)
        {
          WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&v84, &v82);
        }

        else
        {
          *(v84 + HIDWORD(v85)) = v45;
          ++HIDWORD(v85);
        }

        if (!--v43)
        {
          goto LABEL_72;
        }
      }
    }

    v47 = 0;
    LOBYTE(v87) = 0;
    v89 = 0;
LABEL_107:
    v58 = v84;
    if (v84)
    {
      v84 = 0;
      LODWORD(v85) = 0;
      WTF::fastFree(v58, v46);
      if (v89)
      {
        goto LABEL_109;
      }
    }

    else if (v47)
    {
      goto LABEL_109;
    }

LABEL_114:
    v60 = *v2;
    v61 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    v62 = v2[3];
    if (!v62)
    {
      goto LABEL_13;
    }

    if (!v61)
    {
      goto LABEL_13;
    }

    (*(*v62 + 16))(v62, v60);
    if ((v89 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_109:
    WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v78, &v87);
    v79 = 5;
    v80 = 1;
    if ((v89 & 1) == 0)
    {
      goto LABEL_28;
    }

    v59 = v87;
    if (!v87)
    {
      goto LABEL_28;
    }

    v87 = 0;
    v88 = 0;
    WTF::fastFree(v59, v13);
    v19 = v80;
    if ((v80 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_15:
    if ((v19 & 1) == 0)
    {
      break;
    }

LABEL_28:
    if (v14 - 1 >= 0xFFFFFFFFFFFFFFFELL)
    {
      *a2 = 0;
      a2[8] = 0;
LABEL_160:
      mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v78, v13);
      goto LABEL_161;
    }

    v22 = v81;
    if (!v81)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand( &v81,  0);
      v22 = v81;
    }

    v23 = *(v22 - 8);
    v24 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
    v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
    v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
    v27 = v23 & ((v26 >> 31) ^ v26);
    v28 = (v22 + 32 * v27);
    v29 = *v28;
    if (*v28)
    {
      v30 = 0;
      v31 = 1;
      while (v29 != v14)
      {
        if (v29 == -1)
        {
          v30 = v28;
        }

        v27 = (v27 + v31) & v23;
        v28 = (v22 + 32 * v27);
        v29 = *v28;
        ++v31;
        if (!*v28)
        {
          if (v30)
          {
            *v30 = 0;
            v30[8] = 0;
            v30[24] = 0;
            --*(v81 - 4);
            v28 = v30;
          }

          goto LABEL_39;
        }
      }

      *a2 = 0;
      a2[8] = 0;
      if ((v80 & 1) == 0)
      {
        goto LABEL_161;
      }

      goto LABEL_160;
    }

LABEL_39:
    *v28 = v14;
    mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(&v87, v78);
    mpark::detail::assignment<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>::generic_assign<mpark::detail::move_assignment<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>>(v28 + 8, &v87);
    result = mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v87, v32);
    v34 = v81;
    if (v81)
    {
      v35 = *(v81 - 3) + 1;
    }

    else
    {
      v35 = 1;
    }

    *(v81 - 3) = v35;
    v36 = (*(v34 - 16) + v35);
    v37 = *(v34 - 4);
    if (v37 > 0x400)
    {
      if (v37 > 2 * v36)
      {
        goto LABEL_44;
      }

LABEL_43:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand( &v81,  v28);
      goto LABEL_44;
    }

    if (3 * v37 <= 4 * v36)
    {
      goto LABEL_43;
    }

LABEL_44:
    if (v80 == 1)
    {
      result = mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v78, v33);
    }

    if (++v11 == v10)
    {
      v74 = v81;
      goto LABEL_164;
    }
  }

  *a2 = 0;
  a2[8] = 0;
LABEL_161:
  result = v81;
  if (v81)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v81,  v13);
  }

  return result;
}

void sub_19D7E558C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, WTF *a22, int a23, int a24, char a25)
{
  if (a25 == 1 && a22)
  {
    WTF::fastFree(a22, a2);
  }

  if (a16)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( a16,  a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, unint64_t a2)
{
  *(*a1 + 8 * *(a1 + 12)) = *WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
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

    WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

uint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
      v8 = 8 * v5;
      v9 = v4;
      do
      {
        v10 = *v9;
        v9 = (v9 + 8);
        *v6++ = v10;
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

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

void *WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D7E5828(_Unwind_Exception *exception_object, void *a2)
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

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D7E59ECLL);
  }

  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19D7E5A0CLL);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
        v24 = 0;
        v23 = v9 + 16 * *(v9 - 4);
        goto LABEL_21;
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
  v15[1] = *a3;
  v19 = *v8;
  if (*v8)
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
LABEL_17:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v19 = *v8;
      if (*v8)
      {
        v22 = *(v19 - 4);
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else if (3 * v22 <= 4 * v21)
  {
    goto LABEL_17;
  }

  v23 = v19 + 16 * v22;
  v24 = 1;
LABEL_21:
  *a4 = v15;
  *(a4 + 8) = v23;
  *(a4 + 16) = v24;
  return result;
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
      if ((*v13 + 1) >= 2)
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

        v16 = (*v13 + ~(*v13 << 32)) ^ ((*v13 + ~(*v13 << 32)) >> 22);
        v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
        v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
        v19 = v15 & ((v18 >> 31) ^ v18);
        v20 = 1;
        do
        {
          v21 = v19;
          v22 = *(v14 + 16 * v19);
          v19 = (v19 + v20++) & v15;
        }

        while (v22);
        v23 = (v14 + 16 * v21);
        *v23 = *v13;
        if (v13 == a3)
        {
          v12 = v23;
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, unsigned __int8 *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash( a1,  v5,  a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, unsigned __int8 *a3)
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

  Table = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::allocateTable(a2);
  *a1 = Table;
  *(Table - 8) = a2 - 1;
  *(Table - 4) = a2;
  *(Table - 16) = 0;
  *(Table - 12) = v8;
  v11 = 0;
  if (v7)
  {
    v13 = v7;
    v14 = v6;
    do
    {
      if (*v14 != -1)
      {
        if (*v14)
        {
          v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert( a1,  v14);
          mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor((v14 + 8), v16);
          if (v14 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor((v14 + 8), v10);
        }
      }

      v14 += 32;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

  result = 0;
  if (v6)
  {
LABEL_14:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  v2 = a1;
  v3 = WTF::fastMalloc(((32 * a1) | 0x10));
  if (a1)
  {
    v4 = (v3 + 24);
    do
    {
      *(v4 - 1) = 0;
      *v4 = 0;
      v4[16] = 0;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return v3 + 16;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t *a1, unsigned __int8 *a2)
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

  v5 = *a2 + ~(*a2 << 32);
  v6 = (v5 ^ (v5 >> 22)) + ~((v5 ^ (v5 >> 22)) << 13);
  v7 = (9 * (v6 ^ (v6 >> 8))) ^ ((9 * (v6 ^ (v6 >> 8))) >> 15);
  v8 = v4 & (((v7 + ~(v7 << 27)) >> 31) ^ (v7 + ~(v7 << 27)));
  v9 = 1;
  do
  {
    v10 = v8;
    v11 = *(v3 + 32 * v8);
    v8 = (v8 + v9++) & v4;
  }

  while (v11);
  v12 = v3 + 32 * v10;
  mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v12 + 8, a2);
  *v12 = *a2;
  mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor((v12 + 8), a2 + 8);
  return v12;
}

unsigned __int8 *mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = 0;
  a1[16] = -1;
  mpark::detail::constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>>(a1, a2);
  return a1;
}

void mpark::detail::constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  mpark::detail::destructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::destroy(a1, a2);
  v4 = a2[16];
  if (v4 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE17generic_constructINS0_16move_constructorIST_LNS0_5TraitE1EEEEEvRSU_OT_EUlRS10_OT0_E_JSZ_SY_EEEDcmS11_DpOT0_(v4, &v5, a1, a2);
    a1[16] = a2[16];
  }
}

double _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE17generic_constructINS0_16move_constructorIST_LNS0_5TraitE1EEEEEvRSU_OT_EUlRS10_OT0_E_JSZ_SY_EEEDcmS11_DpOT0_(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  if (a1 > 5)
  {
    *a3 = 0;
    goto LABEL_6;
  }

  if (a1 > 2)
  {
    if (a1 == 5)
    {
      WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a3, a4);
      return result;
    }

    if (a1 != 3)
    {
      v5 = *a4;
      goto LABEL_7;
    }

LABEL_6:
    v5 = *a4;
    *a4 = 0;
LABEL_7:
    *a3 = v5;
    return result;
  }

  if (a1 > 1)
  {
    result = *a4;
    *a3 = *a4;
  }

  else
  {
    *a3 = *a4;
  }

  return result;
}

void mpark::detail::assignment<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>::generic_assign<mpark::detail::move_assignment<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = a1[16];
  v6 = a2[16];
  if (v5 != 255 || v6 != 255)
  {
    if (v6 == 255)
    {

      mpark::detail::destructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::destroy(a1, a2);
    }

    else
    {
      v7[1] = v2;
      v7[2] = v3;
      v7[0] = a1;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS0_15move_assignmentIST_LNS0_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRSU_SY_EEEDcmS10_DpOT0_(v6, v7, a1, a2);
    }
  }
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS0_15move_assignmentIST_LNS0_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRSU_SY_EEEDcmS10_DpOT0_(uint64_t a1, unsigned __int8 **a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 > 5)
  {
    mpark::detail::assignment<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>::assign_alt<6ul,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(*a2, a3, a4);
  }

  else if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS3_15move_assignmentIST_LNS3_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS3_3altILm1EbEES16_EEEDTclsr6detailE6invokeclsr3libE7forwardISZ_Efp_Espclsr3libE7forwardIT0_Efp0_EEES10_DpOS18_(a2, a3, a4);
      }

      else
      {
        _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS3_15move_assignmentIST_LNS3_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS3_3altILm2EdEES16_EEEDTclsr6detailE6invokeclsr3libE7forwardISZ_Efp_Espclsr3libE7forwardIT0_Efp0_EEES10_DpOS18_(a2, a3, a4);
      }
    }

    else
    {
      _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS3_15move_assignmentIST_LNS3_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS3_3altILm0ES8_EES16_EEEDTclsr6detailE6invokeclsr3libE7forwardISZ_Efp_Espclsr3libE7forwardIT0_Efp0_EEES10_DpOS18_(a2, a3, a4);
    }
  }

  else if (a1 == 5)
  {
    mpark::detail::assignment<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>::assign_alt<5ul,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(*a2, a3, a4);
  }

  else if (a1 == 3)
  {
    _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS3_15move_assignmentIST_LNS3_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS3_3altILm3ESA_EES16_EEEDTclsr6detailE6invokeclsr3libE7forwardISZ_Efp_Espclsr3libE7forwardIT0_Efp0_EEES10_DpOS18_(a2, a3, a4);
  }

  else
  {
    _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS3_15move_assignmentIST_LNS3_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS3_3altILm4ESB_EES16_EEEDTclsr6detailE6invokeclsr3libE7forwardISZ_Efp_Espclsr3libE7forwardIT0_Efp0_EEES10_DpOS18_(a2, a3, a4);
  }
}

WTF *_ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS3_15move_assignmentIST_LNS3_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS3_3altILm0ES8_EES16_EEEDTclsr6detailE6invokeclsr3libE7forwardISZ_Efp_Espclsr3libE7forwardIT0_Efp0_EEES10_DpOS18_(WTF *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 > 3)
  {
    if (*(*result + 16) != 255)
    {
      if (v5 == 6)
      {
        if (!*v4)
        {
          goto LABEL_10;
        }

        result = (*v4 - 16);
      }

      else
      {
        if (v5 != 5)
        {
          goto LABEL_10;
        }

        result = *v4;
        if (!*v4)
        {
          goto LABEL_10;
        }

        *v4 = 0;
        *(v4 + 8) = 0;
      }

      result = WTF::fastFree(result, a2);
    }
  }

  else
  {
    if (!*(*result + 16))
    {
      *a2 = *a3;
      return result;
    }

    if (v5 - 1 >= 2)
    {
      result = *v4;
      *v4 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }
    }
  }

LABEL_10:
  *v4 = *a3;
  *(v4 + 16) = 0;
  return result;
}

WTF::StringImpl *_ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS3_15move_assignmentIST_LNS3_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS3_3altILm1EbEES16_EEEDTclsr6detailE6invokeclsr3libE7forwardISZ_Efp_Espclsr3libE7forwardIT0_Efp0_EEES10_DpOS18_(WTF::StringImpl *result, WTF::StringImpl *a2, _BYTE *a3)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    goto LABEL_10;
  }

  if (*(*result + 16) > 5u)
  {
    if (v5 != 6 || !*v4)
    {
      goto LABEL_10;
    }

    result = (*v4 - 16);
    goto LABEL_12;
  }

  if (v5 != 5)
  {
    if (v5 == 3)
    {
      result = *v4;
      *v4 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }
    }

    goto LABEL_10;
  }

  result = *v4;
  if (*v4)
  {
    *v4 = 0;
    *(v4 + 8) = 0;
LABEL_12:
    result = WTF::fastFree(result, a2);
  }

LABEL_10:
  *v4 = *a3;
  *(v4 + 16) = 1;
  return result;
}

double _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS3_15move_assignmentIST_LNS3_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS3_3altILm2EdEES16_EEEDTclsr6detailE6invokeclsr3libE7forwardISZ_Efp_Espclsr3libE7forwardIT0_Efp0_EEES10_DpOS18_(uint64_t *a1, void *a2, double *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5 > 3)
  {
    if (*(*a1 + 16) != 255)
    {
      if (v5 == 6)
      {
        if (!*v4)
        {
          goto LABEL_14;
        }

        v7 = (*v4 - 16);
      }

      else
      {
        if (v5 != 5)
        {
          goto LABEL_14;
        }

        v7 = *v4;
        if (!*v4)
        {
          goto LABEL_14;
        }

        *v4 = 0;
        *(v4 + 8) = 0;
      }

      WTF::fastFree(v7, a2);
    }
  }

  else
  {
    if (v5 == 2)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    if (v5 >= 2)
    {
      v8 = *v4;
      *v4 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }
    }
  }

LABEL_14:
  result = *a3;
  *v4 = *a3;
  *(v4 + 16) = 2;
  return result;
}

WTF *_ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS3_15move_assignmentIST_LNS3_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS3_3altILm3ESA_EES16_EEEDTclsr6detailE6invokeclsr3libE7forwardISZ_Efp_Espclsr3libE7forwardIT0_Efp0_EEES10_DpOS18_(WTF *result, void *a2, uint64_t *a3)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 > 4)
  {
    if (v5 == 6)
    {
      if (!*v4)
      {
        goto LABEL_13;
      }

      result = (*v4 - 16);
    }

    else
    {
      if (v5 == 255)
      {
        goto LABEL_13;
      }

      result = *v4;
      if (!*v4)
      {
        goto LABEL_13;
      }

      *v4 = 0;
      *(v4 + 8) = 0;
    }

    result = WTF::fastFree(result, a2);
    goto LABEL_13;
  }

  if (v5 != 3)
  {
LABEL_13:
    v7 = *a3;
    *a3 = 0;
    *v4 = v7;
    *(v4 + 16) = 3;
    return result;
  }

  v6 = *a3;
  *a3 = 0;
  result = *a2;
  *a2 = v6;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

WTF *_ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26JavaScriptEvaluationResult8NullTypeEbdN3WTF6StringENS9_7SecondsENS9_6VectorINS9_23ObjectIdentifierGenericINS6_14JSObjectIDTypeENS9_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS9_15CrashOnOverflowELm16ENS9_10FastMallocEEENS9_7HashMapISH_SH_NS9_11DefaultHashISH_EENS9_10HashTraitsISH_EESP_NS9_15HashTableTraitsELNS9_17ShouldValidateKeyE1ESJ_EEEEEE14generic_assignINS3_15move_assignmentIST_LNS3_5TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS3_3altILm4ESB_EES16_EEEDTclsr6detailE6invokeclsr3libE7forwardISZ_Efp_Espclsr3libE7forwardIT0_Efp0_EEES10_DpOS18_(WTF *result, void *a2, void *a3)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 > 4)
  {
    if (v5 == 6)
    {
      if (!*v4)
      {
        goto LABEL_13;
      }

      result = (*v4 - 16);
    }

    else
    {
      if (v5 == 255)
      {
        goto LABEL_13;
      }

      result = *v4;
      if (!*v4)
      {
        goto LABEL_13;
      }

      *v4 = 0;
      *(v4 + 8) = 0;
    }

    result = WTF::fastFree(result, a2);
    goto LABEL_13;
  }

  if (v5 == 4)
  {
    *a2 = *a3;
    return result;
  }

  if (v5 >= 3)
  {
    result = *v4;
    *v4 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }
  }

LABEL_13:
  *v4 = *a3;
  *(v4 + 16) = 4;
  return result;
}