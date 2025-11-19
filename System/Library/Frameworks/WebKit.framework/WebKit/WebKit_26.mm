uint64_t IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, WTF::StringImpl **a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v30 = a2[3];
    if (v30)
    {
      if (v6)
      {
        (*(*v30 + 16))(v30);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_40;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_40:
    *a2 = 0;
    a2[1] = 0;
    v31 = a2[3];
    if (v31 && v6)
    {
      (*(*v31 + 16))(v31, v5);
    }

    *a1 = 0;
    *(a1 + 16) = 0;
LABEL_28:
    v27 = *a2;
    v28 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v28)
      {
        return (*(*result + 16))(result, v27);
      }
    }

    return result;
  }

  a2[2] = (v4 + 8);
  if (!v4)
  {
    goto LABEL_40;
  }

  v8 = *v4;
  v34 = 0;
  v35 = 0;
  if (v8 < 0x20000)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    LODWORD(v35) = v8;
    v34 = WTF::fastMalloc((8 * v8));
    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>>(&v32, a2);
      if ((v33 & 1) == 0)
      {
        goto LABEL_27;
      }

      v9 = HIDWORD(v35);
      if (HIDWORD(v35) != v35)
      {
        break;
      }

      v10 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v34, HIDWORD(v35) + 1, &v32);
      v11 = HIDWORD(v35);
      v12 = HIDWORD(v35) + 1;
      v13 = v34;
      v14 = *v10;
      *v10 = 0;
      *(v13 + v11) = v14;
      HIDWORD(v35) = v12;
      if (v33)
      {
        goto LABEL_15;
      }

LABEL_17:
      if (!--v8)
      {
        goto LABEL_18;
      }
    }

    v15 = v32;
    v32 = 0;
    *(v34 + HIDWORD(v35)) = v15;
    HIDWORD(v35) = v9 + 1;
LABEL_15:
    v16 = v32;
    v32 = 0;
    if (v16)
    {
      WTF::RefCounted<WebCore::ApplePayError>::deref((v16 + 8), v5);
    }

    goto LABEL_17;
  }

  do
  {
    IPC::Decoder::decode<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>>(&v32, a2);
    if ((v33 & 1) == 0)
    {
LABEL_27:
      *a1 = 0;
      *(a1 + 16) = 0;
      WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v5);
      goto LABEL_28;
    }

    v19 = HIDWORD(v35);
    if (HIDWORD(v35) == v35)
    {
      v20 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v34, HIDWORD(v35) + 1, &v32);
      v21 = HIDWORD(v35);
      v22 = HIDWORD(v35) + 1;
      v23 = v34;
      v24 = *v20;
      *v20 = 0;
      *(v23 + v21) = v24;
      HIDWORD(v35) = v22;
      if ((v33 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v25 = v32;
      v32 = 0;
      *(v34 + HIDWORD(v35)) = v25;
      HIDWORD(v35) = v19 + 1;
    }

    v26 = v32;
    v32 = 0;
    if (v26)
    {
      WTF::RefCounted<WebCore::ApplePayError>::deref((v26 + 8), v5);
    }

LABEL_25:
    --v8;
  }

  while (v8);
  if (v35 > HIDWORD(v35))
  {
    v29 = v34;
    if (HIDWORD(v35))
    {
      LODWORD(v35) = HIDWORD(v35);
      v34 = WTF::fastRealloc(v34, (8 * HIDWORD(v35)));
    }

    else if (v34)
    {
      v34 = 0;
      LODWORD(v35) = 0;
      WTF::fastFree(v29, v5);
    }
  }

LABEL_18:
  *a1 = v34;
  v17 = v35;
  v34 = 0;
  v35 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = 1;
  return WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v5);
}

void sub_19D70F078(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, char a4, ...)
{
  va_start(va, a4);
  if (a4 == 1)
  {
    if (a3)
    {
      WTF::RefCounted<WebCore::ApplePayError>::deref((a3 + 8), a2);
    }
  }

  WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v5;
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  *(a1 + 24) = v6;
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 64) = v8;
  LOWORD(v8) = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v8;
  *(a1 + 88) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 80, (a2 + 80));
  std::__optional_move_base<WebCore::ApplePayRecurringPaymentRequest,false>::__optional_move_base[abi:sn200100](a1 + 96, (a2 + 96));
  *(a1 + 304) = 0;
  *(a1 + 416) = 0;
  if (*(a2 + 416) == 1)
  {
    v9 = *(a2 + 304);
    *(a2 + 304) = 0;
    *(a1 + 304) = v9;
    *(a1 + 312) = *(a2 + 312);
    v10 = *(a2 + 320);
    *(a2 + 320) = 0;
    *(a1 + 320) = v10;
    v11 = *(a2 + 328);
    *(a2 + 328) = 0;
    *(a1 + 328) = v11;
    v12 = *(a2 + 336);
    v13 = *(a2 + 352);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 336) = v12;
    *(a1 + 352) = v13;
    v14 = *(a2 + 376);
    *(a2 + 376) = 0;
    *(a1 + 376) = v14;
    *(a1 + 384) = *(a2 + 384);
    v15 = *(a2 + 392);
    *(a2 + 392) = 0;
    *(a1 + 392) = v15;
    v16 = *(a2 + 400);
    *(a2 + 400) = 0;
    *(a1 + 400) = v16;
    v17 = *(a2 + 408);
    *(a2 + 408) = 0;
    *(a1 + 408) = v17;
    *(a1 + 416) = 1;
  }

  std::__optional_move_base<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 424, a2 + 424);
  *(a1 + 448) = 0;
  *(a1 + 576) = 0;
  if (*(a2 + 576) == 1)
  {
    v18 = *(a2 + 448);
    *(a2 + 448) = 0;
    *(a1 + 448) = v18;
    *(a1 + 456) = *(a2 + 456);
    v19 = *(a2 + 464);
    *(a2 + 464) = 0;
    *(a1 + 464) = v19;
    v20 = *(a2 + 472);
    *(a2 + 472) = 0;
    *(a1 + 472) = v20;
    v21 = *(a2 + 480);
    v22 = *(a2 + 496);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 480) = v21;
    *(a1 + 496) = v22;
    v23 = *(a2 + 520);
    *(a2 + 520) = 0;
    *(a1 + 520) = v23;
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 536) = *(a2 + 536);
    v24 = *(a2 + 544);
    *(a2 + 544) = 0;
    *(a1 + 544) = v24;
    v25 = *(a2 + 552);
    *(a2 + 552) = 0;
    *(a1 + 552) = v25;
    v26 = *(a2 + 560);
    *(a2 + 560) = 0;
    *(a1 + 560) = v26;
    v27 = *(a2 + 568);
    *(a2 + 568) = 0;
    *(a1 + 568) = v27;
    *(a1 + 576) = 1;
  }

  std::__optional_move_base<WebCore::ApplePayDisbursementRequest,false>::__optional_move_base[abi:sn200100]((a1 + 584), a2 + 584);
  return a1;
}

void sub_19D70F2AC(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (*(v2 + 576) == 1)
  {
    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest((v2 + 448), a2);
  }

  if (*(v2 + 440) == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 424, a2);
  }

  if (*(v2 + 416) == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest((v2 + 304), a2);
  }

  if (*(v2 + 296) == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest((v2 + 96), a2);
  }

  WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  v6 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::ApplePayShippingContactUpdate,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::ApplePayLineItem,void>::encode(a1, a2);
  IPC::VectorArgumentCoder<false,WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 80);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayRecurringPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayRecurringPaymentRequest> const&>(a1, a2 + 96);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest> const&>(a1, a2 + 304);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 424);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayDeferredPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayDeferredPaymentRequest> const&>(a1, a2 + 448);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayDisbursementRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayDisbursementRequest> const&>(a1, a2 + 584);
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 616);

  return IPC::VectorArgumentCoder<false,WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 632);
}

void IPC::ArgumentCoder<WebCore::ApplePayShippingContactUpdate,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::ApplePayLineItem>(v113, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v110, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayRecurringPaymentRequest>>(v107, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest>>(&v95, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v93, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayDeferredPaymentRequest>>(&v80, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayDisbursementRequest>>(&v75, a1);
  IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v72, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v69, a1);
  if (*a1)
  {
    if (v120)
    {
      v31[0] = v113[0];
      v5 = v114;
      v114 = 0uLL;
      v32 = v5;
      v33 = v115;
      v34 = v116;
      v6 = v118;
      v118 = 0;
      v35 = v117;
      v36 = v6;
      v37 = v119;
      if (v112)
      {
        v38 = v110;
        v7 = v111;
        v110 = 0;
        v111 = 0;
        v39 = v7;
        if (v109)
        {
          std::__optional_move_base<WebCore::ApplePayRecurringPaymentRequest,false>::__optional_move_base[abi:sn200100](&v40, v107);
          if (v106)
          {
            LOBYTE(v41) = 0;
            v51 = 0;
            if (v105 == 1)
            {
              v41 = v95;
              v42 = v96;
              v8 = v97;
              v97 = 0u;
              v43 = v8;
              v44 = v98;
              v45 = v99;
              v9 = v101;
              v95 = 0;
              v101 = 0;
              v46 = v100;
              v47 = v9;
              v48 = v102;
              v10 = v103;
              v103 = 0u;
              v49 = v10;
              v11 = v104;
              v104 = 0;
              v50 = v11;
              v51 = 1;
            }

            if (v94)
            {
              std::__optional_move_base<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v52, v93);
              if (v92)
              {
                LOBYTE(v53) = 0;
                v64 = 0;
                if (v91 == 1)
                {
                  v12 = v82;
                  v82 = 0u;
                  v55 = v12;
                  v56 = v83;
                  v57 = v84;
                  v13 = v89;
                  v14 = v90;
                  v89 = 0u;
                  v90 = 0u;
                  v53 = v80;
                  v54 = v81;
                  v15 = v86;
                  v58 = v85;
                  v80 = 0;
                  v86 = 0;
                  v59 = v15;
                  v60 = v87;
                  v61 = v88;
                  v62 = v13;
                  v63 = v14;
                  v64 = 1;
                }

                if (v79)
                {
                  std::__optional_move_base<WebCore::ApplePayDisbursementRequest,false>::__optional_move_base[abi:sn200100](v65, &v75);
                  WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(v66, v31);
                  if (v74)
                  {
                    v16 = v72;
                    v72 = 0;
                    *&v67 = v16;
                    v17 = v73;
                    v73 = 0;
                    *(&v67 + 1) = v17;
                    if (v71)
                    {
                      v18 = v69;
                      v69 = 0;
                      *&v68 = v18;
                      v19 = v70;
                      v70 = 0;
                      *(&v68 + 1) = v19;
                      WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(a2, v66);
                      *&v20 = 0;
                      v21 = v67;
                      v67 = v20;
                      *(a2 + 616) = v21;
                      v22 = v68;
                      v68 = v20;
                      *(a2 + 632) = v22;
                      *(a2 + 648) = 1;
                      WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v23);
                      WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67, v24);
                      WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(v66, v25);
                      WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(v31, v26);
                      goto LABEL_16;
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
  }

  *a2 = 0;
  *(a2 + 648) = 0;
LABEL_16:
  if (v71 == 1)
  {
    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v4);
  }

  if (v74 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v72, v4);
  }

  if (v79 == 1 && v78 == 1 && v77 == 1)
  {
    v27 = v75;
    if (v75)
    {
      v75 = 0;
      v76 = 0;
      WTF::fastFree(v27, v4);
    }
  }

  if (v92 == 1 && v91 == 1)
  {
    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(&v80, v4);
  }

  if (v94 == 1 && v93[16] == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v93, v4);
  }

  if (v106 == 1 && v105 == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(&v95, v4);
  }

  if (v109 == 1 && v108 == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(v107, v4);
  }

  if (v112 == 1)
  {
    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v110, v4);
  }

  if (v120 == 1)
  {
    v28 = v118;
    if (v118 && atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v4);
    }

    v29 = *(&v114 + 1);
    if (*(&v114 + 1) && atomic_fetch_add_explicit(*(&v114 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v4);
    }

    v30 = v114;
    if (v114)
    {
      if (atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v4);
      }
    }
  }
}

void sub_19D70F8BC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 632, a2);
  WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9 + 616, v13);
  WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(&STACK[0x268], v14);
  WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(&a9, v15);
  if (LOBYTE(STACK[0x500]) == 1)
  {
    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x4F0], v16);
  }

  if (LOBYTE(STACK[0x518]) == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x508], v16);
  }

  if (LOBYTE(STACK[0x540]) == 1 && LOBYTE(STACK[0x538]) == 1 && LOBYTE(STACK[0x530]) == 1)
  {
    v17 = STACK[0x520];
    if (STACK[0x520])
    {
      STACK[0x520] = 0;
      LODWORD(STACK[0x528]) = 0;
      WTF::fastFree(v17, v16);
    }
  }

  if (LOBYTE(STACK[0x5D0]) == 1 && LOBYTE(STACK[0x5C8]) == 1)
  {
    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(&STACK[0x548], v16);
  }

  if (LOBYTE(STACK[0x5F0]) == 1 && LOBYTE(STACK[0x5E8]) == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x5D8], v16);
  }

  if (LOBYTE(STACK[0x670]) == 1 && LOBYTE(STACK[0x668]) == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(&STACK[0x5F8], v16);
  }

  if (LOBYTE(STACK[0x748]) == 1 && LOBYTE(STACK[0x740]) == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(&STACK[0x678], v16);
  }

  if (*(v11 - 144) == 1)
  {
    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11 - 160, v16);
  }

  if (*(v11 - 56) == 1)
  {
    v18 = *(v11 - 72);
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }

    v19 = *(v11 - 120);
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v16);
    }

    v20 = *(v11 - 128);
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v16);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::ApplePayShippingMethodUpdate,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::ApplePayLineItem,void>::encode(a1, a2);
  IPC::VectorArgumentCoder<false,WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 80);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayRecurringPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayRecurringPaymentRequest> const&>(a1, a2 + 96);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest> const&>(a1, a2 + 304);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 424);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayDeferredPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayDeferredPaymentRequest> const&>(a1, a2 + 448);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayDisbursementRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayDisbursementRequest> const&>(a1, a2 + 584);

  return IPC::VectorArgumentCoder<false,WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 616);
}

void IPC::ArgumentCoder<WebCore::ApplePayShippingMethodUpdate,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::ApplePayLineItem>(v105, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v102, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayRecurringPaymentRequest>>(v99, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest>>(&v87, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v85, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayDeferredPaymentRequest>>(&v72, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayDisbursementRequest>>(&v67, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v64, a1);
  if (*a1)
  {
    if (v112)
    {
      v27[0] = v105[0];
      v5 = v106;
      v106 = 0uLL;
      v28 = v5;
      v29 = v107;
      v30 = v108;
      v6 = v110;
      v110 = 0;
      v31 = v109;
      v32 = v6;
      v33 = v111;
      if (v104)
      {
        v34 = v102;
        v7 = v103;
        v102 = 0;
        v103 = 0;
        v35 = v7;
        if (v101)
        {
          std::__optional_move_base<WebCore::ApplePayRecurringPaymentRequest,false>::__optional_move_base[abi:sn200100](&v36, v99);
          if (v98)
          {
            LOBYTE(v37) = 0;
            v47 = 0;
            if (v97 == 1)
            {
              v8 = v87;
              v87 = 0;
              v37 = v8;
              v38 = v88;
              v9 = v89;
              v89 = 0u;
              v39 = v9;
              v40 = v90;
              v41 = v91;
              v42 = v92;
              v43 = v93;
              v44 = v94;
              v10 = v95;
              v95 = 0u;
              v45 = v10;
              v11 = v96;
              v93 = 0;
              v96 = 0;
              v46 = v11;
              v47 = 1;
            }

            if (v86)
            {
              std::__optional_move_base<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v48, v85);
              if (v84)
              {
                LOBYTE(v49) = 0;
                v60 = 0;
                if (v83 == 1)
                {
                  v12 = v74;
                  v74 = 0u;
                  v51 = v12;
                  v52 = v75;
                  v53 = v76;
                  v13 = v81;
                  v14 = v82;
                  v81 = 0u;
                  v82 = 0u;
                  v49 = v72;
                  v50 = v73;
                  v15 = v78;
                  v54 = v77;
                  v72 = 0;
                  v78 = 0;
                  v55 = v15;
                  v56 = v79;
                  v57 = v80;
                  v58 = v13;
                  v59 = v14;
                  v60 = 1;
                }

                if (v71)
                {
                  std::__optional_move_base<WebCore::ApplePayDisbursementRequest,false>::__optional_move_base[abi:sn200100](v61, &v67);
                  WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(v62, v27);
                  if (v66)
                  {
                    v16 = v64;
                    v64 = 0;
                    *&v63 = v16;
                    v17 = v65;
                    v65 = 0;
                    *(&v63 + 1) = v17;
                    WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(a2, v62);
                    *&v18 = 0;
                    v19 = v63;
                    v63 = v18;
                    *(a2 + 616) = v19;
                    *(a2 + 632) = 1;
                    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v20);
                    WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(v62, v21);
                    WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(v27, v22);
                    goto LABEL_15;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 632) = 0;
LABEL_15:
  if (v66 == 1)
  {
    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v64, v4);
  }

  if (v71 == 1 && v70 == 1 && v69 == 1)
  {
    v23 = v67;
    if (v67)
    {
      v67 = 0;
      v68 = 0;
      WTF::fastFree(v23, v4);
    }
  }

  if (v84 == 1 && v83 == 1)
  {
    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(&v72, v4);
  }

  if (v86 == 1 && v85[16] == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v85, v4);
  }

  if (v98 == 1 && v97 == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(&v87, v4);
  }

  if (v101 == 1 && v100 == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(v99, v4);
  }

  if (v104 == 1)
  {
    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v102, v4);
  }

  if (v112 == 1)
  {
    v24 = v110;
    if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v4);
    }

    v25 = *(&v106 + 1);
    if (*(&v106 + 1) && atomic_fetch_add_explicit(*(&v106 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v4);
    }

    v26 = v106;
    if (v106)
    {
      if (atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v4);
      }
    }
  }
}

void sub_19D71006C(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 616, a2);
  WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(&STACK[0x270], v6);
  WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(va, v7);
  if (LOBYTE(STACK[0x4F8]) == 1)
  {
    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x4E8], v8);
  }

  if (LOBYTE(STACK[0x520]) == 1 && LOBYTE(STACK[0x518]) == 1 && LOBYTE(STACK[0x510]) == 1)
  {
    v9 = STACK[0x500];
    if (STACK[0x500])
    {
      STACK[0x500] = 0;
      LODWORD(STACK[0x508]) = 0;
      WTF::fastFree(v9, v8);
    }
  }

  if (LOBYTE(STACK[0x5B0]) == 1 && LOBYTE(STACK[0x5A8]) == 1)
  {
    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(&STACK[0x528], v8);
  }

  if (LOBYTE(STACK[0x5D0]) == 1 && LOBYTE(STACK[0x5C8]) == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x5B8], v8);
  }

  if (LOBYTE(STACK[0x650]) == 1 && LOBYTE(STACK[0x648]) == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(&STACK[0x5D8], v8);
  }

  if (LOBYTE(STACK[0x728]) == 1 && LOBYTE(STACK[0x720]) == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(&STACK[0x658], v8);
  }

  if (*(v4 - 144) == 1)
  {
    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4 - 160, v8);
  }

  if (*(v4 - 56) == 1)
  {
    v10 = *(v4 - 72);
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = *(v4 - 120);
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    v12 = *(v4 - 128);
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v8);
      }
    }
  }

  _Unwind_Resume(a1);
}

