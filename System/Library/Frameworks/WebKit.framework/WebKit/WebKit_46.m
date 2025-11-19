unint64_t WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 104 * a1[3] <= a3)
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

    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x2762763)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7F0344);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 104 * *(result + 3));
    v5 = 104 * a2;
    v6 = WTF::fastMalloc((104 * a2));
    *(v2 + 2) = v5 / 0x68;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::ApplePayShippingMethod>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::ApplePayShippingMethod>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
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
      *(v5 + 3) = 0;
      *(a3 + 24) = v9;
      *(a3 + 32) = *(v5 + 2);
      v10 = *(v5 + 3);
      v11 = *(v5 + 4);
      v12 = *(v5 + 5);
      *(a3 + 93) = *(v5 + 93);
      *(a3 + 64) = v11;
      *(a3 + 80) = v12;
      *(a3 + 48) = v10;
      v13 = *(v5 + 3);
      *(v5 + 3) = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, a2);
      }

      v14 = *(v5 + 2);
      *(v5 + 2) = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
      }

      v15 = *(v5 + 1);
      *(v5 + 1) = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, a2);
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

      a3 += 104;
      v5 = (v5 + 104);
    }

    while (v5 != a2);
  }

  return result;
}

__n128 WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplePayLineItem>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 80 * a1[3];
  *v4 = *v3;
  v5 = *(v3 + 8);
  *(v3 + 8) = 0;
  *(v4 + 8) = v5;
  v6 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v4 + 16) = v6;
  result = *(v3 + 24);
  v8 = *(v3 + 40);
  *(v4 + 56) = *(v3 + 56);
  *(v4 + 40) = v8;
  *(v4 + 24) = result;
  v9 = *(v3 + 64);
  *(v3 + 64) = 0;
  *(v4 + 64) = v9;
  *(v4 + 72) = *(v3 + 72);
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 80 * a1[3] <= a3)
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

    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x3333334)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7F0678);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 80 * *(result + 3));
    v5 = 80 * a2;
    v6 = WTF::fastMalloc((80 * a2));
    *(v2 + 2) = v5 / 0x50;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::ApplePayLineItem>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::ApplePayLineItem>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
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
      v7 = *(v5 + 2);
      *(v5 + 2) = 0;
      *(a3 + 16) = v7;
      v8 = *(v5 + 24);
      v9 = *(v5 + 40);
      *(a3 + 56) = *(v5 + 7);
      *(a3 + 40) = v9;
      *(a3 + 24) = v8;
      v10 = *(v5 + 8);
      *(v5 + 8) = 0;
      *(a3 + 64) = v10;
      *(a3 + 72) = *(v5 + 36);
      v11 = *(v5 + 8);
      *(v5 + 8) = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }

      v12 = *(v5 + 2);
      *(v5 + 2) = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }

      result = *(v5 + 1);
      *(v5 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 80;
      v5 = (v5 + 80);
    }

    while (v5 != a2);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ApplePayPaymentTokenContext>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v22);
  IPC::Decoder::decode<WTF::String>(a2, &v20);
  IPC::Decoder::decode<WTF::String>(a2, &v18);
  IPC::Decoder::decode<WTF::String>(a2, &v16);
  result = IPC::Decoder::decode<WTF::String>(a2, &v14);
  v6 = *a2;
  if (*a2)
  {
    if (v23)
    {
      v7 = v22;
      v22 = 0;
      if (v21)
      {
        v8 = v20;
        v20 = 0;
        if (v19)
        {
          v9 = v18;
          v18 = 0;
          if (v17)
          {
            v10 = v16;
            v16 = 0;
            if (v15)
            {
              v11 = v14;
              *a1 = v7;
              *(a1 + 8) = v8;
              *(a1 + 16) = v9;
              *(a1 + 24) = v10;
              *(a1 + 32) = v11;
              *(a1 + 40) = 1;
              goto LABEL_8;
            }
          }
        }
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 40) = 0;
  if (v15)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_8:
  if (v17 == 1)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v19 == 1)
  {
    result = v18;
    v18 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v21 == 1)
  {
    result = v20;
    v20 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v23 == 1 && (result = v22, v22 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
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

  v12 = *a2;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v13)
    {
      return (*(*result + 16))(result, v12);
    }
  }

  return result;
}

void sub_19D7F0970(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, char a16)
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

uint64_t std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7F0A74(_Unwind_Exception *exception_object, void *a2)
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

uint64_t *WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplePayPaymentTokenContext>(unsigned int *a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = a1[3];
  v5 = v4 + 1;
  v6 = (*a1 + 40 * v4);
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
  v11 = result[4];
  result[4] = 0;
  v6[4] = v11;
  a1[3] = v5;
  return result;
}

unint64_t WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7F0CA0);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 40 * *(result + 3));
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(v2 + 2) = v5 / 0x28;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::ApplePayPaymentTokenContext>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::ApplePayPaymentTokenContext>::move(WTF::StringImpl *result, WTF::StringImpl *a2, WTF::StringImpl **a3)
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
      v10 = v5[4];
      v5[4] = 0;
      a3[4] = v10;
      v11 = v5[4];
      v5[4] = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }

      v12 = v5[3];
      v5[3] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }

      v13 = v5[2];
      v5[2] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, a2);
      }

      v14 = v5[1];
      v5[1] = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
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

      a3 += 5;
      v5 += 5;
    }

    while (v5 != a2);
  }

  return result;
}

void IPC::decodeRequiringAllowedClasses<PKPaymentMethod,PKPaymentMethod*>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::decodeObjectDirectlyRequiringAllowedClasses<PKPaymentMethod>(a1, &v6);
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

void IPC::decodeRequiringAllowedClasses<PKContact,PKContact*>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::decodeObjectDirectlyRequiringAllowedClasses<PKContact>(a1, &v6);
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

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ElementContext>,void>::encode<IPC::Encoder,std::optional<WebCore::ElementContext> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 80))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 80))
    {
      return IPC::ArgumentCoder<WebCore::ElementContext,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WebCore::TextGranularity,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WebCore::TextGranularity,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  v6 = v4 < 0xA;
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

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::ElementContext>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    result[1] = 0;
    v12 = result;
    v10 = result[3];
    if (v10)
    {
      if (v3)
      {
        (*(*v10 + 16))(v10);
        v5 = *v12;
        v3 = v12[1];
LABEL_14:
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
            goto LABEL_18;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_14;
  }

  result[2] = (v4 + 1);
  if (!v4)
  {
    v12 = result;
    goto LABEL_14;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    if (v6)
    {
      result = IPC::Decoder::decode<WebCore::ElementContext>(result, v13);
      if (v14)
      {
        v7 = v13[3];
        *(a2 + 32) = v13[2];
        *(a2 + 48) = v7;
        *(a2 + 64) = v13[4];
        v8 = v13[1];
        *a2 = v13[0];
        *(a2 + 16) = v8;
        v9 = 1;
        *(a2 + 80) = 1;
      }

      else
      {
        v9 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 80) = 0;
      v9 = 1;
    }

    *(a2 + 96) = v9;
    return result;
  }

  v12 = result;
LABEL_18:
  *v12 = 0;
  v12[1] = 0;
  result = v12[3];
  if (result && v3)
  {
    result = (*(*result + 16))(result, v5);
  }

  *a2 = 0;
  *(a2 + 96) = 0;
  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::DocumentEditingContext::TextRectAndRange,void>::encode(a1, v6);
      v6 += 32;
      v7 -= 32;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::DocumentEditingContext::Range,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::DocumentEditingContext::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[2 * v5];
    do
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *v6);
      result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6[1]);
      v6 += 2;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::DocumentEditingContext::TextRectAndRange>(uint64_t a1, IPC::Decoder *a2)
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

    IPC::Decoder::decode<WebKit::DocumentEditingContext::Range>(&v22, a2);
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

  result = IPC::Decoder::decode<WebKit::DocumentEditingContext::Range>(&v22, a2);
  if (*a2)
  {
    if (v23)
    {
      *(a1 + 16) = v22;
      *a1 = v4;
      *(a1 + 8) = v8;
      *(a1 + 32) = 1;
      return result;
    }

    goto LABEL_12;
  }

LABEL_13:
  *a1 = 0;
  *(a1 + 32) = 0;
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

unint64_t WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 27))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((32 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    if (v5)
    {
      v8 = 32 * v5;
      v9 = v4;
      do
      {
        v10 = *v9;
        v11 = *(v9 + 1);
        v9 = (v9 + 32);
        *v6 = v10;
        v6[1] = v11;
        v6 += 2;
        v8 -= 32;
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

uint64_t IPC::ArgumentCoder<std::optional<WebKit::EditorState::PostLayoutData>,void>::encode<IPC::Encoder,std::optional<WebKit::EditorState::PostLayoutData> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 224))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 224))
    {
      return IPC::ArgumentCoder<WebKit::EditorState::PostLayoutData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::EditorState::VisualData>,void>::encode<IPC::Encoder,std::optional<WebKit::EditorState::VisualData> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::EditorState::VisualData>,void>::encode<IPC::Encoder,std::optional<WebKit::EditorState::VisualData> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 256))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 256))
    {
      return IPC::ArgumentCoder<WebKit::EditorState::VisualData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
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
      result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::WritingDirection,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  v6 = v4 < 3;
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

WTF *IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
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

    goto LABEL_29;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_29:
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
      v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
      v19 = v17;
      v20 = v11;
      if ((v11 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v22) == v22)
      {
        v15 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v21, HIDWORD(v22) + 1, &v19);
        *(v21 + HIDWORD(v22)) = *v15;
      }

      else
      {
        *(v21 + HIDWORD(v22)) = v17;
      }

      v16 = ++HIDWORD(v22);
      if (!--v10)
      {
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v21, v16);
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (!v10)
    {
LABEL_9:
      std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a2, &v21);
      goto LABEL_10;
    }

    LODWORD(v22) = v10;
    v21 = WTF::fastMalloc((8 * v10));
    while (1)
    {
      v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
      v19 = v13;
      v20 = v11;
      if ((v11 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v22) == v22)
      {
        v14 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v21, HIDWORD(v22) + 1, &v19);
        *(v21 + HIDWORD(v22)) = *v14;
      }

      else
      {
        *(v21 + HIDWORD(v22)) = v13;
      }

      ++HIDWORD(v22);
      if (!--v10)
      {
        goto LABEL_9;
      }
    }
  }

  *a2 = 0;
  a2[16] = 0;
LABEL_10:
  result = v21;
  if (v21)
  {
    v21 = 0;
    LODWORD(v22) = 0;
    return WTF::fastFree(result, v11);
  }

  return result;
}

