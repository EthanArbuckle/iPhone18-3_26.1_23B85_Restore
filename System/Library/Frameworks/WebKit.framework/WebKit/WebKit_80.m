uint64_t IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>)
{
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
    v39 = *(a1 + 3);
    if (v39)
    {
      if (v5)
      {
        (*(*v39 + 16))(v39);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_38;
  }

  *(a1 + 2) = v6 + 1;
  if (v6)
  {
    v12 = *v6;
    v53 = 0uLL;
    if (v12 >= 0x1C71)
    {
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::Cookie>(a1, &v40);
        v27 = v52;
        if (v52 == 1)
        {
          if (v53.n128_u32[3] == v53.n128_u32[2])
          {
            WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Cookie>(&v53, &v40);
          }

          else
          {
            v28 = v53.n128_u64[0] + 144 * v53.n128_u32[3];
            v29 = v40;
            v40 = 0;
            *v28 = v29;
            v30 = v41;
            v41 = 0;
            *(v28 + 8) = v30;
            v31 = v42;
            v42 = 0;
            *(v28 + 16) = v31;
            v32 = v43;
            v43 = 0;
            *(v28 + 24) = v32;
            v33 = v44;
            v44 = 0;
            *(v28 + 32) = v33;
            v34 = v45[0];
            *(v28 + 51) = *(v45 + 11);
            *(v28 + 40) = v34;
            v35 = v46;
            v46 = 0;
            *(v28 + 72) = v35;
            WTF::URL::URL(v28 + 80, v47);
            *(v28 + 120) = 0;
            *(v28 + 128) = 0;
            v36 = v48;
            v48 = 0;
            *(v28 + 120) = v36;
            LODWORD(v36) = v49;
            v49 = 0;
            *(v28 + 128) = v36;
            LODWORD(v36) = v50;
            v50 = 0;
            *(v28 + 132) = v36;
            *(v28 + 136) = v51;
            ++v53.n128_u32[3];
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v52 == 1)
        {
          WebCore::Cookie::~Cookie(&v40, v7);
        }

        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v53, v53.n128_u32[3]);
          *a2 = v53.n128_u64[0];
          v37 = v53.n128_u64[1];
          v53 = 0uLL;
          *(a2 + 1) = v37;
          goto LABEL_22;
        }
      }
    }

    else
    {
      if (!v12)
      {
        v25 = 0;
        v26 = 0;
LABEL_21:
        a3.n128_u64[0] = 0;
        v53 = a3;
        *a2 = v25;
        *(a2 + 1) = v26;
LABEL_22:
        a2[16] = 1;
        return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v7);
      }

      v53.n128_u32[2] = 144 * v12 / 0x90u;
      v53.n128_u64[0] = WTF::fastMalloc((144 * v12));
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::Cookie>(a1, &v40);
        v15 = v52;
        if (v52 == 1)
        {
          if (v53.n128_u32[3] == v53.n128_u32[2])
          {
            WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Cookie>(&v53, &v40);
          }

          else
          {
            v16 = v53.n128_u64[0] + 144 * v53.n128_u32[3];
            v17 = v40;
            v40 = 0;
            *v16 = v17;
            v18 = v41;
            v41 = 0;
            *(v16 + 8) = v18;
            v19 = v42;
            v42 = 0;
            *(v16 + 16) = v19;
            v20 = v43;
            v43 = 0;
            *(v16 + 24) = v20;
            v21 = v44;
            v44 = 0;
            *(v16 + 32) = v21;
            v22 = v45[0];
            *(v16 + 51) = *(v45 + 11);
            *(v16 + 40) = v22;
            v23 = v46;
            v46 = 0;
            *(v16 + 72) = v23;
            WTF::URL::URL(v16 + 80, v47);
            *(v16 + 120) = 0;
            *(v16 + 128) = 0;
            v24 = v48;
            v48 = 0;
            *(v16 + 120) = v24;
            LODWORD(v24) = v49;
            v49 = 0;
            *(v16 + 128) = v24;
            LODWORD(v24) = v50;
            v50 = 0;
            *(v16 + 132) = v24;
            *(v16 + 136) = v51;
            ++v53.n128_u32[3];
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v52 == 1)
        {
          WebCore::Cookie::~Cookie(&v40, v7);
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          v26 = v53.n128_u64[1];
          v25 = v53.n128_u64[0];
          goto LABEL_21;
        }
      }
    }

    a2[16] = v14;
    *a2 = v13;
    return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v7);
  }

LABEL_38:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v5)
    {
      result = (*(*result + 16))(result);
    }
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *a1, unint64_t this)
{
  if (a1[2] > this)
  {
    if (a1[3] > this)
    {
      WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, this);
    }

    v4 = *a1;
    if (this)
    {
      if (this >= 0x1C71C72)
      {
        __break(0xC471u);
        return;
      }

      v5 = a1[3];
      v6 = (144 * this);
      v7 = WTF::fastMalloc(v6);
      a1[2] = v6 / 0x90;
      *a1 = v7;
      if (v7 != v4)
      {
        WTF::VectorMover<false,WebCore::Cookie>::move(v4, &v4[18 * v5], v7);
      }
    }

    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        a1[2] = 0;
      }

      WTF::fastFree(v4, this);
    }
  }
}

unsigned int *WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, unint64_t a2)
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
      result = (*result + 144 * a2);
      v5 = 144 * v2 - 144 * a2;
      do
      {
        WebCore::Cookie::~Cookie(result, a2);
        result = (v6 + 144);
        v5 -= 144;
      }

      while (v5);
    }

    v4[3] = v3;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24NetworkProcessConnection35ConnectToRTCDataChannelRemoteSourceENS2_10ConnectionEN6WebKit24NetworkProcessConnectionES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_33RTCDataChannelLocalIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEESH_ONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF7B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24NetworkProcessConnection35ConnectToRTCDataChannelRemoteSourceENS2_10ConnectionEN6WebKit24NetworkProcessConnectionES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_33RTCDataChannelLocalIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEESH_ONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF7B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24NetworkProcessConnection35ConnectToRTCDataChannelRemoteSourceENS2_10ConnectionEN6WebKit24NetworkProcessConnectionES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_33RTCDataChannelLocalIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEESH_ONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3276;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL>>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 12)];
  *a2 = v4;
  v6 = *(a1 + 12);
  if (v6)
  {
    v7 = v4;
    v8 = *a1;
    v9 = 8 * v6;
    do
    {
      WTF::makeNSArrayElement(&v11, v8, v5);
      if (v11)
      {
        [v7 addObject:?];
        v10 = v11;
        v11 = 0;
        if (v10)
        {
        }
      }

      v8 = (v8 + 8);
      v9 -= 8;
    }

    while (v9);
  }
}

void sub_19D9BA634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  *v10 = 0;
  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::platformContactField(PAL *a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return PAL::get_PassKitCore_PKContactFieldEmailAddress(a1);
    }

    if (a1 == 1)
    {
      return PAL::get_PassKitCore_PKContactFieldName(a1);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return PAL::get_PassKitCore_PKContactFieldPhoneticName(a1);
      case 3:
        return PAL::get_PassKitCore_PKContactFieldPhoneNumber(a1);
      case 4:
        return PAL::get_PassKitCore_PKContactFieldPostalAddress(a1);
    }
  }

  return 0;
}

void WebKit::PaymentSetupConfiguration::platformConfiguration(WebKit::PaymentSetupConfiguration *this, uint64_t a2)
{
  v4 = [objc_alloc((*MEMORY[0x1E69E23D8])()) init];
  *this = v4;
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v26, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }
  }

  else
  {
    v26 = &stru_1F1147748;
    v7 = &stru_1F1147748;
  }

  [v4 setMerchantIdentifier:v26];
  v8 = v26;
  v26 = 0;
  if (v8)
  {
  }

  WTF::URL::createCFURL(&v26, (a2 + 40));
  [v4 setOriginatingURL:v26];
  v9 = v26;
  v26 = 0;
  if (v9)
  {
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v26, v10);
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v11);
    }
  }

  else
  {
    v26 = &stru_1F1147748;
    v12 = &stru_1F1147748;
  }

  [v4 setReferrerIdentifier:v26];
  v13 = v26;
  v26 = 0;
  if (v13)
  {
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v26, v14);
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v15);
    }
  }

  else
  {
    v26 = &stru_1F1147748;
    v16 = &stru_1F1147748;
  }

  [v4 setSignature:v26];
  v17 = v26;
  v26 = 0;
  if (v17)
  {
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 36)];
    v19 = *(a2 + 36);
    if (v19)
    {
      v20 = *(a2 + 24);
      v21 = 8 * v19;
      do
      {
        v22 = *v20;
        if (*v20)
        {
          atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v26, v22);
          if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v23);
          }
        }

        else
        {
          v26 = &stru_1F1147748;
          v24 = &stru_1F1147748;
        }

        [v18 addObject:v26];
        v25 = v26;
        v26 = 0;
        if (v25)
        {
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
    }

    [v4 setSignedFields:v18];
    if (v18)
    {
    }
  }
}

void sub_19D9BA930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *v10 = 0;
  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PaymentSetupConfiguration::PaymentSetupConfiguration(uint64_t a1, atomic_uint **a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *a1 = v5;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v6;
  v7 = a2[2];
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(a1 + 16) = v7;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 24, (a2 + 3));
  v8 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a1 + 40) = v8;
  v9 = *(a3 + 24);
  *(a1 + 48) = *(a3 + 8);
  *(a1 + 64) = v9;
  return a1;
}

void sub_19D9BAA9C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = v2[2];
  v2[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = v2[1];
  v2[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
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

void WebKit::platformPaymentTokenContext(atomic_uint **a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v23, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }

    v4 = v23;
  }

  v6 = objc_alloc((*MEMORY[0x1E69E2388])());
  v7 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v23, v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    v23 = &stru_1F1147748;
    v9 = &stru_1F1147748;
  }

  v10 = v23;
  v11 = a1[1];
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v22, v11);
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v12);
    }
  }

  else
  {
    v22 = &stru_1F1147748;
    v13 = &stru_1F1147748;
  }

  v14 = v22;
  v15 = a1[2];
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v21, v15);
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v16);
    }
  }

  else
  {
    v21 = &stru_1F1147748;
    v17 = &stru_1F1147748;
  }

  *a2 = [v6 initWithMerchantIdentifier:v10 externalIdentifier:v14 merchantName:v21 merchantDomain:v4 amount:{WebCore::toDecimalNumber((a1 + 4), v16)}];
  v18 = v21;
  v21 = 0;
  if (v18)
  {
  }

  v19 = v22;
  v22 = 0;
  if (v19)
  {
  }

  v20 = v23;
  v23 = 0;
  if (v20)
  {
  }

  if (v4)
  {
  }
}

void sub_19D9BACE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
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

void WTF::createNSArray<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::RetainPtr<PKPaymentTokenContext> (&)(WebCore::ApplePayPaymentTokenContext const&)>(uint64_t *a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 12)];
  *a1 = v4;
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = v4;
    v7 = *a2;
    v8 = 40 * v5;
    do
    {
      WebKit::platformPaymentTokenContext(v7, &v10);
      v9 = v10;
      if (v10)
      {
        [v6 addObject:v10];
      }

      v7 += 5;
      v8 -= 40;
    }

    while (v8);
  }
}

void sub_19D9BAE68(_Unwind_Exception *a1)
{
  *v1 = 0;
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::platformRecurringPaymentRequest(atomic_uint **this@<X0>, const WebCore::ApplePayRecurringPaymentRequest *a2@<X1>, void *a3@<X8>)
{
  v5 = objc_alloc((*MEMORY[0x1E69E23C0])(this, a2));
  v6 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v29, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v29 = &stru_1F1147748;
    v8 = &stru_1F1147748;
  }

  v9 = v29;
  v10 = WebCore::platformRecurringSummaryItem();
  v11 = objc_alloc(MEMORY[0x1E695DFF8]);
  v12 = this[23];
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v28, v12);
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v13);
    }
  }

  else
  {
    v28 = &stru_1F1147748;
    v14 = &stru_1F1147748;
  }

  v15 = [v11 initWithString:{v28, v28}];
  v16 = [v5 initWithPaymentDescription:v9 regularBilling:v10 managementURL:v15];
  *a3 = v16;
  if (v15)
  {
  }

  v17 = v28;
  v28 = 0;
  if (v17)
  {
  }

  v18 = v29;
  v29 = 0;
  if (v18)
  {
  }

  if (*(this + 168) == 1)
  {
    [v16 setTrialBilling:{WebCore::platformRecurringSummaryItem(), v28}];
  }

  v19 = this[22];
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v29, v19);
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v20);
    }

    [v16 setBillingAgreement:{v29, v28}];
    v21 = v29;
    v29 = 0;
    if (v21)
    {
    }
  }

  if (this[24])
  {
    v22 = objc_alloc(MEMORY[0x1E695DFF8]);
    v23 = this[24];
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v29, v23);
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v24);
      }
    }

    else
    {
      v29 = &stru_1F1147748;
      v25 = &stru_1F1147748;
    }

    v26 = [v22 initWithString:{v29, v28}];
    [v16 setTokenNotificationURL:v26];
    if (v26)
    {
    }

    v27 = v29;
    v29 = 0;
    if (v27)
    {
    }
  }
}

void sub_19D9BB0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *v10 = 0;
  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPaymentCoordinatorProxy::~WebPaymentCoordinatorProxy(WebKit::WebPaymentCoordinatorProxy *this)
{
  if (*(this + 36) - 10 >= 0xFFFFFFF7)
  {
    v11 = 0;
    WebKit::WebPaymentCoordinatorProxy::didReachFinalState(this, &v11);
    v2 = v11;
    v11 = 0;
    if (v2)
    {
    }
  }

  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++v4[4];
      (*(*v4 + 56))(v4, this, 189);
      v5 = v4[4];
      if (!v5)
      {
        goto LABEL_19;
      }

      v4[4] = v5 - 1;
    }
  }

  objc_destroyWeak(this + 12);
  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
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

  v9 = *(this + 6);
  *(this + 6) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v6);
  }

  if (*(this + 10) != 1)
  {
LABEL_19:
    __break(0xC471u);
    JUMPOUT(0x19D9BB3B0);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 4, v6);
  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v10);
}

{
  WebKit::WebPaymentCoordinatorProxy::~WebPaymentCoordinatorProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void sub_19D9BB3D4(_Unwind_Exception *a1)
{
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    *(v3 + 16) = v4 - 1;
    objc_destroyWeak((v1 + 96));
    v7 = *(v1 + 88);
    *(v1 + 88) = 0;
    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = *(v1 + 80);
    *(v1 + 80) = 0;
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

    v9 = *(v1 + 48);
    *(v1 + 48) = 0;
    if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, v6);
    }

    if (*(v1 + 40) == 1)
    {
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v1 + 32), v6);
      *v1 = &unk_1F10EA5E0;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v1 + 8), v10);
      _Unwind_Resume(a1);
    }
  }

  __break(0xC471u);
  JUMPOUT(0x19D9BB4ECLL);
}