void *IPC::ArgumentCoder<WebCore::ApplePayPaymentAuthorizationResult,void>::encode(IPC::Encoder *a1, __int16 *a2)
{
  v4 = (a2 + 12);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 4));

  return IPC::ArgumentCoder<std::optional<WebCore::ApplePayPaymentOrderDetails>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayPaymentOrderDetails> const&>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ApplePayPaymentAuthorizationResult,void>::decode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *(a1 + 8);
  v10 = ((*(a1 + 16) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v11 = v10 - *a1;
  v12 = v9 >= v11;
  v13 = v9 - v11;
  if (v12 && v13 > 1)
  {
    *(a1 + 16) = v10 + 1;
    if (v10)
    {
      v15 = *v10 | 0x10000;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v36 = *(a1 + 24);
    if (v36)
    {
      if (v9)
      {
        (*(*v36 + 16))(v36);
        v9 = *(a1 + 8);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v37 = *(a1 + 24);
  if (v37 && v9)
  {
    (*(*v37 + 16))(v37);
  }

  v15 = 0;
LABEL_8:
  result = IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v45, a1);
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = *a1;
  if (v18 <= &v19[-*a1])
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v38 = *(a1 + 24);
    if (v38)
    {
      if (v18)
      {
        (*(*v38 + 16))(v38);
        v18 = *(a1 + 8);
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    *(a1 + 16) = v19 + 1;
    if (v19)
    {
      v21 = *v19;
      if (v21 >= 2)
      {
        goto LABEL_56;
      }

      if (!v21)
      {
        v5 = 0;
        v3 = 0;
        LODWORD(v2) = 1;
        goto LABEL_32;
      }

      IPC::Decoder::decode<WTF::String>(a1, &v40);
      IPC::Decoder::decode<WTF::String>(a1, &v52);
      IPC::Decoder::decode<WTF::String>(a1, &v50);
      result = IPC::Decoder::decode<WTF::String>(a1, &v48);
      v2 = *a1;
      if (*a1)
      {
        if ((v41[0] & 1) == 0)
        {
          goto LABEL_69;
        }

        v3 = v40;
        v40 = 0;
        if ((v53 & 1) == 0)
        {
          goto LABEL_69;
        }

        v4 = v52;
        v52 = 0;
        if ((v51 & 1) == 0)
        {
          goto LABEL_69;
        }

        v17 = v50;
        v50 = 0;
        if ((v49 & 1) == 0)
        {
          goto LABEL_69;
        }

        v6 = v48;
      }

      else
      {
        if (v49)
        {
          result = v48;
          v48 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v20);
            }
          }
        }

        v3 = 0;
      }

      if (v51 == 1)
      {
        result = v50;
        v50 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v22 = v17;
            result = WTF::StringImpl::destroy(result, v20);
            v17 = v22;
          }
        }
      }

      if (v53 == 1)
      {
        result = v52;
        v52 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v23 = v17;
            result = WTF::StringImpl::destroy(result, v20);
            v17 = v23;
          }
        }
      }

      if (LOBYTE(v41[0]) == 1 && (result = v40, v40 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v33 = v17;
        result = WTF::StringImpl::destroy(result, v20);
        v17 = v33;
        if (v2)
        {
          goto LABEL_30;
        }
      }

      else if (v2)
      {
LABEL_30:
        v5 = 0;
        LODWORD(v2) = 0;
        goto LABEL_32;
      }

      goto LABEL_55;
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v39 = *(a1 + 24);
  if (v39)
  {
    if (v18)
    {
      (*(*v39 + 16))(v39);
LABEL_55:
      v18 = *(a1 + 8);
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_56:
  *a1 = 0;
  *(a1 + 8) = 0;
  v34 = *(a1 + 24);
  if (v34 && v18)
  {
    (*(*v34 + 16))();
  }

  v20 = *a1;
  v35 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  result = *(a1 + 24);
  if (result && v35)
  {
    result = (*(*result + 16))(result, v20);
  }

  v3 = 0;
  v5 = 1;
LABEL_32:
  if (!*a1)
  {
LABEL_70:
    *a2 = 0;
    *(a2 + 64) = 0;
    v27 = v6;
    v28 = v17;
    v29 = v4;
    goto LABEL_48;
  }

  if ((v15 & 0x10000) == 0 || (LOWORD(v40) = v15, (v47 & 1) == 0) || (v24 = v45, v25 = v46, v45 = 0, v46 = 0, v5))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  LOBYTE(v42[0]) = 0;
  v44 = 0;
  v26 = v15;
  if (v2)
  {
    v27 = v6;
    v28 = v17;
    v29 = v4;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v42[0] = v3;
    v42[1] = v4;
    *&v43 = v17;
    *(&v43 + 1) = v6;
    v44 = 1;
    v3 = 0;
  }

  *a2 = v26;
  v41[0] = 0;
  v41[1] = 0;
  *(a2 + 8) = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = 0;
  *(a2 + 56) = 0;
  if (v2)
  {
    *(a2 + 64) = 1;
  }

  else
  {
    v30 = v42[0];
    *v42 = 0u;
    v43 = 0u;
    *(a2 + 24) = v30;
    *(a2 + 32) = v4;
    *(a2 + 40) = v17;
    *(a2 + 48) = v6;
    *(a2 + 56) = 1;
    *(a2 + 64) = 1;
    v31 = v42[1];
    v42[1] = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v20);
    }

    v32 = v42[0];
    v42[0] = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v20);
    }
  }

  result = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v20);
LABEL_48:
  if ((v5 | v2))
  {
    goto LABEL_66;
  }

  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v27, v20);
    if (!v28)
    {
      goto LABEL_60;
    }
  }

  else if (!v28)
  {
    goto LABEL_60;
  }

  if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v28, v20);
  }

LABEL_60:
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v29, v20);
    if (!v3)
    {
      goto LABEL_66;
    }
  }

  else if (!v3)
  {
    goto LABEL_66;
  }

  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v3, v20);
  }

LABEL_66:
  if (v47 == 1)
  {
    return WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v20);
  }

  return result;
}

void sub_19D7108CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, char a24)
{
  if (a24)
  {
    v26 = a23;
    a23 = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, a2);
      }
    }
  }

  if (*(v24 - 88) == 1)
  {
    v27 = *(v24 - 96);
    *(v24 - 96) = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, a2);
      }
    }
  }

  if (a11 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a20 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a18, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ApplePayInstallmentConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *a2;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::VectorArgumentCoder<false,WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 64);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 80));
  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
}

void *IPC::ArgumentCoder<WebCore::ApplePayInstallmentItem,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = (a2 + 40);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebCore::ApplePayCouponCodeUpdate,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::ApplePayLineItem>(v113, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v110, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayRecurringPaymentRequest>>(v107, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest>>(&v95, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v93, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayDeferredPaymentRequest>>(&v80, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayDisbursementRequest>>(&v75, a1);
  IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v72, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v69, a1);
  if (*a1)
  {
    if (v120)
    {
      v31[0] = v113[0];
      v5 = v114;
      v114 = 0uLL;
      v32 = v5;
      v33 = v115;
      v34 = v116;
      v6 = v118;
      v118 = 0;
      v35 = v117;
      v36 = v6;
      v37 = v119;
      if (v112)
      {
        v38 = v110;
        v7 = v111;
        v110 = 0;
        v111 = 0;
        v39 = v7;
        if (v109)
        {
          std::__optional_move_base<WebCore::ApplePayRecurringPaymentRequest,false>::__optional_move_base[abi:sn200100](&v40, v107);
          if (v106)
          {
            LOBYTE(v41) = 0;
            v51 = 0;
            if (v105 == 1)
            {
              v41 = v95;
              v42 = v96;
              v8 = v97;
              v97 = 0u;
              v43 = v8;
              v44 = v98;
              v45 = v99;
              v9 = v101;
              v95 = 0;
              v101 = 0;
              v46 = v100;
              v47 = v9;
              v48 = v102;
              v10 = v103;
              v103 = 0u;
              v49 = v10;
              v11 = v104;
              v104 = 0;
              v50 = v11;
              v51 = 1;
            }

            if (v94)
            {
              std::__optional_move_base<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v52, v93);
              if (v92)
              {
                LOBYTE(v53) = 0;
                v64 = 0;
                if (v91 == 1)
                {
                  v12 = v82;
                  v82 = 0u;
                  v55 = v12;
                  v56 = v83;
                  v57 = v84;
                  v13 = v89;
                  v14 = v90;
                  v89 = 0u;
                  v90 = 0u;
                  v53 = v80;
                  v54 = v81;
                  v15 = v86;
                  v58 = v85;
                  v80 = 0;
                  v86 = 0;
                  v59 = v15;
                  v60 = v87;
                  v61 = v88;
                  v62 = v13;
                  v63 = v14;
                  v64 = 1;
                }

                if (v79)
                {
                  std::__optional_move_base<WebCore::ApplePayDisbursementRequest,false>::__optional_move_base[abi:sn200100](v65, &v75);
                  WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(v66, v31);
                  if (v74)
                  {
                    v16 = v72;
                    v72 = 0;
                    *&v67 = v16;
                    v17 = v73;
                    v73 = 0;
                    *(&v67 + 1) = v17;
                    if (v71)
                    {
                      v18 = v69;
                      v69 = 0;
                      *&v68 = v18;
                      v19 = v70;
                      v70 = 0;
                      *(&v68 + 1) = v19;
                      WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(a2, v66);
                      *&v20 = 0;
                      v21 = v67;
                      v67 = v20;
                      *(a2 + 616) = v21;
                      v22 = v68;
                      v68 = v20;
                      *(a2 + 632) = v22;
                      *(a2 + 648) = 1;
                      WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v23);
                      WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67, v24);
                      WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(v66, v25);
                      WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(v31, v26);
                      goto LABEL_16;
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
  }

  *a2 = 0;
  *(a2 + 648) = 0;
LABEL_16:
  if (v71 == 1)
  {
    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v4);
  }

  if (v74 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v72, v4);
  }

  if (v79 == 1 && v78 == 1 && v77 == 1)
  {
    v27 = v75;
    if (v75)
    {
      v75 = 0;
      v76 = 0;
      WTF::fastFree(v27, v4);
    }
  }

  if (v92 == 1 && v91 == 1)
  {
    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(&v80, v4);
  }

  if (v94 == 1 && v93[16] == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v93, v4);
  }

  if (v106 == 1 && v105 == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(&v95, v4);
  }

  if (v109 == 1 && v108 == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(v107, v4);
  }

  if (v112 == 1)
  {
    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v110, v4);
  }

  if (v120 == 1)
  {
    v28 = v118;
    if (v118 && atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v4);
    }

    v29 = *(&v114 + 1);
    if (*(&v114 + 1) && atomic_fetch_add_explicit(*(&v114 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v4);
    }

    v30 = v114;
    if (v114)
    {
      if (atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v4);
      }
    }
  }
}

void sub_19D710F4C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 632, a2);
  WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9 + 616, v13);
  WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(&STACK[0x268], v14);
  WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(&a9, v15);
  if (LOBYTE(STACK[0x500]) == 1)
  {
    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x4F0], v16);
  }

  if (LOBYTE(STACK[0x518]) == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x508], v16);
  }

  if (LOBYTE(STACK[0x540]) == 1 && LOBYTE(STACK[0x538]) == 1 && LOBYTE(STACK[0x530]) == 1)
  {
    v17 = STACK[0x520];
    if (STACK[0x520])
    {
      STACK[0x520] = 0;
      LODWORD(STACK[0x528]) = 0;
      WTF::fastFree(v17, v16);
    }
  }

  if (LOBYTE(STACK[0x5D0]) == 1 && LOBYTE(STACK[0x5C8]) == 1)
  {
    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(&STACK[0x548], v16);
  }

  if (LOBYTE(STACK[0x5F0]) == 1 && LOBYTE(STACK[0x5E8]) == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x5D8], v16);
  }

  if (LOBYTE(STACK[0x670]) == 1 && LOBYTE(STACK[0x668]) == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(&STACK[0x5F8], v16);
  }

  if (LOBYTE(STACK[0x748]) == 1 && LOBYTE(STACK[0x740]) == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(&STACK[0x678], v16);
  }

  if (*(v11 - 144) == 1)
  {
    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11 - 160, v16);
  }

  if (*(v11 - 56) == 1)
  {
    v18 = *(v11 - 72);
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }

    v19 = *(v11 - 120);
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v16);
    }

    v20 = *(v11 - 128);
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v16);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::ApplicationManifest::Icon,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 40);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  v4 = *(a2 + 64);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::ApplicationManifest::Shortcut,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);

  return IPC::VectorArgumentCoder<false,WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 6));
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, WTF::StringImpl **a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v23 = a2[3];
    if (v23)
    {
      if (v6)
      {
        (*(*v23 + 16))(v23);
        v5 = *a2;
        v6 = a2[1];
LABEL_47:
        *a2 = 0;
        a2[1] = 0;
        v24 = a2[3];
        if (v24 && v6)
        {
          (*(*v24 + 16))(v24, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_49:
        v25 = *a2;
        v26 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v26)
          {
            return (*(*result + 16))(result, v25);
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
    goto LABEL_47;
  }

  a2[2] = (v4 + 8);
  if (!v4)
  {
    goto LABEL_47;
  }

  v8 = *v4;
  v34 = 0;
  v35 = 0;
  if (v8 >= 0x38E3)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::ApplicationManifest::Icon>(v27, a2);
      v15 = v33;
      if (v33)
      {
        if (HIDWORD(v35) == v35)
        {
          WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplicationManifest::Icon>(&v34, v27);
        }

        else
        {
          WTF::URL::URL(v34 + 72 * HIDWORD(v35), v27);
          *(v16 + 40) = 0;
          *(v16 + 48) = 0;
          v17 = v28;
          v28 = 0;
          *(v16 + 40) = v17;
          LODWORD(v17) = v29;
          v29 = 0;
          *(v16 + 48) = v17;
          LODWORD(v17) = v30;
          v30 = 0;
          *(v16 + 52) = v17;
          v18 = v31;
          v31 = 0;
          *(v16 + 56) = v18;
          *(v16 + 64) = v32;
          ++HIDWORD(v35);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v33 == 1)
      {
        v19 = v31;
        v31 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v5);
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v5);
        v20 = v27[0];
        v27[0] = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v5);
        }
      }

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v34, HIDWORD(v35));
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (v8)
    {
      LODWORD(v35) = 72 * v8 / 0x48u;
      v34 = WTF::fastMalloc((72 * v8));
      do
      {
        IPC::Decoder::decode<WebCore::ApplicationManifest::Icon>(v27, a2);
        v9 = v33;
        if (v33)
        {
          if (HIDWORD(v35) == v35)
          {
            WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplicationManifest::Icon>(&v34, v27);
          }

          else
          {
            WTF::URL::URL(v34 + 72 * HIDWORD(v35), v27);
            *(v10 + 40) = 0;
            *(v10 + 48) = 0;
            v11 = v28;
            v28 = 0;
            *(v10 + 40) = v11;
            LODWORD(v11) = v29;
            v29 = 0;
            *(v10 + 48) = v11;
            LODWORD(v11) = v30;
            v30 = 0;
            *(v10 + 52) = v11;
            v12 = v31;
            v31 = 0;
            *(v10 + 56) = v12;
            *(v10 + 64) = v32;
            ++HIDWORD(v35);
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 16) = 0;
        }

        if (v33 != 1)
        {
          goto LABEL_21;
        }

        v13 = v31;
        v31 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v5);
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v5);
        v14 = v27[0];
        v27[0] = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v5);
          if ((v9 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
LABEL_21:
          if ((v9 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        --v8;
      }

      while (v8);
    }

LABEL_41:
    *a1 = v34;
    v21 = v35;
    v34 = 0;
    v35 = 0;
    *(a1 + 8) = v21;
    *(a1 + 16) = 1;
  }

LABEL_42:
  result = WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v5);
  if ((*(a1 + 16) & 1) == 0)
  {
    goto LABEL_49;
  }

  return result;
}

void sub_19D711630(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 16) == 1)
  {
    WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ApplicationManifest,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 80));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 81));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 82));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 128));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 168));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 208));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 216));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 224);
  IPC::VectorArgumentCoder<false,WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 240);

  return IPC::VectorArgumentCoder<false,WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 256);
}

