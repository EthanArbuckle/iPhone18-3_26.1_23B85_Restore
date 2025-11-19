void sub_19D724D60(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, WTF::StringImpl *a18, WTF::StringImpl *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, WTF::StringImpl *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, WTF::StringImpl *a38, WTF::StringImpl *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, char a52)
{
  if (a52 == 1)
  {
    if (a50 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a48, a2);
    }

    if (a47 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a45, a2);
    }

    if (a44 == 1)
    {
      if (a39 && atomic_fetch_add_explicit(a39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a39, a2);
      }

      if (a38 && atomic_fetch_add_explicit(a38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a38, a2);
      }
    }

    if (a37 == 1 && a32 && atomic_fetch_add_explicit(a32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a32, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::MediaCapabilitiesEncodingInfo,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 1);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 2);

  return IPC::ArgumentCoder<WebCore::MediaEncodingConfiguration,void>::encode(a1, (a2 + 8));
}

void IPC::ArgumentCoder<WebCore::FormDataElement,void>::decode(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>>(v6, a2);
  if (*a2)
  {
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1>::move_constructor(v5, v6);
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1>::move_constructor(a1, v5);
    a1[48] = 1;
    if (v5[40] != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(v5, v4);
    }
  }

  else
  {
    *a1 = 0;
    a1[48] = 0;
  }

  if (v7 == 1 && v6[40] != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(v6, v4);
  }
}

void sub_19D724FD4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(&a10, a2);
  }

  if (a26 == 1 && a24 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(&a17, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[48] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }
}

void sub_19D725058(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::ArgumentCoder<WebCore::NetworkTransactionInformation,void>::encode(IPC::Encoder *a1, char *a2)
{
  v4 = (a2 + 208);
  v6 = *a2;
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, (a2 + 8));
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a1, v4);
  return IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::encode(a1, (a2 + 472));
}

void IPC::ArgumentCoder<WebCore::NetworkTransactionInformation,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
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
  }

  else
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v7 = *v5;
      if (v7 < 2)
      {
        v8 = 0;
        v9 = v7 != 0;
        goto LABEL_5;
      }

      goto LABEL_35;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v27 = *(a1 + 3);
  if (v27)
  {
    if (v4)
    {
      (*(*v27 + 16))(v27);
      v6 = *a1;
      v4 = *(a1 + 1);
      goto LABEL_35;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_35:
  *a1 = 0;
  *(a1 + 1) = 0;
  v28 = *(a1 + 3);
  if (v28 && v4)
  {
    (*(*v28 + 16))(v28, v6);
    v9 = 0;
    v29 = *(a1 + 3);
    v30 = *a1;
    v31 = *(a1 + 1);
    v8 = 1;
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v29 && v31)
    {
      (*(*v29 + 16))(v29, v30);
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

LABEL_5:
  IPC::Decoder::decode<WebCore::ResourceRequest>(a1, v62);
  IPC::Decoder::decode<WebCore::ResourceResponse>(a1, v58);
  IPC::Decoder::decode<WebCore::NetworkLoadMetrics>(v51, a1);
  if (!*a1)
  {
LABEL_29:
    *a2 = 0;
    *(a2 + 600) = 0;
    goto LABEL_13;
  }

  if (v8 || (v68 & 1) == 0 || (WebCore::ResourceRequestBase::RequestData::RequestData(v32, v62), v11 = v63, v63 = 0uLL, v33 = v11, v34 = v64, v35 = v65, v36 = v66, v12 = v67, v64 = 0, v67 = 0, v37 = v12, (v61 & 1) == 0) || (WebCore::ResourceResponseBase::ResourceResponseBase(v38, v58), v13 = v59, v59 = 0, v39 = v13, v40 = v60, (v57 & 1) == 0))
  {
    __break(1u);
    goto LABEL_29;
  }

  v46 = v52;
  v43 = v51[2];
  v44 = v51[3];
  v45 = v51[4];
  v41 = v51[0];
  v42 = v51[1];
  v47 = v53;
  v48 = v54;
  v14 = v56;
  v49 = v55;
  v53 = 0;
  v56 = 0;
  v50 = v14;
  *a2 = v9;
  WebCore::ResourceRequestBase::RequestData::RequestData(a2 + 8, v32);
  v15 = v33;
  v33 = 0uLL;
  *(a2 + 160) = v15;
  v16 = v35;
  v17 = v37;
  *(a2 + 176) = v34;
  *(a2 + 184) = v16;
  *(a2 + 192) = v36;
  v34 = 0;
  v37 = 0;
  *(a2 + 200) = v17;
  WebCore::ResourceResponseBase::ResourceResponseBase(a2 + 208, v38);
  *(a2 + 456) = v39;
  *(a2 + 464) = v40;
  v18 = v44;
  *(a2 + 504) = v43;
  *(a2 + 520) = v18;
  *(a2 + 536) = v45;
  *(a2 + 552) = v46;
  v19 = v42;
  *(a2 + 472) = v41;
  *(a2 + 488) = v19;
  *(a2 + 560) = v47;
  *(a2 + 568) = v48;
  *(a2 + 584) = v49;
  *(a2 + 592) = v50;
  *(a2 + 600) = 1;
  v50 = 0;
  v47 = 0;
  v39 = 0;
  WebCore::ResourceResponseBase::~ResourceResponseBase(v38, v20);
  v21 = v37;
  v37 = 0;
  if (v21)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v32);
LABEL_13:
  if (v57 == 1)
  {
    v22 = v56;
    v56 = 0;
    if (v22)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v22, v10);
    }

    v23 = v53;
    v53 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v10);
    }
  }

  if (v61 == 1)
  {
    v24 = v59;
    v59 = 0;
    if (v24)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v58, v10);
  }

  if (v68 == 1)
  {
    v25 = v67;
    v67 = 0;
    if (v25)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v62);
  }
}

void sub_19D725510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = *(v66 + 200);
  *(v66 + 200) = 0;
  if (v71)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v67);
  v73 = STACK[0x250];
  STACK[0x250] = 0;
  if (v73)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v73, v72);
  }

  v74 = STACK[0x230];
  STACK[0x230] = 0;
  if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v74, v72);
  }

  if (a66)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((v69 + 208), v72);
  if (a34)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v68 + 8));
  if (LOBYTE(STACK[0x2D8]) == 1)
  {
    v76 = STACK[0x2D0];
    STACK[0x2D0] = 0;
    if (v76)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v76, v75);
    }

    v77 = STACK[0x2B0];
    STACK[0x2B0] = 0;
    if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v77, v75);
    }
  }

  if (LOBYTE(STACK[0x3E8]) == 1)
  {
    v78 = STACK[0x3D8];
    STACK[0x3D8] = 0;
    if (v78)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&STACK[0x2E0], v75);
  }

  if (LOBYTE(STACK[0x4B8]) == 1)
  {
    v79 = STACK[0x4B0];
    STACK[0x4B0] = 0;
    if (v79)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&STACK[0x3F0]);
  }

  _Unwind_Resume(a1);
}

WebCore::AdditionalNetworkLoadMetricsForWebInspector *IPC::Decoder::decode<WebCore::NetworkLoadMetrics>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::decode(a2, a1);
  if ((*(a1 + 128) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t std::optional<WebCore::NetworkLoadMetrics>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 128) == 1)
  {
    v3 = *(a1 + 120);
    *(a1 + 120) = 0;
    if (v3)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v3, a2);
    }

    v4 = *(a1 + 88);
    *(a1 + 88) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  return a1;
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ContentType,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v15);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    goto LABEL_18;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_20;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    v12 = *v6;
    goto LABEL_24;
  }

  for (i = 1; ; i = 0)
  {
    v5 = v8 ? i : 0;
    if (!v7)
    {
      break;
    }

    if (v16 & 1) != 0 && (i)
    {
      result = WebCore::ContentType::ContentType(&v13, &v15);
      *a2 = v13;
      *(a2 + 8) = v14;
      *(a2 + 16) = 1;
      goto LABEL_12;
    }

    __break(1u);
LABEL_18:
    *a1 = 0;
    *(a1 + 1) = 0;
    v10 = *(a1 + 3);
    if (v10)
    {
      if (v5)
      {
        (*(*v10 + 16))(v10);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_20:
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      if (v5)
      {
        (*(*v11 + 16))(v11);
        v12 = 0;
        v7 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_24;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    v12 = 0;
LABEL_24:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v5)
    {
      break;
    }

    result = (*(*result + 16))(result, v7);
    v7 = *a1;
    v8 = v12;
  }

  *a2 = 0;
  *(a2 + 16) = 0;
LABEL_12:
  if (v16 == 1)
  {
    result = v15;
    v15 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void sub_19D7258C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::DateTimeChooserParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 40);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 56);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 72);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 104));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 112));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 120));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 121));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 122));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 123));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 124));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::DateTimeChooserParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<WTF::AtomString>(a1, &v93);
  IPC::Decoder::decode<WebCore::IntRect>(v2, &v91);
  IPC::Decoder::decode<WTF::AtomString>(v2, &v89);
  IPC::Decoder::decode<WTF::String>(v2, &v87);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, &v84);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, &v81);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, &v78);
  v4 = IPC::Decoder::decode<unsigned long long>(v2);
  v6 = v5;
  v7 = IPC::Decoder::decode<unsigned long long>(v2);
  v9 = v8;
  v10 = IPC::Decoder::decode<unsigned long long>(v2);
  v12 = v11;
  result = IPC::Decoder::decode<unsigned long long>(v2);
  v16 = v15;
  v72 = v7;
  v17 = *(v2 + 1);
  v18 = *(v2 + 2);
  v19 = *v2;
  if (v17 <= &v18[-*v2])
  {
    goto LABEL_74;
  }

  v20 = v4;
  v21 = v18 + 1;
  *(v2 + 2) = v18 + 1;
  if (!v18)
  {
    v29 = v10;
    v70 = result;
    v71 = v16;
    goto LABEL_77;
  }

  v22 = *v18;
  if (v22 < 2)
  {
    v23 = 1;
    goto LABEL_5;
  }

  v29 = v10;
  v70 = result;
  v71 = v16;
  while (1)
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v50 = *(v2 + 3);
    if (!v50 || !v17)
    {
      v69 = 0;
      v51 = 0;
      v19 = 0;
LABEL_83:
      *v2 = 0;
      *(v2 + 1) = 0;
      v52 = *(v2 + 3);
      if (v52 && v51)
      {
        (*(*v52 + 16))(v52, v19, v51);
        v26 = 0;
        v19 = *v2;
        v17 = *(v2 + 1);
      }

      else
      {
        v17 = 0;
        v19 = 0;
        v26 = 0;
      }

      goto LABEL_86;
    }

    (*(*v50 + 16))(v50, v19);
    v23 = 0;
    v19 = *v2;
    v17 = *(v2 + 1);
    v21 = *(v2 + 2);
    result = v70;
    v16 = v71;
    v10 = v29;
LABEL_5:
    if (v22)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v17 <= v21 - v19)
    {
      v29 = v10;
      LOBYTE(v69) = v23;
      BYTE4(v69) = v24;
      v70 = result;
      v71 = v16;
      v51 = 0;
      v62 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v62 && v17)
      {
        (*(*v62 + 16))(v62);
        v19 = *v2;
        v51 = *(v2 + 1);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_83;
    }

    v25 = v21 + 1;
    *(v2 + 2) = v21 + 1;
    if (!v21)
    {
      v29 = v10;
      LOBYTE(v69) = v23;
      BYTE4(v69) = v24;
      v70 = result;
      v71 = v16;
      v51 = v17;
      goto LABEL_83;
    }

    v26 = *v21;
    if (v26 < 2)
    {
      v27 = 1;
      goto LABEL_12;
    }

    v29 = v10;
    LOBYTE(v69) = v23;
    BYTE4(v69) = v24;
    v70 = result;
    v71 = v16;
LABEL_86:
    *v2 = 0;
    *(v2 + 1) = 0;
    v53 = *(v2 + 3);
    if (!v53 || !v17)
    {
      v68 = 0;
      v54 = 0;
      v19 = 0;
LABEL_88:
      *v2 = 0;
      *(v2 + 1) = 0;
      v55 = *(v2 + 3);
      if (v55 && v54)
      {
        (*(*v55 + 16))(v55, v19, v54);
        v10 = 0;
        v19 = *v2;
        v17 = *(v2 + 1);
      }

      else
      {
        v17 = 0;
        v19 = 0;
        v10 = 0;
      }

      goto LABEL_91;
    }

    (*(*v53 + 16))(v53, v19);
    v27 = 0;
    v19 = *v2;
    v17 = *(v2 + 1);
    v25 = *(v2 + 2);
    result = v70;
    v16 = v71;
    v23 = v69;
    v24 = BYTE4(v69);
    v10 = v29;
LABEL_12:
    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v10;
    if (v17 <= v25 - v19)
    {
      LOBYTE(v68) = v27;
      BYTE4(v68) = v28;
      LOBYTE(v69) = v23;
      BYTE4(v69) = v24;
      v70 = result;
      v71 = v16;
      v54 = 0;
      v63 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v63 && v17)
      {
        (*(*v63 + 16))(v63);
        v19 = *v2;
        v54 = *(v2 + 1);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_88;
    }

    v30 = v25 + 1;
    *(v2 + 2) = v25 + 1;
    if (!v25)
    {
      LOBYTE(v68) = v27;
      BYTE4(v68) = v28;
      LOBYTE(v69) = v23;
      BYTE4(v69) = v24;
      v70 = result;
      v71 = v16;
      v54 = v17;
      goto LABEL_88;
    }

    v10 = *v25;
    if (v10 < 2)
    {
      v31 = 1;
      goto LABEL_19;
    }

    LOBYTE(v68) = v27;
    BYTE4(v68) = v28;
    LOBYTE(v69) = v23;
    BYTE4(v69) = v24;
    v70 = result;
    v71 = v16;
LABEL_91:
    *v2 = 0;
    *(v2 + 1) = 0;
    v56 = *(v2 + 3);
    if (!v56 || !v17)
    {
      v67 = 0;
      v57 = 0;
      v19 = 0;
LABEL_93:
      *v2 = 0;
      *(v2 + 1) = 0;
      v58 = *(v2 + 3);
      if (v58 && v57)
      {
        (*(*v58 + 16))(v58, v19, v57);
        v34 = 0;
        v19 = *v2;
        v17 = *(v2 + 1);
      }

      else
      {
        v17 = 0;
        v19 = 0;
        v34 = 0;
      }

      goto LABEL_95;
    }

    (*(*v56 + 16))(v56, v19);
    v31 = 0;
    v19 = *v2;
    v17 = *(v2 + 1);
    v30 = *(v2 + 2);
    result = v70;
    v16 = v71;
    v23 = v69;
    v24 = BYTE4(v69);
    v27 = v68;
    v28 = BYTE4(v68);
LABEL_19:
    if (v10)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (v17 <= v30 - v19)
    {
      LOBYTE(v67) = v31;
      BYTE4(v67) = v32;
      LOBYTE(v68) = v27;
      BYTE4(v68) = v28;
      LOBYTE(v69) = v23;
      BYTE4(v69) = v24;
      v70 = result;
      v71 = v16;
      v57 = 0;
      v64 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v64 && v17)
      {
        (*(*v64 + 16))(v64);
        v19 = *v2;
        v57 = *(v2 + 1);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_93;
    }

    v33 = v30 + 1;
    *(v2 + 2) = v30 + 1;
    if (!v30)
    {
      LOBYTE(v67) = v31;
      BYTE4(v67) = v32;
      LOBYTE(v68) = v27;
      BYTE4(v68) = v28;
      LOBYTE(v69) = v23;
      BYTE4(v69) = v24;
      v70 = result;
      v71 = v16;
      v57 = v17;
      goto LABEL_93;
    }

    v34 = *v30;
    if (v34 < 2)
    {
      v35 = 1;
      goto LABEL_26;
    }

    LOBYTE(v67) = v31;
    BYTE4(v67) = v32;
    LOBYTE(v68) = v27;
    BYTE4(v68) = v28;
    LOBYTE(v69) = v23;
    BYTE4(v69) = v24;
    v70 = result;
    v71 = v16;
LABEL_95:
    *v2 = 0;
    *(v2 + 1) = 0;
    v59 = *(v2 + 3);
    if (!v59 || !v17)
    {
      v66 = 0;
      v60 = 0;
      v19 = 0;
LABEL_97:
      *v2 = 0;
      *(v2 + 1) = 0;
      v61 = *(v2 + 3);
      if (v61 && v60)
      {
        (*(*v61 + 16))(v61, v19, v60);
        v4 = 0;
        v19 = *v2;
        v17 = *(v2 + 1);
      }

      else
      {
        v17 = 0;
        v19 = 0;
        v4 = 0;
      }

      goto LABEL_99;
    }

    (*(*v59 + 16))(v59, v19);
    v35 = 0;
    v19 = *v2;
    v17 = *(v2 + 1);
    v33 = *(v2 + 2);
    result = v70;
    v16 = v71;
    v23 = v69;
    v24 = BYTE4(v69);
    v27 = v68;
    v28 = BYTE4(v68);
    v31 = v67;
    v32 = BYTE4(v67);
LABEL_26:
    if (v34)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    if (v17 <= v33 - v19)
    {
      LOBYTE(v66) = v35;
      BYTE4(v66) = v36;
      LOBYTE(v67) = v31;
      BYTE4(v67) = v32;
      LOBYTE(v68) = v27;
      BYTE4(v68) = v28;
      LOBYTE(v69) = v23;
      BYTE4(v69) = v24;
      v70 = result;
      v71 = v16;
      v60 = 0;
      v65 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v65 && v17)
      {
        (*(*v65 + 16))(v65);
        v19 = *v2;
        v60 = *(v2 + 1);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_97;
    }

    *(v2 + 2) = v33 + 1;
    if (!v33)
    {
      LOBYTE(v66) = v35;
      BYTE4(v66) = v36;
      LOBYTE(v67) = v31;
      BYTE4(v67) = v32;
      LOBYTE(v68) = v27;
      BYTE4(v68) = v28;
      LOBYTE(v69) = v23;
      BYTE4(v69) = v24;
      v70 = result;
      v71 = v16;
      v60 = v17;
      goto LABEL_97;
    }

    v4 = *v33;
    if (v4 < 2)
    {
      v37 = 1;
      goto LABEL_33;
    }

    LOBYTE(v66) = v35;
    BYTE4(v66) = v36;
    LOBYTE(v67) = v31;
    BYTE4(v67) = v32;
    LOBYTE(v68) = v27;
    BYTE4(v68) = v28;
    LOBYTE(v69) = v23;
    BYTE4(v69) = v24;
    v70 = result;
    v71 = v16;
LABEL_99:
    *v2 = 0;
    *(v2 + 1) = 0;
    result = *(v2 + 3);
    v10 = v71;
    if (!result || !v17)
    {
      break;
    }

    (*(*result + 16))(result, v19);
    v37 = 0;
    v19 = *v2;
    result = v70;
    v16 = v71;
    v23 = v69;
    v24 = BYTE4(v69);
    v27 = v68;
    v28 = BYTE4(v68);
    v31 = v67;
    v32 = BYTE4(v67);
    v35 = v66;
    v36 = BYTE4(v66);