void sub_19D7F1A78(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7F1AD8(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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

uint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 84 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::SelectionGeometry,void>::encode(a1, v6);
      v6 += 84;
      v7 -= 84;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[2 * v5];
    do
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *v6);
      result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6[1]);
      v6 += 2;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Encoder::operator<<<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

IPC::Encoder *IPC::Encoder::operator<<<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);
  return a1;
}

WTF *IPC::VectorArgumentCoder<false,WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27)
    {
      if (v4)
      {
        (*(*v27 + 16))(v27);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_28;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_28:
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
  v35 = 0;
  v36 = 0;
  if (v10 >= 0x30C3)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::SelectionGeometry>(a1, &v28);
      if ((v34 & 1) == 0)
      {
        break;
      }

      v19 = HIDWORD(v36);
      if (HIDWORD(v36) == v36)
      {
        v20 = WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v35, HIDWORD(v36) + 1, &v28);
        v19 = HIDWORD(v36);
        v21 = v35 + 84 * HIDWORD(v36);
        v22 = *v20;
        *(v21 + 16) = *(v20 + 16);
        v24 = *(v20 + 48);
        v23 = *(v20 + 64);
        v25 = *(v20 + 32);
        *(v21 + 80) = *(v20 + 80);
      }

      else
      {
        v21 = v35 + 84 * HIDWORD(v36);
        v22 = v28;
        *(v21 + 16) = v29;
        v23 = v32;
        v24 = v31;
        v25 = v30;
        *(v21 + 80) = v33;
      }

      *(v21 + 48) = v24;
      *(v21 + 64) = v23;
      *(v21 + 32) = v25;
      *v21 = v22;
      HIDWORD(v36) = v19 + 1;
      if (!--v10)
      {
        WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v35, (v19 + 1));
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!v10)
    {
LABEL_15:
      std::optional<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a2, &v35);
      goto LABEL_23;
    }

    LODWORD(v36) = 84 * v10 / 0x54u;
    v35 = WTF::fastMalloc((84 * v10));
    while (1)
    {
      IPC::Decoder::decode<WebCore::SelectionGeometry>(a1, &v28);
      if ((v34 & 1) == 0)
      {
        break;
      }

      v12 = HIDWORD(v36);
      if (HIDWORD(v36) == v36)
      {
        v13 = WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v35, HIDWORD(v36) + 1, &v28);
        v12 = HIDWORD(v36);
        v14 = v35 + 84 * HIDWORD(v36);
        v15 = *v13;
        *(v14 + 16) = *(v13 + 16);
        v17 = *(v13 + 48);
        v16 = *(v13 + 64);
        v18 = *(v13 + 32);
        *(v14 + 80) = *(v13 + 80);
      }

      else
      {
        v14 = v35 + 84 * HIDWORD(v36);
        v15 = v28;
        *(v14 + 16) = v29;
        v16 = v32;
        v17 = v31;
        v18 = v30;
        *(v14 + 80) = v33;
      }

      *(v14 + 48) = v17;
      *(v14 + 64) = v16;
      *(v14 + 32) = v18;
      *v14 = v15;
      HIDWORD(v36) = v12 + 1;
      if (!--v10)
      {
        goto LABEL_15;
      }
    }
  }

  *a2 = 0;
  a2[16] = 0;
LABEL_23:
  result = v35;
  if (v35)
  {
    v35 = 0;
    LODWORD(v36) = 0;
    return WTF::fastFree(result, v11);
  }

  return result;
}

void sub_19D7F21F8(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::Decoder::decode<WebCore::SelectionGeometry>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::SelectionGeometry,void>::decode(a1, a2);
  if ((a2[84] & 1) == 0)
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

uint64_t std::optional<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7F22DC(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 84 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x30C30C4)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 84 * a2;
    v6 = WTF::fastMalloc((84 * a2));
    *(v2 + 8) = v5 / 0x54;
    *v2 = v6;
    if (v4)
    {
      v8 = 84 * v4;
      v9 = v3;
      do
      {
        v10 = *(v9 + 1);
        *v6 = *v9;
        *(v6 + 16) = v10;
        v11 = *(v9 + 2);
        v12 = *(v9 + 3);
        v13 = *(v9 + 4);
        *(v6 + 80) = *(v9 + 20);
        *(v6 + 48) = v12;
        *(v6 + 64) = v13;
        *(v6 + 32) = v11;
        v6 += 84;
        v9 = (v9 + 84);
        v8 -= 84;
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

uint64_t WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
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
      if (a2 >= 0x30C30C4)
      {
        __break(0xC471u);
        return result;
      }

      v5 = 84 * a2;
      result = WTF::fastMalloc((84 * a2));
      *(v2 + 8) = v5 / 0x54;
      *v2 = result;
      if (v3 && result != v4)
      {
        v6 = 84 * v3;
        v7 = v4;
        do
        {
          v8 = *(v7 + 1);
          *result = *v7;
          *(result + 16) = v8;
          v9 = *(v7 + 2);
          v10 = *(v7 + 3);
          v11 = *(v7 + 4);
          *(result + 80) = *(v7 + 20);
          *(result + 48) = v10;
          *(result + 64) = v11;
          *(result + 32) = v9;
          result += 84;
          v7 = (v7 + 84);
          v6 -= 84;
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

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    result[1] = 0;
    v10 = result;
    v8 = result[3];
    if (v8)
    {
      if (v3)
      {
        (*(*v8 + 16))(v8);
        v5 = *v10;
        v3 = v10[1];
LABEL_14:
        *v10 = 0;
        v10[1] = 0;
        v9 = v10[3];
        if (v9)
        {
          if (v3)
          {
            (*(*v9 + 16))(v9, v5);
            v5 = *v10;
            v3 = v10[1];
            goto LABEL_18;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_14;
  }

  result[2] = (v4 + 1);
  if (!v4)
  {
    v10 = result;
    goto LABEL_14;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    if (v6)
    {
      result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(result, &v11);
      if (v12)
      {
        *a2 = v11;
        v7 = 1;
        *(a2 + 16) = 1;
      }

      else
      {
        v7 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      v7 = 1;
    }

    *(a2 + 24) = v7;
    return result;
  }

  v10 = result;
LABEL_18:
  *v10 = 0;
  v10[1] = 0;
  result = v10[3];
  if (result && v3)
  {
    result = (*(*result + 16))(result, v5);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, unint64_t a2)
{
  *(*a1 + 16 * *(a1 + 12)) = *WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3 && v5 + 16 * *(a1 + 12) > a3)
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

    WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
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

    WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
    if (v5)
    {
      v8 = 16 * v5;
      v9 = v4;
      do
      {
        v10 = *v9;
        v9 = (v9 + 16);
        *v6++ = v10;
        v8 -= 16;
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

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    result[1] = 0;
    v10 = result;
    v8 = result[3];
    if (v8)
    {
      if (v3)
      {
        (*(*v8 + 16))(v8);
        v5 = *v10;
        v3 = v10[1];
LABEL_14:
        *v10 = 0;
        v10[1] = 0;
        v9 = v10[3];
        if (v9)
        {
          if (v3)
          {
            (*(*v9 + 16))(v9, v5);
            v5 = *v10;
            v3 = v10[1];
            goto LABEL_18;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_14;
  }

  result[2] = (v4 + 1);
  if (!v4)
  {
    v10 = result;
    goto LABEL_14;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    if (v6)
    {
      result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(result, &v11);
      if (v12)
      {
        *a2 = v11;
        v7 = 1;
        *(a2 + 16) = 1;
      }

      else
      {
        v7 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      v7 = 1;
    }

    *(a2 + 24) = v7;
    return result;
  }

  v10 = result;
LABEL_18:
  *v10 = 0;
  v10[1] = 0;
  result = v10[3];
  if (result && v3)
  {
    result = (*(*result + 16))(result, v5);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
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

uint64_t IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, void **a2)
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
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
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
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(v6 + 8));
      do
      {
        v6 += 16;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
    }

    while (v6 != v9);
  }

  return result;
}

void *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[2 * v2];
  if (!*(result - 3))
  {
    return &result[2 * v2];
  }

  if (v2)
  {
    v4 = 16 * v2;
    while ((*result + 1) <= 1)
    {
      result += 2;
      v4 -= 16;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&,0ul,1ul,2ul>(a1, v6);
      v6 += 5;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&,0ul,1ul,2ul>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = (a2 + 3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, (a2 + 1));

  return IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>@<X0>(WTF::StringImpl *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 1);
  v5 = ((*(result + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *result;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
LABEL_32:
    *v2 = 0;
    *(v2 + 1) = 0;
    v15 = *(v2 + 3);
    if (v15)
    {
      if (v4)
      {
        (*(*v15 + 16))(v15);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_34;
  }

  *(result + 2) = v5 + 1;
  if (!v5)
  {
LABEL_34:
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
    a2[8] = 0;
    return result;
  }

  v10 = *v5;
  v21 = 0;
  if (v10)
  {
    while (1)
    {
      IPC::Decoder::decode<WTF::String>(v2, &v19);
      if ((v20 & 1) == 0)
      {
        *a2 = 0;
        a2[8] = 0;
        goto LABEL_23;
      }

      v17 = IPC::Decoder::decode<WTF::Seconds>(v2);
      v18 = v11;
      v12 = v20;
      if ((v11 & 1) == 0)
      {
        break;
      }

      if ((v20 & 1) == 0)
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v19 + 1 < 2)
      {
        *a2 = 0;
        a2[8] = 0;
        goto LABEL_20;
      }

      result = WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::WallTime>(&v21, &v19, &v17, v16);
      v12 = v20;
      if ((v16[16] & 1) == 0)
      {
        break;
      }

      if (v20)
      {
        result = v19;
        v19 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v11);
          }
        }
      }

      if (!--v10)
      {
        v13 = v21;
        goto LABEL_26;
      }
    }

    *a2 = 0;
    a2[8] = 0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_20:
    v14 = v19;
    v19 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

LABEL_23:
    result = v21;
    if (v21)
    {
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v21, v11);
    }
  }

  else
  {
    v13 = 0;
LABEL_26:
    *a2 = v13;
    a2[8] = 1;
  }

  return result;
}

void sub_19D7F2EC8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, char a15)
{
  if (a15 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::WallTime>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D7F30FCLL);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a2 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = (v8 + 16 * (v11 & v9));
    v16 = *v15;
    if (*v15 != -1)
    {
      break;
    }

    v12 = (v8 + 16 * v14);
LABEL_14:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*a1 - 16);
      v15 = v12;
    }

    v18 = *a2;
    *a2 = 0;
    result = *v15;
    *v15 = v18;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }

    v15[1] = *a3;
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
    v23 = (*(v19 - 16) + v20);
    v24 = *(v19 - 4);
    if (v24 > 0x400)
    {
      if (v24 <= 2 * v23)
      {
LABEL_27:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v15);
        v15 = result;
        v19 = *a1;
        if (*a1)
        {
          v24 = *(v19 - 4);
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else if (3 * v24 <= 4 * v23)
    {
      goto LABEL_27;
    }

    v26 = v19 + 16 * v24;
    v25 = 1;
    goto LABEL_34;
  }

  result = WTF::equal(v16, *a2, a3);
  if (!result)
  {
    goto LABEL_14;
  }

  v21 = *a1;
  if (*a1)
  {
    v22 = *(v21 - 4);
  }

  else
  {
    v22 = 0;
  }

  v25 = 0;
  v26 = v21 + 16 * v22;
LABEL_34:
  *a4 = v15;
  *(a4 + 8) = v26;
  *(a4 + 16) = v25;
  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastMalloc((16 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 16 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  v13 = 0;
  if (v7)
  {
    v14 = v6;
    v7 = v7;
    do
    {
      if (*v14 != -1)
      {
        if (*v14)
        {
          v15 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, v14);
          v16 = *v15;
          *v15 = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v10);
          }

          v17 = *v14;
          *v14 = 0;
          *v15 = v17;
          *(v15 + 8) = *(v14 + 8);
          v18 = *v14;
          *v14 = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v10);
          }

          if (v14 == a3)
          {
            v13 = v15;
          }
        }

        else
        {
          *v14 = 0;
        }
      }

      v14 += 16;
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
  return v13;
}

uint64_t *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[40] & 1) == 0)
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

uint64_t *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v6, a2);
  }

  *a2 = 0;
  a2[40] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, v7);
  if (v7[16])
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, v7, a3);
  }

  *a3 = 0;
  a3[40] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v9);
  if ((v10 & 1) == 0)
  {
    v8 = 0;
    *a4 = 0;
    goto LABEL_6;
  }

  if (*(a2 + 8) & 1) != 0 && (*(a3 + 16))
  {
    *a4 = *a2;
    *(a4 + 8) = *a3;
    *(a4 + 24) = v9;
    v8 = 1;
LABEL_6:
    *(a4 + 40) = v8;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x6666667)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(v2 + 8) = v5 / 0x28;
    *v2 = v6;
    if (v4)
    {
      v8 = 40 * v4;
      v9 = v3;
      do
      {
        v10 = *v9;
        v11 = *(v9 + 1);
        *(v6 + 32) = *(v9 + 4);
        *v6 = v10;
        *(v6 + 16) = v11;
        v6 += 40;
        v9 = (v9 + 40);
        v8 -= 40;
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

unint64_t IPC::VectorArgumentCoder<false,WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if (v5)
  {
    v6 = result;
    v12 = 0;
    v13 = 0;
    if (result >= 0x1999)
    {
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebExtensionContextParameters>(v10, a2);
        v8 = v11;
        if (v11)
        {
          if (HIDWORD(v13) == v13)
          {
            WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebExtensionContextParameters>(&v12, v10);
          }

          else
          {
            WebKit::WebExtensionContextParameters::WebExtensionContextParameters(v12 + 160 * HIDWORD(v13), v10);
            ++HIDWORD(v13);
          }
        }

        else
        {
          *a1 = 0;
          a1[16] = 0;
        }

        if (v11 == 1)
        {
          WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(v10, v7);
        }

        if ((v8 & 1) == 0)
        {
          break;
        }

        if (!--v6)
        {
          WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v12, HIDWORD(v13));
          goto LABEL_4;
        }
      }
    }

    else if (result)
    {
      LODWORD(v13) = 160 * result / 0xA0u;
      v12 = WTF::fastMalloc((160 * result));
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebExtensionContextParameters>(v10, a2);
        v9 = v11;
        if (v11)
        {
          if (HIDWORD(v13) == v13)
          {
            WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebExtensionContextParameters>(&v12, v10);
          }

          else
          {
            WebKit::WebExtensionContextParameters::WebExtensionContextParameters(v12 + 160 * HIDWORD(v13), v10);
            ++HIDWORD(v13);
          }
        }

        else
        {
          *a1 = 0;
          a1[16] = 0;
        }

        if (v11 == 1)
        {
          WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(v10, v7);
        }

        if ((v9 & 1) == 0)
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
      std::optional<WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, &v12);
    }

    return WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v7);
  }

  else
  {
    *a1 = 0;
    a1[16] = 0;
  }

  return result;
}