void IPC::ArgumentCoder<WebCore::ApplicationManifest,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v156);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v78 = *(a1 + 3);
    if (v78)
    {
      if (v4)
      {
        (*(*v78 + 16))(v78);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_147:
    *a1 = 0;
    *(a1 + 1) = 0;
    v79 = *(a1 + 3);
    if (v79)
    {
      if (v4)
      {
        (*(*v79 + 16))(v79);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_150;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_150;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_147;
  }

  v7 = *v5;
  if (v7 < 3)
  {
    v96 = v7 | 0x100;
    goto LABEL_5;
  }

LABEL_150:
  *a1 = 0;
  *(a1 + 1) = 0;
  v80 = *(a1 + 3);
  if (v80 && v4)
  {
    (*(*v80 + 16))(v80, v6);
  }

  v96 = 0;
LABEL_5:
  IPC::Decoder::decode<WTF::String>(a1, &v154);
  IPC::Decoder::decode<WTF::String>(a1, &v152);
  IPC::Decoder::decode<WTF::String>(a1, &v150);
  IPC::Decoder::decode<WTF::URL>(a1, &v146);
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *a1;
  if (v8 <= &v9[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v81 = *(a1 + 3);
    if (v81)
    {
      if (v8)
      {
        (*(*v81 + 16))(v81);
        v8 = *(a1 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_156:
    *a1 = 0;
    *(a1 + 1) = 0;
    v82 = *(a1 + 3);
    if (v82)
    {
      if (v8)
      {
        (*(*v82 + 16))(v82);
        v12 = 0;
        v10 = *a1;
        v8 = *(a1 + 1);
        goto LABEL_159;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    v12 = 0;
    goto LABEL_159;
  }

  v11 = v9 + 1;
  *(a1 + 2) = v9 + 1;
  if (!v9)
  {
    goto LABEL_156;
  }

  v12 = *v9;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_9;
  }

LABEL_159:
  *a1 = 0;
  *(a1 + 1) = 0;
  v83 = *(a1 + 3);
  if (v83)
  {
    if (v8)
    {
      (*(*v83 + 16))(v83, v10);
      v10 = *a1;
      v8 = *(a1 + 1);
      goto LABEL_162;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
LABEL_162:
  v13 = 0;
  v11 = *(a1 + 2);
LABEL_9:
  v95 = v13;
  if (!v12)
  {
    v13 = 0;
  }

  v94 = v13;
  v93 = a2;
  if (v8 <= &v11[-v10])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v84 = *(a1 + 3);
    if (v84)
    {
      if (v8)
      {
        (*(*v84 + 16))(v84);
        v10 = *a1;
        v8 = *(a1 + 1);
LABEL_166:
        *a1 = 0;
        *(a1 + 1) = 0;
        v85 = *(a1 + 3);
        if (v85)
        {
          if (v8)
          {
            (*(*v85 + 16))(v85, v10);
            v10 = *a1;
            v8 = *(a1 + 1);
            goto LABEL_169;
          }
        }

        else
        {
          v8 = 0;
        }

        v10 = 0;
        goto LABEL_169;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    goto LABEL_166;
  }

  *(a1 + 2) = v11 + 1;
  if (!v11)
  {
    goto LABEL_166;
  }

  v14 = *v11;
  if (v14 < 4)
  {
    v15 = v14 | 0x100;
    goto LABEL_15;
  }

LABEL_169:
  *a1 = 0;
  *(a1 + 1) = 0;
  v86 = *(a1 + 3);
  if (!v86)
  {
    v10 = 0;
    v15 = 0;
    v8 = 0;
    goto LABEL_171;
  }

  if (!v8)
  {
    v10 = 0;
    v15 = 0;
LABEL_171:
    *a1 = 0;
    *(a1 + 1) = 0;
    v87 = *(a1 + 3);
    if (v87)
    {
      if (v8)
      {
        (*(*v87 + 16))(v87, v10);
        v10 = *a1;
        v8 = *(a1 + 1);
LABEL_174:
        *a1 = 0;
        *(a1 + 1) = 0;
        v88 = *(a1 + 3);
        if (v88)
        {
          if (v8)
          {
            (*(*v88 + 16))(v88, v10);
            v10 = *a1;
            v8 = *(a1 + 1);
LABEL_177:
            *a1 = 0;
            *(a1 + 1) = 0;
            v89 = *(a1 + 3);
            if (v89 && v8)
            {
              (*(*v89 + 16))(v89, v10);
            }

            v20 = 0;
            v19 = 0;
            goto LABEL_179;
          }
        }

        else
        {
          v8 = 0;
        }

        v10 = 0;
        goto LABEL_177;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    goto LABEL_174;
  }

  (*(*v86 + 16))(v86, v10);
  v15 = 0;
  v10 = *a1;
  v8 = *(a1 + 1);
LABEL_15:
  v16 = *(a1 + 2);
  if (v8 <= &v16[-v10])
  {
    goto LABEL_171;
  }

  *(a1 + 2) = v16 + 1;
  if (!v16)
  {
    goto LABEL_174;
  }

  v17 = *v16;
  if (v17 >= 2)
  {
    goto LABEL_177;
  }

  if (!v17)
  {
    v20 = 0;
    v19 = 0;
    v21 = 0x10000;
    goto LABEL_22;
  }

  v18 = IPC::Decoder::decode<WebCore::ScreenOrientationLockType>(a1);
  v19 = (v18 & ((v18 << 7) >> 15));
  v20 = 256;
  if ((v18 & 0x100) != 0)
  {
    v21 = (v18 & 0x100) << 8;
    goto LABEL_22;
  }

LABEL_179:
  v90 = *a1;
  v91 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v92 = *(a1 + 3);
  if (v92 && v91)
  {
    (*(*v92 + 16))(v92, v90);
  }

  v21 = 0;
LABEL_22:
  IPC::Decoder::decode<WTF::URL>(a1, &v142);
  IPC::Decoder::decode<WTF::URL>(a1, &v138);
  IPC::Decoder::decode<WTF::URL>(a1, &v134);
  IPC::ArgumentCoder<WebCore::Color,void>::decode(a1, &v132);
  if ((v133 & 1) == 0)
  {
    v68 = *a1;
    v69 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v70 = *(a1 + 3);
    if (v70)
    {
      if (v69)
      {
        (*(*v70 + 16))(v70, v68);
      }
    }
  }

  IPC::ArgumentCoder<WebCore::Color,void>::decode(a1, &v130);
  if ((v131 & 1) == 0)
  {
    v71 = *a1;
    v72 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v73 = *(a1 + 3);
    if (v73)
    {
      if (v72)
      {
        (*(*v73 + 16))(v73, v71);
      }
    }
  }

  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v127);
  IPC::Decoder::decode<WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v124, a1);
  v22 = *(a1 + 1);
  v23 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v24 = *a1;
  v25 = v23 - *a1;
  v26 = v22 >= v25;
  v27 = v22 - v25;
  if (!v26 || v27 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v74 = *(a1 + 3);
    if (v74)
    {
      if (v22)
      {
        (*(*v74 + 16))(v74);
        v22 = *(a1 + 1);
      }
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_140;
  }

  *(a1 + 2) = v23 + 1;
  if (!v23)
  {
LABEL_140:
    *a1 = 0;
    *(a1 + 1) = 0;
    v75 = *(a1 + 3);
    if (v75 && v22)
    {
      (*(*v75 + 16))(v75);
    }

    LOBYTE(v121) = 0;
    v123 = 0;
LABEL_142:
    v43 = *a1;
    v76 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v77 = *(a1 + 3);
    if (v77 && v76)
    {
      (*(*v77 + 16))(v77, v43);
    }

    goto LABEL_64;
  }

  v28 = *v23;
  v158 = 0;
  v159 = 0;
  if (v28 >= 0x4000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::ApplicationManifest::Shortcut>(&v97, a1);
      v36 = v100;
      if (v100)
      {
        if (HIDWORD(v159) == v159)
        {
          WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplicationManifest::Shortcut>(&v158, &v97);
        }

        else
        {
          v37 = v158 + (HIDWORD(v159) << 6);
          v38 = v97;
          v97 = 0;
          *v37 = v38;
          WTF::URL::URL(v37 + 8, v98);
          *(v37 + 48) = 0;
          *(v37 + 56) = 0;
          v39 = v99;
          *&v99 = 0;
          *(v37 + 48) = v39;
          LODWORD(v39) = DWORD2(v99);
          DWORD2(v99) = 0;
          *(v37 + 56) = v39;
          LODWORD(v39) = HIDWORD(v99);
          HIDWORD(v99) = 0;
          *(v37 + 60) = v39;
          ++HIDWORD(v159);
        }
      }

      else
      {
        LOBYTE(v121) = 0;
        v123 = 0;
      }

      if (v100 == 1)
      {
        WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v99, v24);
        v40 = v98[0];
        v98[0] = 0;
        if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v40, v24);
        }

        v41 = v97;
        v97 = 0;
        if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v41, v24);
        }
      }

      if ((v36 & 1) == 0)
      {
        break;
      }

      if (!--v28)
      {
        WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v158, HIDWORD(v159));
        goto LABEL_62;
      }
    }
  }

  else
  {
    if (v28)
    {
      v29 = WTF::fastMalloc((v28 << 6));
      LODWORD(v159) = v28;
      v158 = v29;
      do
      {
        IPC::Decoder::decode<WebCore::ApplicationManifest::Shortcut>(&v97, a1);
        v30 = v100;
        if (v100)
        {
          if (HIDWORD(v159) == v159)
          {
            WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplicationManifest::Shortcut>(&v158, &v97);
          }

          else
          {
            v31 = v158 + (HIDWORD(v159) << 6);
            v32 = v97;
            v97 = 0;
            *v31 = v32;
            WTF::URL::URL(v31 + 8, v98);
            *(v31 + 48) = 0;
            *(v31 + 56) = 0;
            v33 = v99;
            *&v99 = 0;
            *(v31 + 48) = v33;
            LODWORD(v33) = DWORD2(v99);
            DWORD2(v99) = 0;
            *(v31 + 56) = v33;
            LODWORD(v33) = HIDWORD(v99);
            HIDWORD(v99) = 0;
            *(v31 + 60) = v33;
            ++HIDWORD(v159);
          }
        }

        else
        {
          LOBYTE(v121) = 0;
          v123 = 0;
        }

        if (v100 != 1)
        {
          goto LABEL_42;
        }

        WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v99, v24);
        v34 = v98[0];
        v98[0] = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v24);
        }

        v35 = v97;
        v97 = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v24);
          if ((v30 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        else
        {
LABEL_42:
          if ((v30 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        --v28;
      }

      while (v28);
    }

LABEL_62:
    v121 = v158;
    v42 = v159;
    v158 = 0;
    v159 = 0;
    v122 = v42;
    v123 = 1;
  }

LABEL_63:
  WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v24);
  if ((v123 & 1) == 0)
  {
    goto LABEL_142;
  }

LABEL_64:
  if (*a1)
  {
    if (v157)
    {
      v44 = v156;
      v156 = 0;
      v97 = v44;
      if (v96 > 0xFF)
      {
        LOBYTE(v98[0]) = v96;
        if (v155)
        {
          v45 = v154;
          v154 = 0;
          v98[1] = v45;
          if (v153)
          {
            v46 = v152;
            v152 = 0;
            v98[2] = v46;
            if (v151)
            {
              v47 = v150;
              v150 = 0;
              v98[3] = v47;
              if (v149)
              {
                v48 = v146;
                v146 = 0;
                v98[4] = v48;
                v99 = v147;
                v100 = v148;
                LODWORD(v147) = v147 & 0xFFFFFFFE;
                if (v95)
                {
                  v101 = v94;
                  if (v15 > 0xFF)
                  {
                    v102 = v15;
                    if ((v19 | v20 | v21) >> 16)
                    {
                      v103 = v19 | v20;
                      if (v145)
                      {
                        v49 = v142;
                        v142 = 0;
                        v104 = v49;
                        v105 = v143;
                        v106 = v144;
                        LODWORD(v143) = v143 & 0xFFFFFFFE;
                        if (v141)
                        {
                          v50 = v138;
                          v138 = 0;
                          v107 = v50;
                          v108 = v139;
                          v109 = v140;
                          LODWORD(v139) = v139 & 0xFFFFFFFE;
                          if (v137)
                          {
                            v51 = v134;
                            v134 = 0;
                            v110 = v51;
                            v111 = v135;
                            v112 = v136;
                            LODWORD(v135) = v135 & 0xFFFFFFFE;
                            if (v133)
                            {
                              v52 = v132;
                              v132 = 0;
                              v113 = v52;
                              if (v131)
                              {
                                v53 = v130;
                                v130 = 0;
                                v114 = v53;
                                if (v129)
                                {
                                  v115 = v127;
                                  v54 = v128;
                                  v127 = 0;
                                  v128 = 0;
                                  v116 = v54;
                                  if (v126)
                                  {
                                    v117 = v124;
                                    v55 = v125;
                                    v124 = 0;
                                    v125 = 0;
                                    v118 = v55;
                                    if (v123)
                                    {
                                      v119 = v121;
                                      v56 = v122;
                                      v121 = 0;
                                      v122 = 0;
                                      v120 = v56;
                                      *(WebCore::ApplicationManifest::ApplicationManifest(v93, &v97) + 272) = 1;
                                      WebCore::ApplicationManifest::~ApplicationManifest(&v97, v57);
                                      goto LABEL_83;
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

    __break(1u);
  }

  *v93 = 0;
  v93[272] = 0;
LABEL_83:
  if (v123 == 1)
  {
    WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v121, v43);
  }

  if (v126 == 1)
  {
    WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v124, v43);
  }

  if (v129 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v127, v43);
  }

  if (v131 == 1 && (v130 & 0x8000000000000) != 0)
  {
    v66 = (v130 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v130 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v66);
      WTF::fastFree(v66, v43);
    }
  }

  if (v133 == 1 && (v132 & 0x8000000000000) != 0)
  {
    v67 = (v132 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v132 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v67);
      WTF::fastFree(v67, v43);
    }
  }

  if (v137 == 1)
  {
    v58 = v134;
    v134 = 0;
    if (v58)
    {
      if (atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v43);
      }
    }
  }

  if (v141 == 1)
  {
    v59 = v138;
    v138 = 0;
    if (v59)
    {
      if (atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v59, v43);
      }
    }
  }

  if (v145 == 1)
  {
    v60 = v142;
    v142 = 0;
    if (v60)
    {
      if (atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v60, v43);
      }
    }
  }

  if (v149 == 1)
  {
    v61 = v146;
    v146 = 0;
    if (v61)
    {
      if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v61, v43);
      }
    }
  }

  if (v151 == 1)
  {
    v62 = v150;
    v150 = 0;
    if (v62)
    {
      if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v62, v43);
      }
    }
  }

  if (v153 == 1)
  {
    v63 = v152;
    v152 = 0;
    if (v63)
    {
      if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v63, v43);
      }
    }
  }

  if (v155 == 1)
  {
    v64 = v154;
    v154 = 0;
    if (v64)
    {
      if (atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v64, v43);
      }
    }
  }

  if (v157 == 1)
  {
    v65 = v156;
    v156 = 0;
    if (v65)
    {
      if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v43);
      }
    }
  }
}

void sub_19D7124F0(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (*(v2 - 176) == 1)
  {
    v4 = *(v2 - 216);
    *(v2 - 216) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (*(v2 - 160) == 1)
  {
    v5 = *(v2 - 168);
    *(v2 - 168) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  if (*(v2 - 144) == 1)
  {
    v6 = *(v2 - 152);
    *(v2 - 152) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  if (*(v2 - 128) == 1)
  {
    v7 = *(v2 - 136);
    *(v2 - 136) = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }
  }

  if (*(v2 - 112) == 1)
  {
    v8 = *(v2 - 120);
    *(v2 - 120) = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::RetrieveRecordsOptions,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::CrossOriginEmbedderPolicy,void>::encode(a1, a2 + 200);
  IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::encode(a1, *(a2 + 224));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 232));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 233));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 234));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 235));
}

void IPC::ArgumentCoder<WebCore::RetrieveRecordsOptions,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<WebCore::ResourceRequest>(a1, v64);
  IPC::Decoder::decode<WebCore::CrossOriginEmbedderPolicy>(&v61, v2);
  IPC::Decoder::decode<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(&v59, v2);
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *v2;
  if (v4 <= &v5[-*v2])
  {
    goto LABEL_53;
  }

  v7 = v5 + 1;
  *(v2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_55;
  }

  v8 = *v5;
  if (v8 < 2)
  {
    v9 = 1;
    goto LABEL_5;
  }

  while (1)
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v34 = *(v2 + 3);
    if (!v34 || !v4)
    {
      v10 = 0;
      v9 = 0;
      v35 = 0;
      v6 = 0;
LABEL_60:
      *v2 = 0;
      *(v2 + 1) = 0;
      v36 = *(v2 + 3);
      if (v36 && v35)
      {
        (*(*v36 + 16))(v36, v6, v35);
        v12 = 0;
        v6 = *v2;
        v4 = *(v2 + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v12 = 0;
      }

      goto LABEL_62;
    }

    (*(*v34 + 16))(v34, v6);
    v9 = 0;
    v6 = *v2;
    v4 = *(v2 + 1);
    v7 = *(v2 + 2);
LABEL_5:
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v4 <= v7 - v6)
    {
      v35 = 0;
      v44 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v44 && v4)
      {
        (*(*v44 + 16))(v44);
        v6 = *v2;
        v35 = *(v2 + 1);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_60;
    }

    v11 = v7 + 1;
    *(v2 + 2) = v7 + 1;
    if (!v7)
    {
      v35 = v4;
      goto LABEL_60;
    }

    v12 = *v7;
    if (v12 < 2)
    {
      v13 = 1;
      goto LABEL_12;
    }

LABEL_62:
    *v2 = 0;
    *(v2 + 1) = 0;
    v37 = *(v2 + 3);
    if (!v37 || !v4)
    {
      v14 = 0;
      v13 = 0;
      v38 = 0;
      v6 = 0;
LABEL_64:
      *v2 = 0;
      *(v2 + 1) = 0;
      v39 = *(v2 + 3);
      if (v39 && v38)
      {
        (*(*v39 + 16))(v39, v6, v38);
        v16 = 0;
        v6 = *v2;
        v4 = *(v2 + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v16 = 0;
      }

      goto LABEL_66;
    }

    (*(*v37 + 16))(v37, v6);
    v13 = 0;
    v6 = *v2;
    v4 = *(v2 + 1);
    v11 = *(v2 + 2);
LABEL_12:
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v4 <= v11 - v6)
    {
      v38 = 0;
      v45 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v45 && v4)
      {
        (*(*v45 + 16))(v45);
        v6 = *v2;
        v38 = *(v2 + 1);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_64;
    }

    v15 = v11 + 1;
    *(v2 + 2) = v11 + 1;
    if (!v11)
    {
      v38 = v4;
      goto LABEL_64;
    }

    v16 = *v11;
    if (v16 < 2)
    {
      v17 = 1;
      goto LABEL_19;
    }

LABEL_66:
    *v2 = 0;
    *(v2 + 1) = 0;
    v40 = *(v2 + 3);
    if (!v40 || !v4)
    {
      v18 = 0;
      v48 = 0;
      v41 = 0;
      v6 = 0;
LABEL_68:
      *v2 = 0;
      *(v2 + 1) = 0;
      v42 = *(v2 + 3);
      if (v42 && v41)
      {
        (*(*v42 + 16))(v42, v6, v41);
        v47 = 0;
        v6 = *v2;
        v4 = *(v2 + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v47 = 0;
      }

      goto LABEL_70;
    }

    (*(*v40 + 16))(v40, v6);
    v17 = 0;
    v6 = *v2;
    v4 = *(v2 + 1);
    v15 = *(v2 + 2);
LABEL_19:
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v48 = v17;
    if (v4 <= v15 - v6)
    {
      v41 = 0;
      v46 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v46 && v4)
      {
        (*(*v46 + 16))(v46);
        v6 = *v2;
        v41 = *(v2 + 1);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_68;
    }

    *(v2 + 2) = v15 + 1;
    if (!v15)
    {
      v41 = v4;
      goto LABEL_68;
    }

    v19 = *v15;
    if (v19 < 2)
    {
      v20 = 1;
      goto LABEL_26;
    }

    v47 = v19;
LABEL_70:
    *v2 = 0;
    *(v2 + 1) = 0;
    v43 = *(v2 + 3);
    if (!v43 || !v4)
    {
      break;
    }

    (*(*v43 + 16))(v43, v6);
    v20 = 0;
    v6 = *v2;
    v19 = v47;
LABEL_26:
    v21 = v19 ? v20 : 0;
    if (!v6)
    {
      break;
    }

    if (v70)
    {
      v2 = v49;
      WebCore::ResourceRequestBase::RequestData::RequestData(v49, v64);
      v22 = v65;
      v65 = 0uLL;
      v50 = v22;
      v51 = v66;
      v52 = v67;
      v53 = v68;
      v23 = v69;
      v66 = 0;
      v69 = 0;
      v54 = v23;
      if (v63)
      {
        v55 = v61;
        v24 = v62;
        v62 = 0uLL;
        v56 = v24;
        if (v60)
        {
          v25 = v59;
          v59 = 0;
          v57 = v25;
          if (v9)
          {
            LOBYTE(v58) = v10;
            if (v13)
            {
              BYTE1(v58) = v14;
              if (v48)
              {
                BYTE2(v58) = v18;
                if (v20)
                {
                  HIBYTE(v58) = v21;
                  WebCore::ResourceRequestBase::RequestData::RequestData(a2, v49);
                  v26 = v50;
                  v50 = 0u;
                  v27 = v52;
                  v28 = v54;
                  *(a2 + 168) = v51;
                  *(a2 + 176) = v27;
                  *(a2 + 152) = v26;
                  *(a2 + 184) = v53;
                  *(a2 + 192) = v28;
                  *(a2 + 200) = v55;
                  *(a2 + 208) = v56;
                  *(a2 + 224) = v57;
                  *(a2 + 232) = v58;
                  *(a2 + 240) = 1;
                  v51 = 0;
                  v54 = 0;
                  v57 = 0;
                  v56 = 0u;
                  WebCore::ResourceRequestBase::~ResourceRequestBase(v49);
                  goto LABEL_38;
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_53:
    *v2 = 0;
    *(v2 + 1) = 0;
    v32 = *(v2 + 3);
    if (v32)
    {
      if (v4)
      {
        (*(*v32 + 16))(v32);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_55:
    *v2 = 0;
    *(v2 + 1) = 0;
    v33 = *(v2 + 3);
    if (!v33)
    {
      v4 = 0;
      goto LABEL_57;
    }

    if (v4)
    {
      (*(*v33 + 16))(v33);
      v8 = 0;
      v6 = *v2;
      v4 = *(v2 + 1);
    }

    else
    {
LABEL_57:
      v6 = 0;
      v8 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 240) = 0;
  if ((v60 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_38:
  if (v59)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v59, v6);
  }

LABEL_40:
  if (v63 == 1)
  {
    v29 = *(&v62 + 1);
    *(&v62 + 1) = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v6);
    }

    v30 = v62;
    *&v62 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v6);
    }
  }

  if (v70 == 1)
  {
    v31 = v69;
    v69 = 0;
    if (v31)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v64);
  }
}

void sub_19D712F88(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, WTF::StringImpl *a36, WTF::StringImpl *a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, WTF::StringImpl *a43, WTF::StringImpl *a44, char a45, int a46, __int16 a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a41 == 1 && a40)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a40, a2);
  }

  if (a45 == 1)
  {
    if (a44 && atomic_fetch_add_explicit(a44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a44, a2);
    }

    if (a43 && atomic_fetch_add_explicit(a43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a43, a2);
    }
  }

  if (a72 == 1)
  {
    v73 = a71;
    a71 = 0;
    if (v73)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&a47);
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::decode(a1, a2);
  if ((a1[8] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ContactInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 16);

  return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 32);
}

uint64_t IPC::ArgumentCoder<WebCore::ContactInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v21);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v18);
  result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v15);
  if (*a1)
  {
    if (v23)
    {
      v12[0] = v21;
      v6 = v22;
      v21 = 0;
      v22 = 0;
      v12[1] = v6;
      if (v20)
      {
        v13[0] = v18;
        v7 = v19;
        v18 = 0;
        v19 = 0;
        v13[1] = v7;
        if (v17)
        {
          v14[0] = v15;
          v8 = v16;
          v15 = 0;
          v16 = 0;
          v14[1] = v8;
          WebCore::ContactInfo::ContactInfo(a2, v12);
          *(a2 + 48) = 1;
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v9);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v10);
          result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v11);
          goto LABEL_6;
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 48) = 0;
LABEL_6:
  if (v17 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v5);
  }

  if (v20 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  }

  if (v23 == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v5);
  }

  return result;
}

void sub_19D713270(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 32, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 16, v21);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v22);
  if (a18 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a16, v23);
  }

  if (*(v19 - 48) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19 - 64, v23);
  }

  if (*(v19 - 24) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19 - 40, v23);
  }

  _Unwind_Resume(a1);
}

void *IPC::ArgumentCoder<WebCore::ContactsRequestData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ContactsRequestData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 1);
  v7 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7 - *a1;
  v9 = v6 >= v8;
  v10 = v6 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36)
    {
      if (v6)
      {
        (*(*v36 + 16))(v36);
        v6 = *(a1 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_55;
  }

  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_55:
    *a1 = 0;
    *(a1 + 1) = 0;
    v37 = *(a1 + 3);
    if (v37 && v6)
    {
      (*(*v37 + 16))(v37);
    }

LABEL_25:
    v23 = *a1;
    v24 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (v25 && v24)
    {
      (*(*v25 + 16))(v25, v23);
    }

    v18 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  v12 = *v7;
  v43 = 0;
  v44 = 0;
  if (v12 >= 0x100000)
  {
    while (1)
    {
      v21 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
      v42 = v21;
      if (v21 < 0x100u)
      {
        goto LABEL_23;
      }

      v19 = HIDWORD(v44);
      if (HIDWORD(v44) == v44)
      {
        v20 = WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v43, HIDWORD(v44) + 1, &v42);
        v19 = HIDWORD(v44);
        *(v43 + HIDWORD(v44)) = *v20;
      }

      else
      {
        *(v43 + HIDWORD(v44)) = v21;
      }

      HIDWORD(v44) = v19 + 1;
      v12 = (v12 - 1);
      if (!v12)
      {
        WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v43, (v19 + 1));
        v2 = HIDWORD(v44);
        goto LABEL_17;
      }
    }
  }

  if (v12)
  {
    LODWORD(v44) = v12;
    v43 = WTF::fastMalloc(v12);
    while (1)
    {
      v13 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
      v42 = v13;
      if (v13 < 0x100u)
      {
        break;
      }

      v15 = HIDWORD(v44);
      if (HIDWORD(v44) == v44)
      {
        v16 = WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v43, HIDWORD(v44) + 1, &v42);
        v15 = HIDWORD(v44);
        *(v43 + HIDWORD(v44)) = *v16;
      }

      else
      {
        *(v43 + HIDWORD(v44)) = v13;
      }

      v2 = v15 + 1;
      HIDWORD(v44) = v15 + 1;
      v12 = (v12 - 1);
      if (!v12)
      {
        goto LABEL_17;
      }
    }

LABEL_23:
    v22 = v43;
    if (v43)
    {
      v43 = 0;
      LODWORD(v44) = 0;
      WTF::fastFree(v22, v14);
    }

    goto LABEL_25;
  }

  v2 = 0;
LABEL_17:
  v17 = v43;
  v3 = v44;
  v18 = 1;
LABEL_27:
  v26 = *(a1 + 1);
  v27 = *(a1 + 2);
  v28 = *a1;
  if (v26 <= &v27[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38)
    {
      if (v26)
      {
        (*(*v38 + 16))(v38);
        v26 = *(a1 + 1);
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_60:
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (v39)
    {
      if (v26)
      {
        (*(*v39 + 16))(v39);
        v41 = 0;
        v28 = *a1;
        v26 = *(a1 + 1);
        goto LABEL_64;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 0;
    v41 = 0;
    goto LABEL_64;
  }

  *(a1 + 2) = v27 + 1;
  if (!v27)
  {
    goto LABEL_60;
  }

  v29 = *v27;
  if (v29 < 2)
  {
    v30 = 1;
    goto LABEL_31;
  }

  v41 = v29;
LABEL_64:
  *a1 = 0;
  *(a1 + 1) = 0;
  v40 = *(a1 + 3);
  if (v40 && v26)
  {
    (*(*v40 + 16))(v40, v28);
  }

  v30 = 0;
  v29 = v41;
LABEL_31:
  if (v29)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  result = IPC::Decoder::decode<WTF::String>(a1, &v43);
  if (*a1)
  {
    if (v18 & 1) != 0 && (v30 & 1) != 0 && (v44)
    {
      v34 = v43;
      *a2 = v17;
      *(a2 + 8) = v3;
      *(a2 + 12) = v2;
      *(a2 + 16) = v31;
      *(a2 + 24) = v34;
      *(a2 + 32) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  if (v44)
  {
    result = v43;
    v43 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v33);
      }
    }
  }

  if (v17)
  {
    v35 = v18;
  }

  else
  {
    v35 = 0;
  }

  if (v35 == 1)
  {
    return WTF::fastFree(v17, v33);
  }

  return result;
}

void sub_19D713720(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 1)
  {
    WTF::fastFree(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::HTMLModelElementCamera,void>::encode(IPC::Encoder *a1, double *a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[1]);
  v4 = a2[2];

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::HTMLModelElementCamera,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<unsigned long long>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<unsigned long long>(a1);
  v9 = v8;
  result = IPC::Decoder::decode<unsigned long long>(a1);
  v12 = *a1;
  if (!*a1)
  {
    goto LABEL_8;
  }

  if ((v6 & 1) == 0 || (v9 & 1) == 0 || (v11 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    *a2 = 0;
    goto LABEL_6;
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  LOBYTE(v12) = 1;
  *(a2 + 16) = result;
LABEL_6:
  *(a2 + 24) = v12;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::NotificationData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 96));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 152));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 144));
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::UUID>> const&>(a1, a2 + 160);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 208));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 216));
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 224), *(a2 + 236));

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 240));
}

