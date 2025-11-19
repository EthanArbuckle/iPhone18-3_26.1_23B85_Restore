uint64_t IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20)
    {
      if (v6)
      {
        (*(*v20 + 16))(v20);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_50;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_50:
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (v21 && v6)
    {
      (*(*v21 + 16))(v21, v5);
    }

LABEL_34:
    v17 = *a2;
    v18 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v18)
      {
        (*(*result + 16))(result, v17);
        v18 = *(a2 + 1);
        result = *(a2 + 3);
      }
    }

    else
    {
      v18 = 0;
    }

    *v3 = 0;
    *(v3 + 16) = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    if (result && v18)
    {
      v19 = *(*result + 16);

      return v19();
    }

    return result;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_50;
  }

  v8 = *v4;
  v24 = 0;
  v25 = 0;
  if (v8 >= 0x20000)
  {
    v14 = 0;
    LODWORD(v10) = 0;
    do
    {
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
      v22 = result;
      v23 = v11;
      if ((v11 & 1) == 0)
      {
        v9 = v24;
        if (!v24)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      if (v10 == v25)
      {
        result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v24, v10 + 1, &v22);
        v15 = HIDWORD(v25);
        v14 = v24;
        *(v24 + HIDWORD(v25)) = *result;
      }

      else
      {
        *(v14 + v10) = result;
        v15 = HIDWORD(v25);
      }

      v10 = (v15 + 1);
      HIDWORD(v25) = v15 + 1;
      --v8;
    }

    while (v8);
    v13 = v25;
    if (v25 <= v10)
    {
      goto LABEL_46;
    }

    if (!v10)
    {
      goto LABEL_44;
    }

    if (!(v10 >> 29))
    {
      result = WTF::fastMalloc((8 * v10));
      LODWORD(v25) = v10;
      v24 = result;
      if (result != v14)
      {
        v16 = 0;
        do
        {
          *(result + v16) = *(v14 + v16);
          v16 += 8;
        }

        while (8 * v10 != v16);
        v13 = v10;
        if (!v14)
        {
          goto LABEL_46;
        }

LABEL_45:
        result = WTF::fastFree(v14, v11);
        v13 = v25;
        LODWORD(v10) = HIDWORD(v25);
LABEL_46:
        v9 = v24;
        goto LABEL_17;
      }

LABEL_44:
      v24 = 0;
      LODWORD(v25) = 0;
      goto LABEL_45;
    }

    __break(0xC471u);
  }

  else
  {
    if (v8)
    {
      v9 = WTF::fastMalloc((8 * v8));
      LODWORD(v10) = 0;
      LODWORD(v25) = v8;
      v24 = v9;
      while (1)
      {
        result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
        v22 = result;
        v23 = v11;
        if ((v11 & 1) == 0)
        {
          break;
        }

        if (v10 == v25)
        {
          result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v24, v10 + 1, &v22);
          v12 = HIDWORD(v25);
          v9 = v24;
          *(v24 + HIDWORD(v25)) = *result;
        }

        else
        {
          *(v9 + v10) = result;
          v12 = HIDWORD(v25);
        }

        LODWORD(v10) = v12 + 1;
        HIDWORD(v25) = v12 + 1;
        if (!--v8)
        {
          v13 = v25;
          goto LABEL_17;
        }
      }

LABEL_33:
      v24 = 0;
      LODWORD(v25) = 0;
      WTF::fastFree(v9, v11);
      goto LABEL_34;
    }

    LODWORD(v10) = 0;
    v13 = 0;
    v9 = 0;
LABEL_17:
    *v3 = v9;
    *(v3 + 8) = v13;
    *(v3 + 12) = v10;
    *(v3 + 16) = 1;
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, a2, &v7);
  if (v9)
  {
    *a1 = v7;
    v5 = v8;
    v7 = 0;
    v8 = 0;
    *(a1 + 8) = v5;
    result = WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v4);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v6;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebUserContentControllerProxy14DidPostMessageENS2_10ConnectionEN6WebKit29WebUserContentControllerProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataENSA_INS8_34ScriptMessageHandlerIdentifierTypeESD_yEEONS8_26JavaScriptEvaluationResultEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISJ_NS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8940;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebUserContentControllerProxy14DidPostMessageENS2_10ConnectionEN6WebKit29WebUserContentControllerProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataENSA_INS8_34ScriptMessageHandlerIdentifierTypeESD_yEEONS8_26JavaScriptEvaluationResultEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISJ_NS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8940;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebUserContentControllerProxy14DidPostMessageENS2_10ConnectionEN6WebKit29WebUserContentControllerProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataENSA_INS8_34ScriptMessageHandlerIdentifierTypeESD_yEEONS8_26JavaScriptEvaluationResultEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISJ_NS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3982;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[128])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[128] == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[128])
  {
    goto LABEL_9;
  }

  IPC::ArgumentCoder<WebKit::JavaScriptEvaluationResult,void>::encode(v5, a2);
LABEL_6:
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void sub_19DAFC768(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) != 255)
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

  *(a1 + 16) = -1;
  return a1;
}

void sub_19DAFC910(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAFCBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location, uint64_t a13)
{
  if (v13)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAFD688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16)
{
  if (a15)
  {
    CFRelease(*(a15 + 8));
  }

  if (v16)
  {
    CFRelease(*(v16 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAFECD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  v34 = a33;
  a33 = 0;
  if (v34)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a9);
  _Unwind_Resume(a1);
}

void sub_19DAFEF18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (a12)
  {
    CFRelease(*(a12 + 8));
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAFF27C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, unsigned int *a12, uint64_t a13)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

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
    if (atomic_fetch_add(a12 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a12 + 2);
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAFF484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Block_release(0);
  v35 = a34;
  a34 = 0;
  if (v35)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a10);
  _Unwind_Resume(a1);
}

void sub_19DAFF76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, uint64_t a20)
{
  _Block_release(v21);
  if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, v23);
  }

  if (a20)
  {
    CFRelease(*(a20 + 8));
  }

  if (v20)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DAFF9C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
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

void sub_19DAFFBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAFFD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAFFE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAFFFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB004BC(_Unwind_Exception *a1)
{
  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v1);
  if (v2[5] == 1)
  {
    (*(*v2 + 24))(v2);
  }

  else
  {
    --v2[5];
  }

  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v1);
  _Unwind_Resume(a1);
}

void sub_19DB013D4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, WTF::StringImpl *a32, uint64_t a33, WTF::StringImpl *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (*(v48 - 232) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v48 - 248, a2);
  }

  if (a11)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB01A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Block_release(0);
  _Block_release(0);
  _Block_release(0);

  _Block_release(v14);
  _Unwind_Resume(a1);
}

void sub_19DB01DD0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0220C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, WTF::StringImpl *a12)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB02300(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB024A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB025AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  v16 = *(v14 - 24);
  *(v14 - 24) = 0;
  if (v16)
  {
  }

  v17 = a14;
  a14 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(a1);
}

void sub_19DB027AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25)
{
  v26 = a14;
  a14 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, a2);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  v28 = a25;
  a25 = 0;
  if (v28)
  {
    if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v27);
    }
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, v27);
  _Unwind_Resume(a1);
}

void sub_19DB02B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, uint64_t a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = a11;
  a11 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19DB02C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB02E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  _Block_release(v12);

  _Block_release(v11);
  _Unwind_Resume(a1);
}

void sub_19DB02FEC(_Unwind_Exception *a1)
{
  v2 = v1;
  _Block_release(v2);
  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB03AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB03EEC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11)
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

void sub_19DB0413C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = *(v68 - 64);
  *(v68 - 64) = 0;
  if (v70)
  {
    CFRelease(*(v70 + 8));
  }

  if (a10 && atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a10 + 2);
    (*(*a10 + 8))(a10);
  }

  v71 = a42;
  a42 = 0;
  if (v71)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&a11, a2);
  v72 = a68;
  a68 = 0;
  if (v72)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a44);
  _Unwind_Resume(a1);
}

void sub_19DB04390(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0463C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (a12)
  {
    CFRelease(*(a12 + 8));
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB04768(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if ((a9 & 0x8000000000000) != 0)
  {
    v11 = (a9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0483C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 0x8000000000000) != 0)
  {
    v11 = (a10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB04C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB04F4C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_19DB0547C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, a2);
  if (LOBYTE(STACK[0x200]) == 1)
  {
    MEMORY[0x19EB065D0](&a65);
  }

  _Unwind_Resume(a1);
}

void sub_19DB0570C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a15 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a27 == 1)
  {
    MEMORY[0x19EB065D0](&a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB05940(_Unwind_Exception *a1)
{
  _Block_release(v1);
  objc_destroyWeak((v2 + 56));
  _Unwind_Resume(a1);
}

void sub_19DB05D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a53 == 1)
  {
    MEMORY[0x19EB065D0](&a45);
  }

  _Unwind_Resume(a1);
}

void sub_19DB0604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB06200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  objc_destroyWeak((v12 + 8));
  _Block_release(aBlock);
  _Unwind_Resume(a1);
}

void sub_19DB06368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  objc_destroyWeak((v12 + 8));
  _Block_release(aBlock);
  _Unwind_Resume(a1);
}

void sub_19DB0648C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB06590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB06698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB067E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB06B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  if (v14)
  {
  }

  if (a14)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB06E58(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB06F50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB06FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB07120(_Unwind_Exception *a1)
{
  CFRelease(*(v2 - 8));
  CFRelease(*(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_19DB07344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB07A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11)
{
  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v12);
  WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v11, v14);
  if (a11)
  {
    WTF::fastFree(a11, v15);
  }

  _Unwind_Resume(a1);
}

void sub_19DB08018(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, WTF *a27, uint64_t a28, uint64_t a29)
{
  if (a27)
  {
    WTF::fastFree(a27, a2);
  }

  WTF::Persistence::Decoder::~Decoder(&a11);
  _Unwind_Resume(a1);
}

uint64_t WTF::Persistence::Decoder::operator>><WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,(void *)0>(uint64_t a1, mpark *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  LOBYTE(v6) = 0;
  v7 = 0;
  WTF::Persistence::Decoder::operator>>();
  LOBYTE(v8[0]) = 0;
  LOBYTE(v8[1]) = 0;
  std::__optional_storage_base<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,false>>(a2, v8);
  if (LOBYTE(v8[1]) == 1 && v8[0])
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v8[0], v4);
  }

  return a1;
}

void sub_19DB086F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, mpark *a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a11)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0900C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl **a14)
{
  if (a14)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a14, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB092AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

void sub_19DB094A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl **a20)
{
  if (a20)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a20, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB095A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

API::Object *API::FrameHandle::create@<X0>(uint64_t a1@<X0>, char a2@<W1>, API::Object **a3@<X8>)
{
  v6 = API::Object::newObject(0x20uLL, 11);
  result = API::Object::Object(v6);
  *result = &unk_1F10E7C40;
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  *(result + 2) = v8;
  *(result + 24) = 0;
  *a3 = result;
  return result;
}

void sub_19DB09778(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DB098B4(_Unwind_Exception *a1)
{
  CFRelease(*(v2 + 8));
  _Block_release(v1);
  _Unwind_Resume(a1);
}

void sub_19DB099A4(_Unwind_Exception *a1)
{
  CFRelease(*(v2 + 8));
  _Block_release(v1);
  _Unwind_Resume(a1);
}

void sub_19DB09AF0(_Unwind_Exception *a1)
{
  _Block_release(v2);
  CFRelease(*(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_19DB09D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v13);
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB0A314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_release(v31);
  (*(*v30 + 8))(v30);
  objc_destroyWeak(&location);
  WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a30, v33);
  CFRelease(*(a14 + 8));
  _Unwind_Resume(a1);
}

void sub_19DB0A80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, WTF::StringImpl *a28, WTF::StringImpl *a29, WTF::StringImpl *a30, WTF::StringImpl *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v38 = a27;
  a27 = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  _Block_release(0);
  WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, v39);
  WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a22, v40);
  _Unwind_Resume(a1);
}

WTF::StringImpl *coreTextManipulationItemIdentifierFromString(NSString *a1)
{
  MEMORY[0x19EB02040](&v25);
  if (v25)
  {
    v2 = *(v25 + 1);
    v3 = *(v25 + 1) | (((*(v25 + 4) >> 2) & 1) << 32);
  }

  else
  {
    v2 = 0;
    v3 = 0x100000000;
  }

  v21 = v2;
  v22 = v3;
  v23 = 45;
  v24 = 0;
  v17 = &v21;
  v18 = 0;
  v20 = v3 == 0;
  WTF::StringView::SplitResult::Iterator::findNextSubstring(&v17);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v22;
  while (1)
  {
    v10 = v18;
    if (v18 == v9 && v20)
    {
      break;
    }

    v12 = WTF::StringView::substring(v17, v18, v19);
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_21;
      }

      v4 = WTF::parseInteger<unsigned long long>(v12, v10 & 0xFFFFFFFFFFLL, 0xAu, 1);
      v5 = v13;
    }

    else
    {
      v6 = WTF::parseInteger<unsigned long long>(v12, v10 & 0xFFFFFFFFFFLL, 0xAu, 1);
      v7 = v14;
    }

    ++v8;
    WTF::StringView::SplitResult::Iterator::operator++();
  }

  v15 = (v7 & v5 & (v6 != 0)) != 1 || v4 == 0;
  if (!v15 && v6 != -1 && v4 != -1)
  {
    *a1 = v6;
    a1[1] = v4;
    *(a1 + 16) = 1;
    goto LABEL_22;
  }

LABEL_21:
  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_22:
  result = v25;
  v25 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

void sub_19DB0AAF8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16)
{
  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0B490(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB0B5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  _Block_release(v34);
  if (*(v35 - 48))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v35 - 80);
  }

  v37 = a34;
  a34 = 0;
  if (v37)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a10);
  _Unwind_Resume(a1);
}

void sub_19DB0B730(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
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

void sub_19DB0B864(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DB0BD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB0BE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB0C600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, WTF::StringImpl *a18)
{
  _Block_release(v19);
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, v21);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v21);
  }

  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, v21);
  }

  if (a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, v21);
  }

  if (v18[2] == 1)
  {
    (*(*v18 + 8))(v18);
  }

  else
  {
    --v18[2];
  }

  _Unwind_Resume(a1);
}

void sub_19DB0CAE8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  WTF::Vector<WTF::Ref<WebCore::SharedMemory,WTF::RawPtrTraits<WebCore::SharedMemory>,WTF::DefaultRefDerefTraits<WebCore::SharedMemory>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

atomic_uint *convertAndAddHighlight(uint64_t a1, void *a2)
{
  result = WebCore::SharedMemory::allocate([a2 length]);
  if (v13)
  {
    [a2 getBytes:*(v13 + 16) length:{objc_msgSend(a2, "length")}];
    v5 = v13;
    v12 = v13;
    v13 = 0;
    v6 = *(a1 + 12);
    if (v6 == *(a1 + 8))
    {
      v7 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v6 + 1, &v12);
      v8 = *(a1 + 12);
      v9 = *a1;
      v10 = *v7;
      *v7 = 0;
      *(v9 + 8 * v8) = v10;
      v11 = v12;
      *(a1 + 12) = v8 + 1;
      v12 = 0;
      if (v11)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v11);
      }
    }

    else
    {
      *(*a1 + 8 * v6) = v5;
      *(a1 + 12) = v6 + 1;
    }

    result = v13;
    v13 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
    }
  }

  return result;
}