void sub_19D7F37C0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a30 == 1)
  {
    WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(&a10, a2);
  }

  WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30 - 64, a2);
  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebKit::WebExtensionContextParameters>(_BYTE *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebKit::WebExtensionContextParameters,void>::decode(a2, a1);
  if ((a1[160] & 1) == 0)
  {
    v4 = *a2;
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v6 = a2[3];
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

void sub_19D7F3874(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 160) == 1)
  {
    WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7F38C8(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebExtensionContextParameters>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = WebKit::WebExtensionContextParameters::WebExtensionContextParameters(*a1 + 160 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 160 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x199999A)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7F3AC8);
    }

    v3 = *a1;
    v4 = (*a1 + 160 * *(a1 + 12));
    v5 = 160 * a2;
    v6 = WTF::fastMalloc((160 * a2));
    *(a1 + 8) = v5 / 0xA0;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::WebExtensionContextParameters>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebKit::WebExtensionContextParameters>::move(WebKit::WebExtensionContextParameters *a1, WebKit::WebExtensionContextParameters *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WebKit::WebExtensionContextParameters::WebExtensionContextParameters(a3, v5);
      WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(v5, v6);
      a3 += 160;
      v5 = (v5 + 160);
    }

    while (v5 != a2);
  }
}

void WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t a1, unint64_t this)
{
  if (*(a1 + 8) > this)
  {
    v4 = *(a1 + 12);
    v5 = 5 * this;
    if (v4 > this)
    {
      v6 = (*a1 + 160 * this);
      v7 = 160 * v4 - 160 * this;
      do
      {
        WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(v6, this);
        v6 = (v8 + 160);
        v7 -= 160;
      }

      while (v7);
      *(a1 + 12) = this;
      LODWORD(v4) = this;
    }

    v9 = *a1;
    if (this)
    {
      if (this >= 0x199999A)
      {
        __break(0xC471u);
        return;
      }

      v10 = WTF::fastMalloc((32 * v5));
      *(a1 + 8) = 32 * v5 / 0xA0u;
      *a1 = v10;
      if (v10 != v9)
      {
        WTF::VectorMover<false,WebKit::WebExtensionContextParameters>::move(v9, (v9 + 160 * v4), v10);
      }
    }

    if (v9)
    {
      if (*a1 == v9)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v9, this);
    }
  }
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<PAL::SessionID>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
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

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(result);
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