void IPC::ArgumentCoder<WebCore::NotificationData,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v82 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::URL>(a1, &v51);
  IPC::Decoder::decode<WTF::String>(a1, &v49);
  IPC::Decoder::decode<WTF::String>(a1, &v47);
  IPC::Decoder::decode<WTF::String>(a1, &v45);
  IPC::Decoder::decode<WTF::String>(a1, &v43);
  IPC::Decoder::decode<WTF::String>(a1, &v41);
  v4 = IPC::Decoder::decode<WebCore::NotificationDirection>(a1);
  IPC::Decoder::decode<WTF::String>(a1, &v39);
  IPC::Decoder::decode<WTF::URL>(a1, &v35);
  IPC::Decoder::decode<WTF::UUID>(a1, &v80);
  IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::UUID>>>(v77, a1);
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v7 = v6;
  v8 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v10 = v9;
  IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v32);
  v11 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  if (!*a1)
  {
    goto LABEL_55;
  }

  if ((v54 & 1) == 0 || (v13 = v51, v51 = 0, v55 = v13, v56 = v52, v57 = v53, LODWORD(v52) = v52 & 0xFFFFFFFE, (v50 & 1) == 0) || (v14 = v49, v49 = 0, v58 = v14, (v48 & 1) == 0) || (v15 = v47, v47 = 0, v59 = v15, (v46 & 1) == 0) || (v16 = v45, v45 = 0, v60 = v16, (v44 & 1) == 0) || (v17 = v43, v43 = 0, v61 = v17, (v42 & 1) == 0) || (v18 = v41, v41 = 0, v62 = v18, (v4 & 0x100) == 0) || (v63 = v4, (v40 & 1) == 0) || (v19 = v39, v39 = 0, v64 = v19, (v38 & 1) == 0) || (v20 = v35, v35 = 0, v65 = v20, v66 = v36, v67 = v37, LODWORD(v36) = v36 & 0xFFFFFFFE, (v81 & 1) == 0) || (v68 = v80, (v79 & 1) == 0) || (v69 = v77[0], v70 = v77[1], v71 = v78, (v7 & 1) == 0) || (v72 = v5, (v10 & 1) == 0) || (v73 = v8, (v34 & 1) == 0) || (v74 = v32, v21 = v33, v32 = 0, v33 = 0, v75 = v21, (v11 & 0x10000) == 0))
  {
    __break(1u);
LABEL_55:
    *a2 = 0;
    a2[256] = 0;
    goto LABEL_18;
  }

  v76 = v11;
  WebCore::NotificationData::NotificationData(a2, &v55);
  a2[256] = 1;
  WebCore::NotificationData::~NotificationData(&v55, v22);
LABEL_18:
  if (v34 == 1)
  {
    v31 = v32;
    if (v32)
    {
      v32 = 0;
      LODWORD(v33) = 0;
      WTF::fastFree(v31, v12);
    }
  }

  if (v38 == 1)
  {
    v23 = v35;
    v35 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v12);
      }
    }
  }

  if (v40 == 1)
  {
    v24 = v39;
    v39 = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v12);
      }
    }
  }

  if (v42 == 1)
  {
    v25 = v41;
    v41 = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v12);
      }
    }
  }

  if (v44 == 1)
  {
    v26 = v43;
    v43 = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v12);
      }
    }
  }

  if (v46 == 1)
  {
    v27 = v45;
    v45 = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v12);
      }
    }
  }

  if (v48 == 1)
  {
    v28 = v47;
    v47 = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v12);
      }
    }
  }

  if (v50 == 1)
  {
    v29 = v49;
    v49 = 0;
    if (v29)
    {
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v12);
      }
    }
  }

  if (v54 == 1)
  {
    v30 = v51;
    v51 = 0;
    if (v30)
    {
      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v12);
      }
    }
  }
}

void sub_19D713D48(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, WTF::StringImpl *a20, char a21, WTF::StringImpl *a22, char a23, WTF::StringImpl *a24, char a25, WTF::StringImpl *a26, char a27, WTF::StringImpl *a28, char a29, WTF::StringImpl *a30, char a31, WTF::StringImpl *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, int a38, __int16 a39, char a40, char a41)
{
  WebCore::NotificationData::~NotificationData(&a39, a2);
  if (a13 == 1 && a10)
  {
    WTF::fastFree(a10, v42);
  }

  if (a19 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, v42);
  }

  if (a21 == 1 && a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v42);
  }

  if (a23 == 1 && a22 && atomic_fetch_add_explicit(a22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a22, v42);
  }

  if (a25 == 1 && a24 && atomic_fetch_add_explicit(a24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a24, v42);
  }

  if (a27 == 1 && a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, v42);
  }

  if (a29 == 1 && a28 && atomic_fetch_add_explicit(a28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a28, v42);
  }

  if (a31 == 1 && a30 && atomic_fetch_add_explicit(a30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a30, v42);
  }

  if (a37 == 1 && a32 && atomic_fetch_add_explicit(a32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a32, v42);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WebCore::NotificationDirection>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::NotificationDirection,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t *IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::UUID>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 48) & 1) == 0)
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

uint64_t IPC::ArgumentCoder<WebCore::PermissionDescriptor,void>::decode(uint64_t *a1)
{
  result = IPC::Decoder::decode<WebCore::PermissionName>(a1);
  v3 = *a1;
  if (!*a1)
  {
    LOBYTE(result) = 0;
    return result | (v3 << 8);
  }

  if ((result & 0x100) != 0)
  {
    LODWORD(v3) = 1;
    return result | (v3 << 8);
  }

  __break(1u);
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::PermissionName>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::PermissionName,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PushSubscriptionData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(a1, a2 + 16);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 32), *(a2 + 44));
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 48), *(a2 + 60));
  v4 = *(a2 + 64);
  v5 = *(a2 + 76);

  return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v4, v5);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::PushSubscriptionData,void>::decode@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v21 = a1[3];
    if (v21)
    {
      if (v4)
      {
        (*(*v21 + 16))(v21);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_43;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_43:
    *a1 = 0;
    a1[1] = 0;
    v22 = a1[3];
    if (v22)
    {
      if (v4)
      {
        (*(*v22 + 16))(v22);
        v6 = *a1;
        v4 = a1[1];
        goto LABEL_46;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_46:
    *a1 = 0;
    a1[1] = 0;
    v23 = a1[3];
    if (v23 && v4)
    {
      (*(*v23 + 16))(v23, v6);
    }

    goto LABEL_47;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_46;
  }

  if (v7)
  {
    v8 = 0;
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v10)
  {
    v8 = v9;
    goto LABEL_8;
  }

LABEL_47:
  v24 = *a1;
  v25 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v26 = a1[3];
  if (v26 && v25)
  {
    (*(*v26 + 16))(v26, v24);
  }

  v8 = 0;
  v11 = 0;
LABEL_9:
  IPC::Decoder::decode<WTF::String>(a1, &v49);
  IPC::Decoder::decode<std::optional<unsigned long long>>(a1, &v46);
  IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v43);
  IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v40);
  result = IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v37);
  if (!*a1)
  {
LABEL_40:
    *a2 = 0;
    a2[80] = 0;
    goto LABEL_25;
  }

  if ((v11 & 1) == 0 || (v27 = v8, (v50 & 1) == 0) || (v14 = v49, v49 = 0, v28 = v14, (v48 & 1) == 0) || (v29 = v46, v30 = v47, (v45 & 1) == 0) || (v31 = v43, v15 = v44, v43 = 0, v44 = 0, v32 = v15, (v42 & 1) == 0) || (v33 = v40, v16 = v41, v40 = 0, v41 = 0, v34 = v16, (v39 & 1) == 0))
  {
    __break(1u);
    goto LABEL_40;
  }

  v35 = v37;
  v17 = v38;
  v37 = 0;
  v38 = 0;
  v36 = v17;
  WebCore::PushSubscriptionData::PushSubscriptionData(a2, &v27);
  a2[80] = 1;
  v18 = v35;
  if (v35)
  {
    v35 = 0;
    LODWORD(v36) = 0;
    WTF::fastFree(v18, v13);
  }

  v19 = v33;
  if (v33)
  {
    v33 = 0;
    LODWORD(v34) = 0;
    WTF::fastFree(v19, v13);
  }

  v20 = v31;
  if (v31)
  {
    v31 = 0;
    LODWORD(v32) = 0;
    WTF::fastFree(v20, v13);
  }

  result = v28;
  v28 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v13);
  }

LABEL_25:
  if (v39 == 1)
  {
    result = v37;
    if (v37)
    {
      v37 = 0;
      LODWORD(v38) = 0;
      result = WTF::fastFree(result, v13);
    }
  }

  if (v42 == 1)
  {
    result = v40;
    if (v40)
    {
      v40 = 0;
      LODWORD(v41) = 0;
      result = WTF::fastFree(result, v13);
    }
  }

  if (v45 == 1)
  {
    result = v43;
    if (v43)
    {
      v43 = 0;
      LODWORD(v44) = 0;
      result = WTF::fastFree(result, v13);
    }
  }

  if (v50 == 1)
  {
    result = v49;
    v49 = 0;
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

void sub_19D7144E4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, WTF *a13, int a14, WTF *a15, int a16, WTF *a17, int a18, WTF *a19, int a20, int a21, char a22, WTF *a23, int a24, int a25, char a26)
{
  if (a17)
  {
    WTF::fastFree(a17, a2);
  }

  if (a15)
  {
    WTF::fastFree(a15, a2);
  }

  if (a13)
  {
    WTF::fastFree(a13, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a22 == 1 && a19)
  {
    WTF::fastFree(a19, a2);
  }

  if (a26 == 1 && a23)
  {
    WTF::fastFree(a23, a2);
  }

  if (*(v26 - 80) == 1)
  {
    v28 = *(v26 - 96);
    if (v28)
    {
      *(v26 - 96) = 0;
      *(v26 - 88) = 0;
      WTF::fastFree(v28, a2);
    }
  }

  if (*(v26 - 40) == 1)
  {
    v29 = *(v26 - 48);
    *(v26 - 48) = 0;
    if (v29)
    {
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::Report,void>::encode(IPC::Encoder *a1, WebCore::Report *this)
{
  v4 = WebCore::Report::type(this);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v4);
  v5 = WebCore::Report::url(this);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v5);
  v6 = WebCore::Report::body(this);

  return IPC::ArgumentCoder<WTF::RefPtr<WebCore::ReportBody,WTF::RawPtrTraits<WebCore::ReportBody>,WTF::DefaultRefDerefTraits<WebCore::ReportBody>>,void>::encode<IPC::Encoder,WebCore::ReportBody>(a1, v6);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::Report,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v74);
  result = IPC::Decoder::decode<WTF::String>(a1, &v72);
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *a1;
  if (v6 <= &v7[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v59 = *(a1 + 3);
    if (v59)
    {
      if (v6)
      {
        (*(*v59 + 16))(v59);
        v6 = *(a1 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_184;
  }

  v9 = v7 + 1;
  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_184:
    *a1 = 0;
    *(a1 + 1) = 0;
    v60 = *(a1 + 3);
    if (v60)
    {
      if (v6)
      {
        (*(*v60 + 16))(v60);
        v8 = *a1;
        v6 = *(a1 + 1);
        goto LABEL_187;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
LABEL_187:
    *a1 = 0;
    *(a1 + 1) = 0;
    v61 = *(a1 + 3);
    if (v61 && v6)
    {
      (*(*v61 + 16))(v61, v8);
    }

    goto LABEL_195;
  }

  if (*v7 >= 2u)
  {
    goto LABEL_187;
  }

  if (*v7)
  {
    if (v6 <= v9 - v8)
    {
      v62 = 0;
      v63 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v64 = *(a1 + 3);
      if (v64)
      {
        (*(*v64 + 16))(v64);
        v63 = *a1;
        v62 = *(a1 + 1);
      }
    }

    else
    {
      *(a1 + 2) = v7 + 2;
      if (v7 != -1)
      {
        v10 = *v9;
        if (v10 < 5)
        {
          v11 = v10 | 0x100;
          if (!v8)
          {
            goto LABEL_195;
          }

LABEL_9:
          if (v11 >= 0x100 && !v11)
          {
            IPC::Decoder::decode<WTF::String>(a1, &v85);
            IPC::Decoder::decode<WTF::String>(a1, &v90);
            IPC::Decoder::decode<WTF::String>(a1, &v88);
            IPC::Decoder::decode<WTF::String>(a1, &v83);
            IPC::Decoder::decode<WTF::String>(a1, &v81);
            IPC::Decoder::decode<WTF::String>(a1, &v79);
            IPC::Decoder::decode<WTF::String>(a1, &v77);
            v2 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
            v12 = *(a1 + 1);
            v13 = ((*(a1 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
            v14 = *a1;
            v15 = v13 - *a1;
            v16 = v12 >= v15;
            v17 = v12 - v15;
            if (v16 && v17 > 1)
            {
              *(a1 + 2) = v13 + 1;
              if (v13)
              {
                v18 = *v13 | 0x10000;
                v8 = v14;
                goto LABEL_16;
              }
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
              v68 = *(a1 + 3);
              if (v68)
              {
                if (v12)
                {
                  (*(*v68 + 16))(v68, v14);
                  v14 = *a1;
                  v12 = *(a1 + 1);
                  goto LABEL_207;
                }
              }

              else
              {
                v12 = 0;
              }

              v14 = 0;
            }

LABEL_207:
            *a1 = 0;
            *(a1 + 1) = 0;
            v69 = *(a1 + 3);
            if (v69)
            {
              if (v12)
              {
                (*(*v69 + 16))(v69, v14);
                v18 = 0;
                v8 = *a1;
                v12 = *(a1 + 1);
                v14 = *a1;
                goto LABEL_16;
              }

              v8 = 0;
            }

            else
            {
              v8 = 0;
              v12 = 0;
            }

            v14 = 0;
            v18 = 0;
LABEL_16:
            v19 = (*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v12 < v19 - v14 || v12 - (v19 - v14) <= 7)
            {
              *a1 = 0;
              *(a1 + 1) = 0;
              v55 = *(a1 + 3);
              if (v55)
              {
                if (v12)
                {
                  (*(*v55 + 16))(v55, v8);
                  v8 = *a1;
                  v12 = *(a1 + 1);
                  goto LABEL_174;
                }
              }

              else
              {
                v12 = 0;
              }

              v8 = 0;
            }

            else
            {
              *(a1 + 2) = v19 + 8;
              if (v19)
              {
                v20 = 1;
                goto LABEL_20;
              }
            }

LABEL_174:
            *a1 = 0;
            *(a1 + 1) = 0;
            v56 = *(a1 + 3);
            if (v56)
            {
              if (v12)
              {
                (*(*v56 + 16))(v56, v8);
                v20 = 0;
                v8 = *a1;
                v12 = *(a1 + 1);
                v14 = *a1;
                goto LABEL_20;
              }

              v8 = 0;
            }

            else
            {
              v8 = 0;
              v12 = 0;
            }

            v14 = 0;
            v20 = 0;
LABEL_20:
            v21 = (*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v12 < v21 - v14 || v12 - (v21 - v14) <= 7)
            {
              *a1 = 0;
              *(a1 + 1) = 0;
              v57 = *(a1 + 3);
              if (v57)
              {
                if (v12)
                {
                  (*(*v57 + 16))(v57, v8);
                  v8 = *a1;
                  v12 = *(a1 + 1);
                  goto LABEL_180;
                }
              }

              else
              {
                v12 = 0;
              }

              v8 = 0;
            }

            else
            {
              *(a1 + 2) = v21 + 8;
              if (v21)
              {
                v22 = 1;
                if (v14)
                {
LABEL_24:
                  if ((v86 & 1) == 0 || (v91 & 1) == 0 || (v89 & 1) == 0 || (v84 & 1) == 0 || (v82 & 1) == 0 || (v80 & 1) == 0 || (v78 & 1) == 0 || v2 <= 0xFFu || (v18 & 0x10000) == 0 || (v20 & 1) == 0 || (v22 & 1) == 0)
                  {
                    goto LABEL_169;
                  }

                  WebCore::CSPViolationReportBody::create();
                  v2 = v76;
                  v23 = 1;
LABEL_36:
                  if (v78 == 1)
                  {
                    v24 = v77;
                    v77 = 0;
                    if (v24)
                    {
                      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v24, v8);
                      }
                    }
                  }

                  if (v80 == 1)
                  {
                    v25 = v79;
                    v79 = 0;
                    if (v25)
                    {
                      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v25, v8);
                      }
                    }
                  }

                  if (v82 == 1)
                  {
                    v26 = v81;
                    v81 = 0;
                    if (v26)
                    {
                      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v26, v8);
                      }
                    }
                  }

                  if (v84 == 1)
                  {
                    v27 = v83;
                    v83 = 0;
                    if (v27)
                    {
                      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v27, v8);
                      }
                    }
                  }

                  if (v89 == 1)
                  {
                    v28 = v88;
                    v88 = 0;
                    if (v28)
                    {
                      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v28, v8);
                      }
                    }
                  }

                  if (v91 == 1)
                  {
                    v29 = v90;
                    v90 = 0;
                    if (v29)
                    {
                      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v29, v8);
                      }
                    }
                  }

                  if (v86 == 1)
                  {
                    v30 = v85;
                    v85 = 0;
                    if (v30)
                    {
                      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v30, v8);
                      }
                    }
                  }

                  if ((v23 & 1) == 0)
                  {
                    v31 = *a1;
                    v32 = *(a1 + 1);
                    *a1 = 0;
                    *(a1 + 1) = 0;
                    v33 = *(a1 + 3);
                    if (!v33 || !v32)
                    {
                      goto LABEL_195;
                    }

LABEL_168:
                    (*(*v33 + 16))(v33, v31);
                    if (!*a1)
                    {
                      goto LABEL_195;
                    }

                    goto LABEL_169;
                  }

                  goto LABEL_140;
                }

LABEL_181:
                v2 = 0;
                v23 = 0;
                goto LABEL_36;
              }
            }

LABEL_180:
            *a1 = 0;
            *(a1 + 1) = 0;
            v58 = *(a1 + 3);
            if (v58)
            {
              if (v12)
              {
                (*(*v58 + 16))(v58, v8);
                v22 = 0;
                if (*a1)
                {
                  goto LABEL_24;
                }
              }
            }

            goto LABEL_181;
          }

          if (v11 >= 0x100 && v11 == 1)
          {
            v2 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
            IPC::Decoder::decode<WTF::URL>(a1, &v85);
            IPC::Decoder::decode<WTF::String>(a1, &v90);
            v35 = *a1;
            if (*a1)
            {
              if (v2 <= 0xFFu || (v87 & 1) == 0 || (v91 & 1) == 0)
              {
                goto LABEL_169;
              }

              WebCore::COEPInheritenceViolationReportBody::create();
              v2 = v88;
            }

            else
            {
              v2 = 0;
            }

            if (v91 == 1)
            {
              v36 = v90;
              v90 = 0;
              if (v36)
              {
                if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v36, v8);
                }
              }
            }

            if (v87 == 1)
            {
              v37 = v85;
              v85 = 0;
              if (v37)
              {
                if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v37, v8);
                }
              }
            }

            if (!v35)
            {
              v31 = *a1;
              v38 = *(a1 + 1);
              *a1 = 0;
              *(a1 + 1) = 0;
              v33 = *(a1 + 3);
              if (!v33 || !v38)
              {
                goto LABEL_195;
              }

              goto LABEL_168;
            }

