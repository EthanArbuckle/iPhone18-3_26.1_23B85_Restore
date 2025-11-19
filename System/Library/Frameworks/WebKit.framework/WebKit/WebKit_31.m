void sub_19D745F70(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, WTF::StringImpl *a17, char a18)
{
  if (*(v18 - 40))
  {
    v20 = *(v18 - 48);
    *(v18 - 48) = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, a2);
      }
    }
  }

  if (a13 == 1)
  {
    WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::MediaEngineSupportParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  v5 = *(a2 + 8);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 56));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 57));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 58));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 59));
  IPC::VectorArgumentCoder<false,WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 64));
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 80);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 104);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 128);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 152);
  return IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 176);
}

void IPC::ArgumentCoder<WebCore::MediaEngineSupportParameters,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebCore::ContentType>(&v86, a1);
  IPC::Decoder::decode<WTF::URL>(a1, &v82);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
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

LABEL_76:
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33)
    {
      if (v4)
      {
        (*(*v33 + 16))(v33);
        v8 = 0;
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_79;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v8 = 0;
    goto LABEL_79;
  }

  v7 = v5 + 1;
  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_76;
  }

  v8 = *v5;
  if (v8 < 2)
  {
    v9 = 1;
    goto LABEL_5;
  }

LABEL_79:
  *a1 = 0;
  *(a1 + 1) = 0;
  v34 = *(a1 + 3);
  if (!v34 || !v4)
  {
    v10 = 0;
    v9 = 0;
    v35 = 0;
    v6 = 0;
LABEL_81:
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36 && v35)
    {
      (*(*v36 + 16))(v36, v6, v35);
      v12 = 0;
      v6 = *a1;
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v12 = 0;
    }

    goto LABEL_83;
  }

  (*(*v34 + 16))(v34, v6);
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
    v35 = 0;
    v44 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v44 && v4)
    {
      (*(*v44 + 16))(v44);
      v6 = *a1;
      v35 = *(a1 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_81;
  }

  v11 = v7 + 1;
  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
    v35 = v4;
    goto LABEL_81;
  }

  v12 = *v7;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_12;
  }

LABEL_83:
  *a1 = 0;
  *(a1 + 1) = 0;
  v37 = *(a1 + 3);
  if (!v37 || !v4)
  {
    v14 = 0;
    v13 = 0;
    v38 = 0;
    v6 = 0;
LABEL_85:
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (v39 && v38)
    {
      (*(*v39 + 16))(v39, v6, v38);
      v16 = 0;
      v6 = *a1;
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v16 = 0;
    }

    goto LABEL_87;
  }

  (*(*v37 + 16))(v37, v6);
  v13 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
  v11 = *(a1 + 2);
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
    v38 = 0;
    v45 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v45 && v4)
    {
      (*(*v45 + 16))(v45);
      v6 = *a1;
      v38 = *(a1 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_85;
  }

  v15 = v11 + 1;
  *(a1 + 2) = v11 + 1;
  if (!v11)
  {
    v38 = v4;
    goto LABEL_85;
  }

  v16 = *v11;
  if (v16 < 2)
  {
    v17 = 1;
    goto LABEL_19;
  }

LABEL_87:
  *a1 = 0;
  *(a1 + 1) = 0;
  v40 = *(a1 + 3);
  if (!v40 || !v4)
  {
    v18 = 0;
    v17 = 0;
    v41 = 0;
    v6 = 0;
LABEL_89:
    *a1 = 0;
    *(a1 + 1) = 0;
    v42 = *(a1 + 3);
    if (v42 && v41)
    {
      (*(*v42 + 16))(v42, v6, v41);
      v19 = 0;
      v6 = *a1;
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v19 = 0;
    }

    goto LABEL_91;
  }

  (*(*v40 + 16))(v40, v6);
  v17 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
  v15 = *(a1 + 2);
LABEL_19:
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v4 <= &v15[-v6])
  {
    v41 = 0;
    v46 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v46 && v4)
    {
      (*(*v46 + 16))(v46);
      v6 = *a1;
      v41 = *(a1 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_89;
  }

  *(a1 + 2) = v15 + 1;
  if (!v15)
  {
    v41 = v4;
    goto LABEL_89;
  }

  v19 = *v15;
  if (v19 < 2)
  {
    v20 = 1;
    goto LABEL_26;
  }

LABEL_91:
  *a1 = 0;
  *(a1 + 1) = 0;
  v43 = *(a1 + 3);
  if (v43 && v4)
  {
    (*(*v43 + 16))(v43, v6);
  }

  v20 = 0;
LABEL_26:
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  IPC::Decoder::decode<WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v79, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v77, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v75, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v71, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v67, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v63, a1);
  if (!*a1)
  {
    goto LABEL_73;
  }

  if ((v88 & 1) == 0 || (v23 = v86, v86 = 0, v47 = v23, v48 = v87, (v85 & 1) == 0) || (v24 = v82, v82 = 0, v49 = v24, v50 = v83, v51 = v84, LODWORD(v83) = v83 & 0xFFFFFFFE, (v9 & 1) == 0) || (v52 = v10, (v13 & 1) == 0) || (v53 = v14, (v17 & 1) == 0) || (v54 = v18, (v20 & 1) == 0) || (v55 = v21, (v81 & 1) == 0) || (v56 = v79, v25 = v80, v79 = 0, v80 = 0, v57 = v25, (v78 & 1) == 0) || (std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v58, v77), (v76 & 1) == 0) || (std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v59, v75), (v74 & 1) == 0) || (std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v60, &v71), (v70 & 1) == 0) || (std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v61, &v67), (v66 & 1) == 0))
  {
    __break(1u);
LABEL_73:
    *a2 = 0;
    a2[200] = 0;
    goto LABEL_43;
  }

  std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v62, &v63);
  WebCore::MediaEngineSupportParameters::MediaEngineSupportParameters(a2, &v47);
  a2[200] = 1;
  WebCore::MediaEngineSupportParameters::~MediaEngineSupportParameters(&v47, v26);
LABEL_43:
  if (v66 == 1 && v65 == 1)
  {
    v27 = v63;
    if (v63)
    {
      v63 = 0;
      v64 = 0;
      WTF::fastFree(v27, v22);
    }
  }

  if (v70 == 1 && v69 == 1)
  {
    v28 = v67;
    if (v67)
    {
      v67 = 0;
      v68 = 0;
      WTF::fastFree(v28, v22);
    }
  }

  if (v74 == 1 && v73 == 1)
  {
    v29 = v71;
    if (v71)
    {
      v71 = 0;
      v72 = 0;
      WTF::fastFree(v29, v22);
    }
  }

  if (v76 == 1 && v75[16] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v75, v22);
  }

  if (v78 == 1 && v77[16] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v77, v22);
  }

  if (v81 == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79, v22);
  }

  if (v85 == 1)
  {
    v30 = v82;
    v82 = 0;
    if (v30)
    {
      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v22);
      }
    }
  }

  if (v88 == 1)
  {
    v31 = v86;
    if (v86)
    {
      if (atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v22);
      }
    }
  }
}

void sub_19D7468B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, WTF *a25, int a26, int a27, char a28, WTF *a29, int a30, int a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, WTF *a36, int a37, int a38, char a39, int a40, __int16 a41, char a42, char a43, WTF *a44, int a45, int a46, char a47, int a48, __int16 a49, char a50, char a51, WTF *a52, int a53, int a54, char a55, int a56, __int16 a57, char a58, char a59)
{
  if (*(v59 - 120) == 1)
  {
    v60 = *(v59 - 160);
    *(v59 - 160) = 0;
    if (v60)
    {
      if (atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v60, a2);
      }
    }
  }

  if (*(v59 - 96) == 1)
  {
    v62 = *(v59 - 112);
    if (v62)
    {
      if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v62, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ContentType>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::ContentType,void>::decode(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
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

uint64_t IPC::ArgumentCoder<WebCore::SeekTarget,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, a2);
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, a2 + 2);

  return IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, a2 + 4);
}

uint64_t IPC::ArgumentCoder<WebCore::SeekTarget,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::MediaTime>(a1, &v11);
  IPC::Decoder::decode<WTF::MediaTime>(a1, &v9);
  result = IPC::Decoder::decode<WTF::MediaTime>(a1, &v7);
  if (!*a1)
  {
    goto LABEL_8;
  }

  if ((v12 & 1) == 0 || (v10 & 1) == 0 || (v8 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    *a2 = 0;
    *(a2 + 48) = 0;
    return result;
  }

  v5 = v9;
  v6 = v7;
  *a2 = v11;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = 1;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::MediaPlayerLoadOptions,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  v5 = *(a2 + 8);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 17));
  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 18));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::MediaPlayerLoadOptions,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WebCore::ContentType>(&v36, a1);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    goto LABEL_26;
  }

  v8 = v6 + 1;
  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_28;
  }

  v9 = *v6;
  if (v9 < 2)
  {
    v10 = 1;
    goto LABEL_5;
  }

  v34 = *v6;
  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (!v21 || !v5)
    {
      v32 = 0;
      v22 = 0;
      v7 = 0;
LABEL_34:
      *a1 = 0;
      *(a1 + 1) = 0;
      v23 = *(a1 + 3);
      if (v23 && v22)
      {
        (*(*v23 + 16))(v23, v7, v22);
        v30 = 0;
        v7 = *a1;
        v5 = *(a1 + 1);
      }

      else
      {
        v5 = 0;
        v7 = 0;
        v30 = 0;
      }

      goto LABEL_37;
    }

    result = (*(*v21 + 16))(v21, v7);
    v10 = 0;
    v7 = *a1;
    v5 = *(a1 + 1);
    v8 = *(a1 + 2);
    v9 = v34;
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
      LOBYTE(v32) = v10;
      BYTE4(v32) = v11;
      v22 = 0;
      v27 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v27 && v5)
      {
        (*(*v27 + 16))(v27);
        v7 = *a1;
        v22 = *(a1 + 1);
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_34;
    }

    *(a1 + 2) = v8 + 1;
    if (!v8)
    {
      LOBYTE(v32) = v10;
      BYTE4(v32) = v11;
      v22 = v5;
      goto LABEL_34;
    }

    v12 = *v8;
    if (v12 < 2)
    {
      v13 = 1;
      goto LABEL_12;
    }

    v30 = *v8;
    LOBYTE(v32) = v10;
    BYTE4(v32) = v11;
LABEL_37:
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (!v24)
    {
      v7 = 0;
      v28 = 0;
      v5 = 0;
      goto LABEL_39;
    }

    if (!v5)
    {
      break;
    }

    result = (*(*v24 + 16))(v24, v7);
    v13 = 0;
    v7 = *a1;
    v5 = *(a1 + 1);
    v10 = v32;
    v11 = BYTE4(v32);
    v12 = v30;
LABEL_12:
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 2);
    if (v5 <= v15 - v7)
    {
      LOBYTE(v28) = v13;
      BYTE4(v28) = v14;
      LOBYTE(v32) = v10;
      BYTE4(v32) = v11;
      goto LABEL_39;
    }

    *(a1 + 2) = v15 + 1;
    if (!v15)
    {
      LOBYTE(v28) = v13;
      BYTE4(v28) = v14;
      LOBYTE(v32) = v10;
      BYTE4(v32) = v11;
      goto LABEL_42;
    }

    v16 = *v15;
    if (v16 >= 0x10)
    {
      goto LABEL_46;
    }

    v17 = v16 | 0x100;
    if (!v7)
    {
      goto LABEL_47;
    }

LABEL_19:
    if ((v38 & 1) != 0 && (v10 & 1) != 0 && (v13 & 1) != 0 && v17 > 0xFF)
    {
      v18 = v37;
      *a2 = v36;
      *(a2 + 8) = v18;
      *(a2 + 16) = v11;
      *(a2 + 17) = v14;
      *(a2 + 18) = v17;
      *(a2 + 24) = 1;
      return result;
    }

    __break(1u);
LABEL_26:
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19)
    {
      if (v5)
      {
        (*(*v19 + 16))(v19);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_28:
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (!v20)
    {
      v5 = 0;
      goto LABEL_30;
    }

    if (v5)
    {
      (*(*v20 + 16))(v20);
      v34 = 0;
      v7 = *a1;
      v5 = *(a1 + 1);
    }

    else
    {
LABEL_30:
      v7 = 0;
      v34 = 0;
    }
  }

  v7 = 0;
  v28 = 0;
LABEL_39:
  *a1 = 0;
  *(a1 + 1) = 0;
  v25 = *(a1 + 3);
  if (!v25)
  {
    v5 = 0;
LABEL_41:
    v7 = 0;
    goto LABEL_42;
  }

  if (!v5)
  {
    goto LABEL_41;
  }

  (*(*v25 + 16))(v25, v7);
  v7 = *a1;
  v5 = *(a1 + 1);
LABEL_42:
  *a1 = 0;
  *(a1 + 1) = 0;
  v26 = *(a1 + 3);
  if (!v26)
  {
    v5 = 0;
    goto LABEL_44;
  }

  if (v5)
  {
    (*(*v26 + 16))(v26, v7);
    v7 = *a1;
    v5 = *(a1 + 1);
  }

  else
  {
LABEL_44:
    v7 = 0;
  }

  v10 = v32;
  v11 = BYTE4(v32);
  v13 = v28;
  v14 = BYTE4(v28);
LABEL_46:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v5)
    {
      v29 = v13;
      v31 = v14;
      v33 = v10;
      v35 = v11;
      result = (*(*result + 16))(result, v7);
      v17 = 0;
      v7 = *a1;
      v10 = v33;
      v11 = v35;
      v13 = v29;
      v14 = v31;
      if (*a1)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_47:
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v38)
  {
    result = v36;
    if (v36)
    {
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void sub_19D747144(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, char a14)
{
  if (a14 == 1 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::GeolocationPositionData,void>::encode(IPC::Encoder *a1, double *a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, (a2 + 4));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, (a2 + 6));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, (a2 + 10));

  return IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, (a2 + 12));
}

IPC::Decoder *IPC::ArgumentCoder<WebCore::GeolocationPositionData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<unsigned long long>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<unsigned long long>(a1);
  v9 = v8;
  v10 = IPC::Decoder::decode<unsigned long long>(a1);
  v12 = v11;
  v13 = IPC::Decoder::decode<unsigned long long>(a1);
  v15 = v14;
  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v44);
  if ((v45 & 1) == 0)
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
        (*(*v24 + 16))(v24, v22);
      }
    }
  }

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v42);
  if ((v43 & 1) == 0)
  {
    v25 = *a1;
    v26 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27)
    {
      if (v26)
      {
        (*(*v27 + 16))(v27, v25);
      }
    }
  }

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v40);
  if ((v41 & 1) == 0)
  {
    v28 = *a1;
    v29 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (v30)
    {
      if (v29)
      {
        (*(*v30 + 16))(v30, v28);
      }
    }
  }

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v38);
  if ((v39 & 1) == 0)
  {
    v31 = *a1;
    v32 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33)
    {
      if (v32)
      {
        (*(*v33 + 16))(v33, v31);
      }
    }
  }

  result = IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v36);
  if ((v37 & 1) == 0)
  {
    v34 = *a1;
    v35 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v35)
      {
        result = (*(*result + 16))(result, v34);
      }
    }
  }

  v17 = *a1;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if ((v6 & 1) == 0 || (v9 & 1) == 0 || (v12 & 1) == 0 || (v15 & 1) == 0 || (LOBYTE(v17) = v45, (v45 & 1) == 0) || (LOBYTE(v17) = v43, (v43 & 1) == 0) || (LOBYTE(v17) = v41, (v41 & 1) == 0) || (LOBYTE(v17) = v39, (v39 & 1) == 0) || (LOBYTE(v17) = v37, (v37 & 1) == 0))
  {
    __break(1u);
LABEL_34:
    *a2 = 0;
    goto LABEL_17;
  }

  v18 = v44;
  v19 = v42;
  v20 = v40;
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v13;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  v21 = v38;
  *(a2 + 64) = v20;
  *(a2 + 80) = v21;
  LOBYTE(v17) = 1;
  *(a2 + 96) = v36;
LABEL_17:
  *(a2 + 112) = v17;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::AppHighlight,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FragmentedSharedBuffer,void>::encode(a1, *a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, a2 + 8);
  v5 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v6 = *(a2 + 25);
  return IPC::Encoder::operator<<<BOOL>(a1, &v6);
}

uint64_t IPC::ArgumentCoder<WebCore::AppHighlight,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>(a1, &v14);
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v11);
  v4 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a1);
  result = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a1);
  if (!*a1)
  {
LABEL_21:
    *a2 = 0;
    *(a2 + 32) = 0;
    if ((v13 & 1) == 0 || (v12 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_20;
  }

  v7 = v14;
  v14 = 0;
  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  v8 = v12;
  if (v12 == 1)
  {
    v9 = v11;
    v11 = 0;
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = 0;
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((result & 0x100) == 0)
  {
    goto LABEL_20;
  }

  *a2 = v7;
  v10 = v4 | (result << 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (!v8)
  {
    *(a2 + 24) = v10;
    *(a2 + 32) = 1;
    goto LABEL_15;
  }

  *(a2 + 8) = v9;
  *(a2 + 16) = 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = 1;
LABEL_12:
  result = v11;
  v11 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v6);
  }

LABEL_15:
  if (v15 == 1)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (result + 8));
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void sub_19D747688(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11, int a12, __int16 a13, char a14, char a15, unsigned int *a16, char a17)
{
  if (a13 == 1 && a11 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a17 == 1 && a16 && atomic_fetch_add(a16 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a16 + 2);
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::MediaDeviceHashSalts,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
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

void sub_19D747804(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<WebCore::SpeechRecognitionUpdate,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  v5 = *(a2 + 32);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 16, v5);
}

uint64_t IPC::ArgumentCoder<WebCore::SpeechRecognitionUpdate,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v5 = v4;
  updated = IPC::Decoder::decode<WebCore::SpeechRecognitionUpdateType>(a1);
  result = IPC::Decoder::decode<mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, v16, v7);
  if (*a1)
  {
    if (v5 & 1) != 0 && (updated & 0x100) != 0 && (v17)
    {
      mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(v12, v16);
      WebCore::SpeechRecognitionUpdate::SpeechRecognitionUpdate();
      *a2 = v13;
      *(a2 + 8) = v14;
      mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor((a2 + 16), v15);
      *(a2 + 40) = 1;
      mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v15, v10);
      result = mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v12, v11);
      goto LABEL_6;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 40) = 0;
LABEL_6:
  if (v17 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v16, v9);
  }

  return result;
}

void sub_19D747990(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v20 + 16, a2);
  mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&a9, v22);
  if (a20 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&a17, v23);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WebCore::SpeechRecognitionUpdateType>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::SpeechRecognitionUpdateType,void>::decode<IPC::Decoder>(a1);
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

IPC::Decoder *IPC::Decoder::decode<mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result = IPC::ArgumentCoder<mpark::variant<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2, a3);
  if ((*(a2 + 24) & 1) == 0)
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      return (*(*result + 16))(result, v6);
    }
  }

  return result;
}

void sub_19D747AB4(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 24) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ARKitBadgeSystemImage,void>::encode(IPC::Encoder *a1, WebCore::ARKitBadgeSystemImage *this)
{
  v4 = WebCore::ARKitBadgeSystemImage::imageIdentifier(this);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 8));
  v5 = *(this + 9);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v5);
}

uint64_t IPC::ArgumentCoder<WebCore::ARKitBadgeSystemImage,void>::encode(uint64_t a1, WebCore::ARKitBadgeSystemImage *this)
{
  v4 = WebCore::ARKitBadgeSystemImage::imageIdentifier(this);
  v5 = -*a1;
  v6 = v5 & 7 | 8;
  if (*(a1 + 8) >= v6)
  {
    *(*a1 + (v5 & 7)) = v4;
    v7 = *(a1 + 8);
    v8 = v7 >= v6;
    v9 = v7 - v6;
    if (v8)
    {
      *a1 += v6;
      *(a1 + 8) = v9;
      goto LABEL_5;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
LABEL_5:

  return IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, this + 8);
}

uint64_t IPC::Decoder::decode<WebCore::VideoFrameRotation>(uint64_t *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::VideoFrameRotation,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
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
      v8 = v2;
      (*(*v6 + 16))(v6, v4);
      v2 = v8;
    }
  }

  return v2 & 0xFFFFFF;
}

mpark *IPC::ArgumentCoder<WebCore::GradientColorStop,void>::encode(IPC::Encoder *a1, float *a2)
{
  v3 = (a2 + 2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);

  return IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, v3);
}

uint64_t *IPC::ArgumentCoder<WebCore::GradientColorStop,void>::encode(uint64_t *a1, _DWORD *a2)
{
  v2 = -*a1;
  v3 = v2 & 3 | 4;
  if (a1[1] < v3)
  {
    goto LABEL_6;
  }

  *(*a1 + (v2 & 3)) = *a2;
  v4 = a1[1];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    __break(1u);
LABEL_6:
    *a1 = 0;
    a1[1] = 0;
    return IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 2));
  }

  *a1 += v3;
  a1[1] = v6;
  return IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 2));
}