void sub_19DB0CBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, atomic_uint *a10)
{
  if (a9)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(a9);
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0CE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB0CFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, void *aBlock, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  _Block_release(aBlock);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19DB0D0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  CFRelease(*(v10 + 16));
  _Unwind_Resume(a1);
}

void sub_19DB0D1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB0D2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

void sub_19DB0D48C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  v17 = *(v15 - 72);
  *(v15 - 72) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  v18 = *(v15 - 64);
  *(v15 - 64) = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCounted<WebCore::DataSegment,(WTF::DestructionThread)0>::deref(v18, a2);
  }

  v19 = *(v15 - 56);
  *(v15 - 56) = 0;
  if (v19)
  {
    CFRelease(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0D7A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, unsigned int *a14, uint64_t a15)
{
  if ((v15 & 1) != 0 && a10)
  {
    CFRelease(*(a10 + 8));
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

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

void sub_19DB0DA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  v35 = a34;
  a34 = 0;
  if (v35)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a10);
  _Unwind_Resume(a1);
}

void sub_19DB0DCB4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *aBlock, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  _Block_release(aBlock);
  v72 = a40;
  a40 = 0;
  if (v72)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a16);
  if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v70, v73);
  }

  v74 = a70;
  a70 = 0;
  if (v74)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a46);
  _Unwind_Resume(a1);
}

void sub_19DB0DEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  if (a11)
  {
    WTF::fastFree(a11, v13);
  }

  _Unwind_Resume(a1);
}

void sub_19DB0E1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF *a19, int a20)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Block_release(0);
  if (a10 && atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a10 + 2);
    (*(*a10 + 8))(a10);
  }

  if (a19)
  {
    WTF::fastFree(a19, v21);
  }

  _Unwind_Resume(a1);
}

void sub_19DB0E3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Block_release(0);
  if (a9)
  {
    if (atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a9 + 2);
      (*(*a9 + 8))(a9);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB0E5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Block_release(0);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v11);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB0EB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB0EC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB0ED68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

void sub_19DB0EE44(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0EF20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0EFFC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0F350(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0F470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0F5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0F6C8(_Unwind_Exception *a1)
{
  v5 = v4;
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
  WTF::RefCounted<WebKit::ProvisionalPageProxy>::deref(v3);
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(a1);
}

void sub_19DB0F7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB0FA84(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  v16 = *(v14 - 24);
  *(v14 - 24) = 0;
  if (v16)
  {
    CFRelease(*(v16 + 8));
  }

  v17 = a14;
  a14 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(a1);
}

void sub_19DB0FBEC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15)
{
  v16 = a15;
  a15 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, a2);
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_19DB0FDB8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25)
{
  v26 = a14;
  a14 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, a2);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  v28 = a25;
  a25 = 0;
  if (v28)
  {
    if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v27);
    }
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, v27);
  _Unwind_Resume(a1);
}

void sub_19DB0FFEC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25)
{
  v26 = a14;
  a14 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, a2);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  v28 = a25;
  a25 = 0;
  if (v28)
  {
    if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v27);
    }
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, v27);
  _Unwind_Resume(a1);
}

void sub_19DB103D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB10658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  _Block_release(v13);
  CFRelease(*(v12 + 8));
  CFRelease(*(v12 + 8));
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, v15);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB10A04(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB10E1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB112C8(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB116FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DB118EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB11B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, char a13)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v15);
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, v15);
  }

  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, v15);
  if (v13)
  {
    CFRelease(*(v13 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB120BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, WTF::StringImpl *a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30)
{
  v32 = a30;
  a30 = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  _Block_release(0);
  if (a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, v33);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, v33);
  }

  if (v30)
  {
    CFRelease(*(v30 + 8));
  }

  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a28, v33);
  _Unwind_Resume(a1);
}

void sub_19DB12314(_Unwind_Exception *a1)
{
  _Block_release(v2);
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB125EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, atomic_ullong *a10)
{
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(a10);
  }

  _Block_release(aBlock);
  _Unwind_Resume(a1);
}

void sub_19DB12818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB13690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB13810(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  v39 = a38;
  a38 = 0;
  if (v39)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a14);
  _Unwind_Resume(a1);
}

void sub_19DB139C4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if ((a9 & 0x8000000000000) != 0)
  {
    v11 = (a9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB13D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, WTF::StringImpl *a11, WTF *a12)
{
  objc_destroyWeak(&location);
  if (v12)
  {
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      WTF::fastFree(v12, v15);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB14854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB15118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB151FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB152FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  _Block_release(v11);
  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, v13);
  _Unwind_Resume(a1);
}

unint64_t elementsFromWKElements(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  result = [a2 count];
  v5 = result;
  if (result)
  {
    if (result >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v6 = WTF::fastMalloc((8 * result));
    *(a1 + 8) = v5;
    *a1 = v6;
  }

  else
  {
    v6 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  v7 = result;
  if (result)
  {
    LODWORD(v8) = 0;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(a2);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        CFRetain(*(v11 + 24));
        v15 = v11 + 16;
        if (v8 == *(a1 + 8))
        {
          v12 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v8 + 1, &v15);
          v8 = *(a1 + 12);
          v6 = *a1;
          v13 = *v12;
          *v12 = 0;
          *(v6 + 8 * v8) = v13;
        }

        else
        {
          v15 = 0;
          *(v6 + 8 * v8) = v11 + 16;
        }

        LODWORD(v8) = v8 + 1;
        *(a1 + 12) = v8;
        v14 = v15;
        v15 = 0;
        if (v14)
        {
          CFRelease(*(v14 + 8));
        }

        ++v10;
      }

      while (v7 != v10);
      result = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_19DB155C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  _Block_release(0);
  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v4);
  _Unwind_Resume(a1);
}

void sub_19DB157D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB15AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  _Block_release(v11);
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB15C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  objc_destroyWeak((v12 + 8));
  _Block_release(aBlock);
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, v14);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB15E18(_Unwind_Exception *a1)
{
  _Block_release(v1);
  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB15F0C(_Unwind_Exception *a1)
{
  _Block_release(v1);
  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB161B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1626C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB164B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock)
{
  _Block_release(v13[1]);
  WTF::fastFree(v13, v16);
  objc_destroyWeak((v14 + 8));
  _Block_release(aBlock);
  _Unwind_Resume(a1);
}

void sub_19DB168E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB16D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1701C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB170C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB17164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB171FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB172C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  *(v1 - 24) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB17378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1748C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB17570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1761C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB176B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1776C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB17A3C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, char a15, uint64_t a16)
{
  if (a15 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB17C88(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12)
{
  if (v12[2] == 1)
  {
    (*(*v12 + 8))(v12);
  }

  else
  {
    --v12[2];
  }

  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB17DE4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB17FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB180E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB18660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB18750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB187D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB188B0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    CFRelease(*(v13 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB18A40(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl **a10)
{
  if (a10)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB18C20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, WTF::StringImpl **a21)
{
  if (a21)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a21, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB18D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl **a10, unsigned int a11, uint64_t a12, char a13)
{
  if (a13 == 1 && a10)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(a10, a11);
  }

  v15 = *(v13 - 24);
  *(v13 - 24) = 0;
  if (v15)
  {
    CFRelease(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB18F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CFTypeRef *a19, int a20, uint64_t a21, WTF::StringImpl **a22, unsigned int a23, uint64_t a24, char a25)
{
  if (a25 == 1 && a22)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(a22, a23);
  }

  if (a19)
  {
    CFRelease(a19[1]);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB19198(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB193AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DB19458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB19570(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB197A8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14)
{
  if (a13 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, a2);
  }

  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB198B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1992C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB19A30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB19AF0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB19CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB19F00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
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

NSUInteger dumpCALayer(WTF::TextStream *a1, CALayer *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  [(CALayer *)a2 bounds];
  WTF::makeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>("[x: ", 5, " y: ", 5, " width: ", 9, " height: ", 10, __src, 0x5Du);
  WTF::TextStream::dumpProperty<WTF::String>(a1);
  v5 = *&__src[0];
  *&__src[0] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  [(CALayer *)a2 position];
  if (v6 != 0.0 || ([(CALayer *)a2 position], v7 != 0.0))
  {
    [(CALayer *)a2 position];
    WTF::makeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>("[x: ", 5, " y: ", 5, 93, __src, v8, v8);
    WTF::TextStream::dumpProperty<WTF::String>(a1);
    v10 = *&__src[0];
    *&__src[0] = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }
  }

  [(CALayer *)a2 zPosition];
  if (v11 != 0.0)
  {
    [(CALayer *)a2 zPosition];
    *&__src[0] = v12;
    WTF::tryMakeString<double>(v62);
    if (!v62[0])
    {
      __break(0xC471u);
      JUMPOUT(0x19DB1A5ECLL);
    }

    WTF::TextStream::dumpProperty<WTF::String>(a1);
    v14 = v62[0];
    v62[0] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }
  }

  [(CALayer *)a2 anchorPoint];
  if (v15 != 0.5 || ([(CALayer *)a2 anchorPoint], v16 != 0.5))
  {
    [(CALayer *)a2 anchorPoint];
    WTF::makeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>("[x: ", 5, " y: ", 5, 93, __src, v17, v17);
    WTF::TextStream::dumpProperty<WTF::String>(a1);
    v19 = *&__src[0];
    *&__src[0] = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v18);
      }
    }
  }

  [(CALayer *)a2 anchorPointZ];
  if (v20 != 0.0)
  {
    [(CALayer *)a2 anchorPointZ];
    *&__src[0] = v21;
    WTF::tryMakeString<double>(v62);
    if (!v62[0])
    {
      __break(0xC471u);
      JUMPOUT(0x19DB1A5F4);
    }

    WTF::TextStream::dumpProperty<WTF::String>(a1);
    v23 = v62[0];
    v62[0] = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v22);
    }
  }

  [(CALayer *)a2 opacity];
  if (v24 != 1.0)
  {
    [(CALayer *)a2 opacity];
    WTF::numberToStringAndSize();
    v26 = v25;
    HIDWORD(v61) = v25;
    if ((v25 & 0x80000000) == 0)
    {
      v66 = v58;
      v67 = v59;
      v68 = v60;
      v69 = v61;
      *v62 = v54;
      v63 = v55;
      v64 = v56;
      v65 = v57;
      if (!v25)
      {
        v27 = MEMORY[0x1E696EB88];
        atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
LABEL_32:
        WTF::TextStream::dumpProperty<WTF::String>(a1);
        v52 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v29);
        }

        goto LABEL_35;
      }

      WTF::tryFastCompactMalloc((v25 + 20));
      v27 = *&__src[0];
      if (*&__src[0])
      {
        v28 = (*&__src[0] + 20);
        **&__src[0] = 2;
        *(v27 + 4) = v26;
        *(v27 + 8) = v27 + 20;
        *(v27 + 16) = 4;
        __src[4] = v66;
        __src[5] = v67;
        __src[6] = v68;
        __src[7] = v69;
        __src[0] = *v62;
        __src[1] = v63;
        __src[2] = v64;
        __src[3] = v65;
        if (HIDWORD(v69) >= 0x7D)
        {
          __break(1u);
          goto LABEL_62;
        }

        if (HIDWORD(v69))
        {
          if (HIDWORD(v69) == 1)
          {
            *v28 = __src[0];
          }

          else
          {
            memcpy(v28, __src, HIDWORD(v69));
          }
        }

        goto LABEL_32;
      }
    }

    v52 = 0;
    __break(0xC471u);
    goto LABEL_69;
  }

LABEL_35:
  [(CALayer *)a2 cornerRadius];
  if (v30 == 0.0)
  {
    goto LABEL_40;
  }

  [(CALayer *)a2 cornerRadius];
  *&__src[0] = v31;
  WTF::tryMakeString<double>(v62);
  if (!v62[0])
  {
    __break(0xC471u);
LABEL_69:
    JUMPOUT(0x19DB1A5DCLL);
  }

  WTF::TextStream::dumpProperty<WTF::String>(a1);
  v33 = v62[0];
  v62[0] = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v32);
  }

LABEL_40:
  if ([(CALayer *)a2 maskedCorners]== 15)
  {
    goto LABEL_50;
  }

  v34 = [(CALayer *)a2 maskedCorners];
  LODWORD(v35) = 0;
  v36 = v34;
  do
  {
    v35 = (v35 + 1);
    v37 = v36 > 9;
    v36 /= 0xAuLL;
  }

  while (v37);
  if ((v35 & 0x80000000) != 0)
  {
LABEL_65:
    __break(0xC471u);
    JUMPOUT(0x19DB1A5E4);
  }

  if (!v35)
  {
LABEL_62:
    v38 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_47;
  }

  WTF::tryFastCompactMalloc((v35 + 20));
  v38 = *&__src[0];
  if (!*&__src[0])
  {
    goto LABEL_65;
  }

  **&__src[0] = 2;
  *(v38 + 4) = v35;
  *(v38 + 8) = v38 + 20;
  *(v38 + 16) = 4;
  *&__src[0] = v34;
  WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(__src, (v38 + 20), v35);
LABEL_47:
  v62[0] = v38;
  WTF::TextStream::dumpProperty<WTF::String>(a1);
  v40 = v62[0];
  v62[0] = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v39);
  }

LABEL_50:
  result = [(NSArray *)[(CALayer *)a2 sublayers] count];
  if (result)
  {
    WTF::TextStream::startGroup(a1);
    WTF::TextStream::operator<<();
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = [(CALayer *)a2 sublayers];
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v43)
    {
      v44 = *v49;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v49 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v48 + 1) + 8 * i);
          WTF::TextStream::startGroup(a1);
          dumpCALayer(a1, v46, v47);
          WTF::TextStream::endGroup(a1);
        }

        v43 = [(NSArray *)v42 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v43);
    }

    return WTF::TextStream::endGroup(a1);
  }

  return result;
}

void sub_19DB1A600(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1A8D0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, WTF::StringImpl *a21, char a22)
{
  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&a22, a2);
  _Unwind_Resume(a1);
}

void sub_19DB1AD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
    WTF::RefCounted<WebCore::ValidationBubble>::deref(v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1AE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB1AFA8(_Unwind_Exception *a1, void *a2)
{
  v5 = v4;
  WTF::fastFree(v5, a2);
  _Block_release(v3);
  CFRelease(*(v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<WTF::Observer<void ()(WebCore::NowPlayingMetadata const&)>>::~unique_ptr[abi:sn200100](uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v5 = *(v3 + 8);
    *(v3 + 8) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, a2);
    WTF::fastFree(v6, v7);
  }

  return a1;
}

void sub_19DB1B174(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  v12 = *(v10 + 16);
  if (v12)
  {
    *(v10 + 16) = v12 - 1;
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

void sub_19DB1B524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
  }

  _Unwind_Resume(a1);
}

void sub_19DB1B658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1B720(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1BAC0(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1BC20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB1BD7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1BE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB1C04C(_Unwind_Exception *a1)
{
  _Block_release(v2);
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[2];
  }

  _Unwind_Resume(a1);
}

void sub_19DB1C240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16)
{
  _Block_release(v17);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v19);
  }

  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, v19);
  }

  if (v16[2] == 1)
  {
    (*(*v16 + 8))(v16);
  }

  else
  {
    --v16[2];
  }

  _Unwind_Resume(a1);
}