LABEL_140:
            if (!*a1)
            {
              if (!v2)
              {
                goto LABEL_195;
              }

              if (*(v2 + 2) != 1)
              {
                --*(v2 + 2);
                goto LABEL_195;
              }

              goto LABEL_170;
            }

            v70 = v2;
            LOBYTE(v34) = 1;
            v71 = 1;
            goto LABEL_142;
          }

          if (v11 >= 0x100 && v11 == 2)
          {
            v2 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
            IPC::Decoder::decode<WTF::URL>(a1, &v85);
            Options = IPC::Decoder::decode<WebCore::FetchOptionsDestination>(a1);
            v40 = *a1;
            if (*a1)
            {
              if (v2 <= 0xFFu || (v87 & 1) == 0 || Options <= 0xFFu)
              {
                goto LABEL_169;
              }

              WebCore::CORPViolationReportBody::create();
              v2 = v90;
            }

            else
            {
              v2 = 0;
            }

            if (v87 == 1)
            {
              v41 = v85;
              v85 = 0;
              if (v41)
              {
                if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v41, v8);
                }
              }
            }

            if (!v40)
            {
              v31 = *a1;
              v42 = *(a1 + 1);
              *a1 = 0;
              *(a1 + 1) = 0;
              v33 = *(a1 + 3);
              if (!v33 || !v42)
              {
                goto LABEL_195;
              }

              goto LABEL_168;
            }

            goto LABEL_140;
          }

          if (v11 >= 0x100 && v11 == 3)
          {
            IPC::Decoder::decode<WTF::String>(a1, &v85);
            v2 = IPC::Decoder::decode<WTF::Seconds>(a1);
            v44 = v43;
            IPC::Decoder::decode<WTF::String>(a1, &v90);
            IPC::Decoder::decode<WTF::String>(a1, &v88);
            IPC::Decoder::decode<std::optional<unsigned int>>(a1);
            v46 = v45;
            IPC::Decoder::decode<std::optional<unsigned int>>(a1);
            v47 = *a1;
            if (*a1)
            {
              if ((v86 & 1) == 0 || (v44 & 1) == 0 || (v91 & 1) == 0 || (v89 & 1) == 0 || (v46 & 1) == 0 || (v8 & 1) == 0)
              {
                goto LABEL_169;
              }

              WebCore::DeprecationReportBody::create();
              v2 = v83;
            }

            else
            {
              v2 = 0;
            }

            if (v89 == 1)
            {
              v48 = v88;
              v88 = 0;
              if (v48)
              {
                if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v48, v8);
                }
              }
            }

            if (v91 == 1)
            {
              v49 = v90;
              v90 = 0;
              if (v49)
              {
                if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v49, v8);
                }
              }
            }

            if (v86 == 1)
            {
              v50 = v85;
              v85 = 0;
              if (v50)
              {
                if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v50, v8);
                }
              }
            }

            if (!v47)
            {
              v31 = *a1;
              v51 = *(a1 + 1);
              *a1 = 0;
              *(a1 + 1) = 0;
              v33 = *(a1 + 3);
              if (!v33 || !v51)
              {
                goto LABEL_195;
              }

              goto LABEL_168;
            }

            goto LABEL_140;
          }

          if (v11 < 0x100 || v11 != 4)
          {
            goto LABEL_195;
          }

          IPC::Decoder::decode<WTF::String>(a1, &v85);
          v52 = *a1;
          if (!*a1)
          {
            v2 = 0;
            goto LABEL_135;
          }

          if (v86)
          {
            WebCore::TestReportBody::create();
            v2 = v90;
LABEL_135:
            if (v86 == 1)
            {
              v53 = v85;
              v85 = 0;
              if (v53)
              {
                if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v53, v8);
                }
              }
            }

            if (!v52)
            {
              v31 = *a1;
              v54 = *(a1 + 1);
              *a1 = 0;
              *(a1 + 1) = 0;
              v33 = *(a1 + 3);
              if (!v33 || !v54)
              {
                goto LABEL_195;
              }

              goto LABEL_168;
            }

            goto LABEL_140;
          }

          do
          {
LABEL_169:
            __break(1u);
LABEL_170:
            (*(*v2 + 8))(v2, v8);
LABEL_195:
            LOBYTE(v70) = 0;
            v71 = 0;
            v8 = *a1;
            v67 = *(a1 + 1);
            *a1 = 0;
            *(a1 + 1) = 0;
            result = *(a1 + 3);
            if (!result || !v67)
            {
              *a2 = 0;
              a2[8] = 0;
              goto LABEL_149;
            }

            result = (*(*result + 16))(result, v8);
            v34 = 0;
            v8 = *a1;
            if (!*a1)
            {
              goto LABEL_199;
            }

LABEL_142:
            ;
          }

          while ((v75 & 1) == 0 || (v73 & 1) == 0 || (v34 & 1) == 0);
          result = WebCore::Report::create();
          *a2 = v85;
          a2[8] = 1;
          if ((v71 & 1) == 0)
          {
            goto LABEL_149;
          }

          goto LABEL_146;
        }

LABEL_194:
        *a1 = 0;
        *(a1 + 1) = 0;
        v66 = *(a1 + 3);
        if (!v66)
        {
          goto LABEL_195;
        }

        if (!v6)
        {
          goto LABEL_195;
        }

        (*(*v66 + 16))(v66, v8);
        v11 = 0;
        if (!*a1)
        {
          goto LABEL_195;
        }

        goto LABEL_9;
      }

      v62 = v6;
      v63 = v8;
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v65 = *(a1 + 3);
    if (v65 && v62)
    {
      (*(*v65 + 16))(v65, v63, v62);
      v8 = *a1;
      v6 = *(a1 + 1);
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    goto LABEL_194;
  }

  v70 = 0;
  v34 = 1;
  v71 = 1;
  if (v8)
  {
    goto LABEL_142;
  }

LABEL_199:
  *a2 = 0;
  a2[8] = 0;
  if (v34)
  {
LABEL_146:
    result = v70;
    if (v70)
    {
      if (*(v70 + 2) == 1)
      {
        result = (*(*v70 + 8))(v70);
      }

      else
      {
        --*(v70 + 2);
      }
    }
  }

LABEL_149:
  if (v73 == 1)
  {
    result = v72;
    v72 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  if (v75 == 1)
  {
    result = v74;
    v74 = 0;
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

void sub_19D71539C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16, char a17, uint64_t a18, WTF::StringImpl *a19, char a20, WTF::StringImpl *a21, char a22, WTF::StringImpl *a23, char a24, WTF::StringImpl *a25, char a26, WTF::StringImpl *a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a20 == 1 && a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  if (a22 == 1 && a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, a2);
  }

  if (a24 == 1 && a23 && atomic_fetch_add_explicit(a23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a23, a2);
  }

  if (a26 == 1 && a25 && atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a25, a2);
  }

  if (*(v32 - 88) == 1)
  {
    v34 = *(v32 - 96);
    *(v32 - 96) = 0;
    if (v34)
    {
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, a2);
      }
    }
  }

  if (*(v32 - 72) == 1)
  {
    v35 = *(v32 - 80);
    *(v32 - 80) = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, a2);
      }
    }
  }

  if (a28 == 1 && a27 && atomic_fetch_add_explicit(a27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a27, a2);
  }

  if (a15 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a17 == 1 && a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::WebLockManagerSnapshot,void>::decode@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v15);
  result = IPC::Decoder::decode<WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v13);
  if (*a1)
  {
    if (v17)
    {
      v7 = v15;
      v8 = v16;
      v15 = 0;
      v16 = 0;
      if (v14)
      {
        *&v6 = 0;
        v9 = v13;
        v12 = v6;
        v13 = v6;
        *a2 = v7;
        *(a2 + 8) = v8;
        v11 = v6;
        *(a2 + 16) = v9;
        *(a2 + 32) = 1;
        WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v5);
        result = WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v10);
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
LABEL_5:
  if (v14 == 1)
  {
    result = WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v5);
  }

  if (v17 == 1)
  {
    return WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v5);
  }

  return result;
}

void sub_19D715720(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 - 24))
  {
    WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 - 40, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
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

void sub_19D7157AC(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::WebLockManagerSnapshot::Info,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  v5 = *(a2 + 8);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
}

WTF *IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(WTF *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
LABEL_17:
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_20:
        *a2 = 0;
        *(a2 + 1) = 0;
        v12 = *(a2 + 3);
        if (v12)
        {
          if (v6)
          {
            (*(*v12 + 16))(v12, v5);
            v5 = *a2;
            v6 = *(a2 + 1);
LABEL_23:
            *a2 = 0;
            *(a2 + 1) = 0;
            v13 = *(a2 + 3);
            if (v13 && v6)
            {
              (*(*v13 + 16))(v13, v5);
            }

            *v3 = 0;
            *(v3 + 8) = 0;
            goto LABEL_25;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_20;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_20;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_23;
  }

  if (!v7)
  {
    *result = 0;
    goto LABEL_12;
  }

  result = IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v17);
  v9 = *a2;
  if (!*a2)
  {
    v10 = 0;
    goto LABEL_8;
  }

  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = JSC::ArrayBuffer::create();
  v10 = v16;
LABEL_8:
  if (v19 == 1)
  {
    result = v17;
    if (v17)
    {
      v17 = 0;
      v18 = 0;
      result = WTF::fastFree(result, v8);
    }
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  if (v9)
  {
    *v3 = v10;
LABEL_12:
    *(v3 + 8) = 1;
    return result;
  }

LABEL_25:
  v14 = *a2;
  v15 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v15)
    {
      return (*(*result + 16))(result, v14);
    }
  }

  return result;
}

void sub_19D715A0C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
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

WTF::DeferrableRefCountedBase *IPC::Decoder::decode<std::optional<WebCore::AuthenticationExtensionsClientOutputs>>(_BYTE *a1, IPC::Decoder *a2)
{
  v6 = *(a2 + 2);
  v7 = *a2;
  v8 = *(a2 + 1);
  if (v8 <= &v6[-v7])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v45 = *(a2 + 3);
    if (v45)
    {
      if (v8)
      {
        (*(*v45 + 16))(v45);
        v7 = *a2;
        v8 = *(a2 + 1);
        goto LABEL_119;
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = 0;
LABEL_119:
    *a2 = 0;
    *(a2 + 1) = 0;
    v46 = *(a2 + 3);
    if (v46)
    {
      if (v8)
      {
        (*(*v46 + 16))(v46, v7);
        v7 = *a2;
        v8 = *(a2 + 1);
        goto LABEL_122;
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = 0;
LABEL_122:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v8)
    {
      result = (*(*result + 16))(result, v7);
    }

    goto LABEL_99;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_119;
  }

  v9 = *v6;
  if (v9 >= 2)
  {
    goto LABEL_122;
  }

  if (!v9)
  {
    v78[0] = 0;
    v85 = 0;
    result = std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](a1, v78);
    a1[88] = 1;
    if (v85 != 1)
    {
      goto LABEL_93;
    }

    goto LABEL_84;
  }

  v10 = IPC::Decoder::decode<std::optional<BOOL>>(a2);
  v11 = v10;
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *a2;
  if (v12 <= &v13[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v47 = *(a2 + 3);
    if (v47)
    {
      if (v12)
      {
        (*(*v47 + 16))(v47);
        v12 = *(a2 + 1);
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_127;
  }

  v15 = v13 + 1;
  *(a2 + 2) = v13 + 1;
  if (!v13)
  {
LABEL_127:
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10)
    {
      goto LABEL_183;
    }

    v12 = 0;
    goto LABEL_129;
  }

  if (*v13 >= 2u)
  {
    goto LABEL_130;
  }

  if (*v13)
  {
    if (v12 <= &v15[-v14])
    {
      v51 = 0;
      v52 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v53 = *(a2 + 3);
      if (v53)
      {
        (*(*v53 + 16))(v53);
        v52 = *a2;
        v51 = *(a2 + 1);
      }
    }

    else
    {
      v16 = v13 + 2;
      *(a2 + 2) = v13 + 2;
      if (v13 != -1)
      {
        v17 = *v15;
        if (v17 < 2)
        {
          if (v14)
          {
            v18 = 0x10000;
            v19 = 256;
            v15 = v16;
            goto LABEL_17;
          }

LABEL_145:
          *a2 = 0;
          *(a2 + 1) = 0;
          v56 = *(a2 + 3);
          if (v56 && v12)
          {
            (*(*v56 + 16))(v56, v14);
          }

          v19 = 256;
          goto LABEL_147;
        }

LABEL_142:
        *a2 = 0;
        *(a2 + 1) = 0;
        v55 = *(a2 + 3);
        if (v55)
        {
          if (v12)
          {
            v10 = (*(*v55 + 16))(v55, v14);
            if (*a2)
            {
              goto LABEL_182;
            }

            v14 = 0;
            v12 = *(a2 + 1);
            goto LABEL_145;
          }
        }

        else
        {
          v12 = 0;
        }

        v14 = 0;
        goto LABEL_145;
      }

      v51 = v12;
      v52 = v14;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v54 = *(a2 + 3);
    if (v54 && v51)
    {
      (*(*v54 + 16))(v54, v52, v51);
      v14 = *a2;
      v12 = *(a2 + 1);
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    goto LABEL_142;
  }

  v19 = 0;
  LOWORD(v17) = 0;
  v18 = 0x10000;
LABEL_17:
  v21 = v17 | v19;
  v19 |= v18;
  if (v12 <= &v15[-v14])
  {
    v60 = 0;
    v67 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v12 && v67)
    {
      (*(*v67 + 16))(v67);
      v14 = *a2;
      v60 = *(a2 + 1);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    *(a2 + 2) = v15 + 1;
    if (v15)
    {
      v22 = *v15;
      if (v22 < 2)
      {
        if (v22)
        {
          v23 = IPC::Decoder::decode<std::optional<BOOL>>(a2);
          IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v86, a2);
          v10 = IPC::Decoder::decode<std::optional<BOOL>>(a2);
          v14 = *a2;
          if (*a2)
          {
            if ((v23 & 0x10000) != 0 && (v87 & 1) != 0 && (v10 & 0x10000) != 0)
            {
              v74 = v10;
              v76 = v86;
              v2 = 1;
              v77 = 1;
              goto LABEL_27;
            }

            goto LABEL_182;
          }

          if ((v87 & 1) != 0 && v86)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v86);
          }

          v12 = *(a2 + 1);
          goto LABEL_151;
        }

        v23 = 0;
        v2 = 0;
        v77 = 1;
        goto LABEL_27;
      }

      goto LABEL_151;
    }

    v60 = v12;
  }

  while (1)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v61 = *(a2 + 3);
    if (v61 && v60)
    {
      (*(*v61 + 16))(v61, v14, v60);
      v12 = *(a2 + 1);
    }

    else
    {
      v12 = 0;
    }

LABEL_151:
    *a2 = 0;
    *(a2 + 1) = 0;
    v62 = *(a2 + 3);
    if (v62 && v12)
    {
      (*(*v62 + 16))(v62);
    }

    v63 = *a2;
    v64 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10 && v64)
    {
      v10 = (*(*v10 + 16))(v10, v63);
      v23 = 0;
      v77 = 0;
      v14 = *a2;
    }

    else
    {
      v14 = 0;
      v23 = 0;
      v77 = 0;
    }

LABEL_27:
    v12 = *(a2 + 1);
    v24 = *(a2 + 2);
    v75 = v23;
    if (v12 <= &v24[-v14])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v49 = *(a2 + 3);
      if (v49)
      {
        if (v12)
        {
          (*(*v49 + 16))(v49);
          v14 = *a2;
          v12 = *(a2 + 1);
          goto LABEL_135;
        }
      }

      else
      {
        v12 = 0;
      }

      v14 = 0;
LABEL_135:
      *a2 = 0;
      *(a2 + 1) = 0;
      v50 = *(a2 + 3);
      if (v50)
      {
        if (v12)
        {
          (*(*v50 + 16))(v50, v14);
          goto LABEL_198;
        }
      }

      else
      {
        v12 = 0;
      }

      v14 = 0;
      goto LABEL_199;
    }

    *(a2 + 2) = v24 + 1;
    if (!v24)
    {
      goto LABEL_135;
    }

    v25 = *v24;
    if (v25 >= 2)
    {
      goto LABEL_199;
    }

    if (!v25)
    {
      v32 = 1;
      if (!v14)
      {
        goto LABEL_201;
      }

LABEL_45:
      v33 = v11;
      LOWORD(v26) = 0;
      v34 = 1;
      goto LABEL_54;
    }

    v10 = IPC::Decoder::decode<std::optional<BOOL>>(a2);
    v26 = v10;
    v12 = *(a2 + 1);
    v27 = *(a2 + 2);
    v28 = *a2;
    if (v12 <= &v27[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v65 = *(a2 + 3);
      if (v65)
      {
        if (v12)
        {
          (*(*v65 + 16))(v65);
          v12 = *(a2 + 1);
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v27 + 1;
      if (v27)
      {
        v29 = *v27;
        if (v29 >= 2)
        {
          goto LABEL_196;
        }

        if (!v29)
        {
          v23 = 0;
          v31 = 1;
          goto LABEL_47;
        }

        IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v86, a2);
        v10 = IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v96, a2);
        v30 = *a2;
        if (*a2)
        {
          if ((v87 & 1) == 0)
          {
            goto LABEL_182;
          }

          v23 = v86;
          v86 = 0;
          if ((v97 & 1) == 0)
          {
            goto LABEL_182;
          }

          v3 = v96;
        }

        else
        {
          if (v97)
          {
            v10 = v96;
            if (v96)
            {
              v10 = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v96);
            }
          }

          v23 = 0;
        }

        if (v87 == 1)
        {
          v10 = v86;
          if (v86)
          {
            v10 = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v86);
          }
        }

        if (v30)
        {
          v29 = 0;
          v31 = 0;
          goto LABEL_47;
        }

        goto LABEL_195;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v66 = *(a2 + 3);
    if (!v66)
    {
      v12 = 0;
LABEL_168:
      v28 = 0;
      goto LABEL_196;
    }

    if (!v12)
    {
      goto LABEL_168;
    }

    (*(*v66 + 16))(v66);
LABEL_195:
    v28 = *a2;
    v12 = *(a2 + 1);
LABEL_196:
    *a2 = 0;
    *(a2 + 1) = 0;
    v68 = *(a2 + 3);
    if (!v68 || !v12)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      goto LABEL_198;
    }

    (*(*v68 + 16))(v68, v28);
    v73 = *a2;
    v12 = *(a2 + 1);
    v10 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (!v10)
    {
      goto LABEL_198;
    }

    if (v12)
    {
      v10 = (*(*v10 + 16))(v10, v73);
    }

    v23 = 0;
    v29 = 1;
LABEL_47:
    if (!*a2)
    {
      if (((v29 | v31) & 1) == 0)
      {
        if (v3)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v3);
        }

        if (v23)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v23);
        }
      }

LABEL_198:
      v14 = *a2;
      v12 = *(a2 + 1);
LABEL_199:
      *a2 = 0;
      *(a2 + 1) = 0;
      v69 = *(a2 + 3);
      if (!v69 || !v12)
      {
        *a2 = 0;
        *(a2 + 1) = 0;
LABEL_201:
        v78[0] = 0;
        v85 = 0;
        v36 = v76;
        v35 = v77;
        goto LABEL_79;
      }

      (*(*v69 + 16))(v69, v14);
      v70 = *a2;
      v71 = *(a2 + 1);
      v72 = *(a2 + 3);
      *a2 = 0;
      *(a2 + 1) = 0;
      if (!v72)
      {
        goto LABEL_201;
      }

      if (!v71)
      {
        goto LABEL_201;
      }

      v10 = (*(*v72 + 16))(v72, v70);
      v32 = 0;
      if (!*a2)
      {
        goto LABEL_201;
      }

      goto LABEL_45;
    }

    if ((v26 & 0x10000) != 0 && !v29)
    {
      break;
    }

LABEL_182:
    __break(1u);
LABEL_183:
    if (v12)
    {
      (*(*v10 + 16))(v10);
      v14 = *a2;
      v12 = *(a2 + 1);
    }

    else
    {
LABEL_129:
      v14 = 0;
    }

LABEL_130:
    *a2 = 0;
    *(a2 + 1) = 0;
    v48 = *(a2 + 3);
    if (v48 && v12)
    {
      (*(*v48 + 16))(v48, v14);
    }

    v19 = 0;
LABEL_147:
    v57 = *a2;
    v58 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v59 = *(a2 + 3);
    if (v59 && v58)
    {
      v10 = (*(*v59 + 16))(v59, v57);
      LOWORD(v17) = 0;
      v18 = 0;
      v14 = *a2;
      v12 = *(a2 + 1);
      v15 = *(a2 + 2);
      goto LABEL_17;
    }

    v60 = 0;
    v14 = 0;
    v21 = v19;
  }

  v33 = v11;
  if (v31)
  {
    v23 = 0;
    v34 = 0;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v34 = 0;
  }

  v32 = 1;
LABEL_54:
  if ((v33 & 0x10000) == 0)
  {
    goto LABEL_182;
  }

  LOWORD(v86) = v33;
  if (!HIWORD(v19))
  {
    goto LABEL_182;
  }

  WORD1(v86) = v21;
  v35 = v77;
  if ((v77 & 1) == 0)
  {
    goto LABEL_182;
  }

  LOBYTE(v87) = 0;
  v90 = 0;
  if (v2)
  {
    v87 = v75;
    v88 = v76;
    v89 = v74;
    v90 = 1;
    v36 = 0;
  }

  else
  {
    v36 = v76;
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_182;
  }

  LOBYTE(v91) = 0;
  v95 = 0;
  if ((v34 & 1) == 0)
  {
    v91 = v26;
    LOBYTE(v92) = 0;
    v94 = 0;
    if ((v11 & 1) == 0)
    {
      v92 = v23;
      v93 = v3;
      v94 = 1;
      v3 = 0;
      v23 = 0;
    }

    v95 = 1;
  }

  std::optional<WebCore::AuthenticationExtensionsClientOutputs>::optional[abi:sn200100]<WebCore::AuthenticationExtensionsClientOutputs,0>(v78, &v86);
  if (v95 == 1 && v94 == 1)
  {
    v37 = v93;
    v93 = 0;
    if (v37)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v37);
    }

    v38 = v92;
    v92 = 0;
    if (v38)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v38);
    }
  }

  if (v90 == 1)
  {
    v39 = v88;
    v88 = 0;
    if (v39)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v39);
    }
  }

  if (((v11 | v34) & 1) == 0)
  {
    if (v3)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v3);
    }

    if (v23)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v23);
    }
  }

LABEL_79:
  if ((v2 & v35) == 1 && v36)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v36);
  }

  if ((v85 & 1) == 0)
  {
    v43 = *a2;
    v44 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result || !v44 || (result = (*(*result + 16))(result, v43), (v85 & 1) == 0))
    {
LABEL_99:
      *a1 = 0;
      a1[88] = 0;
      goto LABEL_93;
    }
  }

  result = std::optional<WebCore::AuthenticationExtensionsClientOutputs>::optional[abi:sn200100]<WebCore::AuthenticationExtensionsClientOutputs,0>(a1, v78);
  a1[88] = 1;
  if (v85)
  {
LABEL_84:
    if (v84 == 1 && v83 == 1)
    {
      v40 = v82;
      v82 = 0;
      if (v40)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v40);
      }

      result = v81;
      v81 = 0;
      if (result)
      {
        result = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
      }
    }

    if (v80 == 1)
    {
      result = v79;
      v79 = 0;
      if (result)
      {
        result = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
      }
    }
  }

LABEL_93:
  if ((a1[88] & 1) == 0)
  {
    v41 = *a2;
    v42 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v42)
      {
        return (*(*result + 16))(result, v41);
      }
    }
  }

  return result;
}