IPC::Decoder *IPC::ArgumentCoder<std::optional<WTF::String>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  v4 = *(result + 2);
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    *(result + 1) = 0;
    v10 = result;
    v8 = *(result + 3);
    if (v8)
    {
      if (v3)
      {
        (*(*v8 + 16))(v8);
        v5 = *v10;
        v3 = *(v10 + 1);
LABEL_14:
        *v10 = 0;
        *(v10 + 1) = 0;
        v9 = *(v10 + 3);
        if (v9)
        {
          if (v3)
          {
            (*(*v9 + 16))(v9, v5);
            v5 = *v10;
            v3 = *(v10 + 1);
            goto LABEL_18;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_14;
  }

  *(result + 2) = v4 + 1;
  if (!v4)
  {
    v10 = result;
    goto LABEL_14;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    if (v6)
    {
      result = IPC::Decoder::decode<WTF::String>(result, &v11);
      if (v12)
      {
        *a2 = v11;
        v7 = 1;
        *(a2 + 8) = 1;
      }

      else
      {
        v7 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      v7 = 1;
    }

    *(a2 + 16) = v7;
    return result;
  }

  v10 = result;
LABEL_18:
  *v10 = 0;
  *(v10 + 1) = 0;
  result = *(v10 + 3);
  if (result && v3)
  {
    result = (*(*result + 16))(result, v5);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,void>::encode<IPC::Encoder,std::optional<WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>> const&>(IPC::Encoder *a1, _BYTE *a2)
{
  if (a2[8])
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[8])
    {
      return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(*a2 + 16), *(*a2 + 24));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
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
      result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,WTF::UUID,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WTF::UUID,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WTF::UUID,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6[1]);
      v8 = *v6;
      v6 += 2;
      result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v8);
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    result[1] = 0;
    v11 = result;
    v9 = result[3];
    if (v9)
    {
      if (v3)
      {
        (*(*v9 + 16))(v9);
        v5 = *v11;
        v3 = v11[1];
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
    v11[1] = 0;
    v10 = v11[3];
    if (v10)
    {
      if (v3)
      {
        (*(*v10 + 16))(v10, v5);
        v5 = *v11;
        v3 = v11[1];
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
    v11[1] = 0;
    result = v11[3];
    if (result && v3)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_16;
  }

  result[2] = (v4 + 1);
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

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(result);
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

uint64_t std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7F4310(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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

WTF *IPC::VectorArgumentCoder<false,WTF::UUID,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (v22)
    {
      if (v4)
      {
        (*(*v22 + 16))(v22);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_28;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_28:
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
  v23 = 0;
  v24 = 0;
  if (v10 >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<WTF::UUID>(a1, &v25);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v16 = HIDWORD(v24);
      if (HIDWORD(v24) == v24)
      {
        v17 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v23, HIDWORD(v24) + 1, &v25);
        v16 = HIDWORD(v24);
        v18 = v23;
        v19 = *v17;
      }

      else
      {
        v18 = v23;
        v19 = v25;
      }

      *(v18 + v16) = v19;
      v20 = ++HIDWORD(v24);
      if (!--v10)
      {
        WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v23, v20);
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!v10)
    {
LABEL_15:
      std::optional<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a2, &v23);
      goto LABEL_22;
    }

    LODWORD(v24) = v10;
    v23 = WTF::fastMalloc((16 * v10));
    while (1)
    {
      IPC::Decoder::decode<WTF::UUID>(a1, &v25);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v12 = HIDWORD(v24);
      if (HIDWORD(v24) == v24)
      {
        v13 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v23, HIDWORD(v24) + 1, &v25);
        v12 = HIDWORD(v24);
        v14 = v23;
        v15 = *v13;
      }

      else
      {
        v14 = v23;
        v15 = v25;
      }

      *(v14 + v12) = v15;
      ++HIDWORD(v24);
      if (!--v10)
      {
        goto LABEL_15;
      }
    }
  }

  *a2 = 0;
  a2[16] = 0;
LABEL_22:
  result = v23;
  if (v23)
  {
    v23 = 0;
    LODWORD(v24) = 0;
    return WTF::fastFree(result, v11);
  }

  return result;
}

void sub_19D7F46B4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7F4710(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
    if (v5)
    {
      v8 = 16 * v5;
      v9 = v4;
      do
      {
        v10 = *v9;
        v9 = (v9 + 16);
        *v6++ = v10;
        v8 -= 16;
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

uint64_t WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
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
      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((16 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v4 && result != v5)
      {
        v6 = 16 * v4;
        v7 = v5;
        do
        {
          v8 = *v7;
          v7 = (v7 + 16);
          *result = v8;
          result += 16;
          v6 -= 16;
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

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionContentWorldType,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  v6 = v4 < 4;
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

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2 | a2[1];
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    if (*a2 == 0)
    {
      result = 157;
      __break(0xC471u);
    }

    else
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);
      v6 = *a2;

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::OptionSet<WebKit::WebExtensionMenuItemContextType>>,void>::encode<IPC::Encoder,std::optional<WTF::OptionSet<WebKit::WebExtensionMenuItemContextType>> const&>(IPC::Encoder *a1, uint64_t a2)
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
      return IPC::ArgumentCoder<std::optional<WebKit::WebExtensionTabParameters>,void>::encode<IPC::Encoder,std::optional<WebKit::WebExtensionTabParameters> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebExtensionTabParameters>,void>::encode<IPC::Encoder,std::optional<WebKit::WebExtensionTabParameters> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[176])
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[176])
    {
      return IPC::ArgumentCoder<WebKit::WebExtensionTabParameters,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::WebExtensionTabParameters>,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

WTF::StringImpl *IPC::ArgumentCoder<std::optional<WebKit::WebExtensionTabParameters>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
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
        goto LABEL_20;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_20:
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
        goto LABEL_24;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_24:
    *v11 = 0;
    v11[1] = 0;
    result = v11[3];
    if (result && v3)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_25;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v11 = a1;
    goto LABEL_20;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v11 = a1;
    goto LABEL_24;
  }

  if (!v6)
  {
    v12[0] = 0;
    v17 = 0;
    result = std::__optional_move_base<WebKit::WebExtensionTabParameters,false>::__optional_move_base[abi:sn200100](a2, v12);
    a2[184] = 1;
    if (v17 != 1)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = IPC::Decoder::decode<WebKit::WebExtensionTabParameters>(a1, v12);
  if (v17 != 1)
  {
LABEL_25:
    *a2 = 0;
    a2[184] = 0;
    return result;
  }

  result = std::__optional_destruct_base<WebKit::WebExtensionTabParameters,false>::__optional_destruct_base[abi:sn200100]<WebKit::WebExtensionTabParameters>(a2, v12);
  a2[184] = 1;
  if ((v17 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  if (v16 == 1)
  {
    result = v15;
    v15 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
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

void sub_19D7F4DD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, WTF::StringImpl *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a32 == 1)
  {
    if (a19 == 1 && a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a18, a2);
    }

    if (a17 == 1 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::WebExtensionTabParameters>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::WebExtensionTabParameters,void>::decode(a1, a2);
  if ((a2[176] & 1) == 0)
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

void sub_19D7F4EBC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 176) == 1)
  {
    if (*(v2 + 72) == 1)
    {
      v4 = *(v2 + 64);
      *(v2 + 64) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }
    }

    if (*(v2 + 56) == 1)
    {
      v5 = *(v2 + 16);
      *(v2 + 16) = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(IPC::Encoder *a1, uint64_t a2)
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
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebKit::DoubleSize>,void>::encode<IPC::Encoder,std::optional<WebKit::DoubleSize> const&>(v4);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::DoubleSize>,void>::encode<IPC::Encoder,std::optional<WebKit::DoubleSize> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
      return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 176 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebExtensionTabParameters,void>::encode(a1, v6);
      v6 += 176;
      v7 -= 176;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::DoubleRect>,void>::encode<IPC::Encoder,std::optional<WebKit::DoubleRect> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 32))
    {
      return IPC::ArgumentCoder<WebKit::WebGPU::ColorDict,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
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

void sub_19D7F51D0(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
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
    v31 = a1[3];
    if (v31)
    {
      if (v4)
      {
        (*(*v31 + 16))(v31);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_53;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_53:
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
  v43 = 0;
  v44 = 0;
  if (v10 >= 0x1745)
  {
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebExtensionTabParameters>(a1, &v32);
      v21 = v42;
      if (v42)
      {
        if (HIDWORD(v44) == v44)
        {
          WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebExtensionTabParameters>(&v43, &v32);
        }

        else
        {
          v22 = v43 + 176 * HIDWORD(v44);
          *v22 = v32;
          std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100]((v22 + 16), v33);
          *(v22 + 64) = 0;
          *(v22 + 72) = 0;
          if (v36 == 1)
          {
            v23 = v35;
            v35 = 0;
            *(v22 + 64) = v23;
            *(v22 + 72) = 1;
          }

          v24 = v38;
          *(v22 + 80) = v37;
          *(v22 + 96) = v24;
          v25 = v39;
          v26 = v40;
          v27 = v41[0];
          *(v22 + 154) = *(v41 + 10);
          *(v22 + 128) = v26;
          *(v22 + 144) = v27;
          *(v22 + 112) = v25;
          ++HIDWORD(v44);
        }
      }

      else
      {
        *a2 = 0;
        a2[16] = 0;
      }

      if (v42 == 1)
      {
        if (v36 == 1)
        {
          v28 = v35;
          v35 = 0;
          if (v28)
          {
            if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v11);
            }
          }
        }

        if (v34 == 1)
        {
          v29 = v33[0];
          v33[0] = 0;
          if (v29)
          {
            if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v29, v11);
            }
          }
        }
      }

      if ((v21 & 1) == 0)
      {
        break;
      }

      if (!--v10)
      {
        WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v43, HIDWORD(v44));
        goto LABEL_49;
      }
    }
  }

  else
  {
    if (v10)
    {
      LODWORD(v44) = 176 * v10 / 0xB0u;
      v43 = WTF::fastMalloc((176 * v10));
      do
      {
        IPC::Decoder::decode<WebKit::WebExtensionTabParameters>(a1, &v32);
        v12 = v42;
        if (v42)
        {
          if (HIDWORD(v44) == v44)
          {
            WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebExtensionTabParameters>(&v43, &v32);
          }

          else
          {
            v13 = v43 + 176 * HIDWORD(v44);
            *v13 = v32;
            std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100]((v13 + 16), v33);
            *(v13 + 64) = 0;
            *(v13 + 72) = 0;
            if (v36 == 1)
            {
              v14 = v35;
              v35 = 0;
              *(v13 + 64) = v14;
              *(v13 + 72) = 1;
            }

            v15 = v38;
            *(v13 + 80) = v37;
            *(v13 + 96) = v15;
            v16 = v39;
            v17 = v40;
            v18 = v41[0];
            *(v13 + 154) = *(v41 + 10);
            *(v13 + 128) = v17;
            *(v13 + 144) = v18;
            *(v13 + 112) = v16;
            ++HIDWORD(v44);
          }
        }

        else
        {
          *a2 = 0;
          a2[16] = 0;
        }

        if (v42 != 1)
        {
          goto LABEL_25;
        }

        if (v36 == 1)
        {
          v19 = v35;
          v35 = 0;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v11);
            }
          }
        }

        if (v34 == 1 && (v20 = v33[0], v33[0] = 0, v20) && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v11);
          if ((v12 & 1) == 0)
          {
            return WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v11);
          }
        }

        else
        {
LABEL_25:
          if ((v12 & 1) == 0)
          {
            return WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v11);
          }
        }

        --v10;
      }

      while (v10);
    }

LABEL_49:
    std::optional<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a2, &v43);
  }

  return WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v11);
}

void sub_19D7F55A0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, WTF::StringImpl *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a32 == 1)
  {
    if (a19 == 1 && a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a18, a2);
    }

    if (a17 == 1 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v32 - 96, a2);
  _Unwind_Resume(a1);
}