uint64_t IPC::ArgumentCoder<WebCore::GradientColorStops,void>::decode@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v6 = *(this + 1);
  v7 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7 - *this;
  v9 = v6 >= v8;
  v10 = v6 - v8;
  if (!v9 || v10 <= 7)
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_41;
  }

  *(this + 2) = v7 + 1;
  if (v7)
  {
    v2 = *v7;
    v27 = v29;
    v3 = 2;
    v28 = 2;
    if (v2 >= 0x10000)
    {
      goto LABEL_29;
    }

    if (v2 < 3)
    {
      if (v2)
      {
        goto LABEL_10;
      }

LABEL_17:
      v2 = v32;
      v31[0] = v32;
      v31[1] = v3;
      WTF::VectorBuffer<WebCore::GradientColorStop,2ul,WTF::FastMalloc>::adopt(v31, &v27);
      v33 = 1;
      goto LABEL_18;
    }

    LODWORD(v28) = v2;
    v27 = WTF::fastMalloc((16 * v2));
    while (1)
    {
LABEL_10:
      IPC::Decoder::decode<WebCore::GradientColorStop>(&v34, this);
      if ((v36 & 1) == 0)
      {
        LOBYTE(v31[0]) = 0;
        v33 = 0;
        goto LABEL_18;
      }

      v13 = HIDWORD(v28);
      if (HIDWORD(v28) != v28)
      {
        break;
      }

      WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::GradientColorStop>(&v27, &v34);
      if (v36)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (!--v2)
      {
        goto LABEL_17;
      }
    }

    v14 = &v27[16 * HIDWORD(v28)];
    *v14 = v34;
    *(v14 + 1) = 0;
    if (v14 != &v34)
    {
      v15 = v35;
      v35 = 0;
      *(v14 + 1) = v15;
    }

    HIDWORD(v28) = v13 + 1;
LABEL_15:
    if ((v35 & 0x8000000000000) != 0)
    {
      v20 = (v35 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v35 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v20);
        WTF::fastFree(v20, v12);
      }
    }

    goto LABEL_16;
  }

LABEL_41:
  IPC::Decoder::markInvalid(this);
  LOBYTE(v31[0]) = 0;
  v33 = 0;
LABEL_42:
  result = IPC::Decoder::markInvalid(this);
  while (*this)
  {
    if (v33)
    {
      v25[0] = &v26;
      v25[1] = 2;
      WTF::VectorBuffer<WebCore::GradientColorStop,2ul,WTF::FastMalloc>::adopt(v25, v31);
      v27 = v29;
      v28 = 2;
      WTF::VectorBuffer<WebCore::GradientColorStop,2ul,WTF::FastMalloc>::adopt(&v27, v25);
      v30 = 0;
      *a2 = a2 + 16;
      *(a2 + 8) = 2;
      WTF::VectorBuffer<WebCore::GradientColorStop,2ul,WTF::FastMalloc>::adopt(a2, &v27);
      *(a2 + 48) = v30;
      *(a2 + 56) = 1;
      WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v18);
      result = WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v19);
      goto LABEL_22;
    }

    __break(1u);
LABEL_29:
    while (1)
    {
      IPC::Decoder::decode<WebCore::GradientColorStop>(&v34, this);
      if ((v36 & 1) == 0)
      {
        break;
      }

      v22 = HIDWORD(v28);
      if (HIDWORD(v28) == v28)
      {
        WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::GradientColorStop>(&v27, &v34);
      }

      else
      {
        v23 = &v27[16 * HIDWORD(v28)];
        *v23 = v34;
        *(v23 + 1) = 0;
        if (v23 != &v34)
        {
          v24 = v35;
          v35 = 0;
          *(v23 + 1) = v24;
        }

        HIDWORD(v28) = v22 + 1;
      }

      std::optional<WebCore::GradientColorStop>::~optional(&v34, v21);
      if (!--v2)
      {
        WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v27, HIDWORD(v28));
        goto LABEL_17;
      }
    }

    LOBYTE(v31[0]) = 0;
    v33 = 0;
    std::optional<WebCore::GradientColorStop>::~optional(&v34, v21);
LABEL_18:
    result = WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v12);
    if ((v33 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  *a2 = 0;
  *(a2 + 56) = 0;
LABEL_22:
  if (v33 == 1)
  {
    return WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v17);
  }

  return result;
}

void sub_19D747FBC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF *a23, int a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::optional<WebCore::GradientColorStop>::~optional(v29 - 88, a2);
  WTF::Vector<WebCore::GradientColorStop,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a16, v31);
  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::ImageBufferParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  v5 = *(a2 + 25);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 26));
}

void IPC::ArgumentCoder<WebCore::ImageBufferParameters,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v6 = v5;
  v7 = *(a1 + 1);
  v8 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = v8 - *a1;
  v10 = v7 >= v9;
  v11 = v7 - v9;
  if (v10 && v11 > 3)
  {
    *(a1 + 2) = v8 + 1;
    if (v8)
    {
      v13 = *v8 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (v25)
    {
      if (v7)
      {
        (*(*v25 + 16))(v25);
        v7 = *(a1 + 1);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v26 = *(a1 + 3);
  if (v26 && v7)
  {
    (*(*v26 + 16))(v26);
  }

  v13 = 0;
LABEL_8:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a1, &cf);
  v14 = v28;
  if ((v28 & 1) == 0)
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
        (*(*v24 + 16))(v24, v22);
      }
    }
  }

  v15 = IPC::ArgumentCoder<WebCore::ImageBufferFormat,void>::decode(a1);
  if ((v15 & 0xFF0000) == 0)
  {
    v19 = *a1;
    v20 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21)
    {
      if (v20)
      {
        (*(*v21 + 16))(v21, v19);
      }
    }
  }

  v16 = IPC::Decoder::decode<WebCore::RenderingPurpose>(a1);
  if (*a1)
  {
    if ((v6 & 1) != 0 && (v13 & 0x100000000) != 0 && (v14 & 1) != 0 && (v15 & 0xFF0000) != 0 && (v16 & 0x100) != 0)
    {
      v17 = cf;
      *a2 = v4;
      *(a2 + 8) = v13;
      *(a2 + 16) = v17;
      *(a2 + 24) = v15;
      *(a2 + 26) = v16;
      *(a2 + 32) = 1;
      return;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  if (v14)
  {
    v18 = cf;
    if (cf)
    {

      CFRelease(v18);
    }
  }
}

void sub_19D748364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (v9)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::ImageBufferFormat>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::ImageBufferFormat,void>::decode(a1);
  if ((v2 & 0xFF0000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WebCore::RenderingPurpose>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::RenderingPurpose,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WebCore::HueInterpolationMethod>(void *a1)
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
  if (v4 < 4)
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

uint64_t IPC::ArgumentCoder<WebCore::ColorInterpolationMethod,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&>(a1, a2);
  v4 = a2[2];

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

mpark *IPC::ArgumentCoder<WebCore::ColorInterpolationMethod,void>::encode(mpark *a1, _BYTE *a2)
{
  result = IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65> const&>(a1, a2);
  if (*(a1 + 1))
  {
    **a1 = a2[2];
    v5 = *(a1 + 1);
    if (v5)
    {
      ++*a1;
      *(a1 + 1) = v5 - 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ColorInterpolationMethod,void>::decode(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>>(a1);
  v3 = IPC::Decoder::decode<WebCore::PathRoundedRect::Strategy>(a1);
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  if ((v2 & 0x10000) == 0 || (v3 & 0x100) == 0)
  {
    __break(1u);
LABEL_7:
    v5 = 0;
    return v5 | (v3 << 16) | v4;
  }

  LODWORD(v4) = v2;
  v5 = 0x1000000;
  return v5 | (v3 << 16) | v4;
}

uint64_t IPC::Decoder::decode<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<mpark::variant<WebCore::ColorInterpolationMethod::HSL,WebCore::ColorInterpolationMethod::HWB,WebCore::ColorInterpolationMethod::LCH,WebCore::ColorInterpolationMethod::Lab,WebCore::ColorInterpolationMethod::OKLCH,WebCore::ColorInterpolationMethod::OKLab,WebCore::ColorInterpolationMethod::SRGB,WebCore::ColorInterpolationMethod::SRGBLinear,WebCore::ColorInterpolationMethod::DisplayP3,WebCore::ColorInterpolationMethod::A98RGB,WebCore::ColorInterpolationMethod::ProPhotoRGB,WebCore::ColorInterpolationMethod::Rec2020,WebCore::ColorInterpolationMethod::XYZD50,WebCore::ColorInterpolationMethod::XYZD65>,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x10000) == 0)
  {
    v3 = result;
    IPC::Decoder::markInvalid(a1);
    return v3;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::CompositeMode,void>::decode(IPC::Decoder *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  v3 = *a1;
  if (v2 <= &v1[-*a1])
  {
    v15 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v15;
    goto LABEL_17;
  }

  v4 = v1 + 1;
  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_17:
    v16 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v16;
    goto LABEL_18;
  }

  v5 = *v1;
  if (v5 < 0xE)
  {
    v6 = 1;
    goto LABEL_5;
  }

LABEL_18:
  v17 = a1;
  IPC::Decoder::markInvalid(a1);
  a1 = v17;
  v5 = 0;
  v6 = 0;
  v2 = *(v17 + 1);
  v4 = *(v17 + 2);
  v3 = *v17;
LABEL_5:
  if (v2 <= &v4[-v3])
  {
    v18 = a1;
    v12 = v6;
    IPC::Decoder::markInvalid(a1);
    v6 = v12;
    a1 = v18;
    goto LABEL_20;
  }

  *(a1 + 2) = v4 + 1;
  if (!v4)
  {
LABEL_20:
    v13 = v6;
    v19 = a1;
    IPC::Decoder::markInvalid(a1);
    v6 = v13;
    a1 = v19;
    goto LABEL_21;
  }

  v7 = *v4;
  if ((v7 - 1) < 0x12)
  {
    v8 = 1;
    goto LABEL_9;
  }

LABEL_21:
  v11 = v5;
  v14 = v6;
  v10 = a1;
  IPC::Decoder::markInvalid(a1);
  v7 = 0;
  v8 = 0;
  v3 = *v10;
  v5 = v11;
  v6 = v14;
LABEL_9:
  if (!v3)
  {
LABEL_15:
    v5 = 0;
    return v5 | (v7 << 8) | (v3 << 16);
  }

  if ((v6 & 1) == 0 || (v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  LODWORD(v3) = 1;
  return v5 | (v7 << 8) | (v3 << 16);
}

uint64_t *IPC::ArgumentCoder<WebCore::DocumentMarkerLineStyle,void>::encode(uint64_t *a1, _BYTE *a2)
{
  if (!a1[1])
  {
    goto LABEL_6;
  }

  **a1 = *a2;
  v2 = a1[1];
  if (!v2)
  {
    __break(1u);
LABEL_6:
    *a1 = 0;
    a1[1] = 0;
    return IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 8));
  }

  ++*a1;
  a1[1] = v2 - 1;
  return IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 8));
}

unsigned int *IPC::ArgumentCoder<WebCore::DocumentMarkerLineStyle,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::MediaSelectionOption::MediaType>(a1);
  result = IPC::Decoder::decode<WebCore::Color>(a1, &v8);
  if (*a1)
  {
    if (v4 & 0x100) != 0 && (v9)
    {
      v7 = v8;
      *a2 = v4;
      *(a2 + 8) = v7;
      *(a2 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if ((v9 & 1) != 0 && (v8 & 0x8000000000000) != 0)
  {
    result = (v8 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v6);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::GraphicsDropShadow,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 16));
  v5 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 28));
}

uint64_t IPC::ArgumentCoder<WebCore::GraphicsDropShadow,void>::encode(uint64_t *a1, uint64_t a2)
{
  result = IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, a2);
  v5 = -*a1;
  v6 = v5 & 3 | 4;
  if (a1[1] < v6)
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    *(*a1 + (v5 & 3)) = *(a2 + 8);
    v7 = a1[1];
    v8 = v7 >= v6;
    v9 = v7 - v6;
    if (!v8)
    {
      goto LABEL_11;
    }

    *a1 += v6;
    a1[1] = v9;
  }

  result = IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 16));
  if (a1[1])
  {
    **a1 = *(a2 + 24);
    v10 = a1[1];
    if (!v10)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v11 = v10 - 1;
    v12 = *a1 + 1;
    *a1 = v12;
    a1[1] = v11;
    v13 = -v12 & 3 | 4;
    if (v11 >= v13)
    {
      *(v12 + (-v12 & 3)) = *(a2 + 28);
      v14 = a1[1];
      v8 = v14 >= v13;
      v15 = v14 - v13;
      if (v8)
      {
        *a1 += v13;
        a1[1] = v15;
        return result;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  *a1 = 0;
  a1[1] = 0;
  return result;
}

unsigned int *IPC::ArgumentCoder<WebCore::GraphicsDropShadow,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v6 = v5;
  v7 = *(a1 + 1);
  v8 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = v8 - *a1;
  v10 = v7 >= v9;
  v11 = v7 - v9;
  if (v10 && v11 > 3)
  {
    *(a1 + 2) = v8 + 1;
    if (v8)
    {
      v13 = *v8 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
  }

  IPC::Decoder::markInvalid(a1);
  v13 = 0;
LABEL_8:
  result = IPC::Decoder::decode<WebCore::Color>(a1, &v27);
  v16 = *(a1 + 1);
  v17 = *(a1 + 2);
  v18 = *a1;
  if (v16 <= &v17[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_33;
  }

  v19 = v17 + 1;
  *(a1 + 2) = v17 + 1;
  if (!v17)
  {
LABEL_33:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_34;
  }

  v20 = *v17;
  if (v20 < 2)
  {
    v21 = 0;
    goto LABEL_12;
  }

LABEL_34:
  IPC::Decoder::markInvalid(a1);
  result = IPC::Decoder::markInvalid(a1);
  v20 = 0;
  v16 = *(a1 + 1);
  v19 = *(a1 + 2);
  v21 = 1;
  v18 = *a1;
LABEL_12:
  v22 = ((v19 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = v16 >= v22 - v18;
  v23 = v16 - (v22 - v18);
  if (v10 && v23 > 3)
  {
    *(a1 + 2) = v22 + 1;
    if (v22)
    {
      v25 = *v22 | 0x100000000;
      goto LABEL_19;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
  }

  result = IPC::Decoder::markInvalid(a1);
  v25 = 0;
  v18 = *a1;
LABEL_19:
  if (v18)
  {
    if ((v6 & 1) != 0 && (v13 & 0x100000000) != 0 && (v28 & 1) != 0 && !v21 && (v25 & 0x100000000) != 0)
    {
      v26 = v27;
      *a2 = v4;
      *(a2 + 8) = v13;
      *(a2 + 16) = v26;
      *(a2 + 24) = v20 | (v25 << 32);
      *(a2 + 32) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  if ((v28 & 1) != 0 && (v27 & 0x8000000000000) != 0)
  {
    result = (v27 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v27 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v15);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::GraphicsGaussianBlur,void>::decode(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  if (!*a1)
  {
    return 0;
  }

  if ((v3 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<WebCore::GraphicsColorMatrix,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::array<float,20ul>,void>::decode<IPC::Decoder>(a1, v11);
  if ((v12 & 1) == 0)
  {
    v8 = *a1;
    v9 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      result = (*(*result + 16))(result, v8);
    }
  }

  v5 = *a1;
  if (!*a1)
  {
    *a2 = 0;
    goto LABEL_5;
  }

  if (v12)
  {
    v6 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v6;
    *(a2 + 64) = v11[4];
    v7 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v7;
    LOBYTE(v5) = 1;
LABEL_5:
    *(a2 + 80) = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PlatformMediaSessionRemoteCommandArgument,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v10);
  if ((v12 & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 3);
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      (*(*v7 + 16))(v7, v5);
    }
  }

  result = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  if (!*a1)
  {
    goto LABEL_13;
  }

  if ((v12 & 1) == 0 || (*&v9 = v10, BYTE8(v9) = v11, (result & 0x10000) == 0))
  {
    __break(1u);
LABEL_13:
    *a2 = 0;
    *(a2 + 24) = 0;
    return result;
  }

  *a2 = v9;
  *(a2 + 16) = result;
  *(a2 + 24) = 1;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::GenericCueData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::InbandGenericCueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::InbandGenericCueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::InbandGenericCueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::InbandGenericCueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2);
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 104));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 112));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 120));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 128));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 129));
  v4 = *(a2 + 130);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebCore::GenericCueData,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v45 = a1[3];
    if (v45)
    {
      if (v4)
      {
        (*(*v45 + 16))(v45);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    a1[2] = (v5 + 1);
    if (v5)
    {
      v7 = *v5;
      if (v7 >= 2)
      {
        goto LABEL_93;
      }

      if (v7)
      {
        v60 = 0;
LABEL_8:
        v10 = 1;
        goto LABEL_9;
      }

      v8 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(a1);
      if (v9)
      {
        v60 = v8;
        goto LABEL_8;
      }

      goto LABEL_92;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v46 = a1[3];
  if (!v46)
  {
    v4 = 0;
LABEL_76:
    v6 = 0;
    goto LABEL_93;
  }

  if (!v4)
  {
    goto LABEL_76;
  }

  (*(*v46 + 16))(v46);
LABEL_92:
  v6 = *a1;
  v4 = a1[1];
LABEL_93:
  *a1 = 0;
  a1[1] = 0;
  v50 = a1[3];
  if (v50 && v4)
  {
    (*(*v50 + 16))(v50, v6);
  }

  v51 = *a1;
  v52 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v53 = a1[3];
  if (v53 && v52)
  {
    (*(*v53 + 16))(v53, v51);
  }

  v60 = 0;
  v10 = 0;
LABEL_9:
  IPC::Decoder::decode<WTF::MediaTime>(a1, &v85);
  IPC::Decoder::decode<WTF::MediaTime>(a1, &v83);
  IPC::Decoder::decode<WTF::AtomString>(a1, &v81);
  IPC::Decoder::decode<WTF::String>(a1, &v79);
  IPC::Decoder::decode<WTF::String>(a1, &v77);
  v59 = IPC::Decoder::decode<unsigned long long>(a1);
  v12 = v11;
  v58 = IPC::Decoder::decode<unsigned long long>(a1);
  v14 = v13;
  v57 = IPC::Decoder::decode<unsigned long long>(a1);
  v16 = v15;
  v56 = IPC::Decoder::decode<unsigned long long>(a1);
  v18 = v17;
  v19 = IPC::Decoder::decode<unsigned long long>(a1);
  v21 = v20;
  IPC::Decoder::decode<WebCore::Color>(a1, &v75);
  IPC::Decoder::decode<WebCore::Color>(a1, &v73);
  IPC::Decoder::decode<WebCore::Color>(a1, &v71);
  v22 = IPC::Decoder::decode<WebCore::HueInterpolationMethod>(a1);
  v23 = IPC::Decoder::decode<WebCore::HueInterpolationMethod>(a1);
  v24 = a1[1];
  v25 = a1[2];
  v26 = *a1;
  if (v24 <= &v25[-*a1])
  {
    v54 = v23;
    *a1 = 0;
    a1[1] = 0;
    v47 = a1[3];
    if (v47)
    {
      if (v24)
      {
        (*(*v47 + 16))(v47);
        v26 = *a1;
        v24 = a1[1];
LABEL_80:
        *a1 = 0;
        a1[1] = 0;
        v48 = a1[3];
        if (v48)
        {
          if (v24)
          {
            (*(*v48 + 16))(v48, v26);
            v26 = *a1;
            v24 = a1[1];
            goto LABEL_83;
          }
        }

        else
        {
          v24 = 0;
        }

        v26 = 0;
LABEL_83:
        v23 = v54;
        goto LABEL_84;
      }
    }

    else
    {
      v24 = 0;
    }

    v26 = 0;
    goto LABEL_80;
  }

  a1[2] = (v25 + 1);
  if (!v25)
  {
    v54 = v23;
    goto LABEL_80;
  }

  v27 = *v25;
  if (v27 < 3)
  {
    v28 = v27 | 0x100;
    if (v26)
    {
      goto LABEL_13;
    }

LABEL_85:
    *a2 = 0;
    *(a2 + 136) = 0;
    goto LABEL_45;
  }

LABEL_84:
  *a1 = 0;
  a1[1] = 0;
  v49 = a1[3];
  if (!v49)
  {
    goto LABEL_85;
  }

  if (!v24)
  {
    goto LABEL_85;
  }

  v55 = v23;
  (*(*v49 + 16))(v49, v26);
  v28 = 0;
  v26 = *a1;
  v23 = v55;
  if (!*a1)
  {
    goto LABEL_85;
  }

LABEL_13:
  if ((v10 & 1) != 0 && (v86 & 1) != 0 && (v84 & 1) != 0 && (v82 & 1) != 0 && (v80 & 1) != 0 && (v78 & 1) != 0 && (v12 & 1) != 0 && (v14 & 1) != 0 && (v16 & 1) != 0 && (v18 & 1) != 0 && (v21 & 1) != 0 && (v76 & 1) != 0 && (v74 & 1) != 0 && (v72 & 1) != 0 && v22 > 0xFFu && v23 > 0xFFu && v28 > 0xFF)
  {
    *v61 = v60;
    *&v61[8] = v85;
    *&v61[24] = v83;
    v29 = v81;
    if (v81)
    {
      atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
    }

    *&v62 = v29;
    v30 = v79;
    if (v79)
    {
      atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
    }

    *(&v62 + 1) = v30;
    v31 = v77;
    if (v77)
    {
      atomic_fetch_add_explicit(v77, 2u, memory_order_relaxed);
    }

    v63 = v31;
    *&v64 = v59;
    *(&v64 + 1) = v58;
    *&v65 = v57;
    *(&v65 + 1) = v56;
    v66 = v19;
    *&v67 = v75;
    if ((v75 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v75 & 0xFFFFFFFFFFFFLL), 1u);
    }

    *(&v67 + 1) = v73;
    if ((v73 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v73 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v68 = v71;
    if ((v71 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v71 & 0xFFFFFFFFFFFFLL), 1u);
    }

    LOBYTE(v69) = v22;
    HIBYTE(v69) = v23;
    v70 = v28;
    v32 = *&v61[16];
    *a2 = *v61;
    *(a2 + 16) = v32;
    *(a2 + 29) = *&v61[29];
    v33 = v62;
    v62 = 0uLL;
    *(a2 + 40) = v33;
    v34 = v63;
    v63 = 0;
    *(a2 + 56) = v34;
    v35 = v65;
    v36 = v66;
    *(a2 + 64) = v64;
    *(a2 + 80) = v35;
    *(a2 + 96) = v36;
    *(a2 + 104) = 0;
    if (v61 == a2)
    {
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
    }

    else
    {
      v37 = v67;
      v67 = 0uLL;
      *(a2 + 104) = v37;
      v38 = v68;
      v68 = 0;
      *(a2 + 120) = v38;
    }

    *(a2 + 128) = v69;
    *(a2 + 130) = v70;
    *(a2 + 136) = 1;
    WebCore::GenericCueData::~GenericCueData(v61, v26);
LABEL_45:
    if (v72 != 1)
    {
      goto LABEL_47;
    }

    v28 = v71;
    if ((v71 & 0x8000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_65;
  }

  __break(1u);
LABEL_65:
  v42 = (v28 & 0xFFFFFFFFFFFFLL);
  if (atomic_fetch_add((v28 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v42);
    WTF::fastFree(v42, v26);
  }

LABEL_47:
  if (v74 == 1 && (v73 & 0x8000000000000) != 0)
  {
    v43 = (v73 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v73 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v43);
      WTF::fastFree(v43, v26);
    }
  }

  if (v76 == 1 && (v75 & 0x8000000000000) != 0)
  {
    v44 = (v75 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v75 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v44);
      WTF::fastFree(v44, v26);
    }
  }

  if (v78 == 1)
  {
    v39 = v77;
    v77 = 0;
    if (v39)
    {
      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v26);
      }
    }
  }

  if (v80 == 1)
  {
    v40 = v79;
    v79 = 0;
    if (v40)
    {
      if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v26);
      }
    }
  }

  if (v82 == 1)
  {
    v41 = v81;
    v81 = 0;
    if (v41)
    {
      if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v26);
      }
    }
  }
}