void sub_19D716608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, WTF::DeferrableRefCountedBase *a16, uint64_t a17, char a18, uint64_t a19, WTF::DeferrableRefCountedBase *a20, WTF::DeferrableRefCountedBase *a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, int a40, __int16 a41, char a42, char a43)
{
  if (a28 == 1)
  {
    if (a24 == 1 && a22 == 1)
    {
      if (a21)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a21);
      }

      if (a20)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a20);
      }
    }

    if (a18 == 1)
    {
      if (a16)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a16);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::AuthenticatorAttestationResponseData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientOutputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientOutputs> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(a1, (a2 + 96));
  IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(a1, (a2 + 104));

  return IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 112);
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, void *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v19 = a2[3];
    if (v19)
    {
      if (v6)
      {
        (*(*v19 + 16))(v19);
        v5 = *a2;
        v6 = a2[1];
LABEL_32:
        *a2 = 0;
        a2[1] = 0;
        v20 = a2[3];
        if (v20 && v6)
        {
          (*(*v20 + 16))(v20, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_34:
        v21 = *a2;
        v22 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v22)
          {
            return (*(*result + 16))(result, v21);
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
    goto LABEL_32;
  }

  a2[2] = v4 + 1;
  if (!v4)
  {
    goto LABEL_32;
  }

  v8 = *v4;
  v24 = 0;
  v25 = 0;
  if (v8 >= 0x100000)
  {
    while (1)
    {
      v17 = IPC::Decoder::decode<WebCore::AuthenticatorTransport>(a2);
      v23 = v17;
      if (v17 < 0x100u)
      {
        goto LABEL_23;
      }

      v15 = HIDWORD(v25);
      if (HIDWORD(v25) == v25)
      {
        v16 = WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v24, HIDWORD(v25) + 1, &v23);
        v15 = HIDWORD(v25);
        *(v24 + HIDWORD(v25)) = *v16;
      }

      else
      {
        *(v24 + HIDWORD(v25)) = v17;
      }

      HIDWORD(v25) = v15 + 1;
      v8 = (v8 - 1);
      if (!v8)
      {
        WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v24, (v15 + 1));
        v12 = HIDWORD(v25);
        goto LABEL_17;
      }
    }
  }

  if (v8)
  {
    LODWORD(v25) = v8;
    v24 = WTF::fastMalloc(v8);
    while (1)
    {
      v9 = IPC::Decoder::decode<WebCore::AuthenticatorTransport>(a2);
      v23 = v9;
      if (v9 < 0x100u)
      {
        break;
      }

      v10 = HIDWORD(v25);
      if (HIDWORD(v25) == v25)
      {
        v11 = WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v24, HIDWORD(v25) + 1, &v23);
        v10 = HIDWORD(v25);
        *(v24 + HIDWORD(v25)) = *v11;
      }

      else
      {
        *(v24 + HIDWORD(v25)) = v9;
      }

      v12 = v10 + 1;
      HIDWORD(v25) = v12;
      v8 = (v8 - 1);
      if (!v8)
      {
        goto LABEL_17;
      }
    }

LABEL_23:
    v14 = 0;
    *a1 = 0;
    *(a1 + 16) = 0;
    goto LABEL_24;
  }

  v12 = 0;
LABEL_17:
  v13 = v24;
  v24 = 0;
  *a1 = v13;
  HIDWORD(v25) = 0;
  *(a1 + 8) = v25;
  *(a1 + 12) = v12;
  v14 = 1;
  *(a1 + 16) = 1;
LABEL_24:
  result = v24;
  if (v24)
  {
    v24 = 0;
    LODWORD(v25) = 0;
    result = WTF::fastFree(result, v5);
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_34;
  }

  return result;
}

void sub_19D716A8C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::AuthenticatorAssertionResponseData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientOutputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientOutputs> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(a1, (a2 + 96));
  IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(a1, (a2 + 104));
  IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(a1, (a2 + 112));

  return IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(a1, (a2 + 120));
}

void IPC::ArgumentCoder<WebCore::AuthenticatorResponseData,void>::encode(IPC::Encoder *a1, WebCore::AuthenticatorResponseData *this)
{
  WebCore::AuthenticatorResponseData::getSerializableForm(this, v3);
  v5 = v4;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>>(a1, v3, v5);
  if (v4 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,(mpark::detail::Trait)1> &>(&v6, v3);
  }
}

void sub_19D716B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25)
{
  if (a25 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,(mpark::detail::Trait)1> &>(v25 - 17, &a9);
  }

  _Unwind_Resume(exception_object);
}

void WebCore::AuthenticatorResponseData::getSerializableForm(WebCore::AuthenticatorResponseData *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  if (!v3)
  {
    *a2 = 0;
    *(a2 + 128) = 0;
    return;
  }

  if (*this == 1 && *(this + 14))
  {
    *v3 += 2;
    v25 = v3;
    std::__optional_copy_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_copy_base[abi:sn200100](v26, this + 16);
    v5 = *(this + 13);
    if (v5)
    {
      *v5 += 2;
    }

    *&v34 = v5;
    v6 = *(this + 14);
    if (v6)
    {
      *v6 += 2;
    }

    v7 = *(this + 39);
    v35[0] = 0;
    LODWORD(v35[1]) = 0;
    *(&v34 + 1) = v6;
    HIDWORD(v35[1]) = v7;
    if (v7)
    {
      v8 = WTF::fastMalloc(v7);
      LODWORD(v35[1]) = v7;
      v35[0] = v8;
      memcpy(v8, *(this + 18), *(this + 39));
    }

    WebCore::AuthenticatorAttestationResponseData::AuthenticatorAttestationResponseData(a2, &v25);
    *(a2 + 128) = 2;
    v10 = v35[0];
    if (v35[0])
    {
      v35[0] = 0;
      LODWORD(v35[1]) = 0;
      WTF::fastFree(v10, v9);
    }

    v11 = *(&v34 + 1);
    *(&v34 + 1) = 0;
    if (v11)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v11);
    }

    v12 = v34;
    *&v34 = 0;
    if (v12)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v12);
    }

    goto LABEL_29;
  }

  if (!*(this + 15) || !*(this + 16))
  {
    *v3 += 2;
    v25 = v3;
    std::__optional_copy_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_copy_base[abi:sn200100](v26, this + 16);
    v20 = v25;
    v25 = 0;
    *a2 = v20;
    std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](a2 + 8, v26);
    *(a2 + 128) = 1;
LABEL_29:
    if (v33 == 1)
    {
      if (v32 == 1 && v31 == 1)
      {
        v21 = v30;
        v30 = 0;
        if (v21)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v21);
        }

        v22 = v29;
        v29 = 0;
        if (v22)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v22);
        }
      }

      if (v28 == 1)
      {
        v23 = v27;
        v27 = 0;
        if (v23)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v23);
        }
      }
    }

    v24 = v25;
    v25 = 0;
    if (v24)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v24);
    }

    return;
  }

  *v3 += 2;
  v25 = v3;
  std::__optional_copy_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_copy_base[abi:sn200100](v26, this + 16);
  v13 = *(this + 13);
  if (v13)
  {
    *v13 += 2;
  }

  *&v34 = v13;
  v14 = *(this + 15);
  if (v14)
  {
    *v14 += 2;
  }

  *(&v34 + 1) = v14;
  v15 = *(this + 16);
  if (v15)
  {
    *v15 += 2;
  }

  v35[0] = v15;
  v16 = *(this + 17);
  if (v16)
  {
    *v16 += 2;
  }

  v17 = v25;
  v35[1] = v16;
  v25 = 0;
  *a2 = v17;
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](a2 + 8, v26);
  v18 = v34;
  v19 = *v35;
  v34 = 0u;
  *v35 = 0u;
  *(a2 + 96) = v18;
  *(a2 + 112) = v19;
  *(a2 + 128) = 3;
  WebCore::AuthenticatorAssertionResponseData::~AuthenticatorAssertionResponseData(&v25);
}

void sub_19D716E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::DeferrableRefCountedBase *a9, uint64_t a10, uint64_t a11, WTF::DeferrableRefCountedBase *a12, uint64_t a13, char a14, uint64_t a15, WTF::DeferrableRefCountedBase *a16, WTF::DeferrableRefCountedBase *a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, WTF::DeferrableRefCountedBase *a27, WTF::DeferrableRefCountedBase *a28, WTF *a29, int a30)
{
  if (a28)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a28);
  }

  if (a27)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a27);
  }

  if (a24 == 1)
  {
    if (a20 == 1 && a18 == 1)
    {
      if (a17)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a17);
      }

      if (a16)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a16);
      }
    }

    if (a14 == 1 && a12)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a12);
    }
  }

  if (a9)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a9);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::AuthenticatorResponseData,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>>(a1, v6);
  if (*a1)
  {
    if ((v8 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WebCore::AuthenticatorResponseData::AuthenticatorResponseData(v5, v6);
    WebCore::AuthenticatorResponseData::AuthenticatorResponseData(a2, v5);
    a2[160] = 1;
    WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v5, v4);
  }

  else
  {
    *a2 = 0;
    a2[160] = 0;
  }

  if (v8 == 1 && v7 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,(mpark::detail::Trait)1> &>(v5, v6);
  }
}

void sub_19D717004(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, WTF::DeferrableRefCountedBase *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, unsigned __int8 a45, int a46, __int16 a47, char a48, char a49)
{
  WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(&a9, a2);
  if (a47 == 1 && a45 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,(mpark::detail::Trait)1> &>(&a9, &a29);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 136) & 1) == 0)
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

void sub_19D7170BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (*(v13 + 136) == 1)
  {
    if (*(v13 + 128) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,(mpark::detail::Trait)1> &>(&a13, v13);
    }

    *(v13 + 128) = -1;
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 8));

  return IPC::ArgumentCoder<std::optional<WebCore::BufferSource>,void>::encode<IPC::Encoder,std::optional<WebCore::BufferSource> const&>(a1, a2 + 16);
}

_BYTE *IPC::Decoder::decode<std::optional<WebCore::BufferSource>>(_BYTE *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_13:
        *a2 = 0;
        *(a2 + 1) = 0;
        v12 = *(a2 + 3);
        if (v12)
        {
          if (v6)
          {
            (*(*v12 + 16))(v12, v5);
            v5 = *a2;
            v6 = *(a2 + 1);
LABEL_16:
            *a2 = 0;
            *(a2 + 1) = 0;
            v13 = *(a2 + 3);
            if (v13 && v6)
            {
              (*(*v13 + 16))(v13, v5);
            }

            *v3 = 0;
            goto LABEL_18;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_13;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_13;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_16;
  }

  if (!v7)
  {
    *result = 0;
    result[16] = 0;
    result[24] = 1;
    return result;
  }

  IPC::Decoder::decode<WebCore::BufferSource>(&v16, a2);
  v8 = v18;
  *v3 = 0;
  if (v8 == 1)
  {
    v3[8] = -1;
    v9 = v17;
    if (v17 != 255)
    {
      v10 = v16;
      v16 = 0;
      *v3 = v10;
      v3[8] = v9;
    }

    v3[16] = 1;
    v3[24] = 1;
    return mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v16);
  }

LABEL_18:
  v3[24] = 0;
  v14 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v14)
  {
    v15 = *(*result + 16);

    return v15();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::BufferSource>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a2, &v13);
  if ((v14 & 1) == 0)
  {
    goto LABEL_10;
  }

  while (*a2)
  {
    if (v14)
    {
      JSC::ArrayBuffer::tryCreate();
      v12 = 1;
      v11 = 0;
      *a1 = v15;
      *(a1 + 8) = 1;
      *(a1 + 16) = 1;
      return mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v11);
    }

    __break(1u);
LABEL_10:
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

  *a1 = 0;
  *(a1 + 16) = 0;
  v5 = *a2;
  v6 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v6)
  {
    return (*(*result + 16))(result, v5);
  }

  return result;
}

_BYTE *std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>::optional[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,0>(_BYTE *a1, uint64_t a2)
{
  v4 = std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_move_base[abi:sn200100](a1, a2);
  std::__optional_move_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v4 + 48, a2 + 48);
  a1[72] = 1;
  return a1;
}

void sub_19D717470(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    if (*(v1 + 32) == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v1 + 16);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::AuthenticationExtensionsClientInputs,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs> const&>(a1, a2 + 16);

  return IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs> const&>(a1, a2 + 64);
}

uint64_t std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs,0>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = *(a2 + 4);
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__optional_move_base[abi:sn200100]((a1 + 16), (a2 + 2));
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_move_base[abi:sn200100]((a1 + 64), (a2 + 8));
  *(a1 + 144) = 1;
  return a1;
}

void sub_19D717558(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 56) == 1)
  {
    if (*(v2 + 48) == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 32);
    }

    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
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

uint64_t IPC::ArgumentCoder<WebCore::AuthenticationExtensionsClientOutputs,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::CredentialPropertiesOutput>,void>::encode<IPC::Encoder,std::optional<WebCore::CredentialPropertiesOutput> const&>(a1, a2 + 2);
  IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs> const&>(a1, (a2 + 8));

  return IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs> const&>(a1, (a2 + 40));
}

uint64_t std::optional<WebCore::AuthenticationExtensionsClientOutputs>::optional[abi:sn200100]<WebCore::AuthenticationExtensionsClientOutputs,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a1 + 16) = v3;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 1;
  }

  std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false>::__optional_move_base[abi:sn200100](a1 + 40, a2 + 40);
  *(a1 + 80) = 1;
  return a1;
}

void sub_19D71769C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::UnknownCredentialOptions,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v10);
  result = IPC::Decoder::decode<WTF::String>(a1, &v8);
  if (*a1)
  {
    if (v11)
    {
      v6 = v10;
      v10 = 0;
      if (v9)
      {
        v7 = v8;
        *a2 = v6;
        *(a2 + 8) = v7;
        *(a2 + 16) = 1;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v9)
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

LABEL_5:
  if (v11 == 1)
  {
    result = v10;
    v10 = 0;
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

void sub_19D717798(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::AllAcceptedCredentialsOptions,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);

  return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (a2 + 2));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::AllAcceptedCredentialsOptions,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v15);
  IPC::Decoder::decode<WTF::String>(a1, &v13);
  result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v11);
  if (*a1)
  {
    if (v16)
    {
      v7 = v15;
      v15 = 0;
      if (v14)
      {
        v8 = v13;
        v13 = 0;
        if (v12)
        {
          *&v6 = 0;
          v9 = v11;
          v11 = v6;
          *a2 = v7;
          *(a2 + 8) = v8;
          v10 = v6;
          *(a2 + 16) = v9;
          *(a2 + 32) = 1;
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v5);
          result = 0;
          goto LABEL_6;
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
LABEL_6:
  if (v12 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v5);
  }

  if (v14 == 1)
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

  if (v16 == 1)
  {
    result = v15;
    v15 = 0;
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

void sub_19D71798C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 - 40))
  {
    v4 = *(v2 - 48);
    *(v2 - 48) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (*(v2 - 24) == 1)
  {
    v5 = *(v2 - 32);
    *(v2 - 32) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::CurrentUserDetailsOptions,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v16);
  IPC::Decoder::decode<WTF::String>(a1, &v14);
  IPC::Decoder::decode<WTF::String>(a1, &v12);
  result = IPC::Decoder::decode<WTF::String>(a1, &v10);
  if (*a1)
  {
    if (v17)
    {
      v6 = v16;
      v16 = 0;
      if (v15)
      {
        v7 = v14;
        v14 = 0;
        if (v13)
        {
          v8 = v12;
          v12 = 0;
          if (v11)
          {
            v9 = v10;
            *a2 = v6;
            *(a2 + 8) = v7;
            *(a2 + 16) = v8;
            *(a2 + 24) = v9;
            *(a2 + 32) = 1;
            goto LABEL_7;
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  if (v11)
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

LABEL_7:
  if (v13 == 1)
  {
    result = v12;
    v12 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v15 == 1)
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

  if (v17 == 1)
  {
    result = v16;
    v16 = 0;
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

void sub_19D717B5C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (*(v14 - 24) == 1)
  {
    v16 = *(v14 - 32);
    *(v14 - 32) = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::AuthenticatorSelectionCriteria,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, a2 + 2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 4);
  v4 = a2[5];

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

void *IPC::ArgumentCoder<WebCore::PublicKeyCredentialUserEntity,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);
  IPC::ArgumentCoder<WebCore::BufferSource,void>::encode(a1, (a2 + 2));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 4);
}

uint64_t IPC::ArgumentCoder<WebCore::PublicKeyCredentialDescriptor,void>::encode(IPC::Encoder *a1, char *a2)
{
  v4 = (a2 + 24);
  v6 = *a2;
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<WebCore::BufferSource,void>::encode(a1, (a2 + 8));
  return IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::PublicKeyCredentialCreationOptions,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::WebExtensionCommandParameters,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::PublicKeyCredentialUserEntity,void>::encode(a1, (a2 + 24));
  IPC::ArgumentCoder<WebCore::BufferSource,void>::encode(a1, a2 + 64);
  IPC::VectorArgumentCoder<false,WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(a1, (a2 + 80));
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 96);
  IPC::VectorArgumentCoder<false,WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 104);
  IPC::ArgumentCoder<std::optional<WebCore::AuthenticatorSelectionCriteria>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticatorSelectionCriteria> const&>(a1, (a2 + 120));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 128));

  return IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs>&>(a1, a2 + 136);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::PublicKeyCredentialCreationOptions,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  IPC::Decoder::decode<WTF::String>(a1, v132);
  IPC::Decoder::decode<WTF::String>(v3, &v152);
  IPC::Decoder::decode<WTF::String>(v3, &v162);
  v6 = *v3;
  if (!*v3)
  {
    goto LABEL_154;
  }

  if ((v132[1] & 1) == 0)
  {
    goto LABEL_153;
  }

  v7 = v132[0];
  v132[0] = 0;
  if ((v153 & 1) == 0)
  {
    goto LABEL_153;
  }

  v131 = v152;
  v152 = 0;
  if ((BYTE8(v162) & 1) == 0)
  {
    goto LABEL_153;
  }

  v129 = v162;
  while (1)
  {
    if (v153 == 1)
    {
      v8 = v152;
      v152 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v5);
        }
      }
    }

    if (LOBYTE(v132[1]) == 1)
    {
      v9 = v132[0];
      v132[0] = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v5);
        }
      }
    }

    v130 = v7;
    if (!v6)
    {
      v84 = *v3;
      v85 = *(v3 + 1);
      *v3 = 0;
      *(v3 + 1) = 0;
      v86 = *(v3 + 3);
      if (v86)
      {
        if (v85)
        {
          (*(*v86 + 16))(v86, v84);
        }
      }
    }

    v124 = v6;
    IPC::Decoder::decode<WTF::String>(v3, &v159);
    IPC::Decoder::decode<WTF::String>(v3, &v156);
    IPC::Decoder::decode<WebCore::BufferSource>(&v152, v3);
    IPC::Decoder::decode<WTF::String>(v3, &v167);
    v10 = *v3;
    if (*v3)
    {
      if ((v160 & 1) == 0)
      {
        goto LABEL_153;
      }

      v11 = v159;
      v159 = 0;
      if ((v157 & 1) == 0)
      {
        goto LABEL_153;
      }

      v12 = v156;
      v156 = 0;
      if ((v154 & 1) == 0)
      {
        goto LABEL_153;
      }

      LOBYTE(v133) = 0;
      LOBYTE(v134) = -1;
      if (v153 != 255)
      {
        v13 = v152;
        v152 = 0;
        v133 = v13;
        LOBYTE(v134) = v153;
      }

      if ((v168 & 1) == 0)
      {
        goto LABEL_153;
      }

      v14 = v167;
      v167 = 0;
      v132[0] = 0;
      v132[1] = 0;
      *&v162 = v11;
      *(&v162 + 1) = v12;
      LOBYTE(v163) = 0;
      v164 = -1;
      if (v153 != 255)
      {
        v15 = v133;
        v133 = 0;
        v163 = v15;
        v164 = v153;
      }

      v165 = v14;
      v166 = 1;
      *(&v134 + 1) = 0;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v133);
      v16 = v132[1];
      v132[1] = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v5);
      }

      v17 = v132[0];
      v132[0] = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v5);
      }
    }

    else
    {
      LOBYTE(v162) = 0;
      v166 = 0;
    }

    if (v168 == 1)
    {
      v18 = v167;
      v167 = 0;
      if (v18)
      {
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v5);
        }
      }
    }

    if (v154 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v152);
    }

    if (v157 == 1)
    {
      v19 = v156;
      v156 = 0;
      if (v19)
      {
        if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v5);
        }
      }
    }

    if (v160 == 1 && (v20 = v159, v159 = 0, v20) && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v5);
      if (v10)
      {
        goto LABEL_44;
      }
    }

    else if (v10)
    {
      goto LABEL_44;
    }

    v34 = *v3;
    v35 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    v36 = *(v3 + 3);
    if (v36 && v35)
    {
      (*(*v36 + 16))(v36, v34);
    }