void non-virtual thunk toWebKit::WebPaymentCoordinatorProxy::~WebPaymentCoordinatorProxy(WebKit::WebPaymentCoordinatorProxy *this)
{
  WebKit::WebPaymentCoordinatorProxy::~WebPaymentCoordinatorProxy((this - 16));
}

{
  WebKit::WebPaymentCoordinatorProxy::~WebPaymentCoordinatorProxy((this - 24));
}

{
  WebKit::WebPaymentCoordinatorProxy::~WebPaymentCoordinatorProxy((this - 16));

  bmalloc::api::tzoneFree(v1, v2);
}

{
  WebKit::WebPaymentCoordinatorProxy::~WebPaymentCoordinatorProxy((this - 24));

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebPaymentCoordinatorProxy::platformCanMakePaymentsWithActiveCard(uint64_t a1, atomic_uint **a2, atomic_uint **a3, uint64_t *a4)
{
  v7 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v29, v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    v29 = &stru_1F1147748;
    v9 = &stru_1F1147748;
  }

  v10 = v29;
  v11 = *a3;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v28, v11);
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v12);
    }
  }

  else
  {
    v28 = &stru_1F1147748;
    v13 = &stru_1F1147748;
  }

  v14 = *(a1 + 48);
  if (!v14 || (v15 = *(v14 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_25;
  }

  v16 = v28;
  ++v15[4];
  v17 = *(*(*v15 + 40))(v15, a1);
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v27, v17);
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v18);
    }
  }

  else
  {
    v27 = &stru_1F1147748;
    v19 = &stru_1F1147748;
  }

  v20 = v27;
  v21 = *a4;
  *a4 = 0;
  v22 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v22 = MEMORY[0x1E69E9818];
  v22[1] = 50331650;
  v22[2] = WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformCanMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformCanMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL,NSError *)#1}::__invoke;
  v22[3] = &WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformCanMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformCanMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0)::descriptor;
  v22[4] = v21;
  (*MEMORY[0x1E69E2498])(v10, v16, v20, v22);
  _Block_release(v22);
  v23 = v27;
  v27 = 0;
  if (v23)
  {
  }

  v24 = v15[4];
  if (!v24)
  {
    __break(0xC471u);
LABEL_25:
    JUMPOUT(0x19D9BB7FCLL);
  }

  v15[4] = v24 - 1;
  v25 = v28;
  v28 = 0;
  if (v25)
  {
  }

  v26 = v29;
  v29 = 0;
  if (v26)
  {
  }
}

void sub_19D9BB820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPaymentCoordinatorProxy::platformOpenPaymentSetup(uint64_t a1, atomic_uint **a2, atomic_uint **a3, uint64_t *a4)
{
  v7 = [objc_alloc((*MEMORY[0x1E69E2288])()) init];
  v8 = *a2;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v21, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v21 = &stru_1F1147748;
    v10 = &stru_1F1147748;
  }

  v11 = v21;
  v12 = *a3;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v20, v12);
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v13);
    }
  }

  else
  {
    v20 = &stru_1F1147748;
    v14 = &stru_1F1147748;
  }

  v15 = v20;
  v16 = *a4;
  *a4 = 0;
  v17 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v17 = MEMORY[0x1E69E9818];
  v17[1] = 50331650;
  v17[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformOpenPaymentSetup(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformOpenPaymentSetup(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
  v17[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformOpenPaymentSetup(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformOpenPaymentSetup(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0)::descriptor;
  v17[4] = v16;
  [v7 openPaymentSetupForMerchantIdentifier:v11 domain:v15 completion:v17];
  _Block_release(v17);
  v18 = v20;
  v20 = 0;
  if (v18)
  {
  }

  v19 = v21;
  v21 = 0;
  if (v19)
  {
  }

  if (v7)
  {
  }
}

void sub_19D9BBADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::toPKShippingMethods(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 12)];
  v4 = v3;
  v5 = *(a1 + 12);
  if (v5)
  {
    v6 = 0;
    v7 = *a1 + 104 * v5;
    v8 = *a1 + 32;
    v35 = v3;
    do
    {
      v9 = (*MEMORY[0x1E69E22F0])();
      v10 = *(v8 - 32);
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v39, v10);
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v11);
        }
      }

      else
      {
        v39 = &stru_1F1147748;
        v12 = &stru_1F1147748;
      }

      v13 = v8 - 16;
      v14 = [v9 summaryItemWithLabel:v39 amount:{WebCore::toDecimalNumber((v8 - 16), v11)}];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      v17 = v39;
      v39 = 0;
      if (v17)
      {
      }

      v18 = *(v8 - 8);
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v39, v18);
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v19);
        }
      }

      else
      {
        v39 = &stru_1F1147748;
        v20 = &stru_1F1147748;
      }

      [v15 setIdentifier:v39];
      v21 = v39;
      v39 = 0;
      if (v21)
      {
      }

      v22 = *(v8 - 24);
      if (v22)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v39, v22);
        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v23);
        }
      }

      else
      {
        v39 = &stru_1F1147748;
        v24 = &stru_1F1147748;
      }

      v25 = [v15 setDetail:v39];
      v26 = v39;
      v39 = 0;
      if (v26)
      {
      }

      if (*(v8 + 64) == 1)
      {
        v27 = objc_alloc((*MEMORY[0x1E69E2360])(v25));
        WebKit::toNSDateComponents(&v39, v8);
        v28 = v39;
        WebKit::toNSDateComponents(&v38, (v8 + 32));
        v29 = v38;
        v30 = [v27 initWithStartDateComponents:v28 endDateComponents:v38];
        if (v29)
        {
        }

        if (v28)
        {
        }

        v4 = v35;
        [v15 setDateComponentsRange:v30];
        if (v30)
        {
        }
      }

      if (*(v8 + 68) == 1)
      {
        if (v15)
        {
          v31 = v15;
        }

        v32 = v15;
        if (v6)
        {

          v32 = v15;
        }
      }

      else
      {
        v32 = v6;
      }

      v36 = v32;
      if (v15)
      {
        [v4 addObject:v15];
      }

      v8 += 104;
      v33 = v36;
      v6 = v36;
    }

    while (v13 + 88 != v7);
  }

  else
  {
    v33 = 0;
  }

  v37 = v33;
  *a2 = [objc_alloc((*MEMORY[0x1E69E2308])()) initWithMethods:v4 defaultMethod:v33];
  if (v4)
  {
  }

  if (v37)
  {
  }
}

void sub_19D9BBEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
  }

  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::toPKContactFields(PAL *PassKitCore_PKContactFieldPhoneNumber, _BYTE *a2)
{
  v3 = PassKitCore_PKContactFieldPhoneNumber;
  v15 = 0;
  v16 = 0;
  if (*a2 == 1)
  {
    PassKitCore_PKContactFieldPostalAddress = PAL::get_PassKitCore_PKContactFieldPostalAddress(PassKitCore_PKContactFieldPhoneNumber);
    PassKitCore_PKContactFieldPhoneNumber = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v15, 1uLL, &PassKitCore_PKContactFieldPostalAddress);
    v4 = HIDWORD(v16);
    v5 = v15;
    *(v15 + HIDWORD(v16)) = *PassKitCore_PKContactFieldPhoneNumber;
    v6 = v4 + 1;
    HIDWORD(v16) = v4 + 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (a2[1] == 1)
  {
    PassKitCore_PKContactFieldPhoneNumber = PAL::get_PassKitCore_PKContactFieldPhoneNumber(PassKitCore_PKContactFieldPhoneNumber);
    PassKitCore_PKContactFieldPostalAddress = PassKitCore_PKContactFieldPhoneNumber;
    if (v6 == v16)
    {
      PassKitCore_PKContactFieldPhoneNumber = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v15, v6 + 1, &PassKitCore_PKContactFieldPostalAddress);
      v7 = HIDWORD(v16);
      *(v15 + HIDWORD(v16)) = *PassKitCore_PKContactFieldPhoneNumber;
    }

    else
    {
      *(v5 + v6) = PassKitCore_PKContactFieldPhoneNumber;
      v7 = HIDWORD(v16);
    }

    v6 = v7 + 1;
    HIDWORD(v16) = v7 + 1;
  }

  if (a2[2] == 1)
  {
    PassKitCore_PKContactFieldPhoneNumber = PAL::get_PassKitCore_PKContactFieldEmailAddress(PassKitCore_PKContactFieldPhoneNumber);
    PassKitCore_PKContactFieldPostalAddress = PassKitCore_PKContactFieldPhoneNumber;
    if (v6 == v16)
    {
      PassKitCore_PKContactFieldPhoneNumber = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v15, v6 + 1, &PassKitCore_PKContactFieldPostalAddress);
      v6 = HIDWORD(v16);
      *(v15 + HIDWORD(v16)) = *PassKitCore_PKContactFieldPhoneNumber;
    }

    else
    {
      *(v15 + v6) = PassKitCore_PKContactFieldPhoneNumber;
    }

    HIDWORD(v16) = ++v6;
  }

  if (a2[3] == 1)
  {
    PassKitCore_PKContactFieldPhoneNumber = PAL::get_PassKitCore_PKContactFieldName(PassKitCore_PKContactFieldPhoneNumber);
    PassKitCore_PKContactFieldPostalAddress = PassKitCore_PKContactFieldPhoneNumber;
    if (v6 == v16)
    {
      PassKitCore_PKContactFieldPhoneNumber = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v15, v6 + 1, &PassKitCore_PKContactFieldPostalAddress);
      v6 = HIDWORD(v16);
      *(v15 + HIDWORD(v16)) = *PassKitCore_PKContactFieldPhoneNumber;
    }

    else
    {
      *(v15 + v6) = PassKitCore_PKContactFieldPhoneNumber;
    }

    HIDWORD(v16) = ++v6;
  }

  if (a2[4] == 1)
  {
    PassKitCore_PKContactFieldPhoneticName = PAL::get_PassKitCore_PKContactFieldPhoneticName(PassKitCore_PKContactFieldPhoneNumber);
    PassKitCore_PKContactFieldPostalAddress = PassKitCore_PKContactFieldPhoneticName;
    if (v6 == v16)
    {
      v9 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v15, v6 + 1, &PassKitCore_PKContactFieldPostalAddress);
      v6 = HIDWORD(v16);
      *(v15 + HIDWORD(v16)) = *v9;
    }

    else
    {
      *(v15 + v6) = PassKitCore_PKContactFieldPhoneticName;
    }

    ++v6;
  }

  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = v15;
  result = [v10 initWithObjects:v15 count:v6];
  *v3 = result;
  if (v11)
  {
    return WTF::fastFree(v11, v13);
  }

  return result;
}

void sub_19D9BC1E4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPaymentCoordinatorProxy::platformCompletePaymentSession(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ++v2[4];
  }

  WebKit::PaymentAuthorizationPresenter::completePaymentSession(v2, a2);
  if (v2)
  {
    if (v2[4] == 1)
    {
      v3 = *(*v2 + 8);

      v3(v2);
    }

    else
    {
      --v2[4];
    }
  }
}

void sub_19D9BC2A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[4] == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      --v1[4];
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPaymentCoordinatorProxy::platformCompleteMerchantValidation(uint64_t a1, id *a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ++v2[4];
  }

  WebKit::PaymentAuthorizationPresenter::completeMerchantValidation(v2, a2);
  if (v2)
  {
    if (v2[4] == 1)
    {
      v3 = *(*v2 + 8);

      v3(v2);
    }

    else
    {
      --v2[4];
    }
  }
}

void sub_19D9BC380(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[4] == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      --v1[4];
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPaymentCoordinatorProxy::platformCompleteShippingMethodSelection(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ++v2[4];
  }

  WebKit::PaymentAuthorizationPresenter::completeShippingMethodSelection(v2, a2);
  if (v2)
  {
    if (v2[4] == 1)
    {
      v3 = *(*v2 + 8);

      v3(v2);
    }

    else
    {
      --v2[4];
    }
  }
}

void sub_19D9BC458(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[4] == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      --v1[4];
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPaymentCoordinatorProxy::platformCompleteShippingContactSelection(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ++v2[4];
  }

  WebKit::PaymentAuthorizationPresenter::completeShippingContactSelection(v2, a2);
  if (v2)
  {
    if (v2[4] == 1)
    {
      v3 = *(*v2 + 8);

      v3(v2);
    }

    else
    {
      --v2[4];
    }
  }
}

void sub_19D9BC530(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[4] == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      --v1[4];
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPaymentCoordinatorProxy::platformCompletePaymentMethodSelection(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ++v2[4];
  }

  WebKit::PaymentAuthorizationPresenter::completePaymentMethodSelection(v2, a2);
  if (v2)
  {
    if (v2[4] == 1)
    {
      v3 = *(*v2 + 8);

      v3(v2);
    }

    else
    {
      --v2[4];
    }
  }
}

void sub_19D9BC608(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[4] == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      --v1[4];
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPaymentCoordinatorProxy::platformCompleteCouponCodeChange(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ++v2[4];
  }

  WebKit::PaymentAuthorizationPresenter::completeCouponCodeChange(v2, a2);
  if (v2)
  {
    if (v2[4] == 1)
    {
      v3 = *(*v2 + 8);

      v3(v2);
    }

    else
    {
      --v2[4];
    }
  }
}

void sub_19D9BC6E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[4] == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      --v1[4];
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v5 = MEMORY[0x1E69E9818];
  v5[1] = 50331650;
  v5[2] = WTF::BlockPtr<void ()(NSArray<PKPaymentSetupFeature *> *)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(WebKit::PaymentSetupConfiguration const&,WTF::CompletionHandler<void ()(WebKit::PaymentSetupFeatures &&)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(WebKit::PaymentSetupConfiguration const&,WTF::CompletionHandler<void ()(WebKit::PaymentSetupFeatures &&)> &&)::$_0)::{lambda(void *,NSArray<PKPaymentSetupFeature *> *)#1}::__invoke;
  v5[3] = &WTF::BlockPtr<void ()(NSArray<PKPaymentSetupFeature *> *)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(WebKit::PaymentSetupConfiguration const&,WTF::CompletionHandler<void ()(WebKit::PaymentSetupFeatures &&)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(WebKit::PaymentSetupConfiguration const&,WTF::CompletionHandler<void ()(WebKit::PaymentSetupFeatures &&)> &&)::$_0)::descriptor;
  v5[4] = v4;
  v6 = (*MEMORY[0x1E69E23B0])();
  WebKit::PaymentSetupConfiguration::platformConfiguration(&v8, a2);
  v7 = v8;
  [v6 paymentSetupFeaturesForConfiguration:v8 completion:v5];
  if (v7)
  {
  }

  _Block_release(v5);
}

void sub_19D9BC814(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Block_release(v1);
  _Unwind_Resume(a1);
}

void sub_19D9BC83C()
{
  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  JUMPOUT(0x19D9BC834);
}