LABEL_33:
    v17 = v4 ? v37 : 0;
    if (!v19)
    {
      break;
    }

    if (v94)
    {
      v38 = v93;
      v93 = 0;
      if (v92 & 1) != 0 && (v90)
      {
        v39 = v89;
        v89 = 0;
        if (v88)
        {
          v40 = v87;
          v87 = 0;
          if (v86)
          {
            v41 = v84;
            *&v73 = v84;
            v42 = v85;
            v2 = HIDWORD(v85);
            v84 = 0;
            v85 = 0;
            *(&v73 + 1) = __PAIR64__(v2, v42);
            v4 = v83;
            if (v83)
            {
              v10 = v81;
              *&v74 = v81;
              v43 = v82;
              v44 = HIDWORD(v82);
              v81 = 0;
              v82 = 0;
              *(&v74 + 1) = __PAIR64__(v44, v43);
              v4 = v80;
              if (v80)
              {
                v4 = v78;
                v45 = v79;
                v78 = 0;
                v79 = 0;
                if (v6)
                {
                  *&v76 = v20;
                  if (v9)
                  {
                    *(&v76 + 1) = v72;
                    if (v12)
                    {
                      *v77 = v29;
                      if (v16)
                      {
                        *&v77[8] = result;
                        if (v23)
                        {
                          v77[16] = v24;
                          if (v27)
                          {
                            v77[17] = v28;
                            if (v31)
                            {
                              v77[18] = v32;
                              if (v35)
                              {
                                v77[19] = v36;
                                if (v37)
                                {
                                  *&v14 = 0;
                                  v77[20] = v17;
                                  *a2 = v38;
                                  *(a2 + 8) = v91;
                                  *(a2 + 24) = v39;
                                  *(a2 + 32) = v40;
                                  v73 = v14;
                                  v74 = v14;
                                  *(a2 + 40) = v41;
                                  *(a2 + 48) = v42;
                                  *(a2 + 52) = v2;
                                  *(a2 + 56) = v10;
                                  *(a2 + 64) = v43;
                                  *(a2 + 68) = v44;
                                  v75[0] = 0;
                                  *(a2 + 72) = v4;
                                  v75[1] = 0;
                                  *(a2 + 80) = v45;
                                  *(a2 + 88) = v76;
                                  *(a2 + 104) = *v77;
                                  *(a2 + 117) = *&v77[13];
                                  *(a2 + 128) = 1;
                                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v75, v38);
                                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v74, v46);
                                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v73, v47);
                                  result = 0;
                                  goto LABEL_54;
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
LABEL_74:
    v29 = v10;
    v20 = v4;
    v70 = result;
    v71 = v16;
    *v2 = 0;
    *(v2 + 1) = 0;
    v48 = *(v2 + 3);
    if (!v48)
    {
      v17 = 0;
LABEL_76:
      v19 = 0;
      goto LABEL_77;
    }

    if (!v17)
    {
      goto LABEL_76;
    }

    (*(*v48 + 16))(v48);
    v19 = *v2;
    v17 = *(v2 + 1);
LABEL_77:
    *v2 = 0;
    *(v2 + 1) = 0;
    v49 = *(v2 + 3);
    if (!v49)
    {
      v17 = 0;
      goto LABEL_79;
    }

    if (v17)
    {
      (*(*v49 + 16))(v49, v19);
      v22 = 0;
      v19 = *v2;
      v17 = *(v2 + 1);
    }

    else
    {
LABEL_79:
      v19 = 0;
      v22 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 128) = 0;
LABEL_54:
  if (v80 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v78, v19);
  }

  if (v83 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v81, v19);
  }

  if (v86 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v84, v19);
  }

  if (v88 == 1)
  {
    result = v87;
    v87 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  if (v90 == 1)
  {
    result = v89;
    v89 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  if (v94 == 1)
  {
    result = v93;
    v93 = 0;
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

void sub_19D726430(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a34 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a32, a2);
  }

  if (a40 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a36, a2);
  }

  if (*(v40 - 168) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v40 - 184, a2);
  }

  if (*(v40 - 152) == 1)
  {
    v42 = *(v40 - 160);
    *(v40 - 160) = 0;
    if (v42)
    {
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, a2);
      }
    }
  }

  if (*(v40 - 136) == 1)
  {
    v43 = *(v40 - 144);
    *(v40 - 144) = 0;
    if (v43)
    {
      if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, a2);
      }
    }
  }

  if (*(v40 - 96) == 1)
  {
    v44 = *(v40 - 104);
    *(v40 - 104) = 0;
    if (v44)
    {
      if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::ArgumentCoder<WebCore::PlatformTimeRanges,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v8);
  if (*a1)
  {
    if ((v10 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    WebCore::PlatformTimeRanges::PlatformTimeRanges();
    std::optional<WebCore::PlatformTimeRanges>::optional[abi:sn200100]<WebCore::PlatformTimeRanges,0>(a2, &v6);
    result = v6;
    if (v6)
    {
      v6 = 0;
      v7 = 0;
      result = WTF::fastFree(result, v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[16] = 0;
  }

  if (v10 == 1)
  {
    result = v8;
    if (v8)
    {
      v8 = 0;
      v9 = 0;
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

void sub_19D7265E8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, WTF *a12, int a13, int a14, char a15)
{
  if (a10)
  {
    WTF::fastFree(a10, a2);
  }

  if (a15 == 1)
  {
    if (a12)
    {
      WTF::fastFree(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
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

void sub_19D7266A0(_Unwind_Exception *exception_object, void *a2)
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

uint64_t std::optional<WebCore::PlatformTimeRanges>::optional[abi:sn200100]<WebCore::PlatformTimeRanges,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D726700(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::ArgumentCoder<WebCore::VideoPlaybackQualityMetrics,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 24);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::VideoPlaybackQualityMetrics,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v11 = *v5 | 0x100000000;
      v12 = v6;
      goto LABEL_8;
    }

    goto LABEL_36;
  }

  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v28 = *(a1 + 3);
    if (!v28)
    {
      v4 = 0;
LABEL_35:
      v6 = 0;
      goto LABEL_36;
    }

    if (!v4)
    {
      goto LABEL_35;
    }

    (*(*v28 + 16))(v28, v6);
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_36:
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (!v29)
    {
      v12 = 0;
      v4 = 0;
LABEL_38:
      v6 = 0;
      v11 = 0;
      goto LABEL_8;
    }

    if (!v4)
    {
      v12 = 0;
      goto LABEL_38;
    }

    (*(*v29 + 16))(v29, v6);
    v11 = 0;
    v12 = *a1;
    v4 = *(a1 + 1);
    v6 = *a1;
LABEL_8:
    v13 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v4 >= v13 - v6 && v4 - (v13 - v6) > 3)
    {
      *(a1 + 2) = v13 + 1;
      if (v13)
      {
        v15 = *v13 | 0x100000000;
        goto LABEL_15;
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v30 = *(a1 + 3);
      if (v30)
      {
        if (v4)
        {
          (*(*v30 + 16))(v30, v12);
          v12 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_42;
        }
      }

      else
      {
        v4 = 0;
      }

      v12 = 0;
    }

LABEL_42:
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = *(a1 + 3);
    if (v31)
    {
      if (v4)
      {
        (*(*v31 + 16))(v31, v12);
        v15 = 0;
        v12 = *a1;
        v4 = *(a1 + 1);
        v6 = *a1;
        goto LABEL_15;
      }

      v12 = 0;
    }

    else
    {
      v12 = 0;
      v4 = 0;
    }

    v6 = 0;
    v15 = 0;
LABEL_15:
    v16 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = v16 - v6;
    v8 = v4 >= v17;
    v18 = v4 - v17;
    if (v8 && v18 > 3)
    {
      *(a1 + 2) = v16 + 1;
      if (v16)
      {
        v19 = *v16 | 0x100000000;
        goto LABEL_20;
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v32 = *(a1 + 3);
      if (!v32)
      {
        v4 = 0;
LABEL_47:
        v12 = 0;
        goto LABEL_48;
      }

      if (!v4)
      {
        goto LABEL_47;
      }

      (*(*v32 + 16))(v32, v12);
      v12 = *a1;
      v4 = *(a1 + 1);
    }

LABEL_48:
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33 && v4)
    {
      (*(*v33 + 16))(v33, v12);
    }

    v19 = 0;
LABEL_20:
    result = IPC::Decoder::decode<unsigned long long>(a1);
    v6 = v21;
    v4 = *(a1 + 1);
    v22 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = *a1;
    v24 = v22 - *a1;
    v8 = v4 >= v24;
    v25 = v4 - v24;
    if (!v8 || v25 <= 3)
    {
      break;
    }

    *(a1 + 2) = v22 + 1;
    if (!v22)
    {
      v35 = result;
      v36 = v6;
      goto LABEL_53;
    }

    v26 = *v22 | 0x100000000;
    if (!v23)
    {
      goto LABEL_54;
    }

LABEL_25:
    if ((v11 & 0x100000000) != 0 && (v15 & 0x100000000) != 0 && (v19 & 0x100000000) != 0 && (v6 & 1) != 0 && (v26 & 0x100000000) != 0)
    {
      *a2 = v11;
      *(a2 + 4) = v15;
      *(a2 + 8) = v19;
      *(a2 + 16) = result;
      v27 = 1;
      *(a2 + 24) = v26;
      goto LABEL_31;
    }

    __break(1u);
  }

  v35 = result;
  v36 = v6;
  *a1 = 0;
  *(a1 + 1) = 0;
  v34 = *(a1 + 3);
  if (!v34)
  {
    v4 = 0;
LABEL_52:
    v23 = 0;
    goto LABEL_53;
  }

  if (!v4)
  {
    goto LABEL_52;
  }

  (*(*v34 + 16))(v34);
  v23 = *a1;
  v4 = *(a1 + 1);
LABEL_53:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v4)
    {
      (*(*result + 16))(result, v23);
      result = v35;
      v6 = v36;
      v26 = 0;
      if (*a1)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_54:
  v27 = 0;
  *a2 = 0;
LABEL_31:
  *(a2 + 32) = v27;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::SelectionGeometry,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(a1, v6);
  LOBYTE(v6[0]) = *(a2 + 32);
  IPC::Encoder::operator<<<BOOL>(a1, v6);
  LOBYTE(v6[0]) = *(a2 + 33);
  IPC::Encoder::operator<<<BOOL>(a1, v6);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 36));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 44));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  LOBYTE(v6[0]) = *(a2 + 52);
  IPC::Encoder::operator<<<BOOL>(a1, v6);
  LOBYTE(v6[0]) = *(a2 + 53);
  IPC::Encoder::operator<<<BOOL>(a1, v6);
  LOBYTE(v6[0]) = *(a2 + 54);
  IPC::Encoder::operator<<<BOOL>(a1, v6);
  LOBYTE(v6[0]) = *(a2 + 55);
  IPC::Encoder::operator<<<BOOL>(a1, v6);
  LOBYTE(v6[0]) = *(a2 + 56);
  IPC::Encoder::operator<<<BOOL>(a1, v6);
  LOBYTE(v6[0]) = *(a2 + 57);
  return IPC::Encoder::operator<<<BOOL>(a1, v6);
}

uint64_t IPC::ArgumentCoder<WebCore::SelectionGeometry,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebCore::FloatQuad>(a1, v65);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    goto LABEL_49;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_51;
  }

  if (*v5 >= 2u)
  {
    goto LABEL_54;
  }

  v7 = 0;
  while (1)
  {
    v8 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
    v9 = IPC::Decoder::decode<float>(a1);
    v10 = IPC::Decoder::decode<float>(a1);
    v11 = IPC::Decoder::decode<float>(a1);
    v12 = IPC::Decoder::decode<float>(a1);
    v13 = v12;
    v14 = *(a1 + 1);
    v15 = *(a1 + 2);
    v16 = *a1;
    if (v14 <= &v15[-*a1])
    {
      v64 = v12;
      *a1 = 0;
      *(a1 + 1) = 0;
      v33 = *(a1 + 3);
      if (v33)
      {
        if (v14)
        {
          (*(*v33 + 16))(v33);
          v16 = *a1;
          v14 = *(a1 + 1);
          goto LABEL_59;
        }
      }

      else
      {
        v14 = 0;
      }

      v16 = 0;
    }

    else
    {
      v17 = v15 + 1;
      *(a1 + 2) = v15 + 1;
      if (v15)
      {
        if (*v15 < 2u)
        {
          v18 = 1;
          goto LABEL_9;
        }

        v64 = v12;
        goto LABEL_63;
      }

      v64 = v12;
    }

LABEL_59:
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (!v34)
    {
      v14 = 0;
LABEL_61:
      v16 = 0;
      goto LABEL_63;
    }

    if (!v14)
    {
      goto LABEL_61;
    }

    (*(*v34 + 16))(v34, v16);
    v16 = *a1;
    v14 = *(a1 + 1);
LABEL_63:
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (!v35 || !v14)
    {
      v63 = 0;
      v36 = 0;
      v16 = 0;
LABEL_65:
      *a1 = 0;
      *(a1 + 1) = 0;
      v37 = *(a1 + 3);
      if (v37 && v36)
      {
        (*(*v37 + 16))(v37, v16, v36);
        v16 = *a1;
        v14 = *(a1 + 1);
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      goto LABEL_68;
    }

    (*(*v35 + 16))(v35, v16);
    v18 = 0;
    v16 = *a1;
    v14 = *(a1 + 1);
    v17 = *(a1 + 2);
    v13 = v64;
LABEL_9:
    if (v14 <= &v17[-v16])
    {
      v63 = v18;
      v64 = v13;
      v36 = 0;
      v50 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v50 && v14)
      {
        (*(*v50 + 16))(v50);
        v16 = *a1;
        v36 = *(a1 + 1);
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_65;
    }

    v19 = v17 + 1;
    *(a1 + 2) = v17 + 1;
    if (!v17)
    {
      v63 = v18;
      v64 = v13;
      v36 = v14;
      goto LABEL_65;
    }

    if (*v17 < 2u)
    {
      v20 = 1;
      goto LABEL_13;
    }

    v63 = v18;
    v64 = v13;
LABEL_68:
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (!v38 || !v14)
    {
      v62 = 0;
      v39 = 0;
      v16 = 0;
LABEL_70:
      *a1 = 0;
      *(a1 + 1) = 0;
      v40 = *(a1 + 3);
      if (v40 && v39)
      {
        (*(*v40 + 16))(v40, v16, v39);
        v16 = *a1;
        v14 = *(a1 + 1);
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      goto LABEL_73;
    }

    (*(*v38 + 16))(v38, v16);
    v20 = 0;
    v16 = *a1;
    v14 = *(a1 + 1);
    v19 = *(a1 + 2);
    v13 = v64;
    v18 = v63;
LABEL_13:
    if (v14 <= &v19[-v16])
    {
      v62 = v20;
      v63 = v18;
      v64 = v13;
      v39 = 0;
      v51 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v51 && v14)
      {
        (*(*v51 + 16))(v51);
        v16 = *a1;
        v39 = *(a1 + 1);
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_70;
    }

    v21 = v19 + 1;
    *(a1 + 2) = v19 + 1;
    if (!v19)
    {
      v62 = v20;
      v63 = v18;
      v64 = v13;
      v39 = v14;
      goto LABEL_70;
    }

    if (*v19 < 2u)
    {
      v22 = 1;
      goto LABEL_17;
    }

    v62 = v20;
    v63 = v18;
    v64 = v13;
LABEL_73:
    *a1 = 0;
    *(a1 + 1) = 0;
    v41 = *(a1 + 3);
    if (!v41 || !v14)
    {
      v61 = 0;
      v42 = 0;
      v16 = 0;
LABEL_75:
      *a1 = 0;
      *(a1 + 1) = 0;
      v43 = *(a1 + 3);
      if (v43 && v42)
      {
        (*(*v43 + 16))(v43, v16, v42);
        v16 = *a1;
        v14 = *(a1 + 1);
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      goto LABEL_77;
    }

    (*(*v41 + 16))(v41, v16);
    v22 = 0;
    v16 = *a1;
    v14 = *(a1 + 1);
    v21 = *(a1 + 2);
    v13 = v64;
    v18 = v63;
    v20 = v62;
LABEL_17:
    if (v14 <= &v21[-v16])
    {
      v61 = v22;
      v62 = v20;
      v63 = v18;
      v64 = v13;
      v42 = 0;
      v52 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v52 && v14)
      {
        (*(*v52 + 16))(v52);
        v16 = *a1;
        v42 = *(a1 + 1);
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_75;
    }

    v23 = v21 + 1;
    *(a1 + 2) = v21 + 1;
    if (!v21)
    {
      v61 = v22;
      v62 = v20;
      v63 = v18;
      v64 = v13;
      v42 = v14;
      goto LABEL_75;
    }

    if (*v21 < 2u)
    {
      v24 = 1;
      goto LABEL_21;
    }

    v61 = v22;
    v62 = v20;
    v63 = v18;
    v64 = v13;
LABEL_77:
    *a1 = 0;
    *(a1 + 1) = 0;
    v44 = *(a1 + 3);
    if (!v44 || !v14)
    {
      v60 = 0;
      v45 = 0;
      v16 = 0;
LABEL_79:
      *a1 = 0;
      *(a1 + 1) = 0;
      v46 = *(a1 + 3);
      if (v46 && v45)
      {
        (*(*v46 + 16))(v46, v16, v45);
        v16 = *a1;
        v14 = *(a1 + 1);
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      goto LABEL_81;
    }

    (*(*v44 + 16))(v44, v16);
    v24 = 0;
    v16 = *a1;
    v14 = *(a1 + 1);
    v23 = *(a1 + 2);
    v13 = v64;
    v18 = v63;
    v20 = v62;
    v22 = v61;
LABEL_21:
    if (v14 <= &v23[-v16])
    {
      v60 = v24;
      v61 = v22;
      v62 = v20;
      v63 = v18;
      v64 = v13;
      v45 = 0;
      v53 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v53 && v14)
      {
        (*(*v53 + 16))(v53);
        v16 = *a1;
        v45 = *(a1 + 1);
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_79;
    }

    v25 = v23 + 1;
    *(a1 + 2) = v23 + 1;
    if (!v23)
    {
      v60 = v24;
      v61 = v22;
      v62 = v20;
      v63 = v18;
      v64 = v13;
      v45 = v14;
      goto LABEL_79;
    }

    if (*v23 < 2u)
    {
      v26 = 1;
      goto LABEL_25;
    }

    v60 = v24;
    v61 = v22;
    v62 = v20;
    v63 = v18;
    v64 = v13;
LABEL_81:
    *a1 = 0;
    *(a1 + 1) = 0;
    v47 = *(a1 + 3);
    if (!v47 || !v14)
    {
      v59 = 0;
      v48 = 0;
      v16 = 0;
LABEL_83:
      *a1 = 0;
      *(a1 + 1) = 0;
      v49 = *(a1 + 3);
      if (v49 && v48)
      {
        (*(*v49 + 16))(v49, v16, v48);
        v58 = 0;
        v16 = *a1;
        v14 = *(a1 + 1);
      }

      else
      {
        v14 = 0;
        v16 = 0;
        v58 = 0;
      }

      goto LABEL_85;
    }

    (*(*v47 + 16))(v47, v16);
    v26 = 0;
    v16 = *a1;
    v14 = *(a1 + 1);
    v25 = *(a1 + 2);
    v13 = v64;
    v18 = v63;
    v20 = v62;
    v22 = v61;
    v24 = v60;
LABEL_25:
    if (v14 <= &v25[-v16])
    {
      v59 = v26;
      v60 = v24;
      v61 = v22;
      v62 = v20;
      v63 = v18;
      v64 = v13;
      v48 = 0;
      v54 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v54 && v14)
      {
        (*(*v54 + 16))(v54);
        v16 = *a1;
        v48 = *(a1 + 1);
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_83;
    }

    *(a1 + 2) = v25 + 1;
    if (!v25)
    {
      v59 = v26;
      v60 = v24;
      v61 = v22;
      v62 = v20;
      v63 = v18;
      v64 = v13;
      v48 = v14;
      goto LABEL_83;
    }

    v27 = *v25;
    if (v27 < 2)
    {
      result = 1;
      goto LABEL_29;
    }

    v58 = *v25;
    v59 = v26;
    v60 = v24;
    v61 = v22;
    v62 = v20;
    v63 = v18;
    v64 = v13;
LABEL_85:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v14)
    {
      break;
    }

    (*(*result + 16))(result, v16);
    v26 = v59;
    v24 = v60;
    v22 = v61;
    v20 = v62;
    v18 = v63;
    v13 = v64;
    result = 0;
    v16 = *a1;
    v27 = v58;
LABEL_29:
    v4 = v27 ? result : 0;
    if (!v16)
    {
      break;
    }

    if (v65[32] & 1) != 0 && !v7 && v8 > 0xFFu && (v9 & 0x100000000) != 0 && (v10 & 0x100000000) != 0 && (v11 & 0x100000000) != 0 && (v13 & 0x100000000) != 0 && (v18 & 1) != 0 && (v20 & 1) != 0 && (v22 & 1) != 0 && (v24 & 1) != 0 && (v26 & 1) != 0 && (result)
    {
      result = WebCore::SelectionGeometry::SelectionGeometry();
      v29 = 1;
      goto LABEL_47;
    }

    __break(1u);
LABEL_49:
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (v30)
    {
      if (v4)
      {
        (*(*v30 + 16))(v30);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_51:
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = *(a1 + 3);
    if (!v31)
    {
      v4 = 0;
LABEL_53:
      v6 = 0;
      goto LABEL_54;
    }

    if (!v4)
    {
      goto LABEL_53;
    }

    (*(*v31 + 16))(v31);
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_54:
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32 && v4)
    {
      (*(*v32 + 16))(v32, v6);
      v55 = *(a1 + 3);
      v56 = *a1;
      v57 = *(a1 + 1);
      v7 = 1;
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v55 && v57)
      {
        (*(*v55 + 16))(v55, v56);
      }
    }

    else
    {
      v7 = 1;
    }
  }

  v29 = 0;
  *a2 = 0;
LABEL_47:
  a2[84] = v29;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::DataListSuggestionInformation,void>::encode(IPC::Encoder *a1, char *a2)
{
  v4 = (a2 + 24);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::VectorArgumentCoder<false,WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 8));

  return IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::DataListSuggestionInformation,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v14);
  result = IPC::Decoder::decode<WebCore::IntRect>(a1, &v12);
  if (*a1)
  {
    if (v4 & 0x100) != 0 && (v16)
    {
      v7 = v14;
      v8 = v15;
      v14 = 0;
      v15 = 0;
      if (v13)
      {
        v9 = v12;
        v11 = v12;
        *a2 = v4;
        v10[0] = 0;
        v10[1] = 0;
        *(a2 + 8) = v7;
        *(a2 + 16) = v8;
        *(a2 + 24) = v9;
        *(a2 + 40) = 1;
        result = WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v6);
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 40) = 0;
LABEL_6:
  if (v16 == 1)
  {
    return WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v6);
  }

  return result;
}

void sub_19D727844(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 - 40))
  {
    WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 - 56, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
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

void sub_19D7278D0(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2, v5);
  v6 = *(a2 + 56);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  return IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 32, v6);
}

mpark *IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  result = IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a1, &v23);
  if (v26 != 1)
  {
    result = IPC::Decoder::markInvalid(a1);
    v5 = *a1;
    if (*a1)
    {
      goto LABEL_38;
    }

    *a2 = 0;
    *(a2 + 64) = 0;
    return result;
  }

  if (!*a1)
  {
    goto LABEL_33;
  }

  LODWORD(v5) = v25;
  if (v25)
  {
    goto LABEL_39;
  }

  if (v23 == 0 && (v24 & 0x10000) == 0)
  {
LABEL_33:
    *a2 = 0;
    *(a2 + 64) = 0;
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v23);
  }

  while (1)
  {
    result = IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a1, &v19);
    if ((v22 & 1) == 0)
    {
      break;
    }

    if (!*a1)
    {
      goto LABEL_34;
    }

    LODWORD(v5) = v21;
    if (v21)
    {
      if (v21 != 1)
      {
        goto LABEL_42;
      }
    }

    else if (v19 == 0 && (v20 & 0x10000) == 0)
    {
LABEL_34:
      *a2 = 0;
      *(a2 + 64) = 0;
LABEL_23:
      result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v19);
      goto LABEL_24;
    }

    if (v26)
    {
      LOBYTE(v13) = 0;
      v15 = -1;
      v8 = v25;
      if (!v25)
      {
        v9 = v23;
        v23 = 0uLL;
        v13 = v9;
        v6 = v24;
        v14 = v24;
        goto LABEL_14;
      }

      if (v25 != 255)
      {
        v13 = v23;
LABEL_14:
        v15 = v25;
      }

      if (v21)
      {
        v16 = v19;
      }

      else
      {
        v10 = v19;
        v19 = 0uLL;
        v16 = v10;
        v7 = v20;
        v17 = v20;
      }

      v18 = v21;
      *a2 = 0;
      *(a2 + 24) = -1;
      if (!v8)
      {
        v11 = v13;
        v13 = 0uLL;
        *a2 = v11;
        *(a2 + 16) = v6;
        goto LABEL_19;
      }

      if (v8 != 255)
      {
        *a2 = v13;
LABEL_19:
        *(a2 + 24) = v8;
      }

      if (v5)
      {
        *(a2 + 32) = v16;
      }

      else
      {
        v12 = v16;
        v16 = 0uLL;
        *(a2 + 32) = v12;
        *(a2 + 48) = v7;
      }

      *(a2 + 56) = v5;
      *(a2 + 64) = 1;
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v16);
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v13);
      goto LABEL_23;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    if (v5 != 1)
    {
LABEL_42:
      mpark::throw_bad_variant_access(result);
    }
  }

  result = IPC::Decoder::markInvalid(a1);
  v5 = *a1;
  if (*a1)
  {
    goto LABEL_38;
  }

  *a2 = 0;
  *(a2 + 64) = 0;
LABEL_24:
  if (v26)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v23);
  }

  return result;
}

void sub_19D727BA0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 32))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v1 - 64);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::SecurityOriginData::isNull(WebCore::SecurityOriginData *this)
{
  if (!*(this + 24))
  {
    return (*this == 0) & (*(this + 18) ^ 1u);
  }

  if (*(this + 24) != 1)
  {
    mpark::throw_bad_variant_access(this);
  }

  return 0;
}