void sub_19DB1C444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  v12 = v11;
  _Block_release(v12);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v14);
  }

  if (v10[2] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[2];
  }

  _Unwind_Resume(a1);
}

void sub_19DB1C624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  v12 = v11;
  _Block_release(v12);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v14);
  }

  if (v10[2] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[2];
  }

  _Unwind_Resume(a1);
}

void sub_19DB1C804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  v12 = v11;
  _Block_release(v12);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v14);
  }

  if (v10[2] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[2];
  }

  _Unwind_Resume(a1);
}

void sub_19DB1C9B0(_Unwind_Exception *a1)
{
  v3 = v2;
  _Block_release(v3);
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[2];
  }

  _Unwind_Resume(a1);
}

void sub_19DB1CB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB1CE48(_Unwind_Exception *a1)
{
  v3 = v2;
  _Block_release(v3);
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[2];
  }

  _Unwind_Resume(a1);
}

void sub_19DB1D0C8(_Unwind_Exception *a1)
{
  _Block_release(v2);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  _Unwind_Resume(a1);
}

void sub_19DB1D2F8(_Unwind_Exception *a1)
{
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v2);
  CFRelease(*(v3 + 8));
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  _Unwind_Resume(a1);
}

void sub_19DB1D42C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1DFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB1E354(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, WTF::StringImpl **a21)
{
  if (a21)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a21, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1E4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  _Block_object_dispose(&a14, 8);
  if (a20)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a20, v21);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 48) = 0;
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__5(uint64_t a1, void *a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  return result;
}

void sub_19DB1E6A8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a22, a2);
  _Unwind_Resume(a1);
}

void sub_19DB1E88C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1EAAC(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DB1EF9C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1F0E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1F234(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1F334(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

uint64_t API::WebsitePolicies::setVisibilityAdjustmentSelectors(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *(a1 + 60);
  if (v4)
  {
    v6 = *(a1 + 48);
    v7 = 16 * v4;
    do
    {
      v6 = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, a2) + 16;
      v7 -= 16;
    }

    while (v7);
  }

  return WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2);
}

void sub_19DB1FD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
  }

  if (a11)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB1FF1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2008C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2056C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB20624(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB20830(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB20A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB20D88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB212B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  _Block_release(0);
  _Block_release(v18);
  _Unwind_Resume(a1);
}

void sub_19DB2159C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = a20;
  a20 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  _Block_release(0);
  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v23);
  _Block_release(v20);
  _Unwind_Resume(a1);
}

void sub_19DB217E8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB21EB0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF *a19)
{
  WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v20, a2);
  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v19);
  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v19);
  WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v20, v22);
  if (a19)
  {
    WTF::fastFree(a19, v23);
  }

  _Unwind_Resume(a1);
}

void sub_19DB2251C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, WTF *a29)
{
  if (a29)
  {
    WTF::fastFree(a29, a2);
  }

  WTF::Persistence::Decoder::~Decoder(&a13);
  _Unwind_Resume(a1);
}

void sub_19DB2290C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Block_release(v10);
  _Unwind_Resume(a1);
}

void sub_19DB22B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
  }

  _Block_release(v10);
  _Unwind_Resume(a1);
}

void sub_19DB22CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB22E94(_Unwind_Exception *a1)
{
  _Block_release(v1);
  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB2319C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl **a9, WTF::StringImpl *a10)
{
  if (a9)
  {
    WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB23358(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl **a25)
{
  if (a25)
  {
    WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(a25, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB23688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, WTF::StringImpl *a14)
{
  v16 = *(v14 - 40);
  *(v14 - 40) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  _Block_release(0);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v17);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, v18);
  v20 = a14;
  a14 = 0;
  if (v20)
  {
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB23878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12)
{
  _Block_release(v12);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v14);
  v16 = a12;
  a12 = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB23C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  _Block_release(v10);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v12);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB23D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  _Block_release(v10);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v12);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB23EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  _Block_release(v10);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v12);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB23FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  _Block_release(v10);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v12);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB24158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB24250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB243C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16)
{
  _Block_release(v16);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v18);
  }

  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, v18);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB24534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16)
{
  _Block_release(v16);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v18);
  }

  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, v18);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB24AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, WTF::StringImpl *a28)
{
  _Block_release(v28);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a20);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a24);
  _Unwind_Resume(a1);
}

void sub_19DB24BC4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB24D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  _Block_release(v12);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v14);
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, v14);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB25108(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  objc_destroyWeak(v3);
  objc_destroyWeak(v2);
  bmalloc::api::tzoneFree(v1, v6);
  _Unwind_Resume(a1);
}

void sub_19DB2525C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB253B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB254A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB256F4(_Unwind_Exception *a1)
{
  v3 = v2;
  WebKit::ProcessThrottler::deref((v3 + 144));
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  _Unwind_Resume(a1);
}

void sub_19DB25954(_Unwind_Exception *a1)
{
  _Block_release(v2);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  _Unwind_Resume(a1);
}

void sub_19DB25AA0(_Unwind_Exception *a1)
{
  _Block_release(v2);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  _Unwind_Resume(a1);
}

void sub_19DB25BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Block_release(0);
  if (a38 == 1)
  {
    WebKit::WebPushMessage::~WebPushMessage(&a11, v39);
  }

  _Unwind_Resume(a1);
}

void sub_19DB25EC4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::NotificationData::~NotificationData(va, a2);
  _Unwind_Resume(a1);
}

void sub_19DB26034(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a43 == 1)
  {
    WebCore::NotificationData::~NotificationData(&a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2634C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a43 == 1)
  {
    WebCore::NotificationData::~NotificationData(&a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB26448(_Unwind_Exception *a1)
{
  _Block_release(v2);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  _Unwind_Resume(a1);
}

void sub_19DB2657C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  _Block_release(v11);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v13);
    }
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
  _Unwind_Resume(a1);
}

void sub_19DB2673C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  _Block_release(v11);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v13);
    }
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
  _Unwind_Resume(a1);
}

void sub_19DB26904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  _Block_release(v11);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v13);
    }
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
  _Unwind_Resume(a1);
}

void sub_19DB26ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  _Block_release(v11);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v13);
    }
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
  _Unwind_Resume(a1);
}

void sub_19DB26C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  _Block_release(v11);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v13);
    }
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
  _Unwind_Resume(a1);
}

void sub_19DB26F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  _Block_release(v13);
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v15);
    }
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
  _Block_release(v11);
  _Unwind_Resume(a1);
}

void sub_19DB27170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  _Block_release(v20);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v21 + 32);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a20);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v23);
  }

  if (a15)
  {
    if (atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a15, v23);
    }
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