void WebKit::WebPaymentCoordinatorProxy::beginApplePaySetup(uint64_t a1, uint64_t a2, void *a3, WTF::RefCountedBase *a4)
{
  v4 = *(a1 + 48);
  if (!v4 || (v5 = *(v4 + 8)) == 0 || (++v5[4], v10 = (*(*v5 + 64))(v5, a1), (v11 = v5[4]) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19D9BCAC0);
  }

  v12 = v10;
  v5[4] = v11 - 1;
  if (v10)
  {
    v18 = [objc_alloc((*MEMORY[0x1E69E2380])()) init];
    WebKit::PaymentSetupConfiguration::platformConfiguration(&v20, a2);
    v13 = v20;
    [v18 setConfiguration:v20];
    if (v13)
    {
    }

    v14 = [v18 setPaymentSetupFeatures:{*a3, v18}];
    v15 = [objc_alloc((*MEMORY[0x1E69E23F8])(v14)) initWithPaymentSetupRequest:v19];
    if (v15)
    {
      v16 = *a4;
      *a4 = 0;
      v17 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
      *v17 = MEMORY[0x1E69E9818];
      v17[1] = 50331650;
      v17[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformBeginApplePaySetup(WebKit::PaymentSetupConfiguration const&,WebKit::PaymentSetupFeatures const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformBeginApplePaySetup(WebKit::PaymentSetupConfiguration const&,WebKit::PaymentSetupFeatures const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *)#1}::__invoke;
      v17[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformBeginApplePaySetup(WebKit::PaymentSetupConfiguration const&,WebKit::PaymentSetupFeatures const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformBeginApplePaySetup(WebKit::PaymentSetupConfiguration const&,WebKit::PaymentSetupFeatures const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
      v17[4] = v16;
      [objc_loadWeak((a1 + 96)) dismissViewControllerAnimated:1 completion:0];
      objc_storeWeak((a1 + 96), 0);
      [v12 presentViewController:v15 animated:1 completion:v17];
      objc_storeWeak((a1 + 96), v15);
      _Block_release(v17);
    }

    else
    {
      WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, 0);
    }

    if (v19)
    {
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, 0);
  }
}

void sub_19D9BCAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPaymentCoordinatorProxy::platformCanMakePayments(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 88);
  v4 = (*MEMORY[0x1E69E2410])();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  v7 = *a2;
  *a2 = 0;
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F10EFA58;
  v8[1] = v5;
  v8[2] = v7;
  v10 = v8;
  (*(*v3 + 48))(v3, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D9BCC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPaymentCoordinatorProxy::platformShowPaymentUI(uint64_t a1, uint64_t a2, WTF::URL *a3, uint64_t a4, uint64_t a5, void **a6)
{
  v12 = std::__optional_copy_base<WebCore::ApplePayDisbursementRequest,false>::__optional_copy_base[abi:sn200100](&v180, a5 + 848);
  if (v184 == 1)
  {
    v13 = objc_alloc((*MEMORY[0x1E69E2368])(v12));
    v14 = *(a5 + 16);
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v187, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      v187 = &stru_1F1147748;
      v27 = &stru_1F1147748;
    }

    v28 = v187;
    v29 = *(a5 + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v186, v29);
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v30);
      }
    }

    else
    {
      v186 = &stru_1F1147748;
      v31 = &stru_1F1147748;
    }

    v175 = a3;
    v176 = a1;
    v177 = a2;
    v179 = a6;
    v32 = v186;
    WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a5 + 72, &v185);
    v33 = v185;
    v34 = *(a5 + 88);
    v35 = *(a5 + 89);
    v36 = *(a5 + 90);
    v37 = *(a5 + 91);
    v38 = *(a5 + 92);
    v39 = WebCore::platformDisbursementSummaryItems();
    v40 = v34 | 2;
    if (!v35)
    {
      v40 = v34;
    }

    if (v36)
    {
      v40 |= 4uLL;
    }

    if (v37)
    {
      v40 |= 8uLL;
    }

    if (v38)
    {
      v41 = v40 | 0x80;
    }

    else
    {
      v41 = v40;
    }

    v42 = [v13 initWithMerchantIdentifier:&stru_1F1147748 currencyCode:v28 regionCode:v32 supportedNetworks:v33 merchantCapabilities:v41 summaryItems:v39];
    v43 = v42;
    v44 = v185;
    v185 = 0;
    if (v44)
    {
    }

    v45 = v186;
    v186 = 0;
    a2 = v177;
    a6 = v179;
    a1 = v176;
    if (v45)
    {
    }

    v46 = v187;
    v187 = 0;
    if (v46)
    {
    }

    if (v183 == 1)
    {
      v47 = objc_alloc(MEMORY[0x1E695DF70]);
      v48 = [v47 initWithCapacity:v182];
      v49 = v182;
      if (v182)
      {
        v50 = v180;
        do
        {
          v51 = WebKit::platformContactField(*v50);
          if (v51)
          {
            [v48 addObject:v51];
          }

          v50 = (v50 + 1);
          --v49;
        }

        while (v49);
      }

      v42 = [v43 setRequiredRecipientContactFields:v48];
      if (v48)
      {
      }
    }

    v16 = [objc_alloc((*MEMORY[0x1E69E23E8])(v42)) initWithDisbursementRequest:v43];
    WTF::URL::createCFURL(&v187, v175);
    [v16 setOriginatingURL:v187];
    v52 = v187;
    v187 = 0;
    if (v52)
    {
    }

    [v16 setAPIType:2];
    if (v43)
    {
    }

    if (v16)
    {
      v53 = v16;
    }

    goto LABEL_261;
  }

  v16 = [objc_alloc((*MEMORY[0x1E69E22E8])(v12)) init];
  WTF::URL::createCFURL(&v187, a3);
  [v16 setOriginatingURL:v187];
  v17 = v187;
  v187 = 0;
  if (v17)
  {
  }

  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a4 + 12)];
  v20 = *(a4 + 12);
  if (v20)
  {
    v21 = *a4;
    v22 = 40 * v20;
    do
    {
      WTF::makeNSArrayElement(&v187, v21, v18);
      if (v187)
      {
        [v19 addObject:?];
        v23 = v187;
        v187 = 0;
        if (v23)
        {
        }
      }

      v21 = (v21 + 40);
      v22 -= 40;
    }

    while (v22);
  }

  [v16 setThumbnailURLs:v19];
  if (v19)
  {
  }

  if (*(a5 + 232))
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  [v16 setAPIType:v24];
  v25 = *(a5 + 8);
  if (v25)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v187, v25);
    if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v26);
    }
  }

  else
  {
    v187 = &stru_1F1147748;
    v54 = &stru_1F1147748;
  }

  [v16 setCountryCode:v187];
  v55 = v187;
  v187 = 0;
  if (v55)
  {
  }

  v56 = *(a5 + 16);
  if (v56)
  {
    atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v187, v56);
    if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v57);
    }
  }

  else
  {
    v187 = &stru_1F1147748;
    v58 = &stru_1F1147748;
  }

  [v16 setCurrencyCode:v187];
  v59 = v187;
  v187 = 0;
  if (v59)
  {
  }

  WebCore::PaymentContact::pkContact(&v187, (a5 + 32));
  [v16 setBillingContact:v187];
  v60 = v187;
  v187 = 0;
  if (v60)
  {
  }

  WebCore::PaymentContact::pkContact(&v187, (a5 + 56));
  [v16 setShippingContact:v187];
  v61 = v187;
  v187 = 0;
  if (v61)
  {
  }

  WebKit::toPKContactFields(&v187, (a5 + 24));
  v62 = v187;
  [v16 setRequiredBillingContactFields:v187];
  if (v62)
  {
  }

  WebKit::toPKContactFields(&v187, (a5 + 48));
  v63 = v187;
  [v16 setRequiredShippingContactFields:v187];
  if (v63)
  {
  }

  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a5 + 72, &v187);
  [v16 setSupportedNetworks:v187];
  v64 = v187;
  v187 = 0;
  if (v64)
  {
  }

  v65 = *(a5 + 88);
  if (*(a5 + 89))
  {
    v65 |= 2uLL;
  }

  if (*(a5 + 90))
  {
    v65 |= 4uLL;
  }

  if (*(a5 + 91))
  {
    v65 |= 8uLL;
  }

  if (*(a5 + 92))
  {
    v66 = v65 | 0x80;
  }

  else
  {
    v66 = v65;
  }

  [v16 setMerchantCapabilities:v66];
  if (*(a5 + 93) - 1 < 3)
  {
    v67 = (*(a5 + 93) - 1) + 1;
  }

  else
  {
    v67 = 0;
  }

  [v16 setShippingType:v67];
  WebKit::toPKShippingMethods(a5 + 96, &v187);
  v68 = v187;
  [v16 setAvailableShippingMethods:v187];
  if (v68)
  {
  }

  [v16 setPaymentSummaryItems:WebCore::platformSummaryItems()];
  [v16 setExpectsMerchantSession:1];
  if (*(a5 + 208))
  {
    v69 = objc_alloc(MEMORY[0x1E695DEF0]);
    v70 = *(a5 + 208);
    if (v70)
    {
      atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v187, v70);
      if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v70, v71);
      }
    }

    else
    {
      v187 = &stru_1F1147748;
      v72 = &stru_1F1147748;
    }

    v73 = [v69 initWithBase64EncodedString:v187 options:0];
    v74 = v187;
    v187 = 0;
    if (v74)
    {
    }

    [v16 setApplicationData:v73];
    if (v73)
    {
    }
  }

  if (*(a5 + 228))
  {
    v75 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:*(a5 + 228)];
    v76 = *(a5 + 228);
    if (v76)
    {
      v178 = a2;
      v77 = *(a5 + 216);
      v78 = 8 * v76;
      do
      {
        v79 = *v77;
        if (*v77)
        {
          atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v187, v79);
          if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v79, v80);
          }
        }

        else
        {
          v187 = &stru_1F1147748;
          v81 = &stru_1F1147748;
        }

        [v75 addObject:v187];
        v82 = v187;
        v187 = 0;
        if (v82)
        {
        }

        ++v77;
        v78 -= 8;
      }

      while (v78);
      a2 = v178;
    }
  }

  else
  {
    v75 = 0;
  }

  [v16 setSupportedCountries:v75];
  if (v75)
  {
  }

  v83 = *(a1 + 48);
  if (!v83 || (v84 = *(v83 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9BDCE4);
  }

  ++v84[4];
  v85 = *(*(*v84 + 24))(v84, a1);
  if (v85 && v85[1])
  {
    atomic_fetch_add_explicit(v85, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v187, v85);
    if (atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v85, v86);
    }

    [v16 setBoundInterfaceIdentifier:v187];
    v87 = v187;
    v187 = 0;
    if (v87)
    {
    }
  }

  v88 = (*(*v84 + 32))(v84, a1);
  v89 = v88;
  if (*v88 && *(*v88 + 4) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v90 = *v89;
    if (v90)
    {
      atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v187, v90);
      if (atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v90, v91);
      }
    }

    else
    {
      v187 = &stru_1F1147748;
      v92 = &stru_1F1147748;
    }

    [v16 setSourceApplicationBundleIdentifier:v187];
    v93 = v187;
    v187 = 0;
    if (v93)
    {
    }
  }

  v94 = (*(*v84 + 40))(v84, a1);
  v95 = v94;
  if (*v94 && *(*v94 + 4) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v96 = *v95;
    if (v96)
    {
      atomic_fetch_add_explicit(v96, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v187, v96);
      if (atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v96, v97);
      }
    }

    else
    {
      v187 = &stru_1F1147748;
      v98 = &stru_1F1147748;
    }

    [v16 setSourceApplicationSecondaryIdentifier:v187];
    v99 = v187;
    v187 = 0;
    if (v99)
    {
    }
  }

  v100 = (*(*v84 + 72))(v84, a1);
  v101 = v100;
  if (*v100 && *(*v100 + 4) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v102 = *v101;
    if (v102)
    {
      atomic_fetch_add_explicit(v102, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v187, v102);
      if (atomic_fetch_add_explicit(v102, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v102, v103);
      }
    }

    else
    {
      v187 = &stru_1F1147748;
      v104 = &stru_1F1147748;
    }

    [v16 setCTDataConnectionServiceType:v187];
    v105 = v187;
    v187 = 0;
    if (v105)
    {
    }
  }

  v106 = WebCore::PaymentInstallmentConfiguration::platformConfiguration(&v187, (a5 + 240));
  if (v187)
  {
    [v16 setInstallmentConfiguration:?];
    v106 = [v16 setRequestType:5];
    v108 = v187;
    v187 = 0;
    if (v108)
    {
    }
  }

  v109 = *(a5 + 346);
  if ((v109 & 0x100) != 0)
  {
    v106 = [v16 setSupportsCouponCode:v109 & 1];
  }

  v110 = *(a5 + 352);
  if (v110)
  {
    atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v187, v110);
    if (atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v110, v111);
    }

    v106 = [v16 setCouponCode:v187];
    v112 = v187;
    v187 = 0;
    if (v112)
    {
    }
  }

  if (*(a5 + 345) == 1)
  {
    if (*(a5 + 344) == 2)
    {
      v113 = 2;
    }

    else
    {
      v113 = 1;
    }

    v106 = [v16 setShippingContactEditingMode:v113];
  }

  if (*(a5 + 881) == 1)
  {
    v114 = *(a5 + 880);
    if (v114 == 2)
    {
      v115 = 2;
    }

    else
    {
      v115 = v114 == 1;
    }

    v106 = [v16 setApplePayLaterAvailability:v115];
  }

  if (*(a5 + 560) == 1)
  {
    WebKit::platformRecurringPaymentRequest((a5 + 360), v107, &v187);
    v116 = v187;
    v106 = [v16 setRecurringPaymentRequest:v187];
    if (v116)
    {
    }
  }

  if (*(a5 + 680) == 1)
  {
    WebKit::platformAutomaticReloadPaymentRequest((a5 + 568), v107, &v187);
    v106 = [v16 setAutomaticReloadPaymentRequest:v187];
    v117 = v187;
    v187 = 0;
    if (v117)
    {
    }
  }

  if (*(a5 + 704) == 1)
  {
    WTF::createNSArray<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::RetainPtr<PKPaymentTokenContext> (&)(WebCore::ApplePayPaymentTokenContext const&)>(&v187, a5 + 688);
    v118 = v187;
    v106 = [v16 setMultiTokenContexts:v187];
    if (v118)
    {
    }
  }

  if (*(a5 + 840) == 1)
  {
    WebKit::platformDeferredPaymentRequest((a5 + 712), v107, &v187);
    v106 = [v16 setDeferredPaymentRequest:v187];
    v119 = v187;
    v187 = 0;
    if (v119)
    {
    }
  }

  v120 = *(a5 + 888);
  if (v120)
  {
    v121 = *(v120 + 8);
    v122 = *(v120 + 4);
    if ((*(v120 + 16) & 4) != 0)
    {
      if (v121)
      {
        v125 = 0;
        if (v122)
        {
          while (1)
          {
            v126 = *(v121 + v125);
            if ((v126 - 9) >= 5 && v126 != 32)
            {
              break;
            }

            if (v122 == ++v125)
            {
              v125 = v122;
              goto LABEL_194;
            }
          }

          if (v125 > v122)
          {
            goto LABEL_276;
          }
        }

LABEL_194:
        v127 = v122 - v125;
        if (!v127)
        {
          goto LABEL_253;
        }

        v128 = (v121 + v125);
        v129 = *v128;
        if (v129 == 45 || v129 == 43)
        {
          if (!--v127)
          {
            goto LABEL_253;
          }

          v131 = *++v128;
          v130 = v131;
        }

        else
        {
          v130 = *v128;
        }

        if ((v130 - 48) <= 9)
        {
          v136 = 0;
          v137 = 0;
          do
          {
            v138 = v130 - 48;
            v139 = (10 * v136);
            v140 = v139 != 10 * v136;
            if (v139 == 10 * v136)
            {
              v136 *= 10;
            }

            v141 = v138 + v136;
            v142 = v141 != (v138 + v136);
            v143 = v136 - v138;
            if (v129 == 45)
            {
              v144 = v143 != v143;
            }

            else
            {
              LOWORD(v143) = v141;
              v144 = v142;
            }

            if (!v144)
            {
              v136 = v143;
            }

            if (v144 || v140)
            {
              v137 = 1;
            }

            if (!--v127)
            {
LABEL_248:
              v159 = v137 == 0;
              goto LABEL_249;
            }

            v145 = *++v128;
            LOBYTE(v130) = v145;
            v146 = v145 - 48;
          }

          while ((v145 - 48) <= 9 && v146 < 0xA);
          if (v137)
          {
            goto LABEL_252;
          }

          v147 = 0;
          while (1)
          {
            v148 = v128[v147];
            if ((v148 - 9) >= 5 && v148 != 32)
            {
              break;
            }

            if (v127 == ++v147)
            {
              goto LABEL_251;
            }
          }

LABEL_246:
          v159 = v127 == v147;
          if (v127 < v147)
          {
LABEL_276:
            __break(1u);
            goto LABEL_280;
          }

LABEL_249:
          if (v159)
          {
LABEL_251:
            v160 = v136 & 0xFF00;
            LODWORD(v121) = v136;
            LODWORD(v127) = 0x10000;
LABEL_255:
            v161 = v121 | v127 | v160;
            PassKitCore_PKMerchantCategoryCodeNone = PAL::get_PassKitCore_PKMerchantCategoryCodeNone(v106);
            if (v161 >= 0x10000)
            {
              v163 = v161;
            }

            else
            {
              v163 = PassKitCore_PKMerchantCategoryCodeNone;
            }

            [v16 setMerchantCategoryCode:v163];
            goto LABEL_259;
          }
        }

        goto LABEL_252;
      }
    }

    else if (v121)
    {
      v123 = 0;
      if (!v122)
      {
        goto LABEL_200;
      }

      while (1)
      {
        v124 = *(v121 + 2 * v123);
        if ((v124 - 9) >= 5 && v124 != 32)
        {
          break;
        }

        if (v122 == ++v123)
        {
          v123 = v122;
          goto LABEL_200;
        }
      }

      if (v123 > v122)
      {
        goto LABEL_276;
      }

LABEL_200:
      v127 = v122 - v123;
      if (!v127)
      {
        goto LABEL_253;
      }

      v132 = (v121 + 2 * v123);
      v133 = *v132;
      if (v133 != 45 && v133 != 43)
      {
        v134 = *v132;
        goto LABEL_227;
      }

      if (--v127)
      {
        v135 = v132[1];
        ++v132;
        v134 = v135;
LABEL_227:
        if ((v134 - 48) <= 9)
        {
          v136 = 0;
          v137 = 0;
          do
          {
            v149 = v134 - 48;
            v150 = (10 * v136);
            v151 = v150 != 10 * v136;
            if (v150 == 10 * v136)
            {
              v136 *= 10;
            }

            v152 = v136 + v149;
            v153 = v152 != (v136 + v149);
            v154 = v136 - v149;
            v155 = v154 != v154;
            if (v133 != 45)
            {
              LOWORD(v154) = v152;
              v155 = v153;
            }

            if (!v155)
            {
              v136 = v154;
            }

            if (v155 || v151)
            {
              v137 = 1;
            }

            if (!--v127)
            {
              goto LABEL_248;
            }

            v156 = v132[1];
            ++v132;
            LOWORD(v134) = v156;
            v157 = v156 - 48;
          }

          while ((v156 - 48) <= 9 && v157 < 0xA);
          if (!v137)
          {
            v147 = 0;
            while (1)
            {
              v158 = v132[v147];
              if ((v158 - 9) >= 5 && v158 != 32)
              {
                goto LABEL_246;
              }

              if (v127 == ++v147)
              {
                goto LABEL_251;
              }
            }
          }
        }

LABEL_252:
        LODWORD(v127) = 0;
      }

LABEL_253:
      LODWORD(v121) = 0;
      goto LABEL_254;
    }

    LODWORD(v127) = 0;
LABEL_254:
    v160 = 0;
    goto LABEL_255;
  }