void *IPC::ArgumentCoder<WebCore::ImageBufferFormat,void>::encode(void *result, _BYTE *a2)
{
  if (!result[1])
  {
    goto LABEL_7;
  }

  **result = *a2;
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_6;
  }

  v4 = v2 - 1;
  v3 = v2 == 1;
  v5 = (*result + 1);
  *result = v5;
  result[1] = v4;
  if (!v3)
  {
    *v5 = a2[1];
    v6 = result[1];
    if (v6)
    {
      ++*result;
      result[1] = v6 - 1;
      return result;
    }

LABEL_6:
    __break(1u);
  }

LABEL_7:
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ImageBufferFormat,void>::decode(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<WebCore::ImageBufferPixelFormat>(a1);
  v3 = IPC::Decoder::decode<WebCore::LockBackForwardList>(a1);
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  if ((v2 & 0x100) == 0 || (v3 & 0x100) == 0)
  {
    __break(1u);
LABEL_7:
    LOBYTE(v2) = 0;
    return (v2 | (v3 << 8)) | (v4 << 16);
  }

  LODWORD(v4) = 1;
  return (v2 | (v3 << 8)) | (v4 << 16);
}

uint64_t IPC::Decoder::decode<WebCore::ImageBufferPixelFormat>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::ImageBufferPixelFormat,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

void IPC::ArgumentCoder<WebCore::PixelBufferFormat,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 8));
}

void IPC::ArgumentCoder<WebCore::PixelBufferFormat,void>::encode(WTF *a1, uint64_t a2)
{
  if (!*(a1 + 1))
  {
    goto LABEL_8;
  }

  **a1 = *a2;
  v2 = *(a1 + 1);
  if (!v2)
  {
    goto LABEL_7;
  }

  v4 = v2 - 1;
  v3 = v2 == 1;
  v5 = (*a1 + 1);
  *a1 = v5;
  *(a1 + 1) = v4;
  if (v3)
  {
LABEL_8:
    *a1 = 0;
    *(a1 + 1) = 0;
    goto LABEL_6;
  }

  *v5 = *(a2 + 1);
  v6 = *(a1 + 1);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  ++*a1;
  *(a1 + 1) = v6 - 1;
LABEL_6:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 8));
}

void IPC::ArgumentCoder<WebCore::PixelBufferFormat,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::PathRoundedRect::Strategy>(a1);
  v5 = IPC::Decoder::decode<WebCore::PixelFormat>(a1);
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a1, &cf);
  v6 = v11;
  if (v11 == 1)
  {
    if (!*a1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = v11;
    IPC::Decoder::markInvalid(a1);
    v6 = v9;
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      return;
    }
  }

  if (v4 & 0x100) != 0 && (v5 & 0x100) != 0 && (v6)
  {
    v7 = cf;
    *a2 = v4 | (v5 << 8);
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
    return;
  }

  __break(1u);
LABEL_9:
  *a2 = 0;
  *(a2 + 16) = 0;
  v8 = cf;
  if (cf)
  {

    CFRelease(v8);
  }
}

uint64_t IPC::Decoder::decode<WebCore::PixelFormat>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::PixelFormat,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = result;
    IPC::Decoder::markInvalid(a1);
    return v3;
  }

  return result;
}

WTF *IPC::ArgumentCoder<WebCore::TextIndicator,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v15[0] = *(a2 + 8);
  v15[1] = v4;
  v15[2] = *(a2 + 40);
  WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v16, a2 + 56);
  v18 = *(a2 + 72);
  v5 = *(a2 + 80);
  if (v5)
  {
    ++v5[4];
  }

  v19 = v5;
  v6 = *(a2 + 88);
  if (v6)
  {
    ++v6[4];
  }

  v20 = v6;
  v7 = *(a2 + 96);
  if (v7)
  {
    ++v7[4];
  }

  v8 = *(a2 + 104);
  v21 = v7;
  v22 = v8;
  if ((v8 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 1u);
  }

  v23[0] = *(a2 + 112);
  *(v23 + 9) = *(a2 + 121);
  IPC::ArgumentCoder<WebCore::TextIndicatorData,void>::encode(a1, v15);
  if ((v22 & 0x8000000000000) != 0)
  {
    v14 = (v22 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v22 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, v9);
    }
  }

  v10 = v21;
  v21 = 0;
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

  v11 = v20;
  v20 = 0;
  if (v11)
  {
    if (v11[4] == 1)
    {
      (*(*v11 + 8))(v11);
    }

    else
    {
      --v11[4];
    }
  }

  v12 = v19;
  v19 = 0;
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

  result = v16;
  if (v16)
  {
    v16 = 0;
    v17 = 0;
    return WTF::fastFree(result, v9);
  }

  return result;
}

void sub_19D7280C0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, uint64_t a17, _DWORD *a18, _DWORD *a19, _DWORD *a20, uint64_t a21)
{
  if ((a21 & 0x8000000000000) != 0)
  {
    v22 = (a21 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a21 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v22);
      WTF::fastFree(v22, a2);
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

  _Unwind_Resume(exception_object);
}

WTF *IPC::ArgumentCoder<WebCore::TextIndicator,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WebCore::TextIndicatorData>(a1, v12);
  if (*a1)
  {
    v6 = v19;
    if ((v19 & 1) == 0)
    {
      __break(1u);
LABEL_23:
      v10 = (v6 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, v5);
      }

      goto LABEL_6;
    }

    result = WebCore::TextIndicator::create(&v11, v12, v5);
    *a2 = v11;
    *(a2 + 8) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  if (v19 != 1)
  {
    return result;
  }

  v6 = v18;
  if ((v18 & 0x8000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_6:
  v7 = v17;
  v17 = 0;
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

  v8 = v16;
  v16 = 0;
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

  v9 = v15;
  v15 = 0;
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

  result = v13;
  if (v13)
  {
    v13 = 0;
    v14 = 0;
    return WTF::fastFree(result, v5);
  }

  return result;
}

void sub_19D728358(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17, int a18, uint64_t a19, _DWORD *a20, _DWORD *a21, _DWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a28 == 1)
  {
    if ((a23 & 0x8000000000000) != 0)
    {
      v29 = (a23 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a23 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v29);
        WTF::fastFree(v29, a2);
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
  }

  _Unwind_Resume(exception_object);
}

unsigned int *IPC::Decoder::decode<WebCore::TextIndicatorData>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::TextIndicatorData,void>::decode(a1, a2);
  if ((*(a2 + 136) & 1) == 0)
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

void IPC::ArgumentCoder<WebCore::CertificateInfo,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RetainPtr<__SecTrust *>,void>::decode(a1, &cf);
  if (v6 == 1)
  {
    if (*a1)
    {
      *a2 = cf;
      *(a2 + 8) = 1;
      return;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      return;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = cf;
  if (cf)
  {

    CFRelease(v4);
  }
}

void IPC::ArgumentCoder<WebCore::PasteboardCustomData::Entry,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  v4 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v4);
  IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>> const&>(a1, a2 + 16, v4);
}

void IPC::ArgumentCoder<WebCore::PasteboardCustomData,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v9);
  IPC::Decoder::decode<WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v7);
  if (*a1)
  {
    if (v10 & 1) != 0 && (v8)
    {
      WebCore::PasteboardCustomData::PasteboardCustomData();
      WebCore::PasteboardCustomData::PasteboardCustomData();
      a2[24] = 1;
      WebCore::PasteboardCustomData::~PasteboardCustomData(&v6);
      goto LABEL_5;
    }

    __break(1u);
  }

  *a2 = 0;
  a2[24] = 0;
LABEL_5:
  if (v8 == 1)
  {
    WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v4);
  }

  if (v10 == 1)
  {
    v5 = v9;
    v9 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }
}

void sub_19D7286D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  WebCore::PasteboardCustomData::~PasteboardCustomData(&a9);
  if (a14 == 1)
  {
    WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, v16);
  }

  if (*(v14 - 24) == 1)
  {
    v17 = *(v14 - 32);
    *(v14 - 32) = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v16);
      }
    }
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1@<X0>, char *a2@<X8>)
{
  IPC::VectorArgumentCoder<false,WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    v6 = *(a1 + 24);
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

void sub_19D7287AC(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(IPC::Encoder *a1, unint64_t a2)
{
  IPC::Encoder::addAttachment(a1, a2);
  v4 = *(a2 + 8);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::TextIndicatorData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 32));
  IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 48);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>,void>::encode<IPC::Encoder,WebCore::Image>(a1, (a2 + 72));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>,void>::encode<IPC::Encoder,WebCore::Image>(a1, (a2 + 80));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>,void>::encode<IPC::Encoder,WebCore::Image>(a1, (a2 + 88));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 96));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 104));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 106));

  return IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 112);
}