uint64_t WebKit::toWebsiteDataType(WebKit *this, NSString *a2)
{
  if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeCookies"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 1;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeFetchCache"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 0x8000;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeDiskCache"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 2;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeMemoryCache"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 4;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeOfflineWebApplicationCache"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 8;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeSessionStorage"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 16;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeLocalStorage"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 32;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeWebSQLDatabases"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 64;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeIndexedDBDatabases"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 128;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeServiceWorkerRegistrations"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 0x4000;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeFileSystem"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 0x80000;
  }

  else if (([(WebKit *)this isEqualToString:@"_WKWebsiteDataTypeHSTSCache"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 512;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeMediaKeys"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 256;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeHashSalt"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 0x10000;
  }

  else if (([(WebKit *)this isEqualToString:@"WKWebsiteDataTypeSearchFieldRecentSearches"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 1024;
  }

  else if (([(WebKit *)this isEqualToString:@"_WKWebsiteDataTypeResourceLoadStatistics"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 4096;
  }

  else if (([(WebKit *)this isEqualToString:@"_WKWebsiteDataTypeCredentials"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 0x2000;
  }

  else if (([(WebKit *)this isEqualToString:@"_WKWebsiteDataTypeAdClickAttributions"]& 1) != 0 || ([(WebKit *)this isEqualToString:@"_WKWebsiteDataTypePrivateClickMeasurements"]& 1) != 0)
  {
    v3 = 0x100000000;
    v4 = 0x20000;
  }

  else if (([(WebKit *)this isEqualToString:@"_WKWebsiteDataTypeAlternativeServices"]& 1) != 0)
  {
    v4 = 0x40000;
    v3 = 0x100000000;
  }

  else
  {
    v6 = [(WebKit *)this isEqualToString:@"WKWebsiteDataTypeScreenTime"];
    v3 = 0x100000000;
    if (!v6)
    {
      v3 = 0;
    }

    v4 = 0x200000;
  }

  return v4 | v3;
}

void sub_19DB27584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB27670(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB27824(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB27E60(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a57 == 1)
  {
    WebCore::NotificationData::~NotificationData(&a25, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB27F94(_Unwind_Exception *a1)
{
  _Block_release(v1);
  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB2807C(_Unwind_Exception *a1)
{
  _Block_release(v1);
  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB28170(_Unwind_Exception *a1)
{
  _Block_release(v1);
  _Block_release(0);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c40_ZTSN3WTF9RetainPtrI16_WKWebPushActionEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_32c40_ZTSN3WTF9RetainPtrI16_WKWebPushActionEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v1)
  {
  }
}

uint64_t WebCore::WindowFeatures::wantsPopup(WebCore::WindowFeatures *this)
{
  if ((*this & 1) != 0 || (*(this + 8) & 1) != 0 || (*(this + 16) & 1) != 0 || (*(this + 24) & 1) != 0 || (*(this + 32) & 1) != 0 || (*(this + 37) & 1) != 0 || (*(this + 39) & 1) != 0 || (*(this + 41) & 1) != 0 || (*(this + 43) & 1) != 0 || (*(this + 45) & 1) != 0 || (*(this + 47) & 1) != 0 || *(this + 49) == 1)
  {
    if (*(this + 37) == 1)
    {
      v1 = *(this + 36);
    }

    else if ((*(this + 45) == 1 && (*(this + 44) & 1) != 0 || *(this + 43) == 1 && *(this + 42) == 1) && *(this + 39) == 1 && *(this + 38) == 1 && (*(this + 49) != 1 || *(this + 48) == 1) && *(this + 47) == 1 && *(this + 46) == 1 && *(this + 41) == 1)
    {
      v1 = *(this + 40) ^ 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_19DB28CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a2 + 12);
    if (v4 <= v5)
    {
      if (v5 > *(a1 + 8))
      {
        WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 12));
        v4 = *(a1 + 12);
      }
    }

    else
    {
      *(a1 + 12) = v5;
      v4 = v5;
    }

    if (v4)
    {
      memmove(*a1, *a2, 96 * v4 - 15);
      v6 = *(a1 + 12);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a2 + 12);
    if (v6 != v7)
    {
      v8 = (*a1 + 96 * v6);
      v9 = (*a2 + 96 * v6);
      v10 = 96 * v7 - 96 * v6;
      do
      {
        v11 = v9[1];
        *v8 = *v9;
        v8[1] = v11;
        v12 = v9[2];
        v13 = v9[3];
        v14 = v9[5];
        v8[4] = v9[4];
        v8[5] = v14;
        v8[2] = v12;
        v8[3] = v13;
        v8 += 6;
        v9 += 6;
        v10 -= 96;
      }

      while (v10);
      v6 = *(a2 + 12);
    }

    *(a1 + 12) = v6;
  }

  return a1;
}

void sub_19DB28E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB28F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10)
{
  if (a9)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB29028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB292A8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17, int a18, uint64_t a19, void *a20, void *a21, WTF *a22, int a23)
{
  if (a20)
  {
  }

  if (a21)
  {
  }

  if (a22)
  {
    WTF::fastFree(a22, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL47addBrowsingContextControllerMethodStubsIfNeededv_block_invoke()
{
  result = WTF::linkedOnOrAfterSDKWithBehavior();
  if ((result & 1) == 0)
  {
    v1 = objc_opt_class();
    v2 = NSSelectorFromString(&cfstr_Browsingcontex_0.isa);
    class_addMethod(v1, v2, browsingContextControllerMethodStubNil, "@@:");
    v3 = objc_opt_class();
    v4 = NSSelectorFromString(&cfstr_Browsingcontex_0.isa);

    return class_addMethod(v3, v4, browsingContextControllerMethodStubNonNil, "@@:");
  }

  return result;
}

void *browsingContextControllerMethodStubNonNil(objc_object *a1, objc_selector *a2)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

double WebKit::IconLoadingDelegate::operator delete(id *a1)
{
  objc_destroyWeak(a1 + 2);
  objc_destroyWeak(a1 + 1);
  if (*a1)
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(a1, v2);
  }

  return result;
}

WTF *std::__optional_storage_base<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct[abi:sn200100]<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(WTF *result, _DWORD *a2)
{
  if (result)
  {
    v2 = result;
    *result = 0;
    *(result + 1) = 0;
    result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(result, a2);
    *(v2 + 16) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19DB29954(_Unwind_Exception *exception_object, void *a2)
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

void ___ZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__ENK4__23clEv_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:a2 scale:0 orientation:*(a1 + 40)];
    v4 = 0;
  }

  else
  {
    createNSError(WKErrorUnknown, 0, &v5);
    v3 = 0;
    v4 = v5;
  }

  kdebug_trace();
  (*(*(a1 + 32) + 16))();
  if (v3)
  {
  }

  if (v4)
  {
  }
}

void sub_19DB29A34(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

double __copy_helper_block_e8_32c96_ZTSKZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__ENK4__23clEvEUlP7CGImageE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = _Block_copy(*(a2 + 32));
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
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

  if (!(v3 >> 29))
  {
    v5 = WTF::fastMalloc((8 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        ++*v9;
        *v5++ = v9;
        v8 -= 8;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DB29D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);

  _Unwind_Resume(a1);
}

uint64_t std::__optional_move_base<WebCore::WritingTools::Context,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *a1 = *a2;
    WebCore::AttributedString::AttributedString();
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_19DB29DC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) == 1)
  {
    MEMORY[0x19EB065D0](v1 + 16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<WebCore::WritingTools::Context,false>::__optional_copy_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *a1 = *a2;
    MEMORY[0x19EB065B0](a1 + 16, a2 + 16);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_19DB29EF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) == 1)
  {
    MEMORY[0x19EB065D0](v1 + 16);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2A084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  objc_destroyWeak((v11 + 56));

  _Unwind_Resume(a1);
}

void sub_19DB2A5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);

  _Unwind_Resume(a1);
}

uint64_t WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(uint64_t this, WTF::StringImpl *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    if (*(this + 16) == 1)
    {
      v5 = *(this + 8);
      if (v5)
      {
        WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v5, a2);
      }
    }

    return WTF::fastFree(v4, a2);
  }

  return this;
}

uint64_t WTF::ThreadSafeRefCounted<WTF::Box<WTF::RetainPtr<NSError>>::Data,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    v5 = *(this + 8);
    *(this + 8) = 0;
    if (v5)
    {
    }

    return WTF::fastFree(v4, a2);
  }

  return this;
}

const char *WTF::StringView::substring(const char *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 2);
  if (v3 <= a2)
  {
    return "";
  }

  if (v3 - a2 <= a3)
  {
    a3 = v3 - a2;
    if (!a2)
    {
      return *this;
    }
  }

  v4 = v3 - a2;
  if (this[12] == 1)
  {
    if (v4 >= a3)
    {
      return (*this + a2);
    }
  }

  else if (v4 >= a3)
  {
    return (*this + 2 * a2);
  }

  __break(1u);
  return this;
}

void sub_19DB2AB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  if (v12)
  {
  }

  if (a12)
  {
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *std::__optional_storage_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>>(WTF::StringImpl *result, uint64_t a2)
{
  v2 = result;
  if (*(result + 24) == *(a2 + 24))
  {
    if (*(result + 24))
    {

      return WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(result, a2);
    }
  }

  else if (*(result + 24))
  {
    result = *result;
    if (*v2)
    {
      result = WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(result, *(v2 + 2));
    }

    *(v2 + 24) = 0;
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 13) = 0;
    v3 = *a2;
    *a2 = 0;
    *result = v3;
    LODWORD(v3) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(result + 2) = v3;
    LODWORD(v3) = *(a2 + 12);
    *(a2 + 12) = 0;
    *(result + 3) = v3;
    LODWORD(v3) = *(a2 + 16);
    *(a2 + 16) = 0;
    *(result + 4) = v3;
    LOBYTE(v3) = *(a2 + 20);
    *(a2 + 20) = 0;
    *(result + 20) = v3;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a2 + 4);
  *(a2 + 4) = 0;
  v5 = *(a2 + 20);
  *(a2 + 20) = 0;
  v6 = *a1;
  *a1 = v3;
  v7 = a2[1];
  a2[1] = 0;
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  if (v6)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v6, v8);
  }

  return a1;
}

uint64_t WTF::TextStream::dumpProperty<WTF::String>(WTF::TextStream *a1)
{
  WTF::TextStream::startGroup(a1);
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();

  return WTF::TextStream::endGroup(a1);
}

uint64_t WTF::makeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unsigned __int8 a10)
{
  v15[0] = a1;
  v15[1] = a2;
  v14[0] = a3;
  v14[1] = a4;
  v13[0] = a5;
  v13[1] = a6;
  v12[0] = a7;
  v12[1] = a8;
  result = WTF::tryMakeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>(v15, v14, v13, v12, a9, &a10);
  if (!*a9)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>@<X0>(void *a1@<X0>, void *a2@<X2>, void *a3@<X4>, void *a4@<X6>, uint64_t *a5@<X8>, unsigned __int8 *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a1[1];
  v8 = v7 != 0;
  v9 = v7 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v28[0] = *a1;
  v28[1] = v9;
  if (v9 >> 31)
  {
    goto LABEL_17;
  }

  WTF::numberToStringAndSize();
  v36 = v13;
  v14 = a2[1];
  v8 = v14 != 0;
  v15 = v14 - 1;
  if (!v8)
  {
    v15 = 0;
  }

  v27[0] = *a2;
  v27[1] = v15;
  if (v15 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB2B144);
  }

  WTF::numberToStringAndSize();
  v34 = v16;
  v17 = a3[1];
  v8 = v17 != 0;
  v18 = v17 - 1;
  if (!v8)
  {
    v18 = 0;
  }

  v26[0] = *a3;
  v26[1] = v18;
  if (v18 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB2B164);
  }

  WTF::numberToStringAndSize();
  v32 = v19;
  v20 = a4[1];
  v8 = v20 != 0;
  v21 = v20 - 1;
  if (!v8)
  {
    v21 = 0;
  }

  v25[0] = *a4;
  v25[1] = v21;
  if (v21 >> 31)
  {
LABEL_17:
    __break(0xC471u);
    JUMPOUT(0x19DB2B124);
  }

  WTF::numberToStringAndSize();
  v30 = v22;
  v24 = *a6;
  return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>(v28, v35, v27, v33, v26, v31, v25, v29, a5, &v24);
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>@<X0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unsigned __int8 *a10)
{
  v52 = *MEMORY[0x1E69E9840];
  result = WTF::checkedSum<int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int>(*(a1 + 8), a2[7].i32[3], *(a3 + 8), *(a4 + 124), *(a5 + 8), *(a6 + 124), *(a7 + 8), *(a8 + 124), v46, 1);
  if (v46[0])
  {
    v20 = 0;
  }

  else
  {
    v21 = *a1;
    v22 = *(a1 + 8);
    v23 = a2[5];
    v51[4] = a2[4];
    v51[5] = v23;
    v24 = a2[7];
    v51[6] = a2[6];
    v51[7] = v24;
    v25 = a2[1];
    v51[0] = *a2;
    v51[1] = v25;
    v26 = a2[3];
    v51[2] = a2[2];
    v51[3] = v26;
    v27 = *a3;
    v28 = *(a3 + 8);
    v29 = *(a4 + 80);
    v50[4] = *(a4 + 64);
    v50[5] = v29;
    v30 = *(a4 + 112);
    v50[6] = *(a4 + 96);
    v50[7] = v30;
    v31 = *(a4 + 16);
    v50[0] = *a4;
    v50[1] = v31;
    v32 = *(a4 + 48);
    v50[2] = *(a4 + 32);
    v50[3] = v32;
    v33 = *a5;
    v34 = *(a5 + 8);
    v35 = *(a6 + 80);
    v49[4] = *(a6 + 64);
    v49[5] = v35;
    v36 = *(a6 + 112);
    v49[6] = *(a6 + 96);
    v49[7] = v36;
    v37 = *(a6 + 16);
    v49[0] = *a6;
    v49[1] = v37;
    v38 = *(a6 + 48);
    v49[2] = *(a6 + 32);
    v49[3] = v38;
    v39 = *a7;
    v40 = *(a7 + 8);
    v41 = *(a8 + 80);
    v48[4] = *(a8 + 64);
    v48[5] = v41;
    v42 = *(a8 + 112);
    v48[6] = *(a8 + 96);
    v48[7] = v42;
    v43 = *(a8 + 16);
    v48[0] = *a8;
    v48[1] = v43;
    v44 = *(a8 + 48);
    v48[2] = *(a8 + 32);
    v48[3] = v44;
    result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>(v47, 1, v21, v22, v51, v27, v28, v50, &v45, v33, v34, v49, v39, v40, v48, *a10);
    v20 = v45;
  }

  *a9 = v20;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, int8x16_t *a3@<X2>, unint64_t a4@<X3>, int8x16_t *a5@<X4>, int8x16_t *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, int8x16_t *a10, unint64_t a11, __int128 *a12, int8x16_t *a13, unint64_t a14, __int128 *a15, unsigned __int8 a16)
{
  v20 = result;
  v111 = *MEMORY[0x1E69E9840];
  v22 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v23 = v103.i64[0];
        if (v103.i64[0])
        {
          *v103.i64[0] = 2;
          *(v23 + 4) = v20;
          *(v23 + 8) = v23 + 20;
          *(v23 + 16) = 0;
          v26 = a5[5];
          v107 = a5[4];
          v108 = v26;
          v27 = a5[7];
          v109 = a5[6];
          v110 = v27;
          v28 = a5[1];
          v103 = *a5;
          v104 = v28;
          v29 = a5[3];
          v105 = a5[2];
          v106 = v29;
          v30 = *(a8 + 80);
          v99 = *(a8 + 64);
          v100 = v30;
          v31 = *(a8 + 112);
          v101 = *(a8 + 96);
          v102 = v31;
          v32 = *(a8 + 16);
          v95 = *a8;
          v96 = v32;
          v33 = *(a8 + 48);
          v97 = *(a8 + 32);
          v98 = v33;
          v34 = a12[5];
          v91 = a12[4];
          v92 = v34;
          v35 = a12[7];
          v93 = a12[6];
          v94 = v35;
          v36 = a12[1];
          v87 = *a12;
          v88 = v36;
          v37 = a12[3];
          v89 = a12[2];
          v90 = v37;
          v38 = a15[5];
          v83 = a15[4];
          v84 = v38;
          v39 = a15[7];
          v85 = a15[6];
          *__n = v39;
          v40 = a15[1];
          __src = *a15;
          v80 = v40;
          v41 = a15[3];
          v81 = a15[2];
          v82 = v41;
          result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>((v23 + 20), v22, a3, a4, &v103, a6, a7, &v95, a10, a11, &v87, a13, a14, &__src, a16);
        }

        goto LABEL_21;
      }

LABEL_17:
      v23 = 0;
      goto LABEL_21;
    }