LABEL_259:
  v164 = v84[4];
  if (!v164)
  {
    goto LABEL_280;
  }

  v84[4] = v164 - 1;
LABEL_261:
  v165 = *(a1 + 48);
  if (!v165 || (v166 = *(v165 + 8)) == 0)
  {
LABEL_280:
    __break(0xC471u);
    JUMPOUT(0x19D9BDCC4);
  }

  ++v166[4];
  if (v16)
  {
    v167 = v16;
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v168 = *(a1 + 8);
  atomic_fetch_add(v168, 1u);
  v169 = *a6;
  *a6 = 0;
  v170 = WTF::fastMalloc(0x28);
  v170->isa = &unk_1F10EFAA8;
  v170->info = a2;
  v170->data = v16;
  v170->length = v168;
  v170[1].isa = v169;
  v187 = v170;
  (*(*v166 + 96))(v166, a2, &v187);
  v172 = v187;
  v187 = 0;
  if (v172)
  {
    (*(v172->isa + 1))(v172);
  }

  v173 = v166[4];
  if (!v173)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9BDD04);
  }

  v166[4] = v173 - 1;
  if (v184 == 1 && v183 == 1)
  {
    v174 = v180;
    if (v180)
    {
      v180 = 0;
      v181 = 0;
      WTF::fastFree(v174, v171);
    }
  }

  if (v16)
  {
  }
}