void sub_19D749500(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, char a35)
{
  if (a33 == 1 && (a32 & 0x8000000000000) != 0)
  {
    v37 = (a32 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a32 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v37);
      WTF::fastFree(v37, a2);
    }
  }

  if (a35 == 1 && (a34 & 0x8000000000000) != 0)
  {
    v38 = (a34 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a34 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v38);
      WTF::fastFree(v38, a2);
    }
  }

  if (*(v35 - 192) == 1)
  {
    v39 = *(v35 - 200);
    if ((v39 & 0x8000000000000) != 0)
    {
      v40 = (v39 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v39 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v40);
        WTF::fastFree(v40, a2);
      }
    }
  }

  if (*(v35 - 176) == 1)
  {
    v41 = *(v35 - 184);
    *(v35 - 184) = 0;
    if (v41)
    {
      if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, a2);
      }
    }
  }

  if (*(v35 - 160) == 1)
  {
    v42 = *(v35 - 168);
    *(v35 - 168) = 0;
    if (v42)
    {
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, a2);
      }
    }
  }

  if (*(v35 - 144) == 1)
  {
    v43 = *(v35 - 152);
    *(v35 - 152) = 0;
    if (v43)
    {
      if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ImageDecoderFrameInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_17:
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      if (v4)
      {
        (*(*v14 + 16))(v14);
        v16 = 0;
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_21;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v16 = 0;
    goto LABEL_21;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_17;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

  v16 = v7;
LABEL_21:
  *a1 = 0;
  *(a1 + 1) = 0;
  v15 = *(a1 + 3);
  if (v15 && v4)
  {
    (*(*v15 + 16))(v15, v6);
  }

  v8 = 0;
  v7 = v16;
LABEL_5:
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = IPC::Decoder::decode<WTF::Seconds>(a1);
  v12 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  if ((v8 & 1) == 0 || (v11 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    *a2 = 0;
    goto LABEL_12;
  }

  *a2 = v9;
  *(a2 + 8) = result;
  LOBYTE(v12) = 1;
LABEL_12:
  *(a2 + 16) = v12;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ImageOrientation,void>::decode(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v9 = a1;
    v7 = a1[3];
    if (v7)
    {
      if (v1)
      {
        (*(*v7 + 16))(v7);
        v3 = *v9;
        v1 = v9[1];
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_12;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    goto LABEL_18;
  }

  v4 = *v2;
  if (v4 >= 9)
  {
    v9 = a1;
    while (1)
    {
      *v9 = 0;
      v9[1] = 0;
      v6 = v9[3];
      if (!v6)
      {
        break;
      }

      if (!v1)
      {
        break;
      }

      a1 = (*(*v6 + 16))(v6);
      if (!*v9)
      {
        break;
      }

      __break(1u);
LABEL_18:
      v9 = a1;
LABEL_12:
      *v9 = 0;
      v9[1] = 0;
      v8 = v9[3];
      if (v8)
      {
        if (v1)
        {
          (*(*v8 + 16))(v8, v3);
          v1 = v9[1];
        }
      }

      else
      {
        v1 = 0;
      }
    }
  }

  else if (v3)
  {
    return v4 | 0x100;
  }

  return 0;
}

uint64_t IPC::ArgumentCoder<WebCore::Headroom,void>::decode(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 3)
  {
    *(a1 + 2) = v2 + 1;
    if (v2)
    {
      result = *v2 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v10;
  }

  v9 = a1;
  IPC::Decoder::markInvalid(a1);
  result = 0;
  v3 = *v9;
LABEL_8:
  if (v3)
  {
    if ((result & 0x100000000) != 0)
    {
      return result;
    }

    __break(1u);
  }

  return 0;
}

uint64_t IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, BYTE1(*a2) & 0xF);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 & 0x1F);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 >> 5);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 >> 12);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 2) & 0xF);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, (*a2 & 0x400000) != 0);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  v4 = *(a2 + 8);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

void *IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::encode(void *result, uint64_t a2)
{
  if (!result[1])
  {
    goto LABEL_20;
  }

  **result = *(a2 + 1) & 0xF;
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_19;
  }

  v4 = v2 - 1;
  v3 = v2 == 1;
  v5 = (*result + 1);
  *result = v5;
  result[1] = v4;
  if (!v3)
  {
    *v5 = *a2 & 0x1F;
    v6 = result[1];
    if (!v6)
    {
      goto LABEL_19;
    }

    v7 = v6 - 1;
    v3 = v6 == 1;
    v8 = (*result + 1);
    *result = v8;
    result[1] = v7;
    if (v3)
    {
      goto LABEL_20;
    }

    *v8 = *a2 >> 5;
    v9 = result[1];
    if (!v9)
    {
      goto LABEL_19;
    }

    v10 = v9 - 1;
    v3 = v9 == 1;
    v11 = (*result + 1);
    *result = v11;
    result[1] = v10;
    if (v3)
    {
      goto LABEL_20;
    }

    *v11 = *a2 >> 12;
    v12 = result[1];
    if (!v12)
    {
      goto LABEL_19;
    }

    v13 = v12 - 1;
    v3 = v12 == 1;
    v14 = (*result + 1);
    *result = v14;
    result[1] = v13;
    if (v3)
    {
      goto LABEL_20;
    }

    *v14 = *(a2 + 2) & 0xF;
    v15 = result[1];
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15 - 1;
    v3 = v15 == 1;
    v17 = (*result + 1);
    *result = v17;
    result[1] = v16;
    if (v3)
    {
      goto LABEL_20;
    }

    *v17 = (*a2 & 0x400000) != 0;
    v18 = result[1];
    if (!v18)
    {
      goto LABEL_19;
    }

    v19 = v18 - 1;
    v20 = *result + 1;
    *result = v20;
    result[1] = v19;
    v21 = -v20 & 3 | 4;
    if (v19 < v21)
    {
      goto LABEL_20;
    }

    *(v20 + (-v20 & 3)) = *(a2 + 4);
    v22 = result[1];
    v23 = v22 - v21;
    if (v22 < v21)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v24 = *result + v21;
    *result = v24;
    result[1] = v23;
    v25 = -v24 & 3 | 4;
    if (v23 >= v25)
    {
      *(v24 + (-v24 & 3)) = *(a2 + 8);
      v26 = result[1];
      v27 = v26 >= v25;
      v28 = v26 - v25;
      if (v27)
      {
        *result += v25;
        result[1] = v28;
        return result;
      }

      goto LABEL_19;
    }
  }

LABEL_20:
  *result = 0;
  result[1] = 0;
  return result;
}

unint64_t IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::decode(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *a1;
  if (v2 <= &v1[-*a1])
  {
    v186 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v186;
    goto LABEL_59;
  }

  v4 = v1 + 1;
  *(a1 + 16) = v1 + 1;
  if (!v1)
  {
LABEL_59:
    v187 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v187;
    goto LABEL_60;
  }

  v5 = *v1;
  if (v5 < 0xE)
  {
    v6 = 1;
    goto LABEL_5;
  }

LABEL_60:
  v188 = a1;
  IPC::Decoder::markInvalid(a1);
  a1 = v188;
  v5 = 0;
  v6 = 0;
  v2 = v188[1];
  v4 = v188[2];
  v3 = *v188;
LABEL_5:
  if (v2 <= &v4[-v3])
  {
    v189 = a1;
    v166 = v6;
    IPC::Decoder::markInvalid(a1);
    v6 = v166;
    a1 = v189;
    goto LABEL_62;
  }

  v7 = v4 + 1;
  *(a1 + 16) = v4 + 1;
  if (!v4)
  {
LABEL_62:
    v167 = v6;
    v190 = a1;
    IPC::Decoder::markInvalid(a1);
    v6 = v167;
    a1 = v190;
    goto LABEL_63;
  }

  v8 = *v4;
  if ((v8 - 1) < 0x12)
  {
    v9 = 1;
    goto LABEL_9;
  }

LABEL_63:
  v168 = v6;
  v191 = a1;
  IPC::Decoder::markInvalid(a1);
  v6 = v168;
  a1 = v191;
  v8 = 0;
  v9 = 0;
  v2 = v191[1];
  v7 = v191[2];
  v3 = *v191;
LABEL_9:
  if (v2 <= &v7[-v3])
  {
    v192 = a1;
    v148 = v9;
    v169 = v6;
    v130 = v8;
    IPC::Decoder::markInvalid(a1);
    v8 = v130;
    v9 = v148;
    v6 = v169;
    a1 = v192;
    goto LABEL_65;
  }

  v10 = v7 + 1;
  *(a1 + 16) = v7 + 1;
  if (!v7)
  {
LABEL_65:
    v131 = v8;
    v149 = v9;
    v170 = v6;
    v193 = a1;
    IPC::Decoder::markInvalid(a1);
    v8 = v131;
    v9 = v149;
    v6 = v170;
    a1 = v193;
    goto LABEL_66;
  }

  v11 = *v7;
  if (v11 < 3)
  {
    v12 = 1;
    goto LABEL_13;
  }

LABEL_66:
  v132 = v8;
  v150 = v9;
  v171 = v6;
  v194 = a1;
  IPC::Decoder::markInvalid(a1);
  v8 = v132;
  v9 = v150;
  v6 = v171;
  a1 = v194;
  v11 = 0;
  v12 = 0;
  v2 = v194[1];
  v10 = v194[2];
  v3 = *v194;
LABEL_13:
  if (v2 <= &v10[-v3])
  {
    v195 = a1;
    v151 = v9;
    v172 = v6;
    v115 = v11;
    v133 = v8;
    v100 = v12;
    IPC::Decoder::markInvalid(a1);
    v12 = v100;
    v11 = v115;
    v8 = v133;
    v9 = v151;
    v6 = v172;
    a1 = v195;
    goto LABEL_68;
  }

  v13 = v10 + 1;
  *(a1 + 16) = v10 + 1;
  if (!v10)
  {
LABEL_68:
    v101 = v12;
    v116 = v11;
    v134 = v8;
    v152 = v9;
    v173 = v6;
    v196 = a1;
    IPC::Decoder::markInvalid(a1);
    v12 = v101;
    v11 = v116;
    v8 = v134;
    v9 = v152;
    v6 = v173;
    a1 = v196;
    goto LABEL_69;
  }

  v14 = *v10;
  if (v14 < 9)
  {
    v15 = 1;
    goto LABEL_17;
  }

LABEL_69:
  v117 = v11;
  v135 = v8;
  v153 = v9;
  v174 = v6;
  v102 = v12;
  v197 = a1;
  IPC::Decoder::markInvalid(a1);
  v12 = v102;
  v11 = v117;
  v8 = v135;
  v9 = v153;
  v6 = v174;
  a1 = v197;
  v14 = 0;
  v15 = 0;
  v2 = v197[1];
  v13 = v197[2];
  v3 = *v197;
LABEL_17:
  if (v2 <= &v13[-v3])
  {
    v198 = a1;
    v154 = v9;
    v175 = v6;
    v118 = v11;
    v136 = v8;
    v88 = v14;
    v103 = v12;
    v76 = v15;
    IPC::Decoder::markInvalid(a1);
    v15 = v76;
    v14 = v88;
    v12 = v103;
    v11 = v118;
    v8 = v136;
    v9 = v154;
    v6 = v175;
    a1 = v198;
    goto LABEL_71;
  }

  v16 = v13 + 1;
  *(a1 + 16) = v13 + 1;
  if (!v13)
  {
LABEL_71:
    v77 = v15;
    v89 = v14;
    v104 = v12;
    v119 = v11;
    v137 = v8;
    v155 = v9;
    v176 = v6;
    v199 = a1;
    IPC::Decoder::markInvalid(a1);
    v15 = v77;
    v14 = v89;
    v12 = v104;
    v11 = v119;
    v8 = v137;
    v9 = v155;
    v6 = v176;
    a1 = v199;
    goto LABEL_72;
  }

  v17 = *v13;
  if (v17 < 5)
  {
    v18 = 1;
    goto LABEL_21;
  }

LABEL_72:
  v78 = v15;
  v90 = v14;
  v120 = v11;
  v138 = v8;
  v156 = v9;
  v177 = v6;
  v105 = v12;
  v200 = a1;
  IPC::Decoder::markInvalid(a1);
  v15 = v78;
  v14 = v90;
  v12 = v105;
  v11 = v120;
  v8 = v138;
  v9 = v156;
  v6 = v177;
  a1 = v200;
  v17 = 0;
  v18 = 0;
  v2 = v200[1];
  v16 = v200[2];
  v3 = *v200;
LABEL_21:
  if (v2 <= &v16[-v3])
  {
    v201 = a1;
    v157 = v9;
    v178 = v6;
    v121 = v11;
    v139 = v8;
    v91 = v14;
    v106 = v12;
    v79 = v15;
    v58 = v18;
    v67 = v17;
    IPC::Decoder::markInvalid(a1);
    v18 = v58;
    v17 = v67;
    v15 = v79;
    v14 = v91;
    v12 = v106;
    v11 = v121;
    v8 = v139;
    v9 = v157;
    v6 = v178;
    a1 = v201;
    goto LABEL_74;
  }

  v19 = v16 + 1;
  *(a1 + 16) = v16 + 1;
  if (!v16)
  {
LABEL_74:
    v59 = v18;
    v80 = v15;
    v107 = v12;
    v122 = v11;
    v140 = v8;
    v179 = v6;
    v68 = v17;
    v92 = v14;
    v158 = v9;
    v202 = a1;
    IPC::Decoder::markInvalid(a1);
    v18 = v59;
    v17 = v68;
    v15 = v80;
    v14 = v92;
    v12 = v107;
    v11 = v122;
    v8 = v140;
    v9 = v158;
    v6 = v179;
    a1 = v202;
    goto LABEL_75;
  }

  v20 = *v16;
  if (v20 >= 2)
  {
LABEL_75:
    v60 = v18;
    v69 = v17;
    v81 = v15;
    v93 = v14;
    v123 = v11;
    v141 = v8;
    v159 = v9;
    v180 = v6;
    v108 = v12;
    v203 = a1;
    IPC::Decoder::markInvalid(a1);
    v18 = v60;
    v17 = v69;
    v15 = v81;
    v14 = v93;
    v12 = v108;
    v11 = v123;
    v8 = v141;
    v9 = v159;
    v6 = v180;
    a1 = v203;
    v20 = 0;
    v21 = 0;
    v2 = v203[1];
    v19 = v203[2];
    v3 = *v203;
    goto LABEL_25;
  }

  v21 = 1;
LABEL_25:
  v22 = ((v19 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v23 = v2 >= v22 - v3;
  v24 = v2 - (v22 - v3);
  if (v23 && v24 > 3)
  {
    *(a1 + 16) = v22 + 1;
    if (v22)
    {
      v25 = *v22 | 0x100000000;
      goto LABEL_30;
    }
  }

  else
  {
    v204 = a1;
    v160 = v9;
    v181 = v6;
    v124 = v11;
    v142 = v8;
    v94 = v14;
    v109 = v12;
    v82 = v15;
    v61 = v18;
    v70 = v17;
    v52 = v20;
    v46 = v21;
    IPC::Decoder::markInvalid(a1);
    v21 = v46;
    v20 = v52;
    v18 = v61;
    v17 = v70;
    v15 = v82;
    v14 = v94;
    v12 = v109;
    v11 = v124;
    v8 = v142;
    v9 = v160;
    v6 = v181;
    a1 = v204;
  }

  v47 = v21;
  v53 = v20;
  v71 = v17;
  v95 = v14;
  v125 = v11;
  v143 = v8;
  v182 = v6;
  v62 = v18;
  v83 = v15;
  v110 = v12;
  v161 = v9;
  v205 = a1;
  IPC::Decoder::markInvalid(a1);
  v21 = v47;
  v20 = v53;
  v18 = v62;
  v17 = v71;
  v15 = v83;
  v14 = v95;
  v12 = v110;
  v11 = v125;
  v8 = v143;
  v9 = v161;
  v6 = v182;
  a1 = v205;
  v25 = 0;
  v3 = *v205;
LABEL_30:
  if (v3)
  {
    v26 = v3;
    if ((v25 & 0x100000000) == 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v185 = a1;
    v147 = v9;
    v165 = v6;
    v129 = v8;
    v99 = v12;
    v114 = v11;
    v75 = v15;
    v87 = v14;
    v57 = v18;
    v66 = v17;
    v51 = v20;
    v45 = v21;
    IPC::Decoder::markInvalid(a1);
    v21 = v45;
    v20 = v51;
    v18 = v57;
    v17 = v66;
    v15 = v75;
    v14 = v87;
    v12 = v99;
    v11 = v114;
    v3 = 0;
    v8 = v129;
    v9 = v147;
    v6 = v165;
    a1 = v185;
    v25 = 0;
    v26 = *v185;
  }

  v27 = *(a1 + 8);
  v28 = ((*(a1 + 16) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v23 = v27 >= v28 - v26;
  v29 = v27 - (v28 - v26);
  if (!v23 || v29 <= 3)
  {
    v206 = a1;
    v162 = v9;
    v183 = v6;
    v144 = v8;
    v42 = v3;
    v111 = v12;
    v126 = v11;
    v84 = v15;
    v96 = v14;
    v63 = v18;
    v72 = v17;
    v54 = v20;
    v48 = v21;
    v39 = v25;
    IPC::Decoder::markInvalid(a1);
    v25 = v39;
    v3 = v42;
    v21 = v48;
    v20 = v54;
    v18 = v63;
    v17 = v72;
    v15 = v84;
    v14 = v96;
    v12 = v111;
    v11 = v126;
    v8 = v144;
    v9 = v162;
    v6 = v183;
    a1 = v206;
    goto LABEL_79;
  }

  *(a1 + 16) = v28 + 1;
  if (!v28)
  {
LABEL_79:
    v40 = v25;
    v55 = v20;
    v64 = v18;
    v85 = v15;
    v112 = v12;
    v43 = v3;
    v145 = v8;
    v184 = v6;
    v49 = v21;
    v73 = v17;
    v97 = v14;
    v127 = v11;
    v163 = v9;
    v207 = a1;
    IPC::Decoder::markInvalid(a1);
    v25 = v40;
    v3 = v43;
    v21 = v49;
    v20 = v55;
    v18 = v64;
    v17 = v73;
    v15 = v85;
    v14 = v97;
    v12 = v112;
    v11 = v127;
    v8 = v145;
    v9 = v163;
    v6 = v184;
    a1 = v207;
    v30 = 0;
    v26 = *v207;
    goto LABEL_37;
  }

  v30 = *v28 | 0x100000000;
LABEL_37:
  if (!v26)
  {
    goto LABEL_55;
  }

  if ((v30 & 0x100000000) == 0)
  {
    goto LABEL_54;
  }

  v31 = 1.0;
  if (*&v30 <= 1.0)
  {
    v31 = *&v30;
  }

  v32 = 0.0;
  if (*&v30 >= 0.0)
  {
    v32 = v31;
  }

  a1 = LODWORD(v32) | 0x100000000;
  while ((v6 & 1) == 0 || (v9 & 1) == 0 || (v12 & 1) == 0 || (v15 & 1) == 0 || (v18 & 1) == 0 || (v21 & 1) == 0 || !v3 || (a1 & 0x100000000) == 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    v37 = v5;
    v35 = a1;
    v146 = v9;
    v164 = v6;
    v128 = v8;
    v41 = v3;
    v98 = v12;
    v113 = v11;
    v74 = v15;
    v86 = v14;
    v56 = v18;
    v65 = v17;
    v50 = v20;
    v44 = v21;
    v38 = v25;
    IPC::Decoder::markInvalid(a1);
    v25 = v38;
    v3 = v41;
    v21 = v44;
    v20 = v50;
    v18 = v56;
    v17 = v65;
    v15 = v74;
    v14 = v86;
    v12 = v98;
    v11 = v113;
    v8 = v128;
    v9 = v146;
    v6 = v164;
    a1 = 0;
    v33 = 0;
    v36 = *v35;
    v5 = v37;
    if (!v36)
    {
      return v33 | (v25 << 32);
    }
  }

  v33 = (v8 + 32 * v11) | (((v20 << 14) | (v17 << 8) | v5 | (16 * v14)) << 8);
  return v33 | (v25 << 32);
}

IPC::Decoder *IPC::Decoder::decode<std::optional<WTF::Seconds>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
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

void *IPC::ArgumentCoder<WebCore::CrossOriginOpenerPolicy,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::PolicyContainer>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::PolicyContainer,void>::decode(a1, a2);
  if ((a2[80] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t std::optional<WebCore::PolicyContainer>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
  }

  return a1;
}

uint64_t IPC::ArgumentCoder<WebCore::PolicyContainer,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<WebCore::CrossOriginEmbedderPolicy,void>::encode(a1, a2 + 24);
  IPC::ArgumentCoder<WebCore::CrossOriginOpenerPolicy,void>::encode(a1, a2 + 48);
  v4 = *(a2 + 72);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

IPC::Encoder *IPC::Encoder::operator<<<WebCore::ContentSecurityPolicyResponseHeaders const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  return a1;
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::PolicyContainer,void>::decode@<X0>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebCore::ContentSecurityPolicyResponseHeaders>(&v30, this);
  IPC::Decoder::decode<WebCore::CrossOriginEmbedderPolicy>(&v27, this);
  IPC::Decoder::decode<WebCore::CrossOriginOpenerPolicy>(&v24, this);
  result = IPC::Decoder::decode<WebCore::ReferrerPolicy>(this);
  if (*this)
  {
    if ((v34 & 1) == 0 || (v16[0] = v30, v6 = v31, v30 = 0, v31 = 0, v16[1] = v6, v17 = v32, v18 = v33, (v29 & 1) == 0) || (v19 = v27, v7 = v28, v28 = 0uLL, *v20 = v7, (v26 & 1) == 0) || (v21 = v24, v8 = *v25, v25[0] = 0, v25[1] = 0, *v22 = v8, result <= 0xFFu))
    {
      __break(1u);
      return result;
    }

    v23 = result;
    std::optional<WebCore::PolicyContainer>::optional[abi:sn200100]<WebCore::PolicyContainer,0>(a2, v16);
    v10 = v22[1];
    v22[1] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = v22[0];
    v22[0] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = v20[1];
    v20[1] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    v13 = v20[0];
    v20[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }

    result = WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v9);
  }

  else
  {
    *a2 = 0;
    a2[80] = 0;
  }

  if (v26 == 1)
  {
    v14 = v25[1];
    v25[1] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v5);
    }

    result = v25[0];
    v25[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v5);
    }
  }

  if (v29 == 1)
  {
    v15 = *(&v28 + 1);
    *(&v28 + 1) = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v5);
    }

    result = v28;
    *&v28 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v5);
    }
  }

  if (v34 == 1)
  {
    return WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v5);
  }

  return result;
}