LABEL_18:
    v23 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_21;
  }

  if (!result)
  {
    goto LABEL_18;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v23 = v103.i64[0];
  if (v103.i64[0])
  {
    v42 = a9;
    v24 = (v103.i64[0] + 20);
    *v103.i64[0] = 2;
    *(v23 + 4) = v20;
    *(v23 + 8) = v23 + 20;
    *(v23 + 16) = 4;
    v75 = a5[4];
    v76 = a5[5];
    v77 = a5[6];
    v78 = a5[7];
    v71 = *a5;
    v72 = a5[1];
    v73 = a5[2];
    v74 = a5[3];
    v65 = *(a8 + 32);
    v66 = *(a8 + 48);
    v63 = *a8;
    v64 = *(a8 + 16);
    v69 = *(a8 + 96);
    v70 = *(a8 + 112);
    v67 = *(a8 + 64);
    v68 = *(a8 + 80);
    v57 = a12[2];
    v58 = a12[3];
    v55 = *a12;
    v56 = a12[1];
    v61 = a12[6];
    v62 = a12[7];
    v59 = a12[4];
    v60 = a12[5];
    v49 = a15[2];
    v50 = a15[3];
    v47 = *a15;
    v48 = a15[1];
    v53 = a15[6];
    v54 = a15[7];
    v51 = a15[4];
    v52 = a15[5];
    if (a4)
    {
      if (a4 == 1)
      {
        goto LABEL_23;
      }

      memcpy((v23 + 20), a3, a4);
    }

    while (1)
    {
      if (v22 >= a4)
      {
        v83 = v75;
        v84 = v76;
        v85 = v77;
        *__n = v78;
        __src = v71;
        v80 = v72;
        v81 = v73;
        v82 = v74;
        if (v78.i32[3] < 0x7Du)
        {
          v25 = v22 - a4;
          v24 += a4;
          if (v78.i32[3])
          {
            if (v78.i32[3] == 1)
            {
              *v24 = __src;
            }

            else
            {
              memcpy(v24, &__src, v78.u32[3]);
            }
          }

          if (v25 >= v78.u32[3])
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_23:
      *v24 = a3->i8[0];
    }

    v107 = v67;
    v108 = v68;
    v109 = v69;
    v110 = v70;
    v103 = v63;
    v104 = v64;
    v105 = v65;
    v106 = v66;
    v99 = v59;
    v100 = v60;
    v101 = v61;
    v102 = v62;
    v95 = v55;
    v96 = v56;
    v97 = v57;
    v98 = v58;
    v91 = v51;
    v92 = v52;
    v93 = v53;
    v94 = v54;
    v87 = v47;
    v88 = v48;
    v89 = v49;
    v90 = v50;
    result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>(&v24[v78.u32[3]], (v25 - v78.u32[3]), a6, a7, &v103, a10->i8, a11, v95.i8, a13, a14, &v87, a16);
    a9 = v42;
  }

LABEL_21:
  *a9 = v23;
  return result;
}

void sub_19DB2B700(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>(char *a1, unint64_t a2, int8x16_t *a3, unint64_t a4, uint64_t a5, int8x16_t *a6, unint64_t a7, int8x16_t *a8, int8x16_t *a9, unint64_t a10, __int128 *a11, int8x16_t *a12, unint64_t a13, int8x16_t *a14, char a15)
{
  v102 = *MEMORY[0x1E69E9840];
  if (a4 < 0x40)
  {
    v17 = a1;
  }

  else
  {
    v17 = &a1[2 * (a4 & 0x7FFFFFFFFFFFFFC0)];
    v18 = 0uLL;
    v19 = a1;
    do
    {
      v103.val[0] = *a3;
      v20 = a3[1];
      v105.val[0] = a3[2];
      v21 = a3[3];
      a3 += 4;
      v22 = v21;
      v105.val[1] = 0uLL;
      v107.val[0] = v20;
      v103.val[1] = 0uLL;
      v23 = v19;
      vst2q_s8(v23, v103);
      v23 += 32;
      v107.val[1] = 0uLL;
      vst2q_s8(v23, v107);
      v24 = v19 + 64;
      vst2q_s8(v24, v105);
      v25 = v19 + 96;
      vst2q_s8(v25, *(&v18 - 1));
      v19 += 128;
    }

    while (v19 != v17);
  }

  while (v17 != &a1[2 * a4])
  {
    v26 = a3->u8[0];
    a3 = (a3 + 1);
    *v17 = v26;
    v17 += 2;
  }

  if (a2 < a4)
  {
    goto LABEL_20;
  }

  v27 = a2 - a4;
  v28 = &a1[2 * a4];
  v29 = *(a5 + 80);
  v72[4] = *(a5 + 64);
  v72[5] = v29;
  v30 = *(a5 + 112);
  v72[6] = *(a5 + 96);
  v73 = v30;
  v31 = *(a5 + 16);
  v72[0] = *a5;
  v72[1] = v31;
  v32 = *(a5 + 48);
  v72[2] = *(a5 + 32);
  v72[3] = v32;
  v68 = a8[4];
  v69 = a8[5];
  v70 = a8[6];
  v71 = a8[7];
  v64 = *a8;
  v65 = a8[1];
  v66 = a8[2];
  v67 = a8[3];
  v60 = a11[4];
  v61 = a11[5];
  v62 = a11[6];
  v63 = a11[7];
  v56 = *a11;
  v57 = a11[1];
  v58 = a11[2];
  v59 = a11[3];
  v52 = a14[4];
  v53 = a14[5];
  v54 = a14[6];
  v55 = a14[7];
  v48 = *a14;
  v49 = a14[1];
  v50 = a14[2];
  v51 = a14[3];
  WTF::StringTypeAdapter<double,void>::writeTo<char16_t>(v72, v28);
  v33 = v27 - HIDWORD(v73);
  if (v27 < HIDWORD(v73))
  {
    goto LABEL_20;
  }

  v34 = &v28[2 * HIDWORD(v73)];
  v94 = v68;
  v95 = v69;
  v96 = v70;
  v97 = v71;
  v90 = v64;
  v91 = v65;
  v92 = v66;
  v93 = v67;
  v84 = v58;
  v85 = v59;
  v82 = v56;
  v83 = v57;
  v88 = v62;
  v89 = v63;
  v86 = v60;
  v87 = v61;
  v76 = v50;
  v77 = v51;
  v74 = v48;
  v75 = v49;
  v80 = v54;
  v81 = v55;
  v78 = v52;
  v79 = v53;
  if (a7 < 0x40)
  {
    v35 = &v28[2 * HIDWORD(v73)];
  }

  else
  {
    v35 = &v34[2 * (a7 & 0x7FFFFFFFFFFFFFC0)];
    v36 = 0uLL;
    v37 = &v28[2 * HIDWORD(v73)];
    do
    {
      v104.val[0] = *a6;
      v38 = a6[1];
      v106.val[0] = a6[2];
      v39 = a6[3];
      a6 += 4;
      v40 = v39;
      v106.val[1] = 0uLL;
      v108.val[0] = v38;
      v104.val[1] = 0uLL;
      v41 = v37;
      vst2q_s8(v41, v104);
      v41 += 32;
      v108.val[1] = 0uLL;
      vst2q_s8(v41, v108);
      v42 = v37 + 64;
      vst2q_s8(v42, v106);
      v43 = v37 + 96;
      vst2q_s8(v43, *(&v36 - 1));
      v37 += 128;
    }

    while (v37 != v35);
  }

  while (v35 != &v34[2 * a7])
  {
    v44 = a6->u8[0];
    a6 = (a6 + 1);
    *v35 = v44;
    v35 += 2;
  }

  if (v33 < a7 || (v45 = v33 - a7, v46 = &v34[2 * a7], v98[4] = v94, v98[5] = v95, v98[6] = v96, v99 = v97, v98[0] = v90, v98[1] = v91, v98[2] = v92, v98[3] = v93, WTF::StringTypeAdapter<double,void>::writeTo<char16_t>(v98, v46), v45 < v99.u32[3]))
  {
LABEL_20:
    __break(1u);
  }

  v101[4] = v86;
  v101[5] = v87;
  v101[6] = v88;
  v101[7] = v89;
  v101[0] = v82;
  v101[1] = v83;
  v101[2] = v84;
  v101[3] = v85;
  v100[4] = v78;
  v100[5] = v79;
  v100[6] = v80;
  v100[7] = v81;
  v100[0] = v74;
  v100[1] = v75;
  v100[2] = v76;
  v100[3] = v77;
  return WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>(&v46[2 * v99.u32[3]], v45 - v99.u32[3], a9, a10, v101, a12, a13, v100, a15);
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>(_BYTE *__dst, char *a2, _BYTE *__src, size_t __n, _OWORD *a5, char *a6, size_t a7, char *a8, _BYTE *a9, size_t a10, __int128 *a11, uint64_t a12)
{
  LODWORD(v16) = __n;
  v18 = __dst;
  v47 = *MEMORY[0x1E69E9840];
  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_31;
    }

    __dst = memcpy(__dst, __src, __n);
  }

  while (1)
  {
    if (a2 >= v16)
    {
      v19 = a5[5];
      __srca[4] = a5[4];
      __srca[5] = v19;
      v20 = a5[7];
      __srca[6] = a5[6];
      *__na = v20;
      v21 = a5[1];
      __srca[0] = *a5;
      __srca[1] = v21;
      v22 = a5[3];
      __srca[2] = a5[2];
      __srca[3] = v22;
      v35 = *(a8 + 2);
      v36 = *(a8 + 3);
      v33 = *a8;
      v34 = *(a8 + 1);
      v39 = *(a8 + 6);
      v40 = *(a8 + 7);
      v37 = *(a8 + 4);
      v38 = *(a8 + 5);
      v27 = a11[2];
      v28 = a11[3];
      v25 = *a11;
      v26 = a11[1];
      v31 = a11[6];
      v32 = a11[7];
      v29 = a11[4];
      v30 = a11[5];
      a8 = HIDWORD(__na[1]);
      if (HIDWORD(__na[1]) < 0x7D)
      {
        v23 = &a2[-v16];
        v16 = &v18[v16];
        if (HIDWORD(__na[1]))
        {
          if (HIDWORD(__na[1]) == 1)
          {
            *v16 = __srca[0];
          }

          else
          {
            __dst = memcpy(v16, __srca, HIDWORD(__na[1]));
          }
        }

        v24 = v23 >= a8;
        a2 = (v23 - a8);
        if (v24)
        {
          v16 = &a8[v16];
          if (a7)
          {
            if (a7 == 1)
            {
              *v16 = *a6;
            }

            else
            {
              __dst = memcpy(v16, a6, a7);
            }
          }

          if (a2 >= a7)
          {
            v43[4] = v37;
            v43[5] = v38;
            v43[6] = v39;
            *v44 = v40;
            v43[0] = v33;
            v43[1] = v34;
            v43[2] = v35;
            v43[3] = v36;
            v18 = HIDWORD(v40);
            if (HIDWORD(v40) < 0x7D)
            {
              a6 = &a2[-a7];
              a7 = &v16[a7];
              if (HIDWORD(v40))
              {
                if (HIDWORD(v40) == 1)
                {
                  *a7 = v43[0];
                }

                else
                {
                  __dst = memcpy(a7, v43, HIDWORD(v40));
                }
              }

              a2 = &a6[-HIDWORD(v40)];
              if (a6 >= HIDWORD(v40))
              {
                a6 = a10;
                a7 += HIDWORD(v40);
                if (a10)
                {
                  if (a10 == 1)
                  {
                    *a7 = *a9;
                  }

                  else
                  {
                    __dst = memcpy(a7, a9, a10);
                  }
                }

                if (a2 >= a10)
                {
                  v45[4] = v29;
                  v45[5] = v30;
                  v45[6] = v31;
                  v46 = v32;
                  v45[0] = v25;
                  v45[1] = v26;
                  v45[2] = v27;
                  v45[3] = v28;
                  LODWORD(v16) = HIDWORD(v32);
                  if (HIDWORD(v32) < 0x7D)
                  {
                    a6 = &a2[-a10];
                    a7 += a10;
                    if (HIDWORD(v32))
                    {
                      if (HIDWORD(v32) == 1)
                      {
                        *a7 = v45[0];
                      }

                      else
                      {
                        __dst = memcpy(a7, v45, HIDWORD(v46));
                      }
                    }

                    if (a6 > HIDWORD(v32))
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_31:
    *v18 = *__src;
  }

  *(a7 + HIDWORD(v32)) = a12;
  return __dst;
}

int8x16_t *WTF::StringTypeAdapter<double,void>::writeTo<char16_t>(int8x16_t *result, char *a2)
{
  v2 = result[7].u32[3];
  if (v2 >= 0x7D)
  {
    __break(1u);
  }

  else
  {
    v3 = &a2[2 * v2];
    if (v2 >= 0x40)
    {
      v13.val[0] = *result;
      v4 = result[1];
      v14.val[0] = result[2];
      v5 = result[3];
      result += 4;
      v15.val[1] = 0uLL;
      v15.val[0] = v5;
      v14.val[1] = 0u;
      v16.val[0] = v4;
      v13.val[1] = 0u;
      v6 = 2 * (v2 & 0x40);
      v7 = a2;
      vst2q_s8(v7, v13);
      v8 = &v7[v6];
      v9 = a2 + 32;
      v16.val[1] = 0u;
      vst2q_s8(v9, v16);
      v10 = a2 + 64;
      vst2q_s8(v10, v14);
      v11 = a2 + 96;
      vst2q_s8(v11, v15);
      a2 = v8;
    }

    while (a2 != v3)
    {
      v12 = result->u8[0];
      result = (result + 1);
      *a2 = v12;
      a2 += 2;
    }
  }

  return result;
}

int8x16_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>(char *a1, unint64_t a2, int8x16_t *a3, unint64_t a4, uint64_t a5, int8x16_t *a6, unint64_t a7, int8x16_t *a8, char a9)
{
  v62 = *MEMORY[0x1E69E9840];
  if (a4 < 0x40)
  {
    v11 = a1;
  }

  else
  {
    v11 = &a1[2 * (a4 & 0x7FFFFFFFFFFFFFC0)];
    v12 = 0uLL;
    v13 = a1;
    do
    {
      v63.val[0] = *a3;
      v14 = a3[1];
      v65.val[0] = a3[2];
      v15 = a3[3];
      a3 += 4;
      v16 = v15;
      v65.val[1] = 0uLL;
      v67.val[0] = v14;
      v63.val[1] = 0uLL;
      v17 = v13;
      vst2q_s8(v17, v63);
      v17 += 32;
      v67.val[1] = 0uLL;
      vst2q_s8(v17, v67);
      v18 = v13 + 64;
      vst2q_s8(v18, v65);
      v19 = v13 + 96;
      vst2q_s8(v19, *(&v12 - 1));
      v13 += 128;
    }

    while (v13 != v11);
  }

  while (v11 != &a1[2 * a4])
  {
    v20 = a3->u8[0];
    a3 = (a3 + 1);
    *v11 = v20;
    v11 += 2;
  }

  if (a2 < a4)
  {
    goto LABEL_20;
  }

  v21 = a2 - a4;
  v22 = *(a5 + 80);
  v23 = &a1[2 * a4];
  v50[4] = *(a5 + 64);
  v50[5] = v22;
  v24 = *(a5 + 112);
  v50[6] = *(a5 + 96);
  v51 = v24;
  v25 = *(a5 + 16);
  v50[0] = *a5;
  v50[1] = v25;
  v26 = *(a5 + 48);
  v50[2] = *(a5 + 32);
  v50[3] = v26;
  v46 = a8[4];
  v47 = a8[5];
  v48 = a8[6];
  v49 = a8[7];
  v42 = *a8;
  v43 = a8[1];
  v44 = a8[2];
  v45 = a8[3];
  WTF::StringTypeAdapter<double,void>::writeTo<char16_t>(v50, v23);
  v27 = v21 - HIDWORD(v51);
  if (v21 < HIDWORD(v51))
  {
    goto LABEL_20;
  }

  v28 = &v23[2 * HIDWORD(v51)];
  v56 = v46;
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  if (a7 < 0x40)
  {
    v29 = &v23[2 * HIDWORD(v51)];
  }

  else
  {
    v29 = &v28[2 * (a7 & 0x7FFFFFFFFFFFFFC0)];
    v30 = 0uLL;
    v31 = &v23[2 * HIDWORD(v51)];
    do
    {
      v64.val[0] = *a6;
      v32 = a6[1];
      v66.val[0] = a6[2];
      v33 = a6[3];
      a6 += 4;
      v34 = v33;
      v66.val[1] = 0uLL;
      v68.val[0] = v32;
      v64.val[1] = 0uLL;
      v35 = v31;
      vst2q_s8(v35, v64);
      v35 += 32;
      v68.val[1] = 0uLL;
      vst2q_s8(v35, v68);
      v36 = v31 + 64;
      vst2q_s8(v36, v66);
      v37 = v31 + 96;
      vst2q_s8(v37, *(&v30 - 1));
      v31 += 128;
    }

    while (v31 != v29);
  }

  while (v29 != &v28[2 * a7])
  {
    v38 = a6->u8[0];
    a6 = (a6 + 1);
    *v29 = v38;
    v29 += 2;
  }

  if (v27 < a7 || (v39 = v27 - a7, v40 = &v28[2 * a7], v60[4] = v56, v60[5] = v57, v60[6] = v58, v61 = v59, v60[0] = v52, v60[1] = v53, v60[2] = v54, v60[3] = v55, result = WTF::StringTypeAdapter<double,void>::writeTo<char16_t>(v60, v40), v39 <= v61.u32[3]))
  {
LABEL_20:
    __break(1u);
  }

  *&v40[2 * v61.u32[3]] = a9;
  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, _BYTE *a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v14[0] = a1;
  v14[1] = a2;
  v13[0] = a3;
  v13[1] = a4;
  v11 = a8;
  v12 = a7;
  v10 = a5;
  result = WTF::tryMakeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>(v14, v13, &v10, a6);
  if (!*a6)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>@<X0>(void *a1@<X0>, void *a2@<X2>, char *a3@<X4>, _BYTE *a4@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v17[0] = *a1;
  v17[1] = v7;
  if (v7 >> 31)
  {
    goto LABEL_8;
  }

  WTF::numberToStringAndSize();
  v21 = v10;
  v11 = a2[1];
  v6 = v11 != 0;
  v12 = v11 - 1;
  if (!v6)
  {
    v12 = 0;
  }

  v16[0] = *a2;
  v16[1] = v12;
  if (v12 >> 31)
  {
LABEL_8:
    __break(0xC471u);
    JUMPOUT(0x19DB2C148);
  }

  WTF::numberToStringAndSize();
  v19 = v13;
  v15 = *a3;
  return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>(v17, v20, v16, v18, &v15, a4);
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>@<X0>(uint64_t result@<X0>, int8x16_t *a2@<X1>, uint64_t a3@<X2>, int8x16_t *a4@<X3>, char *a5@<X4>, _BYTE *a6@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4[7].i32[3];
  if (v6 < 0 || ((v7 = *(a3 + 8), v8 = __OFADD__(v6, 1), v9 = v6 + 1, !v8) ? (v10 = 0) : (v10 = 1), (v7 & 0x80000000) != 0 || (v10 & 1) != 0 || ((v11 = a2[7].i32[3], v12 = v7 + v9, !__OFADD__(v7, v9)) ? (v13 = 0) : (v13 = 1), v11 < 0 || (v13 & 1) != 0 || ((v14 = result, v15 = *(result + 8), v8 = __OFADD__(v11, v12), v16 = v11 + v12, !v8) ? (v17 = 0) : (v17 = 1), (v15 & 0x80000000) != 0 || (v17 & 1) != 0 || (result = (v15 + v16), __OFADD__(v15, v16))))))
  {
    *a6 = 0;
  }

  else
  {
    v18 = *v14;
    v19 = a2[5];
    v29[4] = a2[4];
    v29[5] = v19;
    v20 = a2[7];
    v29[6] = a2[6];
    v29[7] = v20;
    v21 = a2[1];
    v29[0] = *a2;
    v29[1] = v21;
    v22 = a2[3];
    v29[2] = a2[2];
    v29[3] = v22;
    v23 = *a3;
    v24 = a4[5];
    v28[4] = a4[4];
    v28[5] = v24;
    v25 = a4[7];
    v28[6] = a4[6];
    v28[7] = v25;
    v26 = a4[1];
    v28[0] = *a4;
    v28[1] = v26;
    v27 = a4[3];
    v28[2] = a4[2];
    v28[3] = v27;
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>(result, 1, v18, v15, v29, v23, v7, v28, a6, *a5);
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, int8x16_t *a3@<X2>, unint64_t a4@<X3>, int8x16_t *a5@<X4>, int8x16_t *a6@<X5>, unint64_t a7@<X6>, int8x16_t *a8@<X7>, _BYTE *a9@<X8>, char a10)
{
  v15 = result;
  v67 = *MEMORY[0x1E69E9840];
  v17 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v18 = v59.i64[0];
        if (v59.i64[0])
        {
          *v59.i64[0] = 2;
          *(v18 + 4) = v15;
          *(v18 + 8) = v18 + 20;
          *(v18 + 16) = 0;
          v25 = a5[5];
          v63 = a5[4];
          v64 = v25;
          v26 = a5[7];
          v65 = a5[6];
          v66 = v26;
          v27 = a5[1];
          v59 = *a5;
          v60 = v27;
          v28 = a5[3];
          v61 = a5[2];
          v62 = v28;
          v29 = a8[5];
          v55 = a8[4];
          v56 = v29;
          v30 = a8[7];
          v57 = a8[6];
          *__n = v30;
          v31 = a8[1];
          __src = *a8;
          v52 = v31;
          v32 = a8[3];
          v53 = a8[2];
          v54 = v32;
          result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<char,void>>((v18 + 20), v17, a3, a4, &v59, a6, a7, &__src, a10);
        }

        goto LABEL_31;
      }

LABEL_27:
      v18 = 0;
      goto LABEL_31;
    }

LABEL_28:
    v18 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_31;
  }

  if (!result)
  {
    goto LABEL_28;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v18 = v59.i64[0];
  if (v59.i64[0])
  {
    v19 = a9;
    a9 = (v59.i64[0] + 20);
    *v59.i64[0] = 2;
    *(v18 + 4) = v15;
    *(v18 + 8) = v18 + 20;
    *(v18 + 16) = 4;
    v47 = a5[4];
    v48 = a5[5];
    v49 = a5[6];
    v50 = a5[7];
    v43 = *a5;
    v44 = a5[1];
    v45 = a5[2];
    v46 = a5[3];
    v37 = a8[2];
    v38 = a8[3];
    v35 = *a8;
    v36 = a8[1];
    v41 = a8[6];
    v42 = a8[7];
    v39 = a8[4];
    v40 = a8[5];
    if (a4)
    {
      if (a4 == 1)
      {
        goto LABEL_33;
      }

      result = memcpy((v18 + 20), a3, a4);
    }

    while (1)
    {
      if (v17 >= a4)
      {
        v55 = v47;
        v56 = v48;
        v57 = v49;
        *__n = v50;
        __src = v43;
        v52 = v44;
        v53 = v45;
        v54 = v46;
        if (v50.i32[3] < 0x7Du)
        {
          v20 = v17 - a4;
          a4 = &a9[a4];
          a9 = v19;
          if (v50.i32[3])
          {
            if (v50.i32[3] == 1)
            {
              *a4 = __src.i8[0];
            }

            else
            {
              result = memcpy(a4, &__src, v50.u32[3]);
            }
          }

          v21 = v20 >= v50.u32[3];
          v17 = v20 - v50.u32[3];
          if (v21)
          {
            v22 = (a4 + v50.u32[3]);
            if (a7)
            {
              if (a7 == 1)
              {
                *v22 = a6->i8[0];
              }

              else
              {
                result = memcpy(v22, a6, a7);
              }
            }

            if (v17 >= a7)
            {
              v63 = v39;
              v64 = v40;
              v65 = v41;
              v66 = v42;
              v59 = v35;
              v60 = v36;
              v61 = v37;
              v62 = v38;
              v19 = v42.u32[3];
              if (v42.i32[3] < 0x7Du)
              {
                v23 = a7;
                a7 = v17 - a7;
                v24 = &v22[v23];
                if (v42.i32[3])
                {
                  if (v42.i32[3] == 1)
                  {
                    *v24 = v59.i8[0];
                  }

                  else
                  {
                    result = memcpy(v24, &v59, v66.u32[3]);
                  }
                }

                if (a7 > v42.u32[3])
                {
                  break;
                }
              }
            }
          }
        }
      }

      __break(1u);
LABEL_33:
      *a9 = a3->i8[0];
    }

    v24[v42.u32[3]] = a10;
  }

LABEL_31:
  *a9 = v18;
  return result;
}

void sub_19DB2C5B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::tryMakeString<double>@<X0>(uint64_t *a1@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  result = WTF::numberToStringAndSize();
  HIDWORD(v13) = v3;
  if ((v3 & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v14[4] = v10;
    v14[5] = v11;
    v14[6] = v12;
    v14[7] = v13;
    v14[0] = v6;
    v14[1] = v7;
    v14[2] = v8;
    v14[3] = v9;
    result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<double,void>>(v3, 1, v14, &v5);
    v4 = v5;
  }

  *a1 = v4;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<double,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = result;
  v25 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v7 = v17.i64[0];
        if (v17.i64[0])
        {
          v12 = (v17.i64[0] + 20);
          *v17.i64[0] = 2;
          *(v7 + 4) = v5;
          *(v7 + 8) = v7 + 20;
          *(v7 + 16) = 0;
          v13 = *(a3 + 80);
          v21 = *(a3 + 64);
          v22 = v13;
          v14 = *(a3 + 112);
          v23 = *(a3 + 96);
          *__n = v14;
          v15 = *(a3 + 16);
          v17 = *a3;
          v18 = v15;
          v16 = *(a3 + 48);
          v19 = *(a3 + 32);
          v20 = v16;
          result = WTF::StringTypeAdapter<double,void>::writeTo<char16_t>(&v17, v12);
        }

        goto LABEL_15;
      }

LABEL_11:
      v7 = 0;
      goto LABEL_15;
    }

LABEL_12:
    v7 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_15;
  }

  if (!result)
  {
    goto LABEL_12;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v7 = v17.i64[0];
  if (v17.i64[0])
  {
    result = v17.i64[0] + 20;
    *v17.i64[0] = 2;
    *(v7 + 4) = v5;
    *(v7 + 8) = v7 + 20;
    *(v7 + 16) = 4;
    v8 = *(a3 + 80);
    v21 = *(a3 + 64);
    v22 = v8;
    v9 = *(a3 + 112);
    v23 = *(a3 + 96);
    *__n = v9;
    v10 = *(a3 + 16);
    v17 = *a3;
    v18 = v10;
    v11 = *(a3 + 48);
    v19 = *(a3 + 32);
    v20 = v11;
    if (HIDWORD(v9) >= 0x7D)
    {
      __break(1u);
      goto LABEL_17;
    }

    if (HIDWORD(v9))
    {
      if (HIDWORD(v9) != 1)
      {
        result = memcpy(result, &v17, HIDWORD(__n[1]));
        goto LABEL_15;
      }

LABEL_17:
      *result = v17.i8[0];
    }
  }

LABEL_15:
  *a4 = v7;
  return result;
}

void sub_19DB2C81C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2CAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

WebKit::WebsiteDataRecord *WebKit::WebsiteDataRecord::WebsiteDataRecord(WebKit::WebsiteDataRecord *this, const WebKit::WebsiteDataRecord *a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  *(this + 2) = *(a2 + 2);
  *(this + 16) = 0;
  *(this + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *(this + 2) = *(a2 + 2);
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::HashTable(this + 3, a2 + 3);
    *(this + 32) = 1;
  }

  WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::HashTable(this + 5, a2 + 5);
  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(this + 6, a2 + 6);
  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(this + 7, a2 + 7);
  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(this + 8, a2 + 8);
  WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(this + 9, a2 + 9);
  return this;
}

void sub_19DB2CC14(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 32) == 1)
  {
    v4 = *(v2 + 24);
    if (v4)
    {
      WTF::fastFree((v4 - 16), a2);
    }
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

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::HashTable(uint64_t *a1, _DWORD **a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 - 3);
    if (v4)
    {
      v6 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(*(v3 - 3));
      v7 = WTF::fastZeroedMalloc((16 * v6 + 16));
      *a1 = (v7 + 4);
      v7[2] = v6 - 1;
      v7[3] = v6;
      *v7 = 0;
      v7[1] = v4;
      v8 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::begin(a2);
      v10 = *a2;
      if (*a2)
      {
        v10 += 4 * *(v10 - 1);
      }

      while (v8 != v10)
      {
        v11 = *a1;
        if (*a1)
        {
          v12 = *(v11 - 8);
        }

        else
        {
          v12 = 0;
        }

        v13 = 0;
        v14 = *v8 + ~(*v8 << 15);
        v15 = (9 * (v14 ^ (v14 >> 10))) ^ ((9 * (v14 ^ (v14 >> 10))) >> 6);
        v16 = (v15 + ~(v15 << 11)) ^ ((v15 + ~(v15 << 11)) >> 16);
        do
        {
          v17 = v16 & v12;
          v18 = *(v11 + 16 * (v16 & v12));
          v16 = ++v13 + (v16 & v12);
        }

        while (v18);
        v19 = *v8;
        v8 += 4;
        *(v11 + 16 * v17) = v19;
        while (v8 != v9 && (*v8 + 1) <= 1)
        {
          v8 += 4;
        }
      }
    }
  }

  return a1;
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::begin(_DWORD **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[4 * v2];
  if (!*(result - 3))
  {
    return &result[4 * v2];
  }

  if (v2)
  {
    v4 = 16 * v2;
    while ((*result + 1) <= 1)
    {
      result += 4;
      v4 -= 16;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::HashTable(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 - 12);
    if (v4)
    {
      v6 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(*(v3 - 12));
      v7 = WTF::fastMalloc(((32 * v6) | 0x10));
      v8 = v7;
      v9 = v7 + 16;
      if (v6)
      {
        bzero((v7 + 16), 32 * v6);
      }

      *a1 = v9;
      v8[2] = v6 - 1;
      v8[3] = v6;
      *v8 = 0;
      v8[1] = v4;
      v10 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(a2);
      v11 = v10;
      v13 = v12;
      if (*a2)
      {
        v14 = *a2 + 32 * *(*a2 - 4);
      }

      else
      {
        v14 = 0;
      }

      if (v14 != v10)
      {
        do
        {
          v22 = v11;
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v23 = -1640531527;
          v24 = 0;
          v25 = 0;
          WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v23, v11);
          v17 = WTF::SuperFastHash::hash(&v23);
          v18 = 0;
          do
          {
            v19 = v17 & v16;
            isNull = WebCore::SecurityOriginData::isNull((v15 + 32 * v19));
            v17 = ++v18 + v19;
          }

          while (!isNull);
          WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>::translate<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::HashTable(WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc> const&)::{lambda(void)#1}>(v15 + 32 * v19, v11, &v22);
          do
          {
            v11 += 2;
          }

          while (v11 != v13 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v11));
        }

        while (v11 != v14);
      }
    }
  }

  return a1;
}

uint64_t WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>::translate<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::HashTable(WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc> const&)::{lambda(void)#1}>(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  LOBYTE(v7) = 0;
  v9 = -1;
  LODWORD(v4) = *(v3 + 24);
  if (*(v3 + 24))
  {
    if (v4 == 255)
    {
      goto LABEL_8;
    }

    v7 = *v3;
  }

  else
  {
    v5 = *v3;
    if (*v3)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *&v7 = v5;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *(&v7 + 1) = v4;
    v8 = *(v3 + 4);
    LOBYTE(v4) = *(v3 + 24);
  }

  v9 = v4;
LABEL_8:
  WebCore::SecurityOriginData::operator=(a1);
  return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v7);
}

unint64_t WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 80 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x3333334)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB2D1F8);
    }

    v3 = *a1;
    v4 = (*a1 + 80 * *(a1 + 12));
    v5 = 80 * a2;
    v6 = WTF::fastMalloc((80 * a2));
    *(a1 + 8) = v5 / 0x50;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::WebsiteDataRecord>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebKit::WebsiteDataRecord>::move(WTF::StringImpl *a1, WTF::StringImpl *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a1 + v6);
      v8 = a3 + v6;
      v9 = *(a1 + v6);
      *(a1 + v6) = 0;
      *v8 = v9;
      *(v8 + 8) = *(a1 + v6 + 8);
      *(v8 + 16) = 0;
      *(v8 + 32) = 0;
      if (*(a1 + v6 + 32) == 1)
      {
        *(v8 + 24) = 0;
        v10 = *(v7 + 2);
        v11 = *(v7 + 3);
        *(v7 + 3) = 0;
        *(v8 + 16) = v10;
        *(v8 + 24) = v11;
        *(v8 + 32) = 1;
      }

      *(v8 + 40) = 0;
      v12 = *(v7 + 5);
      *(v7 + 5) = 0;
      *(v8 + 40) = v12;
      *(v8 + 48) = 0;
      v13 = *(v7 + 6);
      *(v7 + 6) = 0;
      *(v8 + 48) = v13;
      *(v8 + 56) = 0;
      v14 = *(v7 + 7);
      *(v7 + 7) = 0;
      *(v8 + 56) = v14;
      *(v8 + 64) = 0;
      v15 = *(v7 + 8);
      *(v7 + 8) = 0;
      *(v8 + 64) = v15;
      *(v8 + 72) = 0;
      v16 = *(v7 + 9);
      *(v7 + 9) = 0;
      *(v8 + 72) = v16;
      WebKit::WebsiteDataRecord::~WebsiteDataRecord(v7, a2);
      v6 += 80;
    }

    while ((v17 + 80) != a2);
  }
}

void WebKit::WebsiteDataRecord::~WebsiteDataRecord(WebKit::WebsiteDataRecord *this, WTF::StringImpl *a2)
{
  v3 = *(this + 9);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 8);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 7);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 6);
  if (v6)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  v7 = *(this + 5);
  if (v7)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  if (*(this + 32) == 1)
  {
    v8 = *(this + 3);
    if (v8)
    {
      WTF::fastFree((v8 - 16), a2);
    }
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }
  }
}