uint64_t std::optional<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7F5660(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebExtensionTabParameters>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 176 * *(a1 + 12);
  *v4 = *v3;
  std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100]((v4 + 16), v3 + 16);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  if (*(v3 + 72) == 1)
  {
    v5 = *(v3 + 64);
    *(v3 + 64) = 0;
    *(v4 + 64) = v5;
    *(v4 + 72) = 1;
  }

  v6 = *(v3 + 96);
  *(v4 + 80) = *(v3 + 80);
  *(v4 + 96) = v6;
  v7 = *(v3 + 112);
  v8 = *(v3 + 128);
  v9 = *(v3 + 144);
  *(v4 + 154) = *(v3 + 154);
  *(v4 + 128) = v8;
  *(v4 + 144) = v9;
  *(v4 + 112) = v7;
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 176 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x1745D18)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7F58A4);
    }

    v3 = *a1;
    v4 = (*a1 + 176 * *(a1 + 12));
    v5 = 176 * a2;
    v6 = WTF::fastMalloc((176 * a2));
    *(a1 + 8) = v5 / 0xB0;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::WebExtensionTabParameters>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebKit::WebExtensionTabParameters>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result + 64;
    v5 = a3 + 64;
    do
    {
      *(v5 - 64) = *(v4 - 4);
      v6 = (v4 - 48);
      result = std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100]((v5 - 48), (v4 - 48));
      *v5 = 0;
      *(v5 + 8) = 0;
      if (v4[8] == 1)
      {
        v8 = *v4;
        *v4 = 0;
        *v5 = v8;
        *(v5 + 8) = 1;
      }

      v9 = v4 - 64;
      v10 = *(v4 + 2);
      *(v5 + 16) = *(v4 + 1);
      *(v5 + 32) = v10;
      v11 = *(v4 + 3);
      v12 = *(v4 + 4);
      v13 = *(v4 + 5);
      *(v5 + 90) = *(v4 + 90);
      *(v5 + 64) = v12;
      *(v5 + 80) = v13;
      *(v5 + 48) = v11;
      if (v4[8] == 1)
      {
        result = *v4;
        *v4 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v7);
          }
        }
      }

      if (*(v4 - 8) == 1)
      {
        result = *v6;
        *v6 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v7);
          }
        }
      }

      v4 += 176;
      v5 += 176;
    }

    while (v9 + 176 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorTypeOperations<WebKit::WebExtensionTabParameters>::destruct((*result + 176 * a2), (*result + 176 * v4));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >= 0x1745D18)
      {
        __break(0xC471u);
        return result;
      }

      v6 = (176 * a2);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0xB0;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebKit::WebExtensionTabParameters>::move(v5, (v5 + 176 * v4), result);
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

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::Color,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, v6);
      v6 = (v6 + 8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    if (*a2)
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
      v6 = a2[1];

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

uint64_t IPC::ArgumentCoder<std::optional<WebKit::FrameInfoData>,void>::encode<IPC::Encoder,std::optional<WebKit::FrameInfoData> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 352))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 352))
    {
      return IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WebCore::InputMode,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WebCore::InputMode,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  v6 = v4 < 9;
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

uint64_t IPC::Decoder::decode<WebKit::OptionItem>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v39);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *a2;
  if (v4 <= &v5[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      if (v4)
      {
        (*(*v27 + 16))(v27);
        v4 = *(a2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_50:
    *a2 = 0;
    *(a2 + 1) = 0;
    v28 = *(a2 + 3);
    if (v28)
    {
      if (v4)
      {
        (*(*v28 + 16))(v28);
        v8 = 0;
        v6 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_53;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v8 = 0;
    goto LABEL_53;
  }

  v7 = v5 + 1;
  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_50;
  }

  v8 = *v5;
  if (v8 < 2)
  {
    v9 = 1;
    goto LABEL_5;
  }

LABEL_53:
  *a2 = 0;
  *(a2 + 1) = 0;
  v29 = *(a2 + 3);
  if (!v29 || !v4)
  {
    v10 = 0;
    LOBYTE(v9) = 0;
    v30 = 0;
    v6 = 0;
LABEL_55:
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31 && v30)
    {
      (*(*v31 + 16))(v31, v6, v30);
      v12 = 0;
      v6 = *a2;
      v4 = *(a2 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v12 = 0;
    }

    goto LABEL_57;
  }

  (*(*v29 + 16))(v29, v6);
  v9 = 0;
  v6 = *a2;
  v4 = *(a2 + 1);
  v7 = *(a2 + 2);
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
    v30 = 0;
    v36 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v4 && v36)
    {
      (*(*v36 + 16))(v36);
      v6 = *a2;
      v30 = *(a2 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_55;
  }

  v11 = v7 + 1;
  *(a2 + 2) = v7 + 1;
  if (!v7)
  {
    v30 = v4;
    goto LABEL_55;
  }

  v12 = *v7;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_12;
  }

LABEL_57:
  *a2 = 0;
  *(a2 + 1) = 0;
  v32 = *(a2 + 3);
  if (!v32 || !v4)
  {
    v14 = 0;
    LOBYTE(v13) = 0;
    v33 = 0;
    v6 = 0;
LABEL_59:
    *a2 = 0;
    *(a2 + 1) = 0;
    v34 = *(a2 + 3);
    if (v34 && v33)
    {
      (*(*v34 + 16))(v34, v6, v33);
      v38 = 0;
      v6 = *a2;
      v4 = *(a2 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v38 = 0;
    }

    goto LABEL_62;
  }

  (*(*v32 + 16))(v32, v6);
  v13 = 0;
  v6 = *a2;
  v4 = *(a2 + 1);
  v11 = *(a2 + 2);
LABEL_12:
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v4 <= &v11[-v6])
  {
    v33 = 0;
    v37 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v4 && v37)
    {
      (*(*v37 + 16))(v37);
      v6 = *a2;
      v33 = *(a2 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_59;
  }

  *(a2 + 2) = v11 + 1;
  if (!v11)
  {
    v33 = v4;
    goto LABEL_59;
  }

  v15 = *v11;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_19;
  }

  v38 = v15;
LABEL_62:
  *a2 = 0;
  *(a2 + 1) = 0;
  v35 = *(a2 + 3);
  if (v35 && v4)
  {
    (*(*v35 + 16))(v35, v6);
  }

  v16 = 0;
  v15 = v38;
LABEL_19:
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result = IPC::Decoder::decode<float>(a2);
  if (!*a2)
  {
    goto LABEL_47;
  }

  if ((v40 & 1) == 0 || (v9 & 1) == 0 || (v13 & 1) == 0 || (v16 & 1) == 0 || (result & 0x100000000) == 0)
  {
    __break(1u);
LABEL_47:
    v24 = 0;
    *a1 = 0;
    goto LABEL_35;
  }

  v20 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
  }

  v21 = 256;
  if (!v14)
  {
    v21 = 0;
  }

  v22 = v21 | v10;
  v23 = 0x10000;
  if (!v17)
  {
    v23 = 0;
  }

  *a1 = v20;
  *(a1 + 8) = v22 | (result << 32) | v23;
  v24 = 1;
LABEL_35:
  *(a1 + 16) = v24;
  if (v40 == 1 && (result = v39, v39 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v19);
    if (v24)
    {
      return result;
    }
  }

  else if (v24)
  {
    return result;
  }

  v25 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v25)
  {
    v26 = *(*result + 16);

    return v26();
  }

  return result;
}

void sub_19D7F626C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebKit::OptionItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::OptionItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::OptionItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::OptionItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7F63FCLL);
    }

    v4 = *a1;
    v5 = (*a1 + 16 * *(a1 + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorTypeOperations<WebKit::OptionItem>::move(v4, v5, v6);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::OptionItem>::move(WTF::StringImpl *result, WTF::StringImpl *a2, WTF::StringImpl **a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      a3[1] = v5[1];
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

uint64_t WTF::Vector<WebKit::OptionItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
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
        result = WTF::VectorTypeOperations<WebKit::OptionItem>::move(v5, (v5 + 16 * v4), result);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::Color,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *this;
  v7 = v5 - *this;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *this = 0;
    *(this + 1) = 0;
    v28 = *(this + 3);
    if (v28)
    {
      if (v4)
      {
        (*(*v28 + 16))(v28);
        v4 = *(this + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_50;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
LABEL_50:
    *this = 0;
    *(this + 1) = 0;
    result = *(this + 3);
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
  v31 = 0;
  v32 = 0;
  if (v11 >= 0x20000)
  {
    while (1)
    {
      IPC::ArgumentCoder<WebCore::Color,void>::decode(this, &v29);
      if ((v30 & 1) == 0)
      {
        v6 = *this;
        v23 = *(this + 1);
        *this = 0;
        *(this + 1) = 0;
        v24 = *(this + 3);
        v25 = !v24 || v23 == 0;
        if (v25 || ((*(*v24 + 16))(v24, v6), (v30 & 1) == 0))
        {
LABEL_27:
          *a2 = 0;
          *(a2 + 16) = 0;
          return WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v6);
        }
      }

      v19 = HIDWORD(v32);
      if (HIDWORD(v32) != v32)
      {
        break;
      }

      WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Color>(&v31, &v29);
      if (v30)
      {
        goto LABEL_35;
      }

LABEL_36:
      if (!--v11)
      {
        WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v31, HIDWORD(v32));
        goto LABEL_46;
      }
    }

    v20 = (v31 + 8 * HIDWORD(v32));
    *v20 = 0;
    if (v20 != &v29)
    {
      v21 = v29;
      v29 = 0;
      *v20 = v21;
    }

    HIDWORD(v32) = v19 + 1;
LABEL_35:
    if ((v29 & 0x8000000000000) != 0)
    {
      v22 = (v29 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v29 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v22);
        WTF::fastFree(v22, v6);
      }
    }

    goto LABEL_36;
  }

  if (v11)
  {
    LODWORD(v32) = v11;
    v31 = WTF::fastMalloc((8 * v11));
    while (1)
    {
      IPC::ArgumentCoder<WebCore::Color,void>::decode(this, &v29);
      if ((v30 & 1) == 0)
      {
        v6 = *this;
        v16 = *(this + 1);
        *this = 0;
        *(this + 1) = 0;
        v17 = *(this + 3);
        if (!v17 || v16 == 0)
        {
          goto LABEL_27;
        }

        (*(*v17 + 16))(v17, v6);
        if ((v30 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v12 = HIDWORD(v32);
      if (HIDWORD(v32) != v32)
      {
        break;
      }

      WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Color>(&v31, &v29);
      if (v30)
      {
        goto LABEL_17;
      }

LABEL_18:
      if (!--v11)
      {
        goto LABEL_46;
      }
    }

    v13 = (v31 + 8 * HIDWORD(v32));
    *v13 = 0;
    if (v13 != &v29)
    {
      v14 = v29;
      v29 = 0;
      *v13 = v14;
    }

    HIDWORD(v32) = v12 + 1;
LABEL_17:
    if ((v29 & 0x8000000000000) != 0)
    {
      v15 = (v29 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v29 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        WTF::fastFree(v15, v6);
      }
    }

    goto LABEL_18;
  }

LABEL_46:
  *a2 = v31;
  v26 = v32;
  v31 = 0;
  v32 = 0;
  *(a2 + 8) = v26;
  *(a2 + 16) = 1;
  return WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v6);
}

void sub_19D7F686C(_Unwind_Exception *a1, void *a2, uint64_t a3, char a4, ...)
{
  va_start(va, a4);
  if (a4 == 1 && (a3 & 0x8000000000000) != 0)
  {
    v5 = (a3 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a3 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      WTF::fastFree(v5, a2);
    }
  }

  WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Color>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = (*a1 + 8 * v4);
  *v5 = 0;
  if (v5 != v3)
  {
    v6 = *v3;
    *v3 = 0;
    *v5 = v6;
  }

  *(a1 + 12) = v4 + 1;
  return 1;
}

unint64_t WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7F6A78);
    }

    v4 = *a1;
    v5 = (*a1 + 8 * *(a1 + 12));
    v6 = WTF::fastMalloc((8 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorTypeOperations<WebCore::Color>::move(v4, v5, v6);
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

unsigned int *WTF::VectorTypeOperations<WebCore::Color>::move(unsigned int *result, unsigned int *a2, unsigned int *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = 0;
      if (v5 != a3)
      {
        v6 = *v5;
        *v5 = 0;
        *a3 = v6;
      }

      v7 = *v5;
      if ((*v5 & 0x8000000000000) != 0)
      {
        result = (v7 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }
      }

      a3 += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WebCore::Color>::destruct((*result + 8 * a2), (*result + 8 * v4));
      v3[3] = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        JUMPOUT(0x19D7F6BECLL);
      }

      result = WTF::fastMalloc((8 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorTypeOperations<WebCore::Color>::move(v5, &v5[2 * v4], result);
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

unsigned int *WTF::VectorDestructor<true,WebCore::Color>::destruct(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *v3;
      if ((*v3 & 0x8000000000000) != 0)
      {
        result = (v4 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }
      }

      v3 += 2;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::FrameInfoData>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<BOOL>(a1);
  if ((result & 0x100) == 0)
  {
    *a2 = 0;
    a2[368] = 0;
    return result;
  }

  if (result)
  {
    IPC::Decoder::decode<WebKit::FrameInfoData>(a1, v6);
    if ((v7 & 1) == 0)
    {
      v5 = 0;
      *a2 = 0;
      goto LABEL_5;
    }

    std::optional<WebKit::FrameInfoData>::optional[abi:sn200100]<WebKit::FrameInfoData,0>(a2, v6);
  }

  else
  {
    v6[0] = 0;
    v7 = 0;
    std::__optional_move_base<WebKit::FrameInfoData,false>::__optional_move_base[abi:sn200100](a2, v6);
  }

  v5 = 1;
LABEL_5:
  a2[368] = v5;
  return std::optional<WebKit::FrameInfoData>::~optional(v6);
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
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

uint64_t IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::UUID>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::UUID>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::UUID>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::UUID>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2 | a2[1];
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    if (*a2 == 0)
    {
      result = 157;
      __break(0xC471u);
    }

    else
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
      v6 = a2[2];

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }
  }

  return result;
}

void *IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::UUID>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::UUID>>>,void>::decode<IPC::Decoder>(void *result, IPC::Decoder *this)
{
  v3 = result;
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
    IPC::Decoder::markInvalid(this);
    goto LABEL_14;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_14:
    result = IPC::Decoder::markInvalid(this);
    *v3 = 0;
    *(v3 + 32) = 0;
    return result;
  }

  if (v5)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(this, v8);
    if ((v9 & 1) == 0)
    {
      result = IPC::Decoder::markInvalid(this);
      v7 = 0;
      *v3 = 0;
      goto LABEL_8;
    }

    v6 = v8[1];
    *v3 = v8[0];
    *(v3 + 16) = v6;
  }

  v7 = 1;
LABEL_8:
  *(v3 + 32) = v7;
  return result;
}

WTF *WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::FrameTreeCreationParameters>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 56 * a1[3];
  v5 = *(v3 + 16);
  *v4 = *v3;
  *(v4 + 16) = v5;
  v6 = *(v3 + 24);
  *(v3 + 24) = 0;
  *(v4 + 24) = v6;
  v7 = *(v3 + 32);
  *(v3 + 32) = 0;
  *(v4 + 32) = v7;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 40, (v3 + 40));
  ++a1[3];
  return result;
}