void sub_19D74A798(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  WebCore::PolicyContainer::~PolicyContainer(&a9, a2);
  std::optional<WebCore::CrossOriginOpenerPolicy>::~optional(&a19, v21);
  std::optional<WebCore::CrossOriginOpenerPolicy>::~optional(v19 - 80, v22);
  if (*(v19 - 24) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19 - 48, v23);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WebCore::ContentSecurityPolicyResponseHeaders>(_BYTE *a1, IPC::Decoder *this)
{
  v6 = *(this + 1);
  v7 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7 - *this;
  v9 = v6 >= v8;
  v10 = v6 - v8;
  if (v9 && v10 > 7)
  {
    *(this + 2) = v7 + 1;
    if (!v7)
    {
      goto LABEL_45;
    }

    v2 = *v7;
    v32 = 0;
    v33 = 0;
    if (v2 < 0x10000)
    {
      if (!v2)
      {
LABEL_9:
        v24 = v32;
        LODWORD(v2) = v33;
        v3 = HIDWORD(v33);
        v32 = 0;
        v33 = 0;
        v25 = __PAIR64__(v3, v2);
        v12 = 1;
        v26 = 1;
        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, this);
        goto LABEL_10;
      }

      LODWORD(v33) = v2;
      v32 = WTF::fastMalloc((16 * v2));
      v3 = -2;
      while (1)
      {
        IPC::Decoder::decode<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>>(&v27, this);
        if ((v30 & 1) == 0)
        {
          goto LABEL_43;
        }

        if (HIDWORD(v33) != v33)
        {
          break;
        }

        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>>(&v32, &v27);
        if (v30)
        {
          goto LABEL_37;
        }

LABEL_38:
        if (!--v2)
        {
          goto LABEL_9;
        }
      }

      v20 = HIDWORD(v33) + 1;
      v21 = v32 + 16 * HIDWORD(v33);
      v22 = v27;
      v27 = 0;
      *v21 = v22;
      *(v21 + 8) = v28;
      HIDWORD(v33) = v20;
LABEL_37:
      v23 = v27;
      v27 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, this);
      }

      goto LABEL_38;
    }

    v3 = -2;
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>>(&v27, this);
      if ((v30 & 1) == 0)
      {
        goto LABEL_43;
      }

      if (HIDWORD(v33) != v33)
      {
        break;
      }

      WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>>(&v32, &v27);
      if (v30)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (!--v2)
      {
        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v32, HIDWORD(v33));
        goto LABEL_9;
      }
    }

    v16 = HIDWORD(v33) + 1;
    v17 = v32 + 16 * HIDWORD(v33);
    v18 = v27;
    v27 = 0;
    *v17 = v18;
    *(v17 + 8) = v28;
    HIDWORD(v33) = v16;
LABEL_24:
    v19 = v27;
    v27 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, this);
    }

    goto LABEL_25;
  }

  IPC::Decoder::markInvalid(this);
LABEL_45:
  IPC::Decoder::markInvalid(this);
  LOBYTE(v24) = 0;
  v26 = 0;
  while (1)
  {
    IPC::Decoder::markInvalid(this);
    v12 = 0;
LABEL_10:
    result = IPC::Decoder::decode<float>(this);
    if (!*this)
    {
      break;
    }

    if ((v12 & 1) != 0 && (result & 0x100000000) != 0)
    {
      v14 = v24;
      v24 = 0;
      v25 = 0;
      v27 = v14;
      v28 = v2;
      v29 = v3;
      v30 = result;
      v31 = 0;
      std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::optional[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,0>(a1, &v27);
      result = WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v15);
      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_43:
    LOBYTE(v24) = 0;
    v26 = 0;
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, this);
  }

  *a1 = 0;
  a1[24] = 0;
  if (v12)
  {
LABEL_14:
    result = WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, this);
  }

LABEL_15:
  if ((a1[24] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

void sub_19D74AA78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, WTF::StringImpl *a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 == 1 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a16, a2);
  _Unwind_Resume(a1);
}

uint64_t std::optional<WebCore::PolicyContainer>::optional[abi:sn200100]<WebCore::PolicyContainer,0>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v4 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 32) = v5;
  v6 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 56) = v7;
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = 1;
  return a1;
}

void sub_19D74AB9C(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::ArgumentCoder<WebCore::SubstituteData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v4 + 2, 1u);
  }

  v7 = v4;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,void>::encode<IPC::Encoder,WebCore::FragmentedSharedBuffer>(a1, &v7);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a1, (a2 + 48));
  v8 = *(a2 + 312);
  return IPC::Encoder::operator<<<BOOL>(a1, &v8);
}

void sub_19D74AC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int *a9)
{
  if (a9)
  {
    if (atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a9 + 2);
      (*(*a9 + 8))(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::SubstituteData,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>(&v31, a1);
  IPC::Decoder::decode<WTF::URL>(a1, &v27);
  IPC::Decoder::decode<WebCore::ResourceResponse>(a1, v23);
  v4 = IPC::Decoder::decode<WebKit::AllowsCellularAccess>(a1);
  if (!*a1)
  {
    goto LABEL_23;
  }

  if ((v32 & 1) == 0 || (v30 & 1) == 0 || (v26 & 1) == 0 || (v6 = v4, v4 <= 0xFFu))
  {
    __break(1u);
LABEL_23:
    *a2 = 0;
    *(a2 + 320) = 0;
    goto LABEL_9;
  }

  v7 = v31;
  v31 = 0;
  v8 = v27;
  v27 = 0;
  v15 = v7;
  v16 = v8;
  v17 = v28;
  v18 = v29;
  LODWORD(v28) = v28 & 0xFFFFFFFE;
  WebCore::ResourceResponseBase::ResourceResponseBase(v19, v23);
  v9 = v24;
  v24 = 0;
  v21 = v25;
  v22 = v6 & 1;
  v20 = v9;
  *a2 = v15;
  WTF::URL::URL(a2 + 8, &v16);
  WebCore::ResourceResponseBase::ResourceResponseBase(a2 + 48, v19);
  *(a2 + 296) = v20;
  *(a2 + 304) = v21;
  *(a2 + 312) = v22;
  *(a2 + 320) = 1;
  v20 = 0;
  WebCore::ResourceResponseBase::~ResourceResponseBase(v19, v10);
  v11 = v16;
  v16 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v5);
  }

LABEL_9:
  if (v26 == 1)
  {
    v12 = v24;
    v24 = 0;
    if (v12)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v23, v5);
  }

  if (v30 == 1)
  {
    v13 = v27;
    v27 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v5);
      }
    }
  }

  if (v32 == 1)
  {
    v14 = v31;
    v31 = 0;
    if (v14)
    {
      if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14 + 2);
        (*(*v14 + 8))(v14);
      }
    }
  }
}

void sub_19D74AF50(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, char a49)
{
  v54 = *v50;
  *v50 = 0;
  if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v54, a2);
  }

  v55 = *v49;
  *v49 = 0;
  if (v55 && atomic_fetch_add(v55 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v55 + 2);
    (*(*v55 + 8))(v55);
  }

  if (a46)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((v51 + 48), a2);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v56);
  }

  if (a9 && atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a9 + 2);
    (*(*a9 + 8))(a9);
  }

  if (LOBYTE(STACK[0x248]) == 1)
  {
    v57 = STACK[0x238];
    STACK[0x238] = 0;
    if (v57)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&a49, v56);
  }

  if (*(v52 - 72) == 1)
  {
    v58 = *(v52 - 112);
    *(v52 - 112) = 0;
    if (v58)
    {
      if (atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v56);
      }
    }
  }

  if (*(v52 - 56) == 1)
  {
    v59 = *(v52 - 64);
    *(v52 - 64) = 0;
    if (v59)
    {
      if (atomic_fetch_add(v59 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v59 + 2);
        (*(*v59 + 8))(v59);
      }
    }
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>(_BYTE *a1, IPC::Decoder *a2)
{
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
LABEL_13:
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
LABEL_16:
            *a2 = 0;
            *(a2 + 1) = 0;
            v10 = *(a2 + 3);
            if (v10 && v6)
            {
              (*(*v10 + 16))(v10, v5);
            }

            *a1 = 0;
            a1[8] = 0;
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
    *a1 = 0;
    goto LABEL_8;
  }

  IPC::ArgumentCoder<WebCore::FragmentedSharedBuffer,void>::decode(a2, &v14);
  *a1 = 0;
  a1[8] = 0;
  if (v15 == 1)
  {
    *a1 = v14;
LABEL_8:
    a1[8] = 1;
    return;
  }

LABEL_18:
  v11 = *a2;
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v13 = *(a2 + 3);
  if (v13)
  {
    if (v12)
    {
      (*(*v13 + 16))(v13, v11);
    }
  }
}

uint64_t IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 33));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 80));
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 120);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 136);
  v5 = *(a2 + 152);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 154));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 156));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 157));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 160));
  return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 168);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a1, &v71);
  v4 = v73;
  if ((v73 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  Options = IPC::Decoder::decode<WebCore::FetchOptionsMode>(a1);
  v5 = *(a1 + 2);
  if (*(a1 + 1) <= &v5[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_66;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_66:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_67;
  }

  v6 = *v5;
  if (v6 < 4)
  {
    v7 = 0;
    goto LABEL_7;
  }

LABEL_67:
  IPC::Decoder::markInvalid(a1);
  LOBYTE(v6) = 0;
  v7 = 1;
LABEL_7:
  IPC::Decoder::decode<WTF::URL>(a1, &v53);
  IPC::Decoder::decode<WTF::URL>(a1, &v49);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v46);
  if ((v48 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v43);
  if ((v45 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v8 = IPC::Decoder::decode<WebCore::LockBackForwardList>(a1);
  v9 = IPC::Decoder::decode<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>(a1);
  v10 = *(a1 + 1);
  v11 = *(a1 + 2);
  v12 = *a1;
  v37 = v6;
  v38 = v7;
  if (v10 <= &v11[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_69;
  }

  v13 = v11 + 1;
  *(a1 + 2) = v11 + 1;
  if (!v11)
  {
LABEL_69:
    IPC::Decoder::markInvalid(a1);
    v14 = 0;
    goto LABEL_70;
  }

  v14 = *v11;
  if (v14 < 2)
  {
    v15 = 1;
    goto LABEL_15;
  }

LABEL_70:
  IPC::Decoder::markInvalid(a1);
  v15 = 0;
  v10 = *(a1 + 1);
  v13 = *(a1 + 2);
  v12 = *a1;
LABEL_15:
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v36 = v16;
  if (v10 <= &v13[-v12])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_72;
  }

  v17 = v13 + 1;
  *(a1 + 2) = v13 + 1;
  if (!v13)
  {
LABEL_72:
    IPC::Decoder::markInvalid(a1);
    v18 = 0;
    goto LABEL_73;
  }

  v18 = *v13;
  if (v18 < 2)
  {
    v19 = 1;
    goto LABEL_22;
  }

LABEL_73:
  IPC::Decoder::markInvalid(a1);
  v19 = 0;
  v10 = *(a1 + 1);
  v17 = *(a1 + 2);
  v12 = *a1;
LABEL_22:
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21 - v12;
  v23 = v10 >= v22;
  v24 = v10 - v22;
  if (v23 && v24 > 7)
  {
    *(a1 + 2) = v21 + 1;
    if (v21)
    {
      v25 = *v21;
      v26 = 1;
      goto LABEL_30;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
  }

  IPC::Decoder::markInvalid(a1);
  v26 = 0;
  v25 = 0;
LABEL_30:
  result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v40);
  if (!*a1)
  {
LABEL_62:
    *a2 = 0;
    *(a2 + 192) = 0;
    goto LABEL_46;
  }

  if ((v4 & 1) == 0 || (v57 = v71, *&v58 = v72, Options <= 0xFFu) || (LOBYTE(v59) = Options, v38) || (HIBYTE(v59) = v37, (v56 & 1) == 0) || (v29 = v53, v53 = 0, v60 = v29, v61 = v54, v62 = v55, LODWORD(v54) = v54 & 0xFFFFFFFE, (v52 & 1) == 0) || (v30 = v49, v49 = 0, v63 = v30, v64 = v50, v65 = v51, LODWORD(v50) = v50 & 0xFFFFFFFE, (v48 & 1) == 0) || (*&v66 = v46, BYTE8(v66) = v47, (v45 & 1) == 0) || (*&v67 = v43, BYTE8(v67) = v44, (v8 & 0x100) == 0) || (LOBYTE(v68) = v8, (v9 & 0x10000) == 0) || (WORD1(v68) = v9, (v15 & 1) == 0) || (BYTE4(v68) = v36, (v19 & 1) == 0) || (BYTE5(v68) = v20, (v26 & 1) == 0) || (*(&v68 + 1) = v25, (v42 & 1) == 0))
  {
    __break(1u);
    goto LABEL_62;
  }

  v69 = v40;
  v31 = v41;
  v40 = 0;
  v41 = 0;
  v70 = v31;
  v32 = v58;
  *a2 = v57;
  *(a2 + 16) = v32;
  *(a2 + 32) = v59;
  WTF::URL::URL(a2 + 40, &v60);
  WTF::URL::URL(a2 + 80, &v63);
  *(a2 + 120) = v66;
  *(a2 + 136) = v67;
  *(a2 + 152) = v68;
  *(a2 + 168) = v69;
  v33 = v70;
  v69 = 0;
  v70 = 0;
  *(a2 + 176) = v33;
  *(a2 + 192) = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v34);
  v35 = v63;
  v63 = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, v28);
  }

  result = v60;
  v60 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v28);
  }

LABEL_46:
  if (v42 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v28);
  }

  if (v52 == 1)
  {
    result = v49;
    v49 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v28);
      }
    }
  }

  if (v56 == 1)
  {
    result = v53;
    v53 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v28);
      }
    }
  }

  return result;
}

void sub_19D74B880(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, WTF::StringImpl *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (a26 == 1 && a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, a2);
  }

  if (a32 == 1 && a27 && atomic_fetch_add_explicit(a27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a27, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WebCore::MessageWithMessagePorts>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::MessageWithMessagePorts,void>::decode(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
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

uint64_t IPC::Decoder::decode<WebCore::ServiceWorkerData>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::ServiceWorkerData,void>::decode(a1, a2);
  if ((*(a2 + 64) & 1) == 0)
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

void sub_19D74BA58(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 64) == 1)
  {
    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
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

uint64_t IPC::ArgumentCoder<WebCore::ServiceWorkerClientQueryOptions,void>::decode(IPC::Decoder *a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      if (v2)
      {
        (*(*v11 + 16))(v11);
        v2 = *(a1 + 1);
      }
    }

    else
    {
      v2 = 0;
    }

LABEL_17:
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      if (v2)
      {
        (*(*v12 + 16))(v12);
        v14 = 0;
        v4 = *a1;
        v2 = *(a1 + 1);
        goto LABEL_21;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    v14 = 0;
    goto LABEL_21;
  }

  *(a1 + 2) = v3 + 1;
  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = *v3;
  if (v5 < 2)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v14 = v5;
LABEL_21:
  *a1 = 0;
  *(a1 + 1) = 0;
  v13 = *(a1 + 3);
  if (v13 && v2)
  {
    (*(*v13 + 16))(v13, v4);
  }

  v6 = 0;
  v5 = v14;
LABEL_5:
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  Options = IPC::Decoder::decode<WebCore::FetchOptionsMode>(a1);
  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  if ((v6 & 1) == 0 || (LODWORD(v9) = Options, Options <= 0xFFu))
  {
    __break(1u);
LABEL_14:
    v7 = 0;
    return (v7 | (Options << 8)) | (v9 << 16);
  }

  LODWORD(v9) = 1;
  return (v7 | (Options << 8)) | (v9 << 16);
}

uint64_t IPC::ArgumentCoder<WebCore::ServiceWorkerData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  v5 = *(a2 + 57);
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

uint64_t IPC::ArgumentCoder<WebCore::ServiceWorkerData,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v9 = v8;
  IPC::Decoder::decode<WTF::URL>(a1, &v19);
  v10 = IPC::Decoder::decode<WebCore::ServiceWorkerState>(a1);
  result = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a1);
  if (!*a1)
  {
    goto LABEL_16;
  }

  if ((v6 & 1) == 0 || (*&v14 = v4, (v9 & 1) == 0) || (*(&v14 + 1) = v7, (v22 & 1) == 0) || (v13 = v19, v19 = 0, v15 = v13, v16 = v20, v17 = v21, LODWORD(v20) = v20 & 0xFFFFFFFE, (v10 & 0x100) == 0) || (LOBYTE(v18) = v10, (result & 0x100) == 0))
  {
    __break(1u);
LABEL_16:
    *a2 = 0;
    *(a2 + 64) = 0;
    goto LABEL_10;
  }

  HIBYTE(v18) = result;
  *a2 = v14;
  WTF::URL::URL(a2 + 16, &v15);
  *(a2 + 56) = v18;
  *(a2 + 64) = 1;
  result = v15;
  v15 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v12);
  }