unsigned int *IPC::ArgumentCoder<WebCore::TextIndicatorData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = *MEMORY[0x1E69E9840];
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v75 = *a1;
    v76 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v77 = *(a1 + 3);
    if (v77 && v76 != 0)
    {
      (*(*v77 + 16))(v77, v75);
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v9 = result;
  v11 = v10;
  if ((v10 & 1) == 0)
  {
    v63 = *a1;
    v64 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v64)
      {
        result = (*(*result + 16))(result, v63);
      }
    }
  }

  v12 = *a1;
  if (*a1)
  {
    if ((v6 & 1) == 0 || (v11 & 1) == 0)
    {
      goto LABEL_64;
    }

    v13 = v4 & 0xFFFFFFFFFFFFFF00;
    v14 = v4;
  }

  else
  {
    v57 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v58 = *(a1 + 3);
    if (v58 && v57)
    {
      (*(*v58 + 16))(v58, 0);
    }

    v14 = 0;
    v13 = 0;
  }

  v15 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v17 = v16;
  if ((v16 & 1) == 0)
  {
    v79 = *a1;
    v80 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v81 = *(a1 + 3);
    if (v81)
    {
      if (v80)
      {
        (*(*v81 + 16))(v81, v79);
      }
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v18 = result;
  v20 = v19;
  if ((v19 & 1) == 0)
  {
    v65 = *a1;
    v66 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v66)
      {
        v67 = v18;
        result = (*(*result + 16))(result, v65);
        v18 = v67;
      }
    }
  }

  v91 = v18;
  v96 = *a1;
  if (*a1)
  {
    if ((v17 & 1) == 0 || (v20 & 1) == 0)
    {
      goto LABEL_64;
    }

    v21 = v15 & 0xFFFFFFFFFFFFFF00;
    v15 = v15;
  }

  else
  {
    v59 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v60 = *(a1 + 3);
    if (v60 && v59)
    {
      (*(*v60 + 16))(v60, 0);
    }

    v15 = 0;
    v21 = 0;
  }

  v22 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v24 = v23;
  if ((v23 & 1) == 0)
  {
    v82 = *a1;
    v83 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v84 = *(a1 + 3);
    if (v84)
    {
      if (v83)
      {
        (*(*v84 + 16))(v84, v82);
      }
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v90 = result;
  if ((v25 & 1) == 0)
  {
    v69 = *a1;
    v68 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v68)
      {
        v95 = v21;
        v70 = v12;
        v71 = v25;
        result = (*(*result + 16))(result, v69);
        v25 = v71;
        v12 = v70;
        v21 = v95;
      }
    }
  }

  v94 = *a1;
  if (*a1)
  {
    if ((v24 & 1) == 0 || (v25 & 1) == 0)
    {
      goto LABEL_64;
    }

    v26 = v22 & 0xFFFFFFFFFFFFFF00;
    v22 = v22;
  }

  else
  {
    v61 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v62 = *(a1 + 3);
    if (v62 && v61)
    {
      (*(*v62 + 16))(v62, 0);
    }

    v26 = 0;
    v22 = 0;
  }

  IPC::Decoder::decode<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v108);
  v27 = *(a1 + 1);
  v28 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v29 = v28 - *a1;
  v30 = v27 >= v29;
  v31 = v27 - v29;
  v93 = v12;
  if (v30 && v31 > 3)
  {
    *(a1 + 2) = v28 + 1;
    if (v28)
    {
      v92 = *v28 | 0x100000000;
      goto LABEL_24;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v85 = *(a1 + 3);
    if (v85)
    {
      if (v27)
      {
        (*(*v85 + 16))(v85);
        v27 = *(a1 + 1);
      }
    }

    else
    {
      v27 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v86 = *(a1 + 3);
  if (v86 && v27)
  {
    (*(*v86 + 16))(v86);
  }

  v92 = 0;
LABEL_24:
  IPC::Decoder::decode<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>>(a1, &v106);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>>(a1, &v104);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>>(a1, &v102);
  IPC::ArgumentCoder<WebCore::Color,void>::decode(a1, &v100);
  v32 = *(a1 + 1);
  v88 = v14;
  v89 = v13;
  v87 = v9;
  if ((v101 & 1) == 0)
  {
    v52 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v53 = *(a1 + 3);
    if (!v53 || !v32)
    {
      v32 = 0;
      v33 = *a1;
LABEL_74:
      *a1 = 0;
      *(a1 + 1) = 0;
      v54 = *(a1 + 3);
      if (v54)
      {
        if (v32)
        {
          (*(*v54 + 16))(v54, v33);
          v32 = *(a1 + 1);
        }
      }

      else
      {
        v32 = 0;
      }

      goto LABEL_76;
    }

    (*(*v53 + 16))(v53, v52);
    v32 = *(a1 + 1);
  }

  v33 = *a1;
  v34 = *(a1 + 2);
  if (v32 <= &v34[-*a1])
  {
    goto LABEL_74;
  }

  *(a1 + 2) = v34 + 1;
  if (v34)
  {
    v35 = *v34;
    if (v35 < 4)
    {
      v36 = v35 | 0x100;
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_76:
  *a1 = 0;
  *(a1 + 1) = 0;
  v55 = *(a1 + 3);
  if (v55)
  {
    if (v32)
    {
      (*(*v55 + 16))(v55);
      v33 = *a1;
      v32 = *(a1 + 1);
      goto LABEL_79;
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = 0;
LABEL_79:
  *a1 = 0;
  *(a1 + 1) = 0;
  v56 = *(a1 + 3);
  if (v56)
  {
    if (v32)
    {
      (*(*v56 + 16))(v56, v33);
      v36 = 0;
      v33 = *a1;
      v32 = *(a1 + 1);
      goto LABEL_29;
    }

    v33 = 0;
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  v36 = 0;
LABEL_29:
  v37 = ((*(a1 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  if (v32 < v37 - v33 || v32 - (v37 - v33) <= 1)
  {
    v38 = v21;
    *a1 = 0;
    *(a1 + 1) = 0;
    v72 = *(a1 + 3);
    if (v72)
    {
      if (v32)
      {
        (*(*v72 + 16))(v72);
        v33 = *a1;
        v32 = *(a1 + 1);
LABEL_102:
        *a1 = 0;
        *(a1 + 1) = 0;
        v73 = *(a1 + 3);
        if (v73)
        {
          if (v32)
          {
            (*(*v73 + 16))(v73, v33);
            v33 = *a1;
            v32 = *(a1 + 1);
            goto LABEL_105;
          }
        }

        else
        {
          v32 = 0;
        }

        v33 = 0;
        goto LABEL_105;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = 0;
    goto LABEL_102;
  }

  *(a1 + 2) = v37 + 1;
  v38 = v21;
  if (!v37)
  {
    goto LABEL_102;
  }

  v39 = *v37;
  if ((v39 & 0x80000000) == 0)
  {
    v40 = v22;
    v41 = v26;
    v42 = v15;
    v43 = 0;
    v44 = v39 & 0x7F00;
    v45 = v39;
    goto LABEL_34;
  }

LABEL_105:
  v40 = v22;
  v41 = v26;
  v42 = v15;
  *a1 = 0;
  *(a1 + 1) = 0;
  v74 = *(a1 + 3);
  if (v74 && v32)
  {
    (*(*v74 + 16))(v74, v33);
  }

  v44 = 0;
  v45 = 0;
  v43 = 1;
LABEL_34:
  result = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(&v97, a1);
  if (*a1)
  {
    if (v93)
    {
      if (v96)
      {
        if (v94)
        {
          if (v110)
          {
            v47 = v108;
            v8.n128_u64[0] = v109;
            v108 = 0;
            v109 = 0;
            result = v92;
            if (v92 & 0x100000000) != 0 && (v107)
            {
              v48 = v106;
              v106 = 0;
              if (v105)
              {
                v49 = v104;
                v104 = 0;
                if (v103)
                {
                  v50 = v102;
                  v102 = 0;
                  if (v101)
                  {
                    v51 = v100;
                    v100 = 0;
                    if (v36 > 0xFF && !v43 && (v99 & 1) != 0)
                    {
                      *&v111[4] = v97;
                      v111[20] = v98;
                      *a2 = v89 | v88;
                      *(a2 + 8) = v87;
                      *(a2 + 16) = v38 | v42;
                      *(a2 + 24) = v91;
                      *(a2 + 32) = v40 | v41;
                      *(a2 + 40) = v90;
                      *(a2 + 48) = v47;
                      *(a2 + 56) = v8.n128_u64[0];
                      *(a2 + 64) = v92;
                      *(a2 + 72) = v48;
                      *(a2 + 80) = v49;
                      *(a2 + 88) = v50;
                      *(a2 + 96) = v51;
                      *(a2 + 104) = v36;
                      *(a2 + 106) = v45 | v44;
                      v8 = *v111;
                      *(a2 + 108) = *v111;
                      *(a2 + 121) = *&v111[13];
                      *(a2 + 136) = 1;
                      goto LABEL_48;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *a2 = 0;
  *(a2 + 136) = 0;
  if ((v101 & 1) != 0 && (v100 & 0x8000000000000) != 0)
  {
    result = (v100 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v100 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v46);
    }
  }

LABEL_48:
  if (v103 == 1)
  {
    result = v102;
    v102 = 0;
    if (result)
    {
      if (result[4] != 1)
      {
        --result[4];
        goto LABEL_52;
      }

LABEL_65:
      result = (*(*result + 8))(result, v8);
    }
  }

LABEL_52:
  if (v105 == 1)
  {
    result = v104;
    v104 = 0;
    if (result)
    {
      if (result[4] == 1)
      {
        result = (*(*result + 8))(result);
      }

      else
      {
        --result[4];
      }
    }
  }

  if (v107 == 1)
  {
    result = v106;
    v106 = 0;
    if (result)
    {
      if (result[4] == 1)
      {
        result = (*(*result + 8))(result);
      }

      else
      {
        --result[4];
      }
    }
  }

  if (v110 == 1)
  {
    result = v108;
    if (v108)
    {
      v108 = 0;
      LODWORD(v109) = 0;
      return WTF::fastFree(result, v46);
    }
  }

  return result;
}

void sub_19D729264(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30)
{
  if (*(v30 - 128) == 1)
  {
    v32 = *(v30 - 144);
    if (v32)
    {
      *(v30 - 144) = 0;
      *(v30 - 136) = 0;
      WTF::fastFree(v32, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::MediaConstraints,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<WebCore::MediaTrackConstraintSetMap,void>::encode(a1, a2);
  IPC::VectorArgumentCoder<false,WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 944));

  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 960);
}

void IPC::ArgumentCoder<WebCore::MediaConstraints,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<WebCore::MediaTrackConstraintSetMap>(v41, a1);
  v4 = v2[1];
  v5 = ((v2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v2;
  v7 = v5 - *v2;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 7)
  {
    v2[2] = (v5 + 1);
    if (v5)
    {
      v11 = *v5;
      v43 = 0;
      v44 = 0;
      if (v11 >= 0x456)
      {
        goto LABEL_37;
      }

      if (v11)
      {
        v12 = WTF::fastMalloc((944 * v11));
        LODWORD(v44) = 944 * v11 / 0x3B0u;
        v43 = v12;
        do
        {
          IPC::Decoder::decode<WebCore::MediaTrackConstraintSetMap>(v35, v2);
          v13 = v36;
          if (v36)
          {
            if (HIDWORD(v44) == v44)
            {
              WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MediaTrackConstraintSetMap>(&v43, v35);
            }

            else
            {
              WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(v43 + 944 * HIDWORD(v44), v35);
              ++HIDWORD(v44);
            }
          }

          if (v36 == 1)
          {
            WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v35, v6);
          }

          if ((v13 & 1) == 0)
          {
            goto LABEL_46;
          }

          --v11;
        }

        while (v11);
      }

LABEL_18:
      v38 = v43;
      v14 = v44;
      v43 = 0;
      v44 = 0;
      v39 = v14;
      v40 = 1;
      WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v6);
      goto LABEL_19;
    }
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
    v30 = v2[3];
    if (v30)
    {
      if (v4)
      {
        (*(*v30 + 16))(v30);
        v4 = v2[1];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *v2 = 0;
  v2[1] = 0;
  v31 = v2[3];
  if (v31 && v4)
  {
    (*(*v31 + 16))(v31);
  }

  LOBYTE(v38) = 0;
  v40 = 0;
  while (1)
  {
    v27 = *v2;
    v28 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    v29 = v2[3];
    if (v29 && v28)
    {
      (*(*v29 + 16))(v29, v27);
    }

LABEL_19:
    v15 = v2[1];
    v16 = v2[2];
    v17 = *v2;
    if (v15 <= &v16[-*v2])
    {
      *v2 = 0;
      v2[1] = 0;
      v32 = v2[3];
      if (v32)
      {
        if (v15)
        {
          (*(*v32 + 16))(v32);
          v15 = v2[1];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v2[2] = (v16 + 1);
      if (v16)
      {
        v18 = *v16;
        if (v18 < 2)
        {
          v11 = 1;
          goto LABEL_23;
        }

        goto LABEL_59;
      }
    }

    *v2 = 0;
    v2[1] = 0;
    v33 = v2[3];
    if (!v33)
    {
      v15 = 0;
LABEL_58:
      v17 = 0;
      v18 = 0;
      goto LABEL_59;
    }

    if (!v15)
    {
      goto LABEL_58;
    }

    (*(*v33 + 16))(v33);
    v18 = 0;
    v17 = *v2;
    v15 = v2[1];
LABEL_59:
    *v2 = 0;
    v2[1] = 0;
    v34 = v2[3];
    if (!v34 || !v15)
    {
      break;
    }

    (*(*v34 + 16))(v34, v17);
    v11 = 0;
    v17 = *v2;
LABEL_23:
    v19 = v18 ? v11 : 0;
    if (!v17)
    {
      break;
    }

    if (v42)
    {
      v2 = v35;
      WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(v35, v41);
      if (v40)
      {
        v20 = v38;
        v38 = 0;
        *&v36 = v20;
        v21 = v39;
        v39 = 0;
        *(&v36 + 1) = v21;
        if (v11)
        {
          v37 = v19;
          WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(a2, v35);
          *&v22 = 0;
          v23 = v36;
          v36 = v22;
          *(a2 + 944) = v23;
          *(a2 + 960) = v37;
          *(a2 + 968) = 1;
          WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v24);
          WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v35, v25);
          goto LABEL_31;
        }
      }
    }

    __break(1u);
    while (1)
    {
LABEL_37:
      IPC::Decoder::decode<WebCore::MediaTrackConstraintSetMap>(v35, v2);
      v26 = v36;
      if (v36)
      {
        if (HIDWORD(v44) == v44)
        {
          WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MediaTrackConstraintSetMap>(&v43, v35);
        }

        else
        {
          WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(v43 + 944 * HIDWORD(v44), v35);
          ++HIDWORD(v44);
        }
      }

      if (v36 == 1)
      {
        WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v35, v6);
      }

      if ((v26 & 1) == 0)
      {
        break;
      }

      if (!--v11)
      {
        WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v43, HIDWORD(v44));
        goto LABEL_18;
      }
    }

LABEL_46:
    LOBYTE(v38) = 0;
    v40 = 0;
    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v6);
  }

  *a2 = 0;
  *(a2 + 968) = 0;
LABEL_31:
  if (v40 == 1)
  {
    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v17);
  }

  if (v42 == 1)
  {
    WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v41, v17);
  }
}

void sub_19D7298A0(_Unwind_Exception *a1, void *a2)
{
  if (LOBYTE(STACK[0x3E0]) == 1)
  {
    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x3D0], a2);
  }

  if (LOBYTE(STACK[0x798]) == 1)
  {
    WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(&STACK[0x3E8], a2);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::MediaTrackConstraintSetMap>(_BYTE *a1, uint64_t *a2)
{
  IPC::Decoder::decode<std::optional<WebCore::IntConstraint>>(v161, a2);
  IPC::Decoder::decode<std::optional<WebCore::IntConstraint>>(v157, a2);
  IPC::Decoder::decode<std::optional<WebCore::IntConstraint>>(v153, a2);
  IPC::Decoder::decode<std::optional<WebCore::IntConstraint>>(v149, a2);
  IPC::Decoder::decode<std::optional<WebCore::DoubleConstraint>>(v143, a2);
  IPC::Decoder::decode<std::optional<WebCore::DoubleConstraint>>(v137, a2);
  IPC::Decoder::decode<std::optional<WebCore::DoubleConstraint>>(v131, a2);
  IPC::Decoder::decode<std::optional<WebCore::BooleanConstraint>>(v127, a2);
  IPC::Decoder::decode<std::optional<WebCore::BooleanConstraint>>(v123, a2);
  IPC::Decoder::decode<std::optional<WebCore::BooleanConstraint>>(v119, a2);
  IPC::Decoder::decode<std::optional<WebCore::StringConstraint>>(v115, a2);
  IPC::Decoder::decode<std::optional<WebCore::StringConstraint>>(v111, a2);
  IPC::Decoder::decode<std::optional<WebCore::StringConstraint>>(v107, a2);
  IPC::Decoder::decode<std::optional<WebCore::StringConstraint>>(v103, a2);
  IPC::Decoder::decode<std::optional<WebCore::DoubleConstraint>>(v96, a2);
  IPC::Decoder::decode<std::optional<WebCore::BooleanConstraint>>(v91, a2);
  IPC::Decoder::decode<std::optional<WebCore::BooleanConstraint>>(v86, a2);
  IPC::Decoder::decode<std::optional<WebCore::BooleanConstraint>>(v81, a2);
  if (!*a2)
  {
    goto LABEL_80;
  }

  LOBYTE(v13) = 0;
  v16 = 0;
  LOBYTE(v17) = 0;
  v20 = 0;
  LOBYTE(v21) = 0;
  v24 = 0;
  LOBYTE(v25) = 0;
  v28 = 0;
  LOBYTE(v29) = 0;
  v34 = 0;
  LOBYTE(v35) = 0;
  v40 = 0;
  LOBYTE(v41) = 0;
  v46 = 0;
  LOBYTE(v47) = 0;
  v50 = 0;
  LOBYTE(v51) = 0;
  v54 = 0;
  LOBYTE(v55) = 0;
  v58 = 0;
  v59[0] = 0;
  v59[48] = 0;
  v60[0] = 0;
  v60[48] = 0;
  v61[0] = 0;
  v61[48] = 0;
  v62[0] = 0;
  v62[48] = 0;
  LOBYTE(v63) = 0;
  v68 = 0;
  LOBYTE(v69) = 0;
  v72 = 0;
  LOBYTE(v73) = 0;
  v76 = 0;
  LOBYTE(v77) = 0;
  v80 = 0;
  if ((v164 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v163)
  {
    v14 = v161[8];
    v15[0] = v162[0];
    *(v15 + 13) = *(v162 + 13);
    v13 = &unk_1F10E7EA0;
    v16 = 1;
  }

  if ((v160 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v159)
  {
    v18 = v157[8];
    v19[0] = v158[0];
    *(v19 + 13) = *(v158 + 13);
    v17 = &unk_1F10E7EA0;
    v20 = 1;
  }

  if ((v156 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v155)
  {
    v22 = v153[8];
    v23[0] = v154[0];
    *(v23 + 13) = *(v154 + 13);
    v21 = &unk_1F10E7EA0;
    v24 = 1;
  }

  if ((v152 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v151)
  {
    v26 = v149[8];
    v27[0] = v150[0];
    *(v27 + 13) = *(v150 + 13);
    v25 = &unk_1F10E7EA0;
    v28 = 1;
  }

  if ((v148 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v147)
  {
    v30 = v143[8];
    *(v33 + 9) = *(v146 + 9);
    v31 = v144;
    v32 = v145;
    v33[0] = v146[0];
    v29 = &unk_1F10E7F18;
    v34 = 1;
  }

  if ((v142 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v141)
  {
    v36 = v137[8];
    v37 = v138;
    v38 = v139;
    v39[0] = v140[0];
    *(v39 + 9) = *(v140 + 9);
    v35 = &unk_1F10E7F18;
    v40 = 1;
  }

  if ((v136 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v135)
  {
    v42 = v131[8];
    *(v45 + 9) = *(v134 + 9);
    v43 = v132;
    v44 = v133;
    v45[0] = v134[0];
    v41 = &unk_1F10E7F18;
    v46 = 1;
  }

  if ((v130 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v129)
  {
    v48 = v127[8];
    v47 = &unk_1F10E7F68;
    v49 = v128;
    v50 = 1;
  }

  if ((v126 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v125)
  {
    v52 = v123[8];
    v51 = &unk_1F10E7F68;
    v53 = v124;
    v54 = 1;
  }

  if ((v122 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v121)
  {
    v56 = v119[8];
    v55 = &unk_1F10E7F68;
    v57 = v120;
    v58 = 1;
  }

  if ((v118 & 1) == 0)
  {
    goto LABEL_79;
  }

  std::__optional_storage_base<WebCore::StringConstraint,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::StringConstraint,false>>(v59, v115);
  if ((v114 & 1) == 0)
  {
    goto LABEL_79;
  }

  std::__optional_storage_base<WebCore::StringConstraint,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::StringConstraint,false>>(v60, v111);
  if ((v110 & 1) == 0)
  {
    goto LABEL_79;
  }

  std::__optional_storage_base<WebCore::StringConstraint,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::StringConstraint,false>>(v61, v107);
  if ((v106 & 1) == 0)
  {
    goto LABEL_79;
  }

  std::__optional_storage_base<WebCore::StringConstraint,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::StringConstraint,false>>(v62, v103);
  if ((v102 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v68 == v101)
  {
    if (v68)
    {
      v64 = v97;
      *(v67 + 9) = *(v100 + 9);
      v65 = v98;
      v66 = v99;
      v67[0] = v100[0];
    }
  }

  else if (v68)
  {
    v68 = 0;
  }

  else
  {
    v64 = v97;
    *(v67 + 9) = *(v100 + 9);
    v65 = v98;
    v66 = v99;
    v67[0] = v100[0];
    v63 = &unk_1F10E7F18;
    v68 = 1;
  }

  if ((v95 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v72 == v94)
  {
    if (v72)
    {
      v70 = v92;
      v71 = v93;
    }
  }

  else if (v72)
  {
    v72 = 0;
  }

  else
  {
    v70 = v92;
    v69 = &unk_1F10E7F68;
    v71 = v93;
    v72 = 1;
  }

  if ((v90 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v76 == v89)
  {
    if (v76)
    {
      v74 = v87;
      v75 = v88;
    }
  }

  else if (v76)
  {
    v76 = 0;
  }

  else
  {
    v74 = v87;
    v73 = &unk_1F10E7F68;
    v75 = v88;
    v76 = 1;
  }

  if ((v85 & 1) == 0)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    *a1 = 0;
    a1[944] = 0;
    goto LABEL_65;
  }

  if (v80 == v84)
  {
    if (v80)
    {
      v78 = v82;
      v79 = v83;
    }
  }

  else if (v80)
  {
    v80 = 0;
  }

  else
  {
    v78 = v82;
    v77 = &unk_1F10E7F68;
    v79 = v83;
    v80 = 1;
  }

  WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(a1, &v13);
  a1[944] = 1;
  WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(&v13, v5);
LABEL_65:
  if (v106 == 1 && v105[16] == 1)
  {
    v103[0] = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v105, v4);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v104, v6);
  }

  if (v110 == 1 && v109[16] == 1)
  {
    v107[0] = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v109, v4);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v108, v7);
  }

  if (v114 == 1 && v113[16] == 1)
  {
    v111[0] = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v113, v4);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v112, v8);
  }

  if (v118 == 1 && v117[16] == 1)
  {
    v115[0] = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v117, v4);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116, v9);
  }

  if ((a1[944] & 1) == 0)
  {
    v10 = *a2;
    v11 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v12 = a2[3];
    if (v12)
    {
      if (v11)
      {
        (*(*v12 + 16))(v12, v10);
      }
    }
  }
}

void sub_19D72A234(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 944) == 1)
  {
    WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v2, a2);
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::PromisedAttachmentInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v12);
  result = IPC::Decoder::decode<WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v10, a1);
  if (!*a1)
  {
LABEL_12:
    *a2 = 0;
    *(a2 + 24) = 0;
    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v13 & 1) == 0 || (v7 = v12, v12 = 0, (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_12;
  }

  *&v6 = 0;
  v8 = v10;
  v10 = v6;
  v9[0] = 0;
  *a2 = v7;
  *(a2 + 8) = v8;
  v9[1] = 0;
  *(a2 + 16) = *(&v8 + 1);
  *(a2 + 24) = 1;
  WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v5);
LABEL_5:
  result = WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v5);
LABEL_6:
  if (v13 == 1)
  {
    result = v12;
    v12 = 0;
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

void sub_19D72A4B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 - 24))
  {
    v4 = *(v2 - 32);
    *(v2 - 32) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::RecentSearch,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v6);
  result = IPC::Decoder::decode<WTF::Seconds>(a1);
  if (*a1)
  {
    if (v7 & 1) != 0 && (v5)
    {
      *a2 = v6;
      *(a2 + 8) = result;
      *(a2 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v7)
  {
    result = v6;
    v6 = 0;
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

void sub_19D72A584(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if ((a10 & 1) != 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebCore::Region>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a2, &v34);
  if (v36[0] & 1) != 0 || (IPC::Decoder::markInvalid(a2), (v36[0]))
  {
    v3 = v34;
    v8 = v35;
    v9 = v47;
    v44 = v47;
    v45 = 32;
    v46 = v35;
    v2 = (4 * v35);
    if (v35 >= 0x21)
    {
      if (v35 >> 30)
      {
        __break(0xC471u);
        JUMPOUT(0x19D72AA60);
      }

      v9 = WTF::fastMalloc((4 * v35));
      v45 = v8;
      v44 = v9;
    }

    else if (!v35)
    {
LABEL_5:
      v48 = 1;
      goto LABEL_6;
    }

    do
    {
      v10 = *v3;
      v3 = (v3 + 4);
      *v9 = v10;
      v9 = (v9 + 4);
      v2 = (v2 - 4);
    }

    while (v2);
    goto LABEL_5;
  }

  LOBYTE(v44) = 0;
  v48 = 0;
  IPC::Decoder::markInvalid(a2);
LABEL_6:
  v11 = *(a2 + 1);
  v12 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12 - *a2;
  v14 = v11 >= v13;
  v15 = v11 - v13;
  if (v14 && v15 > 7)
  {
    *(a2 + 2) = v12 + 1;
    if (!v12)
    {
      goto LABEL_76;
    }

    v3 = &v49;
    v4 = *v12;
    v2 = v36;
    v34 = v36;
    v5 = 16;
    v35 = 16;
    if (v4 >= 0x10000)
    {
      while (1)
      {
        IPC::Decoder::decode<WebCore::Region::Span>(&v49, a2);
        if ((v50 & 1) == 0)
        {
          break;
        }

        if (HIDWORD(v35) == v35)
        {
          WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Region::Span>(&v34, &v49);
        }

        else
        {
          *(v34 + HIDWORD(v35)) = v49;
          ++HIDWORD(v35);
        }

        if (!--v4)
        {
          WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v34, HIDWORD(v35));
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (v4 >= 0x11)
      {
LABEL_56:
        v27 = WTF::fastMalloc((16 * v4));
        LODWORD(v35) = v4;
        v34 = v27;
        goto LABEL_15;
      }

      if (!v4)
      {
LABEL_19:
        v3 = v42;
        v40 = v42;
        v41 = v5;
        WTF::VectorBuffer<WebCore::Region::Span,16ul,WTF::FastMalloc>::adopt(&v40, &v34);
        v18 = 1;
        v43 = 1;
        goto LABEL_20;
      }

LABEL_15:
      while (1)
      {
        IPC::ArgumentCoder<WebCore::Region::Span,void>::decode(&v49, a2);
        if ((v50 & 1) == 0)
        {
          IPC::Decoder::markInvalid(a2);
          if ((v50 & 1) == 0)
          {
            break;
          }
        }

        if (HIDWORD(v35) == v35)
        {
          WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Region::Span>(&v34, &v49);
        }

        else
        {
          *(v34 + HIDWORD(v35)) = *v3;
          ++HIDWORD(v35);
        }

        if (!--v4)
        {
          goto LABEL_19;
        }
      }
    }

    v18 = 0;
    LOBYTE(v40) = 0;
    v43 = 0;
LABEL_20:
    v19 = v34;
    if (v2 != v34 && v34 != 0)
    {
      v34 = 0;
      LODWORD(v35) = 0;
      WTF::fastFree(v19, v17);
      v18 = v43;
    }

    if (v18)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

  IPC::Decoder::markInvalid(a2);
LABEL_76:
  IPC::Decoder::markInvalid(a2);
  LOBYTE(v40) = 0;
  v43 = 0;
LABEL_77:
  IPC::Decoder::markInvalid(a2);
LABEL_26:
  if (!*a2)
  {
    goto LABEL_69;
  }

  if ((v48 & 1) == 0 || (v43 & 1) == 0)
  {
    goto LABEL_55;
  }

  if ((WebCore::Region::Shape::isValidShape() & 1) == 0 || !*a2)
  {
LABEL_69:
    LOBYTE(v28) = 0;
    v33 = 0;
    goto LABEL_37;
  }

  if ((v48 & 1) == 0 || (v43 & 1) == 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  WebCore::Region::Shape::Shape();
  v2 = v29;
  v28 = v29;
  v21 = v34;
  v3 = v36;
  if (v34 == v36)
  {
    memcpy(v29, v36, 4 * HIDWORD(v35));
  }

  else
  {
    v34 = v36;
    v28 = v21;
    LODWORD(v35) = 32;
  }

  HIDWORD(v35) = 0;
  v4 = &v34;
  v30 = v32;
  v31 = 16;
  WTF::VectorBuffer<WebCore::Region::Span,16ul,WTF::FastMalloc>::adopt(&v30, &v37);
  v33 = 1;
  v22 = v37;
  if (&v39 != v37 && v37)
  {
    v37 = 0;
    v38 = 0;
    WTF::fastFree(v22, v17);
  }

  v23 = v34;
  if (v36 != v34 && v34)
  {
    v34 = 0;
    LODWORD(v35) = 0;
    WTF::fastFree(v23, v17);
  }

LABEL_37:
  if (v43 == 1)
  {
    v24 = v40;
    if (v42 != v40)
    {
      if (v40)
      {
        v40 = 0;
        LODWORD(v41) = 0;
        WTF::fastFree(v24, v17);
      }
    }
  }

  if (v48 == 1)
  {
    v25 = v44;
    if (v47 != v44)
    {
      if (v44)
      {
        v44 = 0;
        v45 = 0;
        WTF::fastFree(v25, v17);
      }
    }
  }

  if ((v33 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }

  if (*a2)
  {
    if (v33)
    {
      v34 = 0;
      v35 = 0;
      v36[0] = 0;
      WebCore::Region::setShape();
      WebCore::Region::Region();
      a1[24] = 1;
      WebCore::Region::~Region(&v34);
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  *a1 = 0;
  a1[24] = 0;
LABEL_46:
  if (v33 == 1)
  {
    v26 = v30;
    if (v32 != v30 && v30)
    {
      v30 = 0;
      LODWORD(v31) = 0;
      WTF::fastFree(v26, v17);
    }

    if (v29 != v28 && v28)
    {
      WTF::fastFree(v28, v17);
    }
  }

  if ((a1[24] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t IPC::ArgumentCoder<WebCore::TextManipulationItem,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 8));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 9));
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 16));

  return IPC::VectorArgumentCoder<false,WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 24);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::TextManipulationItem,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a1);
  v6 = v5;
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *a1;
  v60 = v4;
  v61 = v6;
  if (v7 <= &v8[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v49 = *(a1 + 3);
    if (v49)
    {
      if (v7)
      {
        (*(*v49 + 16))(v49);
        v7 = *(a1 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_94:
    *a1 = 0;
    *(a1 + 1) = 0;
    v50 = *(a1 + 3);
    if (v50)
    {
      if (v7)
      {
        (*(*v50 + 16))(v50);
        v11 = 0;
        v9 = *a1;
        v7 = *(a1 + 1);
        goto LABEL_97;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
    v11 = 0;
    goto LABEL_97;
  }

  v10 = v8 + 1;
  *(a1 + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_94;
  }

  v11 = *v8;
  if (v11 < 2)
  {
    v12 = 1;
    goto LABEL_5;
  }

LABEL_97:
  *a1 = 0;
  *(a1 + 1) = 0;
  v51 = *(a1 + 3);
  if (!v51 || !v7)
  {
    v59 = 0;
    v12 = 0;
    v52 = 0;
    v9 = 0;
LABEL_99:
    *a1 = 0;
    *(a1 + 1) = 0;
    v53 = *(a1 + 3);
    if (v53 && v52)
    {
      (*(*v53 + 16))(v53, v9, v52);
      v14 = 0;
      v9 = *a1;
      v7 = *(a1 + 1);
    }

    else
    {
      v7 = 0;
      v9 = 0;
      v14 = 0;
    }

    goto LABEL_101;
  }

  (*(*v51 + 16))(v51, v9);
  v12 = 0;
  v9 = *a1;
  v7 = *(a1 + 1);
  v10 = *(a1 + 2);
LABEL_5:
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v59 = v13;
  if (v7 <= v10 - v9)
  {
    v52 = 0;
    v55 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v55 && v7)
    {
      (*(*v55 + 16))(v55);
      v9 = *a1;
      v52 = *(a1 + 1);
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_99;
  }

  *(a1 + 2) = v10 + 1;
  if (!v10)
  {
    v52 = v7;
    goto LABEL_99;
  }

  v14 = *v10;
  if (v14 < 2)
  {
    v15 = 1;
    goto LABEL_12;
  }

LABEL_101:
  *a1 = 0;
  *(a1 + 1) = 0;
  v54 = *(a1 + 3);
  if (v54 && v7)
  {
    (*(*v54 + 16))(v54, v9);
  }

  v15 = 0;
LABEL_12:
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v58 = v16;
  v56 = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a1);
  v57 = v17;
  v19 = *(a1 + 1);
  v20 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = *a1;
  v22 = v20 - *a1;
  v23 = v19 >= v22;
  v24 = v19 - v22;
  if (!v23 || v24 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v47 = *(a1 + 3);
    if (v47)
    {
      if (v19)
      {
        (*(*v47 + 16))(v47);
        v19 = *(a1 + 1);
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_90:
    *a1 = 0;
    *(a1 + 1) = 0;
    v48 = *(a1 + 3);
    if (v48 && v19)
    {
      (*(*v48 + 16))(v48);
    }

    LOBYTE(v62) = 0;
    v63 = 0;
LABEL_44:
    v33 = *a1;
    v34 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v34)
    {
      result = (*(*result + 16))(result, v33);
    }

    goto LABEL_77;
  }

  *(a1 + 2) = v20 + 1;
  if (!v20)
  {
    goto LABEL_90;
  }

  v25 = *v20;
  v70 = 0;
  v71 = 0;
  if (v25 >= 0x2AAA)
  {
    do
    {
      result = IPC::Decoder::decode<WebCore::TextManipulationToken>(v64, a1);
      v36 = v69;
      if (v69)
      {
        if (HIDWORD(v71) == v71)
        {
          result = WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationToken>(&v70, v64);
        }

        else
        {
          v37 = v70 + 96 * HIDWORD(v71);
          *v37 = v64[0];
          v38 = v64[1];
          v64[1] = 0;
          *(v37 + 8) = v38;
          result = std::__optional_move_base<WebCore::TextManipulationTokenInfo,false>::__optional_move_base[abi:sn200100](v37 + 16, &v65);
          *(v37 + 88) = v68;
          ++HIDWORD(v71);
        }
      }

      if (v69 == 1)
      {
        if (v67 == 1)
        {
          v39 = v66[1];
          v66[1] = 0;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v21);
          }

          v40 = v66[0];
          v66[0] = 0;
          if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v21);
          }

          v41 = v65;
          v65 = 0;
          if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v41, v21);
          }
        }

        result = v64[1];
        v64[1] = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v21);
        }
      }

      if ((v36 & 1) == 0)
      {
LABEL_43:
        LOBYTE(v62) = 0;
        v63 = 0;
        WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v21);
        goto LABEL_44;
      }

      --v25;
    }

    while (v25);
    v42 = HIDWORD(v71);
    if (v71 > HIDWORD(v71))
    {
      v43 = v70;
      if (HIDWORD(v71))
      {
        if (HIDWORD(v71) >= 0x2AAAAAB)
        {
          __break(0xC471u);
          goto LABEL_123;
        }

        v44 = WTF::fastMalloc((96 * HIDWORD(v71)));
        LODWORD(v71) = 96 * v42 / 0x60;
        v70 = v44;
        if (v44 != v43)
        {
          WTF::VectorMover<false,WebCore::TextManipulationToken>::move(v43, (v43 + 96 * v42), v44);
        }
      }

      if (v43)
      {
        if (v70 == v43)
        {
          v70 = 0;
          LODWORD(v71) = 0;
        }

        WTF::fastFree(v43, v21);
      }
    }
  }

  else if (v25)
  {
    LODWORD(v71) = 96 * v25 / 0x60u;
    v70 = WTF::fastMalloc((96 * v25));
    do
    {
      IPC::Decoder::decode<WebCore::TextManipulationToken>(v64, a1);
      v26 = v69;
      if (v69)
      {
        if (HIDWORD(v71) == v71)
        {
          WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationToken>(&v70, v64);
        }

        else
        {
          v27 = v70 + 96 * HIDWORD(v71);
          *v27 = v64[0];
          v28 = v64[1];
          v64[1] = 0;
          *(v27 + 8) = v28;
          std::__optional_move_base<WebCore::TextManipulationTokenInfo,false>::__optional_move_base[abi:sn200100](v27 + 16, &v65);
          *(v27 + 88) = v68;
          ++HIDWORD(v71);
        }
      }

      if (v69 != 1)
      {
        goto LABEL_39;
      }

      if (v67 == 1)
      {
        v29 = v66[1];
        v66[1] = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v21);
        }

        v30 = v66[0];
        v66[0] = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v21);
        }

        v31 = v65;
        v65 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v21);
        }
      }

      v32 = v64[1];
      v64[1] = 0;
      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v21);
        if ((v26 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
LABEL_39:
        if ((v26 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      --v25;
    }

    while (v25);
  }

  *&v62 = v70;
  v45 = v71;
  v70 = 0;
  v71 = 0;
  *(&v62 + 1) = v45;
  v63 = 1;
  result = WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v21);
LABEL_77:
  if (*a1)
  {
    if (v61)
    {
      v64[0] = v60;
      if (v12)
      {
        LOBYTE(v64[1]) = v59;
        if (v15)
        {
          BYTE1(v64[1]) = v58;
          if (v57)
          {
            v65 = v56;
            if (v63)
            {
              *&v18 = 0;
              v46 = v62;
              v62 = v18;
              *a2 = *v64;
              *v66 = v18;
              *(a2 + 16) = v65;
              *(a2 + 24) = v46;
              *(a2 + 40) = 1;
              result = WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v66, v33);
              goto LABEL_84;
            }
          }
        }
      }
    }

LABEL_123:
    __break(1u);
    return result;
  }

  *a2 = 0;
  *(a2 + 40) = 0;
LABEL_84:
  if (v63 == 1)
  {
    return WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v33);
  }

  return result;
}

void sub_19D72B3AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  if (a29 == 1)
  {
    if (a27 == 1)
    {
      if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a21, a2);
      }

      if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a20, a2);
      }

      if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a19, a2);
      }
    }

    if (a18)
    {
      if (atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a18, a2);
      }
    }
  }

  WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29 - 104, a2);
  _Unwind_Resume(a1);
}

unint64_t IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v8 = a1[3];
    if (v8)
    {
      if (v2)
      {
        (*(*v8 + 16))(v8);
        v2 = a1[1];
      }
    }

    else
    {
      v2 = 0;
    }

LABEL_10:
    *a1 = 0;
    a1[1] = 0;
    v9 = a1[3];
    if (v9)
    {
      if (v2)
      {
        (*(*v9 + 16))(v9);
LABEL_15:
        v4 = *a1;
        v2 = a1[1];
LABEL_16:
        *a1 = 0;
        a1[1] = 0;
        v10 = a1[3];
        if (v10 && v2)
        {
          (*(*v10 + 16))(v10, v4);
        }

        v11 = *a1;
        v12 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        result = a1[3];
        if (result)
        {
          if (v12)
          {
            (*(*result + 16))(result, v11);
          }

          return 0;
        }

        return result;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    goto LABEL_16;
  }

  a1[2] = (v3 + 1);
  if (!v3)
  {
    goto LABEL_10;
  }

  v5 = *v3;
  if (v5 >= 2)
  {
    goto LABEL_16;
  }

  if (v5)
  {
    return 0;
  }

  result = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(a1);
  if ((v7 & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::TextManipulationToken,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = (a2 + 11);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);
  IPC::ArgumentCoder<std::optional<WebCore::TextManipulationTokenInfo>,void>::encode<IPC::Encoder,std::optional<WebCore::TextManipulationTokenInfo> const&>(a1, (a2 + 2));

  return IPC::Encoder::operator<<<BOOL>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::TextManipulationTokenInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 56));
}