void sub_19D9BDD28(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14, int a15, int a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = *(v25 + 16);
  if (v27)
  {
    *(v25 + 16) = v27 - 1;
    if (v24)
    {
    }

    if (a19 == 1 && a17 == 1)
    {
      if (a14)
      {
        WTF::fastFree(a14, a2);
      }
    }

    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
  JUMPOUT(0x19D9BDF50);
}

unint64_t WebKit::toAuthenticationChallengeDisposition(unint64_t this, NSURLSessionAuthChallengeDisposition a2)
{
  if (this >= 4)
  {
    LOBYTE(this) = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid NSURLSessionAuthChallengeDisposition (%ld)", this}];
  }

  return this;
}

uint64_t WebKit::fromAuthenticationChallengeDisposition(uint64_t result)
{
  if (result >= 4)
  {
    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid AuthenticationChallengeDisposition (%ld)", result}];
  }

  else
  {
    return result;
  }
}

uint64_t WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformCanMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformCanMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformCanMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformCanMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL,NSError *)#1}::__invoke(WTF::RunLoop *a1, char a2)
{
  WTF::RunLoop::mainSingleton(a1);
  v4 = *(a1 + 4);
  *(a1 + 4) = 0;
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F10EF958;
  *(v5 + 8) = v4;
  *(v5 + 16) = a2;
  v7 = v5;
  WTF::RunLoop::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void sub_19D9BE2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformCanMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EF958;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformCanMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EF958;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformOpenPaymentSetup(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformOpenPaymentSetup(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformOpenPaymentSetup(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformOpenPaymentSetup(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(WTF::RunLoop *a1, char a2)
{
  WTF::RunLoop::mainSingleton(a1);
  v4 = *(a1 + 4);
  *(a1 + 4) = 0;
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F10EF9A0;
  *(v5 + 8) = v4;
  *(v5 + 16) = a2;
  v7 = v5;
  WTF::RunLoop::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void sub_19D9BE558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformOpenPaymentSetup(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EF9A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformOpenPaymentSetup(WTF::String const&,WTF::String const&,WTF::Function<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EF9A0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::toNSDateComponents(void *a1, unsigned int *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  *a1 = v4;
  result = [v4 setCalendar:{objc_msgSend(MEMORY[0x1E695DEE8], "calendarWithIdentifier:", *MEMORY[0x1E695D850])}];
  if (*(a2 + 4) == 1)
  {
    result = [v4 setYear:*a2];
  }

  if (*(a2 + 12) == 1)
  {
    result = [v4 setMonth:a2[2]];
  }

  if (*(a2 + 20) == 1)
  {
    result = [v4 setDay:a2[4]];
  }

  if (*(a2 + 28) == 1)
  {
    return [v4 setHour:a2[6]];
  }

  return result;
}

void sub_19D9BE7A0(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  if (v2)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<void ()(NSArray<PKPaymentSetupFeature *> *)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(WebKit::PaymentSetupConfiguration const&,WTF::CompletionHandler<void ()(WebKit::PaymentSetupFeatures &&)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(WebKit::PaymentSetupConfiguration const&,WTF::CompletionHandler<void ()(WebKit::PaymentSetupFeatures &&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSArray<PKPaymentSetupFeature *> *)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(WebKit::PaymentSetupConfiguration const&,WTF::CompletionHandler<void ()(WebKit::PaymentSetupFeatures &&)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(WebKit::PaymentSetupConfiguration const&,WTF::CompletionHandler<void ()(WebKit::PaymentSetupFeatures &&)> &&)::$_0)::{lambda(void *,NSArray<PKPaymentSetupFeature *> *)#1}::__invoke(WTF::RunLoop *a1, void *a2)
{
  WTF::RunLoop::mainSingleton(a1);
  v4 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (a2)
  {
    v5 = a2;
  }

  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F10EF9E8;
  v6[1] = v4;
  v6[2] = a2;
  v8 = v6;
  WTF::RunLoop::dispatch();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void sub_19D9BE8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(WebKit::PaymentSetupConfiguration const&,WTF::CompletionHandler<void ()(WebKit::PaymentSetupFeatures &&)> &&)::$_0::operator()(NSArray<PKPaymentSetupFeature *> *)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EF9E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(WebKit::PaymentSetupConfiguration const&,WTF::CompletionHandler<void ()(WebKit::PaymentSetupFeatures &&)> &&)::$_0::operator()(NSArray<PKPaymentSetupFeature *> *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EF9E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(WebKit::PaymentSetupConfiguration const&,WTF::CompletionHandler<void ()(WebKit::PaymentSetupFeatures &&)> &&)::$_0::operator()(NSArray<PKPaymentSetupFeature *> *)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1, &v3);
  (*(*v1 + 8))(v1);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
  }
}

void sub_19D9BEAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformBeginApplePaySetup(WebKit::PaymentSetupConfiguration const&,WebKit::PaymentSetupFeatures const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformBeginApplePaySetup(WebKit::PaymentSetupConfiguration const&,WebKit::PaymentSetupFeatures const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebPaymentCoordinatorProxy::platformBeginApplePaySetup(WebKit::PaymentSetupConfiguration const&,WebKit::PaymentSetupFeatures const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::WebPaymentCoordinatorProxy::platformBeginApplePaySetup(WebKit::PaymentSetupConfiguration const&,WebKit::PaymentSetupFeatures const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *)#1}::__invoke(WTF::RunLoop *a1)
{
  WTF::RunLoop::mainSingleton(a1);
  v2 = *(a1 + 4);
  *(a1 + 4) = 0;
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F10EFA30;
  v3[1] = v2;
  v5 = v3;
  WTF::RunLoop::dispatch();
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void sub_19D9BEBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformBeginApplePaySetup(WebKit::PaymentSetupConfiguration const&,WebKit::PaymentSetupFeatures const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EFA30;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformBeginApplePaySetup(WebKit::PaymentSetupConfiguration const&,WebKit::PaymentSetupFeatures const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EFA30;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformCanMakePayments(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EFA58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformCanMakePayments(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EFA58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformCanMakePayments(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1)
{
  WTF::RunLoop::mainSingleton(a1);
  v2 = [*(a1 + 8) canMakePayments];
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F10EFA80;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  v6 = v4;
  WTF::RunLoop::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void sub_19D9BEF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformCanMakePayments(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EFA80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformCanMakePayments(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EFA80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformShowPaymentUI(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebCore::ApplePaySessionPaymentRequest const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WTF::String const&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EFAA8;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformShowPaymentUI(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebCore::ApplePaySessionPaymentRequest const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WTF::String const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EFAA8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::WebPaymentCoordinatorProxy::platformShowPaymentUI(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebCore::ApplePaySessionPaymentRequest const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WTF::String const&>::call(void *a1, atomic_uint **a2)
{
  v3 = a1[3];
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    v5 = a1[2];
    v6 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v23, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v23 = &stru_1F1147748;
      v10 = &stru_1F1147748;
    }

    [v5 setUserAgent:v23];
    v11 = v23;
    v23 = 0;
    if (v11)
    {
    }

    v12 = *(v4 + 48);
    if (!v12)
    {
      goto LABEL_31;
    }

    v13 = *(v12 + 8);
    if (!v13)
    {
      goto LABEL_31;
    }

    ++v13[4];
    (*(*v13 + 80))(&v23, v13, v4, a1[2]);
    v14 = v23;
    v23 = 0;
    v15 = *(v4 + 80);
    *(v4 + 80) = v14;
    if (v15)
    {
      if (v15[4] == 1)
      {
        (*(*v15 + 8))(v15);
        v22 = v23;
        v23 = 0;
        if (v22)
        {
          if (LODWORD(v22->data) == 1)
          {
            (*(v22->isa + 1))(v22);
          }

          else
          {
            --LODWORD(v22->data);
          }
        }
      }

      else
      {
        --v15[4];
        v23 = 0;
      }
    }

    v16 = v13[4];
    if (!v16)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9BF4B4);
    }

    v13[4] = v16 - 1;
    v17 = *(v4 + 80);
    if (v17)
    {
      v18 = *(v4 + 48);
      if (!v18 || (v19 = *(v18 + 8)) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19D9BF494);
      }

      ++v19[4];
      v20 = (*(*v19 + 64))(v19, v4);
      result = (*(*v17 + 24))(v17, v20, a1 + 4);
      v21 = v19[4];
      if (v21)
      {
        v19[4] = v21 - 1;
        return result;
      }

LABEL_31:
      __break(0xC471u);
      JUMPOUT(0x19D9BF474);
    }

    return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 4), 0);
  }

  else
  {
    v8 = (a1 + 4);

    return WTF::CompletionHandler<void ()(BOOL)>::operator()(v8, 0);
  }
}

void sub_19D9BF4D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::handleMessageAsync<Messages::NetworkProcess::InitializeNetworkProcess,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WebKit::NetworkProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WebKit::NetworkProcessCreationParameters>>(v14, a2);
  if (v15 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v12 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v12, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10EFAD0;
        v10[1] = v8;
        v10[2] = a1;
        v13 = v10;
        v9 = v15;
        if (v15)
        {
          break;
        }

        __break(1u);
      }

      WebKit::NetworkProcess::initializeNetworkProcess(a3, v14, &v13);
      v11 = v13;
      v13 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  if (v15 == 1)
  {
    WebKit::NetworkProcessCreationParameters::~NetworkProcessCreationParameters(v14, v6);
  }
}

WTF *IPC::handleMessageAsync<Messages::NetworkProcess::CreateNetworkConnectionToWebProcess,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebKit::NetworkProcessConnectionParameters &&,WTF::CompletionHandler<void ()(std::optional<IPC::ConnectionHandle> &&,WebCore::HTTPCookieAcceptPolicy)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t *a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebKit::NetworkProcessConnectionParameters>>(v14, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v12 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v12, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v10)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
    v11 = WTF::fastMalloc(0x18);
    *v11 = &unk_1F10EFAF8;
    *(v11 + 1) = v9;
    *(v11 + 2) = a1;
    v13 = v11;
    WebKit::NetworkProcess::createNetworkConnectionToWebProcess(a3, v14[0], v14[1], &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_9:
      result = v16;
      if (v16)
      {
        v16 = 0;
        v17 = 0;
        return WTF::fastFree(result, v8);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SharedPreferencesForWebProcessDidChange,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess &&,WTF::CompletionHandler<void ()(void)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>(a2, &v13);
  if (v15 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v11 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v11, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10EFB20;
        v10[1] = v8;
        v10[2] = a1;
        v12 = v10;
        v9 = v15;
        if (v15)
        {
          break;
        }

        __break(1u);
      }

      WebKit::NetworkProcess::sharedPreferencesForWebProcessDidChange(a3, v13, &v14, &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::AddAllowedFirstPartyForCookies,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&,WebKit::LoadedWebArchive,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain,WebKit::LoadedWebArchive>>(&v14, a2);
  if (v17 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v12 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v12, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v10)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
    v11 = WTF::fastMalloc(0x18);
    *v11 = &unk_1F10EFB48;
    *(v11 + 1) = v9;
    *(v11 + 2) = a1;
    v13 = v11;
    WebKit::NetworkProcess::addAllowedFirstPartyForCookies(a3, v14, &v15, v16 & 1, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_9:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkProcess::AddWebsiteDataStore,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WebKit::WebsiteDataStoreParameters &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebKit::WebsiteDataStoreParameters>>(v3, a1);
  if (v4 == 1)
  {
    WebKit::NetworkProcess::addWebsiteDataStore(a2, v3);
    if (v4)
    {
      WebKit::WebsiteDataStoreParameters::~WebsiteDataStoreParameters(v3);
    }
  }
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::DestroySession,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v13 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v13, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 == v11)
        {
          goto LABEL_6;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
      v12 = WTF::fastMalloc(0x18);
      *v12 = &unk_1F10EFB70;
      v12[1] = v10;
      v12[2] = a1;
      v14 = v12;
      WebKit::NetworkProcess::destroySession(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::EnsureSessionWithDataStoreIdentifierRemoved,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::UUID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, char *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WTF::UUID>>(a2, v13);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10EFB98;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      if ((v14 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::NetworkProcess::ensureSessionWithDataStoreIdentifierRemoved(a3, v13[0], v13[1], &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::FetchWebsiteData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a2), (v9 & 0x100000000) != 0) && (v10 = v9, v11 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataFetchOption>>(a2), v11 > 0xFFu))
  {
    v15 = v11;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v16)
    {
      v17 = result;
      while (1)
      {
        v18 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v19 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v18)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v20 = WTF::fastMalloc(0x18);
      *v20 = &unk_1F10EFBC0;
      v20[1] = v17;
      v20[2] = a1;
      v22 = v20;
      WebKit::NetworkProcess::fetchWebsiteData(a3, v8, v10, v15, &v22);
      result = v22;
      v22 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v12 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v21 = *(*result + 16);

      return v21();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::DeleteWebsiteData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, v9 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(v4), (v9 & 0x100000000) == 0) || (v10 = v9, *&v11 = COERCE_DOUBLE(IPC::Decoder::decode<WTF::Seconds>(v4)), (v12 & 1) == 0))
  {
LABEL_19:
    LOBYTE(v36) = 0;
    v40 = 0;
    v27 = *v4;
    v28 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
    if (result)
    {
      v30 = v28 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      result = (*(*result + 16))(result, v27);
    }

    goto LABEL_24;
  }

  v13 = *(v4 + 1);
  v14 = ((*(v4 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = v14 - *v4;
  v16 = v13 >= v15;
  v17 = v13 - v15;
  if (!v16 || v17 <= 3)
  {
    goto LABEL_41;
  }

  *(v4 + 2) = v14 + 1;
  if (!v14)
  {
LABEL_43:
    *v4 = 0;
    *(v4 + 1) = 0;
    v35 = *(v4 + 3);
    if (v35 && v13)
    {
      (*(*v35 + 16))(v35);
    }

LABEL_18:
    v24 = *v4;
    v25 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v26 = *(v4 + 3);
    if (v26 && v25)
    {
      (*(*v26 + 16))(v26, v24);
    }

    goto LABEL_19;
  }

  v19 = *&v11;
  v20 = *v14;
  v43 = 0;
  if (v20)
  {
    while (1)
    {
      v21 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
      v41 = v21;
      v42 = v22;
      if ((v22 & 1) == 0)
      {
        break;
      }

      if ((v21 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v43, &v41, &v36);
      if (LOBYTE(v38) != 1)
      {
        break;
      }

      if (!--v20)
      {
        v23 = v43;
        goto LABEL_29;
      }
    }

    if (v43)
    {
      WTF::fastFree((v43 - 16), v22);
    }

    goto LABEL_18;
  }

  v23 = 0;
LABEL_29:
  v36 = v8;
  v37 = v10;
  v38 = v19;
  v39 = v23;
  v40 = 1;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
  if (v27)
  {
    v4 = result;
    while (1)
    {
      v31 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v32 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v32 == v31)
      {
        goto LABEL_35;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_35:
    v33 = WTF::fastMalloc(0x18);
    *v33 = &unk_1F10EFBE8;
    v33[1] = v4;
    v33[2] = a1;
    v41 = v33;
    if ((v40 & 1) == 0)
    {
      __break(1u);
LABEL_41:
      *v4 = 0;
      *(v4 + 1) = 0;
      v34 = *(v4 + 3);
      if (v34)
      {
        if (v13)
        {
          (*(*v34 + 16))(v34);
          v13 = *(v4 + 1);
        }
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_43;
    }

    WebKit::NetworkProcess::deleteWebsiteData(a3, v36, v10, &v39, &v41, v19);
    result = v41;
    v41 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_24:
  if (v40 == 1)
  {
    if (v39)
    {
      return WTF::fastFree((v39 - 16), v27);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::DeleteWebsiteDataForOrigins,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = a2;
  v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_33;
  }

  v3 = v8;
  v10 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(v6);
  if ((v10 & 0x100000000) == 0)
  {
    goto LABEL_33;
  }

  v4 = v10;
  IPC::VectorArgumentCoder<false,WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v6, &v45, v11);
  if (v46)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v28 = *v6;
    v29 = *(v6 + 1);
    *v6 = 0;
    *(v6 + 1) = 0;
    v30 = *(v6 + 3);
    if (!v30 || !v29 || ((*(*v30 + 16))(v30, v28), (v46 & 1) == 0))
    {
LABEL_33:
      LOBYTE(v38) = 0;
      v44 = 0;
      goto LABEL_34;
    }

LABEL_4:
    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v6, &v47);
    if ((v48 & 1) == 0)
    {
      v33 = *v6;
      v34 = *(v6 + 1);
      *v6 = 0;
      *(v6 + 1) = 0;
      v35 = *(v6 + 3);
      if (!v35 || !v34 || ((*(*v35 + 16))(v35, v33), (v48 & 1) == 0))
      {
        LOBYTE(v38) = 0;
        v44 = 0;
        if (v46)
        {
          WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v33);
        }

LABEL_34:
        v21 = *v6;
        v31 = *(v6 + 1);
        *v6 = 0;
        *(v6 + 1) = 0;
        result = *(v6 + 3);
        if (result)
        {
          v32 = v31 == 0;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          goto LABEL_28;
        }

        result = (*(*result + 16))(result, v21);
        if ((v44 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }
    }

    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v6, &v49);
    if (v50 & 1) != 0 || (v12 = *v6, v36 = *(v6 + 1), *v6 = 0, *(v6 + 1) = 0, (v37 = *(v6 + 3)) != 0) && v36 && ((*(*v37 + 16))(v37, v12), (v50))
    {
      IPC::Decoder::decode<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v6, &v51);
      v14 = v53;
      if (v53 == 1)
      {
        if ((v46 & 1) == 0 || (v48 & 1) == 0 || (v50 & 1) == 0)
        {
          goto LABEL_31;
        }

        *&v13 = 0;
        v38 = v3;
        v39 = v4;
        v15 = v45;
        v45 = v13;
        v40 = v15;
        v16 = v47;
        v47 = v13;
        v41 = v16;
        v17 = v49;
        v49 = v13;
        v42 = v17;
        v18 = v51;
        v51 = 0;
        v43[0] = v18;
        v19 = v52;
        v52 = 0;
        v43[1] = v19;
        v44 = 1;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v12);
      }

      else
      {
        LOBYTE(v38) = 0;
        v44 = 0;
      }

      if (v50)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v12);
      }
    }

    else
    {
      v14 = 0;
      LOBYTE(v38) = 0;
      v44 = 0;
    }

    if (v48)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v47, v12);
    }

    if (v46)
    {
      WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v12);
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_19:
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6);
    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

    v6 = result;
    while (1)
    {
      v22 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v23 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v23 == v22)
      {
        goto LABEL_25;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_25:
    v24 = WTF::fastMalloc(0x18);
    *v24 = &unk_1F10EFC10;
    v24[1] = v6;
    v24[2] = a1;
    v51 = v24;
    if (v44)
    {
      break;
    }

LABEL_31:
    __break(1u);
  }

  WebKit::NetworkProcess::deleteWebsiteDataForOrigins(a3, v38, v39, &v40, &v41, &v42, v43, &v51);
  result = v51;
  v51 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_28:
  if (v44 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v43, v21);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v25);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v26);
    return WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v27);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::RenameOriginInWebsiteData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::SecurityOriginData &&,WebCore::SecurityOriginData &,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::SecurityOriginData &&::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_58;
  }

  v9 = v7;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a2, v45);
  if ((v48 & 1) == 0)
  {
    v28 = *a2;
    v29 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v30 = *(a2 + 3);
    if (v30 && v29)
    {
      (*(*v30 + 16))(v30, v28);
    }

    goto LABEL_58;
  }

  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a2, &v49);
  if (v52)
  {
    v10 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a2);
    if ((v10 & 0x100000000) == 0)
    {
      v12 = 0;
      LOBYTE(v36) = 0;
      v13 = v51;
      goto LABEL_13;
    }

    v3 = v10;
    v36 = v9;
    LOBYTE(v37[0]) = 0;
    v39 = -1;
    if (v47)
    {
      if (v47 == 255)
      {
LABEL_9:
        LOBYTE(v40[0]) = 0;
        v42 = -1;
        v13 = v51;
        if (v51)
        {
          if (v51 == 255)
          {
            goto LABEL_12;
          }

          *v40 = v49;
        }

        else
        {
          v15 = v49;
          v49 = 0uLL;
          *v40 = v15;
          v41 = v50;
        }

        v42 = v51;
LABEL_12:
        v43 = v10;
        v12 = 1;
LABEL_13:
        v44 = v12;
        if (!v13)
        {
          v16 = *(&v49 + 1);
          if (*(&v49 + 1) && atomic_fetch_add_explicit(*(&v49 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v11);
          }

          v17 = v49;
          if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v11);
          }
        }

        goto LABEL_20;
      }

      *v37 = *v45;
    }

    else
    {
      v14 = *v45;
      v45[0] = 0;
      v45[1] = 0;
      *v37 = v14;
      v38 = v46;
    }

    v39 = v47;
    goto LABEL_9;
  }

  v11 = *a2;
  v34 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v35 = *(a2 + 3);
  if (v35 && v34)
  {
    (*(*v35 + 16))(v35, v11);
  }

  v12 = 0;
  LOBYTE(v36) = 0;
  v44 = 0;
LABEL_20:
  if (!v47)
  {
    v18 = v45[1];
    if (v45[1] && atomic_fetch_add_explicit(v45[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v11);
    }

    v19 = v45[0];
    if (v45[0])
    {
      if (atomic_fetch_add_explicit(v45[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v11);
        if (v12)
        {
          goto LABEL_27;
        }

LABEL_58:
        v31 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          v32 = v31 == 0;
        }

        else
        {
          v32 = 1;
        }

        if (!v32)
        {
          v33 = *(*result + 16);

          return v33();
        }

        return result;
      }
    }
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_27:
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v21 & 1) == 0)
  {
    goto LABEL_36;
  }

  v22 = result;
  while (1)
  {
    v23 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v24 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v24 == v23)
    {
      goto LABEL_33;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_33:
  v25 = WTF::fastMalloc(0x18);
  *v25 = &unk_1F10EFC38;
  v25[1] = v22;
  v25[2] = a1;
  *&v49 = v25;
  WebKit::NetworkProcess::renameOriginInWebsiteData(a3, v36, v37, v40, v3, &v49);
  result = v49;
  *&v49 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v44)
  {
LABEL_36:
    if (!v42)
    {
      v26 = v40[1];
      v40[1] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v21);
      }

      result = v40[0];
      v40[0] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v21);
      }
    }

    v42 = -1;
    if (!v39)
    {
      v27 = v37[1];
      v37[1] = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v21);
      }

      result = v37[0];
      v37[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v21);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::WebsiteDataOriginDirectoryForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::ClientOrigin &&,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin &&::CompletionHandler<void ()(WebCore::ClientOrigin &&::String const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_59;
  }

  v8 = v6;
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a2, v40);
  if ((v46 & 1) == 0)
  {
    v10 = *a2;
    v11 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v9 = *(a2 + 3);
    if (v9)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

  while (1)
  {
    v9 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a2);
    v12 = v9;
    if ((v9 & 0x100000000) == 0)
    {
      break;
    }

    if (v46)
    {
      v31 = v8;
      LOBYTE(v32[0]) = 0;
      v34 = -1;
      if (!v42)
      {
        v14 = *v40;
        v40[0] = 0;
        v40[1] = 0;
        *v32 = v14;
        v33 = v41;
        goto LABEL_10;
      }

      if (v42 != 255)
      {
        *v32 = *v40;
LABEL_10:
        v34 = v42;
      }

      LOBYTE(v35[0]) = 0;
      v37 = -1;
      if (!v45)
      {
        v15 = *v43;
        v43[0] = 0;
        v43[1] = 0;
        *v35 = v15;
        v36 = v44;
        goto LABEL_13;
      }

      if (v45 != 255)
      {
        *v35 = *v43;
LABEL_13:
        v37 = v45;
      }

      v38 = v9;
      v39 = 1;
      v13 = v9;
      if (v45)
      {
        goto LABEL_21;
      }

LABEL_15:
      v16 = v43[1];
      v43[1] = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v10);
      }

      v17 = v43[0];
      v43[0] = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v10);
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_65:
    if (v11)
    {
      (*(*v9 + 16))(v9, v10);
      if (v46)
      {
        continue;
      }
    }

    goto LABEL_59;
  }

  LOBYTE(v31) = 0;
  v39 = 0;
  if ((v46 & 1) == 0)
  {
    goto LABEL_59;
  }

  v13 = 0;
  if (!v45)
  {
    goto LABEL_15;
  }

LABEL_21:
  v45 = -1;
  if (!v42)
  {
    v18 = v40[1];
    v40[1] = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v10);
    }

    v19 = v40[0];
    v40[0] = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v10);
        if ((v12 & 0x100000000) != 0)
        {
          goto LABEL_28;
        }

LABEL_59:
        v28 = *a2;
        v29 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          v30 = v29 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          return (*(*result + 16))(result, v28);
        }

        return result;
      }
    }
  }

  if ((v12 & 0x100000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_28:
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v21 & 1) == 0)
  {
    goto LABEL_37;
  }

  v22 = result;
  while (1)
  {
    v23 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v24 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v24 == v23)
    {
      goto LABEL_34;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_34:
  v25 = WTF::fastMalloc(0x18);
  *v25 = &unk_1F10EFC60;
  *(v25 + 1) = v22;
  *(v25 + 2) = a1;
  v40[0] = v25;
  WebKit::NetworkProcess::websiteDataOriginDirectoryForTesting(a3, v31, v32, v13, v40);
  result = v40[0];
  v40[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v39)
  {
LABEL_37:
    if (!v37)
    {
      v26 = v35[1];
      v35[1] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v21);
      }

      result = v35[0];
      v35[0] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v21);
      }
    }

    v37 = -1;
    if (!v34)
    {
      v27 = v32[1];
      v32[1] = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v21);
      }

      result = v32[0];
      v32[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v21);
        }
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkProcess::DownloadRequest,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest const&,std::optional<WebCore::SecurityOriginData> const&,std::optional<WebKit::NavigatingToAppBoundDomain>,WTF::String const&)>(IPC::Decoder *a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0 || (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8 & 1) == 0))
  {
    LOBYTE(v36) = 0;
    v45 = 0;
LABEL_46:
    v23 = *a1;
    v24 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (v25)
    {
      v26 = v24 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return;
    }

    (*(*v25 + 16))(v25, v23);
    if ((v45 & 1) == 0)
    {
      return;
    }

    goto LABEL_26;
  }

  v9 = v7;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, v32);
  if ((v33 & 1) == 0)
  {
    v27 = *a1;
    v28 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (!v29 || !v28 || ((*(*v29 + 16))(v29, v27), (v33 & 1) == 0))
    {
      LOBYTE(v36) = 0;
      v45 = 0;
      goto LABEL_25;
    }
  }

  IPC::Decoder::decode<std::optional<WebCore::SecurityOriginData>>(a1, &v46);
  if (v50 == 1)
  {
    v10 = IPC::Decoder::decode<std::optional<WebKit::NavigatingToAppBoundDomain>>(a1);
    if ((v10 & 0x10000) == 0)
    {
      LOBYTE(v36) = 0;
      v45 = 0;
LABEL_14:
      if ((v50 & 1) != 0 && v49 == 1 && !v48)
      {
        v16 = *(&v46 + 1);
        *(&v46 + 1) = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v11);
        }

        v17 = v46;
        *&v46 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v11);
        }
      }

      goto LABEL_23;
    }

    v12 = v10;
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v34);
    if ((v35 & 1) == 0)
    {
      v11 = *a1;
      v30 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v31 = *(a1 + 3);
      if (!v31 || !v30 || ((*(*v31 + 16))(v31, v11), (v35 & 1) == 0))
      {
        v15 = 0;
        LOBYTE(v36) = 0;
        goto LABEL_13;
      }
    }

    v14 = v33;
    if (v33 & 1) != 0 && (v14 = v50, (v50))
    {
      v36 = v6;
      v37 = v9;
      v6 = &v36;
      std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(v38, v32);
      LOBYTE(v39) = 0;
      v42 = 0;
      if (v49 != 1)
      {
LABEL_12:
        v43 = v12;
        v44 = v34;
        v15 = 1;
LABEL_13:
        v45 = v15;
        goto LABEL_14;
      }

      v13 = &v46;
      v41 = -1;
      v14 = v48;
      if (!v48)
      {
        v22 = v46;
        v46 = 0uLL;
        v39 = v22;
        v40 = v47;
        goto LABEL_43;
      }
    }

    else
    {
      __break(1u);
    }

    if (v14 == 255)
    {
      goto LABEL_44;
    }

    *(v6 + 27) = *v13;