LABEL_10:
  if (v22 == 1)
  {
    result = v19;
    v19 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  return result;
}

void sub_19D74BDD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a22 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::ServiceWorkerState>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::ServiceWorkerState,void>::decode<IPC::Decoder>(a1);
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

uint64_t *IPC::ArgumentCoder<WebCore::ServiceWorkerJobData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 264);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 256));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  v6 = *(a2 + 104);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 80, v6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 112));
  v7 = *(a2 + 192);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(a1, a2 + 160, v7);
  v8 = *(a2 + 208);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 209));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 216));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 224));
  return IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerRegistrationOptions>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerRegistrationOptions> const&>(a1, a2 + 232);
}

void IPC::ArgumentCoder<WebCore::ServiceWorkerJobData,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ServiceWorkerJobDataIdentifier>(a1, v55);
  IPC::Decoder::decode<WTF::URL>(a1, &v53);
  IPC::Decoder::decode<WTF::URL>(a1, &v51);
  IPC::Decoder::decode<WebCore::SecurityOriginData>(a1, v75);
  IPC::Decoder::decode<WTF::URL>(a1, &v49);
  IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, v73);
  if ((v74 & 1) == 0)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v4 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a1);
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
    v7 = *a1;
    if (v5 <= &v6[-*a1])
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
    }

    else
    {
      *(a1 + 2) = v6 + 1;
      if (v6)
      {
        v8 = *v6;
        if (v8 < 3)
        {
          v9 = v8 | 0x100;
          goto LABEL_6;
        }

        goto LABEL_91;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v37 = *(a1 + 3);
    if (!v37)
    {
      v5 = 0;
LABEL_90:
      v7 = 0;
      goto LABEL_91;
    }

    if (!v5)
    {
      goto LABEL_90;
    }

    (*(*v37 + 16))(v37);
    v7 = *a1;
    v5 = *(a1 + 1);
LABEL_91:
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38 && v5)
    {
      (*(*v38 + 16))(v38, v7);
    }

    v9 = 0;
LABEL_6:
    IPC::Decoder::decode<WTF::String>(a1, &v47);
    v10 = *(a1 + 1);
    v11 = *(a1 + 2);
    v12 = *a1;
    if (v10 <= &v11[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v39 = *(a1 + 3);
      if (v39)
      {
        if (v10)
        {
          (*(*v39 + 16))(v39);
          v10 = *(a1 + 1);
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v11 + 1;
      if (v11)
      {
        if (*v11 < 2u)
        {
          v13 = 1;
          goto LABEL_10;
        }

        goto LABEL_100;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (v40)
    {
      if (v10)
      {
        (*(*v40 + 16))(v40);
        v12 = *a1;
        v10 = *(a1 + 1);
        goto LABEL_100;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
LABEL_100:
    *a1 = 0;
    *(a1 + 1) = 0;
    v41 = *(a1 + 3);
    if (!v41 || !v10)
    {
      v12 = 0;
      v13 = 0;
      v10 = 0;
LABEL_102:
      *a1 = 0;
      *(a1 + 1) = 0;
      v42 = *(a1 + 3);
      if (v42)
      {
        if (v10)
        {
          (*(*v42 + 16))(v42, v12);
          v12 = *a1;
          v10 = *(a1 + 1);
LABEL_105:
          *a1 = 0;
          *(a1 + 1) = 0;
          v43 = *(a1 + 3);
          if (v43)
          {
            if (v10)
            {
              (*(*v43 + 16))(v43, v12);
              v12 = *a1;
              v10 = *(a1 + 1);
              goto LABEL_108;
            }
          }

          else
          {
            v10 = 0;
          }

          v12 = 0;
LABEL_108:
          *a1 = 0;
          *(a1 + 1) = 0;
          v33 = *(a1 + 3);
          if (v33 && v10)
          {
            goto LABEL_85;
          }

          goto LABEL_80;
        }
      }

      else
      {
        v10 = 0;
      }

      v12 = 0;
      goto LABEL_105;
    }

    (*(*v41 + 16))(v41, v12);
    v13 = 0;
    v12 = *a1;
    v10 = *(a1 + 1);
LABEL_10:
    v14 = *(a1 + 2);
    if (v10 <= v14 - v12)
    {
      goto LABEL_102;
    }

    *(a1 + 2) = v14 + 1;
    if (!v14)
    {
      goto LABEL_105;
    }

    v15 = *v14;
    if (v15 >= 2)
    {
      goto LABEL_108;
    }

    if (!v15)
    {
      LOBYTE(v44) = 0;
LABEL_20:
      v45 = v15;
      v46 = 1;
      if (!v12)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    IPC::Decoder::decode<WTF::String>(a1, &v56);
    v16 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a1);
    v17 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
    v12 = *a1;
    if (*a1)
    {
      if ((v57 & 1) == 0 || (v16 & 0x100) == 0 || (v17 & 0x100) == 0)
      {
        goto LABEL_71;
      }

      v44 = v56;
      LOBYTE(v15) = 1;
      goto LABEL_20;
    }

    if (v57)
    {
      v31 = v56;
      v56 = 0;
      if (v31)
      {
        if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, 0);
        }
      }
    }

    v12 = *a1;
    v32 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33 && v32)
    {
LABEL_85:
      (*(*v33 + 16))(v33, v12);
    }

LABEL_80:
    LOBYTE(v44) = 0;
    v46 = 0;
    v12 = *a1;
    v34 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (!v35 || !v34 || ((*(*v35 + 16))(v35, v12), (v12 = *a1) == 0))
    {
LABEL_28:
      *a2 = 0;
      *(a2 + 272) = 0;
      goto LABEL_45;
    }

LABEL_21:
    if (v9 < 0x100 || v9)
    {
      break;
    }

    if (v46)
    {
      if ((v45 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    v28 = *a1;
    v29 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (v30 && v29)
    {
      (*(*v30 + 16))(v30, v28);
    }
  }

  if ((v46 & 1) == 0)
  {
    goto LABEL_71;
  }

  if (v45 == 1)
  {
    goto LABEL_28;
  }

LABEL_29:
  if ((v55[16] & 1) == 0 || (v54 & 1) == 0 || (v52 & 1) == 0 || (v76 & 1) == 0 || (v50 & 1) == 0 || (v74 & 1) == 0 || (v4 & 0x100) == 0 || v9 <= 0xFF || (v48 & 1) == 0 || (v13 & 1) == 0)
  {
    goto LABEL_71;
  }

  WebCore::ServiceWorkerJobData::ServiceWorkerJobData();
  WTF::URL::URL(a2, &v56);
  WTF::URL::URL(a2 + 40, v58);
  *(a2 + 80) = 0;
  *(a2 + 104) = -1;
  v18 = v61;
  if (!v61)
  {
    v19 = v59;
    v59 = 0uLL;
    *(a2 + 80) = v19;
    *(a2 + 96) = v60;
    goto LABEL_41;
  }

  if (v61 != 255)
  {
    *(a2 + 80) = v59;
LABEL_41:
    *(a2 + 104) = v18;
  }

  WTF::URL::URL(a2 + 112, v62);
  v21 = v64;
  *(a2 + 160) = v63;
  *(a2 + 176) = v21;
  *(a2 + 192) = v65;
  *(a2 + 208) = v66;
  v22 = v67;
  v67 = 0;
  *(a2 + 216) = v22;
  *(a2 + 224) = v68;
  *(a2 + 232) = 0;
  *(a2 + 248) = 0;
  if (v71 == 1)
  {
    v23 = v69;
    v69 = 0;
    *(a2 + 232) = v23;
    *(a2 + 240) = v70;
    *(a2 + 248) = 1;
  }

  *(a2 + 256) = v72;
  *(a2 + 272) = 1;
  WebCore::ServiceWorkerJobData::~ServiceWorkerJobData(&v56, v20);
LABEL_45:
  if (v46 == 1 && v45 == 1 && v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v12);
  }

  if (v48 == 1)
  {
    v24 = v47;
    v47 = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v12);
      }
    }
  }

  if (v50 == 1)
  {
    v25 = v49;
    v49 = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v12);
      }
    }
  }

  if (v76 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v75);
  }

  if (v52 == 1)
  {
    v26 = v51;
    v51 = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v12);
      }
    }
  }

  if (v54 == 1)
  {
    v27 = v53;
    v53 = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v12);
      }
    }
  }
}

void sub_19D74C778(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, WTF::StringImpl *a21, char a22, WTF::StringImpl *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, WTF::StringImpl *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, WTF::StringImpl *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, WTF::StringImpl *a44, char a45)
{
  if (a22 == 1 && a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, a2);
  }

  if (a28 == 1 && a23 && atomic_fetch_add_explicit(a23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a23, a2);
  }

  if (*(v45 - 80) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v45 - 112);
  }

  if (a34 == 1 && a29 && atomic_fetch_add_explicit(a29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a29, a2);
  }

  if (a40 == 1 && a35 && atomic_fetch_add_explicit(a35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a35, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WebCore::ServiceWorkerJobDataIdentifier>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::ServiceWorkerJobDataIdentifier,void>::decode(a1, a2);
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

void *IPC::ArgumentCoder<WebCore::ServiceWorkerRoutePattern,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 3);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 6);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 7);
}

uint64_t IPC::ArgumentCoder<WebCore::ServiceWorkerRouteCondition,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerRoutePattern>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerRoutePattern> const&>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 80));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 82));
  IPC::ArgumentCoder<std::optional<WebCore::TextDirection>,void>::encode<IPC::Encoder,std::optional<WebCore::TextDirection> const&>(a1, (a2 + 84));
  IPC::VectorArgumentCoder<false,WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 88));

  return IPC::ArgumentCoder<std::unique_ptr<WebCore::ServiceWorkerRouteCondition>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::ServiceWorkerRouteCondition> const&>(a1, (a2 + 104));
}

mpark *IPC::ArgumentCoder<WebCore::ServiceWorkerRoute,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::ServiceWorkerRouteCondition,void>::encode(a1, a2);
  v5 = *(a2 + 120);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,void>::encode<IPC::Encoder,mpark::variant<WebCore::RouterSourceDict,WebCore::RouterSourceEnum> const&>(a1, (a2 + 112), v5);
}

void IPC::ArgumentCoder<WebCore::ServiceWorkerRoute,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<WebCore::ServiceWorkerRouteCondition>(&v49, a1);
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v14 = *v2;
  if (v12 <= &v13[-*v2])
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    v32 = *(v2 + 24);
    if (v32)
    {
      if (!v12)
      {
        goto LABEL_52;
      }

      (*(*v32 + 16))(v32);
      goto LABEL_51;
    }

    goto LABEL_61;
  }

  v15 = v13 + 1;
  *(v2 + 16) = v13 + 1;
  if (v13)
  {
    if (*v13 > 1u)
    {
      goto LABEL_4;
    }

    if (!*v13)
    {
      v4 = IPC::Decoder::decode<WTF::String>(v2, v37);
      if (*v2)
      {
        if (v37[1])
        {
          v18 = 0;
          v19 = 0;
          v2 = 0;
          v16 = v37[0];
          v17 = 1;
          goto LABEL_15;
        }

        goto LABEL_43;
      }

      if (v37[1])
      {
        v30 = v37[0];
        v37[0] = 0;
        if (v30)
        {
          if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v14);
          }
        }
      }

      goto LABEL_51;
    }

    if (v12 <= v15 - v14)
    {
      v33 = 0;
      v34 = 0;
      *v2 = 0;
      *(v2 + 8) = 0;
      v35 = *(v2 + 24);
      if (v35)
      {
        (*(*v35 + 16))(v35);
        v34 = *v2;
        v33 = *(v2 + 8);
      }
    }

    else
    {
      *(v2 + 16) = v13 + 2;
      if (v13 != -1)
      {
        v16 = *v15;
        if (v16 < 3)
        {
          v2 = 0;
          if (v14)
          {
            goto LABEL_11;
          }

          goto LABEL_5;
        }

        goto LABEL_52;
      }

      v33 = v12;
      v34 = v14;
    }

    *v2 = 0;
    *(v2 + 8) = 0;
    v36 = *(v2 + 24);
    if (v36 && v33)
    {
      (*(*v36 + 16))(v36, v34, v33);
LABEL_51:
      v12 = *(v2 + 8);
      goto LABEL_52;
    }

LABEL_61:
    v12 = 0;
  }

LABEL_52:
  *v2 = 0;
  *(v2 + 8) = 0;
  v31 = *(v2 + 24);
  if (v31 && v12)
  {
    (*(*v31 + 16))(v31);
  }

LABEL_4:
  v14 = *v2;
  v12 = *(v2 + 8);
  *v2 = 0;
  *(v2 + 8) = 0;
  v4 = *(v2 + 24);
  if (v4)
  {
    while (v12)
    {
      v4 = (*(*v4 + 16))(v4, v14);
      v16 = 0;
      v14 = *v2;
      v2 = 1;
      if (!v14)
      {
        break;
      }

LABEL_11:
      v17 = 0;
      v18 = 1;
      v19 = 1;
LABEL_15:
      if (v60)
      {
        LOBYTE(v37[0]) = 0;
        v41 = 0;
        v20 = v53;
        if (v53 == 1)
        {
          v5 = *(&v49 + 1);
          *v37 = v49;
          v7 = *(&v50 + 1);
          v6 = v50;
          v49 = 0u;
          v50 = 0u;
          v38 = __PAIR128__(v7, v6);
          v9 = *(&v51 + 1);
          v10 = v51;
          v39 = v51;
          v11 = *(&v52 + 1);
          v8 = v52;
          v51 = 0u;
          v52 = 0u;
          v40 = __PAIR128__(v11, v8);
          v41 = 1;
        }

        v14 = v54;
        v42 = v54;
        v43 = v55;
        v44 = v56;
        v21 = v57;
        v54 = 0;
        v45 = v57;
        v4 = v58;
        v12 = HIDWORD(v58);
        v57 = 0;
        v58 = 0;
        *&v46 = __PAIR64__(v12, v4);
        v22 = v59;
        v59 = 0;
        *(&v46 + 1) = v22;
        if (!v2)
        {
          if (v19)
          {
            LOBYTE(v47) = v16;
            v23 = v16;
          }

          else
          {
            v47 = v16;
            v23 = v16;
            v16 = 0;
          }

          v48 = v18;
          *a2 = 0;
          *(a2 + 64) = 0;
          if (v20)
          {
            *a2 = v37[0];
            *(a2 + 8) = v5;
            *v37 = 0u;
            v38 = 0u;
            *(a2 + 16) = v6;
            *(a2 + 24) = v7;
            *(a2 + 32) = v10;
            *(a2 + 40) = v9;
            v39 = 0u;
            v40 = 0u;
            *(a2 + 48) = v8;
            *(a2 + 56) = v11;
            *(a2 + 64) = 1;
          }

          *(a2 + 72) = v14;
          *(a2 + 80) = v55;
          *(a2 + 84) = v56;
          v42 = 0;
          v45 = 0;
          *(a2 + 88) = v21;
          v46 = 0u;
          *(a2 + 96) = v4;
          *(a2 + 100) = v12;
          *(a2 + 104) = v22;
          if (v17)
          {
            *(a2 + 112) = v47;
            *(a2 + 120) = 0;
            *(a2 + 128) = 1;
            v47 = 0;
          }

          else
          {
            *(a2 + 112) = v23;
            *(a2 + 120) = v18;
            *(a2 + 128) = 1;
          }

          v48 = -1;
          std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](&v46 + 1, 0);
          WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v24);
          v26 = v42;
          v42 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v25);
          }

          if (v41 == 1)
          {
            WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(v37, v25);
          }

          if ((v19 & 1) == 0 && v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v25);
          }

          goto LABEL_36;
        }
      }

LABEL_43:
      __break(1u);
    }
  }

LABEL_5:
  *a2 = 0;
  *(a2 + 128) = 0;
LABEL_36:
  if (v60 == 1)
  {
    std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](&v59, 0);
    WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v27);
    v29 = v54;
    v54 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v28);
    }

    if (v53 == 1)
    {
      WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&v49, v28);
    }
  }
}

void sub_19D74CFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, WTF::StringImpl *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a39 == 1)
  {
    std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](&a38, 0);
    WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a36, v40);
    v42 = a34;
    a34 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v41);
    }

    if (a33 == 1)
    {
      WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&a25, v41);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebCore::ServiceWorkerRouteCondition>(uint64_t a1, IPC::Decoder *a2)
{
  v11 = *(a2 + 2);
  v12 = *a2;
  v13 = *(a2 + 1);
  if (v13 <= v11 - v12)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v137 = *(a2 + 3);
    if (v137)
    {
      if (v13)
      {
        (*(*v137 + 16))(v137);
        v12 = *a2;
        v13 = *(a2 + 1);
        goto LABEL_215;
      }
    }

    else
    {
      v13 = 0;
    }

    v12 = 0;
    goto LABEL_215;
  }

  *(a2 + 2) = v11 + 1;
  if (v11)
  {
    v14 = *v11;
    if (v14 >= 2)
    {
      goto LABEL_148;
    }

    if (!v14)
    {
      LOBYTE(v171) = 0;
      v175 = 0;
      v176 = 1;
      goto LABEL_49;
    }

    IPC::Decoder::decode<WTF::String>(a2, &v206);
    IPC::Decoder::decode<WTF::String>(a2, &v204);
    IPC::Decoder::decode<WTF::String>(a2, &v202);
    IPC::Decoder::decode<WTF::String>(a2, &v200);
    IPC::Decoder::decode<WTF::String>(a2, &v198);
    IPC::Decoder::decode<WTF::String>(a2, &v196);
    IPC::Decoder::decode<WTF::String>(a2, &v194);
    IPC::Decoder::decode<WTF::String>(a2, &v192);
    v16 = *a2;
    if (*a2)
    {
      if ((v207 & 1) == 0)
      {
        goto LABEL_152;
      }

      v17 = v206;
      v206 = 0;
      if ((v205 & 1) == 0)
      {
        goto LABEL_152;
      }

      v2 = v204;
      v204 = 0;
      if ((v203 & 1) == 0)
      {
        goto LABEL_152;
      }

      v3 = v202;
      v202 = 0;
      if ((v201 & 1) == 0)
      {
        goto LABEL_152;
      }

      v4 = v200;
      v200 = 0;
      if ((v199 & 1) == 0)
      {
        goto LABEL_152;
      }

      v5 = v198;
      v198 = 0;
      if ((v197 & 1) == 0)
      {
        goto LABEL_152;
      }

      v6 = v196;
      v196 = 0;
      if ((v195 & 1) == 0)
      {
        goto LABEL_152;
      }

      v7 = v194;
      v194 = 0;
      if ((v193 & 1) == 0)
      {
        goto LABEL_152;
      }

      v8 = v192;
      v192 = 0;
      *&v177 = v17;
      *(&v177 + 1) = v2;
      v188 = 0u;
      v189 = 0u;
      *&v178 = v3;
      *(&v178 + 1) = v4;
      *&v179 = v5;
      *(&v179 + 1) = v6;
      v190 = 0u;
      v191 = 0u;
      *&v180 = v7;
      *(&v180 + 1) = v8;
      v181 = 1;
      WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&v188, v15);
    }

    else
    {
      LOBYTE(v177) = 0;
      v181 = 0;
    }

    if (v193 == 1)
    {
      v18 = v192;
      v192 = 0;
      if (v18)
      {
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v15);
        }
      }
    }

    if (v195 == 1)
    {
      v19 = v194;
      v194 = 0;
      if (v19)
      {
        if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v15);
        }
      }
    }

    if (v197 == 1)
    {
      v20 = v196;
      v196 = 0;
      if (v20)
      {
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v15);
        }
      }
    }

    if (v199 == 1)
    {
      v21 = v198;
      v198 = 0;
      if (v21)
      {
        if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v15);
        }
      }
    }

    if (v201 == 1)
    {
      v22 = v200;
      v200 = 0;
      if (v22)
      {
        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v15);
        }
      }
    }

    if (v203 == 1)
    {
      v23 = v202;
      v202 = 0;
      if (v23)
      {
        if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v15);
        }
      }
    }

    if (v205 == 1)
    {
      v24 = v204;
      v204 = 0;
      if (v24)
      {
        if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v15);
        }
      }
    }

    if (v207 == 1 && (v25 = v206, v206 = 0, v25) && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v15);
      if (v16)
      {
        goto LABEL_47;
      }
    }

    else if (v16)
    {
LABEL_47:
      *&v171 = v177;
      *(&v171 + 1) = v2;
      v177 = 0u;
      v178 = 0u;
      *&v172 = v3;
      *(&v172 + 1) = v4;
      *&v173 = v5;
      *(&v173 + 1) = v6;
      v179 = 0u;
      v180 = 0u;
      *&v174 = v7;
      *(&v174 + 1) = v8;
      v175 = 1;
      WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&v177, v15);
      v176 = 1;
      goto LABEL_49;
    }

    goto LABEL_147;
  }