uint64_t std::optional<WebCore::TextManipulationTokenInfo>::optional[abi:sn200100]<WebCore::TextManipulationTokenInfo,0>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  WTF::URL::URL(a1 + 16, a2 + 2);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = 1;
  return a1;
}

void sub_19D72B734(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = v2[1];
  v2[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
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

uint64_t IPC::ArgumentCoder<WebCore::VelocityData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebCore::AuthenticationChallenge,void>::encode(IPC::Encoder *a1, WebCore::AuthenticationChallengeBase *this)
{
  v4 = WebCore::AuthenticationChallengeBase::protectionSpace(this);
  IPC::ArgumentCoder<WebCore::ProtectionSpace,void>::encode(a1, v4);
  v5 = WebCore::AuthenticationChallengeBase::proposedCredential(this);
  IPC::ArgumentCoder<WebCore::Credential,void>::encode(a1, v5);
  v6 = WebCore::AuthenticationChallengeBase::previousFailureCount(this);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v6);
  v7 = WebCore::AuthenticationChallengeBase::failureResponse(this);
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a1, v7);
  v8 = WebCore::AuthenticationChallengeBase::error(this);

  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(a1, v8);
}

void IPC::ArgumentCoder<WebCore::AuthenticationChallenge,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v80[1] = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::String>(a1, &v68);
  v4 = IPC::Decoder::decode<float>(a1);
  v5 = IPC::Decoder::decode<WebCore::ProtectionSpaceBaseServerType>(a1);
  IPC::Decoder::decode<WTF::String>(a1, &v63);
  v6 = IPC::Decoder::decode<WebCore::ProtectionSpaceBaseAuthenticationScheme>(a1);
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *a1;
  if (v7 <= &v8[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v56 = *(a1 + 3);
    if (v56)
    {
      if (v7)
      {
        (*(*v56 + 16))(v56);
        v7 = *(a1 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_120:
    *a1 = 0;
    *(a1 + 1) = 0;
    v57 = *(a1 + 3);
    if (v57)
    {
      if (v7)
      {
        (*(*v57 + 16))(v57);
        v9 = *a1;
        v7 = *(a1 + 1);
LABEL_106:
        *a1 = 0;
        *(a1 + 1) = 0;
        v51 = *(a1 + 3);
        if (v51 && v7)
        {
          (*(*v51 + 16))(v51);
          v9 = *a1;
          v52 = *(a1 + 1);
          v53 = *(a1 + 3);
          *a1 = 0;
          *(a1 + 1) = 0;
          if (!v53)
          {
            goto LABEL_108;
          }

          if (!v52)
          {
            goto LABEL_108;
          }

          (*(*v53 + 16))(v53, v9);
          v18 = 0;
          v9 = *a1;
          if (!*a1)
          {
            goto LABEL_108;
          }

LABEL_13:
          v15 = 0;
          v19 = 0;
          goto LABEL_21;
        }

        *a1 = 0;
        *(a1 + 1) = 0;
LABEL_108:
        v23 = 0;
        LOBYTE(v76) = 0;
        v79 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
    goto LABEL_106;
  }

  *(a1 + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_120;
  }

  v10 = *v8;
  if (v10 >= 2)
  {
    goto LABEL_106;
  }

  if (!v10)
  {
    v18 = 1;
    if (v9)
    {
      goto LABEL_13;
    }

    goto LABEL_108;
  }

  v11 = objc_opt_class();
  v80[0] = v11;
  if (v11)
  {
    v12 = v11;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v72, v80, 1);
  IPC::decodeObjectDirectlyRequiringAllowedClasses<NSURLProtectionSpace>(a1, &v58);
  v14 = BYTE8(v58);
  if (BYTE8(v58) == 1)
  {
    v15 = v58;
    if (v58)
    {
      v16 = v58;
      if (BYTE8(v58))
      {
        v17 = v58;
        *&v58 = 0;
        if (v17)
        {
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  if (v72)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v72, v13);
  }

  v20 = v80[0];
  v80[0] = 0;
  if (!v20)
  {
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_85:
    v44 = *a1;
    v45 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v46 = *(a1 + 3);
    if (v46 && v45)
    {
      (*(*v46 + 16))(v46, v44);
      v9 = *a1;
      if (*a1)
      {
        goto LABEL_88;
      }

      goto LABEL_105;
    }

    goto LABEL_104;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_19:
  if (!*a1)
  {
    if (v15)
    {

      v9 = *a1;
LABEL_105:
      v7 = *(a1 + 1);
      goto LABEL_106;
    }

LABEL_104:
    v9 = 0;
    goto LABEL_105;
  }

  v19 = 1;
  v18 = 1;
LABEL_21:
  if ((v69 & 1) == 0 || (v4 & 0x100000000) == 0 || (v5 & 0x100) == 0 || (v64 & 1) == 0 || (v6 & 0x100) == 0 || (v18 & 1) == 0)
  {
    goto LABEL_88;
  }

  LOBYTE(v72) = 0;
  LOBYTE(v73) = 0;
  if (v19)
  {
    v72 = v15;
    LOBYTE(v73) = 1;
    v15 = 0;
  }

  MEMORY[0x19EB061A0](&v58, &v68, v4, v5, &v63, v6, &v72);
  v76 = v58;
  v77[0] = v59[0];
  *(v77 + 3) = *(v59 + 3);
  v78 = v60;
  v79 = 1;
  v60 = 0;
  v58 = 0uLL;
  if (v73 == 1)
  {
    v21 = v72;
    v72 = 0;
    if (v21)
    {
    }
  }

  v22 = v19 ^ 1;
  if (!v15)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
  }

  v23 = 1;
LABEL_37:
  if (v64 == 1)
  {
    v24 = v63;
    v63 = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v9);
      }
    }
  }

  if (v69 == 1 && (v25 = v68, v68 = 0, v25) && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v9);
    if (v23)
    {
      goto LABEL_45;
    }
  }

  else if (v23)
  {
    goto LABEL_45;
  }

  v41 = *a1;
  v42 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v43 = *(a1 + 3);
  if (v43 && v42)
  {
    (*(*v43 + 16))(v43, v41);
  }

LABEL_45:
  IPC::Decoder::decode<WebCore::Credential>(a1, &v72);
  v26 = *(a1 + 1);
  v27 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v28 = v27 - *a1;
  v29 = v26 >= v28;
  v30 = v26 - v28;
  if (v29 && v30 > 3)
  {
    *(a1 + 2) = v27 + 1;
    if (v27)
    {
      v31 = *v27 | 0x100000000;
      goto LABEL_50;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v54 = *(a1 + 3);
    if (v54)
    {
      if (v26)
      {
        (*(*v54 + 16))(v54);
        v26 = *(a1 + 1);
      }
    }

    else
    {
      v26 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v55 = *(a1 + 3);
  if (v55 && v26)
  {
    (*(*v55 + 16))(v55);
  }

  v31 = 0;
LABEL_50:
  IPC::Decoder::decode<WebCore::ResourceResponse>(a1, &v68);
  IPC::Decoder::decode<WebCore::ResourceError>(a1, &v63);
  if (*a1)
  {
    v18 = v79;
    if (v79)
    {
      v18 = v75;
      if ((v75 & 1) != 0 && (v31 & 0x100000000) != 0)
      {
        v18 = v71;
        if (v71)
        {
          v18 = v67;
          if (v67)
          {
            WebCore::AuthenticationChallenge::AuthenticationChallenge(&v58, &v76, &v72, v31, &v68, &v63);
            WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(a2, &v58);
            v33 = v62;
            *(a2 + 424) = v61;
            *(a2 + 432) = v33;
            *(a2 + 440) = 1;
            v61 = 0;
            v62 = 0;
            WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v58, v34);
            goto LABEL_57;
          }
        }
      }
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  *a2 = 0;
  *(a2 + 440) = 0;
LABEL_57:
  if (v67 == 1)
  {
    v47 = v66;
    v66 = 0;
    if (v47)
    {
    }

    v48 = v65;
    v65 = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v32);
    }

    v49 = v64;
    v64 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v32);
    }

    v50 = v63;
    v63 = 0;
    if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v50, v32);
    }
  }

  if (v71 == 1)
  {
    v18 = v70;
    v70 = 0;
    if (!v18)
    {
LABEL_60:
      WebCore::ResourceResponseBase::~ResourceResponseBase(&v68, v32);
      goto LABEL_61;
    }

LABEL_89:

    goto LABEL_60;
  }

LABEL_61:
  if (v75 == 1)
  {
    v35 = v74;
    v74 = 0;
    if (v35)
    {
    }

    v36 = v73;
    v73 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v32);
    }

    v37 = v72;
    v72 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v32);
    }
  }

  if (v79 == 1)
  {
    v38 = v78;
    v78 = 0;
    if (v38)
    {
    }

    v39 = *(&v76 + 1);
    *(&v76 + 1) = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v32);
    }

    v40 = v76;
    *&v76 = 0;
    if (v40)
    {
      if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v32);
      }
    }
  }
}

void sub_19D72BF94(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (*(v2 - 136) == 1)
  {
    v4 = *(v2 - 144);
    *(v2 - 144) = 0;
    if (v4)
    {
    }

    v5 = *(v2 - 160);
    *(v2 - 160) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(v2 - 168);
    *(v2 - 168) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  if (*(v2 - 96) == 1)
  {
    v7 = *(v2 - 104);
    *(v2 - 104) = 0;
    if (v7)
    {
    }

    v8 = *(v2 - 120);
    *(v2 - 120) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    v9 = *(v2 - 128);
    *(v2 - 128) = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::Credential>(WTF::StringImpl *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::Credential,void>::decode(a1, a2);
  if ((*(a2 + 32) & 1) == 0)
  {
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v5 = *(a1 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t IPC::ArgumentCoder<WebCore::DragData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 32);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 25));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  v4 = *(a2 + 64);
  v6 = *(a2 + 56);
  v7 = v4;
  return IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, &v6);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::DragData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v45);
  v4 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v6 = v5;
  v43 = v4;
  v44 = v5;
  v7 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v9 = v8;
  v41 = v7;
  v42 = v8;
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v39);
  v10 = IPC::Decoder::decode<WTF::OptionSet<WebCore::DragOperation>>(a1);
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *a1;
  if (v11 <= &v12[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (v24)
    {
      if (v11)
      {
        (*(*v24 + 16))(v24);
        v11 = *(a1 + 1);
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_34:
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (v25)
    {
      if (v11)
      {
        (*(*v25 + 16))(v25);
        v13 = *a1;
        v11 = *(a1 + 1);
        goto LABEL_37;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
    goto LABEL_37;
  }

  *(a1 + 2) = v12 + 1;
  if (!v12)
  {
    goto LABEL_34;
  }

  v14 = *v12;
  if (v14 < 0x10)
  {
    v15 = v14 | 0x100;
    goto LABEL_5;
  }

LABEL_37:
  *a1 = 0;
  *(a1 + 1) = 0;
  v26 = *(a1 + 3);
  if (!v26)
  {
    v13 = 0;
    v15 = 0;
    v11 = 0;
    goto LABEL_39;
  }

  if (!v11)
  {
    v13 = 0;
    v15 = 0;
LABEL_39:
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27)
    {
      if (v11)
      {
        (*(*v27 + 16))(v27, v13);
        v13 = *a1;
        v11 = *(a1 + 1);
LABEL_42:
        *a1 = 0;
        *(a1 + 1) = 0;
        v28 = *(a1 + 3);
        if (v28)
        {
          if (v11)
          {
            (*(*v28 + 16))(v28, v13);
            v13 = *a1;
            v11 = *(a1 + 1);
            goto LABEL_45;
          }
        }

        else
        {
          v11 = 0;
        }

        v13 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
    goto LABEL_42;
  }

  (*(*v26 + 16))(v26, v13);
  v15 = 0;
  v13 = *a1;
  v11 = *(a1 + 1);
LABEL_5:
  v16 = *(a1 + 2);
  if (v11 <= v16 - v13)
  {
    goto LABEL_39;
  }

  *(a1 + 2) = v16 + 1;
  if (!v16)
  {
    goto LABEL_42;
  }

  v17 = *v16;
  if (v17 < 8)
  {
    v18 = v17 | 0x100;
    goto LABEL_9;
  }

LABEL_45:
  *a1 = 0;
  *(a1 + 1) = 0;
  v29 = *(a1 + 3);
  if (v29 && v11)
  {
    (*(*v29 + 16))(v29, v13);
  }

  v18 = 0;
LABEL_9:
  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v37);
  if ((v38 & 1) == 0)
  {
    goto LABEL_28;
  }

  while (*a1)
  {
    if (v46 & 1) != 0 && (v6 & 1) != 0 && (v9 & 1) != 0 && (v40 & 1) != 0 && (v10 & 0x100) != 0 && v15 > 0xFF && v18 > 0xFF && (v38)
    {
      WebCore::DragData::DragData();
      *a2 = *v30;
      *(a2 + 10) = *&v30[10];
      *(a2 + 32) = v31;
      v21 = v32;
      v31 = 0;
      v32 = 0;
      *(a2 + 40) = v21;
      *(a2 + 48) = v33;
      *(a2 + 64) = v34;
      *(a2 + 72) = v35;
      *(a2 + 80) = v36;
      *(a2 + 88) = 1;
      v35 = 0;
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v22);
      goto LABEL_20;
    }

    __break(1u);
LABEL_28:
    v20 = *a1;
    v23 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v23)
    {
      result = (*(*result + 16))(result, v20);
    }
  }

  *a2 = 0;
  *(a2 + 88) = 0;
LABEL_20:
  if (v40 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v20);
  }

  if (v46 == 1)
  {
    result = v45;
    v45 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v20);
      }
    }
  }

  return result;
}

void sub_19D72C764(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  if (a28 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a26, a2);
  }

  if (*(v28 - 72) == 1)
  {
    v30 = *(v28 - 80);
    *(v28 - 80) = 0;
    if (v30)
    {
      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::DragOperation>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WTF::OptionSet<WebCore::DragOperation>,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::ArgumentCoder<WebCore::DictationAlternative,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);
  v4 = a2[2];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

unint64_t IPC::ArgumentCoder<WebCore::DictationAlternative,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::CharacterRange>(a1, &v7);
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  LOBYTE(v6) = v8;
  if ((v8 & 1) == 0 || (v5 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    *a2 = 0;
    goto LABEL_5;
  }

  *a2 = v7;
  *(a2 + 16) = result;
  LOBYTE(v6) = 1;
LABEL_5:
  *(a2 + 24) = v6;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::UserStyleSheet,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 48);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 64);
  LOBYTE(v6) = *(a2 + 80);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 81));
  LOBYTE(v6) = *(a2 + 82);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  v4 = *(a2 + 96);
  v6 = *(a2 + 88);
  v7 = v4;
  return IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, &v6);
}