LABEL_43:
    v41 = v14;
LABEL_44:
    v42 = 1;
    goto LABEL_12;
  }

  LOBYTE(v36) = 0;
  v45 = 0;
LABEL_23:
  if (v33)
  {
    WebCore::ResourceRequest::~ResourceRequest(v32);
  }

LABEL_25:
  if ((v45 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_26:
  WebKit::NetworkProcess::downloadRequest(a2, v36, v37, v38, &v39, v43, &v44);
  if (v45)
  {
    v19 = v44;
    v44 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }

    if (v42 == 1)
    {
      if (!v41)
      {
        v20 = *(&v39 + 1);
        *(&v39 + 1) = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v18);
        }

        v21 = v39;
        *&v39 = 0;
        if (v21)
        {
          if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v18);
          }
        }
      }

      v41 = -1;
    }

    WebCore::ResourceRequest::~ResourceRequest(v38);
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::ResumeDownload,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,WTF::String const&,WebKit::SandboxExtensionHandle &&,WebKit::CallDownloadDidStart,std::span<unsigned char const,18446744073709551615ul>)>(IPC::Decoder *a1, uint64_t a2)
{
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v6 & 1) == 0 || (v7 = v5, v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1), (v9 & 1) == 0) || (v10 = v8, IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v45), (v46 & 1) == 0) && ((v25 = *a1, v26 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v27 = *(a1 + 3)) == 0) || !v26 || ((*(*v27 + 16))(v27, v25), (v46 & 1) == 0)))
  {
LABEL_39:
    v28 = *a1;
    v29 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v30 = v29 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      return (*(*result + 16))(result, v28);
    }

    return result;
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v47);
  if ((v48 & 1) == 0)
  {
    goto LABEL_31;
  }

  while (1)
  {
    IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(a1, &v49);
    if ((v50 & 1) == 0)
    {
      v13 = *a1;
      v20 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v21 = *(a1 + 3);
      if (!v21 || !v20 || ((*(*v21 + 16))(v21, v13), (v50 & 1) == 0))
      {
        v16 = 0;
        LOBYTE(v38) = 0;
        v44 = 0;
        goto LABEL_17;
      }
    }

    v11 = *(a1 + 1);
    v12 = *(a1 + 2);
    v13 = *a1;
    if (v11 <= &v12[-*a1])
    {
      break;
    }

    *(a1 + 2) = v12 + 1;
    if (!v12)
    {
      goto LABEL_48;
    }

    v2 = *v12;
    if (v2 >= 2)
    {
      goto LABEL_51;
    }

    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v51);
    if ((v52 & 1) == 0)
    {
      v13 = *a1;
      v31 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v32 = *(a1 + 3);
      if (!v32 || !v31 || ((*(*v32 + 16))(v32, v13), (v52 & 1) == 0))
      {
        v16 = 0;
        LOBYTE(v38) = 0;
        goto LABEL_14;
      }
    }

    if (v46 & 1) != 0 && (v48 & 1) != 0 && (v50)
    {
      v38 = v7;
      v39 = v45;
      v14 = v47;
      v47 = 0;
      v15 = v49;
      v49 = 0;
      v40 = v14;
      v41 = v15;
      v42 = v2;
      v16 = 1;
      v43 = v51;
LABEL_14:
      v44 = v16;
      goto LABEL_15;
    }

    __break(1u);
LABEL_31:
    v22 = *a1;
    v23 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (v24)
    {
      if (v23)
      {
        (*(*v24 + 16))(v24, v22);
        if (v48)
        {
          continue;
        }
      }
    }

    goto LABEL_39;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v33 = *(a1 + 3);
  if (v33)
  {
    if (v11)
    {
      (*(*v33 + 16))(v33);
      v11 = *(a1 + 1);
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_48:
  *a1 = 0;
  *(a1 + 1) = 0;
  v34 = *(a1 + 3);
  if (!v34)
  {
    v11 = 0;
LABEL_50:
    v13 = 0;
    goto LABEL_51;
  }

  if (!v11)
  {
    goto LABEL_50;
  }

  (*(*v34 + 16))(v34);
  v13 = *a1;
  v11 = *(a1 + 1);
LABEL_51:
  *a1 = 0;
  *(a1 + 1) = 0;
  v35 = *(a1 + 3);
  if (v35)
  {
    if (v11)
    {
      (*(*v35 + 16))(v35, v13);
      v36 = *(a1 + 3);
      v13 = *a1;
      v37 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v36)
      {
        if (v37)
        {
          (*(*v36 + 16))(v36, v13);
        }
      }
    }
  }

  v16 = 0;
  LOBYTE(v38) = 0;
  v44 = 0;
LABEL_15:
  if (v50)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v49);
  }

LABEL_17:
  if ((v48 & 1) != 0 && (v17 = v47, v47 = 0, v17) && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v13);
    if ((v16 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if ((v16 & 1) == 0)
  {
    goto LABEL_39;
  }

  result = WebKit::NetworkProcess::resumeDownload(a2, v38, v10, v39, *(&v39 + 1), &v40, &v41, v2 & 1, v43, *(&v43 + 1));
  if (v44)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v41);
    result = v40;
    v40 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::CancelDownload,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7)
  {
    v8 = v6;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v10)
    {
      v11 = result;
      while (1)
      {
        v12 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v13 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 == v12)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v14 = WTF::fastMalloc(0x18);
      *v14 = &unk_1F10EFC88;
      v14[1] = v11;
      v14[2] = a1;
      v18 = v14;
      WebKit::NetworkProcess::cancelDownload(a3, v8, &v18);
      result = v18;
      v18 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v15 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = *(*result + 16);

      return v17();
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::PublishDownloadProgress,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,std::span<unsigned char const,18446744073709551615ul>,WebKit::UseDownloadPlaceholder,std::span<unsigned char const,18446744073709551615ul>)>(uint64_t *a1, uint64_t a2)
{
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v6)
  {
    v7 = v5;
    IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v33);
    if ((v36 & 1) == 0)
    {
      goto LABEL_23;
    }

    while (1)
    {
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v37);
      if ((v38 & 1) == 0 && ((v9 = *a1, v21 = a1[1], *a1 = 0, a1[1] = 0, (v22 = a1[3]) == 0) || !v21 || ((*(*v22 + 16))(v22, v9), (v38 & 1) == 0)) || (v8 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a1), (v8 & 0x100) == 0))
      {
        v10 = 0;
        LOBYTE(v25) = 0;
        v32 = 0;
        goto LABEL_11;
      }

      v2 = v8;
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v39);
      if ((v40 & 1) == 0)
      {
        v9 = *a1;
        v23 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v24 = a1[3];
        if (!v24)
        {
          break;
        }

        if (!v23)
        {
          break;
        }

        (*(*v24 + 16))(v24, v9);
        if ((v40 & 1) == 0)
        {
          break;
        }
      }

      if (v36 & 1) != 0 && (v38)
      {
        v11 = v33;
        v33 = 0;
        v25 = v7;
        v26 = v11;
        v27 = v34;
        v28 = v35;
        LODWORD(v34) = v34 & 0xFFFFFFFE;
        v29 = v37;
        v30 = v2;
        v31 = v39;
        v10 = 1;
        goto LABEL_10;
      }

      __break(1u);
LABEL_23:
      v15 = *a1;
      v16 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v17 = a1[3];
      if (v17)
      {
        if (v16)
        {
          (*(*v17 + 16))(v17, v15);
          if (v36)
          {
            continue;
          }
        }
      }

      goto LABEL_24;
    }

    v10 = 0;
    LOBYTE(v25) = 0;
LABEL_10:
    v32 = v10;
LABEL_11:
    if ((v36 & 1) != 0 && (v12 = v33, v33 = 0, v12) && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else if (v10)
    {
LABEL_15:
      result = WebKit::NetworkProcess::publishDownloadProgress(a2, v25, &v26, v29, *(&v29 + 1), v2 & 1, v31, *(&v31 + 1));
      if (v32)
      {
        result = v26;
        v26 = 0;
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
  }

LABEL_24:
  v18 = *a1;
  v19 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    return (*(*result + 16))(result, v18);
  }

  return result;
}