void WebsiteDataStoreClient::~WebsiteDataStoreClient(id *this)
{
  objc_destroyWeak(this + 2);
  objc_destroyWeak(this + 1);
}

{
  objc_destroyWeak(this + 2);
  objc_destroyWeak(this + 1);

  bmalloc::api::tzoneFree(this, v2);
}

WebCore::NotificationData *WebCore::NotificationData::NotificationData(WebCore::NotificationData *this, const WebCore::NotificationData *a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  v5 = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = v5;
  v6 = *(a2 + 5);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 5) = v6;
  v7 = *(a2 + 6);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 6) = v7;
  v8 = *(a2 + 7);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 7) = v8;
  v9 = *(a2 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(this + 8) = v9;
  v10 = *(a2 + 9);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(this + 9) = v10;
  *(this + 80) = *(a2 + 80);
  v11 = *(a2 + 11);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *(this + 11) = v11;
  v12 = *(a2 + 12);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *(this + 12) = v12;
  v13 = *(a2 + 104);
  *(this + 120) = *(a2 + 120);
  *(this + 104) = v13;
  v14 = *(a2 + 13);
  v16 = *(a2 + 10);
  v15 = *(a2 + 11);
  *(this + 12) = *(a2 + 12);
  *(this + 13) = v14;
  *(this + 10) = v16;
  *(this + 11) = v15;
  *(this + 9) = *(a2 + 9);
  v17 = *(a2 + 59);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 59) = v17;
  if (v17)
  {
    v18 = WTF::fastMalloc(v17);
    *(this + 58) = v17;
    *(this + 28) = v18;
    memcpy(v18, *(a2 + 28), *(a2 + 59));
  }

  *(this + 120) = *(a2 + 120);
  return this;
}