void sub_19D7F700C(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v3 + 32);
  *(v3 + 32) = 0;
  if (v6)
  {
    WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v6, a2);
  }

  v7 = *(v3 + 24);
  *(v3 + 24) = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 56 * a1[3] <= a3)
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

    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x4924925)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = (*result + 56 * *(result + 3));
      v5 = 56 * a2;
      v6 = WTF::fastMalloc((56 * a2));
      *(v2 + 2) = v5 / 0x38;
      *v2 = v6;
      result = WTF::VectorMover<false,WebKit::FrameTreeCreationParameters>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebKit::FrameTreeCreationParameters>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 24);
    v5 = (result + 40);
    do
    {
      v6 = *(v5 - 10);
      *(v4 - 8) = *(v5 - 24);
      *(v4 - 3) = v6;
      v7 = *(v5 - 2);
      *(v5 - 2) = 0;
      *v4 = v7;
      v8 = *(v5 - 1);
      *(v5 - 1) = 0;
      v4[2] = 0;
      v4[1] = v8;
      v4[3] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v4 + 2), v5);
      WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v9);
      v11 = *(v5 - 1);
      *(v5 - 1) = 0;
      if (v11)
      {
        WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v11, v10);
      }

      result = *(v5 - 2);
      *(v5 - 2) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v10);
        }
      }

      v4 += 7;
      v12 = (v5 + 4);
      v5 += 14;
    }

    while (v12 != a2);
  }

  return result;
}

void sub_19D7F72B4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v5)
  {
    WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v5, a2);
  }

  v6 = *v2;
  *v2 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 368 * v5;
    do
    {
      IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(a1, v6);
      result = IPC::VectorArgumentCoder<false,WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v6 + 352);
      v6 += 368;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::FrameTreeNodeData>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebKit::FrameTreeNodeData,void>::decode(a2);
  if ((*(a1 + 368) & 1) == 0)
  {
    v5 = *a2;
    v6 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
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

void sub_19D7F73EC(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 368) == 1)
  {
    WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 352, a2);
    v5 = *(v2 + 304);
    *(v2 + 304) = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(v2 + 240);
    *(v2 + 240) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 208);
    v7 = *(v2 + 200);
    *(v2 + 200) = 0;
    if (v7)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase((v2 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::FrameTreeNodeData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  WebKit::FrameTreeNodeData::FrameTreeNodeData(*a1 + 368 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 368 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xB21643)
    {
      __break(0xC471u);
      JUMPOUT(0x19D7F7624);
    }

    v3 = *a1;
    v4 = *a1 + 368 * *(a1 + 12);
    v5 = 368 * a2;
    v6 = WTF::fastMalloc((368 * a2));
    *(a1 + 8) = v5 / 0x170;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::FrameTreeNodeData>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebKit::FrameTreeNodeData>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 352;
    do
    {
      WebKit::FrameTreeNodeData::FrameTreeNodeData(a3, v5 - 352);
      WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v6);
      v8 = *(v5 - 48);
      *(v5 - 48) = 0;
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = *(v5 - 112);
      *(v5 - 112) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }

      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v5 - 144);
      v10 = *(v5 - 152);
      *(v5 - 152) = 0;
      if (v10)
      {
      }

      WebCore::ResourceRequestBase::~ResourceRequestBase((v5 - 344));
      a3 += 368;
      v11 = v5 + 16;
      v5 += 368;
    }

    while (v11 != a2);
  }
}

void WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) > a2)
  {
    v4 = *(a1 + 12);
    if (v4 > a2)
    {
      WTF::VectorDestructor<true,WebKit::FrameTreeNodeData>::destruct((*a1 + 368 * a2), (*a1 + 368 * v4));
      *(a1 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *a1;
    if (a2)
    {
      if (a2 >= 0xB21643)
      {
        __break(0xC471u);
        return;
      }

      v6 = (368 * a2);
      v7 = WTF::fastMalloc(v6);
      *(a1 + 8) = v6 / 0x170;
      *a1 = v7;
      if (v7 != v5)
      {
        WTF::VectorMover<false,WebKit::FrameTreeNodeData>::move(v5, v5 + 368 * v4, v7);
      }
    }

    if (v5)
    {
      if (*a1 == v5)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v5, a2);
    }
  }
}

uint64_t IPC::ArgumentCoder<WTF::HashSet<WebCore::GamepadHapticEffectType,WTF::IntHash<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, char **a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 3);
  }

  else
  {
    v4 = 0;
  }

  result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  v6 = *a2;
  if (!*a2)
  {
    v8 = 0;
    v7 = 0;
LABEL_14:
    v9 = v8;
    v8 = &v6[v7];
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_22;
  }

  v7 = *(v6 - 1);
  v8 = &v6[v7];
  if (!*(v6 - 3))
  {
    goto LABEL_14;
  }

  if (!v7)
  {
    v10 = 0;
    v9 = v6;
    goto LABEL_17;
  }

  v9 = v6;
  while (*v9 >= 0xFEu)
  {
    ++v9;
    if (!--v7)
    {
      v9 = v8;
      break;
    }
  }

  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_12:
  v10 = *(v6 - 1);
LABEL_17:
  v11 = &v6[v10];