LABEL_215:
  *a2 = 0;
  *(a2 + 1) = 0;
  v138 = *(a2 + 3);
  if (v138)
  {
    if (v13)
    {
      (*(*v138 + 16))(v138, v12);
LABEL_147:
      v12 = *a2;
      v13 = *(a2 + 1);
      goto LABEL_148;
    }
  }

  else
  {
    v13 = 0;
  }

  v12 = 0;
LABEL_148:
  *a2 = 0;
  *(a2 + 1) = 0;
  v101 = *(a2 + 3);
  if (v101 && v13)
  {
    (*(*v101 + 16))(v101, v12);
  }

  LOBYTE(v171) = 0;
  v176 = 0;
  v102 = *a2;
  v103 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v104 = *(a2 + 3);
  if (v104 && v103)
  {
    (*(*v104 + 16))(v104, v102);
  }

LABEL_49:
  IPC::Decoder::decode<WTF::String>(a2, &v204);
  v33 = *(a2 + 1);
  v34 = *(a2 + 2);
  v35 = *a2;
  if (v33 <= &v34[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v139 = *(a2 + 3);
    if (v139)
    {
      if (v33)
      {
        (*(*v139 + 16))(v139);
        v33 = *(a2 + 1);
      }
    }

    else
    {
      v33 = 0;
    }

LABEL_220:
    *a2 = 0;
    *(a2 + 1) = 0;
    v140 = *(a2 + 3);
    if (v140)
    {
      if (v33)
      {
        (*(*v140 + 16))(v140);
        v35 = *a2;
        v33 = *(a2 + 1);
LABEL_223:
        *a2 = 0;
        *(a2 + 1) = 0;
        v141 = *(a2 + 3);
        if (v141 && v33)
        {
          (*(*v141 + 16))(v141, v35);
        }

        v39 = 0;
        LODWORD(v170) = 0;
        goto LABEL_225;
      }
    }

    else
    {
      v33 = 0;
    }

    v35 = 0;
    goto LABEL_223;
  }

  *(a2 + 2) = v34 + 1;
  if (!v34)
  {
    goto LABEL_220;
  }

  v36 = *v34;
  if (v36 >= 2)
  {
    goto LABEL_223;
  }

  if (!v36)
  {
    v170 = 0;
    v40 = 0x10000;
    goto LABEL_58;
  }

  Options = IPC::Decoder::decode<WebCore::FetchOptionsMode>(a2);
  v38 = Options;
  if ((Options & 0xFF00) == 0)
  {
    v38 = 0;
  }

  LODWORD(v170) = v38;
  v39 = 256;
  if (Options > 0xFFu)
  {
    HIDWORD(v170) = 256;
    v40 = (Options << 8) & 0xFF0000;
LABEL_58:
    v169 = v40;
    goto LABEL_59;
  }

LABEL_225:
  v142 = *a2;
  v143 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v144 = *(a2 + 3);
  HIDWORD(v170) = v39;
  if (v144 && v143)
  {
    (*(*v144 + 16))(v144, v142);
  }

  v169 = 0;
LABEL_59:
  v41 = *(a2 + 1);
  v42 = *(a2 + 2);
  v43 = *a2;
  if (v41 <= &v42[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v145 = *(a2 + 3);
    if (v145)
    {
      if (v41)
      {
        (*(*v145 + 16))(v145);
        v41 = *(a2 + 1);
      }
    }

    else
    {
      v41 = 0;
    }

LABEL_231:
    *a2 = 0;
    *(a2 + 1) = 0;
    v146 = *(a2 + 3);
    if (v146)
    {
      if (v41)
      {
        (*(*v146 + 16))(v146);
        v43 = *a2;
        v41 = *(a2 + 1);
LABEL_234:
        *a2 = 0;
        *(a2 + 1) = 0;
        v147 = *(a2 + 3);
        if (v147 && v41)
        {
          (*(*v147 + 16))(v147, v43);
        }

        v47 = 0;
        v167 = 0;
        goto LABEL_236;
      }
    }

    else
    {
      v41 = 0;
    }

    v43 = 0;
    goto LABEL_234;
  }

  *(a2 + 2) = v42 + 1;
  if (!v42)
  {
    goto LABEL_231;
  }

  v44 = *v42;
  if (v44 >= 2)
  {
    goto LABEL_234;
  }

  if (!v44)
  {
    v167 = 0;
    v168 = 0;
    v48 = 0x10000;
    goto LABEL_68;
  }

  v45 = IPC::Decoder::decode<WebCore::FetchOptionsDestination>(a2);
  v46 = v45;
  if ((v45 & 0xFF00) == 0)
  {
    v46 = 0;
  }

  v167 = v46;
  v47 = 256;
  if (v45 > 0xFFu)
  {
    v168 = 256;
    v48 = (v45 << 8) & 0xFF0000;
LABEL_68:
    v166 = v48;
    goto LABEL_69;
  }

LABEL_236:
  v148 = *a2;
  v149 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v150 = *(a2 + 3);
  v168 = v47;
  if (v150 && v149)
  {
    (*(*v150 + 16))(v150, v148);
  }

  v166 = 0;
LABEL_69:
  v49 = *(a2 + 1);
  v50 = *(a2 + 2);
  v51 = *a2;
  if (v49 <= &v50[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v151 = *(a2 + 3);
    if (v151)
    {
      if (v49)
      {
        (*(*v151 + 16))(v151);
        v49 = *(a2 + 1);
      }
    }

    else
    {
      v49 = 0;
    }

LABEL_242:
    *a2 = 0;
    *(a2 + 1) = 0;
    v152 = *(a2 + 3);
    if (v152)
    {
      if (v49)
      {
        (*(*v152 + 16))(v152);
        v51 = *a2;
        v49 = *(a2 + 1);
LABEL_245:
        *a2 = 0;
        *(a2 + 1) = 0;
        v153 = *(a2 + 3);
        if (v153 && v49)
        {
          (*(*v153 + 16))(v153, v51);
        }

        LODWORD(v8) = 0;
        goto LABEL_253;
      }
    }

    else
    {
      v49 = 0;
    }

    v51 = 0;
    goto LABEL_245;
  }

  v52 = v50 + 1;
  *(a2 + 2) = v50 + 1;
  if (!v50)
  {
    goto LABEL_242;
  }

  v26 = *v50;
  if (v26 >= 2)
  {
    goto LABEL_245;
  }

  if (!*v50)
  {
    LODWORD(v8) = 0;
    v165 = 0x1000000000000;
    goto LABEL_78;
  }

  v26 = v52 - v51;
  if (v49 <= v52 - v51)
  {
    v154 = 0;
    v155 = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    v156 = *(a2 + 3);
    if (v156)
    {
      (*(*v156 + 16))(v156);
      v155 = *a2;
      v154 = *(a2 + 1);
    }
  }

  else
  {
    *(a2 + 2) = v50 + 2;
    if (v50 != -1)
    {
      if (*v52 < 2u)
      {
        LOWORD(v165) = *v52;
        HIDWORD(v165) = 0x10000;
        LODWORD(v8) = 256;
        goto LABEL_78;
      }

      goto LABEL_251;
    }

    v154 = v49;
    v155 = v51;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v157 = *(a2 + 3);
  if (v157 && v154)
  {
    (*(*v157 + 16))(v157, v155, v154);
    v51 = *a2;
    v49 = *(a2 + 1);
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

LABEL_251:
  *a2 = 0;
  *(a2 + 1) = 0;
  v158 = *(a2 + 3);
  if (v158 && v49)
  {
    (*(*v158 + 16))(v158, v51);
    v161 = *(a2 + 3);
    v162 = *a2;
    v163 = *(a2 + 1);
    LODWORD(v8) = 256;
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v161 && v163)
    {
      (*(*v161 + 16))(v161, v162);
    }
  }

  else
  {
    LODWORD(v8) = 256;
  }

LABEL_253:
  v159 = *a2;
  v49 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v160 = *(a2 + 3);
  if (v160)
  {
    if (v49)
    {
      (*(*v160 + 16))(v160, v159);
      v165 = 0;
      v51 = *a2;
      v49 = *(a2 + 1);
      goto LABEL_78;
    }
  }

  else
  {
    v49 = 0;
  }

  v51 = 0;
  v165 = 0;
LABEL_78:
  v53 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v49 < v53 - v51 || v49 - (v53 - v51) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v128 = *(a2 + 3);
    if (v128)
    {
      if (v49)
      {
        (*(*v128 + 16))(v128);
        v51 = *a2;
        v49 = *(a2 + 1);
LABEL_190:
        *a2 = 0;
        *(a2 + 1) = 0;
        v129 = *(a2 + 3);
        if (v129 && v49)
        {
          (*(*v129 + 16))(v129, v51);
        }

        LOBYTE(v188) = 0;
        LOBYTE(v189) = 0;
        v72 = *(a2 + 1);
        goto LABEL_192;
      }
    }

    else
    {
      v49 = 0;
    }

    v51 = 0;
    goto LABEL_190;
  }

  *(a2 + 2) = v53 + 8;
  if (!v53)
  {
    goto LABEL_190;
  }

  v4 = *v53;
  v206 = 0;
  v207 = 0;
  if (v4 >= 0x2492)
  {
    goto LABEL_153;
  }

  if (v4)
  {
    v54 = WTF::fastMalloc((112 * v4));
    LODWORD(v207) = (613566757 * ((7 * v4) & 0xFFFFFFF)) >> 32;
    v206 = v54;
    v55 = v189;
    do
    {
      IPC::Decoder::decode<WebCore::ServiceWorkerRouteCondition>(&v177, a2);
      v56 = v187;
      if (v187)
      {
        if (HIDWORD(v207) == v207)
        {
          WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerRouteCondition>(&v206, &v177);
        }

        else
        {
          v57 = v206 + 112 * HIDWORD(v207);
          *v57 = 0;
          v57[64] = 0;
          if (v181 == 1)
          {
            v58 = v177;
            *&v177 = 0;
            *v57 = v58;
            v59 = *(&v177 + 1);
            *(&v177 + 1) = 0;
            *(v57 + 1) = v59;
            v60 = v178;
            *&v178 = 0;
            *(v57 + 2) = v60;
            v61 = *(&v178 + 1);
            *(&v178 + 1) = 0;
            *(v57 + 3) = v61;
            v62 = v179;
            *&v179 = 0;
            *(v57 + 4) = v62;
            v63 = *(&v179 + 1);
            *(&v179 + 1) = 0;
            *(v57 + 5) = v63;
            v64 = v180;
            *&v180 = 0;
            *(v57 + 6) = v64;
            v65 = *(&v180 + 1);
            *(&v180 + 1) = 0;
            *(v57 + 7) = v65;
            v57[64] = 1;
          }

          v66 = v182;
          v182 = 0;
          *(v57 + 9) = v66;
          LODWORD(v66) = v183;
          *(v57 + 42) = v184;
          *(v57 + 20) = v66;
          *(v57 + 11) = 0;
          *(v57 + 12) = 0;
          v67 = v185;
          v185 = 0;
          *(v57 + 11) = v67;
          LODWORD(v67) = v186;
          LODWORD(v186) = 0;
          *(v57 + 24) = v67;
          LODWORD(v67) = DWORD1(v186);
          DWORD1(v186) = 0;
          *(v57 + 25) = v67;
          v68 = *(&v186 + 1);
          *(&v186 + 1) = 0;
          *(v57 + 13) = v68;
          ++HIDWORD(v207);
        }
      }

      else
      {
        v55 = 0;
      }

      if (v187 == 1)
      {
        std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](&v186 + 1, 0);
        WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v69);
        v70 = v182;
        v182 = 0;
        if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v70, v51);
        }

        if (v181 == 1)
        {
          WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&v177, v51);
        }
      }

      if ((v56 & 1) == 0)
      {
        LOBYTE(v188) = 0;
        LOBYTE(v189) = v55;
        goto LABEL_101;
      }

      --v4;
    }

    while (v4);
  }

  while (1)
  {
    *&v188 = v206;
    v71 = v207;
    v206 = 0;
    v207 = 0;
    *(&v188 + 1) = v71;
    LOBYTE(v189) = 1;
LABEL_101:
    WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v206, v51);
    v72 = *(a2 + 1);
    if ((v189 & 1) == 0)
    {
LABEL_192:
      v130 = *a2;
      *a2 = 0;
      *(a2 + 1) = 0;
      v131 = *(a2 + 3);
      if (v131 && v72)
      {
        (*(*v131 + 16))(v131, v130);
        v72 = *(a2 + 1);
        goto LABEL_102;
      }

      v72 = 0;
      v73 = *a2;
LABEL_194:
      *a2 = 0;
      *(a2 + 1) = 0;
      v132 = *(a2 + 3);
      if (v132)
      {
        if (v72)
        {
          (*(*v132 + 16))(v132, v73);
          v72 = *(a2 + 1);
        }
      }

      else
      {
        v72 = 0;
      }

LABEL_196:
      *a2 = 0;
      *(a2 + 1) = 0;
      v133 = *(a2 + 3);
      if (v133)
      {
        if (v72)
        {
          (*(*v133 + 16))(v133);
          v73 = *a2;
          v72 = *(a2 + 1);
          goto LABEL_199;
        }
      }

      else
      {
        v72 = 0;
      }

      v73 = 0;
LABEL_199:
      *a2 = 0;
      *(a2 + 1) = 0;
      v134 = *(a2 + 3);
      if (v134 && v72)
      {
        (*(*v134 + 16))(v134, v73);
      }

      goto LABEL_200;
    }

LABEL_102:
    v73 = *a2;
    v74 = *(a2 + 2);
    if (v72 <= &v74[-*a2])
    {
      goto LABEL_194;
    }

    *(a2 + 2) = v74 + 1;
    if (!v74)
    {
      goto LABEL_196;
    }

    v75 = *v74;
    if (v75 >= 2)
    {
      goto LABEL_199;
    }

    if (!v75)
    {
      v206 = 0;
      v90 = 1;
      LOBYTE(v207) = 1;
      goto LABEL_117;
    }

    IPC::Decoder::decode<WebCore::ServiceWorkerRouteCondition>(&v177, a2);
    if (v187 == 1)
    {
      v76 = WTF::fastMalloc(0x70);
      *v76 = 0;
      *(v76 + 64) = 0;
      if (v181 == 1)
      {
        v77 = v177;
        *&v177 = 0;
        *v76 = v77;
        v78 = *(&v177 + 1);
        *(&v177 + 1) = 0;
        *(v76 + 8) = v78;
        v79 = v178;
        *&v178 = 0;
        *(v76 + 16) = v79;
        v80 = *(&v178 + 1);
        *(&v178 + 1) = 0;
        *(v76 + 24) = v80;
        v81 = v179;
        *&v179 = 0;
        *(v76 + 32) = v81;
        v82 = *(&v179 + 1);
        *(&v179 + 1) = 0;
        *(v76 + 40) = v82;
        v83 = v180;
        *&v180 = 0;
        *(v76 + 48) = v83;
        v84 = *(&v180 + 1);
        *(&v180 + 1) = 0;
        *(v76 + 56) = v84;
        *(v76 + 64) = 1;
      }

      v85 = v182;
      v182 = 0;
      *(v76 + 72) = v85;
      LODWORD(v85) = v183;
      *(v76 + 84) = v184;
      *(v76 + 80) = v85;
      *(v76 + 88) = 0;
      *(v76 + 96) = 0;
      v86 = v185;
      v185 = 0;
      *(v76 + 88) = v86;
      LODWORD(v86) = v186;
      LODWORD(v186) = 0;
      *(v76 + 96) = v86;
      LODWORD(v86) = DWORD1(v186);
      DWORD1(v186) = 0;
      *(v76 + 100) = v86;
      v87 = *(&v186 + 1);
      *(&v186 + 1) = 0;
      *(v76 + 104) = v87;
      v202 = 0;
      v206 = v76;
      LOBYTE(v207) = 1;
      std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](&v202, 0);
      if (v187)
      {
        std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](&v186 + 1, 0);
        WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v88);
        v89 = v182;
        v182 = 0;
        if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v89, v73);
        }

        if (v181 == 1)
        {
          WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&v177, v73);
        }
      }

      v90 = 1;
      goto LABEL_117;
    }

LABEL_200:
    LOBYTE(v206) = 0;
    LOBYTE(v207) = 0;
    v73 = *a2;
    v135 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v136 = *(a2 + 3);
    if (v136 && v135)
    {
      (*(*v136 + 16))(v136, v73);
    }

    v90 = 0;
LABEL_117:
    v91 = *a2 != 0;
    if (!*a2)
    {
      break;
    }

    if (v176)
    {
      LOBYTE(v177) = 0;
      v181 = 0;
      v92 = v175;
      if (v175 == 1)
      {
        v26 = *(&v171 + 1);
        v177 = v171;
        v28 = *(&v172 + 1);
        v27 = v172;
        v171 = 0u;
        v172 = 0u;
        v178 = __PAIR128__(v28, v27);
        v30 = *(&v173 + 1);
        v31 = v173;
        v179 = v173;
        v32 = *(&v174 + 1);
        v29 = v174;
        v173 = 0u;
        v174 = 0u;
        v180 = __PAIR128__(v32, v29);
        v181 = 1;
      }

      if (v205)
      {
        v93 = v204;
        v204 = 0;
        if ((v170 | HIDWORD(v170) | v169) >> 16)
        {
          LOWORD(v183) = v170 | WORD2(v170);
          if ((v167 | v168 | v166) >> 16)
          {
            HIWORD(v183) = v167 | v168;
            if ((HIDWORD(v165) | v8) >> 16)
            {
              v184 = v165 | v8;
              if (v189)
              {
                v94 = v188;
                v188 = 0uLL;
                if (v90)
                {
                  v95 = v206;
                  v206 = 0;
                  *a1 = 0;
                  *(a1 + 64) = 0;
                  if (v92)
                  {
                    *a1 = v177;
                    *(a1 + 8) = v26;
                    v177 = 0u;
                    v178 = 0u;
                    *(a1 + 16) = v27;
                    *(a1 + 24) = v28;
                    *(a1 + 32) = v31;
                    *(a1 + 40) = v30;
                    v179 = 0u;
                    v180 = 0u;
                    *(a1 + 48) = v29;
                    *(a1 + 56) = v32;
                    *(a1 + 64) = 1;
                  }

                  *(a1 + 72) = v93;
                  *(a1 + 80) = v183;
                  *(a1 + 84) = v184;
                  v182 = 0;
                  v185 = 0;
                  *(a1 + 88) = v94;
                  v186 = 0u;
                  *(a1 + 96) = *(&v94 + 1);
                  *(a1 + 104) = v95;
                  *(a1 + 112) = 1;
                  std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](&v186 + 1, 0);
                  WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v96);
                  v98 = v182;
                  v182 = 0;
                  if (v98 && atomic_fetch_add_explicit(v98, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v98, v97);
                  }

                  if (v181 == 1)
                  {
                    WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&v177, v97);
                  }

                  goto LABEL_134;
                }
              }
            }
          }
        }
      }
    }

LABEL_152:
    __break(1u);