uint64_t IPC::ArgumentCoder<WebCore::ScrollableAreaParameters,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[4]);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[5]);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 6);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 7);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[8]);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[9]);
  v4 = a2[10];

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebCore::NotificationResources,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>>(a1, &v8);
  v4 = *a1;
  if (*a1)
  {
    if ((v9 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v5 = WTF::fastMalloc(0x10);
    LOBYTE(v4) = 1;
    *v5 = 1;
    v6 = v8;
    v8 = 0;
    *(v5 + 8) = v6;
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = v4;
  if (v9 == 1)
  {
    v7 = v8;
    v8 = 0;
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
  }
}

void sub_19D72CB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9, char a10)
{
  if (a10 == 1 && a9)
  {
    if (a9[4] == 1)
    {
      (*(*a9 + 8))(a9);
    }

    else
    {
      --a9[4];
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::Length>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v74 = *(a2 + 3);
    if (v74)
    {
      if (v6)
      {
        (*(*v74 + 16))(v74);
        v6 = *(a2 + 1);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    *(a2 + 2) = v4 + 1;
    if (v4)
    {
      v7 = *v4;
      if (v7 > 0xC)
      {
        goto LABEL_4;
      }

      switch(v7)
      {
        case 0u:
          if (!v5)
          {
            goto LABEL_104;
          }

          v14 = 0;
          goto LABEL_90;
        case 1u:
          if (!v5)
          {
            goto LABEL_104;
          }

          v14 = 1;
LABEL_90:
          v137 = v14;
          v138 = 1;
          result = MEMORY[0x19EB0EB40](&v130, &v135);
          *a1 = 0;
          *(a1 + 6) = 0;
          v70 = v131;
          *(a1 + 4) = v131;
          *(a1 + 5) = v132;
          *(a1 + 7) = v134;
          if ((v70 - 2) >= 9)
          {
            if (v70 != 11)
            {
              goto LABEL_95;
            }
          }

          else
          {
            v71 = v133;
            *(a1 + 6) = v133;
            if (v71 == 1)
            {
              *a1 = v130;
LABEL_95:
              *(a1 + 8) = 1;
              return result;
            }
          }

          *a1 = v130;
          goto LABEL_95;
        case 2u:
          v15 = IPC::Decoder::decode<mpark::variant<float,int>>(a2);
          v17 = v16;
          v18 = *(a2 + 1);
          v19 = *(a2 + 2);
          v5 = *a2;
          if (v18 > &v19[-*a2])
          {
            *(a2 + 2) = v19 + 1;
            if (v19)
            {
              v20 = *v19;
              if (v20 < 2)
              {
                v21 = 1;
                if (v5)
                {
LABEL_21:
                  if ((v17 & 1) == 0 || (v21 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  v135 = v15;
                  v14 = 2;
                  goto LABEL_89;
                }

                goto LABEL_216;
              }

              v121 = v20;
              v103 = v15;
              v112 = v17;
              goto LABEL_117;
            }

            v103 = v15;
            v112 = v17;
LABEL_113:
            *a2 = 0;
            *(a2 + 1) = 0;
            v77 = *(a2 + 3);
            if (v77)
            {
              if (v18)
              {
                (*(*v77 + 16))(v77, v5);
                v121 = 0;
                v5 = *a2;
                v18 = *(a2 + 1);
                goto LABEL_117;
              }
            }

            else
            {
              v18 = 0;
            }

            v5 = 0;
            v121 = 0;
LABEL_117:
            *a2 = 0;
            *(a2 + 1) = 0;
            v78 = *(a2 + 3);
            if (!v78 || !v18)
            {
              goto LABEL_4;
            }

            (*(*v78 + 16))(v78, v5);
            v21 = 0;
            v5 = *a2;
            v15 = v103;
            v17 = v112;
            v20 = v121;
            if (*a2)
            {
              goto LABEL_21;
            }

            goto LABEL_216;
          }

          v103 = v15;
          v112 = v17;
          *a2 = 0;
          *(a2 + 1) = 0;
          v76 = *(a2 + 3);
          if (v76)
          {
            if (v18)
            {
              (*(*v76 + 16))(v76);
              v5 = *a2;
              v18 = *(a2 + 1);
              goto LABEL_113;
            }
          }

          else
          {
            v18 = 0;
          }

          v5 = 0;
          goto LABEL_113;
        case 3u:
          v22 = IPC::Decoder::decode<mpark::variant<float,int>>(a2);
          v24 = v23;
          v25 = *(a2 + 1);
          v26 = *(a2 + 2);
          v5 = *a2;
          if (v25 <= &v26[-*a2])
          {
            v104 = v22;
            v113 = v24;
            *a2 = 0;
            *(a2 + 1) = 0;
            v79 = *(a2 + 3);
            if (v79)
            {
              if (v25)
              {
                (*(*v79 + 16))(v79);
                v5 = *a2;
                v25 = *(a2 + 1);
                goto LABEL_124;
              }
            }

            else
            {
              v25 = 0;
            }

            v5 = 0;
          }

          else
          {
            *(a2 + 2) = v26 + 1;
            if (v26)
            {
              v20 = *v26;
              if (v20 < 2)
              {
                v27 = 1;
                if (v5)
                {
LABEL_29:
                  if ((v24 & 1) == 0 || (v27 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  v135 = v22;
                  v14 = 3;
                  goto LABEL_89;
                }

LABEL_216:
                v6 = *(a2 + 1);
                v75 = *(a2 + 3);
                *a2 = 0;
                *(a2 + 1) = 0;
                if (!v75)
                {
                  goto LABEL_4;
                }

                goto LABEL_217;
              }

              v122 = v20;
              v104 = v22;
              v113 = v24;
              goto LABEL_128;
            }

            v104 = v22;
            v113 = v24;
          }

LABEL_124:
          *a2 = 0;
          *(a2 + 1) = 0;
          v80 = *(a2 + 3);
          if (v80)
          {
            if (v25)
            {
              (*(*v80 + 16))(v80, v5);
              v122 = 0;
              v5 = *a2;
              v25 = *(a2 + 1);
              goto LABEL_128;
            }
          }

          else
          {
            v25 = 0;
          }

          v5 = 0;
          v122 = 0;
LABEL_128:
          *a2 = 0;
          *(a2 + 1) = 0;
          v81 = *(a2 + 3);
          if (!v81 || !v25)
          {
            goto LABEL_4;
          }

          (*(*v81 + 16))(v81, v5);
          v27 = 0;
          v5 = *a2;
          v22 = v104;
          v24 = v113;
          v20 = v122;
          if (*a2)
          {
            goto LABEL_29;
          }

          goto LABEL_216;
        case 4u:
          v28 = IPC::Decoder::decode<mpark::variant<float,int>>(a2);
          v30 = v29;
          v31 = *(a2 + 1);
          v32 = *(a2 + 2);
          v5 = *a2;
          if (v31 <= &v32[-*a2])
          {
            v105 = v28;
            v114 = v30;
            *a2 = 0;
            *(a2 + 1) = 0;
            v82 = *(a2 + 3);
            if (v82)
            {
              if (v31)
              {
                (*(*v82 + 16))(v82);
                v5 = *a2;
                v31 = *(a2 + 1);
                goto LABEL_135;
              }
            }

            else
            {
              v31 = 0;
            }

            v5 = 0;
          }

          else
          {
            *(a2 + 2) = v32 + 1;
            if (v32)
            {
              v20 = *v32;
              if (v20 < 2)
              {
                v33 = 1;
                if (!v5)
                {
                  goto LABEL_216;
                }

                goto LABEL_37;
              }

              v123 = v20;
              v105 = v28;
              v114 = v30;
              goto LABEL_139;
            }

            v105 = v28;
            v114 = v30;
          }

LABEL_135:
          *a2 = 0;
          *(a2 + 1) = 0;
          v83 = *(a2 + 3);
          if (v83)
          {
            if (v31)
            {
              (*(*v83 + 16))(v83, v5);
              v123 = 0;
              v5 = *a2;
              v31 = *(a2 + 1);
              goto LABEL_139;
            }
          }

          else
          {
            v31 = 0;
          }

          v5 = 0;
          v123 = 0;
LABEL_139:
          *a2 = 0;
          *(a2 + 1) = 0;
          v84 = *(a2 + 3);
          if (!v84 || !v31)
          {
            goto LABEL_4;
          }

          (*(*v84 + 16))(v84, v5);
          v33 = 0;
          v5 = *a2;
          v28 = v105;
          v30 = v114;
          v20 = v123;
          if (!*a2)
          {
            goto LABEL_216;
          }

LABEL_37:
          if ((v30 & 1) == 0 || (v33 & 1) == 0)
          {
            goto LABEL_99;
          }

          v135 = v28;
          v14 = 4;
          goto LABEL_89;
        case 5u:
          v34 = IPC::Decoder::decode<mpark::variant<float,int>>(a2);
          v36 = v35;
          v37 = *(a2 + 1);
          v38 = *(a2 + 2);
          v5 = *a2;
          if (v37 <= &v38[-*a2])
          {
            v106 = v34;
            v115 = v36;
            *a2 = 0;
            *(a2 + 1) = 0;
            v85 = *(a2 + 3);
            if (v85)
            {
              if (v37)
              {
                (*(*v85 + 16))(v85);
                v5 = *a2;
                v37 = *(a2 + 1);
                goto LABEL_146;
              }
            }

            else
            {
              v37 = 0;
            }

            v5 = 0;
          }

          else
          {
            *(a2 + 2) = v38 + 1;
            if (v38)
            {
              v20 = *v38;
              if (v20 < 2)
              {
                v39 = 1;
                if (!v5)
                {
                  goto LABEL_216;
                }

                goto LABEL_45;
              }

              v124 = v20;
              v106 = v34;
              v115 = v36;
              goto LABEL_150;
            }

            v106 = v34;
            v115 = v36;
          }

LABEL_146:
          *a2 = 0;
          *(a2 + 1) = 0;
          v86 = *(a2 + 3);
          if (v86)
          {
            if (v37)
            {
              (*(*v86 + 16))(v86, v5);
              v124 = 0;
              v5 = *a2;
              v37 = *(a2 + 1);
              goto LABEL_150;
            }
          }

          else
          {
            v37 = 0;
          }

          v5 = 0;
          v124 = 0;
LABEL_150:
          *a2 = 0;
          *(a2 + 1) = 0;
          v87 = *(a2 + 3);
          if (!v87 || !v37)
          {
            goto LABEL_4;
          }

          (*(*v87 + 16))(v87, v5);
          v39 = 0;
          v5 = *a2;
          v34 = v106;
          v36 = v115;
          v20 = v124;
          if (!*a2)
          {
            goto LABEL_216;
          }

LABEL_45:
          if ((v36 & 1) == 0 || (v39 & 1) == 0)
          {
            goto LABEL_99;
          }

          v135 = v34;
          v14 = 5;
          goto LABEL_89;
        case 6u:
          v40 = IPC::Decoder::decode<mpark::variant<float,int>>(a2);
          v42 = v41;
          v43 = *(a2 + 1);
          v44 = *(a2 + 2);
          v5 = *a2;
          if (v43 <= &v44[-*a2])
          {
            v107 = v40;
            v116 = v42;
            *a2 = 0;
            *(a2 + 1) = 0;
            v88 = *(a2 + 3);
            if (v88)
            {
              if (v43)
              {
                (*(*v88 + 16))(v88);
                v5 = *a2;
                v43 = *(a2 + 1);
                goto LABEL_158;
              }
            }

            else
            {
              v43 = 0;
            }

            v5 = 0;
          }

          else
          {
            *(a2 + 2) = v44 + 1;
            if (v44)
            {
              v20 = *v44;
              if (v20 < 2)
              {
                v45 = 1;
                if (!v5)
                {
                  goto LABEL_216;
                }

                goto LABEL_53;
              }

              v125 = v20;
              v107 = v40;
              v116 = v42;
              goto LABEL_162;
            }

            v107 = v40;
            v116 = v42;
          }

LABEL_158:
          *a2 = 0;
          *(a2 + 1) = 0;
          v89 = *(a2 + 3);
          if (v89)
          {
            if (v43)
            {
              (*(*v89 + 16))(v89, v5);
              v125 = 0;
              v5 = *a2;
              v43 = *(a2 + 1);
              goto LABEL_162;
            }
          }

          else
          {
            v43 = 0;
          }

          v5 = 0;
          v125 = 0;
LABEL_162:
          *a2 = 0;
          *(a2 + 1) = 0;
          v90 = *(a2 + 3);
          if (!v90 || !v43)
          {
            goto LABEL_4;
          }

          (*(*v90 + 16))(v90, v5);
          v45 = 0;
          v5 = *a2;
          v40 = v107;
          v42 = v116;
          v20 = v125;
          if (!*a2)
          {
            goto LABEL_216;
          }

LABEL_53:
          if ((v42 & 1) == 0 || (v45 & 1) == 0)
          {
            goto LABEL_99;
          }

          v135 = v40;
          v14 = 6;
          goto LABEL_89;
        case 7u:
          v46 = IPC::Decoder::decode<mpark::variant<float,int>>(a2);
          v48 = v47;
          v49 = *(a2 + 1);
          v50 = *(a2 + 2);
          v5 = *a2;
          if (v49 <= &v50[-*a2])
          {
            v108 = v46;
            v117 = v48;
            *a2 = 0;
            *(a2 + 1) = 0;
            v91 = *(a2 + 3);
            if (v91)
            {
              if (v49)
              {
                (*(*v91 + 16))(v91);
                v5 = *a2;
                v49 = *(a2 + 1);
                goto LABEL_170;
              }
            }

            else
            {
              v49 = 0;
            }

            v5 = 0;
          }

          else
          {
            *(a2 + 2) = v50 + 1;
            if (v50)
            {
              v20 = *v50;
              if (v20 < 2)
              {
                v51 = 1;
                if (!v5)
                {
                  goto LABEL_216;
                }

                goto LABEL_61;
              }

              v126 = v20;
              v108 = v46;
              v117 = v48;
              goto LABEL_174;
            }

            v108 = v46;
            v117 = v48;
          }

LABEL_170:
          *a2 = 0;
          *(a2 + 1) = 0;
          v92 = *(a2 + 3);
          if (v92)
          {
            if (v49)
            {
              (*(*v92 + 16))(v92, v5);
              v126 = 0;
              v5 = *a2;
              v49 = *(a2 + 1);
              goto LABEL_174;
            }
          }

          else
          {
            v49 = 0;
          }

          v5 = 0;
          v126 = 0;
LABEL_174:
          *a2 = 0;
          *(a2 + 1) = 0;
          v93 = *(a2 + 3);
          if (!v93 || !v49)
          {
            goto LABEL_4;
          }

          (*(*v93 + 16))(v93, v5);
          v51 = 0;
          v5 = *a2;
          v46 = v108;
          v48 = v117;
          v20 = v126;
          if (!*a2)
          {
            goto LABEL_216;
          }

LABEL_61:
          if ((v48 & 1) == 0 || (v51 & 1) == 0)
          {
            goto LABEL_99;
          }

          v135 = v46;
          v14 = 7;
          goto LABEL_89;
        case 8u:
          v52 = IPC::Decoder::decode<mpark::variant<float,int>>(a2);
          v54 = v53;
          v55 = *(a2 + 1);
          v56 = *(a2 + 2);
          v5 = *a2;
          if (v55 <= &v56[-*a2])
          {
            v109 = v52;
            v118 = v54;
            *a2 = 0;
            *(a2 + 1) = 0;
            v94 = *(a2 + 3);
            if (v94)
            {
              if (v55)
              {
                (*(*v94 + 16))(v94);
                v5 = *a2;
                v55 = *(a2 + 1);
                goto LABEL_182;
              }
            }

            else
            {
              v55 = 0;
            }

            v5 = 0;
          }

          else
          {
            *(a2 + 2) = v56 + 1;
            if (v56)
            {
              v20 = *v56;
              if (v20 < 2)
              {
                v57 = 1;
                if (!v5)
                {
                  goto LABEL_216;
                }

                goto LABEL_69;
              }

              v127 = v20;
              v109 = v52;
              v118 = v54;
              goto LABEL_188;
            }

            v109 = v52;
            v118 = v54;
          }

LABEL_182:
          *a2 = 0;
          *(a2 + 1) = 0;
          v95 = *(a2 + 3);
          if (v95)
          {
            if (v55)
            {
              (*(*v95 + 16))(v95, v5);
              v127 = 0;
              v5 = *a2;
              v55 = *(a2 + 1);
              goto LABEL_188;
            }
          }

          else
          {
            v55 = 0;
          }

          v5 = 0;
          v127 = 0;
LABEL_188:
          *a2 = 0;
          *(a2 + 1) = 0;
          v96 = *(a2 + 3);
          if (!v96 || !v55)
          {
            goto LABEL_4;
          }

          (*(*v96 + 16))(v96, v5);
          v57 = 0;
          v5 = *a2;
          v52 = v109;
          v54 = v118;
          v20 = v127;
          if (!*a2)
          {
            goto LABEL_216;
          }

LABEL_69:
          if ((v54 & 1) == 0 || (v57 & 1) == 0)
          {
            goto LABEL_99;
          }

          v135 = v52;
          v14 = 8;
          goto LABEL_89;
        case 9u:
          v58 = IPC::Decoder::decode<mpark::variant<float,int>>(a2);
          v60 = v59;
          v61 = *(a2 + 1);
          v62 = *(a2 + 2);
          v5 = *a2;
          if (v61 <= &v62[-*a2])
          {
            v110 = v58;
            v119 = v60;
            *a2 = 0;
            *(a2 + 1) = 0;
            v97 = *(a2 + 3);
            if (v97)
            {
              if (v61)
              {
                (*(*v97 + 16))(v97);
                v5 = *a2;
                v61 = *(a2 + 1);
                goto LABEL_196;
              }
            }

            else
            {
              v61 = 0;
            }

            v5 = 0;
          }

          else
          {
            *(a2 + 2) = v62 + 1;
            if (v62)
            {
              v20 = *v62;
              if (v20 < 2)
              {
                v63 = 1;
                if (!v5)
                {
                  goto LABEL_216;
                }

                goto LABEL_77;
              }

              v128 = v20;
              v110 = v58;
              v119 = v60;
              goto LABEL_200;
            }

            v110 = v58;
            v119 = v60;
          }

LABEL_196:
          *a2 = 0;
          *(a2 + 1) = 0;
          v98 = *(a2 + 3);
          if (v98)
          {
            if (v61)
            {
              (*(*v98 + 16))(v98, v5);
              v128 = 0;
              v5 = *a2;
              v61 = *(a2 + 1);
              goto LABEL_200;
            }
          }

          else
          {
            v61 = 0;
          }

          v5 = 0;
          v128 = 0;
LABEL_200:
          *a2 = 0;
          *(a2 + 1) = 0;
          v99 = *(a2 + 3);
          if (!v99 || !v61)
          {
            goto LABEL_4;
          }

          (*(*v99 + 16))(v99, v5);
          v63 = 0;
          v5 = *a2;
          v58 = v110;
          v60 = v119;
          v20 = v128;
          if (!*a2)
          {
            goto LABEL_216;
          }

LABEL_77:
          if ((v60 & 1) == 0 || (v63 & 1) == 0)
          {
            goto LABEL_99;
          }

          v135 = v58;
          v14 = 9;
          goto LABEL_89;
        case 0xBu:
          goto LABEL_100;
      }

      if (v7 != 10)
      {
        if (!v5)
        {
          goto LABEL_104;
        }

        v14 = 12;
        goto LABEL_90;
      }

      v64 = IPC::Decoder::decode<mpark::variant<float,int>>(a2);
      v66 = v65;
      v67 = *(a2 + 1);
      v68 = *(a2 + 2);
      v5 = *a2;
      if (v67 <= &v68[-*a2])
      {
        v111 = v64;
        v120 = v66;
        *a2 = 0;
        *(a2 + 1) = 0;
        v100 = *(a2 + 3);
        if (v100)
        {
          if (v67)
          {
            (*(*v100 + 16))(v100);
            v5 = *a2;
            v67 = *(a2 + 1);
            goto LABEL_208;
          }
        }

        else
        {
          v67 = 0;
        }

        v5 = 0;
      }

      else
      {
        *(a2 + 2) = v68 + 1;
        if (v68)
        {
          v20 = *v68;
          if (v20 < 2)
          {
            v69 = 1;
            if (!v5)
            {
              goto LABEL_216;
            }

            goto LABEL_86;
          }

          v129 = v20;
          v111 = v64;
          v120 = v66;
          goto LABEL_213;
        }

        v111 = v64;
        v120 = v66;
      }

LABEL_208:
      *a2 = 0;
      *(a2 + 1) = 0;
      v101 = *(a2 + 3);
      if (v101)
      {
        if (v67)
        {
          (*(*v101 + 16))(v101, v5);
          v129 = 0;
          v5 = *a2;
          v67 = *(a2 + 1);
          goto LABEL_213;
        }
      }

      else
      {
        v67 = 0;
      }

      v5 = 0;
      v129 = 0;
LABEL_213:
      *a2 = 0;
      *(a2 + 1) = 0;
      v102 = *(a2 + 3);
      if (!v102 || !v67)
      {
        goto LABEL_4;
      }

      (*(*v102 + 16))(v102, v5);
      v69 = 0;
      v5 = *a2;
      v64 = v111;
      v66 = v120;
      v20 = v129;
      if (!*a2)
      {
        goto LABEL_216;
      }

LABEL_86:
      if ((v66 & 1) == 0 || (v69 & 1) == 0)
      {
        goto LABEL_99;
      }

      v135 = v64;
      v14 = 10;
LABEL_89:
      v136 = v20 != 0;
      goto LABEL_90;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v75 = *(a2 + 3);
  if (!v75)
  {
    goto LABEL_4;
  }

LABEL_217:
  if (v6)
  {
    v73 = *(*v75 + 16);
    goto LABEL_219;
  }

LABEL_4:
  while (1)
  {
    v8 = *a2;
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (!v10)
    {
      break;
    }

    if (!v9)
    {
      break;
    }

    (*(*v10 + 16))(v10, v8);
    if (!*a2)
    {
      break;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    if (v5)
    {
      v14 = 11;
      goto LABEL_90;
    }

LABEL_104:
    *a2 = 0;
    *(a2 + 1) = 0;
    v72 = *(a2 + 3);
    if (v72)
    {
      v73 = *(*v72 + 16);
LABEL_219:
      v73();
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v11 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v11)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::TransformOperationType>(void *a1)
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
  if (v4 < 0x17)
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

uint64_t IPC::Decoder::decode<WebCore::TransformationMatrix>(uint64_t a1, IPC::Decoder *a2)
{
  v45 = IPC::Decoder::decode<unsigned long long>(a2);
  v52 = v4;
  v44 = IPC::Decoder::decode<unsigned long long>(a2);
  v51 = v5;
  v43 = IPC::Decoder::decode<unsigned long long>(a2);
  v50 = v6;
  v42 = IPC::Decoder::decode<unsigned long long>(a2);
  v49 = v7;
  v41 = IPC::Decoder::decode<unsigned long long>(a2);
  v48 = v8;
  v40 = IPC::Decoder::decode<unsigned long long>(a2);
  v47 = v9;
  v39 = IPC::Decoder::decode<unsigned long long>(a2);
  v46 = v10;
  v38 = IPC::Decoder::decode<unsigned long long>(a2);
  v12 = v11;
  v37 = IPC::Decoder::decode<unsigned long long>(a2);
  v14 = v13;
  v36 = IPC::Decoder::decode<unsigned long long>(a2);
  v16 = v15;
  v35 = IPC::Decoder::decode<unsigned long long>(a2);
  v18 = v17;
  v34 = IPC::Decoder::decode<unsigned long long>(a2);
  v20 = v19;
  v33 = IPC::Decoder::decode<unsigned long long>(a2);
  v22 = v21;
  v32 = IPC::Decoder::decode<unsigned long long>(a2);
  v24 = v23;
  v31 = IPC::Decoder::decode<unsigned long long>(a2);
  v26 = v25;
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if (*a2)
  {
    if (v52 & 1) != 0 && (v51 & 1) != 0 && (v50 & 1) != 0 && (v49 & 1) != 0 && (v48 & 1) != 0 && (v47 & 1) != 0 && (v46 & 1) != 0 && (v12 & 1) != 0 && (v14 & 1) != 0 && (v16 & 1) != 0 && (v18 & 1) != 0 && (v20 & 1) != 0 && (v22 & 1) != 0 && (v24 & 1) != 0 && (v26 & 1) != 0 && (v28)
    {
      *a1 = v45;
      *(a1 + 8) = v44;
      *(a1 + 16) = v43;
      *(a1 + 24) = v42;
      *(a1 + 32) = v41;
      *(a1 + 40) = v40;
      *(a1 + 48) = v39;
      *(a1 + 56) = v38;
      *(a1 + 64) = v37;
      *(a1 + 72) = v36;
      *(a1 + 80) = v35;
      *(a1 + 88) = v34;
      *(a1 + 96) = v33;
      *(a1 + 104) = v32;
      *(a1 + 112) = v31;
      *(a1 + 120) = result;
      *(a1 + 128) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 128) = 0;
  v29 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v29)
  {
    v30 = *(*result + 16);

    return v30();
  }

  return result;
}

uint64_t IPC::ArgumentCoder<AudioStreamBasicDescription,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 28));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  v4 = *(a2 + 36);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<AudioStreamBasicDescription,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  v6 = v5;
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
      goto LABEL_8;
    }

    v83 = result;
    v92 = v5;
    goto LABEL_54;
  }

  while (1)
  {
    v83 = result;
    v92 = v6;
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (!v32)
    {
      v7 = 0;
LABEL_53:
      v9 = 0;
      goto LABEL_54;
    }

    if (!v7)
    {
      goto LABEL_53;
    }

    (*(*v32 + 16))(v32, v9);
    v9 = *a1;
    v7 = *(a1 + 1);
LABEL_54:
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33)
    {
      if (v7)
      {
        (*(*v33 + 16))(v33, v9);
        v14 = 0;
        v15 = *a1;
        v7 = *(a1 + 1);
        v9 = *a1;
        goto LABEL_57;
      }

      v15 = 0;
    }

    else
    {
      v15 = 0;
      v7 = 0;
    }

    v9 = 0;
    v14 = 0;
LABEL_57:
    result = v83;
    v6 = v92;
LABEL_8:
    v16 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v7 < v16 - v9 || v7 - (v16 - v9) <= 3)
    {
      v75 = v14;
      v84 = result;
      v93 = v6;
      *a1 = 0;
      *(a1 + 1) = 0;
      v34 = *(a1 + 3);
      if (!v34)
      {
        v7 = 0;
LABEL_60:
        v15 = 0;
        goto LABEL_61;
      }

      if (!v7)
      {
        goto LABEL_60;
      }

      (*(*v34 + 16))(v34, v15);
      v15 = *a1;
      v7 = *(a1 + 1);
LABEL_61:
      *a1 = 0;
      *(a1 + 1) = 0;
      v35 = *(a1 + 3);
      if (v35)
      {
        if (v7)
        {
          (*(*v35 + 16))(v35, v15);
          v18 = 0;
          v15 = *a1;
          v7 = *(a1 + 1);
          v9 = *a1;
          goto LABEL_64;
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
LABEL_64:
      result = v84;
      v6 = v93;
      v14 = v75;
      goto LABEL_15;
    }

    *(a1 + 2) = v16 + 1;
    if (!v16)
    {
      v75 = v14;
      v84 = result;
      v93 = v6;
      goto LABEL_61;
    }

    v18 = *v16 | 0x100000000;
LABEL_15:
    v19 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v7 < v19 - v9 || v7 - (v19 - v9) <= 3)
    {
      v68 = v18;
      v76 = v14;
      v85 = result;
      v94 = v6;
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
LABEL_68:
          *a1 = 0;
          *(a1 + 1) = 0;
          v37 = *(a1 + 3);
          if (v37)
          {
            if (v7)
            {
              (*(*v37 + 16))(v37, v15);
              v20 = 0;
              v15 = *a1;
              v7 = *(a1 + 1);
              v9 = *a1;
              goto LABEL_71;
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
LABEL_71:
          result = v85;
          v6 = v94;
          v14 = v76;
          v18 = v68;
          goto LABEL_19;
        }
      }

      else
      {
        v7 = 0;
      }

      v15 = 0;
      goto LABEL_68;
    }

    *(a1 + 2) = v19 + 1;
    if (!v19)
    {
      v68 = v18;
      v76 = v14;
      v85 = result;
      v94 = v6;
      goto LABEL_68;
    }

    v20 = *v19 | 0x100000000;
LABEL_19:
    v21 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v7 < v21 - v9 || v7 - (v21 - v9) <= 3)
    {
      v62 = v20;
      v69 = v18;
      v77 = v14;
      v86 = result;
      v95 = v6;
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
LABEL_75:
          *a1 = 0;
          *(a1 + 1) = 0;
          v39 = *(a1 + 3);
          if (v39)
          {
            if (v7)
            {
              (*(*v39 + 16))(v39, v15);
              v22 = 0;
              v15 = *a1;
              v7 = *(a1 + 1);
              v9 = *a1;
              goto LABEL_78;
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
LABEL_78:
          result = v86;
          v6 = v95;
          v14 = v77;
          v20 = v62;
          v18 = v69;
          goto LABEL_23;
        }
      }

      else
      {
        v7 = 0;
      }

      v15 = 0;
      goto LABEL_75;
    }

    *(a1 + 2) = v21 + 1;
    if (!v21)
    {
      v62 = v20;
      v69 = v18;
      v77 = v14;
      v86 = result;
      v95 = v6;
      goto LABEL_75;
    }

    v22 = *v21 | 0x100000000;
LABEL_23:
    v23 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v7 < v23 - v9 || v7 - (v23 - v9) <= 3)
    {
      v57 = v22;
      v63 = v20;
      v70 = v18;
      v78 = v14;
      v87 = result;
      v96 = v6;
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
LABEL_82:
          *a1 = 0;
          *(a1 + 1) = 0;
          v41 = *(a1 + 3);
          if (v41)
          {
            if (v7)
            {
              (*(*v41 + 16))(v41, v15);
              v24 = 0;
              v15 = *a1;
              v7 = *(a1 + 1);
              v9 = *a1;
              goto LABEL_85;
            }

            v15 = 0;
          }

          else
          {
            v15 = 0;
            v7 = 0;
          }

          v9 = 0;
          v24 = 0;
LABEL_85:
          result = v87;
          v6 = v96;
          v14 = v78;
          v20 = v63;
          v18 = v70;
          v22 = v57;
          goto LABEL_27;
        }
      }

      else
      {
        v7 = 0;
      }

      v15 = 0;
      goto LABEL_82;
    }

    *(a1 + 2) = v23 + 1;
    if (!v23)
    {
      v57 = v22;
      v63 = v20;
      v70 = v18;
      v78 = v14;
      v87 = result;
      v96 = v6;
      goto LABEL_82;
    }

    v24 = *v23 | 0x100000000;
LABEL_27:
    v25 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v7 < v25 - v9 || v7 - (v25 - v9) <= 3)
    {
      v53 = v24;
      v58 = v22;
      v64 = v20;
      v71 = v18;
      v79 = v14;
      v88 = result;
      v97 = v6;
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
LABEL_89:
          *a1 = 0;
          *(a1 + 1) = 0;
          v43 = *(a1 + 3);
          if (v43)
          {
            if (v7)
            {
              (*(*v43 + 16))(v43, v15);
              v26 = 0;
              v15 = *a1;
              v7 = *(a1 + 1);
              v9 = *a1;
              goto LABEL_92;
            }

            v15 = 0;
          }

          else
          {
            v15 = 0;
            v7 = 0;
          }

          v9 = 0;
          v26 = 0;
LABEL_92:
          result = v88;
          v6 = v97;
          v14 = v79;
          v20 = v64;
          v18 = v71;
          v24 = v53;
          v22 = v58;
          goto LABEL_31;
        }
      }

      else
      {
        v7 = 0;
      }

      v15 = 0;
      goto LABEL_89;
    }

    *(a1 + 2) = v25 + 1;
    if (!v25)
    {
      v53 = v24;
      v58 = v22;
      v64 = v20;
      v71 = v18;
      v79 = v14;
      v88 = result;
      v97 = v6;
      goto LABEL_89;
    }

    v26 = *v25 | 0x100000000;
LABEL_31:
    v27 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v7 < v27 - v9 || v7 - (v27 - v9) <= 3)
    {
      v50 = v26;
      v54 = v24;
      v59 = v22;
      v65 = v20;
      v72 = v18;
      v80 = v14;
      v89 = result;
      v98 = v6;
      *a1 = 0;
      *(a1 + 1) = 0;
      v44 = *(a1 + 3);
      if (v44)
      {
        if (v7)
        {
          (*(*v44 + 16))(v44, v15);
          v15 = *a1;
          v7 = *(a1 + 1);
LABEL_96:
          *a1 = 0;
          *(a1 + 1) = 0;
          v45 = *(a1 + 3);
          if (v45)
          {
            if (v7)
            {
              (*(*v45 + 16))(v45, v15);
              v28 = 0;
              v15 = *a1;
              v7 = *(a1 + 1);
              v9 = *a1;
              goto LABEL_99;
            }

            v15 = 0;
          }

          else
          {
            v15 = 0;
            v7 = 0;
          }

          v9 = 0;
          v28 = 0;
LABEL_99:
          result = v89;
          v6 = v98;
          v14 = v80;
          v20 = v65;
          v18 = v72;
          v24 = v54;
          v22 = v59;
          v26 = v50;
          goto LABEL_35;
        }
      }

      else
      {
        v7 = 0;
      }

      v15 = 0;
      goto LABEL_96;
    }

    *(a1 + 2) = v27 + 1;
    if (!v27)
    {
      v50 = v26;
      v54 = v24;
      v59 = v22;
      v65 = v20;
      v72 = v18;
      v80 = v14;
      v89 = result;
      v98 = v6;
      goto LABEL_96;
    }

    v28 = *v27 | 0x100000000;
LABEL_35:
    v29 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v7 < v29 - v9 || v7 - (v29 - v9) <= 3)
    {
      break;
    }

    *(a1 + 2) = v29 + 1;
    if (!v29)
    {
      goto LABEL_104;
    }

    v30 = *v29 | 0x100000000;
    if (!v9)
    {
      goto LABEL_105;
    }