LABEL_22:
  while (v9 != v11)
  {
    v12 = *v9++;
    result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v12);
    if (v9 != v8)
    {
      while (*v9 >= 0xFEu)
      {
        if (++v9 == v8)
        {
          v9 = v8;
          goto LABEL_22;
        }
      }
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<true,double,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<double const,18446744073709551615ul>(a2, v9[0], v9[1]);
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

IPC::Decoder *IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 1);
  v3 = ((*(result + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *result;
  v5 = v3 - *result;
  v14 = v2 >= v5;
  v6 = v2 - v5;
  if (!v14 || v6 <= 7)
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
    if (v8 >> 61)
    {
      goto LABEL_20;
    }

    v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
    v11 = v10 - v4;
    v12 = 8 * v8;
    v14 = v2 >= v11;
    v13 = v2 - v11;
    v14 = v14 && v13 >= v12;
    if (!v14)
    {
      goto LABEL_19;
    }

    *(result + 2) = v12 + v10;
    if (!v10)
    {
LABEL_20:
      v9 = 0;
      *a2 = 0;
      goto LABEL_10;
    }

    *a2 = v10;
    *(a2 + 8) = v8;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v9 = 1;
LABEL_10:
  *(a2 + 16) = v9;
  return result;
}

uint64_t WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<double const,18446744073709551615ul>(uint64_t result, uint64_t *a2, unint64_t a3)
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

uint64_t IPC::ArgumentCoder<WebCore::GamepadHapticEffectType,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  v6 = v4 < 2;
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

uint64_t WTF::HashTable<WebCore::GamepadHapticEffectType,WebCore::GamepadHapticEffectType,WTF::IdentityExtractor,WTF::IntHash<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v3 = *(v2 - 4);
  v4 = *(v2 - 12);
  if (!v3)
  {
LABEL_6:
    v8 = WTF::fastMalloc(0x18);
    v3 = 0;
    v9 = (v8 + 4);
    v5 = 8;
    goto LABEL_7;
  }

  v5 = (v3 << (6 * v4 >= (2 * v3)));
  result = WTF::fastMalloc((v5 + 16));
  v8 = result;
  v9 = (result + 16);
  if (v5)
  {
LABEL_7:
    result = memset(v9, 255, v5);
  }

  *a1 = v9;
  LODWORD(v10) = v5 - 1;
  v8[2] = v5 - 1;
  v8[3] = v5;
  *v8 = 0;
  v8[1] = v4;
  if (v3)
  {
    v11 = 0;
    if (v9)
    {
      v10 = v10;
    }

    else
    {
      v10 = 0;
    }

    do
    {
      v12 = *(v2 + v11);
      if (v12 <= 0xFD)
      {
        v13 = 0;
        v14 = 9 * ((~(v12 << 15) + v12) ^ ((~(v12 << 15) + v12) >> 10));
        v15 = ((v14 ^ (v14 >> 6)) + ~((v14 ^ (v14 >> 6)) << 11)) ^ (((v14 ^ (v14 >> 6)) + ~((v14 ^ (v14 >> 6)) << 11)) >> 16);
        do
        {
          v16 = v15 & v10;
          result = v9[v15 & v10];
          v15 = ++v13 + (v15 & v10);
        }

        while (result != 255);
        v9[v16] = v12;
      }

      ++v11;
    }

    while (v11 != v3);
  }

  if (v2)
  {

    return WTF::fastFree((v2 - 16), v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(IPC::Encoder *a1, void **a2)
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
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = &(*a2)[5 * *(*a2 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      result = IPC::ArgumentCoder<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,void>::encode<IPC::Encoder,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>(a1, v6);
      do
      {
        v6 += 5;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
    }

    while (v6 != v9);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[5 * v2];
  if (!*(result - 3))
  {
    return &result[5 * v2];
  }

  if (v2)
  {
    v4 = 40 * v2;
    while ((*result + 1) <= 1)
    {
      result += 5;
      v4 -= 40;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,void>::encode<IPC::Encoder,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>(IPC::Encoder *a1, uint64_t *a2)
{
  v3 = a2 + 1;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  for (i = 0; i != 32; i += 4)
  {
    result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(v3 + i));
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<float>(a2);
  if ((result & 0x100000000) != 0)
  {
    v5 = result;
    v6 = 0;
    v15 = 0;
    if (result)
    {
      while (1)
      {
        result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
        v8 = result;
        v13 = result;
        v14 = v7;
        if ((v7 & 1) == 0)
        {
          break;
        }

        result = IPC::Decoder::decode<WebKit::CoreIPCAuditToken>(v11, a2);
        if (v12 != 1 || (v8 - 1) >= 0xFFFFFFFFFFFFFFFELL)
        {
          break;
        }

        result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::CoreIPCAuditToken>(v10, &v15, &v13, v11);
        if ((v10[16] & 1) == 0)
        {
          break;
        }

        if (!--v5)
        {
          v6 = v15;
          goto LABEL_3;
        }
      }

      *a1 = 0;
      a1[8] = 0;
      if (v15)
      {
        return WTF::fastFree((v15 - 16), v7);
      }
    }

    else
    {
LABEL_3:
      *a1 = v6;
      a1[8] = 1;
    }
  }

  else
  {
    *a1 = 0;
    a1[8] = 0;
  }

  return result;
}

void sub_19D7F7F5C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 - 40);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<WebKit::CoreIPCAuditToken>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::CoreIPCAuditToken,void>::decode(a2, a1);
  if ((*(a1 + 32) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::CoreIPCAuditToken>(uint64_t result, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19D7F81A0);
  }

  v8 = result;
  v9 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 40 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v23 = 0;
        v24 = v9 + 40 * *(v9 - 4);
        goto LABEL_23;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 40 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      *&v19 = -1;
      *(&v19 + 1) = -1;
      *(v17 + 8) = v19;
      *(v17 + 24) = v19;
      --*(*a2 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  *v15 = v4;
  v20 = *a4;
  *(v15 + 24) = a4[1];
  *(v15 + 8) = v20;
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
  v25 = (*(v21 - 16) + v22);
  v26 = *(v21 - 4);
  if (v26 > 0x400)
  {
    if (v26 <= 2 * v25)
    {
LABEL_19:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v15);
      v15 = result;
      v21 = *a2;
      if (*a2)
      {
        LODWORD(v26) = *(v21 - 4);
      }

      else
      {
        LODWORD(v26) = 0;
      }
    }
  }

  else if (3 * v26 <= 4 * v25)
  {
    goto LABEL_19;
  }

  v24 = v21 + 40 * v26;
  v23 = 1;
LABEL_23:
  *v8 = v15;
  *(v8 + 8) = v24;
  *(v8 + 16) = v23;
  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, __int128 *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, __int128 *a3)
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

  Table = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::allocateTable(a2);
  *a1 = Table;
  *(Table - 8) = a2 - 1;
  *(Table - 4) = a2;
  *(Table - 16) = 0;
  *(Table - 12) = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 40 * v11);
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
          v21 = v14 + 40 * v19;
          v19 = (v19 + v20++) & v15;
        }

        while (*v21);
        v22 = *v13;
        v23 = v13[1];
        *(v21 + 32) = *(v13 + 4);
        *v21 = v22;
        *(v21 + 16) = v23;
        if (v13 == a3)
        {
          v12 = v21;
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  v2 = WTF::fastMalloc((40 * a1 + 16));
  if (a1)
  {
    v3 = a1;
    v4 = (v2 + 24);
    *&v5 = -1;
    *(&v5 + 1) = -1;
    do
    {
      *(v4 - 1) = 0;
      *v4 = v5;
      v4[1] = v5;
      v4 = (v4 + 40);
      --v3;
    }

    while (v3);
  }

  return v2 + 16;
}

WebKit::FrameState *IPC::ArgumentCoder<std::optional<WebKit::WebsitePoliciesData>,void>::encode<IPC::Encoder,std::optional<WebKit::WebsitePoliciesData>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 120))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 120))
    {
      return IPC::ArgumentCoder<WebKit::WebsitePoliciesData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return WTF::RefCounted<WebKit::FrameState>::deref(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

WebKit::FrameState *WTF::RefCounted<WebKit::FrameState>::deref(WebKit::FrameState *result)
{
  if (*result == 1)
  {
    WebKit::FrameState::~FrameState(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::FrameState::~FrameState(WebKit::FrameState *this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v2) & 1) == 0)
  {
    goto LABEL_42;
  }

  WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 392, v3);
  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 376, v4);
  if (*(this + 296) == 1)
  {
    v13 = *(this + 35);
    *(this + 35) = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v5);
    }

    v14 = *(this + 34);
    *(this + 34) = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v5);
    }

    v15 = *(this + 32);
    *(this + 32) = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v5);
    }

    v16 = *(this + 31);
    *(this + 31) = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v5);
    }

    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 216, v5);
  }

  v6 = *(this + 25);
  *(this + 25) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v6);
  }

  v7 = *(this + 23);
  *(this + 23) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  if (*(this + 136) == 1)
  {
    WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 120, v5);
    v17 = *(this + 14);
    *(this + 14) = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v5);
      }
    }
  }

  if (*(this + 72) == 1)
  {
    v12 = *(this + 7);
    if (v12)
    {
      *(this + 7) = 0;
      *(this + 16) = 0;
      WTF::fastFree(v12, v5);
    }
  }

  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  v11 = *(this + 1);
  *(this + 1) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v5);
  }

  if (*this != 1)
  {
LABEL_42:
    __break(0xC471u);
    JUMPOUT(0x19D7F8674);
  }
}