LABEL_44:
    IPC::Decoder::decode<WebCore::BufferSource>(&v159, v3);
    v21 = *(v3 + 1);
    v22 = ((*(v3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v23 = v22 - *v3;
    v24 = v21 >= v23;
    v25 = v21 - v23;
    v126 = a2;
    if (!v24 || v25 <= 7)
    {
      *v3 = 0;
      *(v3 + 1) = 0;
      v95 = *(v3 + 3);
      if (v95)
      {
        if (v21)
        {
          (*(*v95 + 16))(v95);
          v21 = *(v3 + 1);
        }
      }

      else
      {
        v21 = 0;
      }

LABEL_182:
      *v3 = 0;
      *(v3 + 1) = 0;
      v96 = *(v3 + 3);
      if (v96 && v21)
      {
        (*(*v96 + 16))(v96);
      }

      goto LABEL_70;
    }

    *(v3 + 2) = v22 + 1;
    if (!v22)
    {
      goto LABEL_182;
    }

    v26 = *v22;
    v152 = 0;
    v153 = 0;
    if (v26 >= 0x10000)
    {
      while (1)
      {
        IPC::Decoder::decode<WebCore::PublicKeyCredentialParameters>(v132, v3);
        if ((v133 & 1) == 0)
        {
          break;
        }

        v37 = HIDWORD(v153);
        if (HIDWORD(v153) == v153)
        {
          v38 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v152, HIDWORD(v153) + 1, v132);
          v37 = HIDWORD(v153);
          v39 = v152;
          v40 = *v38;
        }

        else
        {
          v39 = v152;
          v40 = *v132;
        }

        *(v39 + v37) = v40;
        v41 = ++HIDWORD(v153);
        if (!--v26)
        {
          WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v152, v41);
          v2 = HIDWORD(v153);
          goto LABEL_58;
        }
      }

LABEL_68:
      v42 = v152;
      if (v152)
      {
        v152 = 0;
        LODWORD(v153) = 0;
        WTF::fastFree(v42, v28);
      }

LABEL_70:
      v43 = *v3;
      v44 = *(v3 + 1);
      *v3 = 0;
      *(v3 + 1) = 0;
      v45 = *(v3 + 3);
      if (v45 && v44)
      {
        (*(*v45 + 16))(v45, v43);
      }

      v128 = 0;
      v33 = 0;
      goto LABEL_72;
    }

    if (v26)
    {
      v27 = WTF::fastMalloc((16 * v26));
      LODWORD(v153) = v26;
      v152 = v27;
      while (1)
      {
        IPC::Decoder::decode<WebCore::PublicKeyCredentialParameters>(v132, v3);
        if ((v133 & 1) == 0)
        {
          goto LABEL_68;
        }

        v29 = HIDWORD(v153);
        if (HIDWORD(v153) == v153)
        {
          v30 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v152, HIDWORD(v153) + 1, v132);
          v29 = HIDWORD(v153);
          v31 = v152;
          v32 = *v30;
        }

        else
        {
          v31 = v152;
          v32 = *v132;
        }

        *(v31 + v29) = v32;
        v2 = ++HIDWORD(v153);
        if (!--v26)
        {
          goto LABEL_58;
        }
      }
    }

    v2 = 0;
LABEL_58:
    v33 = v152;
    v125 = v153;
    v128 = 1;
LABEL_72:
    v46 = IPC::Decoder::decode<std::optional<unsigned int>>(v3);
    v127 = v47;
    v48 = v46;
    IPC::Decoder::decode<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v156, v3);
    v49 = *(v3 + 1);
    v50 = *(v3 + 2);
    v5 = *v3;
    if (v49 <= &v50[-*v3])
    {
      *v3 = 0;
      *(v3 + 1) = 0;
      v97 = *(v3 + 3);
      if (v97)
      {
        if (v49)
        {
          (*(*v97 + 16))(v97);
          v49 = *(v3 + 1);
        }
      }

      else
      {
        v49 = 0;
      }

LABEL_187:
      *v3 = 0;
      *(v3 + 1) = 0;
      v98 = *(v3 + 3);
      if (v98)
      {
        if (v49)
        {
          (*(*v98 + 16))(v98);
          v5 = *v3;
          v49 = *(v3 + 1);
LABEL_190:
          *v3 = 0;
          *(v3 + 1) = 0;
          v99 = *(v3 + 3);
          if (v99 && v49)
          {
            (*(*v99 + 16))(v99, v5);
          }

          v54 = 0;
          goto LABEL_168;
        }
      }

      else
      {
        v49 = 0;
      }

      v5 = 0;
      goto LABEL_190;
    }

    v51 = v50 + 1;
    *(v3 + 2) = v50 + 1;
    if (!v50)
    {
      goto LABEL_187;
    }

    if (*v50 >= 2u)
    {
      goto LABEL_190;
    }

    if (!*v50)
    {
      v54 = 0;
      a2 = 1;
      goto LABEL_104;
    }

    if (v49 <= v51 - v5)
    {
      v103 = 0;
      v104 = 0;
      *v3 = 0;
      *(v3 + 1) = 0;
      v105 = *(v3 + 3);
      if (v105)
      {
        (*(*v105 + 16))(v105);
        v104 = *v3;
        v103 = *(v3 + 1);
      }

      goto LABEL_206;
    }

    *(v3 + 2) = v50 + 2;
    if (v50 == -1)
    {
      v103 = v49;
      v104 = v5;
LABEL_206:
      *v3 = 0;
      *(v3 + 1) = 0;
      v106 = *(v3 + 3);
      if (v106 && v103)
      {
        (*(*v106 + 16))(v106, v104, v103);
        v5 = *v3;
        v49 = *(v3 + 1);
      }

      else
      {
        v49 = 0;
        v5 = 0;
      }

LABEL_208:
      *v3 = 0;
      *(v3 + 1) = 0;
      v107 = *(v3 + 3);
      if (v107 && v49)
      {
        (*(*v107 + 16))(v107, v5);
      }

      v123 = 0;
      v53 = 0;
      goto LABEL_171;
    }

    if (*v51 >= 2u)
    {
      goto LABEL_208;
    }

    if (!*v51)
    {
      v123 = 0;
      v53 = 0;
      a2 = 0x10000;
      goto LABEL_84;
    }

    v52 = IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule::Type>(v3);
    v53 = (v52 & ((v52 << 7) >> 15));
    if ((v52 & 0x100) != 0)
    {
      v123 = 256;
      a2 = (v52 & 0x100) << 8;
      goto LABEL_84;
    }

    v123 = 256;
LABEL_171:
    v92 = *v3;
    v93 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    v94 = *(v3 + 3);
    if (v94 && v93)
    {
      (*(*v94 + 16))(v94, v92);
    }

    a2 = 0;
LABEL_84:
    v55 = *(v3 + 1);
    v56 = *(v3 + 2);
    v57 = *v3;
    if (v55 <= &v56[-*v3])
    {
      *v3 = 0;
      *(v3 + 1) = 0;
      v108 = *(v3 + 3);
      if (v108)
      {
        if (v55)
        {
          (*(*v108 + 16))(v108);
          v55 = *(v3 + 1);
        }
      }

      else
      {
        v55 = 0;
      }

LABEL_212:
      *v3 = 0;
      *(v3 + 1) = 0;
      v109 = *(v3 + 3);
      if (v109)
      {
        if (v55)
        {
          (*(*v109 + 16))(v109);
          v57 = *v3;
          v55 = *(v3 + 1);
LABEL_215:
          *v3 = 0;
          *(v3 + 1) = 0;
          v110 = *(v3 + 3);
          if (v110 && v55)
          {
            (*(*v110 + 16))(v110, v57);
          }

          v62 = 0;
          goto LABEL_223;
        }
      }

      else
      {
        v55 = 0;
      }

      v57 = 0;
      goto LABEL_215;
    }

    v58 = v56 + 1;
    *(v3 + 2) = v56 + 1;
    if (!v56)
    {
      goto LABEL_212;
    }

    if (*v56 >= 2u)
    {
      goto LABEL_215;
    }

    if (!*v56)
    {
      v62 = 0;
      v60 = 0;
      v61 = 0x10000;
      goto LABEL_93;
    }

    if (v55 <= &v58[-v57])
    {
      v111 = 0;
      v112 = 0;
      *v3 = 0;
      *(v3 + 1) = 0;
      v113 = *(v3 + 3);
      if (v113)
      {
        (*(*v113 + 16))(v113);
        v112 = *v3;
        v111 = *(v3 + 1);
      }
    }

    else
    {
      v59 = v56 + 2;
      *(v3 + 2) = v56 + 2;
      if (v56 != -1)
      {
        v60 = *v58;
        if (v60 < 3)
        {
          v61 = 0x10000;
          v62 = 256;
          v58 = v59;
          goto LABEL_93;
        }

        goto LABEL_221;
      }

      v111 = v55;
      v112 = v57;
    }

    *v3 = 0;
    *(v3 + 1) = 0;
    v114 = *(v3 + 3);
    if (v114 && v111)
    {
      (*(*v114 + 16))(v114, v112, v111);
      v57 = *v3;
      v55 = *(v3 + 1);
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

LABEL_221:
    *v3 = 0;
    *(v3 + 1) = 0;
    v115 = *(v3 + 3);
    if (v115 && v55)
    {
      (*(*v115 + 16))(v115, v57);
    }

    v62 = 256;
LABEL_223:
    v116 = *v3;
    v117 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    v118 = *(v3 + 3);
    if (!v118 || !v117)
    {
      v119 = 0;
      v57 = 0;
      v63 = v62;
LABEL_225:
      *v3 = 0;
      *(v3 + 1) = 0;
      v120 = *(v3 + 3);
      if (v120 && v119)
      {
        (*(*v120 + 16))(v120, v57, v119);
        v64 = 0;
        v57 = *v3;
        v55 = *(v3 + 1);
      }

      else
      {
        v55 = 0;
        v57 = 0;
        v64 = 0;
      }

LABEL_227:
      *v3 = 0;
      *(v3 + 1) = 0;
      v121 = *(v3 + 3);
      if (v121 && v55)
      {
        (*(*v121 + 16))(v121, v57);
      }

      v6 = 0;
      goto LABEL_97;
    }

    (*(*v118 + 16))(v118, v116);
    v60 = 0;
    v61 = 0;
    v57 = *v3;
    v55 = *(v3 + 1);
    v58 = *(v3 + 2);
LABEL_93:
    v63 = v60 | v62;
    v62 |= v61;
    if (v55 <= &v58[-v57])
    {
      v119 = 0;
      v122 = *(v3 + 3);
      *v3 = 0;
      *(v3 + 1) = 0;
      if (v55 && v122)
      {
        (*(*v122 + 16))(v122);
        v57 = *v3;
        v119 = *(v3 + 1);
      }

      else
      {
        v57 = 0;
      }

      goto LABEL_225;
    }

    *(v3 + 2) = v58 + 1;
    if (!v58)
    {
      v119 = v55;
      goto LABEL_225;
    }

    v64 = *v58;
    if (v64 >= 2)
    {
      goto LABEL_227;
    }

    v6 = 1;
LABEL_97:
    v65 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(v3);
    v5 = *v3;
    if (*v3)
    {
      if (!((v53 | v123 | a2) >> 16) || !HIWORD(v62) || (v6 & 1) == 0 || v65 <= 0xFFu)
      {
        goto LABEL_153;
      }

      v54 = (v53 | v123 | (v63 << 16) | ((v64 != 0) << 32) | (v65 << 40)) & 0xFFFFFFFFFFFFLL | 0x1000000000000;
      a2 = 1;
      goto LABEL_103;
    }

    v87 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    v88 = *(v3 + 3);
    if (v88 && v87)
    {
      (*(*v88 + 16))(v88, 0);
    }

    v54 = 0x1000000000000;
LABEL_168:
    v6 = v124;
    v89 = *v3;
    v90 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    v91 = *(v3 + 3);
    if (v91)
    {
      if (v90)
      {
        (*(*v91 + 16))(v91, v89);
        a2 = 0;
        v5 = *v3;
      }

      else
      {
        v5 = 0;
        a2 = 0;
      }

LABEL_103:
      v6 = v124;
      goto LABEL_104;
    }

    v5 = 0;
    a2 = 0;
LABEL_104:
    v66 = *(v3 + 1);
    v67 = *(v3 + 2);
    if (v66 <= v67 - v5)
    {
      *v3 = 0;
      *(v3 + 1) = 0;
      v100 = *(v3 + 3);
      if (v100)
      {
        if (v66)
        {
          (*(*v100 + 16))(v100);
          v5 = *v3;
          v66 = *(v3 + 1);
LABEL_195:
          *v3 = 0;
          *(v3 + 1) = 0;
          v101 = *(v3 + 3);
          if (v101)
          {
            if (v66)
            {
              (*(*v101 + 16))(v101, v5);
              v5 = *v3;
              v66 = *(v3 + 1);
              goto LABEL_198;
            }
          }

          else
          {
            v66 = 0;
          }

          v5 = 0;
LABEL_198:
          v6 = v124;
          goto LABEL_199;
        }
      }

      else
      {
        v66 = 0;
      }

      v5 = 0;
      goto LABEL_195;
    }

    *(v3 + 2) = v67 + 1;
    if (!v67)
    {
      goto LABEL_195;
    }

    v68 = *v67;
    if (v68 < 4)
    {
      v69 = v68 | 0x100;
      goto LABEL_108;
    }

LABEL_199:
    *v3 = 0;
    *(v3 + 1) = 0;
    v102 = *(v3 + 3);
    if (v102)
    {
      if (v66)
      {
        (*(*v102 + 16))(v102, v5);
      }

      v69 = 0;
      v6 = v124;
    }

    else
    {
      v69 = 0;
    }

LABEL_108:
    IPC::Decoder::decode<std::optional<WebCore::AuthenticationExtensionsClientInputs>>(&v152, v3);
    if (!*v3)
    {
      break;
    }

    v3 = v128;
    if (v6)
    {
      v132[0] = v130;
      v132[1] = v131;
      v133 = v129;
      if (v166)
      {
        v70 = v162;
        v162 = 0uLL;
        v134 = v70;
        LOBYTE(v135) = 0;
        v136 = -1;
        if (v164 != 255)
        {
          v71 = v163;
          v163 = 0;
          v135 = v71;
          v136 = v164;
        }

        v72 = v165;
        v165 = 0;
        v137 = v72;
        if (v161)
        {
          LOBYTE(v138) = 0;
          v139 = -1;
          if (v160 != 255)
          {
            v73 = v159;
            v159 = 0;
            v138 = v73;
            v139 = v160;
          }

          if (v128)
          {
            v140 = v33;
            v141 = v125;
            v142 = v2;
            if (v127)
            {
              v143 = v48;
              v144 = BYTE4(v48);
              if (v158)
              {
                v145 = v156;
                v74 = v157;
                v156 = 0;
                v157 = 0;
                v146 = v74;
                if (a2)
                {
                  v147 = v54;
                  v149 = BYTE6(v54);
                  v148 = WORD2(v54);
                  if (v69 > 0xFF)
                  {
                    v150 = v69;
                    if (v155)
                    {
                      std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs,false>::__optional_move_base[abi:sn200100](v151, &v152);
                      *(WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions(v126, v132) + 288) = 1;
                      WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(v132);
                      v75 = 0;
                      v76 = 0;
                      v77 = 0;
                      v33 = 0;
                      goto LABEL_123;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_153:
    __break(1u);
LABEL_154:
    if (BYTE8(v162))
    {
      v83 = v162;
      *&v162 = 0;
      if (v83)
      {
        if (atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v83, v5);
        }
      }
    }

    v7 = 0;
  }

  *v126 = 0;
  v126[288] = 0;
  v77 = v130;
  v76 = v131;
  v75 = v129;
  LODWORD(v3) = v128;
LABEL_123:
  result = std::__optional_storage_base<std::optional<WebCore::AuthenticationExtensionsClientInputs>,false>::~__optional_storage_base(&v152, v5);
  if (v158 == 1)
  {
    result = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v156);
  }

  if (v33)
  {
    v80 = v3;
  }

  else
  {
    v80 = 0;
  }

  if (v80 == 1)
  {
    result = WTF::fastFree(v33, v79);
  }

  if (v161 == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v159);
  }

  if (v166 != 1)
  {
    goto LABEL_141;
  }

  v81 = v165;
  v165 = 0;
  if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v81, v79);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v163);
  v82 = *(&v162 + 1);
  *(&v162 + 1) = 0;
  if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v82, v79);
  }

  result = v162;
  *&v162 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v79);
    if (v6)
    {
      goto LABEL_142;
    }
  }

  else
  {
LABEL_141:
    if (v6)
    {
LABEL_142:
      if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v75, v79);
        if (v76)
        {
          goto LABEL_145;
        }
      }

      else if (v76)
      {
LABEL_145:
        if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(v76, v79);
        }
      }

      if (v77)
      {
        if (atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(v77, v79);
        }
      }
    }
  }

  return result;
}

void sub_19D718E14(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, WTF::StringImpl *a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, WTF::StringImpl *a24, uint64_t a25, uint64_t a26, WTF::StringImpl *a27, uint64_t a28, uint64_t a29, WTF *a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, WTF::StringImpl *a56, int a57, int a58, char a59)
{
  if (*(v60 - 192) == 1)
  {
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v60 - 208);
  }

  if (!v59)
  {
    a16 = 0;
  }

  if (a16 == 1)
  {
    WTF::fastFree(v59, a2);
  }

  if (*(v60 - 168) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v60 - 184);
  }

  if (*(v60 - 120) == 1)
  {
    v63 = *(v60 - 128);
    *(v60 - 128) = 0;
    if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v63, a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v60 - 144);
    v64 = *(v60 - 152);
    *(v60 - 152) = 0;
    if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v64, a2);
    }

    v65 = *(v60 - 160);
    *(v60 - 160) = 0;
    if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v65, a2);
    }
  }

  if (a11)
  {
    if (a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a17, a2);
    }

    if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a19, a2);
    }

    if (a18)
    {
      if (atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a18, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(_BYTE *a1, uint64_t *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v24 = a2[3];
    if (v24)
    {
      if (v6)
      {
        (*(*v24 + 16))(v24);
        v5 = *a2;
        v6 = a2[1];
LABEL_43:
        *a2 = 0;
        a2[1] = 0;
        v25 = a2[3];
        if (v25 && v6)
        {
          (*(*v25 + 16))(v25, v5);
        }

        *a1 = 0;
        a1[16] = 0;
LABEL_45:
        v26 = *a2;
        v27 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v27)
          {
            return (*(*result + 16))(result, v26);
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
    goto LABEL_43;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_43;
  }

  v8 = *v4;
  v35 = 0;
  v36 = 0;
  if (v8 >= 0x6666)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::PublicKeyCredentialDescriptor>(v28, a2);
      v18 = v34;
      if (v34)
      {
        if (HIDWORD(v36) == v36)
        {
          WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PublicKeyCredentialDescriptor>(&v35, v28);
        }

        else
        {
          v19 = v35 + 40 * HIDWORD(v36);
          *v19 = v28[0];
          *(v19 + 8) = 0;
          *(v19 + 16) = -1;
          v20 = v30;
          if (v30 != 255)
          {
            v21 = v29;
            v29 = 0;
            *(v19 + 8) = v21;
            *(v19 + 16) = v20;
          }

          *(v19 + 24) = 0;
          *(v19 + 32) = 0;
          v22 = v31;
          v31 = 0;
          *(v19 + 24) = v22;
          LODWORD(v22) = v32;
          v32 = 0;
          *(v19 + 32) = v22;
          LODWORD(v22) = v33;
          v33 = 0;
          *(v19 + 36) = v22;
          ++HIDWORD(v36);
        }
      }

      else
      {
        *a1 = 0;
        a1[16] = 0;
      }

      if (v34 == 1)
      {
        v23 = v31;
        if (v31)
        {
          v31 = 0;
          v32 = 0;
          WTF::fastFree(v23, v17);
        }

        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v29);
      }

      if ((v18 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v35, HIDWORD(v36));
        goto LABEL_23;
      }
    }
  }

  else if (v8)
  {
    LODWORD(v36) = 40 * v8 / 0x28u;
    v35 = WTF::fastMalloc((40 * v8));
    while (1)
    {
      IPC::Decoder::decode<WebCore::PublicKeyCredentialDescriptor>(v28, a2);
      v10 = v34;
      if (v34)
      {
        if (HIDWORD(v36) == v36)
        {
          WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PublicKeyCredentialDescriptor>(&v35, v28);
        }

        else
        {
          v11 = v35 + 40 * HIDWORD(v36);
          *v11 = v28[0];
          *(v11 + 8) = 0;
          *(v11 + 16) = -1;
          v12 = v30;
          if (v30 != 255)
          {
            v13 = v29;
            v29 = 0;
            *(v11 + 8) = v13;
            *(v11 + 16) = v12;
          }

          *(v11 + 24) = 0;
          *(v11 + 32) = 0;
          v14 = v31;
          v31 = 0;
          *(v11 + 24) = v14;
          LODWORD(v14) = v32;
          v32 = 0;
          *(v11 + 32) = v14;
          LODWORD(v14) = v33;
          v33 = 0;
          *(v11 + 36) = v14;
          ++HIDWORD(v36);
        }
      }

      else
      {
        *a1 = 0;
        a1[16] = 0;
      }

      if (v34 == 1)
      {
        v15 = v31;
        if (v31)
        {
          v31 = 0;
          v32 = 0;
          WTF::fastFree(v15, v9);
        }

        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v29);
      }

      if ((v10 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:
    std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, &v35);
  }

  result = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35);
  if ((a1[16] & 1) == 0)
  {
    goto LABEL_45;
  }

  return result;
}