void sub_19DB2D504(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = v2[12];
  v2[12] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = v2[11];
  v2[11] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = v2[9];
  v2[9] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = v2[8];
  v2[8] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = v2[7];
  v2[7] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = v2[6];
  v2[6] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = v2[5];
  v2[5] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *v2;
  *v2 = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2DAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *_ZN3WTF6Detail15CallableWrapperIZZ61__WKWebView_closeAllMediaPresentationsWithCompletionHandler__EN3__9clIN6WebKit29VideoPresentationModelContextEN7WebCore29VideoPresentationInterfaceIOSEEEDaRT_RT0_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10F8F70;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZ61__WKWebView_closeAllMediaPresentationsWithCompletionHandler__EN3__9clIN6WebKit29VideoPresentationModelContextEN7WebCore29VideoPresentationInterfaceIOSEEEDaRT_RT0_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10F8F70;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::BlockPtr<void ()(void)>,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10F8FE8;
  _Block_release(*(a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::BlockPtr<void ()(void)>,void>::~CallableWrapper(const void **a1)
{
  *a1 = &unk_1F10F8FE8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

void sub_19DB2E52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
  }

  if (v16)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2E704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2E990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *aBlock)
{
  _Block_release(v28);

  _Unwind_Resume(a1);
}

void ___ZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__EN4__24clEv_block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__EN4__24clEvENUlvE_clEv_block_invoke;
  block[3] = &__block_descriptor_104_e8_32c99_ZTSKZZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__EN4__24clEvENUlvE_clEvEUlvE__e5_v8__0l;
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v2 = *(a1 + 96);
  v8 = *(a1 + 88);
  *(a1 + 96) = 0;
  v10 = v1;
  if (v1)
  {
    v3 = v1;
  }

  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  aBlock = _Block_copy(v2);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  _Block_release(v2);
  if (v1)
  {
  }

  _Block_release(aBlock);
  v4 = v10;
  v10 = 0;
  if (v4)
  {
  }
}

void sub_19DB2EAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  _Block_release(v20);

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c87_ZTSKZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__EN4__24clEvEUlvE_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  result = _Block_copy(*(a2 + 96));
  *(a1 + 96) = result;
  return result;
}

void sub_19DB2EB94(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c87_ZTSKZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__EN4__24clEvEUlvE_(uint64_t a1)
{
  _Block_release(*(a1 + 96));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
  }
}

void ___ZZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__EN4__24clEvENUlvE_clEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = ___ZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__ENK4__23clEv_block_invoke;
  v11[3] = &__block_descriptor_48_e8_32c96_ZTSKZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__ENK4__23clEvEUlP7CGImageE__e18_v16__0__CGImage__8l;
  v9 = _Block_copy(*(a1 + 96));
  v10 = *(a1 + 88);
  aBlock = _Block_copy(v9);
  v13 = v10;
  [v2 _snapshotRectAfterScreenUpdates:v3 rectInViewCoordinates:v11 intoImageOfWidth:v4 completionHandler:{v5, v6, v7, v8}];
  _Block_release(v9);
  _Block_release(aBlock);
}

void sub_19DB2ECF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock)
{
  _Block_release(aBlock);
  _Block_release(v13);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c99_ZTSKZZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__EN4__24clEvENUlvE_clEvEUlvE_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  result = _Block_copy(*(a2 + 96));
  *(a1 + 96) = result;
  return result;
}

void sub_19DB2ED74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c99_ZTSKZZZ61__WKWebView_takeSnapshotWithConfiguration_completionHandler__EN4__24clEvENUlvE_clEvEUlvE_(uint64_t a1)
{
  _Block_release(*(a1 + 96));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
  }
}

void sub_19DB2EF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2F0FC(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DB2F5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2F7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2F90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB2FA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB30318(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_ullong *a14)
{
  if (!a14)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v16 = a14[1];
    if ((v16 & 1) == 0)
    {
      break;
    }

    v17 = a14[1];
    atomic_compare_exchange_strong_explicit(a14 + 1, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v16)
    {
      if (v16 == 3)
      {
        (*(*a14 + 8))(a14);
      }

LABEL_7:
      if (v14[4] == 1)
      {
        (*(*v14 + 8))(v14);
      }

      else
      {
        --v14[4];
      }

      _Unwind_Resume(exception_object);
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(a14[1], a2);
  goto LABEL_7;
}

unint64_t WTF::Vector<WebKit::WebViewDataType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::WebViewDataType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebViewDataType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void **WTF::Vector<WebKit::WebViewDataType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(void **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 30)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 3);
      v6 = WTF::fastMalloc((4 * a2));
      *(v3 + 2) = v2;
      *v3 = v6;
      result = memcpy(v6, v4, 4 * v5);
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

void sub_19DB30974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
  }

  WTF::Persistence::Encoder::~Encoder(va);
  _Unwind_Resume(a1);
}

uint64_t WTF::Persistence::Coder<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::encodeForPersistence<WTF::Persistence::Encoder>(uint64_t a1, uint64_t *a2)
{
  WTF::Persistence::Encoder::operator<<();
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(a2);
  v4 = result;
  v6 = v5;
  if (*a2)
  {
    v7 = *a2 + 72 * *(*a2 - 4);
  }

  else
  {
    v7 = 0;
  }

  if (v7 != result)
  {
    do
    {
      WTF::Persistence::Coder<WebCore::ClientOrigin>::encodeForPersistence();
      WTF::Persistence::Encoder::operator<<();
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin((v4 + 64));
      v9 = result;
      v11 = v10;
      v12 = *(v4 + 64);
      if (v12)
      {
        v8 = (v12 + 16 * *(v12 - 4));
      }

      else
      {
        v8 = 0;
      }

      if (v8 != result)
      {
        do
        {
          WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
          result = WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
          do
          {
            v9 += 2;
          }

          while (v9 != v11 && (*v9 + 1) <= 1);
        }

        while (v9 != v8);
      }

      do
      {
        v4 += 72;
        if (v4 == v6)
        {
          break;
        }

        result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v4);
      }

      while (result);
    }

    while (v4 != v7);
  }

  return result;
}

mpark *std::__optional_storage_base<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,false>>(mpark *result, unsigned __int8 *a2)
{
  v2 = result;
  if (*(result + 8) == a2[8])
  {
    if (*(result + 8))
    {
      v3 = *a2;
      *a2 = 0;
      result = *result;
      *v2 = v3;
      if (result)
      {

        return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(result, a2);
      }
    }
  }

  else if (*(result + 8))
  {
    result = *result;
    if (*v2)
    {
      result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(result, a2);
    }

    *(v2 + 8) = 0;
  }

  else
  {
    *result = 0;
    v4 = *a2;
    *a2 = 0;
    *result = v4;
    *(result + 8) = 1;
  }

  return result;
}

uint64_t WTF::Persistence::Decoder::operator>><WTF::String,(void *)0>(uint64_t a1, WTF::StringImpl *a2)
{
  WTF::Persistence::Coder<WTF::String>::decodeForPersistence();
  std::__optional_storage_base<WTF::String,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::String,false>>(a2, &v7);
  if (v8 == 1)
  {
    v5 = v7;
    v7 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  return a1;
}

void sub_19DB30DE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB30FBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB31190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t API::FrameTreeNode::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = API::Object::newObject(0x190uLL, 61);
  result = API::FrameTreeNode::FrameTreeNode(v6, a1, a2);
  *a3 = v6;
  return result;
}

uint64_t API::FrameTreeNode::FrameTreeNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = API::Object::Object(a1);
  *v6 = &unk_1F111B0E8;
  *(v6 + 8) = *a2;
  WebCore::ResourceRequestBase::RequestData::RequestData(v6 + 24, a2 + 8);
  v7 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 176) = v7;
  v8 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a1 + 184) = v8;
  v9 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a1 + 192) = v9;
  v10 = *(a2 + 184);
  *(a1 + 208) = *(a2 + 192);
  *(a1 + 200) = v10;
  v11 = *(a2 + 200);
  *(a2 + 200) = 0;
  *(a1 + 216) = v11;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor((a1 + 224));
  v12 = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a1 + 256) = v12;
  v13 = *(a2 + 248);
  v14 = *(a2 + 264);
  v15 = *(a2 + 280);
  *(a1 + 312) = *(a2 + 296);
  *(a1 + 280) = v14;
  *(a1 + 296) = v15;
  *(a1 + 264) = v13;
  v16 = *(a2 + 304);
  *(a2 + 304) = 0;
  *(a1 + 320) = v16;
  v17 = *(a2 + 312);
  v18 = *(a2 + 328);
  *(a1 + 360) = *(a2 + 344);
  *(a1 + 328) = v17;
  *(a1 + 344) = v18;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 368, (a2 + 352));
  CFRetain(*(a3 + 8));
  *(a1 + 384) = a3;
  return a1;
}

void sub_19DB31344(_Unwind_Exception *a1, void *a2)
{
  WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 46), a2);
  v5 = v2[40];
  v2[40] = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = v2[32];
  v2[32] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor((v2 + 28));
  v7 = v2[27];
  v2[27] = 0;
  if (v7)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v2 + 3));
  _Unwind_Resume(a1);
}