LABEL_39:
    if ((v6 & 1) != 0 && (v14 & 0x100000000) != 0 && (v18 & 0x100000000) != 0 && (v20 & 0x100000000) != 0 && (v22 & 0x100000000) != 0 && (v24 & 0x100000000) != 0 && (v26 & 0x100000000) != 0 && (v28 & 0x100000000) != 0 && (v30 & 0x100000000) != 0)
    {
      *a2 = result;
      *(a2 + 8) = v14;
      *(a2 + 12) = v18;
      *(a2 + 16) = v20;
      *(a2 + 20) = v22;
      *(a2 + 24) = v24;
      *(a2 + 28) = v26;
      v31 = 1;
      *(a2 + 32) = v28;
      *(a2 + 36) = v30;
      goto LABEL_49;
    }

    __break(1u);
  }

  v48 = v28;
  v51 = v26;
  v55 = v24;
  v60 = v22;
  v66 = v20;
  v73 = v18;
  v81 = v14;
  v90 = result;
  v99 = v6;
  *a1 = 0;
  *(a1 + 1) = 0;
  v46 = *(a1 + 3);
  if (!v46)
  {
    v7 = 0;
    goto LABEL_102;
  }

  if (v7)
  {
    (*(*v46 + 16))(v46, v15);
    v15 = *a1;
    v7 = *(a1 + 1);
  }

  else
  {
LABEL_102:
    v15 = 0;
  }

  result = v90;
  v6 = v99;
  v14 = v81;
  v20 = v66;
  v18 = v73;
  v24 = v55;
  v22 = v60;
  v28 = v48;
  v26 = v51;
LABEL_104:
  *a1 = 0;
  *(a1 + 1) = 0;
  v47 = *(a1 + 3);
  if (v47)
  {
    if (v7)
    {
      v91 = result;
      v100 = v6;
      v82 = v14;
      v67 = v20;
      v74 = v18;
      v56 = v24;
      v61 = v22;
      v49 = v28;
      v52 = v26;
      (*(*v47 + 16))(v47, v15);
      v28 = v49;
      v26 = v52;
      v24 = v56;
      v22 = v61;
      v20 = v67;
      v18 = v74;
      v14 = v82;
      result = v91;
      v6 = v100;
      v30 = 0;
      v9 = *a1;
      if (*a1)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_105:
  v31 = 0;
  *a2 = 0;
LABEL_49:
  *(a2 + 40) = v31;
  return result;
}

void IPC::ArgumentCoder<WebCore::CAAudioStreamDescription,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<AudioStreamBasicDescription,void>::decode(a1, &v13);
  if ((v14 & 1) == 0)
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
      if (*a1)
      {
        __break(1u);
        return;
      }
    }

LABEL_10:
    *a2 = 0;
    *(a2 + 80) = 0;
    return;
  }

  if (!*a1)
  {
    goto LABEL_10;
  }

  WebCore::CAAudioStreamDescription::CAAudioStreamDescription(v8, &v13);
  *a2 = MEMORY[0x1E69E2E98] + 16;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  *(a2 + 56) = v11;
  *(a2 + 72) = v12;
  *(a2 + 8) = *&v8[8];
  *(a2 + 80) = 1;
  WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(v8);
}

uint64_t IPC::ArgumentCoder<WebCore::Gradient::LinearData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  if ((v6 & 1) == 0 || (v8 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    *a2 = 0;
    goto LABEL_5;
  }

  *a2 = v4;
  *(a2 + 8) = result;
  LOBYTE(v9) = 1;
LABEL_5:
  *(a2 + 16) = v9;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::Gradient::RadialData,void>::encode(uint64_t a1, uint64_t a2)
{
  IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, a2);
  IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, (a2 + 8));
  v4 = IPC::StreamConnectionEncoder::operator<<<float const&>(a1, *(a2 + 16));
  v5 = IPC::StreamConnectionEncoder::operator<<<float const&>(v4, *(a2 + 20));
  v6 = *(a2 + 24);

  return IPC::StreamConnectionEncoder::operator<<<float const&>(v5, v6);
}

unint64_t IPC::ArgumentCoder<WebCore::Gradient::RadialData,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v6 = v5;
  v7 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v9 = v8;
  v10 = IPC::Decoder::decode<float>(a2);
  v11 = IPC::Decoder::decode<float>(a2);
  result = IPC::Decoder::decode<float>(a2);
  v13 = *a2;
  if (!*a2)
  {
    *a1 = 0;
    goto LABEL_8;
  }

  if ((v6 & 1) != 0 && (v9 & 1) != 0 && HIDWORD(v10) && HIDWORD(v11) && HIDWORD(result))
  {
    *a1 = v4;
    *(a1 + 8) = v7;
    *(a1 + 16) = v10;
    *(a1 + 20) = v11;
    LOBYTE(v13) = 1;
    *(a1 + 24) = result;
LABEL_8:
    *(a1 + 28) = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::Gradient,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&>(a1, a2 + 48);
  v4 = *(a2 + 80);
  v7 = *(a2 + 82);
  v6 = v4;
  IPC::ArgumentCoder<WebCore::ColorInterpolationMethod,void>::encode(a1, &v6);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 83));

  return IPC::VectorArgumentCoder<false,WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 88);
}

uint64_t *IPC::ArgumentCoder<WebCore::Gradient,void>::encode(mpark *a1, uint64_t a2)
{
  IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&>(a1, a2 + 48);
  v4 = *(a2 + 80);
  v8 = *(a2 + 82);
  v7 = v4;
  IPC::ArgumentCoder<WebCore::ColorInterpolationMethod,void>::encode(a1, &v7);
  if (!*(a1 + 1))
  {
    goto LABEL_6;
  }

  **a1 = *(a2 + 83);
  v5 = *(a1 + 1);
  if (!v5)
  {
    __break(1u);
LABEL_6:
    *a1 = 0;
    *(a1 + 1) = 0;
    return IPC::VectorArgumentCoder<false,WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 88);
  }

  ++*a1;
  *(a1 + 1) = v5 - 1;
  return IPC::VectorArgumentCoder<false,WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 88);
}

uint64_t IPC::ArgumentCoder<WebCore::Gradient,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::decode<IPC::Decoder>(a1, v13);
  if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = IPC::ArgumentCoder<WebCore::ColorInterpolationMethod,void>::decode(a1) >> 24;
    if (!v4)
    {
      IPC::Decoder::markInvalid(a1);
    }

    v5 = IPC::Decoder::decode<WebCore::GradientSpreadMethod>(a1);
    result = IPC::Decoder::decode<WebCore::GradientColorStops>(a1, v11);
    if (!*a1)
    {
      break;
    }

    if (v14 & 1) != 0 && v4 && (v5 & 0x100) != 0 && (v12)
    {
      WebCore::Gradient::create();
      v8 = v10;
      v10 = 0;
      *a2 = v8;
      *(a2 + 8) = 1;
      result = WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v10, v9);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    IPC::Decoder::markInvalid(a1);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
LABEL_10:
  if (v12 == 1)
  {
    return WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v7);
  }

  return result;
}

void sub_19D72EB2C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::GradientSpreadMethod>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::StoredCredentialsPolicy,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = result;
    IPC::Decoder::markInvalid(a1);
    return v3;
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::GradientColorStops>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::GradientColorStops,void>::decode(a1, a2);
  if ((*(a2 + 56) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D72EBCC(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 56) == 1)
  {
    WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar ***WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(atomic_uchar ***a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    do
    {
      v5 = v3[1];
      if ((v5 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v3[1], a2);
        return a1;
      }

      v6 = v3[1];
      atomic_compare_exchange_strong_explicit(v3 + 1, &v6, (v5 - 2), memory_order_relaxed, memory_order_relaxed);
    }

    while (v6 != v5);
    if (v5 == 3)
    {
      (*(*v3 + 1))(v3);
    }
  }

  return a1;
}

uint64_t IPC::ArgumentCoder<WebCore::PatternParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1));

  return IPC::ArgumentCoder<std::span<double const,6ul>,void>::encode<IPC::Encoder>(a1, (a2 + 8));
}