void sub_19D7194EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, int a13, int a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 + 16) == 1)
  {
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<std::optional<WebCore::AuthenticationExtensionsClientInputs>>(_BYTE *a1, IPC::Decoder *a2)
{
  v5 = *(a2 + 2);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v7 <= v5 - v6)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v92 = *(a2 + 3);
    if (v92)
    {
      if (v7)
      {
        (*(*v92 + 16))(v92);
        v6 = *a2;
        v7 = *(a2 + 1);
        goto LABEL_280;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_280:
    *a2 = 0;
    *(a2 + 1) = 0;
    v93 = *(a2 + 3);
    if (v93)
    {
      if (v7)
      {
        (*(*v93 + 16))(v93, v6);
        v6 = *a2;
        v7 = *(a2 + 1);
        goto LABEL_283;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_283:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v7)
    {
      result = (*(*result + 16))(result, v6);
    }

    goto LABEL_208;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_280;
  }

  v8 = *v5;
  if (v8 >= 2)
  {
    goto LABEL_283;
  }

  if (!v8)
  {
    LOBYTE(v104[0]) = 0;
    v110 = 0;
    result = std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs,false>::__optional_move_base[abi:sn200100](a1, v104);
    a1[152] = 1;
    if (v110 != 1)
    {
      goto LABEL_197;
    }

    goto LABEL_181;
  }

  IPC::Decoder::decode<WTF::String>(a2, &v139);
  v9 = IPC::Decoder::decode<std::optional<BOOL>>(a2);
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *a2;
  if (v10 <= &v11[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v94 = *(a2 + 3);
    if (v94)
    {
      if (v10)
      {
        (*(*v94 + 16))(v94);
        v10 = *(a2 + 1);
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_288;
  }

  *(a2 + 2) = v11 + 1;
  if (!v11)
  {
LABEL_288:
    *a2 = 0;
    *(a2 + 1) = 0;
    v95 = *(a2 + 3);
    if (v95)
    {
      if (v10)
      {
        (*(*v95 + 16))(v95);
        v12 = *a2;
        v10 = *(a2 + 1);
        goto LABEL_291;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
LABEL_291:
    *a2 = 0;
    *(a2 + 1) = 0;
    v96 = *(a2 + 3);
    if (!v96)
    {
LABEL_217:
      v10 = 0;
LABEL_218:
      LOBYTE(v132) = 0;
      v138 = 0;
      goto LABEL_219;
    }

    if (!v10)
    {
      goto LABEL_218;
    }

    (*(*v96 + 16))(v96, v12);
LABEL_265:
    v10 = *(a2 + 1);
    goto LABEL_218;
  }

  v13 = *v11;
  if (v13 >= 2)
  {
    goto LABEL_291;
  }

  if (v13)
  {
    IPC::Decoder::decode<WTF::String>(a2, &v150);
    v14 = IPC::Decoder::decode<std::optional<BOOL>>(a2);
    IPC::Decoder::decode<std::optional<WebCore::BufferSource>>(&v141, a2);
    v16 = *a2;
    if (*a2)
    {
      if ((v151 & 1) == 0)
      {
        goto LABEL_199;
      }

      v17 = v150;
      v150 = 0;
      if ((v14 & 0x10000) == 0)
      {
        goto LABEL_199;
      }

      v125 = v14;
      if ((v144 & 1) == 0)
      {
        goto LABEL_199;
      }

      LOBYTE(v126) = 0;
      if (v143 != 1)
      {
        v23 = 0;
        v2 = 0;
        v111 = v17;
        v112 = v14;
        LOBYTE(v113) = 0;
        v115[0] = 0;
        v116 = 1;
        goto LABEL_30;
      }

      v127 = -1;
      v18 = v142;
      if (v142 == 255)
      {
        LOBYTE(v113) = 0;
      }

      else
      {
        v24 = v141;
        v141 = 0;
        v127 = v142;
        v126 = 0;
        v113 = v24;
      }

      v128 = 1;
      v111 = v17;
      v112 = v14;
      v114 = v142;
      v115[0] = 1;
      v116 = 1;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v126);
      v124 = 0;
      goto LABEL_29;
    }

    LOBYTE(v111) = 0;
    v116 = 0;
    if (v144)
    {
      v18 = 0;
      v23 = 0;
      if (v143)
      {
LABEL_29:
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v141);
        v2 = 1;
        v23 = v18;
      }
    }

    else
    {
      v23 = 0;
    }

LABEL_30:
    if (v151 == 1)
    {
      v25 = v150;
      v150 = 0;
      if (v25)
      {
        if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v15);
        }
      }
    }

    if (v16)
    {
      v26 = v111;
      v111 = 0;
      v132 = v26;
      v133 = v14;
      LOBYTE(v134) = 0;
      v136 = 0;
      if (v2)
      {
        v135 = -1;
        if (v23 != 255)
        {
          v27 = v113;
          v113 = 0;
          v134 = v27;
          v135 = v23;
        }

        v136 = 1;
        v137 = 1;
        v138 = 1;
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v113);
        v111 = 0;
      }

      else
      {
        v137 = 1;
        v138 = 1;
      }

      goto LABEL_40;
    }

    v68 = *a2;
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v69 = *(a2 + 3);
    if (!v69)
    {
      goto LABEL_217;
    }

    if (!v10)
    {
      goto LABEL_218;
    }

    (*(*v69 + 16))(v69, v68);
    goto LABEL_265;
  }

  LOBYTE(v111) = 0;
  v116 = 0;
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__optional_move_base[abi:sn200100](&v132, &v111);
  v138 = 1;
  if (v116 == 1)
  {
    if (v115[0] == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v113);
    }

    v22 = v111;
    v111 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }
  }

  v10 = *(a2 + 1);
  if ((v138 & 1) == 0)
  {
LABEL_219:
    v70 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v71 = *(a2 + 3);
    if (v71)
    {
      if (v10)
      {
        (*(*v71 + 16))(v71, v70);
LABEL_40:
        v10 = *(a2 + 1);
        goto LABEL_41;
      }
    }

    else
    {
      v10 = 0;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    goto LABEL_222;
  }

LABEL_41:
  v28 = *a2;
  v29 = *(a2 + 2);
  if (v10 <= &v29[-*a2])
  {
    v102 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v102)
    {
      if (v10)
      {
        (*(*v102 + 16))(v102);
        v10 = *(a2 + 1);
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_222;
  }

  v30 = v29 + 1;
  *(a2 + 2) = v29 + 1;
  if (!v29)
  {
LABEL_222:
    *a2 = 0;
    *(a2 + 1) = 0;
    v72 = *(a2 + 3);
    if (v72)
    {
      if (v10)
      {
        (*(*v72 + 16))(v72);
        v28 = *a2;
        v10 = *(a2 + 1);
        goto LABEL_225;
      }
    }

    else
    {
      v10 = 0;
    }

    v28 = 0;
LABEL_225:
    *a2 = 0;
    *(a2 + 1) = 0;
    v73 = *(a2 + 3);
    if (v73 && v10)
    {
      (*(*v73 + 16))(v73, v28);
    }

LABEL_229:
    LOBYTE(v124) = 0;
    v131 = 0;
    goto LABEL_138;
  }

  if (*v29 >= 2u)
  {
    goto LABEL_225;
  }

  if (*v29)
  {
    if (v10 <= v30 - v28)
    {
      v97 = 0;
      v98 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v99 = *(a2 + 3);
      if (v99)
      {
        (*(*v99 + 16))(v99);
        v98 = *a2;
        v97 = *(a2 + 1);
      }
    }

    else
    {
      *(a2 + 2) = v29 + 2;
      if (v29 != -1)
      {
        if (*v30 < 2u)
        {
          if (*v30)
          {
            IPC::Decoder::decode<WebCore::AuthenticationExtensionsClientInputs::PRFValues>(&v141, a2);
            LOBYTE(v150) = 0;
            if (v146 == 1)
            {
              v151 = -1;
              if (v142 != 255)
              {
                v31 = v141;
                v141 = 0;
                v150 = v31;
                v151 = v142;
              }

              LOBYTE(v152) = 0;
              v154 = 0;
              if (v145 == 1)
              {
                v153 = -1;
                if (v144 != 255)
                {
                  v32 = v143;
                  v143 = 0;
                  v152 = v32;
                  v153 = v144;
                }

                v154 = 1;
                v155 = 1;
                v156 = 1;
                mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v143);
              }

              else
              {
                v155 = 1;
                v156 = 1;
              }

              mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v141);
              goto LABEL_74;
            }

            v156 = 0;
            v10 = *(a2 + 1);
          }

          else
          {
            LOBYTE(v141) = 0;
            v146 = 0;
            std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_move_base[abi:sn200100](&v150, &v141);
            v156 = 1;
            if ((v146 & 1) == 0)
            {
              goto LABEL_74;
            }

            if (v145 == 1)
            {
              mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v143);
            }

            mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v141);
            v10 = *(a2 + 1);
            if (v156)
            {
LABEL_75:
              v35 = *a2;
              v38 = *(a2 + 2);
              if (v10 <= v38 - *a2)
              {
                v103 = *(a2 + 3);
                *a2 = 0;
                *(a2 + 1) = 0;
                if (v103)
                {
                  if (v10)
                  {
                    (*(*v103 + 16))(v103);
                    v35 = *a2;
                    v10 = *(a2 + 1);
                    goto LABEL_67;
                  }
                }

                else
                {
                  v10 = 0;
                }

                v35 = 0;
              }

              else
              {
                *(a2 + 2) = v38 + 1;
                if (v38)
                {
                  if (*v38 < 2u)
                  {
                    if (!*v38)
                    {
                      LOBYTE(v141) = 0;
                      LOBYTE(v143) = 0;
                      std::__optional_move_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v148, &v141);
                      v149 = 1;
                      if (v143 != 1)
                      {
                        goto LABEL_112;
                      }

                      v52 = &v141;
                      goto LABEL_111;
                    }

                    v39 = v38 & 0xFFFFFFFFFFFFFFF8;
                    v40 = ((v38 & 0xFFFFFFFFFFFFFFF8) + 8);
                    if (v10 < v40 - v35 || v10 - (v40 - v35) <= 7)
                    {
                      v85 = 0;
                      v86 = 0;
                      *a2 = 0;
                      *(a2 + 1) = 0;
                      v87 = *(a2 + 3);
                      if (v87)
                      {
                        (*(*v87 + 16))(v87);
                        v86 = *a2;
                        v85 = *(a2 + 1);
                      }
                    }

                    else
                    {
                      *(a2 + 2) = v39 + 16;
                      if (v40)
                      {
                        v41 = *v40;
                        v159 = 0;
                        v160 = 0;
                        if (v41 >= 0x5555)
                        {
                          do
                          {
                            IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>(&v141, a2);
                            v76 = v147[0];
                            if (v147[0])
                            {
                              if (HIDWORD(v160) == v160)
                              {
                                WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>(&v159, &v141);
                              }

                              else
                              {
                                v77 = v159 + 48 * HIDWORD(v160);
                                v78 = v141;
                                v141 = 0;
                                *v77 = v78;
                                *(v77 + 8) = 0;
                                *(v77 + 16) = -1;
                                v79 = v143;
                                if (v143 != 255)
                                {
                                  v80 = v142;
                                  v142 = 0;
                                  *(v77 + 8) = v80;
                                  *(v77 + 16) = v79;
                                }

                                *(v77 + 24) = 0;
                                *(v77 + 40) = 0;
                                if (v146 == 1)
                                {
                                  *(v77 + 32) = -1;
                                  v81 = v145;
                                  if (v145 != 255)
                                  {
                                    v82 = v144;
                                    v144 = 0;
                                    *(v77 + 24) = v82;
                                    *(v77 + 32) = v81;
                                  }

                                  *(v77 + 40) = 1;
                                }

                                ++HIDWORD(v160);
                              }
                            }

                            if (v147[0] == 1)
                            {
                              if (v146 == 1)
                              {
                                mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v144);
                              }

                              mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v142);
                              v84 = v141;
                              v141 = 0;
                              if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v84, v83);
                              }
                            }

                            if ((v76 & 1) == 0)
                            {
LABEL_104:
                              LOBYTE(v157[0]) = 0;
                              v158 = 0;
                              goto LABEL_108;
                            }

                            --v41;
                          }

                          while (v41);
                          LOBYTE(v157[0]) = 0;
                          v158 = 0;
                          WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v159, HIDWORD(v160));
                        }

                        else if (v41)
                        {
                          v42 = WTF::fastMalloc((48 * v41));
                          LODWORD(v160) = 48 * v41 / 0x30u;
                          v159 = v42;
                          do
                          {
                            IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>(&v141, a2);
                            v43 = v147[0];
                            if (v147[0])
                            {
                              if (HIDWORD(v160) == v160)
                              {
                                WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>(&v159, &v141);
                              }

                              else
                              {
                                v44 = v159 + 48 * HIDWORD(v160);
                                v45 = v141;
                                v141 = 0;
                                *v44 = v45;
                                *(v44 + 8) = 0;
                                *(v44 + 16) = -1;
                                v46 = v143;
                                if (v143 != 255)
                                {
                                  v47 = v142;
                                  v142 = 0;
                                  *(v44 + 8) = v47;
                                  *(v44 + 16) = v46;
                                }

                                *(v44 + 24) = 0;
                                *(v44 + 40) = 0;
                                if (v146 == 1)
                                {
                                  *(v44 + 32) = -1;
                                  v48 = v145;
                                  if (v145 != 255)
                                  {
                                    v49 = v144;
                                    v144 = 0;
                                    *(v44 + 24) = v49;
                                    *(v44 + 32) = v48;
                                  }

                                  *(v44 + 40) = 1;
                                }

                                ++HIDWORD(v160);
                              }
                            }

                            if (v147[0] != 1)
                            {
                              goto LABEL_100;
                            }

                            if (v146 == 1)
                            {
                              mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v144);
                            }

                            mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v142);
                            v51 = v141;
                            v141 = 0;
                            if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v51, v50);
                              if ((v43 & 1) == 0)
                              {
                                goto LABEL_104;
                              }
                            }

                            else
                            {
LABEL_100:
                              if ((v43 & 1) == 0)
                              {
                                goto LABEL_104;
                              }
                            }

                            --v41;
                          }

                          while (v41);
                          LOBYTE(v157[0]) = 0;
                          v158 = 0;
                        }

                        std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v157, &v159);
LABEL_108:
                        WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v159);
                        if (v158)
                        {
                          goto LABEL_109;
                        }

LABEL_273:
                        v89 = *a2;
                        v90 = *(a2 + 1);
                        *a2 = 0;
                        *(a2 + 1) = 0;
                        v91 = *(a2 + 3);
                        if (v91)
                        {
                          if (v90)
                          {
                            (*(*v91 + 16))(v91, v89);
                            if (v158)
                            {
LABEL_109:
                              std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v148, v157);
                              v149 = 1;
                              if ((v158 & 1) == 0)
                              {
                                goto LABEL_112;
                              }

                              v52 = v157;
LABEL_111:
                              WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v52);
LABEL_112:
                              if ((v149 & 1) == 0)
                              {
                                v65 = *a2;
                                v66 = *(a2 + 1);
                                *a2 = 0;
                                *(a2 + 1) = 0;
                                v67 = *(a2 + 3);
                                if (v67)
                                {
                                  if (v66)
                                  {
                                    (*(*v67 + 16))(v67, v65);
                                  }
                                }
                              }

                              if (*a2)
                              {
                                if ((v156 & 1) == 0)
                                {
                                  goto LABEL_199;
                                }

                                std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_move_base[abi:sn200100](&v141, &v150);
                                if ((v149 & 1) == 0)
                                {
                                  goto LABEL_199;
                                }

                                std::__optional_move_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v147, v148);
                                std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>::optional[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,0>(&v111, &v141);
                                if (v147[16] == 1)
                                {
                                  WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v147);
                                }

                                if (v146 == 1)
                                {
                                  if (v145 == 1)
                                  {
                                    mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v143);
                                  }

                                  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v141);
                                }
                              }

                              else
                              {
                                LOBYTE(v111) = 0;
                                v120 = 0;
                              }

                              if (v149 == 1 && v148[16] == 1)
                              {
                                WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v148);
                              }

                              if (v156 == 1 && v155 == 1)
                              {
                                if (v154 == 1)
                                {
                                  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v152);
                                }

                                mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v150);
                              }

                              if ((v120 & 1) == 0)
                              {
                                v28 = *a2;
                                v74 = *(a2 + 1);
                                *a2 = 0;
                                *(a2 + 1) = 0;
                                v75 = *(a2 + 3);
                                if (!v75)
                                {
                                  goto LABEL_229;
                                }

                                if (!v74)
                                {
                                  goto LABEL_229;
                                }

                                (*(*v75 + 16))(v75, v28);
                                if ((v120 & 1) == 0)
                                {
                                  goto LABEL_229;
                                }
                              }

                              std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>::optional[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,0>(&v124, &v111);
                              v131 = 1;
                              if ((v120 & 1) == 0)
                              {
                                goto LABEL_138;
                              }

LABEL_132:
                              if (v119[0] == 1)
                              {
                                WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v117);
                              }

                              if (v116 == 1)
                              {
                                if (v115[0] == 1)
                                {
                                  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v113);
                                }

                                mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v111);
                              }

                              goto LABEL_138;
                            }
                          }
                        }

LABEL_71:
                        v148[0] = 0;
                        v149 = 0;
                        goto LABEL_112;
                      }

                      v85 = v10;
                      v86 = v35;
                    }

                    *a2 = 0;
                    *(a2 + 1) = 0;
                    v88 = *(a2 + 3);
                    if (v88 && v85)
                    {
                      (*(*v88 + 16))(v88, v86, v85);
                    }

                    LOBYTE(v157[0]) = 0;
                    v158 = 0;
                    goto LABEL_273;
                  }

                  goto LABEL_70;
                }
              }

LABEL_67:
              *a2 = 0;
              *(a2 + 1) = 0;
              v36 = *(a2 + 3);
              if (v36)
              {
                if (v10)
                {
                  (*(*v36 + 16))(v36, v35);
                  v35 = *a2;
                  v10 = *(a2 + 1);
                  goto LABEL_70;
                }
              }

              else
              {
                v10 = 0;
              }

              v35 = 0;
LABEL_70:
              *a2 = 0;
              *(a2 + 1) = 0;
              v37 = *(a2 + 3);
              if (v37 && v10)
              {
                (*(*v37 + 16))(v37, v35);
              }

              goto LABEL_71;
            }
          }

LABEL_64:
          v33 = *a2;
          *a2 = 0;
          *(a2 + 1) = 0;
          v34 = *(a2 + 3);
          if (!v34)
          {
            v10 = 0;
LABEL_66:
            v35 = 0;
            *a2 = 0;
            *(a2 + 1) = 0;
            goto LABEL_67;
          }

          if (!v10)
          {
            goto LABEL_66;
          }

          (*(*v34 + 16))(v34, v33);
LABEL_74:
          v10 = *(a2 + 1);
          goto LABEL_75;
        }

LABEL_298:
        *a2 = 0;
        *(a2 + 1) = 0;
        v101 = *(a2 + 3);
        if (v101)
        {
          if (v10)
          {
            (*(*v101 + 16))(v101, v28);
            v10 = *(a2 + 1);
          }
        }

        else
        {
          v10 = 0;
        }

        LOBYTE(v150) = 0;
        v156 = 0;
        goto LABEL_64;
      }

      v97 = v10;
      v98 = v28;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v100 = *(a2 + 3);
    if (v100 && v97)
    {
      (*(*v100 + 16))(v100, v98, v97);
      v28 = *a2;
      v10 = *(a2 + 1);
    }

    else
    {
      v10 = 0;
      v28 = 0;
    }

    goto LABEL_298;
  }

  LOBYTE(v111) = 0;
  v120 = 0;
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_move_base[abi:sn200100](&v124, &v111);
  v131 = 1;
  if (v120 == 1)
  {
    goto LABEL_132;
  }

LABEL_138:
  if ((v131 & 1) == 0)
  {
    v28 = *a2;
    v61 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v62 = *(a2 + 3);
    if (v62)
    {
      if (v61)
      {
        (*(*v62 + 16))(v62, v28);
      }
    }
  }

  if (!*a2)
  {
    LOBYTE(v104[0]) = 0;
    v110 = 0;
LABEL_160:
    if (v131 == 1 && v130[24] == 1)
    {
      if (v130[16] == 1)
      {
        WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v130);
      }

      if (v129 == 1)
      {
        if (v128 == 1)
        {
          mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v126);
        }

        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v124);
      }
    }

    if (v138 == 1 && v137 == 1)
    {
      if (v136 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v134);
      }

      v56 = v132;
      v132 = 0;
      if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v56, v28);
      }
    }

    if (v140 == 1)
    {
      v57 = v139;
      v139 = 0;
      if (v57)
      {
        if (atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v57, v28);
        }
      }
    }

    if ((v110 & 1) == 0)
    {
      v63 = *a2;
      v64 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (!result || !v64 || (result = (*(*result + 16))(result, v63), (v110 & 1) == 0))
      {
LABEL_208:
        *a1 = 0;
        a1[152] = 0;
        goto LABEL_197;
      }
    }

    result = std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs,0>(a1, v104);
    a1[152] = 1;
    if ((v110 & 1) == 0)
    {
      goto LABEL_197;
    }

LABEL_181:
    if (v109[24] == 1)
    {
      if (v109[16] == 1)
      {
        WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v109);
      }

      if (v108[24] == 1)
      {
        if (v108[16] == 1)
        {
          mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v108);
        }

        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v107);
      }
    }

    if (v106[24] == 1)
    {
      if (v106[16] == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v106);
      }

      v58 = v105;
      v105 = 0;
      if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v20);
      }
    }

    result = v104[0];
    v104[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v20);
    }

LABEL_197:
    if (a1[152])
    {
      return result;
    }

    goto LABEL_200;
  }

  LOBYTE(v113) = 0;
  v118 = 0;
  v119[0] = 0;
  v123 = 0;
  if (v140)
  {
    v53 = v139;
    v139 = 0;
    v111 = v53;
    if ((v9 & 0x10000) != 0)
    {
      v112 = v9;
      if (v138)
      {
        std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>>(&v113, &v132);
        if (v131)
        {
          std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>>(v119, &v124);
          std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs,0>(v104, &v111);
          if (v123 == 1)
          {
            if (v122[16] == 1)
            {
              WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v122);
            }

            if (v121[24] == 1)
            {
              if (v121[16] == 1)
              {
                mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v121);
              }

              mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v119);
            }
          }

          if (v118 == 1)
          {
            if (v117[0] == 1)
            {
              mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v115);
            }

            v54 = v113;
            v113 = 0;
            if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v54, v28);
            }
          }

          v55 = v111;
          v111 = 0;
          if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v55, v28);
          }

          goto LABEL_160;
        }
      }
    }
  }

LABEL_199:
  __break(1u);
LABEL_200:
  v59 = *a2;
  v60 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v60)
    {
      return (*(*result + 16))(result, v59);
    }
  }

  return result;
}