void sub_19DB315AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB317B0(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  CFRelease(*(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_19DB31A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v9)
  {
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB31F14(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, WTF::StringImpl *a17, WTF::StringImpl *a18)
{
  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (a16)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB320A8()
{
  if (v0)
  {
    JUMPOUT(0x19DB32094);
  }

  JUMPOUT(0x19DB32098);
}

uint64_t WTF::makeString<unsigned long long,char,unsigned long long>@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<unsigned long long,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>(&v8, &v7, &v6, a4);
  if (!*a4)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<unsigned long long,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>@<X0>(uint64_t result@<X0>, char *a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = 0;
  v6 = *result;
  v7 = *result;
  do
  {
    ++v5;
    v8 = v7 > 9;
    v7 /= 0xAuLL;
  }

  while (v8);
  v9 = 0;
  v10 = *a3;
  v11 = *a3;
  do
  {
    ++v9;
    v8 = v11 > 9;
    v11 /= 0xAuLL;
  }

  while (v8);
  if ((v9 & 0x80000000) == 0)
  {
    v12 = v9 + 1;
    v13 = __OFADD__(v9, 1);
    if ((v5 & 0x80000000) == 0 && !v13)
    {
      result = (v5 + v12);
      if (!__OFADD__(v5, v12))
      {
        return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<unsigned long long,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>(result, 1, v6, *a2, v10, a4);
      }
    }
  }

  *a4 = 0;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<unsigned long long,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, _DWORD *a5@<X4>, void *a6@<X8>)
{
  v9 = result;
  v11 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v12 = v21;
        if (!v21)
        {
          goto LABEL_18;
        }

        *v21 = 2;
        v12[1] = v9;
        *(v12 + 1) = v12 + 5;
        v12[4] = 0;
        v20 = a3;
        result = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<char16_t>(&v20, v12 + 10, v11);
        LODWORD(v17) = 0;
        v18 = v20;
        do
        {
          v17 = (v17 + 1);
          v16 = v18 > 9;
          v18 /= 0xAuLL;
        }

        while (v16);
        if (v17 < v9)
        {
          v19 = v12 + v17 + 10;
          *v19 = a4;
          v21 = a5;
          result = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<char16_t>(&v21, v19 + 1, ~v17 + v11);
          goto LABEL_18;
        }

        goto LABEL_19;
      }

LABEL_11:
      v12 = 0;
      goto LABEL_18;
    }

LABEL_12:
    v12 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_18;
  }

  if (!result)
  {
    goto LABEL_12;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v12 = v21;
  if (!v21)
  {
LABEL_18:
    *a6 = v12;
    return result;
  }

  v13 = v21 + 5;
  *v21 = 2;
  v12[1] = v9;
  *(v12 + 1) = v12 + 5;
  v12[4] = 4;
  v20 = a3;
  result = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(&v20, v12 + 20, v11);
  LODWORD(v14) = 0;
  v15 = v20;
  do
  {
    v14 = (v14 + 1);
    v16 = v15 > 9;
    v15 /= 0xAuLL;
  }

  while (v16);
  if (v14 < v9)
  {
    *(v13 + v14) = a4;
    v21 = a5;
    result = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(&v21, v13 + v14 + 1, ~v14 + v11);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_19DB32360(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0x2AAAAAB)
  {
    v5 = 96 * v3;
    v6 = WTF::fastMalloc((96 * v3));
    *(v2 + 8) = v5 / 0x60;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = 0;
      v9 = *a2;
      v10 = *a2 + 96 * v7;
      do
      {
        v11 = v9 + v8;
        v12 = v6 + v8;
        *(v6 + v8) = *(v9 + v8);
        v13 = *(v9 + v8 + 8);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        *(v12 + 8) = v13;
        *(v12 + 16) = 0;
        *(v12 + 80) = 0;
        if (*(v11 + 80) == 1)
        {
          v14 = *(v9 + v8 + 16);
          if (v14)
          {
            atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
          }

          *(v12 + 16) = v14;
          v15 = *(v9 + v8 + 24);
          if (v15)
          {
            atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
          }

          *(v6 + v8 + 24) = v15;
          v16 = v9 + v8;
          v17 = *(v9 + v8 + 32);
          if (v17)
          {
            atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          }

          v18 = v6 + v8;
          *(v18 + 32) = v17;
          v19 = *(v16 + 40);
          *(v18 + 56) = *(v16 + 56);
          *(v18 + 40) = v19;
          *(v18 + 72) = *(v16 + 72);
          *(v12 + 80) = 1;
        }

        *(v6 + v8 + 88) = *(v11 + 88);
        v8 += 96;
      }

      while (v11 + 96 != v10);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DB3268C(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB328F4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11)
{
  if (v12)
  {
  }

  if (v11)
  {
    WTF::fastFree(v11, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB32BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB32D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::Ref<WebCore::SharedMemory,WTF::RawPtrTraits<WebCore::SharedMemory>,WTF::DefaultRefDerefTraits<WebCore::SharedMemory>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v6);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

void sub_19DB32F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB33120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DB332F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB33514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::ThreadSafeRefCounted<WebCore::DataSegment,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    v5 = *(this + 24);
    if (v5 <= 1)
    {
      if (*(this + 24))
      {
        v8 = *(this + 8);
        *(v4 + 8) = 0;
        if (v8)
        {
          CFRelease(v8);
        }
      }

      else
      {
        v7 = *(this + 8);
        if (v7)
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          WTF::fastFree(v7, a2);
        }
      }
    }

    else if (v5 == 2)
    {
      WTF::FileSystemImpl::MappedFileData::~MappedFileData((this + 8));
    }

    else if (v5 == 3)
    {
      v6 = *(this + 8);
      *(v4 + 8) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    *(v4 + 24) = -1;

    return WTF::fastFree(v4, a2);
  }

  return this;
}

void sub_19DB338B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *cf, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, void *a17)
{
  if (a17)
  {
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (cf)
  {
    if (atomic_fetch_add_explicit(cf, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(cf, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB33D20(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v5)
  {
  }

  if (v4)
  {
    WTF::fastFree(v4, a2);
  }

  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }
  }

  std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(va, a2);
  _Unwind_Resume(a1);
}

uint64_t std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(uint64_t a1, void *a2)
{
  if (!*(a1 + 24))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      WTF::fastFree(v3, a2);
    }

    v4 = *a1;
    *a1 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  v3 = *(a2 + 24);
  if (v3 != 255)
  {
    if (*(a2 + 24))
    {
      *a1 = *a2;
    }

    else
    {
      std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100](a1, a2);
      LOBYTE(v3) = *(a2 + 24);
    }

    *(a1 + 24) = v3;
  }

  return a1;
}

void sub_19DB33EF8(_Unwind_Exception *exception_object, void *a2)
{
  if (!*(v2 + 24))
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      WTF::fastFree(v4, a2);
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

  *(v2 + 24) = -1;
  _Unwind_Resume(exception_object);
}

void *std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100](void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  a1[1] = 0;
  a1[2] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a1 + 1), a2 + 2);
  return a1;
}

void sub_19DB33F8C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB341E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB34460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf)
{
  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::RefCounted<WebKit::ProvisionalPageProxy>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::ProvisionalPageProxy::~ProvisionalPageProxy((result - 6));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void sub_19DB34C14(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
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

void sub_19DB34FE4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11)
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

void sub_19DB3533C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11)
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

void sub_19DB35640(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DB35810(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DB359BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DB35B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10)
{
  if (a9)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB35D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t API::ApplicationManifest::create@<X0>(uint64_t a1@<X0>, API::Object **a2@<X8>)
{
  v4 = API::Object::newObject(0x120uLL, 39);
  v5 = API::Object::Object(v4);
  *v5 = &unk_1F10FAA30;
  result = WebCore::ApplicationManifest::ApplicationManifest(v5 + 16, a1);
  *a2 = v4;
  return result;
}

void API::ApplicationManifest::~ApplicationManifest(API::ApplicationManifest *this, void *a2)
{
  WebCore::ApplicationManifest::~ApplicationManifest((this + 16), a2);
}

{
  WebCore::ApplicationManifest::~ApplicationManifest((this + 16), a2);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WebCore::ApplicationManifest::ApplicationManifest(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(a1 + 16) = v5;
  v6 = *(a2 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(a1 + 24) = v6;
  v7 = *(a2 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(a1 + 32) = v7;
  v8 = *(a2 + 40);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a1 + 40) = v8;
  v9 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v9;
  *(a1 + 80) = *(a2 + 80);
  v10 = *(a2 + 88);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(a1 + 88) = v10;
  v11 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v11;
  v12 = *(a2 + 128);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *(a1 + 128) = v12;
  v13 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v13;
  v14 = *(a2 + 168);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *(a1 + 168) = v14;
  v15 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v15;
  v16 = *(a2 + 208);
  *(a1 + 208) = v16;
  if ((v16 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 1u);
  }

  v17 = *(a2 + 216);
  *(a1 + 216) = v17;
  if ((v17 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v17 & 0xFFFFFFFFFFFFLL), 1u);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 224, a2 + 224);
  WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 240, (a2 + 240));
  WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 256, (a2 + 256));
  return a1;
}

void sub_19DB35FAC(_Unwind_Exception *a1, void *a2)
{
  WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 240, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 224, v4);
  v6 = *(v2 + 216);
  if ((v6 & 0x8000000000000) != 0)
  {
    v16 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, v5);
    }
  }

  v7 = *(v2 + 208);
  if ((v7 & 0x8000000000000) != 0)
  {
    v17 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      WTF::fastFree(v17, v5);
    }
  }

  v8 = *(v2 + 168);
  *(v2 + 168) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  v9 = *(v2 + 128);
  *(v2 + 128) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = *(v2 + 88);
  *(v2 + 88) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  v11 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v5);
  }

  v12 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v5);
  }

  v13 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v5);
  }

  v14 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v5);
  }

  v15 = *v2;
  *v2 = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v5);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0x38E38E4)
  {
    v5 = 72 * v3;
    v6 = WTF::fastMalloc((72 * v3));
    *(v2 + 8) = v5 / 0x48;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = *a2;
      v9 = *a2 + 72 * v7;
      v10 = v6 + 40;
      v11 = v8 + 40;
      do
      {
        v13 = v11 - 40;
        v12 = *(v11 - 40);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        *(v10 - 40) = v12;
        v14 = *(v11 - 16);
        *(v10 - 32) = *(v11 - 32);
        *(v10 - 16) = v14;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v10, v11);
        v15 = *(v11 + 16);
        if (v15)
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        }

        *(v10 + 16) = v15;
        *(v10 + 24) = *(v11 + 24);
        v10 += 72;
        v11 += 72;
      }

      while (v13 + 72 != v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DB3622C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v5 = *(v3 - 40);
  *(v3 - 40) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 26))
  {
    v5 = WTF::fastMalloc((v3 << 6));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = *a2;
      v8 = (*a2 + (v6 << 6));
      v9 = v5 + 48;
      v10 = (v7 + 48);
      do
      {
        v12 = v10 - 6;
        v11 = *(v10 - 6);
        if (v11)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        *(v9 - 48) = v11;
        v13 = *(v10 - 5);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        *(v9 - 40) = v13;
        v14 = *(v10 - 1);
        *(v9 - 32) = *(v10 - 2);
        *(v9 - 16) = v14;
        WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v9, v10);
        v9 += 64;
        v10 += 8;
      }

      while (v12 + 8 != v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DB3633C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v5 = *(v3 - 40);
  *(v3 - 40) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(v3 - 48);
  *(v3 - 48) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB36674(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WTF::BlockPtr<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::BlockPtr<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::BlockPtr<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::BlockPtr<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
        *v8++ = v11;
        v12 = *v10++;
        _Block_release(v12);
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

void sub_19DB373A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v22)
  {
  }

  _Unwind_Resume(a1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZ72__WKWebView_WKTextExtraction___requestTextExtraction_completionHandler__ENK5__111clIN7WebCore14TextExtraction4ItemEEEDaOT_EUlRS8_E_NS4_9FloatRectEJRKSC_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10F9DB8;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZ72__WKWebView_WKTextExtraction___requestTextExtraction_completionHandler__ENK5__111clIN7WebCore14TextExtraction4ItemEEEDaOT_EUlRS8_E_NS4_9FloatRectEJRKSC_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10F9DB8;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

float _ZN3WTF6Detail15CallableWrapperIZZ72__WKWebView_WKTextExtraction___requestTextExtraction_completionHandler__ENK5__111clIN7WebCore14TextExtraction4ItemEEEDaOT_EUlRS8_E_NS4_9FloatRectEJRKSC_EE4callESE_(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  if (v2 && (v3 = *(v2 + 656)) != 0)
  {
    v5 = v3;
    v6 = *(a1 + 8);
    WebCore::FloatRect::operator CGRect();
    [v6 convertRect:v3 fromView:?];
    v12.origin.x = v7;
    v12.origin.y = v8;
    v12.size.width = v9;
    v12.size.height = v10;
    WebCore::FloatRect::FloatRect(&v13, &v12);
  }

  else
  {
    v13 = *a2;
  }

  return *&v13;
}

_DWORD *WTF::RefCounted<WebCore::ValidationBubble>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB07050](result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void sub_19DB37A90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB380DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WTF::BlockPtr<void ()(BOOL)>,void,BOOL>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FA088;
  _Block_release(*(a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::BlockPtr<void ()(BOOL)>,void,BOOL>::~CallableWrapper(const void **a1)
{
  *a1 = &unk_1F10FA088;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

void sub_19DB38848(_Unwind_Exception *exception_object, void *a2)
{
  if (v3)
  {
  }

  if (v2)
  {
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
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

  if (!(v3 >> 28))
  {
    v5 = WTF::fastMalloc((16 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = *a2 + 16 * v6;
      do
      {
        v9 = *v7;
        if (*v7)
        {
          atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        }

        *v5 = v9;
        v10 = v7[1];
        if (v10)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        v5[1] = v10;
        v5 += 2;
        v7 += 2;
      }

      while (v7 != v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 80 * v3;
    do
    {
      WebKit::WebsiteDataRecord::~WebsiteDataRecord(v4, a2);
      v4 = (v6 + 80);
      v5 -= 80;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

void sub_19DB38D80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
  }

  WTF::Persistence::Encoder::~Encoder(va);
  _Unwind_Resume(a1);
}

void sub_19DB39114(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB39288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB394E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB39710(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, a2);
  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v4);
  _Unwind_Resume(a1);
}

void sub_19DB398B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB3A260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebsiteDataStoreClient::requestStorageSpace(uint64_t a1, WebCore::SecurityOriginData *a2, WebCore::SecurityOriginData *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (*(a1 + 24) == 1 && (WeakRetained = objc_loadWeakRetained((a1 + 16))) != 0)
  {

    Weak = objc_loadWeak((a1 + 16));
    WebKit::CompletionHandlerCallChecker::create(Weak, sel_requestStorageSpace_frameOrigin_quota_currentSize_spaceRequired_decisionHandler_, &v34);
    v16 = *a7;
    *a7 = 0;
    v17 = v34;
    v18 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v18 = MEMORY[0x1E69E9818];
    v18[1] = 50331650;
    v18[2] = WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebsiteDataStoreClient::requestStorageSpace(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::{lambda(unsigned long long)#1}>(WebsiteDataStoreClient::requestStorageSpace(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::{lambda(unsigned long long)#1})::{lambda(void *,unsigned long long)#1}::__invoke;
    v18[3] = &WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebsiteDataStoreClient::requestStorageSpace(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::{lambda(unsigned long long)#1}>(WebsiteDataStoreClient::requestStorageSpace(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::{lambda(unsigned long long)#1})::descriptor;
    v18[4] = v16;
    v18[5] = v17;
    WebCore::SecurityOriginData::toString(v32, a2);
    MEMORY[0x19EB01DD0](v33, v32, 0);
    v20 = v32[0];
    v32[0] = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }

    WebCore::SecurityOriginData::toString(&v31, a3);
    MEMORY[0x19EB01DD0](v32, &v31, 0);
    v22 = v31;
    v31 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    v23 = objc_loadWeak((a1 + 16));
    WTF::URL::createCFURL(&v31, v33);
    v24 = v31;
    WTF::URL::createCFURL(&v30, v32);
    [v23 requestStorageSpace:v24 frameOrigin:v30 quota:a4 currentSize:a5 spaceRequired:a6 decisionHandler:v18];
    v26 = v30;
    v30 = 0;
    if (v26)
    {
    }

    v27 = v31;
    v31 = 0;
    if (v27)
    {
    }

    v28 = v32[0];
    v32[0] = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v25);
    }

    v29 = v33[0];
    v33[0] = 0;
    if (v29)
    {
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v25);
      }
    }

    _Block_release(v18);
  }

  else
  {

    WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>::operator()(a7);
  }
}

void sub_19DB3AA98(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17)
{
  if (a10)
  {
  }

  if (a11)
  {
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a17)
  {
    if (atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a17, a2);
    }
  }

  _Block_release(v17);
  _Unwind_Resume(a1);
}

void sub_19DB3AB58()
{
  if (v1)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v1);
  }

  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  JUMPOUT(0x19DB3AB50);
}

void WebsiteDataStoreClient::didReceiveAuthenticationChallenge(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 25) == 1 && (WeakRetained = objc_loadWeakRetained((a1 + 16))) != 0)
  {

    v15 = *(*a2 + 8);
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }

      v5 = v15;
    }

    Weak = objc_loadWeak((a1 + 16));
    WebKit::CompletionHandlerCallChecker::create(Weak, sel_didReceiveAuthenticationChallenge_completionHandler_, &v16);
    v7 = *a2;
    *a2 = 0;
    v8 = v16;
    v9 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v9 = MEMORY[0x1E69E9818];
    v9[1] = 50331650;
    v9[2] = WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebsiteDataStoreClient::didReceiveAuthenticationChallenge(WTF::Ref<WebKit::AuthenticationChallengeProxy,WTF::RawPtrTraits<WebKit::AuthenticationChallengeProxy>,WTF::DefaultRefDerefTraits<WebKit::AuthenticationChallengeProxy>> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(WebsiteDataStoreClient::didReceiveAuthenticationChallenge(WTF::Ref<WebKit::AuthenticationChallengeProxy,WTF::RawPtrTraits<WebKit::AuthenticationChallengeProxy>,WTF::DefaultRefDerefTraits<WebKit::AuthenticationChallengeProxy>> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::{lambda(void *,NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}::__invoke;
    v9[3] = &WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebsiteDataStoreClient::didReceiveAuthenticationChallenge(WTF::Ref<WebKit::AuthenticationChallengeProxy,WTF::RawPtrTraits<WebKit::AuthenticationChallengeProxy>,WTF::DefaultRefDerefTraits<WebKit::AuthenticationChallengeProxy>> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(WebsiteDataStoreClient::didReceiveAuthenticationChallenge(WTF::Ref<WebKit::AuthenticationChallengeProxy,WTF::RawPtrTraits<WebKit::AuthenticationChallengeProxy>,WTF::DefaultRefDerefTraits<WebKit::AuthenticationChallengeProxy>> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::descriptor;
    v9[4] = v7;
    v9[5] = v8;
    [objc_loadWeak((a1 + 16)) didReceiveAuthenticationChallenge:v15 completionHandler:v9];
    _Block_release(v9);
    if (v15)
    {
    }
  }

  else
  {
    v10 = *(*a2 + 472);
    WebCore::CredentialBase::CredentialBase(&v16);
    v18 = 0;
    WebKit::AuthenticationDecisionListener::completeChallenge(v10);
    v12 = v18;
    v18 = 0;
    if (v12)
    {
    }

    v13 = v17;
    v17 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v16;
    v16 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }
  }
}

void sub_19DB3AD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v10);
  }

  if (v11)
  {
    CFRelease(*(v11 + 8));
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebsiteDataStoreClient::openWindowFromServiceWorker(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 26) == 1 && (WeakRetained = objc_loadWeakRetained((a1 + 16))) != 0 && (WeakRetained, (v8 = objc_loadWeakRetained((a1 + 8))) != 0))
  {

    Weak = objc_loadWeak((a1 + 16));
    WebKit::CompletionHandlerCallChecker::create(Weak, sel_websiteDataStore_openWindow_fromServiceWorkerOrigin_completionHandler_, &v23);
    v10 = *a4;
    *a4 = 0;
    v11 = v23;
    v12 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v12 = MEMORY[0x1E69E9818];
    v12[1] = 50331650;
    v12[2] = WTF::BlockPtr<void ()(WKWebView *)>::fromCallable<WebsiteDataStoreClient::openWindowFromServiceWorker(WTF::String const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::{lambda(WKWebView *)#1}>(WebsiteDataStoreClient::openWindowFromServiceWorker(WTF::String const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::{lambda(WKWebView *)#1})::{lambda(void *,WKWebView *)#1}::__invoke;
    v12[3] = &WTF::BlockPtr<void ()(WKWebView *)>::fromCallable<WebsiteDataStoreClient::openWindowFromServiceWorker(WTF::String const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::{lambda(WKWebView *)#1}>(WebsiteDataStoreClient::openWindowFromServiceWorker(WTF::String const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::{lambda(WKWebView *)#1})::descriptor;
    v12[4] = v10;
    v12[5] = v11;
    WTF::URL::URL(v21, a2);
    WTF::URL::createCFURL(&v22, v21);
    v14 = v21[0];
    v21[0] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    API::SecurityOrigin::create(v21);
    v15 = objc_loadWeak((a1 + 16));
    v16 = objc_loadWeak((a1 + 8));
    v17 = v22;
    v18 = *(v21[0] + 1);
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {
      [v15 websiteDataStore:v16 openWindow:v17 fromServiceWorkerOrigin:v18 completionHandler:v12];
      v19 = v21[0];
      v21[0] = 0;
      if (v19)
      {
        CFRelease(*(v19 + 1));
      }

      v20 = v22;
      v22 = 0;
      if (v20)
      {
      }

      _Block_release(v12);
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)>::operator()(a4);
  }
}