uint64_t *IPC::ArgumentCoder<WebCore::PatternParameters,void>::encode(uint64_t *result, uint64_t a2)
{
  if (!result[1])
  {
    goto LABEL_10;
  }

  **result = *a2;
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_9;
  }

  v4 = v2 - 1;
  v3 = v2 == 1;
  v5 = (*result + 1);
  *result = v5;
  result[1] = v4;
  if (!v3)
  {
    *v5 = *(a2 + 1);
    v6 = result[1];
    if (!v6)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v7 = v6 - 1;
    v8 = *result + 1;
    *result = v8;
    result[1] = v6 - 1;
    v9 = -v8 & 7 | 0x30;
    if (v7 >= v9)
    {
      v10 = (v8 + (-v8 & 7));
      v11 = *(a2 + 8);
      v12 = *(a2 + 40);
      v10[1] = *(a2 + 24);
      v10[2] = v12;
      *v10 = v11;
      v13 = result[1];
      v14 = v13 >= v9;
      v15 = v13 - v9;
      if (v14)
      {
        *result += v9;
        result[1] = v15;
        return result;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  *result = 0;
  result[1] = 0;
  return result;
}

void *IPC::ArgumentCoder<WebCore::PatternParameters,void>::decode@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *result;
  if (v2 <= &v3[-*result])
  {
    v29 = a2;
    *result = 0;
    result[1] = 0;
    v30 = result;
    v19 = result[3];
    if (v19)
    {
      if (v2)
      {
        (*(*v19 + 16))(v19);
        v4 = *v30;
        v2 = v30[1];
LABEL_36:
        *v30 = 0;
        v30[1] = 0;
        v20 = v30[3];
        if (v20)
        {
          if (v2)
          {
            (*(*v20 + 16))(v20, v4);
            HIDWORD(v28) = 0;
            v4 = *v30;
            v2 = v30[1];
            goto LABEL_40;
          }
        }

        else
        {
          v2 = 0;
        }

        v4 = 0;
        HIDWORD(v28) = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    goto LABEL_36;
  }

  v5 = v3 + 1;
  result[2] = v3 + 1;
  if (!v3)
  {
    v30 = result;
    v29 = a2;
    goto LABEL_36;
  }

  v6 = *v3;
  if (v6 < 2)
  {
    v7 = 1;
    goto LABEL_5;
  }

  HIDWORD(v28) = *v3;
  v30 = result;
  v29 = a2;
LABEL_40:
  *v30 = 0;
  v30[1] = 0;
  v21 = v30[3];
  if (!v21 || !v2)
  {
    v28 = 0;
    v22 = 0;
    v4 = 0;
LABEL_42:
    *v30 = 0;
    v30[1] = 0;
    v23 = v30[3];
    if (v23 && v22)
    {
      (*(*v23 + 16))(v23, v4, v22);
      v27 = 0;
      v4 = *v30;
      v2 = v30[1];
    }

    else
    {
      v2 = 0;
      v4 = 0;
      v27 = 0;
    }

    goto LABEL_45;
  }

  (*(*v21 + 16))(v21, v4);
  v7 = 0;
  result = v30;
  v4 = *v30;
  v2 = v30[1];
  v5 = v30[2];
  a2 = v29;
  v6 = HIDWORD(v28);
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
    v28 = __PAIR64__(v8, v7);
    v29 = a2;
    v22 = 0;
    v25 = result[3];
    *result = 0;
    result[1] = 0;
    v30 = result;
    if (v25 && v2)
    {
      (*(*v25 + 16))(v25);
      v4 = *v30;
      v22 = v30[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_42;
  }

  result[2] = v5 + 1;
  if (!v5)
  {
    v28 = __PAIR64__(v8, v7);
    v30 = result;
    v29 = a2;
    v22 = v2;
    goto LABEL_42;
  }

  v9 = *v5;
  if (v9 < 2)
  {
    v10 = 1;
    goto LABEL_12;
  }

  v27 = *v5;
  v28 = __PAIR64__(v8, v7);
  v30 = result;
  v29 = a2;
LABEL_45:
  *v30 = 0;
  v30[1] = 0;
  v24 = v30[3];
  if (v24)
  {
    if (v2)
    {
      (*(*v24 + 16))(v24, v4);
      v10 = 0;
      result = v30;
      v4 = *v30;
      v2 = v30[1];
      a2 = v29;
      goto LABEL_48;
    }

    v4 = 0;
  }

  else
  {
    v4 = 0;
    v2 = 0;
  }

  v10 = 0;
  a2 = v29;
  result = v30;
LABEL_48:
  v7 = v28;
  v8 = HIDWORD(v28);
  v9 = v27;
LABEL_12:
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v2 < v12 - v4 || v2 - (v12 - v4) <= 0x2F)
  {
    v26 = v10;
    v27 = v11;
    v28 = __PAIR64__(v8, v7);
    v29 = a2;
    *result = 0;
    result[1] = 0;
    v30 = result;
    result = result[3];
    if (result)
    {
      goto LABEL_62;
    }

    v2 = 0;
    goto LABEL_26;
  }

  result[2] = v12 + 3;
  if (!v12)
  {
    v26 = v10;
    v27 = v11;
    v28 = __PAIR64__(v8, v7);
    v30 = result;
    v29 = a2;
    goto LABEL_27;
  }

  if (!v4)
  {
    goto LABEL_31;
  }

  v13 = *v12;
  v14 = v12[1];
  v15 = 1;
  v16 = v12[2];
  if ((v7 & 1) == 0)
  {
    while (1)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      if (v2)
      {
        (*(*result + 16))(result);
        v4 = *v30;
        v2 = v30[1];
      }

      else
      {
LABEL_26:
        v4 = 0;
      }

LABEL_27:
      *v30 = 0;
      v30[1] = 0;
      v18 = v30[3];
      if (v18)
      {
        if (!v2)
        {
          goto LABEL_29;
        }

        result = (*(*v18 + 16))(v18, v4);
        if (!*v30)
        {
          result = v30;
          v2 = v30[1];
          a2 = v29;
          goto LABEL_30;
        }
      }

      else
      {
        v2 = 0;
LABEL_29:
        a2 = v29;
        result = v30;
LABEL_30:
        v7 = v28;
        v8 = HIDWORD(v28);
        v10 = v26;
        v11 = v27;
LABEL_31:
        v28 = __PAIR64__(v8, v7);
        v26 = v10;
        v27 = v11;
        v29 = a2;
        *result = 0;
        result[1] = 0;
        v30 = result;
        result = result[3];
        if (!result || !v2 || (result = (*(*result + 16))(result), !*v30))
        {
          v17 = 0;
          a2 = v29;
          *v29 = 0;
          goto LABEL_23;
        }

        v15 = 0;
        v13 = 0uLL;
        a2 = v29;
        LOBYTE(v8) = BYTE4(v28);
        LOBYTE(v10) = v26;
        LOBYTE(v11) = v27;
        if (v28)
        {
          break;
        }
      }
    }
  }

  if ((v10 & 1) == 0 || (v15 & 1) == 0)
  {
    goto LABEL_61;
  }

  *a2 = v8;
  a2[1] = v11;
  *(a2 + 8) = v13;
  *(a2 + 24) = v14;
  v17 = 1;
  *(a2 + 40) = v16;
LABEL_23:
  a2[56] = v17;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::GraphicsContextGLAttributes,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 1);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 3);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 4);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 5);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[6]);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 7);
  v4 = a2[8];

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::GraphicsContextGLAttributes,void>::decode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a1;
  if (v8 <= &v9[-*a1])
  {
    goto LABEL_67;
  }

  v11 = v9 + 1;
  a1[2] = v9 + 1;
  if (!v9)
  {
    v47 = a1;
    goto LABEL_70;
  }

  v12 = *v9;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_5;
  }

  v171 = v12;
  v47 = a1;
  while (1)
  {
    *v47 = 0;
    v47[1] = 0;
    v53 = v47[3];
    if (!v53 || !v8)
    {
      v166 = 0;
      v159 = 0;
      v54 = 0;
      v10 = 0;
LABEL_88:
      *v47 = 0;
      v47[1] = 0;
      v55 = v47[3];
      if (v55 && v54)
      {
        (*(*v55 + 16))(v55, v10, v54, a4, a5, a6, a7, a8);
        v174 = 0;
        v10 = *v47;
        v8 = v47[1];
      }

      else
      {
        v8 = 0;
        v10 = 0;
        v174 = 0;
      }

      goto LABEL_91;
    }

    (*(*v53 + 16))(v53, v10, v8, a4, a5, a6, a7, a8);
    v13 = 0;
    a1 = v47;
    v10 = *v47;
    v8 = v47[1];
    v11 = v47[2];
    v12 = v171;
LABEL_5:
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 <= &v11[-v10])
    {
      v159 = v13;
      v166 = v14;
      v54 = 0;
      v79 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v47 = a1;
      if (v79 && v8)
      {
        (*(*v79 + 16))(v79);
        v10 = *v47;
        v54 = v47[1];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_88;
    }

    v15 = v11 + 1;
    a1[2] = v11 + 1;
    if (!v11)
    {
      v159 = v13;
      v166 = v14;
      v47 = a1;
      v54 = v8;
      goto LABEL_88;
    }

    v16 = *v11;
    if (v16 < 2)
    {
      v17 = 1;
      goto LABEL_12;
    }

    v174 = *v11;
    v159 = v13;
    v166 = v14;
    v47 = a1;
LABEL_91:
    *v47 = 0;
    v47[1] = 0;
    v56 = v47[3];
    if (!v56 || !v8)
    {
      v152 = 0;
      v57 = 0;
      v10 = 0;
LABEL_93:
      *v47 = 0;
      v47[1] = 0;
      v58 = v47[3];
      if (v58 && v57)
      {
        (*(*v58 + 16))(v58, v10, v57, a4, a5, a6, a7, a8);
        v145 = 0;
        v10 = *v47;
        v8 = v47[1];
      }

      else
      {
        v8 = 0;
        v10 = 0;
        v145 = 0;
      }

      goto LABEL_96;
    }

    (*(*v56 + 16))(v56, v10, v8, a4, a5, a6, a7, a8);
    v17 = 0;
    a1 = v47;
    v10 = *v47;
    v8 = v47[1];
    v15 = v47[2];
    v14 = v166;
    LOBYTE(v13) = v159;
    v16 = v174;
LABEL_12:
    if (v8 <= &v15[-v10])
    {
      v152 = v17;
      v159 = v13;
      v174 = v16;
      v166 = v14;
      v57 = 0;
      v80 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v47 = a1;
      if (v80 && v8)
      {
        (*(*v80 + 16))(v80);
        v10 = *v47;
        v57 = v47[1];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_93;
    }

    v18 = v15 + 1;
    a1[2] = v15 + 1;
    if (!v15)
    {
      v152 = v17;
      v159 = v13;
      v174 = v16;
      v166 = v14;
      v47 = a1;
      v57 = v8;
      goto LABEL_93;
    }

    v19 = *v15;
    if (v19 < 2)
    {
      v20 = 1;
      goto LABEL_16;
    }

    v145 = *v15;
    v152 = v17;
    v174 = v16;
    v159 = v13;
    v166 = v14;
    v47 = a1;
LABEL_96:
    *v47 = 0;
    v47[1] = 0;
    v59 = v47[3];
    if (!v59 || !v8)
    {
      v138 = 0;
      v60 = 0;
      v10 = 0;
LABEL_98:
      *v47 = 0;
      v47[1] = 0;
      v61 = v47[3];
      if (v61 && v60)
      {
        (*(*v61 + 16))(v61, v10, v60, a4, a5, a6, a7, a8);
        v131 = 0;
        v10 = *v47;
        v8 = v47[1];
      }

      else
      {
        v8 = 0;
        v10 = 0;
        v131 = 0;
      }

      goto LABEL_100;
    }

    (*(*v59 + 16))(v59, v10, v8, a4, a5, a6, a7, a8);
    v20 = 0;
    a1 = v47;
    v10 = *v47;
    v8 = v47[1];
    v18 = v47[2];
    v14 = v166;
    v17 = v152;
    LOBYTE(v13) = v159;
    v16 = v174;
    v19 = v145;
LABEL_16:
    if (v8 <= &v18[-v10])
    {
      v138 = v20;
      v145 = v19;
      v152 = v17;
      v174 = v16;
      v159 = v13;
      v166 = v14;
      v60 = 0;
      v81 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v47 = a1;
      if (v81 && v8)
      {
        (*(*v81 + 16))(v81);
        v10 = *v47;
        v60 = v47[1];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_98;
    }

    v21 = v18 + 1;
    a1[2] = v18 + 1;
    if (!v18)
    {
      v138 = v20;
      v145 = v19;
      v152 = v17;
      v174 = v16;
      v159 = v13;
      v166 = v14;
      v47 = a1;
      v60 = v8;
      goto LABEL_98;
    }

    v22 = *v18;
    if (v22 < 2)
    {
      v23 = 1;
      goto LABEL_20;
    }

    v131 = *v18;
    v138 = v20;
    v145 = v19;
    v152 = v17;
    v174 = v16;
    v159 = v13;
    v166 = v14;
    v47 = a1;
LABEL_100:
    *v47 = 0;
    v47[1] = 0;
    v62 = v47[3];
    if (!v62 || !v8)
    {
      v124 = 0;
      v63 = 0;
      v10 = 0;
LABEL_102:
      *v47 = 0;
      v47[1] = 0;
      v64 = v47[3];
      if (v64 && v63)
      {
        (*(*v64 + 16))(v64, v10, v63, a4, a5, a6, a7, a8);
        v117 = 0;
        v10 = *v47;
        v8 = v47[1];
      }

      else
      {
        v8 = 0;
        v10 = 0;
        v117 = 0;
      }

      goto LABEL_104;
    }

    (*(*v62 + 16))(v62, v10, v8, a4, a5, a6, a7, a8);
    v23 = 0;
    a1 = v47;
    v10 = *v47;
    v8 = v47[1];
    v21 = v47[2];
    v14 = v166;
    v17 = v152;
    LOBYTE(v13) = v159;
    v16 = v174;
    v19 = v145;
    v22 = v131;
    v20 = v138;
LABEL_20:
    if (v8 <= &v21[-v10])
    {
      v124 = v23;
      v131 = v22;
      v138 = v20;
      v145 = v19;
      v152 = v17;
      v174 = v16;
      v159 = v13;
      v166 = v14;
      v63 = 0;
      v82 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v47 = a1;
      if (v82 && v8)
      {
        (*(*v82 + 16))(v82);
        v10 = *v47;
        v63 = v47[1];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_102;
    }

    v24 = v21 + 1;
    a1[2] = v21 + 1;
    if (!v21)
    {
      v124 = v23;
      v131 = v22;
      v138 = v20;
      v145 = v19;
      v152 = v17;
      v174 = v16;
      v159 = v13;
      v166 = v14;
      v47 = a1;
      v63 = v8;
      goto LABEL_102;
    }

    a4 = *v21;
    if (a4 < 2)
    {
      v25 = 1;
      goto LABEL_24;
    }

    v117 = *v21;
    v124 = v23;
    v131 = v22;
    v138 = v20;
    v145 = v19;
    v152 = v17;
    v174 = v16;
    v159 = v13;
    v166 = v14;
    v47 = a1;
LABEL_104:
    *v47 = 0;
    v47[1] = 0;
    v65 = v47[3];
    if (!v65 || !v8)
    {
      v110 = 0;
      v66 = 0;
      v10 = 0;
LABEL_106:
      *v47 = 0;
      v47[1] = 0;
      v67 = v47[3];
      if (v67 && v66)
      {
        (*(*v67 + 16))(v67, v10, v66, a4, a5, a6, a7, a8);
        v103 = 0;
        v10 = *v47;
        v8 = v47[1];
      }

      else
      {
        v8 = 0;
        v10 = 0;
        v103 = 0;
      }

      goto LABEL_108;
    }

    (*(*v65 + 16))(v65, v10, v8, a4, a5, a6, a7, a8);
    v25 = 0;
    a1 = v47;
    v10 = *v47;
    v8 = v47[1];
    v24 = v47[2];
    v14 = v166;
    v17 = v152;
    LOBYTE(v13) = v159;
    v16 = v174;
    v19 = v145;
    v22 = v131;
    v20 = v138;
    a4 = v117;
    v23 = v124;
LABEL_24:
    a5 = &v24[-v10];
    if (v8 <= &v24[-v10])
    {
      v110 = v25;
      v117 = a4;
      v124 = v23;
      v131 = v22;
      v138 = v20;
      v145 = v19;
      v152 = v17;
      v174 = v16;
      v159 = v13;
      v166 = v14;
      v66 = 0;
      v83 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v47 = a1;
      if (v83 && v8)
      {
        (*(*v83 + 16))(v83);
        v10 = *v47;
        v66 = v47[1];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_106;
    }

    a5 = (v24 + 1);
    a1[2] = v24 + 1;
    if (!v24)
    {
      v110 = v25;
      v117 = a4;
      v124 = v23;
      v131 = v22;
      v138 = v20;
      v145 = v19;
      v152 = v17;
      v174 = v16;
      v159 = v13;
      v166 = v14;
      v47 = a1;
      v66 = v8;
      goto LABEL_106;
    }

    a6 = *v24;
    if (a6 < 2)
    {
      a5 = 1;
      goto LABEL_28;
    }

    v103 = *v24;
    v110 = v25;
    v117 = a4;
    v124 = v23;
    v131 = v22;
    v138 = v20;
    v145 = v19;
    v152 = v17;
    v174 = v16;
    v159 = v13;
    v166 = v14;
    v47 = a1;
LABEL_108:
    *v47 = 0;
    v47[1] = 0;
    v68 = v47[3];
    if (!v68)
    {
      v10 = 0;
      v96 = 0;
      v8 = 0;
      goto LABEL_110;
    }

    if (!v8)
    {
      v10 = 0;
      v96 = 0;
LABEL_110:
      *v47 = 0;
      v47[1] = 0;
      v69 = v47[3];
      if (v69)
      {
        if (v8)
        {
          (*(*v69 + 16))(v69, v10, v8, a4, a5, a6, a7, a8);
          v10 = *v47;
          v8 = v47[1];
LABEL_113:
          *v47 = 0;
          v47[1] = 0;
          v70 = v47[3];
          if (v70)
          {
            if (v8)
            {
              (*(*v70 + 16))(v70, v10, v8, a4, a5, a6, a7, a8);
              a1 = v47;
              v10 = *v47;
              v8 = v47[1];
              goto LABEL_116;
            }
          }

          else
          {
            v8 = 0;
          }

          v10 = 0;
          a1 = v47;
LABEL_116:
          v14 = v166;
          v17 = v152;
          LOBYTE(v13) = v159;
          v16 = v174;
          v19 = v145;
          v22 = v131;
          v20 = v138;
          a4 = v117;
          v23 = v124;
          a6 = v103;
          v25 = v110;
          a5 = v96;
          goto LABEL_117;
        }
      }

      else
      {
        v8 = 0;
      }

      v10 = 0;
      goto LABEL_113;
    }

    (*(*v68 + 16))(v68, v10, v8, a4, a5, a6, a7, a8);
    a5 = 0;
    a1 = v47;
    v10 = *v47;
    v8 = v47[1];
    v14 = v166;
    v17 = v152;
    LOBYTE(v13) = v159;
    v16 = v174;
    v19 = v145;
    v22 = v131;
    v20 = v138;
    a4 = v117;
    v23 = v124;
    a6 = v103;
    v25 = v110;
LABEL_28:
    v26 = a1[2];
    a7 = &v26[-v10];
    if (v8 <= &v26[-v10])
    {
      v96 = a5;
      v103 = a6;
      v110 = v25;
      v117 = a4;
      v124 = v23;
      v131 = v22;
      v138 = v20;
      v145 = v19;
      v152 = v17;
      v174 = v16;
      v159 = v13;
      v166 = v14;
      v47 = a1;
      goto LABEL_110;
    }

    a7 = v26 + 1;
    a1[2] = v26 + 1;
    if (!v26)
    {
      v96 = a5;
      v103 = a6;
      v110 = v25;
      v117 = a4;
      v124 = v23;
      v131 = v22;
      v138 = v20;
      v145 = v19;
      v152 = v17;
      v174 = v16;
      v159 = v13;
      v166 = v14;
      v47 = a1;
      goto LABEL_113;
    }

    v27 = *v26;
    if (v27 < 3)
    {
      a7 = (v27 | 0x100);
      goto LABEL_32;
    }

LABEL_117:
    *a1 = 0;
    a1[1] = 0;
    v71 = a1[3];
    if (!v71)
    {
      v10 = 0;
      a7 = 0;
      v8 = 0;
      goto LABEL_119;
    }

    v97 = a5;
    v104 = a6;
    v111 = v25;
    v118 = a4;
    v125 = v23;
    v132 = v22;
    v139 = v20;
    v146 = v19;
    v153 = v17;
    v175 = v16;
    v160 = v13;
    v167 = v14;
    v75 = a1;
    if (!v8)
    {
      v10 = 0;
      a7 = 0;
      a4 = a4;
      a6 = a6;
      a5 = a5;
LABEL_119:
      *a1 = 0;
      a1[1] = 0;
      v72 = a1[3];
      if (v72)
      {
        v93 = a7;
        v100 = a5;
        v107 = a6;
        v114 = v25;
        v121 = a4;
        v128 = v23;
        v135 = v22;
        v142 = v20;
        v149 = v19;
        v156 = v17;
        v178 = v16;
        v163 = v13;
        v170 = v14;
        v78 = a1;
        if (v8)
        {
          (*(*v72 + 16))(v72, v10);
          a1 = v78;
          v10 = *v78;
          v8 = v78[1];
        }

        else
        {
          v10 = 0;
        }

        v14 = v170;
        v17 = v156;
        LOBYTE(v13) = v163;
        v16 = v178;
        v19 = v149;
        v22 = v135;
        v20 = v142;
        a4 = v121;
        v23 = v128;
        a6 = v107;
        v25 = v114;
        a7 = v93;
        a5 = v100;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

LABEL_121:
      *a1 = 0;
      a1[1] = 0;
      v73 = a1[3];
      if (v73)
      {
        v92 = a7;
        v99 = a5;
        v106 = a6;
        v113 = v25;
        v120 = a4;
        v127 = v23;
        v134 = v22;
        v141 = v20;
        v148 = v19;
        v155 = v17;
        v177 = v16;
        v162 = v13;
        v169 = v14;
        v77 = a1;
        if (v8)
        {
          (*(*v73 + 16))(v73, v10);
          a8 = 0;
          a1 = v77;
          v10 = *v77;
          v8 = v77[1];
        }

        else
        {
          v10 = 0;
          a8 = 0;
        }

        v14 = v169;
        v17 = v155;
        LOBYTE(v13) = v162;
        v16 = v177;
        v19 = v148;
        v22 = v134;
        v20 = v141;
        a4 = v120;
        v23 = v127;
        a6 = v106;
        v25 = v113;
        a7 = v92;
        a5 = v99;
      }

      else
      {
        v8 = 0;
        v10 = 0;
        a8 = 0;
      }

      goto LABEL_123;
    }

    (*(*v71 + 16))(v71, v10);
    a7 = 0;
    a1 = v75;
    v10 = *v75;
    v8 = v75[1];
    v14 = v167;
    v17 = v153;
    LOBYTE(v13) = v160;
    v16 = v175;
    v19 = v146;
    v22 = v132;
    v20 = v139;
    a4 = v118;
    v23 = v125;
    a6 = v104;
    v25 = v111;
    a5 = v97;
LABEL_32:
    v28 = a1[2];
    if (v8 <= &v28[-v10])
    {
      goto LABEL_119;
    }

    v29 = v28 + 1;
    a1[2] = v28 + 1;
    if (!v28)
    {
      goto LABEL_121;
    }

    a8 = *v28;
    if (a8 < 2)
    {
      v30 = 1;
      goto LABEL_36;
    }

LABEL_123:
    *a1 = 0;
    a1[1] = 0;
    v74 = a1[3];
    if (v74)
    {
      v88 = a8;
      v91 = a7;
      v98 = a5;
      v105 = a6;
      v112 = v25;
      v119 = a4;
      v126 = v23;
      v133 = v22;
      v140 = v20;
      v147 = v19;
      v154 = v17;
      v176 = v16;
      v161 = v13;
      v168 = v14;
      v76 = a1;
      if (v8)
      {
        (*(*v74 + 16))(v74, v10);
        a1 = v76;
        v10 = *v76;
        v8 = v76[1];
      }

      else
      {
        v10 = 0;
      }

      v14 = v168;
      v17 = v154;
      LOBYTE(v13) = v161;
      v16 = v176;
      v19 = v147;
      v22 = v133;
      v20 = v140;
      a4 = v119;
      v23 = v126;
      a6 = v105;
      v25 = v112;
      a7 = v91;
      a5 = v98;
      a8 = v88;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v30 = 0;
    v29 = a1[2];
LABEL_36:
    if (v8 <= &v29[-v10])
    {
      v86 = a8;
      v89 = a7;
      v94 = a5;
      v101 = a6;
      v108 = v25;
      v115 = a4;
      v122 = v23;
      v129 = v22;
      v136 = v20;
      v143 = v19;
      v150 = v17;
      v172 = v16;
      v157 = v13;
      v164 = v14;
      *a1 = 0;
      a1[1] = 0;
      v84 = a1;
      v50 = a1[3];
      if (v50)
      {
        if (v8)
        {
          (*(*v50 + 16))(v50);
          v10 = *v84;
          v8 = v84[1];
LABEL_76:
          *v84 = 0;
          v84[1] = 0;
          v51 = v84[3];
          if (v51)
          {
            if (v8)
            {
              (*(*v51 + 16))(v51, v10);
              a1 = v84;
              v10 = *v84;
              v8 = v84[1];
              goto LABEL_79;
            }
          }

          else
          {
            v8 = 0;
          }

          v10 = 0;
          a1 = v84;
LABEL_79:
          v14 = v164;
          v17 = v150;
          LOBYTE(v13) = v157;
          v16 = v172;
          v19 = v143;
          v22 = v129;
          v20 = v136;
          LODWORD(a4) = v115;
          v23 = v122;
          LODWORD(a6) = v101;
          v25 = v108;
          LODWORD(a7) = v89;
          LODWORD(a5) = v94;
          LODWORD(a8) = v86;
          goto LABEL_80;
        }
      }

      else
      {
        v8 = 0;
      }

      v10 = 0;
      goto LABEL_76;
    }

    a1[2] = v29 + 1;
    if (!v29)
    {
      v86 = a8;
      v89 = a7;
      v94 = a5;
      v101 = a6;
      v108 = v25;
      v115 = a4;
      v122 = v23;
      v129 = v22;
      v136 = v20;
      v143 = v19;
      v150 = v17;
      v172 = v16;
      v157 = v13;
      v164 = v14;
      v84 = a1;
      goto LABEL_76;
    }

    v31 = *v29;
    if (v31 < 4)
    {
      v32 = v31 | 0x100;
      if (!v10)
      {
        goto LABEL_81;
      }

      goto LABEL_40;
    }

LABEL_80:
    *a1 = 0;
    a1[1] = 0;
    v52 = a1[3];
    if (!v52)
    {
      goto LABEL_81;
    }

    v87 = a8;
    v90 = a7;
    v95 = a5;
    v102 = a6;
    v109 = v25;
    v116 = a4;
    v123 = v23;
    v130 = v22;
    v137 = v20;
    v144 = v19;
    v151 = v17;
    v173 = v16;
    v158 = v13;
    v165 = v14;
    v85 = a1;
    if (!v8)
    {
      break;
    }

    a1 = (*(*v52 + 16))(v52, v10);
    v32 = 0;
    v14 = v165;
    v17 = v151;
    LOBYTE(v13) = v158;
    v16 = v173;
    v19 = v144;
    v22 = v130;
    v20 = v137;
    a4 = v116;
    v23 = v123;
    a6 = v102;
    v25 = v109;
    a7 = v90;
    a5 = v95;
    a8 = v87;
    if (!*v85)
    {
LABEL_81:
      v14 = 0;
      goto LABEL_49;
    }

LABEL_40:
    if ((v13 & 1) != 0 && (v17 & 1) != 0 && (v20 & 1) != 0 && (v23 & 1) != 0 && (v25 & 1) != 0 && (a5 & 1) != 0 && a7 > 0xFF && (v30 & 1) != 0 && v32 > 0xFF)
    {
      goto LABEL_49;
    }

    __break(1u);
LABEL_67:
    *a1 = 0;
    a1[1] = 0;
    v47 = a1;
    v48 = a1[3];
    if (!v48)
    {
      v8 = 0;
LABEL_69:
      v10 = 0;
      goto LABEL_70;
    }

    if (!v8)
    {
      goto LABEL_69;
    }

    (*(*v48 + 16))(v48);
    v10 = *v47;
    v8 = v47[1];
LABEL_70:
    *v47 = 0;
    v47[1] = 0;
    v49 = v47[3];
    if (!v49)
    {
      v8 = 0;
      goto LABEL_72;
    }

    if (v8)
    {
      (*(*v49 + 16))(v49, v10, v8, a4, a5, a6, a7, a8);
      v171 = 0;
      v10 = *v47;
      v8 = v47[1];
    }

    else
    {
LABEL_72:
      v10 = 0;
      v171 = 0;
    }
  }

  v14 = 0;
LABEL_49:
  v33 = v22 != 0;
  v34 = v19 != 0;
  v35 = v16 != 0;
  v36 = 0x100000000000000;
  if ((v30 & (a8 != 0)) == 0)
  {
    v36 = 0;
  }

  v37 = v36 | (a7 << 48);
  v38 = 0x10000000000;
  if ((a5 & (a6 != 0)) == 0)
  {
    v38 = 0;
  }

  v39 = (v25 & (a4 != 0)) == 0;
  v40 = 0x100000000;
  if (v39)
  {
    v40 = 0;
  }

  v41 = v38 | v40;
  v39 = (v23 & v33) == 0;
  v42 = 0x1000000;
  if (v39)
  {
    v42 = 0;
  }

  v43 = v37 | v41 | v42;
  v39 = (v20 & v34) == 0;
  v44 = 0x10000;
  if (v39)
  {
    v44 = 0;
  }

  v39 = (v17 & v35) == 0;
  v45 = 256;
  if (v39)
  {
    v45 = 0;
  }

  return v14 | v44 | v45 | v43;
}