void IPC::handleMessageAsync<Messages::NetworkProcess::DataTaskWithRequest,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,IPC::FormDataReference &&,WTF::CompletionHandler<void ()(std::__1<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v5 = a2;
  v53 = *MEMORY[0x1E69E9840];
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0 || (v3 = v7, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5), (v10 & 1) == 0))
  {
    LOBYTE(v39) = 0;
    v47 = 0;
    goto LABEL_51;
  }

  v11 = v9;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(v5, v35);
  if (v36 & 1) != 0 || (v30 = *v5, v31 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v32 = *(v5 + 3)) != 0) && v31 && ((*(*v32 + 16))(v32, v30), (v36))
  {
    IPC::Decoder::decode<std::optional<WebCore::SecurityOriginData>>(v5, &v48);
    if (v52 != 1)
    {
      LOBYTE(v39) = 0;
      v47 = 0;
      goto LABEL_20;
    }

    IPC::ArgumentCoder<IPC::FormDataReference,void>::decode(v5, &v37);
    if ((v38 & 1) == 0)
    {
      v12 = *v5;
      v33 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v34 = *(v5 + 3);
      if (v34 && v33)
      {
        (*(*v34 + 16))(v34, v12);
      }

      v14 = 0;
      LOBYTE(v39) = 0;
      goto LABEL_10;
    }

    v13 = v36;
    if ((v36 & 1) == 0)
    {
      goto LABEL_57;
    }

    v13 = v52;
    if ((v52 & 1) == 0)
    {
      goto LABEL_57;
    }

    v39 = v3;
    v40 = v11;
    v3 = &v39;
    std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(v41, v35);
    LOBYTE(v42) = 0;
    v45 = 0;
    if (v51 != 1)
    {
      goto LABEL_9;
    }

    v44 = -1;
    v13 = v50;
    if (v50)
    {
      goto LABEL_58;
    }

    v26 = v48;
    v48 = 0uLL;
    v42 = v26;
    v43 = v49;
    goto LABEL_48;
  }

  LOBYTE(v39) = 0;
  v47 = 0;
  while (1)
  {
    if ((v47 & 1) == 0)
    {
LABEL_51:
      v18 = *v5;
      v27 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v28 = *(v5 + 3);
      if (v28)
      {
        v29 = v27 == 0;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        goto LABEL_32;
      }

      (*(*v28 + 16))(v28, v18);
      if ((v47 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
    if ((v18 & 1) == 0)
    {
      goto LABEL_32;
    }

    v5 = v17;
    while (1)
    {
      v19 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v20 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_29;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_29:
    v21 = WTF::fastMalloc(0x18);
    *v21 = &unk_1F10EFCB0;
    v21[1] = v5;
    v21[2] = a1;
    v35[0] = v21;
    v13 = v47;
    if (v47)
    {
      break;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    if (v13 != 255)
    {
      *(v3 + 27) = v48;
LABEL_48:
      v44 = v13;
    }

    v45 = 1;
LABEL_9:
    v46 = v37;
    v14 = 1;
LABEL_10:
    v47 = v14;
    if ((v52 & 1) != 0 && v51 == 1 && !v50)
    {
      v15 = *(&v48 + 1);
      *(&v48 + 1) = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v12);
      }

      v16 = v48;
      *&v48 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v12);
      }
    }

LABEL_20:
    if (v36)
    {
      WebCore::ResourceRequest::~ResourceRequest(v35);
    }
  }

  WebKit::NetworkProcess::dataTaskWithRequest(a3, v39, v40, v41, &v42, &v46, v35);
  v22 = v35[0];
  v35[0] = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

LABEL_32:
  if (v47 == 1)
  {
    v23 = v46;
    v46 = 0;
    if (v23)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v23);
    }

    if (v45 == 1)
    {
      if (!v44)
      {
        v24 = *(&v42 + 1);
        *(&v42 + 1) = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v18);
        }

        v25 = v42;
        *&v42 = 0;
        if (v25)
        {
          if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v18);
          }
        }
      }

      v44 = -1;
    }

    WebCore::ResourceRequest::~ResourceRequest(v41);
  }
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::CancelDataTask,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10))
  {
    v11 = v9;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v13)
    {
      v14 = result;
      while (1)
      {
        v15 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v16 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v20 = WTF::fastMalloc(0x18);
      *v20 = &unk_1F10EFCD8;
      v20[1] = v14;
      v20[2] = a1;
      v21 = v20;
      WebKit::NetworkProcess::cancelDataTask(a3, v8, v11, &v21);
      result = v21;
      v21 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v17 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = *(*result + 16);

      return v19();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::FlushCookies,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10EFD00;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::flushCookies(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkProcess::AllowTLSCertificateChainForLocalPCMTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::CertificateInfo const&)>(IPC::Decoder *a1, WebKit::NetworkProcess *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<WebCore::CertificateInfo,void>::decode(a1, &v18);
    if (v19)
    {
      cf = v18;
      v17 = 1;
      v7.m_identifier = v6;
      WebKit::NetworkProcess::allowTLSCertificateChainForLocalPCMTesting(a2, v7, &cf);
      if (v17)
      {
        v8 = cf;
        cf = 0;
        if (v8)
        {
          CFRelease(v8);
        }
      }

      return;
    }

    v9 = *a1;
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, v9);
    }
  }

  v12 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v13 = *(a1 + 3);
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = *(*v13 + 16);

    v15();
  }
}

void *IPC::handleMessageAsync<Messages::NetworkProcess::PrepareToSuspend,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<BOOL,WTF::MonotonicTime>>(a2, v12);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10EFD28;
      result[1] = v8;
      result[2] = a1;
      v11 = result;
      if (v14)
      {
        WebKit::NetworkProcess::prepareToSuspend(a3, v12[0], &v11, v13);
        result = v11;
        v11 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkProcess::PreconnectTo,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)>(IPC::Decoder *a1)
{
  IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long>>(v1, a1);
  if (v3 == 1)
  {
    IPC::callMemberFunction<WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long),WebCore::StoredCredentialsPolicy::tuple<PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest,WebCore::ResourceRequest &&,WebKit::NavigatingToAppBoundDomain,unsigned long long>>();
    if (v3)
    {
      WebCore::ResourceRequest::~ResourceRequest(&v2);
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::ClearPrevalentResource,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10EFD50;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::clearPrevalentResource(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::ClearUserInteraction,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10EFD78;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::clearUserInteraction(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::DumpResourceLoadStatistics,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::String)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10EFDA0;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::dumpResourceLoadStatistics(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::NetworkProcess::UpdateStorageAccessPromptQuirks,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v3, a1);
  if (v4 == 1)
  {
    result = WebKit::NetworkProcess::updateStorageAccessPromptQuirks();
    if (v4)
    {
      return WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v2);
    }
  }

  return result;
}

void *IPC::handleMessageAsync<Messages::NetworkProcess::UpdatePrevalentDomainsToBlockCookiesFor,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, IPC::Decoder::decode<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v21), v23 == 1))
  {
    v18 = v8;
    v19[0] = v21;
    v10 = v22;
    v21 = 0;
    v22 = 0;
    v19[1] = v10;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v9);
    v20 = 1;
  }

  else
  {
    LOBYTE(v18) = 0;
    v20 = 0;
    v12 = *a2;
    v16 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_19;
    }

    result = (*(*result + 16))(result, v12);
    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v12)
  {
    v13 = result;
    while (1)
    {
      v14 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v15 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v15 == v14)
      {
        goto LABEL_16;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
    result = WTF::fastMalloc(0x18);
    *result = &unk_1F10EFDC8;
    result[1] = v13;
    result[2] = a1;
    v21 = result;
    if ((v20 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    WebKit::NetworkProcess::updatePrevalentDomainsToBlockCookiesFor(a3, v18, v19, &v21);
    result = v21;
    v21 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_19:
  if (v20 == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19, v12);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::IsGrandfathered,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10EFDF0;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::isGrandfathered(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::IsPrevalentResource,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10EFE18;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::isPrevalentResource(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::IsVeryPrevalentResource,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10EFE40;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::isVeryPrevalentResource(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetLastSeen,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::Seconds,WebCore::RegistrableDomain &&::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
LABEL_12:
    v18 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v21 = *(*result + 16);

      return v21();
    }

    return result;
  }

  v8 = v6;
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v28);
  if ((v29 & 1) == 0)
  {
    v23 = *a2;
    v24 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (v25 && v24)
    {
      (*(*v25 + 16))(v25, v23);
    }

    goto LABEL_12;
  }

  v9 = IPC::Decoder::decode<WTF::Seconds>(a2);
  if ((v10 & 1) == 0)
  {
    v17 = v28;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v10);
    }

    goto LABEL_12;
  }

  v11 = *&v9;
  v26[0] = v28;
  v26[1] = v9;
  v27 = 1;
  v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_23;
  }

  v14 = v12;
  while (1)
  {
    v15 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v16 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v16 == v15)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_20:
  v22 = WTF::fastMalloc(0x18);
  *v22 = &unk_1F10EFE68;
  *(v22 + 1) = v14;
  *(v22 + 2) = a1;
  v28 = v22;
  WebKit::NetworkProcess::setLastSeen(a3, v8, v26, &v28, v11);
  result = v28;
  v28 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v27)
  {
LABEL_23:
    result = v26[0];
    v26[0] = 0;
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::MergeStatisticForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,WTF::Seconds,BOOL,WTF,BOOL,BOOL,BOOL,unsigned long long,WebCore::RegistrableDomain &&::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_25;
  }

  v15 = v13;
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v78);
  if ((v79 & 1) == 0)
  {
    v33 = *a2;
    v34 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v35 = *(a2 + 3);
    if (v35 && v34)
    {
      (*(*v35 + 16))(v35, v33);
    }

    goto LABEL_25;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v80);
  if (v81)
  {
    IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v82);
    if ((v83 & 1) == 0)
    {
      v17 = *a2;
      v42 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v43 = *(a2 + 3);
      if (v43 && v42)
      {
        (*(*v43 + 16))(v43, v17);
      }

      v32 = 0;
      LOBYTE(v67) = 0;
      v77 = 0;
      goto LABEL_62;
    }

    v16 = IPC::Decoder::decode<WTF::Seconds>(a2);
    if ((v17 & 1) == 0)
    {
      goto LABEL_58;
    }

    v18 = *(a2 + 1);
    v19 = *(a2 + 2);
    v17 = *a2;
    if (v18 <= &v19[-*a2])
    {
      goto LABEL_47;
    }

    *(a2 + 2) = v19 + 1;
    if (!v19)
    {
      goto LABEL_49;
    }

    v3 = *v19;
    if (v3 >= 2)
    {
      goto LABEL_57;
    }

    v20 = v16;
    v21 = IPC::Decoder::decode<WTF::Seconds>(a2);
    if ((v17 & 1) == 0)
    {
      goto LABEL_58;
    }

    v18 = *(a2 + 1);
    v22 = *(a2 + 2);
    v17 = *a2;
    if (v18 <= &v22[-*a2])
    {
LABEL_47:
      *a2 = 0;
      *(a2 + 1) = 0;
      v48 = *(a2 + 3);
      if (v48)
      {
        if (v18)
        {
          (*(*v48 + 16))(v48);
          v18 = *(a2 + 1);
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v23 = v22 + 1;
      *(a2 + 2) = v22 + 1;
      if (v22)
      {
        v4 = *v22;
        if (v4 >= 2)
        {
          goto LABEL_57;
        }

        if (v18 > v23 - v17)
        {
          v24 = (v22 + 2);
          *(a2 + 2) = v22 + 2;
          if (v22 == -1)
          {
LABEL_89:
            v50 = v18;
            v51 = v17;
            goto LABEL_54;
          }

          v5 = *v23;
          if (v5 >= 2)
          {
            goto LABEL_57;
          }

          if (v18 > v24 - v17)
          {
            *(a2 + 2) = v22 + 3;
            if (v22 != -2)
            {
              v6 = *v24;
              if (v6 < 2)
              {
                v25 = v24 & 0xFFFFFFFFFFFFFFF8;
                v26 = v25 + 8 - v17;
                v27 = v18 >= v26;
                v28 = v18 - v26;
                if (v27 && v28 > 7)
                {
                  *(a2 + 2) = v25 + 16;
                  if (v25 != -8)
                  {
                    v7 = *(v25 + 8);
                    v29 = v78;
                    v78 = 0;
                    v67 = v15;
                    v68 = v29;
                    v30 = v80;
                    v80 = 0;
                    v31 = v82;
                    v82 = 0;
                    v69 = v30;
                    v70[0] = v31;
                    v70[1] = v20;
                    v71 = v3;
                    v72 = v21;
                    v73 = v4;
                    v74 = v5;
                    v75 = v6;
                    v9 = *&v20;
                    v8 = *&v21;
                    v32 = 1;
                    v76 = v7;
LABEL_59:
                    v77 = v32;
                    v55 = v82;
                    if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v55, v17);
                    }

LABEL_62:
                    v56 = v80;
                    if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v56, v17);
                    }

                    goto LABEL_65;
                  }

                  v44 = v18;
                  v45 = v17;
                }

                else
                {
                  v44 = 0;
                  v45 = 0;
                  *a2 = 0;
                  *(a2 + 1) = 0;
                  v46 = *(a2 + 3);
                  if (v46)
                  {
                    (*(*v46 + 16))(v46);
                    v45 = *a2;
                    v44 = *(a2 + 1);
                  }
                }

                *a2 = 0;
                *(a2 + 1) = 0;
                v47 = *(a2 + 3);
                if (v47 && v44)
                {
                  (*(*v47 + 16))(v47, v45, v44);
                }

LABEL_58:
                v32 = 0;
                LOBYTE(v67) = 0;
                goto LABEL_59;
              }

LABEL_57:
              *a2 = 0;
              *(a2 + 1) = 0;
              v54 = *(a2 + 3);
              if (v54 && v18)
              {
                (*(*v54 + 16))(v54, v17);
              }

              goto LABEL_58;
            }

            goto LABEL_89;
          }
        }

        v50 = 0;
        v51 = 0;
        *a2 = 0;
        *(a2 + 1) = 0;
        v52 = *(a2 + 3);
        if (v52)
        {
          (*(*v52 + 16))(v52);
          v51 = *a2;
          v50 = *(a2 + 1);
        }

LABEL_54:
        *a2 = 0;
        *(a2 + 1) = 0;
        v53 = *(a2 + 3);
        if (v53 && v50)
        {
          (*(*v53 + 16))(v53, v51, v50);
          goto LABEL_97;
        }

        goto LABEL_55;
      }
    }

LABEL_49:
    *a2 = 0;
    *(a2 + 1) = 0;
    v49 = *(a2 + 3);
    if (v49)
    {
      if (v18)
      {
        (*(*v49 + 16))(v49);
LABEL_97:
        v17 = *a2;
        v18 = *(a2 + 1);
        goto LABEL_57;
      }

LABEL_56:
      v17 = 0;
      goto LABEL_57;
    }

LABEL_55:
    v18 = 0;
    goto LABEL_56;
  }

  v17 = *a2;
  v40 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v41 = *(a2 + 3);
  if (v41 && v40)
  {
    (*(*v41 + 16))(v41, v17);
  }

  v32 = 0;
  LOBYTE(v67) = 0;
  v77 = 0;
LABEL_65:
  v57 = v78;
  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v57, v17);
    if (v32)
    {
      goto LABEL_68;
    }