LABEL_153:
    v105 = v189;
    do
    {
      IPC::Decoder::decode<WebCore::ServiceWorkerRouteCondition>(&v177, a2);
      v106 = v187;
      if (v187)
      {
        if (HIDWORD(v207) == v207)
        {
          WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerRouteCondition>(&v206, &v177);
        }

        else
        {
          v107 = v206 + 112 * HIDWORD(v207);
          *v107 = 0;
          v107[64] = 0;
          if (v181 == 1)
          {
            v108 = v177;
            *&v177 = 0;
            *v107 = v108;
            v109 = *(&v177 + 1);
            *(&v177 + 1) = 0;
            *(v107 + 1) = v109;
            v110 = v178;
            *&v178 = 0;
            *(v107 + 2) = v110;
            v111 = *(&v178 + 1);
            *(&v178 + 1) = 0;
            *(v107 + 3) = v111;
            v112 = v179;
            *&v179 = 0;
            *(v107 + 4) = v112;
            v113 = *(&v179 + 1);
            *(&v179 + 1) = 0;
            *(v107 + 5) = v113;
            v114 = v180;
            *&v180 = 0;
            *(v107 + 6) = v114;
            v115 = *(&v180 + 1);
            *(&v180 + 1) = 0;
            *(v107 + 7) = v115;
            v107[64] = 1;
          }

          v116 = v182;
          v182 = 0;
          *(v107 + 9) = v116;
          LODWORD(v116) = v183;
          *(v107 + 42) = v184;
          *(v107 + 20) = v116;
          *(v107 + 11) = 0;
          *(v107 + 12) = 0;
          v117 = v185;
          v185 = 0;
          *(v107 + 11) = v117;
          LODWORD(v117) = v186;
          LODWORD(v186) = 0;
          *(v107 + 24) = v117;
          LODWORD(v117) = DWORD1(v186);
          DWORD1(v186) = 0;
          *(v107 + 25) = v117;
          v118 = *(&v186 + 1);
          *(&v186 + 1) = 0;
          *(v107 + 13) = v118;
          ++HIDWORD(v207);
        }
      }

      else
      {
        v105 = 0;
      }

      if (v187 == 1)
      {
        std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](&v186 + 1, 0);
        WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v119);
        v120 = v182;
        v182 = 0;
        if (v120 && atomic_fetch_add_explicit(v120, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v120, v51);
        }

        if (v181 == 1)
        {
          WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&v177, v51);
        }
      }

      if ((v106 & 1) == 0)
      {
        LOBYTE(v188) = 0;
        LOBYTE(v189) = v105;
        goto LABEL_101;
      }

      --v4;
    }

    while (v4);
    LOBYTE(v188) = 0;
    LOBYTE(v189) = v105;
    v121 = HIDWORD(v207);
    if (v207 <= HIDWORD(v207))
    {
      continue;
    }

    v122 = v206;
    if (HIDWORD(v207))
    {
      v164 = v206;
      if (HIDWORD(v207) >= 0x2492493)
      {
        __break(0xC471u);
        return;
      }

      v123 = 112 * HIDWORD(v207);
      v124 = WTF::fastMalloc((112 * HIDWORD(v207)));
      v122 = v164;
      LODWORD(v207) = (613566757 * (v123 >> 4)) >> 32;
      v206 = v124;
      if (v124 != v164)
      {
        WTF::VectorMover<false,WebCore::ServiceWorkerRouteCondition>::move(v164, v164 + 112 * v121, v124);
        v122 = v164;
      }
    }

    if (v122)
    {
      if (v206 == v122)
      {
        v206 = 0;
        LODWORD(v207) = 0;
      }

      WTF::fastFree(v122, v51);
    }
  }

  v99 = 0;
  *a1 = 0;
  *(a1 + 112) = 0;
  if (v90)
  {
LABEL_134:
    std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](&v206, 0);
    v99 = v91;
  }

  if (v189 == 1)
  {
    WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v188, v73);
  }

  if (v205 == 1)
  {
    v100 = v204;
    v204 = 0;
    if (v100)
    {
      if (atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v100, v73);
      }
    }
  }

  if (v176 == 1 && v175 == 1)
  {
    WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&v171, v73);
  }

  if (!v99)
  {
    v125 = *a2;
    v126 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v127 = *(a2 + 3);
    if (v127)
    {
      if (v126)
      {
        (*(*v127 + 16))(v127, v125);
      }
    }
  }
}

void sub_19D74E494(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, WTF::StringImpl *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, char a47, uint64_t a48, char a49)
{
  if (*(v49 - 112) == 1)
  {
    v51 = *(v49 - 120);
    *(v49 - 120) = 0;
    if (v51)
    {
      if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, a2);
      }
    }
  }

  if (a25 == 1 && a23 == 1)
  {
    WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&a15, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::MessageWithMessagePorts,void>::encode(IPC::Encoder *a1, void *a2)
{
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>,void>::encode<IPC::Encoder,WebCore::SerializedScriptValue>(a1, a2);

  return IPC::VectorArgumentCoder<false,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 1));
}

WTF *IPC::ArgumentCoder<WebCore::MessageWithMessagePorts,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>>(a1, &v11);
  result = IPC::Decoder::decode<WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v8);
  if (*a1)
  {
    if (v12)
    {
      v6 = v11;
      v11 = 0;
      if (v10)
      {
        v7 = v8;
        *a2 = v6;
        *(a2 + 8) = v7;
        *(a2 + 16) = v9;
        *(a2 + 24) = 1;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v10)
  {
    result = v8;
    if (v8)
    {
      v8 = 0;
      LODWORD(v9) = 0;
      result = WTF::fastFree(result, v5);
    }
  }

LABEL_5:
  if (v12 == 1)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
    }
  }

  return result;
}

void sub_19D74E89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13, char a14)
{
  if (a14)
  {
    if (a13)
    {
      WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(WTF *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
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

void sub_19D74E934(_Unwind_Exception *exception_object, void *a2)
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

void *IPC::ArgumentCoder<WebCore::RequestStorageAccessResult,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = *(a2 + 1);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v6 = *(a2 + 2);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::RequestStorageAccessResult,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v19 = a1[3];
    if (v19)
    {
      if (v4)
      {
        (*(*v19 + 16))(v19);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    a1[2] = (v5 + 1);
    if (v5)
    {
      v7 = *v5;
      if (v7 < 3)
      {
        v8 = v7 | 0x100;
        goto LABEL_5;
      }

      goto LABEL_31;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v20 = a1[3];
  if (v20)
  {
    if (v4)
    {
      (*(*v20 + 16))(v20);
      v6 = *a1;
      v4 = a1[1];
      goto LABEL_31;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_31:
  *a1 = 0;
  a1[1] = 0;
  v21 = a1[3];
  if (!v21)
  {
    v6 = 0;
    v13 = 0;
    v8 = 0;
    v4 = 0;
    goto LABEL_33;
  }

  if (!v4)
  {
    v6 = 0;
    v13 = 0;
    v8 = 0;
    goto LABEL_33;
  }

  (*(*v21 + 16))(v21, v6);
  v8 = 0;
  v6 = *a1;
  v4 = a1[1];
LABEL_5:
  v9 = a1[2];
  if (v4 > &v9[-v6])
  {
    a1[2] = (v9 + 1);
    if (v9)
    {
      v10 = *v9;
      if (v10 < 2)
      {
        v11 = 0;
        v12 = v10 != 0;
        v13 = v8;
        goto LABEL_9;
      }

      v13 = v8;
      goto LABEL_39;
    }

    v13 = v8;
    goto LABEL_36;
  }

  v13 = v8;
LABEL_33:
  *a1 = 0;
  a1[1] = 0;
  v22 = a1[3];
  if (v22)
  {
    if (v4)
    {
      (*(*v22 + 16))(v22, v6);
      v6 = *a1;
      v4 = a1[1];
      goto LABEL_36;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_36:
  *a1 = 0;
  a1[1] = 0;
  v23 = a1[3];
  if (v23)
  {
    if (v4)
    {
      (*(*v23 + 16))(v23, v6);
      v6 = *a1;
      v4 = a1[1];
      goto LABEL_39;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_39:
  *a1 = 0;
  a1[1] = 0;
  v24 = a1[3];
  if (v24 && v4)
  {
    (*(*v24 + 16))(v24, v6);
    v12 = 0;
    v25 = a1[3];
    v26 = *a1;
    v27 = a1[1];
    v11 = 1;
    *a1 = 0;
    a1[1] = 0;
    if (v25 && v27)
    {
      (*(*v25 + 16))(v25, v26);
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

LABEL_9:
  v14 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a1);
  IPC::Decoder::decode<WebCore::RegistrableDomain>(a1, &v30);
  result = IPC::Decoder::decode<WebCore::RegistrableDomain>(a1, &v28);
  if (*a1)
  {
    if (v8 > 0xFF && !v11 && (v14 & 0x100) != 0 && (v31 & 1) != 0)
    {
      v17 = v30;
      v30 = 0;
      if (v29)
      {
        v18 = v28;
        *a2 = v13;
        *(a2 + 1) = v12;
        *(a2 + 2) = v14;
        *(a2 + 8) = v17;
        *(a2 + 16) = v18;
        *(a2 + 24) = 1;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v29)
  {
    result = v28;
    v28 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v16);
      }
    }
  }

LABEL_16:
  if (v31 == 1)
  {
    result = v30;
    v30 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v16);
      }
    }
  }

  return result;
}

void sub_19D74ED6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::Exception,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::ExceptionCode>(a1);
  result = IPC::Decoder::decode<WTF::String>(a1, &v8);
  if (*a1)
  {
    if (v4 & 0x100) != 0 && (v9)
    {
      v7 = v8;
      *a2 = v4;
      *(a2 + 8) = v7;
      *(a2 + 16) = 1;
      return result;
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
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::ExceptionCode>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::ExceptionCode,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::ArgumentCoder<WebCore::SecurityPolicyViolationEventInit,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 2));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  v5 = *(a2 + 72);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 74));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 76));
  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
}

void IPC::ArgumentCoder<WebCore::SecurityPolicyViolationEventInit,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v45 = *(a1 + 3);
    if (v45)
    {
      if (v4)
      {
        (*(*v45 + 16))(v45);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_98:
    *a1 = 0;
    *(a1 + 1) = 0;
    v46 = *(a1 + 3);
    if (v46)
    {
      if (v4)
      {
        (*(*v46 + 16))(v46);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_101;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_101;
  }

  v7 = v5 + 1;
  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_98;
  }

  if (*v5 < 2u)
  {
    v8 = 1;
    goto LABEL_5;
  }

LABEL_101:
  *a1 = 0;
  *(a1 + 1) = 0;
  v47 = *(a1 + 3);
  if (!v47 || !v4)
  {
    v8 = 0;
    v48 = 0;
    v6 = 0;
LABEL_103:
    *a1 = 0;
    *(a1 + 1) = 0;
    v49 = *(a1 + 3);
    if (v49 && v48)
    {
      (*(*v49 + 16))(v49, v6, v48);
      v6 = *a1;
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    goto LABEL_105;
  }

  (*(*v47 + 16))(v47, v6);
  v8 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
  v7 = *(a1 + 2);
LABEL_5:
  if (v4 <= v7 - v6)
  {
    v48 = 0;
    v54 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v54 && v4)
    {
      (*(*v54 + 16))(v54);
      v6 = *a1;
      v48 = *(a1 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_103;
  }

  v9 = v7 + 1;
  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
    v48 = v4;
    goto LABEL_103;
  }

  if (*v7 < 2u)
  {
    v10 = 1;
    goto LABEL_9;
  }

LABEL_105:
  *a1 = 0;
  *(a1 + 1) = 0;
  v50 = *(a1 + 3);
  if (!v50 || !v4)
  {
    v10 = 0;
    v51 = 0;
    v6 = 0;
LABEL_107:
    *a1 = 0;
    *(a1 + 1) = 0;
    v52 = *(a1 + 3);
    if (v52 && v51)
    {
      (*(*v52 + 16))(v52, v6, v51);
      v6 = *a1;
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    goto LABEL_109;
  }

  (*(*v50 + 16))(v50, v6);
  v10 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
  v9 = *(a1 + 2);
LABEL_9:
  if (v4 <= v9 - v6)
  {
    v51 = 0;
    v55 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v55 && v4)
    {
      (*(*v55 + 16))(v55);
      v6 = *a1;
      v51 = *(a1 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_107;
  }

  *(a1 + 2) = v9 + 1;
  if (!v9)
  {
    v51 = v4;
    goto LABEL_107;
  }

  if (*v9 < 2u)
  {
    v11 = 1;
    goto LABEL_13;
  }

LABEL_109:
  *a1 = 0;
  *(a1 + 1) = 0;
  v53 = *(a1 + 3);
  if (v53 && v4)
  {
    (*(*v53 + 16))(v53, v6);
  }

  v11 = 0;
LABEL_13:
  IPC::Decoder::decode<WTF::String>(a1, &v87);
  IPC::Decoder::decode<WTF::String>(a1, &v85);
  IPC::Decoder::decode<WTF::String>(a1, &v83);
  IPC::Decoder::decode<WTF::String>(a1, &v81);
  IPC::Decoder::decode<WTF::String>(a1, &v79);
  IPC::Decoder::decode<WTF::String>(a1, &v77);
  IPC::Decoder::decode<WTF::String>(a1, &v75);
  IPC::Decoder::decode<WTF::String>(a1, &v73);
  v12 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
  v13 = *(a1 + 1);
  v14 = ((*(a1 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v15 = *a1;
  v16 = v14 - *a1;
  v17 = v13 >= v16;
  v18 = v13 - v16;
  if (!v17 || v18 <= 1)
  {
    v63 = v12;
    *a1 = 0;
    *(a1 + 1) = 0;
    v43 = *(a1 + 3);
    if (v43)
    {
      if (v13)
      {
        (*(*v43 + 16))(v43, v15);
        v15 = *a1;
        v13 = *(a1 + 1);
        goto LABEL_92;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
    goto LABEL_92;
  }

  *(a1 + 2) = v14 + 1;
  if (v14)
  {
    v19 = *v14 | 0x10000;
    v20 = v15;
    goto LABEL_18;
  }

  v63 = v12;
LABEL_92:
  *a1 = 0;
  *(a1 + 1) = 0;
  v44 = *(a1 + 3);
  if (v44)
  {
    if (v13)
    {
      (*(*v44 + 16))(v44, v15);
      v19 = 0;
      v20 = *a1;
      v13 = *(a1 + 1);
      v15 = *a1;
      goto LABEL_95;
    }

    v20 = 0;
  }

  else
  {
    v20 = 0;
    v13 = 0;
  }

  v15 = 0;
  v19 = 0;
LABEL_95:
  v12 = v63;
LABEL_18:
  v21 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v13 < v21 - v15 || v13 - (v21 - v15) <= 3)
  {
    goto LABEL_76;
  }

  *(a1 + 2) = v21 + 4;
  if (!v21)
  {
    v58 = v19;
    v61 = v12;
    goto LABEL_79;
  }

  v22 = *v21 | 0x100000000;
  while (1)
  {
    v23 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v13 < v23 - v15 || v13 - (v23 - v15) <= 3)
    {
      break;
    }

    *(a1 + 2) = v23 + 4;
    if (!v23)
    {
      goto LABEL_87;
    }

    v24 = *v23 | 0x100000000;
    if (!v15)
    {
      goto LABEL_88;
    }

LABEL_26:
    if ((v8 & 1) != 0 && (v10 & 1) != 0 && (v11 & 1) != 0 && (v88 & 1) != 0 && (v86 & 1) != 0 && (v84 & 1) != 0 && (v82 & 1) != 0 && (v80 & 1) != 0 && (v78 & 1) != 0 && (v76 & 1) != 0 && (v74 & 1) != 0 && v12 > 0xFFu && (v19 & 0x10000) != 0 && (v22 & 0x100000000) != 0 && (v24 & 0x100000000) != 0)
    {
      WebCore::SecurityPolicyViolationEventInit::SecurityPolicyViolationEventInit();
      *a2 = v65;
      *(a2 + 2) = v66;
      v26 = v67;
      v25 = v68;
      v67 = 0u;
      v68 = 0u;
      *(a2 + 8) = v26;
      *(a2 + 24) = v25;
      v28 = v69;
      v27 = v70;
      v69 = 0u;
      v70 = 0u;
      *(a2 + 40) = v28;
      *(a2 + 56) = v27;
      v29 = v71;
      *(a2 + 80) = v72;
      *(a2 + 72) = v29;
      *(a2 + 88) = 1;
      WebCore::SecurityPolicyViolationEventInit::~SecurityPolicyViolationEventInit(&v65, v30);
      goto LABEL_42;
    }

    __break(1u);
LABEL_76:
    v58 = v19;
    v61 = v12;
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (!v39)
    {
      v13 = 0;
LABEL_78:
      v20 = 0;
      goto LABEL_79;
    }

    if (!v13)
    {
      goto LABEL_78;
    }

    (*(*v39 + 16))(v39, v20);
    v20 = *a1;
    v13 = *(a1 + 1);
LABEL_79:
    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (!v40)
    {
      v20 = 0;
      v13 = 0;
LABEL_81:
      v15 = 0;
      v22 = 0;
      goto LABEL_82;
    }

    if (!v13)
    {
      v20 = 0;
      goto LABEL_81;
    }

    (*(*v40 + 16))(v40, v20);
    v22 = 0;
    v20 = *a1;
    v13 = *(a1 + 1);
    v15 = *a1;
LABEL_82:
    v19 = v58;
    v12 = v61;
  }

  v56 = v22;
  v59 = v19;
  v62 = v12;
  *a1 = 0;
  *(a1 + 1) = 0;
  v41 = *(a1 + 3);
  if (v41)
  {
    if (v13)
    {
      (*(*v41 + 16))(v41, v20);
      v20 = *a1;
      v13 = *(a1 + 1);
      goto LABEL_86;
    }
  }

  else
  {
    v13 = 0;
  }

  v20 = 0;
LABEL_86:
  v19 = v59;
  v12 = v62;
  v22 = v56;
LABEL_87:
  *a1 = 0;
  *(a1 + 1) = 0;
  v42 = *(a1 + 3);
  if (v42)
  {
    if (v13)
    {
      v57 = v22;
      v60 = v19;
      v64 = v12;
      (*(*v42 + 16))(v42, v20);
      v24 = 0;
      v19 = v60;
      v12 = v64;
      v22 = v57;
      if (*a1)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_88:
  *a2 = 0;
  *(a2 + 88) = 0;
LABEL_42:
  if (v74 == 1)
  {
    v31 = v73;
    v73 = 0;
    if (v31)
    {
      if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v20);
      }
    }
  }

  if (v76 == 1)
  {
    v32 = v75;
    v75 = 0;
    if (v32)
    {
      if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v20);
      }
    }
  }

  if (v78 == 1)
  {
    v33 = v77;
    v77 = 0;
    if (v33)
    {
      if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v20);
      }
    }
  }

  if (v80 == 1)
  {
    v34 = v79;
    v79 = 0;
    if (v34)
    {
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v20);
      }
    }
  }

  if (v82 == 1)
  {
    v35 = v81;
    v81 = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v20);
      }
    }
  }

  if (v84 == 1)
  {
    v36 = v83;
    v83 = 0;
    if (v36)
    {
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v20);
      }
    }
  }

  if (v86 == 1)
  {
    v37 = v85;
    v85 = 0;
    if (v37)
    {
      if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v20);
      }
    }
  }

  if (v88 == 1)
  {
    v38 = v87;
    v87 = 0;
    if (v38)
    {
      if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v20);
      }
    }
  }
}

void sub_19D74F8E0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, WTF::StringImpl *a27, char a28, WTF::StringImpl *a29, char a30, WTF::StringImpl *a31, char a32)
{
  if (a28 == 1 && a27 && atomic_fetch_add_explicit(a27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a27, a2);
  }

  if (a30 == 1 && a29 && atomic_fetch_add_explicit(a29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a29, a2);
  }

  if (a32 == 1 && a31 && atomic_fetch_add_explicit(a31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a31, a2);
  }

  if (*(v33 - 152) == 1)
  {
    v35 = *v32;
    *v32 = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, a2);
      }
    }
  }

  if (*(v33 - 136) == 1)
  {
    v36 = v32[2];
    v32[2] = 0;
    if (v36)
    {
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, a2);
      }
    }
  }

  if (*(v33 - 120) == 1)
  {
    v37 = v32[4];
    v32[4] = 0;
    if (v37)
    {
      if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, a2);
      }
    }
  }

  if (*(v33 - 104) == 1)
  {
    v38 = v32[6];
    v32[6] = 0;
    if (v38)
    {
      if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, a2);
      }
    }
  }

  if (*(v33 - 88) == 1)
  {
    v39 = v32[8];
    v32[8] = 0;
    if (v39)
    {
      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2, v5);
}

uint64_t IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(a1, &v11);
  if (!*a1)
  {
    goto LABEL_12;
  }

  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    *a2 = 0;
    *(a2 + 32) = 0;
    goto LABEL_6;
  }

  LOBYTE(v8) = 0;
  v10 = -1;
  v5 = v13;
  if (v13)
  {
    if (v13 == 255)
    {
      *a2 = 0;
    }

    else
    {
      v8 = v11;
      v10 = v13;
      *a2 = v11;
    }
  }

  else
  {
    v6 = v12;
    v9 = v12;
    v10 = 0;
    v8 = 0u;
    v7 = v11;
    v11 = 0u;
    *a2 = v7;
    *(a2 + 16) = v6;
  }

  *(a2 + 24) = v5;
  *(a2 + 32) = 1;
  result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v8);