void sub_19D7F8698(_Unwind_Exception *a1, void *a2)
{
  WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 392, a2);
  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 376, v4);
  std::optional<WebCore::PolicyContainer>::~optional(v2 + 216, v5);
  v7 = *(v2 + 200);
  *(v2 + 200) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v7);
  }

  v8 = *(v2 + 184);
  *(v2 + 184) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  std::optional<WebKit::HTTPBody>::~optional((v2 + 112), v6);
  if (*(v2 + 72) == 1)
  {
    v14 = *(v2 + 56);
    if (v14)
    {
      *(v2 + 56) = 0;
      *(v2 + 64) = 0;
      WTF::fastFree(v14, v9);
    }
  }

  v10 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  if (*v2 == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
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
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(result);
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

WTF::MachSendRight *IPC::ArgumentCoder<std::optional<WebCore::Cursor>,void>::encode<IPC::Encoder,std::optional<WebCore::Cursor> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 32))
    {
      return IPC::ArgumentCoder<WebCore::Cursor,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,void>::encode<IPC::Encoder,WebCore::ShareableBitmap>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

WTF::MachSendRight *IPC::ArgumentCoder<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,void>::encode<IPC::Encoder,WebCore::ShareableBitmap>(IPC::Encoder *a1, WebCore::ShareableBitmap **a2)
{
  if (*a2)
  {
    v6 = 1;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::ShareableBitmap,void>::encode(v4, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

WTF *IPC::ArgumentCoder<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,void>::encode<IPC::Encoder,WebCore::TextIndicator>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::TextIndicator,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 96 * v5;
    do
    {
      IPC::ArgumentCoder<WebCore::ElementContext,void>::encode(a1, v6);
      result = IPC::Encoder::operator<<<BOOL>(a1, (v6 + 80));
      v6 += 96;
    }

    while (v6 != v7);
  }

  return result;
}

void IPC::ArgumentCoder<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,void>::decode<IPC::Decoder,WebCore::ShareableBitmap>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
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
    IPC::ArgumentCoder<WebCore::ShareableBitmap,void>::decode(a1, &v11);
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

WTF *IPC::ArgumentCoder<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,void>::decode<IPC::Decoder,WebCore::TextIndicator>@<X0>(WTF *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 1);
  v4 = *(result + 2);
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    *(result + 1) = 0;
    v9 = result;
    v7 = *(result + 3);
    if (v7)
    {
      if (v3)
      {
        (*(*v7 + 16))(v7);
        v5 = *v9;
        v3 = *(v9 + 1);
        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_13:
    *v9 = 0;
    *(v9 + 1) = 0;
    v8 = *(v9 + 3);
    if (v8)
    {
      if (v3)
      {
        (*(*v8 + 16))(v8, v5);
        v5 = *v9;
        v3 = *(v9 + 1);
        goto LABEL_17;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_17:
    *v9 = 0;
    *(v9 + 1) = 0;
    result = *(v9 + 3);
    if (result)
    {
      if (v3)
      {
        result = (*(*result + 16))(result, v5);
      }
    }

    *a2 = 0;
    a2[8] = 0;
    return result;
  }

  *(result + 2) = v4 + 1;
  if (!v4)
  {
    v9 = result;
    goto LABEL_13;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v9 = result;
    goto LABEL_17;
  }

  if (v6)
  {
    result = IPC::ArgumentCoder<WebCore::TextIndicator,void>::decode(result, &v10);
    *a2 = 0;
    a2[8] = 0;
    if (v11 != 1)
    {
      return result;
    }

    *a2 = v10;
  }

  else
  {
    *a2 = 0;
  }

  a2[8] = 1;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::ElementAnimationContext>(uint64_t a1, IPC::Decoder *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<WebCore::ElementContext>(a2, v17);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (v5 <= &v6[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v14 = *(a2 + 3);
    if (v14)
    {
      if (v5)
      {
        (*(*v14 + 16))(v14);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    *(a2 + 2) = v6 + 1;
    if (v6)
    {
      v8 = *v6;
      if (v8 < 2)
      {
        v9 = 1;
        goto LABEL_5;
      }

      v16 = *v6;
      goto LABEL_26;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v15 = *(a2 + 3);
  if (v15)
  {
    if (v5)
    {
      (*(*v15 + 16))(v15);
      v16 = 0;
      v7 = *a2;
      v5 = *(a2 + 1);
      goto LABEL_26;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
  v16 = 0;
LABEL_26:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (!result)
  {
    v5 = 0;
    goto LABEL_15;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  result = (*(*result + 16))(result, v7);
  v9 = 0;
  v7 = *a2;
  v8 = v16;
LABEL_5:
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    if (v18 & 1) != 0 && (v9)
    {
      v11 = v17[3];
      *(a1 + 32) = v17[2];
      *(a1 + 48) = v11;
      *(a1 + 64) = v17[4];
      v12 = v17[1];
      *a1 = v17[0];
      *(a1 + 16) = v12;
      *(a1 + 80) = v10;
      *(a1 + 96) = 1;
      return result;
    }

    __break(1u);
  }

  v5 = *(a2 + 1);
  result = *(a2 + 3);
LABEL_15:
  *a1 = 0;
  *(a1 + 96) = 0;
  *a2 = 0;
  *(a2 + 1) = 0;
  if (result && v5)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

unint64_t WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x2AAAAAB)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 96 * a2;
    v6 = WTF::fastMalloc((96 * a2));
    *(v2 + 8) = v5 / 0x60;
    *v2 = v6;
    if (v4)
    {
      v8 = 96 * v4;
      v9 = v3;
      do
      {
        v10 = *(v9 + 1);
        *v6 = *v9;
        v6[1] = v10;
        v11 = *(v9 + 2);
        v12 = *(v9 + 3);
        v13 = *(v9 + 5);
        v6[4] = *(v9 + 4);
        v6[5] = v13;
        v6[2] = v11;
        v6[3] = v12;
        v6 += 6;
        v9 = (v9 + 96);
        v8 -= 96;
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

uint64_t WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
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
      if (a2 >= 0x2AAAAAB)
      {
        __break(0xC471u);
        return result;
      }

      v5 = 96 * a2;
      result = WTF::fastMalloc((96 * a2));
      *(v2 + 8) = v5 / 0x60;
      *v2 = result;
      if (v3 && result != v4)
      {
        v6 = 96 * v3;
        v7 = v4;
        do
        {
          v8 = *(v7 + 1);
          *result = *v7;
          *(result + 16) = v8;
          v9 = *(v7 + 2);
          v10 = *(v7 + 3);
          v11 = *(v7 + 5);
          *(result + 64) = *(v7 + 4);
          *(result + 80) = v11;
          *(result + 32) = v9;
          *(result + 48) = v10;
          result += 96;
          v7 = (v7 + 96);
          v6 -= 96;
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

mpark *IPC::ArgumentCoder<mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData>,void>::encode<IPC::Encoder,mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData> const&>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData>,void>::encode<IPC::Encoder,mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (a2[24])
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::Encoder::operator<<<BOOL>(a1, a2);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData>,void>::encode<IPC::Encoder,mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 24) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WebKit::DragInitiationResult::RemoteFrameData,void>::encode(result, a2);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    *(result + 1) = 0;
    v19 = *(result + 3);
    if (v19)
    {
      if (!v4)
      {
        goto LABEL_23;
      }

      (*(*v19 + 16))(v19);
LABEL_34:
      v4 = *(v2 + 1);
LABEL_23:
      *v2 = 0;
      *(v2 + 1) = 0;
      result = *(v2 + 3);
      if (!result || !v4)
      {
        goto LABEL_4;
      }

      v18 = *(*result + 16);
      goto LABEL_20;
    }

LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  v7 = v5 + 1;
  *(result + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_23;
  }

  if (*v5 >= 2u)
  {
    goto LABEL_4;
  }

  if (!*v5)
  {
    if (v4 <= &v7[-v6])
    {
      v20 = 0;
      v21 = 0;
      *result = 0;
      *(result + 1) = 0;
      v22 = *(result + 3);
      if (v22)
      {
        (*(*v22 + 16))(v22);
        v21 = *v2;
        v20 = *(v2 + 1);
      }
    }

    else
    {
      *(result + 2) = v5 + 2;
      if (v5 != -1)
      {
        v16 = *v7;
        if (v16 < 2)
        {
          *a2 = v16;
          *(a2 + 24) = 0;
          v8 = 1;
          goto LABEL_15;
        }

        goto LABEL_23;
      }

      v20 = v4;
      v21 = v6;
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    v23 = *(v2 + 3);
    if (v23 && v20)
    {
      (*(*v23 + 16))(v23, v21, v20);
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(result);
  v11 = v10;
  v12 = IPC::Decoder::decode<WebCore::IntPoint>(v2);
  v14 = v13;
  result = IPC::Decoder::decode<WebCore::IntPoint>(v2);
  if (*v2)
  {
    if (v11 & 1) != 0 && (v14 & 1) != 0 && (v15)
    {
      *a2 = v9;
      *(a2 + 8) = v12;
      *(a2 + 16) = result;
      v8 = 1;
      *(a2 + 24) = 1;
      goto LABEL_15;
    }

    __break(1u);
  }

  v17 = *(v2 + 1);
  *v2 = 0;
  *(v2 + 1) = 0;
  result = *(v2 + 3);
  if (result && v17)
  {
    v18 = *(*result + 16);
LABEL_20:
    result = v18();
  }

LABEL_4:
  v8 = 0;
  *a2 = 0;
LABEL_15:
  *(a2 + 32) = v8;
  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, v6);
      v6 += 4;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

WTF *IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 7)
  {
    IPC::Decoder::markInvalid(this);
LABEL_29:
    result = IPC::Decoder::markInvalid(this);
    *a2 = 0;
    a2[16] = 0;
    return result;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_29;
  }

  v10 = *v5;
  v20 = 0;
  v21 = 0;
  if (v10 >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::FloatRect>(this, &v18);
      if ((v19 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v21) == v21)
      {
        WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::FloatRect>(&v20, &v18);
      }

      else
      {
        *(v20 + HIDWORD(v21)) = v18;
        ++HIDWORD(v21);
      }

      if (!--v10)
      {
        WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v20, HIDWORD(v21));
LABEL_21:
        std::optional<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a2, &v20);
LABEL_22:
        result = v20;
        if (v20)
        {
          goto LABEL_25;
        }

        return result;
      }
    }

LABEL_28:
    *a2 = 0;
    a2[16] = 0;
    goto LABEL_22;
  }

  if (!v10)
  {
    goto LABEL_21;
  }

  LODWORD(v21) = v10;
  v20 = WTF::fastMalloc((16 * v10));
  while (1)
  {
    v11 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
    v13 = v12;
    if ((v12 & 1) == 0)
    {
      IPC::Decoder::markInvalid(this);
    }

    result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(this);
    v16 = result;
    v17 = v15;
    if ((v15 & 1) == 0)
    {
      result = IPC::Decoder::markInvalid(this);
    }

    if (!*this)
    {
      LOBYTE(v18) = 0;
      v19 = 0;
      IPC::Decoder::markInvalid(this);
      if ((v19 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if ((v13 & 1) == 0 || (v17 & 1) == 0)
    {
      break;
    }

    *&v18 = v11;
    *(&v18 + 1) = v16;
    v19 = 1;
LABEL_18:
    if (HIDWORD(v21) == v21)
    {
      WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::FloatRect>(&v20, &v18);
    }

    else
    {
      *(v20 + HIDWORD(v21)) = v18;
      ++HIDWORD(v21);
    }

    if (!--v10)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  v20 = 0;
  LODWORD(v21) = 0;
  return WTF::fastFree(result, v15);
}

uint64_t std::optional<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D7F9748(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::FloatRect>(uint64_t a1, unint64_t a2)
{
  *(*a1 + 16 * *(a1 + 12)) = *WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  ++*(a1 + 12);
  return 1;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::FrameInfoData>,void>::encode<IPC::Encoder,std::optional<WebKit::FrameInfoData>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 352))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 352))
    {
      return IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WebCore::LockBackForwardList,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WebCore::LockBackForwardList,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
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
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v6;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 2)
  {
LABEL_8:
    IPC::Decoder::markInvalid(a1);
    v2 = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WTF::OptionSet<WebKit::WebEventModifier>,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebKit::WebEventModifier>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
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
  v4 = v2 < 0x20;
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

uint64_t IPC::Decoder::decode<signed char>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<signed char,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<signed char,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    LODWORD(v1) = 0;
    v2 = 0;
  }

  else
  {
    *(a1 + 2) = v1 + 1;
    if (v1)
    {
      LODWORD(v1) = *v1;
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v1 | (v2 << 8);
}

uint64_t IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
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

IPC::Decoder *IPC::ArgumentCoder<std::optional<WTF::UUID>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(result + 2);
  if (*(result + 1) <= &v3[-*result])
  {
    v6 = result;
    IPC::Decoder::markInvalid(result);
    result = v6;
    goto LABEL_12;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
LABEL_12:
    v7 = result;
    IPC::Decoder::markInvalid(result);
    result = v7;
    goto LABEL_13;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_13:
    result = IPC::Decoder::markInvalid(result);
    *a2 = 0;
    a2[32] = 0;
    return result;
  }

  if (v4)
  {
    result = IPC::Decoder::decode<WTF::UUID>(result, &v8);
    if (v9)
    {
      *a2 = v8;
      v5 = 1;
      a2[16] = 1;
    }

    else
    {
      v5 = 0;
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
    a2[16] = 0;
    v5 = 1;
  }

  a2[32] = v5;
  return result;
}

_BYTE *IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(_BYTE *result, IPC::Decoder *this)
{
  v2 = result;
  v3 = *(this + 2);
  if (*(this + 1) <= &v3[-*this])
  {
    v6 = this;
    IPC::Decoder::markInvalid(this);
    this = v6;
    goto LABEL_12;
  }

  *(this + 2) = v3 + 1;
  if (!v3)
  {
LABEL_12:
    v7 = this;
    IPC::Decoder::markInvalid(this);
    this = v7;
    goto LABEL_13;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_13:
    result = IPC::Decoder::markInvalid(this);
    *v2 = 0;
    v2[24] = 0;
    return result;
  }

  if (v4)
  {
    result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v8, this);
    if (v9)
    {
      *v2 = v8;
      v5 = 1;
      v2[16] = 1;
    }

    else
    {
      v5 = 0;
      *v2 = 0;
    }
  }

  else
  {
    *result = 0;
    result[16] = 0;
    v5 = 1;
  }

  v2[24] = v5;
  return result;
}