LABEL_25:
    v36 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v38 = v36 == 0;
    }

    else
    {
      v38 = 1;
    }

    if (!v38)
    {
      v39 = *(*result + 16);

      return v39();
    }

    return result;
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_68:
  v58 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v59 & 1) == 0)
  {
    goto LABEL_77;
  }

  v60 = v58;
  while (1)
  {
    v61 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v62 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v62, v61 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v62 == v61)
    {
      goto LABEL_74;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_74:
  v63 = WTF::fastMalloc(0x18);
  *v63 = &unk_1F10EFE90;
  *(v63 + 8) = v60;
  *(v63 + 16) = a1;
  v82 = v63;
  WebKit::NetworkProcess::mergeStatisticForTesting(a3, v67, &v68, &v69, v70, v3 & 1, v4 & 1, v5 & 1, v9, v8, v6 & 1, v66, v7, &v82);
  result = v82;
  v82 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v77)
  {
LABEL_77:
    v64 = v70[0];
    v70[0] = 0;
    if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v64, v59);
    }

    v65 = v69;
    v69 = 0;
    if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v65, v59);
    }

    result = v68;
    v68 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v59);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::InsertExpiredStatisticForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,unsigned long long,BOOL,BOOL,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v11 & 1) == 0)
  {
    goto LABEL_36;
  }

  v12 = v10;
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v52);
  if ((v53 & 1) == 0)
  {
    v31 = *a2;
    v32 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v33 = *(a2 + 3);
    if (v33 && v32)
    {
      (*(*v33 + 16))(v33, v31);
    }

    goto LABEL_36;
  }

  v13 = *(a2 + 1);
  v14 = (*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *a2;
  v16 = v14 - *a2;
  v17 = v13 >= v16;
  v18 = v13 - v16;
  if (!v17 || v18 <= 7)
  {
    goto LABEL_55;
  }

  v20 = (v14 + 8);
  *(a2 + 2) = v14 + 8;
  if (!v14)
  {
    goto LABEL_58;
  }

  if (v13 <= v20 - v15)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v43 = *(a2 + 3);
    if (v43)
    {
      if (v13)
      {
        (*(*v43 + 16))(v43);
        v13 = *(a2 + 1);
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_55;
  }

  v3 = *v14;
  *(a2 + 2) = v14 + 9;
  if (v14 == -8)
  {
LABEL_55:
    *a2 = 0;
    *(a2 + 1) = 0;
    v44 = *(a2 + 3);
    if (v44)
    {
      if (v13)
      {
        (*(*v44 + 16))(v44);
        v15 = *a2;
        v13 = *(a2 + 1);
        goto LABEL_58;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
LABEL_58:
    *a2 = 0;
    *(a2 + 1) = 0;
    v45 = *(a2 + 3);
    if (v45 && v13)
    {
      (*(*v45 + 16))(v45);
    }

LABEL_59:
    v22 = 0;
    LOBYTE(v46) = 0;
    goto LABEL_17;
  }

  v4 = *v20;
  if (v4 >= 2)
  {
    goto LABEL_58;
  }

  if (v13 <= v14 + 9 - v15)
  {
    goto LABEL_45;
  }

  *(a2 + 2) = v14 + 10;
  v5 = *(v14 + 9);
  if (v5 >= 2)
  {
LABEL_49:
    v37 = v13;
    v38 = v15;
LABEL_50:
    *a2 = 0;
    *(a2 + 1) = 0;
    v42 = *(a2 + 3);
    if (v42 && v37)
    {
      (*(*v42 + 16))(v42, v38, v37);
    }

    goto LABEL_59;
  }

  if (v13 <= v14 + 10 - v15)
  {
LABEL_45:
    v37 = 0;
    v38 = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    v39 = *(a2 + 3);
    if (v39)
    {
      (*(*v39 + 16))(v39);
      v37 = 0;
      v15 = *a2;
      v40 = *(a2 + 1);
      v41 = *(a2 + 3);
      *a2 = 0;
      *(a2 + 1) = 0;
      v38 = 0;
      if (v41)
      {
        if (v40)
        {
          (*(*v41 + 16))(v41, v15);
          v38 = *a2;
          v37 = *(a2 + 1);
        }
      }
    }

    goto LABEL_50;
  }

  *(a2 + 2) = v14 + 11;
  v6 = *(v14 + 10);
  if (v6 >= 2)
  {
    goto LABEL_49;
  }

  v21 = v52;
  v52 = 0;
  v46 = v12;
  v47[0] = v21;
  v47[1] = v3;
  v48 = v4;
  v49 = v5;
  v50 = v6;
  v22 = 1;
LABEL_17:
  v51 = v22;
  v23 = v52;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v15);
    if (v22)
    {
      goto LABEL_20;
    }

LABEL_36:
    v34 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v35 = v34 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      v36 = *(*result + 16);

      return v36();
    }

    return result;
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_20:
  v24 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v25 & 1) == 0)
  {
    goto LABEL_29;
  }

  v26 = v24;
  while (1)
  {
    v27 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v28 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v28, v27 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v28 == v27)
    {
      goto LABEL_26;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_26:
  v29 = WTF::fastMalloc(0x18);
  *v29 = &unk_1F10EFEB8;
  *(v29 + 1) = v26;
  *(v29 + 2) = a1;
  v52 = v29;
  WebKit::NetworkProcess::insertExpiredStatisticForTesting(a3, v46, v47, v3, v4 & 1, v5 & 1, v6 & 1, &v52);
  result = v52;
  v52 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v51)
  {
LABEL_29:
    result = v47[0];
    v47[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v25);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetPrevalentResource,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10EFEE0;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::setPrevalentResource(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetPrevalentResourceForDebugMode,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10EFF08;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::setPrevalentResourceForDebugMode(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::IsResourceLoadStatisticsEphemeral,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(BOOL)> &&)const>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10EFF30;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::isResourceLoadStatisticsEphemeral(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::HadUserInteraction,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10EFF58;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::hadUserInteraction(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::IsRelationshipOnlyInDatabaseOnce,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10EFF80;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::NetworkProcess::isRelationshipOnlyInDatabaseOnce(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::HasLocalStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10EFFA8;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::hasLocalStorage(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::GetAllStorageAccessEntries,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10EFFD0;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::getAllStorageAccessEntries(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::IsRegisteredAsRedirectingTo,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10EFFF8;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::NetworkProcess::isRegisteredAsRedirectingTo(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::IsRegisteredAsSubFrameUnder,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0020;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::NetworkProcess::isRegisteredAsSubFrameUnder(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::IsRegisteredAsSubresourceUnder,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0048;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::NetworkProcess::isRegisteredAsSubresourceUnder(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::DomainIDExistsInDatabase,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,int,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
LABEL_19:
    v24 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v26 = *(*result + 16);

      return v26();
    }

    return result;
  }

  v8 = *(a2 + 1);
  v9 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = v9 - *a2;
  v11 = v8 >= v10;
  v12 = v8 - v10;
  if (!v11 || v12 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      if (v8)
      {
        (*(*v22 + 16))(v22);
        v8 = *(a2 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_18;
  }

  *(a2 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_18:
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23 && v8)
    {
      (*(*v23 + 16))(v23);
    }

    goto LABEL_19;
  }

  v14 = v6;
  v15 = *v9;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v17)
  {
    v18 = result;
    while (1)
    {
      v19 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v20 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_14:
    v21 = WTF::fastMalloc(0x18);
    *v21 = &unk_1F10F0070;
    v21[1] = v18;
    v21[2] = a1;
    v27 = v21;
    WebKit::NetworkProcess::domainIDExistsInDatabase(a3, v14, v15, &v27);
    result = v27;
    v27 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::LogFrameNavigation,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,BOOL,BOOL,WTF::Seconds,BOOL)>(IPC::Decoder *a1, uint64_t a2)
{
  v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v9 & 1) == 0)
  {
    goto LABEL_38;
  }

  v10 = v8;
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v38);
  if ((v39 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_38;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v40);
  if ((v41 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
    v21 = 0;
    LOBYTE(v29) = 0;
    v37 = 0;
    goto LABEL_18;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v42);
  if (v43)
  {
    v12 = *(a1 + 1);
    v11 = *(a1 + 2);
    v13 = *a1;
    if (v12 > &v11[-*a1])
    {
      v14 = v11 + 1;
      *(a1 + 2) = v11 + 1;
      if (!v11)
      {
        goto LABEL_44;
      }

      v2 = *v11;
      if (v2 >= 2)
      {
        goto LABEL_45;
      }

      if (v12 > &v14[-v13])
      {
        *(a1 + 2) = v11 + 2;
        if (v11 != -1)
        {
          v3 = *v14;
          if (v3 < 2)
          {
            v15 = IPC::Decoder::decode<WTF::Seconds>(a1);
            if ((v16 & 1) == 0)
            {
LABEL_46:
              v21 = 0;
              LOBYTE(v29) = 0;
              goto LABEL_16;
            }

            v17 = *(a1 + 2);
            if (*(a1 + 1) > &v17[-*a1])
            {
              *(a1 + 2) = v17 + 1;
              if (v17)
              {
                v4 = *v17;
                if (v4 < 2)
                {
                  v18 = v38;
                  v38 = 0;
                  v29 = v10;
                  v30 = v18;
                  v19 = v40;
                  v40 = 0;
                  v20 = v42;
                  v42 = 0;
                  v31 = v19;
                  v32 = v20;
                  v33 = v2;
                  v34 = v3;
                  v35 = v15;
                  v5 = *&v15;
                  v21 = 1;
                  v36 = v4;
LABEL_16:
                  v37 = v21;
                  v22 = v42;
                  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v22, v16);
                  }

                  goto LABEL_17;
                }

                goto LABEL_45;
              }

              goto LABEL_44;
            }

            goto LABEL_43;
          }

LABEL_45:
          IPC::Decoder::markInvalid(a1);
          goto LABEL_46;
        }

LABEL_44:
        IPC::Decoder::markInvalid(a1);
        goto LABEL_45;
      }
    }

LABEL_43:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_44;
  }

  IPC::Decoder::markInvalid(a1);
  v21 = 0;
  LOBYTE(v29) = 0;
  v37 = 0;
LABEL_17:
  v23 = v40;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v16);
  }

LABEL_18:
  v24 = v38;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v16);
  }

  if (v21)
  {
    result = WebKit::NetworkProcess::logFrameNavigation(a2, v29, &v30, &v31, &v32, v2 & 1, v3 & 1, v4 & 1, v5);
    if (v37)
    {
      v27 = v32;
      v32 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v26);
      }

      v28 = v31;
      v31 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v26);
      }

      result = v30;
      v30 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v26);
        }
      }
    }

    return result;
  }

LABEL_38:

  return IPC::Decoder::markInvalid(a1);
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::LogUserInteraction,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0098;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::logUserInteraction(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ResetParametersToDefaultValues,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F00C0;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::resetParametersToDefaultValues(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ScheduleClearInMemoryAndPersistent,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,std::optional<WTF::WallTime>,WebKit::ShouldGrandfatherStatistics,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::decode<IPC::Decoder>(a2, v33), (v34 & 1) == 0) && ((v21 = *a2, v22 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v23 = *(a2 + 3)) == 0) || !v22 || ((*(*v23 + 16))(v23, v21), (v34 & 1) == 0)))
  {
LABEL_15:
    v24 = *a2;
    v25 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      return (*(*result + 16))(result, v24);
    }

    return result;
  }

  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *a2;
  if (v9 <= &v10[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      if (v9)
      {
        (*(*v27 + 16))(v27);
        v9 = *(a2 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_26;
  }

  *(a2 + 2) = v10 + 1;
  if (!v10)
  {
LABEL_26:
    *a2 = 0;
    *(a2 + 1) = 0;
    v28 = *(a2 + 3);
    if (v28)
    {
      if (v9)
      {
        (*(*v28 + 16))(v28);
        v11 = *a2;
        v9 = *(a2 + 1);
        goto LABEL_29;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
LABEL_29:
    *a2 = 0;
    *(a2 + 1) = 0;
    v29 = *(a2 + 3);
    if (v29)
    {
      if (v9)
      {
        (*(*v29 + 16))(v29, v11);
        v30 = *(a2 + 3);
        v31 = *a2;
        v32 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        if (v30)
        {
          if (v32)
          {
            (*(*v30 + 16))(v30, v31);
          }
        }
      }
    }

    goto LABEL_15;
  }

  v12 = *v10;
  if (v12 >= 2)
  {
    goto LABEL_29;
  }

  v13 = v33[0];
  v14 = v33[1];
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v16)
  {
    v17 = result;
    while (1)
    {
      v18 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v19 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v19 == v18)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_12:
    v20 = WTF::fastMalloc(0x18);
    *v20 = &unk_1F10F00E8;
    v20[1] = v17;
    v20[2] = a1;
    v33[0] = v20;
    WebKit::NetworkProcess::scheduleClearInMemoryAndPersistent(a3, v8, v13, v14, v12 & 1, v33);
    result = v33[0];
    v33[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ScheduleCookieBlockingUpdate,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F0110;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::scheduleCookieBlockingUpdate(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ScheduleStatisticsAndDataRecordsProcessing,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F0138;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::scheduleStatisticsAndDataRecordsProcessing(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::StatisticsDatabaseHasAllTables,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F0160;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::statisticsDatabaseHasAllTables(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetCacheMaxAgeCapForPrevalentResources,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::Seconds>>(&v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F0188;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setCacheMaxAgeCapForPrevalentResources(a3, v13, &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetGrandfathered,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,BOOL>>(&v14, a2);
  if (v17 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F01B0;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::setGrandfathered(a3, v14, &v15, v16, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::GetResourceLoadStatisticsDataSummary,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v13 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v13, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 == v11)
        {
          goto LABEL_6;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
      v12 = WTF::fastMalloc(0x18);
      *v12 = &unk_1F10F01D8;
      v12[1] = v10;
      v12[2] = a1;
      v14 = v12;
      WebKit::NetworkProcess::getResourceLoadStatisticsDataSummary(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetGrandfatheringTime,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::Seconds>>(v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F0200;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setGrandfatheringTime(a3, v13[0], &v12, *&v13[1]);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetMaxStatisticsEntries,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,unsigned long long,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,unsigned long long>>(v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F0228;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setMaxStatisticsEntries(a3, v13[0], v13[1], &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetMinimumTimeBetweenDataRecordsRemoval,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::Seconds>>(v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F0250;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setMinimumTimeBetweenDataRecordsRemoval(a3, v13[0], &v12, *&v13[1]);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetPruneEntriesDownTo,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,unsigned long long,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,unsigned long long>>(v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F0278;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setPruneEntriesDownTo(a3, v13[0], v13[1], &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetShouldClassifyResourcesBeforeDataRecordsRemoval,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v13, a2);
  if (v15 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F02A0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setShouldClassifyResourcesBeforeDataRecordsRemoval(a3, v13, v14, &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetResourceLoadStatisticsTimeAdvanceForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::Seconds>>(v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F02C8;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setResourceLoadStatisticsTimeAdvanceForTesting(a3, v13[0], &v12, *&v13[1]);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetIsRunningResourceLoadStatisticsTest,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v13, a2);
  if (v15 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F02F0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setIsRunningResourceLoadStatisticsTest(a3, v13, v14, &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetResourceLoadStatisticsDebugMode,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v13, a2);
  if (v15 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F0318;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setResourceLoadStatisticsDebugMode(a3, v13, v14, &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetVeryPrevalentResource,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0340;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::setVeryPrevalentResource(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetSubframeUnderTopFrameDomain,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0368;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::NetworkProcess::setSubframeUnderTopFrameDomain(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetSubresourceUnderTopFrameDomain,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0390;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::NetworkProcess::setSubresourceUnderTopFrameDomain(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetSubresourceUniqueRedirectTo,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F03B8;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::NetworkProcess::setSubresourceUniqueRedirectTo(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetSubresourceUniqueRedirectFrom,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F03E0;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::NetworkProcess::setSubresourceUniqueRedirectFrom(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}