LABEL_6:
  if (v14 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v11);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[32] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D74FC24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::SecurityOriginData::Tuple,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);

  return IPC::ArgumentCoder<std::optional<unsigned short>,void>::encode<IPC::Encoder,std::optional<unsigned short> const&>(a1, (a2 + 2));
}

uint64_t IPC::ArgumentCoder<WebCore::SecurityOriginData::Tuple,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v10);
  if (!*a1)
  {
    goto LABEL_15;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v10 == -1)
  {
LABEL_15:
    *a2 = 0;
    *(a2 + 24) = 0;
    goto LABEL_9;
  }

  IPC::Decoder::decode<WTF::String>(a1, &v8);
  result = IPC::Decoder::decode<std::optional<unsigned short>>(a1);
  if (*a1)
  {
    if (v11)
    {
      v6 = v10;
      v10 = 0;
      if (v9)
      {
        if (WORD2(result))
        {
          v7 = v8;
          *a2 = v6;
          *(a2 + 8) = v7;
          *(a2 + 16) = result & 0xFFFFFF;
          *(a2 + 24) = 1;
          goto LABEL_9;
        }
      }
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *a2 = 0;
  *(a2 + 24) = 0;
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

LABEL_9:
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

void sub_19D74FDA8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, WTF::StringImpl *a11, char a12)
{
  if ((a10 & 1) != 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<std::optional<unsigned short>>(IPC::Decoder *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  v3 = *a1;
  if (v2 <= v1 - *a1)
  {
    v13 = a1;
    IPC::Decoder::markInvalid(a1);
    goto LABEL_18;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
    v13 = a1;
LABEL_18:
    v12 = 0;
    IPC::Decoder::markInvalid(v13);
    goto LABEL_16;
  }

  if (*v1 > 1u)
  {
    v13 = a1;
    v12 = 0;
    goto LABEL_16;
  }

  if (*v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFELL;
    v5 = ((v1 & 0xFFFFFFFFFFFFFFFELL) + 2);
    v6 = v5 - v3;
    v8 = v2 >= v6;
    v7 = v2 - v6;
    v8 = v8 && v7 >= 2;
    if (!v8)
    {
      v13 = a1;
      v12 = 0x10000;
      IPC::Decoder::markInvalid(a1);
LABEL_16:
      IPC::Decoder::markInvalid(v13);
      IPC::Decoder::markInvalid(v13);
      v10 = 0;
      v9 = v12;
      return v10 | v9;
    }

    *(a1 + 2) = v4 + 4;
    if (!v5)
    {
      v13 = a1;
      v12 = 0x10000;
      goto LABEL_16;
    }

    v9 = *v5 | 0x10000;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0x100000000;
  return v10 | v9;
}

uint64_t IPC::ArgumentCoder<WebCore::IntConstraint,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<std::optional<int>,void>::encode<IPC::Encoder,std::optional<int> const&>(a1, a2 + 12);
  IPC::ArgumentCoder<std::optional<int>,void>::encode<IPC::Encoder,std::optional<int> const&>(a1, a2 + 20);
  IPC::ArgumentCoder<std::optional<int>,void>::encode<IPC::Encoder,std::optional<int> const&>(a1, a2 + 28);

  return IPC::ArgumentCoder<std::optional<int>,void>::encode<IPC::Encoder,std::optional<int> const&>(a1, a2 + 36);
}

uint64_t IPC::Decoder::decode<std::optional<int>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<std::optional<int>,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::ArgumentCoder<WebCore::DoubleConstraint,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 16);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 32);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 48);

  return IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 64);
}

uint64_t IPC::ArgumentCoder<WebCore::BooleanConstraint,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[8]);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 9);

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 11);
}

uint64_t IPC::ArgumentCoder<WebCore::StringConstraint,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 16);

  return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 32);
}

uint64_t std::optional<WebCore::StringConstraint>::optional[abi:sn200100]<WebCore::StringConstraint,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = &unk_1F10E7F90;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, (a2 + 16));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 32, (a2 + 32));
  *(a1 + 48) = 1;
  return a1;
}

void sub_19D7501A0(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  _Unwind_Resume(a1);
}

void WebCore::StringConstraint::~StringConstraint(WebCore::StringConstraint *this, void *a2)
{
  *this = &unk_1F10E7F90;
  v2 = this + 16;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, v3);
}

{
  *this = &unk_1F10E7F90;
  v2 = this + 16;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, v3);

  JUMPOUT(0x19EB14CF0);
}

uint64_t IPC::ArgumentCoder<WebCore::VideoPresetData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  v4 = *(a2 + 20);
  if (v4)
  {
    v5 = *(a2 + 8);
    v6 = &v5[2 * v4];
    do
    {
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *v5);
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v5[1]);
      v5 += 2;
    }

    while (v5 != v6);
  }

  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 32));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 40));
}

uint64_t IPC::ArgumentCoder<WebCore::RealtimeMediaSourceSupportedConstraints,void>::encode(IPC::Encoder *a1, char *a2)
{
  v5 = *a2;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[1];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[2];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[3];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[4];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[5];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[6];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[7];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[8];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[9];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[10];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[11];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[12];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[13];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[14];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[15];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[16];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[17];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = a2[18];
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

uint64_t IPC::ArgumentCoder<WebCore::RealtimeMediaSourceSettings,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 28));
  v9 = *(a2 + 32);
  IPC::Encoder::operator<<<BOOL>(a1, &v9);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  v8 = *(a2 + 65);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 66));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  v7 = *(a2 + 80);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  v6 = *(a2 + 81);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  v5 = *(a2 + 82);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<WebCore::RealtimeMediaSourceSupportedConstraints,void>::encode(a1, (a2 + 83));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::RealtimeMediaSourceSettings,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
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
      v103 = *v5 | 0x100000000;
      v11 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v59 = *(a1 + 3);
    if (!v59)
    {
      v4 = 0;
LABEL_104:
      v6 = 0;
      goto LABEL_105;
    }

    if (!v4)
    {
      goto LABEL_104;
    }

    (*(*v59 + 16))(v59, v6);
    v6 = *a1;
    v4 = *(a1 + 1);
  }

LABEL_105:
  *a1 = 0;
  *(a1 + 1) = 0;
  v60 = *(a1 + 3);
  if (!v60)
  {
    v11 = 0;
    v4 = 0;
LABEL_107:
    v6 = 0;
    v103 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    v11 = 0;
    goto LABEL_107;
  }

  (*(*v60 + 16))(v60, v6);
  v103 = 0;
  v11 = *a1;
  v4 = *(a1 + 1);
  v6 = *a1;
LABEL_8:
  v12 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 >= v12 - v6 && v4 - (v12 - v6) > 3)
  {
    *(a1 + 2) = v12 + 1;
    if (v12)
    {
      v102 = *v12 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v61 = *(a1 + 3);
    if (v61)
    {
      if (v4)
      {
        (*(*v61 + 16))(v61, v11);
        v11 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_111;
      }
    }

    else
    {
      v4 = 0;
    }

    v11 = 0;
  }

LABEL_111:
  *a1 = 0;
  *(a1 + 1) = 0;
  v62 = *(a1 + 3);
  if (v62)
  {
    if (v4)
    {
      (*(*v62 + 16))(v62, v11);
      v102 = 0;
      v11 = *a1;
      v4 = *(a1 + 1);
      v6 = *a1;
      goto LABEL_15;
    }

    v11 = 0;
  }

  else
  {
    v11 = 0;
    v4 = 0;
  }

  v6 = 0;
  v102 = 0;
LABEL_15:
  v14 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = v14 - v6;
  v8 = v4 >= v15;
  v16 = v4 - v15;
  if (!v8 || v16 <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v85 = *(a1 + 3);
    if (v85)
    {
      if (v4)
      {
        (*(*v85 + 16))(v85, v11);
        v11 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_170;
      }
    }

    else
    {
      v4 = 0;
    }

    v11 = 0;
    goto LABEL_170;
  }

  *(a1 + 2) = v14 + 1;
  if (v14)
  {
    v101 = *v14 | 0x100000000;
    goto LABEL_20;
  }

LABEL_170:
  *a1 = 0;
  *(a1 + 1) = 0;
  v86 = *(a1 + 3);
  if (v86 && v4)
  {
    (*(*v86 + 16))(v86, v11);
  }

  v101 = 0;
LABEL_20:
  v100 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a1);
  v93 = IPC::Decoder::decode<unsigned long long>(a1);
  v99 = v17;
  v18 = *(a1 + 1);
  v19 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = *a1;
  v21 = v19 - *a1;
  v8 = v18 >= v21;
  v22 = v18 - v21;
  if (v8 && v22 > 3)
  {
    *(a1 + 2) = v19 + 1;
    if (v19)
    {
      v98 = *v19 | 0x100000000;
      v23 = v20;
      goto LABEL_25;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v63 = *(a1 + 3);
    if (v63)
    {
      if (v18)
      {
        (*(*v63 + 16))(v63, v20);
        v20 = *a1;
        v18 = *(a1 + 1);
        goto LABEL_117;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = 0;
  }

LABEL_117:
  *a1 = 0;
  *(a1 + 1) = 0;
  v64 = *(a1 + 3);
  if (v64)
  {
    if (v18)
    {
      (*(*v64 + 16))(v64, v20);
      v98 = 0;
      v23 = *a1;
      v18 = *(a1 + 1);
      v20 = *a1;
      goto LABEL_25;
    }

    v23 = 0;
  }

  else
  {
    v23 = 0;
    v18 = 0;
  }

  v20 = 0;
  v98 = 0;
LABEL_25:
  v24 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v18 < v24 - v20 || v18 - (v24 - v20) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v65 = *(a1 + 3);
    if (v65)
    {
      if (v18)
      {
        (*(*v65 + 16))(v65, v23);
        v23 = *a1;
        v18 = *(a1 + 1);
        goto LABEL_123;
      }
    }

    else
    {
      v18 = 0;
    }

    v23 = 0;
    goto LABEL_123;
  }

  v25 = (v24 + 1);
  *(a1 + 2) = v24 + 1;
  if (v24)
  {
    v97 = *v24 | 0x100000000;
    goto LABEL_29;
  }

LABEL_123:
  *a1 = 0;
  *(a1 + 1) = 0;
  v66 = *(a1 + 3);
  if (!v66 || !v18)
  {
    v97 = 0;
    v67 = 0;
    v23 = 0;
LABEL_125:
    *a1 = 0;
    *(a1 + 1) = 0;
    v68 = *(a1 + 3);
    if (v68 && v67)
    {
      (*(*v68 + 16))(v68, v23, v67);
      v26 = 0;
      v23 = *a1;
      v18 = *(a1 + 1);
    }

    else
    {
      v18 = 0;
      v23 = 0;
      v26 = 0;
    }

    goto LABEL_127;
  }

  (*(*v66 + 16))(v66, v23);
  v97 = 0;
  v20 = *a1;
  v18 = *(a1 + 1);
  v25 = *(a1 + 2);
  v23 = *a1;
LABEL_29:
  if (v18 <= &v25[-v20])
  {
    v67 = 0;
    v87 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v87 && v18)
    {
      (*(*v87 + 16))(v87, v23);
      v23 = *a1;
      v67 = *(a1 + 1);
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_125;
  }

  *(a1 + 2) = v25 + 1;
  if (!v25)
  {
    v67 = v18;
    goto LABEL_125;
  }

  v26 = *v25;
  if (v26 < 2)
  {
    v27 = 1;
    goto LABEL_33;
  }

LABEL_127:
  *a1 = 0;
  *(a1 + 1) = 0;
  v69 = *(a1 + 3);
  if (v69 && v18)
  {
    (*(*v69 + 16))(v69, v23);
  }

  v27 = 0;
LABEL_33:
  v96 = v27;
  if (!v26)
  {
    v27 = 0;
  }

  v92 = v27;
  IPC::Decoder::decode<WTF::String>(a1, &v110);
  IPC::Decoder::decode<WTF::String>(a1, &v108);
  IPC::Decoder::decode<WTF::String>(a1, &v106);
  v28 = *(a1 + 1);
  v29 = *(a1 + 2);
  v30 = *a1;
  if (v28 <= &v29[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v70 = *(a1 + 3);
    if (v70)
    {
      if (v28)
      {
        (*(*v70 + 16))(v70);
        v28 = *(a1 + 1);
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_131:
    *a1 = 0;
    *(a1 + 1) = 0;
    v71 = *(a1 + 3);
    if (v71)
    {
      if (v28)
      {
        (*(*v71 + 16))(v71);
        v30 = *a1;
        v28 = *(a1 + 1);
        goto LABEL_134;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
    goto LABEL_134;
  }

  *(a1 + 2) = v29 + 1;
  if (!v29)
  {
    goto LABEL_131;
  }

  v31 = *v29;
  if (v31 < 5)
  {
    v95 = v31 | 0x100;
    goto LABEL_39;
  }

LABEL_134:
  *a1 = 0;
  *(a1 + 1) = 0;
  v72 = *(a1 + 3);
  if (!v72)
  {
    v30 = 0;
    v95 = 0;
    v28 = 0;
    goto LABEL_136;
  }

  if (!v28)
  {
    v30 = 0;
    v95 = 0;
LABEL_136:
    *a1 = 0;
    *(a1 + 1) = 0;
    v73 = *(a1 + 3);
    if (v73)
    {
      if (v28)
      {
        (*(*v73 + 16))(v73, v30);
        v30 = *a1;
        v28 = *(a1 + 1);
LABEL_139:
        *a1 = 0;
        *(a1 + 1) = 0;
        v74 = *(a1 + 3);
        if (v74)
        {
          if (v28)
          {
            (*(*v74 + 16))(v74, v30);
            v33 = 0;
            v30 = *a1;
            v28 = *(a1 + 1);
            goto LABEL_142;
          }
        }

        else
        {
          v28 = 0;
        }

        v30 = 0;
        v33 = 0;
        goto LABEL_142;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
    goto LABEL_139;
  }

  (*(*v72 + 16))(v72, v30);
  v95 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
LABEL_39:
  v32 = *(a1 + 2);
  if (v28 <= &v32[-v30])
  {
    goto LABEL_136;
  }

  *(a1 + 2) = v32 + 1;
  if (!v32)
  {
    goto LABEL_139;
  }

  v33 = *v32;
  if (v33 < 2)
  {
    v34 = 1;
    goto LABEL_43;
  }

LABEL_142:
  *a1 = 0;
  *(a1 + 1) = 0;
  v75 = *(a1 + 3);
  if (v75 && v28)
  {
    (*(*v75 + 16))(v75, v30);
  }

  v34 = 0;
LABEL_43:
  if (v33)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = IPC::Decoder::decode<WebCore::HueInterpolationMethod>(a1);
  v37 = IPC::Decoder::decode<unsigned long long>(a1);
  v39 = v38;
  v40 = *(a1 + 1);
  v41 = *(a1 + 2);
  v42 = *a1;
  v91 = v35;
  v90 = v37;
  v94 = v39;
  if (v40 <= &v41[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v76 = *(a1 + 3);
    if (v76)
    {
      if (v40)
      {
        (*(*v76 + 16))(v76);
        v40 = *(a1 + 1);
      }
    }

    else
    {
      v40 = 0;
    }

LABEL_154:
    *a1 = 0;
    *(a1 + 1) = 0;
    v77 = *(a1 + 3);
    if (v77)
    {
      if (v40)
      {
        (*(*v77 + 16))(v77);
        v44 = 0;
        v42 = *a1;
        v40 = *(a1 + 1);
        goto LABEL_157;
      }
    }

    else
    {
      v40 = 0;
    }

    v42 = 0;
    v44 = 0;
    goto LABEL_157;
  }

  v43 = v41 + 1;
  *(a1 + 2) = v41 + 1;
  if (!v41)
  {
    goto LABEL_154;
  }

  v44 = *v41;
  if (v44 < 2)
  {
    v45 = 1;
    goto LABEL_50;
  }

LABEL_157:
  *a1 = 0;
  *(a1 + 1) = 0;
  v78 = *(a1 + 3);
  if (!v78 || !v40)
  {
    v46 = 0;
    v45 = 0;
    v79 = 0;
    v42 = 0;
LABEL_159:
    *a1 = 0;
    *(a1 + 1) = 0;
    v80 = *(a1 + 3);
    if (v80 && v79)
    {
      (*(*v80 + 16))(v80, v42, v79);
      v48 = 0;
      v42 = *a1;
      v40 = *(a1 + 1);
    }

    else
    {
      v40 = 0;
      v42 = 0;
      v48 = 0;
    }

    goto LABEL_161;
  }

  (*(*v78 + 16))(v78, v42);
  v45 = 0;
  v42 = *a1;
  v40 = *(a1 + 1);
  v43 = *(a1 + 2);
LABEL_50:
  if (v44)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  if (v40 <= &v43[-v42])
  {
    v79 = 0;
    v88 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v88 && v40)
    {
      (*(*v88 + 16))(v88);
      v42 = *a1;
      v79 = *(a1 + 1);
    }

    else
    {
      v42 = 0;
    }

    goto LABEL_159;
  }

  v47 = v43 + 1;
  *(a1 + 2) = v43 + 1;
  if (!v43)
  {
    v79 = v40;
    goto LABEL_159;
  }

  v48 = *v43;
  if (v48 < 2)
  {
    v49 = 1;
    goto LABEL_57;
  }

LABEL_161:
  *a1 = 0;
  *(a1 + 1) = 0;
  v81 = *(a1 + 3);
  if (!v81 || !v40)
  {
    v50 = 0;
    v49 = 0;
    v82 = 0;
    v42 = 0;
LABEL_163:
    *a1 = 0;
    *(a1 + 1) = 0;
    v83 = *(a1 + 3);
    if (v83 && v82)
    {
      (*(*v83 + 16))(v83, v42, v82);
      v51 = 0;
      v42 = *a1;
      v40 = *(a1 + 1);
    }

    else
    {
      v40 = 0;
      v42 = 0;
      v51 = 0;
    }

    goto LABEL_165;
  }

  (*(*v81 + 16))(v81, v42);
  v49 = 0;
  v42 = *a1;
  v40 = *(a1 + 1);
  v47 = *(a1 + 2);
LABEL_57:
  if (v48)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (v40 <= &v47[-v42])
  {
    v82 = 0;
    v89 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v89 && v40)
    {
      (*(*v89 + 16))(v89);
      v42 = *a1;
      v82 = *(a1 + 1);
    }

    else
    {
      v42 = 0;
    }

    goto LABEL_163;
  }

  *(a1 + 2) = v47 + 1;
  if (!v47)
  {
    v82 = v40;
    goto LABEL_163;
  }

  v51 = *v47;
  if (v51 < 2)
  {
    v52 = 1;
    goto LABEL_64;
  }

LABEL_165:
  *a1 = 0;
  *(a1 + 1) = 0;
  v84 = *(a1 + 3);
  if (v84 && v40)
  {
    (*(*v84 + 16))(v84, v42);
  }

  v52 = 0;
LABEL_64:
  if (v51)
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  result = IPC::Decoder::decode<WebCore::RealtimeMediaSourceSupportedConstraints>(v104, a1);
  if (*a1)
  {
    if (v103 & 0x100000000) != 0 && (v102 & 0x100000000) != 0 && (v101 & 0x100000000) != 0 && v100 > 0xFFu && (v99 & 1) != 0 && (v98 & 0x100000000) != 0 && (v97 & 0x100000000) != 0 && (v96 & 1) != 0 && (v111 & 1) != 0 && (v109 & 1) != 0 && (v107 & 1) != 0 && v95 > 0xFF && (v34 & 1) != 0 && v36 > 0xFFu && (v94 & 1) != 0 && (v45 & 1) != 0 && (v49 & 1) != 0 && (v52 & 1) != 0 && (v105)
    {
      v56 = v110;
      v110 = 0;
      v57 = v108;
      v108 = 0;
      v58 = v106;
      v106 = 0;
      *a2 = v103;
      *(a2 + 4) = v102;
      *(a2 + 8) = v101;
      *(a2 + 12) = v100;
      *(a2 + 16) = v93;
      *(a2 + 24) = v98;
      *(a2 + 28) = v97;
      *(a2 + 32) = v92;
      *(a2 + 40) = v56;
      *(a2 + 48) = v57;
      *(a2 + 56) = v58;
      *(a2 + 64) = v95;
      *(a2 + 65) = v91;
      *(a2 + 66) = v36;
      *(a2 + 72) = v90;
      *(a2 + 80) = v46;
      *(a2 + 81) = v50;
      *(a2 + 82) = v53;
      *(a2 + 83) = *v104;
      *(a2 + 98) = *&v104[15];
      *(a2 + 104) = 1;
      goto LABEL_88;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 104) = 0;
  if (v107)
  {
    result = v106;
    v106 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v55);
      }
    }
  }

LABEL_88:
  if (v109 == 1)
  {
    result = v108;
    v108 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v55);
      }
    }
  }

  if (v111 == 1)
  {
    result = v110;
    v110 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v55);
      }
    }
  }

  return result;
}