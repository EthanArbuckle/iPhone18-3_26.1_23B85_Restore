void sub_19D6CBEAC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CFTypeRef a10, CFTypeRef a11, CFTypeRef a12, CFTypeRef a13, _Unwind_Exception *exception_objecta, WTF::StringImpl *a15, CFTypeRef a16, int a17, int a18, CFTypeRef a19, int a20, int a21)
{
  if (LOBYTE(STACK[0x248]) == 1 && LOBYTE(STACK[0x240]) == 1 && STACK[0x238])
  {
    CFRelease(STACK[0x238]);
  }

  if (LOBYTE(STACK[0x260]) == 1 && LOBYTE(STACK[0x258]) == 1 && STACK[0x250])
  {
    CFRelease(STACK[0x250]);
  }

  if (LOBYTE(STACK[0x278]) == 1 && LOBYTE(STACK[0x270]) == 1 && STACK[0x268])
  {
    CFRelease(STACK[0x268]);
  }

  if (LOBYTE(STACK[0x290]) == 1 && LOBYTE(STACK[0x288]) == 1 && STACK[0x280])
  {
    CFRelease(STACK[0x280]);
  }

  if (LOBYTE(STACK[0x2A8]) == 1 && LOBYTE(STACK[0x2A0]) == 1 && STACK[0x298])
  {
    CFRelease(STACK[0x298]);
  }

  if (LOBYTE(STACK[0x2C0]) == 1 && LOBYTE(STACK[0x2B8]) == 1 && STACK[0x2B0])
  {
    CFRelease(STACK[0x2B0]);
  }

  if (LOBYTE(STACK[0x2D8]) == 1 && LOBYTE(STACK[0x2D0]) == 1 && STACK[0x2C8])
  {
    CFRelease(STACK[0x2C8]);
  }

  if (LOBYTE(STACK[0x2F0]) == 1 && LOBYTE(STACK[0x2E8]) == 1 && STACK[0x2E0])
  {
    CFRelease(STACK[0x2E0]);
  }

  if (*(v21 - 232) == 1 && *(v21 - 240) == 1)
  {
    v22 = *(v21 - 248);
    if (v22)
    {
      CFRelease(v22);
    }
  }

  if ((a20 & a18) == 1 && a19)
  {
    CFRelease(a19);
  }

  if ((a21 & a17) == 1 && a16)
  {
    CFRelease(a16);
  }

  if (*(v21 - 216) == 1)
  {
    v23 = *(v21 - 224);
    *(v21 - 224) = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, a2);
      }
    }
  }

  if (*(v21 - 200) == 1)
  {
    v24 = *(v21 - 208);
    *(v21 - 208) = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, a2);
      }
    }
  }

  if (*(v21 - 184) == 1)
  {
    v25 = *(v21 - 192);
    *(v21 - 192) = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::VectorArgumentCoder<true,unsigned char,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D6CC67C(_Unwind_Exception *exception_object, void *a2)
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

void IPC::Decoder::decode<std::optional<WebCore::FontPlatformSerializedAttributes>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_23;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_23:
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      if (v6)
      {
        (*(*v16 + 16))(v16, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_26:
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    if (v17 && v6)
    {
      (*(*v17 + 16))(v17, v5);
    }

    goto LABEL_16;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_23;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_26;
  }

  if (v7)
  {
    IPC::ArgumentCoder<WebCore::FontPlatformSerializedAttributes,void>::decode(v18, a2);
    if ((v19 & 1) == 0)
    {
      v12 = *a2;
      v13 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v14 = *(a2 + 3);
      if (!v14 || !v13 || ((*(*v14 + 16))(v14, v12), (v19 & 1) == 0))
      {
LABEL_16:
        *a1 = 0;
        a1[392] = 0;
        goto LABEL_10;
      }
    }

    WebCore::FontPlatformSerializedAttributes::FontPlatformSerializedAttributes(a1, v18);
    a1[384] = 1;
    a1[392] = 1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  LOBYTE(v18[0]) = 0;
  v19 = 0;
  std::__optional_move_base<WebCore::FontPlatformSerializedAttributes,false>::__optional_move_base[abi:sn200100](a1, v18);
  a1[392] = 1;
  if (v19 == 1)
  {
LABEL_9:
    WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes(v18, v8);
  }

LABEL_10:
  if ((a1[392] & 1) == 0)
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

void sub_19D6CC8D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a58 == 1)
  {
    WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ContentFilterUnblockHandler,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  LOBYTE(v10) = 0;
  v13 = 0;
  if (*(a2 + 120) == 1)
  {
    v4 = *(a2 + 80);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v10 = v4;
    v11 = *(a2 + 88);
    v12 = *(a2 + 104);
    v13 = 1;
  }

  IPC::ArgumentCoder<std::optional<WTF::URL>,void>::encode<IPC::Encoder,std::optional<WTF::URL>>(a1, &v10);
  if (v13 == 1)
  {
    v6 = v10;
    v10 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }
    }
  }

  WebCore::ContentFilterUnblockHandler::webFilterEvaluatorData(&v10, a2);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v10, DWORD1(v11));
  v8 = v10;
  if (v10)
  {
    v10 = 0;
    LODWORD(v11) = 0;
    WTF::fastFree(v8, v7);
  }

  LOBYTE(v10) = *(a2 + 152);
  return IPC::Encoder::operator<<<BOOL>(a1, &v10);
}

void sub_19D6CCA14(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::ContentFilterUnblockHandler,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::String>(a1, &v32);
  IPC::Decoder::decode<WTF::URL>(a1, v30);
  IPC::Decoder::decode<std::optional<WTF::URL>>(v27, a1, v4);
  IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v24);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21)
    {
      if (v5)
      {
        (*(*v21 + 16))(v21);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_40:
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (v22)
    {
      if (v5)
      {
        (*(*v22 + 16))(v22);
        v8 = 0;
        v7 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_43;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    v8 = 0;
    goto LABEL_43;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_40;
  }

  v8 = *v6;
  if (v8 < 2)
  {
    v9 = 1;
    goto LABEL_5;
  }

LABEL_43:
  *a1 = 0;
  *(a1 + 1) = 0;
  v23 = *(a1 + 3);
  if (!v23 || !v5)
  {
LABEL_44:
    *a2 = 0;
    *(a2 + 160) = 0;
    goto LABEL_20;
  }

  (*(*v23 + 16))(v23, v7);
  v9 = 0;
  v7 = *a1;
LABEL_5:
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v7)
  {
    goto LABEL_44;
  }

  if ((v33 & 1) == 0 || (v31 & 1) == 0 || (v29 & 1) == 0 || (v26 & 1) == 0 || (v9 & 1) == 0)
  {
    __break(1u);
  }

  MEMORY[0x19EB0C450](&v34, &v32, v30, v27, &v24, v10);
  v11 = v34;
  v34 = 0;
  *a2 = v11;
  v12 = WTF::URL::URL(a2 + 8, v35);
  v13 = v37;
  if (v37)
  {
    if (v37 == &v36)
    {
      *(a2 + 72) = a2 + 48;
      (*(*v13 + 24))(v13, a2 + 48, v12);
    }

    else
    {
      *(a2 + 72) = v37;
      v37 = 0;
    }
  }

  else
  {
    *(a2 + 72) = 0;
  }

  std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100]((a2 + 80), &v38);
  *(a2 + 128) = v39;
  v14 = v40;
  v39 = 0;
  v40 = 0;
  *(a2 + 136) = v14;
  v15 = v41;
  v41 = 0;
  *(a2 + 144) = v15;
  *(a2 + 152) = v42;
  *(a2 + 160) = 1;
  WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(&v34, v16);
LABEL_20:
  if (v26 == 1)
  {
    v20 = v24;
    if (v24)
    {
      v24 = 0;
      v25 = 0;
      WTF::fastFree(v20, v7);
    }
  }

  if (v29 == 1 && v28 == 1)
  {
    v17 = v27[0];
    v27[0] = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v7);
      }
    }
  }

  if (v31 == 1)
  {
    v18 = v30[0];
    v30[0] = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v7);
      }
    }
  }

  if (v33 == 1)
  {
    v19 = v32;
    v32 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v7);
      }
    }
  }
}

void sub_19D6CCDCC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, WTF::StringImpl *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, WTF::StringImpl *a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (a13 == 1 && a10)
  {
    WTF::fastFree(a10, a2);
  }

  if (a21 == 1 && a19 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a29 == 1 && a24 && atomic_fetch_add_explicit(a24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a24, a2);
  }

  if (a31 == 1 && a30 && atomic_fetch_add_explicit(a30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a30, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<std::optional<WTF::URL>>(_BYTE *a1, IPC::Decoder *a2, __n128 a3)
{
  v5 = *(a2 + 2);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v7 <= &v5[-v6])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v7)
      {
        (*(*v11 + 16))(v11);
        v6 = *a2;
        v7 = *(a2 + 1);
        goto LABEL_15;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_15:
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12)
    {
      if (v7)
      {
        (*(*v12 + 16))(v12, v6);
        v6 = *a2;
        v7 = *(a2 + 1);
        goto LABEL_18;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_18:
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 3);
    if (v13 && v7)
    {
      (*(*v13 + 16))(v13, v6);
    }

    goto LABEL_19;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_15;
  }

  v8 = *v5;
  if (v8 >= 2)
  {
    goto LABEL_18;
  }

  if (!v8)
  {
    LOBYTE(v17[0]) = 0;
    v18 = 0;
    std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100](a1, v17);
    a1[48] = 1;
    if (v18 != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  IPC::Decoder::decode<WTF::URL>(a2, v17);
  if (v18 != 1)
  {
LABEL_19:
    *a1 = 0;
    a1[48] = 0;
    goto LABEL_20;
  }

  a3.n128_f64[0] = WTF::URL::URL(a1, v17);
  a1[40] = 1;
  a1[48] = 1;
  if ((v18 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v10 = v17[0];
  v17[0] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

LABEL_20:
  if ((a1[48] & 1) == 0)
  {
    v14 = *a2;
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      if (v15)
      {
        (*(*v16 + 16))(v16, v14, a3);
      }
    }
  }
}

void sub_19D6CD104(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (*(v14 + 48) == 1 && *(v14 + 40) == 1)
  {
    v16 = *v14;
    *v14 = 0;
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

uint64_t IPC::ArgumentCoder<WebCore::ResourceRequestPlatformData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  IPC::encodeObjectDirectly<NSURLRequest>(a1, *a2);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<WebCore::ResourceRequestRequester>,void>::encode<IPC::Encoder,std::optional<WebCore::ResourceRequestRequester> const&>(a1, (a2 + 10));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 12));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 13));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 14));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 15));

  return IPC::Encoder::operator<<<BOOL>(a1, v4);
}

void IPC::Decoder::decode<WTF::RetainPtr<UIColor>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RetainPtr<UIColor>,void>::decode<UIColor,UIColor*>(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
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

void sub_19D6CD274(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(void *a1)
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
  if (v4 < 5)
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

uint64_t std::optional<WebCore::Color>::~optional(uint64_t result, void *a2)
{
  if (*(result + 8) == 1 && (*result & 0x8000000000000) != 0)
  {
    v2 = (*result & 0xFFFFFFFFFFFFLL);
    add = atomic_fetch_add(v2, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(1u, v2);
      v4 = result;
      WTF::fastFree(v2, a2);
      return v4;
    }
  }

  return result;
}

void IPC::ArgumentCoder<WebCore::AttributedString,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::VectorArgumentCoder<false,std::pair<WebCore::AttributedString::Range,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebCore::AttributedString::Range,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 1));

  IPC::ArgumentCoder<std::optional<WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> const&>(a1, (a2 + 3));
}

void IPC::ArgumentCoder<WebCore::AttributedString,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v49);
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

    goto LABEL_61;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_61:
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33 && v4)
    {
      (*(*v33 + 16))(v33);
    }

    LOBYTE(v47[0]) = 0;
    v48 = 0;
    goto LABEL_43;
  }

  v11 = *v5;
  v44 = 0;
  v45 = 0;
  if (v11 >= 0xAAAA)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WebCore::AttributedString::Range,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>(&v41, a1);
      v18 = v43;
      if (v43)
      {
        if (HIDWORD(v45) == v45)
        {
          v19 = WTF::Vector<std::pair<WebCore::AttributedString::Range,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v44, HIDWORD(v45) + 1, &v41);
          v20 = v44 + 24 * HIDWORD(v45);
          *v20 = *v19;
          *(v20 + 2) = 0;
          v21 = *(v19 + 16);
          *(v19 + 16) = 0;
        }

        else
        {
          v20 = v44 + 24 * HIDWORD(v45);
          *v20 = v41;
          *(v20 + 2) = 0;
          v21 = v42;
          v42 = 0;
        }

        *(v20 + 2) = v21;
        ++HIDWORD(v45);
      }

      else
      {
        LOBYTE(v47[0]) = 0;
        v48 = 0;
      }

      if (v43 == 1 && v42)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::AttributedString::AttributeValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::AttributedString::AttributeValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v42, v6);
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_42;
      }

      if (!--v11)
      {
        v22 = HIDWORD(v45);
        if (v45 <= HIDWORD(v45))
        {
          goto LABEL_21;
        }

        v23 = v44;
        if (HIDWORD(v45))
        {
          v40 = v44;
          if (HIDWORD(v45) >= 0xAAAAAAB)
          {
            __break(0xC471u);
            goto LABEL_101;
          }

          v24 = 24 * HIDWORD(v45);
          v25 = WTF::fastMalloc((24 * HIDWORD(v45)));
          v23 = v40;
          LODWORD(v45) = v24 / 0x18;
          v44 = v25;
          if (v25 != v40)
          {
            WTF::VectorMover<false,std::pair<WebCore::AttributedString::Range,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>::move(v40, (v40 + 24 * v22), v25);
            v23 = v40;
          }
        }

        if (v23)
        {
          if (v44 == v23)
          {
            v44 = 0;
            LODWORD(v45) = 0;
          }

          WTF::fastFree(v23, v6);
        }

        goto LABEL_21;
      }
    }
  }

  if (v11)
  {
    LODWORD(v45) = 24 * v11 / 0x18u;
    v44 = WTF::fastMalloc((24 * v11));
    while (1)
    {
      IPC::Decoder::decode<std::pair<WebCore::AttributedString::Range,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>(&v41, a1);
      v12 = v43;
      if (v43)
      {
        if (HIDWORD(v45) == v45)
        {
          v13 = WTF::Vector<std::pair<WebCore::AttributedString::Range,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v44, HIDWORD(v45) + 1, &v41);
          v14 = v44 + 24 * HIDWORD(v45);
          *v14 = *v13;
          *(v14 + 2) = 0;
          v15 = *(v13 + 16);
          *(v13 + 16) = 0;
        }

        else
        {
          v14 = v44 + 24 * HIDWORD(v45);
          *v14 = v41;
          *(v14 + 2) = 0;
          v15 = v42;
          v42 = 0;
        }

        *(v14 + 2) = v15;
        ++HIDWORD(v45);
      }

      else
      {
        LOBYTE(v47[0]) = 0;
        v48 = 0;
      }

      if (v43 == 1 && v42)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::AttributedString::AttributeValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::AttributedString::AttributeValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v42, v6);
      }

      if ((v12 & 1) == 0)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_21;
      }
    }

LABEL_42:
    WTF::Vector<std::pair<WebCore::AttributedString::Range,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v6);
LABEL_43:
    v17 = *a1;
    v26 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27 && v26)
    {
      (*(*v27 + 16))(v27, v17);
    }

    goto LABEL_44;
  }

LABEL_21:
  v47[0] = v44;
  v16 = v45;
  v44 = 0;
  v45 = 0;
  v47[1] = v16;
  v48 = 1;
  WTF::Vector<std::pair<WebCore::AttributedString::Range,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v6);
LABEL_44:
  if (!*a1)
  {
    goto LABEL_54;
  }

  if ((v50 & 1) == 0 || (v48 & 1) == 0)
  {
    goto LABEL_101;
  }

  if ((WebCore::AttributedString::rangesAreSafe() & 1) == 0)
  {
LABEL_54:
    *a2 = 0;
    a2[40] = 0;
    goto LABEL_79;
  }

  v28 = *(a1 + 1);
  v29 = *(a1 + 2);
  v17 = *a1;
  if (v28 <= &v29[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34)
    {
      if (v28)
      {
        (*(*v34 + 16))(v34);
        v28 = *(a1 + 1);
      }
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_65;
  }

  *(a1 + 2) = v29 + 1;
  if (!v29)
  {
LABEL_65:
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35)
    {
      if (v28)
      {
        (*(*v35 + 16))(v35);
        v17 = *a1;
        v28 = *(a1 + 1);
        goto LABEL_68;
      }
    }

    else
    {
      v28 = 0;
    }

    v17 = 0;
LABEL_68:
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36 && v28)
    {
      (*(*v36 + 16))(v36, v17);
    }

    goto LABEL_69;
  }

  v30 = *v29;
  if (v30 >= 2)
  {
    goto LABEL_68;
  }

  if (!v30)
  {
    LOBYTE(v44) = 0;
    LOBYTE(v45) = 0;
    v31 = 1;
    goto LABEL_56;
  }

  IPC::Decoder::decode<WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v41, a1);
  if (BYTE8(v41) == 1)
  {
    v44 = v41;
    v31 = 1;
    LOBYTE(v45) = 1;
LABEL_56:
    v46 = 1;
    goto LABEL_71;
  }

LABEL_69:
  LOBYTE(v44) = 0;
  v46 = 0;
  v17 = *a1;
  v37 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v38 = *(a1 + 3);
  if (v38 && v37)
  {
    (*(*v38 + 16))(v38, v17);
  }

  v31 = 0;
LABEL_71:
  if (!*a1)
  {
    *a2 = 0;
    a2[40] = 0;
    if (v31)
    {
      goto LABEL_76;
    }

    goto LABEL_79;
  }

  if ((v50 & 1) == 0 || (v48 & 1) == 0 || (v31 & 1) == 0)
  {
LABEL_101:
    __break(1u);
    return;
  }

  WebCore::AttributedString::AttributedString();
  WebCore::AttributedString::AttributedString();
  a2[40] = 1;
  MEMORY[0x19EB065D0](&v41);
  if (v46)
  {
LABEL_76:
    if (v45 == 1 && v44)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::AttributedString::AttributeValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::AttributedString::AttributeValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v44, v17);
    }
  }

LABEL_79:
  if (v48 == 1)
  {
    WTF::Vector<std::pair<WebCore::AttributedString::Range,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47, v17);
  }

  if (v50 == 1)
  {
    v39 = v49;
    v49 = 0;
    if (v39)
    {
      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v17);
      }
    }
  }
}

void sub_19D6CDA90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (*(v26 - 56) == 1)
  {
    v28 = *(v26 - 64);
    *(v26 - 64) = 0;
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

void IPC::ArgumentCoder<WebCore::PaymentSessionError,void>::encode(IPC::Encoder *a1, WebCore::PaymentSessionError *this)
{
  WebCore::PaymentSessionError::platformError(&v4, this);
  IPC::encodeObjectDirectly<NSError>(a1, v4);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_19D6CDBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::PaymentSessionError,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v15[0] = v4;
  if (v4)
  {
    v5 = v4;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v12, v15, 1);
  IPC::decodeRequiringAllowedClasses<NSError,NSError*>(&v13, a1);
  if (v12)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v12, v6);
  }

  v7 = v15[0];
  v15[0] = 0;
  if (v7)
  {
  }

  if (*a1)
  {
    if ((v14 & 1) == 0)
    {
      __break(1u);
    }

    WebCore::PaymentSessionError::PaymentSessionError();
    v8 = v12;
    *a2 = v12;
    if (v8)
    {
      v9 = v8;
      v10 = v12;
      *(a2 + 8) = 1;
      v12 = 0;
      if (v10)
      {
      }
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

  if (v14 == 1)
  {
    v11 = v13;
    v13 = 0;
    if (v11)
    {
    }
  }
}

void sub_19D6CDD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, char a12, uint64_t a13)
{
  if (a10)
  {
  }

  if (a12 == 1)
  {
    if (a11)
    {
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ApplePaySessionPaymentRequest::MerchantCapabilities,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 1);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 3);

  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 4);
}

void *IPC::ArgumentCoder<WebCore::ApplePaySessionPaymentRequest,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WebCore::ApplePaySessionPaymentRequest::MerchantCapabilities,void>::encode(a1, (a2 + 24));
  IPC::ArgumentCoder<WebCore::PaymentContact,void>::encode(a1, (a2 + 32));
  IPC::ArgumentCoder<WebCore::ApplePaySessionPaymentRequest::MerchantCapabilities,void>::encode(a1, (a2 + 48));
  IPC::ArgumentCoder<WebCore::PaymentContact,void>::encode(a1, (a2 + 56));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 72);
  IPC::ArgumentCoder<WebCore::ApplePaySessionPaymentRequest::MerchantCapabilities,void>::encode(a1, (a2 + 88));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 93));
  IPC::VectorArgumentCoder<false,WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 96);
  IPC::VectorArgumentCoder<false,WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 112);
  IPC::ArgumentCoder<WebCore::ApplePayLineItem,void>::encode(a1, a2 + 128);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 208));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 216);
  v7 = *(a2 + 232);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  v4 = WebCore::PaymentInstallmentConfiguration::applePayInstallmentConfiguration((a2 + 240));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayInstallmentConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayInstallmentConfiguration> const&>(a1, v4);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 344));
  *v6 = *(a2 + 346);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL>>(a1, v6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 352));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayRecurringPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayRecurringPaymentRequest> const&>(a1, a2 + 360);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest> const&>(a1, a2 + 568);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 688);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayDeferredPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayDeferredPaymentRequest> const&>(a1, a2 + 712);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayDisbursementRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayDisbursementRequest> const&>(a1, a2 + 848);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 880));
  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 888));
}

void IPC::ArgumentCoder<WebCore::ApplePaySessionPaymentRequest,void>::decode(IPC::Decoder *a1@<X0>, WebCore::ApplePaySessionPaymentRequest *a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<WTF::String>(a1, &v389);
  IPC::Decoder::decode<WTF::String>(v2, &v387);
  v242 = IPC::Decoder::decode<WebCore::ApplePaySessionPaymentRequestContactFields>(v2);
  IPC::Decoder::decode<WebCore::PaymentContact>(v384, v2);
  v241 = IPC::Decoder::decode<WebCore::ApplePaySessionPaymentRequestContactFields>(v2);
  IPC::Decoder::decode<WebCore::PaymentContact>(v381, v2);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, &v379);
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *v2;
  v236 = a2;
  if (v4 <= &v5[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v159 = *(v2 + 3);
    if (v159)
    {
      if (v4)
      {
        (*(*v159 + 16))(v159);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_336:
    *v2 = 0;
    *(v2 + 1) = 0;
    v160 = *(v2 + 3);
    if (v160)
    {
      if (v4)
      {
        (*(*v160 + 16))(v160);
        v8 = 0;
        v6 = *v2;
        v4 = *(v2 + 1);
        goto LABEL_339;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v8 = 0;
    goto LABEL_339;
  }

  v7 = v5 + 1;
  *(v2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_336;
  }

  v8 = *v5;
  if (v8 < 2)
  {
    LODWORD(v9) = 1;
    goto LABEL_5;
  }

LABEL_339:
  *v2 = 0;
  *(v2 + 1) = 0;
  v161 = *(v2 + 3);
  if (!v161 || !v4)
  {
    v237 = 0;
    LOBYTE(v9) = 0;
    v162 = 0;
    v6 = 0;
LABEL_341:
    *v2 = 0;
    *(v2 + 1) = 0;
    v163 = *(v2 + 3);
    if (v163 && v162)
    {
      (*(*v163 + 16))(v163, v6, v162);
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

    goto LABEL_343;
  }

  (*(*v161 + 16))(v161, v6);
  LODWORD(v9) = 0;
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

  v237 = v10;
  if (v4 <= v7 - v6)
  {
    v162 = 0;
    v213 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v4 && v213)
    {
      (*(*v213 + 16))(v213);
      v6 = *v2;
      v162 = *(v2 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_341;
  }

  v11 = v7 + 1;
  *(v2 + 2) = v7 + 1;
  if (!v7)
  {
    v162 = v4;
    goto LABEL_341;
  }

  v12 = *v7;
  if (v12 < 2)
  {
    LOBYTE(v13) = 1;
    goto LABEL_12;
  }

LABEL_343:
  *v2 = 0;
  *(v2 + 1) = 0;
  v164 = *(v2 + 3);
  if (!v164 || !v4)
  {
    LOBYTE(v13) = 0;
    v165 = 0;
    v6 = 0;
LABEL_345:
    *v2 = 0;
    *(v2 + 1) = 0;
    v166 = *(v2 + 3);
    if (v166 && v165)
    {
      (*(*v166 + 16))(v166, v6, v165);
      v15 = 0;
      v6 = *v2;
      v4 = *(v2 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v15 = 0;
    }

    goto LABEL_347;
  }

  (*(*v164 + 16))(v164, v6);
  LOBYTE(v13) = 0;
  v6 = *v2;
  v4 = *(v2 + 1);
  v11 = *(v2 + 2);
LABEL_12:
  if (v4 <= v11 - v6)
  {
    v165 = 0;
    v214 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v4 && v214)
    {
      (*(*v214 + 16))(v214);
      v6 = *v2;
      v165 = *(v2 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_345;
  }

  v14 = v11 + 1;
  *(v2 + 2) = v11 + 1;
  if (!v11)
  {
    v165 = v4;
    goto LABEL_345;
  }

  v15 = *v11;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_16;
  }

LABEL_347:
  *v2 = 0;
  *(v2 + 1) = 0;
  v167 = *(v2 + 3);
  if (!v167 || !v4)
  {
    v16 = 0;
    v168 = 0;
    v6 = 0;
LABEL_349:
    *v2 = 0;
    *(v2 + 1) = 0;
    v169 = *(v2 + 3);
    if (v169 && v168)
    {
      (*(*v169 + 16))(v169, v6, v168);
      v18 = 0;
      v6 = *v2;
      v4 = *(v2 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v18 = 0;
    }

    goto LABEL_351;
  }

  (*(*v167 + 16))(v167, v6);
  v16 = 0;
  v6 = *v2;
  v4 = *(v2 + 1);
  v14 = *(v2 + 2);
LABEL_16:
  if (v4 <= v14 - v6)
  {
    v168 = 0;
    v215 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v4 && v215)
    {
      (*(*v215 + 16))(v215);
      v6 = *v2;
      v168 = *(v2 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_349;
  }

  v17 = v14 + 1;
  *(v2 + 2) = v14 + 1;
  if (!v14)
  {
    v168 = v4;
    goto LABEL_349;
  }

  v18 = *v14;
  if (v18 < 2)
  {
    v19 = 1;
    goto LABEL_20;
  }

LABEL_351:
  *v2 = 0;
  *(v2 + 1) = 0;
  v170 = *(v2 + 3);
  if (!v170 || !v4)
  {
    v19 = 0;
    v171 = 0;
    v6 = 0;
LABEL_353:
    *v2 = 0;
    *(v2 + 1) = 0;
    v172 = *(v2 + 3);
    if (v172 && v171)
    {
      (*(*v172 + 16))(v172, v6, v171);
      v20 = 0;
      v6 = *v2;
      v4 = *(v2 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v20 = 0;
    }

LABEL_355:
    *v2 = 0;
    *(v2 + 1) = 0;
    v173 = *(v2 + 3);
    if (!v173 || !v4)
    {
      v6 = 0;
      v239 = 0;
      v237 = 0;
      v21 = 0;
      goto LABEL_30;
    }

    (*(*v173 + 16))(v173, v6);
    v21 = 0;
    v6 = *v2;
    if (*v2)
    {
      goto LABEL_24;
    }

LABEL_458:
    v217 = *(v2 + 1);
    v218 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v218 && v217)
    {
      (*(*v218 + 16))(v218);
      v239 = 0;
      v237 = 0;
      v6 = *v2;
    }

    else
    {
      v6 = 0;
      v239 = 0;
      v237 = 0;
    }

    goto LABEL_30;
  }

  (*(*v170 + 16))(v170, v6);
  v19 = 0;
  v6 = *v2;
  v4 = *(v2 + 1);
  v17 = *(v2 + 2);
LABEL_20:
  if (v4 <= v17 - v6)
  {
    v171 = 0;
    v216 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v4 && v216)
    {
      (*(*v216 + 16))(v216);
      v6 = *v2;
      v171 = *(v2 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_353;
  }

  *(v2 + 2) = v17 + 1;
  if (!v17)
  {
    v171 = v4;
    goto LABEL_353;
  }

  v20 = *v17;
  if (v20 >= 2)
  {
    goto LABEL_355;
  }

  v21 = 1;
  if (!v6)
  {
    goto LABEL_458;
  }

LABEL_24:
  if ((v9 & 1) == 0 || (v13 & 1) == 0 || (v16 & 1) == 0 || (v19 & 1) == 0 || (v21 & 1) == 0)
  {
    goto LABEL_306;
  }

  v239 = 1;
  v19 = 1;
  LOBYTE(v13) = 1;
  v16 = 1;
  v21 = 1;
LABEL_30:
  if ((v21 & (v20 != 0)) != 0)
  {
    v22 = 0x100000000;
  }

  else
  {
    v22 = 0;
  }

  if ((v19 & (v18 != 0)) != 0)
  {
    v23 = 0x1000000;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0x10000;
  if ((v16 & (v15 != 0)) == 0)
  {
    v24 = 0;
  }

  v233 = v24;
  v234 = v22;
  v25 = 256;
  if ((v13 & (v12 != 0)) == 0)
  {
    v25 = 0;
  }

  v231 = v25;
  v232 = v23;
  v26 = *(v2 + 1);
  v27 = *(v2 + 2);
  if (v26 <= v27 - v6)
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v174 = *(v2 + 3);
    if (v174)
    {
      if (v26)
      {
        (*(*v174 + 16))(v174);
        v6 = *v2;
        v26 = *(v2 + 1);
LABEL_360:
        *v2 = 0;
        *(v2 + 1) = 0;
        v175 = *(v2 + 3);
        if (v175)
        {
          if (v26)
          {
            (*(*v175 + 16))(v175, v6);
            v6 = *v2;
            v26 = *(v2 + 1);
            goto LABEL_363;
          }
        }

        else
        {
          v26 = 0;
        }

        v6 = 0;
        goto LABEL_363;
      }
    }

    else
    {
      v26 = 0;
    }

    v6 = 0;
    goto LABEL_360;
  }

  *(v2 + 2) = v27 + 1;
  if (!v27)
  {
    goto LABEL_360;
  }

  v235 = *v27;
  if (v235 < 4)
  {
    LODWORD(v13) = 1;
    goto LABEL_44;
  }

LABEL_363:
  *v2 = 0;
  *(v2 + 1) = 0;
  v176 = *(v2 + 3);
  if (v176 && v26)
  {
    (*(*v176 + 16))(v176, v6);
  }

  LOBYTE(v235) = 0;
  LODWORD(v13) = 0;
LABEL_44:
  IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v377, v2);
  IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v375, v2);
  IPC::Decoder::decode<WebCore::ApplePayLineItem>(v367, v2);
  IPC::Decoder::decode<WTF::String>(v2, &v365);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, &v362);
  v28 = *(v2 + 1);
  v29 = *(v2 + 2);
  v6 = *v2;
  if (v28 <= &v29[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v177 = *(v2 + 3);
    if (v177)
    {
      if (v28)
      {
        (*(*v177 + 16))(v177);
        v28 = *(v2 + 1);
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_369:
    *v2 = 0;
    *(v2 + 1) = 0;
    v178 = *(v2 + 3);
    if (v178)
    {
      if (v28)
      {
        (*(*v178 + 16))(v178);
        v6 = *v2;
        v28 = *(v2 + 1);
        goto LABEL_372;
      }
    }

    else
    {
      v28 = 0;
    }

    v6 = 0;
    goto LABEL_372;
  }

  *(v2 + 2) = v29 + 1;
  if (!v29)
  {
    goto LABEL_369;
  }

  v30 = *v29;
  if (v30 < 2)
  {
    v230 = v30 != 0;
    v238 = 1;
    goto LABEL_48;
  }

LABEL_372:
  *v2 = 0;
  *(v2 + 1) = 0;
  v179 = *(v2 + 3);
  if (!v179 || !v28 || ((*(*v179 + 16))(v179, v6), v219 = *(v2 + 3), v220 = *v2, v221 = *(v2 + 1), *v2 = 0, *(v2 + 1) = 0, !v219) || !v221)
  {
    v6 = 0;
    v230 = 0;
    v238 = 0;
    v28 = 0;
    goto LABEL_374;
  }

  (*(*v219 + 16))(v219, v220);
  v238 = 0;
  v230 = 0;
  v6 = *v2;
  v28 = *(v2 + 1);
LABEL_48:
  v31 = *(v2 + 2);
  if (v28 <= v31 - v6)
  {
LABEL_374:
    *v2 = 0;
    *(v2 + 1) = 0;
    v180 = *(v2 + 3);
    if (v180)
    {
      if (v28)
      {
        (*(*v180 + 16))(v180, v6);
        v6 = *v2;
        v28 = *(v2 + 1);
        goto LABEL_377;
      }
    }

    else
    {
      v28 = 0;
    }

    v6 = 0;
LABEL_377:
    *v2 = 0;
    *(v2 + 1) = 0;
    v181 = *(v2 + 3);
    if (v181)
    {
      if (v28)
      {
        (*(*v181 + 16))(v181, v6);
        v6 = *v2;
        v28 = *(v2 + 1);
        goto LABEL_380;
      }
    }

    else
    {
      v28 = 0;
    }

    v6 = 0;
LABEL_380:
    *v2 = 0;
    *(v2 + 1) = 0;
    v182 = *(v2 + 3);
    if (v182 && v28)
    {
      (*(*v182 + 16))(v182, v6);
    }

    goto LABEL_303;
  }

  v32 = v31 + 1;
  *(v2 + 2) = v31 + 1;
  if (!v31)
  {
    goto LABEL_377;
  }

  if (*v31 >= 2u)
  {
    goto LABEL_380;
  }

  if (!*v31)
  {
    LOBYTE(v243) = 0;
    LOBYTE(v256) = 0;
    BYTE8(v256) = 1;
    goto LABEL_173;
  }

  if (v28 <= v32 - v6)
  {
    v186 = 0;
    v187 = 0;
    *v2 = 0;
    *(v2 + 1) = 0;
    v188 = *(v2 + 3);
    if (v188)
    {
      (*(*v188 + 16))(v188);
      v187 = *v2;
      v186 = *(v2 + 1);
    }

    goto LABEL_392;
  }

  *(v2 + 2) = v31 + 2;
  if (v31 == -1)
  {
    v186 = v28;
    v187 = v6;
LABEL_392:
    *v2 = 0;
    *(v2 + 1) = 0;
    v189 = *(v2 + 3);
    if (v189 && v186)
    {
      (*(*v189 + 16))(v189, v187, v186);
      v6 = *v2;
      v28 = *(v2 + 1);
    }

    else
    {
      v28 = 0;
      v6 = 0;
    }

    goto LABEL_394;
  }

  v33 = *v32;
  if (v33 < 2)
  {
    v34 = 0;
    v35 = v33 != 0;
    goto LABEL_56;
  }

LABEL_394:
  *v2 = 0;
  *(v2 + 1) = 0;
  v190 = *(v2 + 3);
  if (v190 && v28)
  {
    (*(*v190 + 16))(v190, v6);
    v35 = 0;
    v222 = *(v2 + 3);
    v223 = *v2;
    v224 = *(v2 + 1);
    v34 = 1;
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v222 && v224)
    {
      (*(*v222 + 16))(v222, v223);
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
    v34 = 1;
  }

LABEL_56:
  IPC::Decoder::decode<WTF::String>(v2, &v324);
  IPC::Decoder::decode<WTF::String>(v2, &v399);
  IPC::Decoder::decode<WTF::String>(v2, &v397);
  IPC::Decoder::decode<WTF::String>(v2, &v395);
  v36 = *(v2 + 1);
  v37 = *(v2 + 2);
  v38 = *v2;
  if (v36 <= &v37[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v191 = *(v2 + 3);
    if (v191)
    {
      if (v36)
      {
        (*(*v191 + 16))(v191);
        v36 = *(v2 + 1);
      }
    }

    else
    {
      v36 = 0;
    }

LABEL_398:
    *v2 = 0;
    *(v2 + 1) = 0;
    v192 = *(v2 + 3);
    if (v192)
    {
      if (v36)
      {
        (*(*v192 + 16))(v192);
        v39 = 0;
        v38 = *v2;
        v36 = *(v2 + 1);
        goto LABEL_401;
      }
    }

    else
    {
      v36 = 0;
    }

    v38 = 0;
    v39 = 0;
    goto LABEL_401;
  }

  *(v2 + 2) = v37 + 1;
  if (!v37)
  {
    goto LABEL_398;
  }

  v39 = *v37;
  if (v39 < 2)
  {
    v40 = 1;
    goto LABEL_60;
  }

LABEL_401:
  *v2 = 0;
  *(v2 + 1) = 0;
  v193 = *(v2 + 3);
  if (v193 && v36)
  {
    (*(*v193 + 16))(v193, v38);
  }

  v40 = 0;
LABEL_60:
  if (v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v240 = v41;
  IPC::Decoder::decode<WTF::String>(v2, &v393);
  IPC::Decoder::decode<WTF::String>(v2, &v391);
  v42 = *(v2 + 1);
  v43 = ((*(v2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v44 = *v2;
  v45 = v43 - *v2;
  v46 = v42 >= v45;
  v47 = v42 - v45;
  if (!v46 || v47 <= 7)
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v157 = *(v2 + 3);
    if (v157)
    {
      if (v42)
      {
        (*(*v157 + 16))(v157);
        v42 = *(v2 + 1);
      }
    }

    else
    {
      v42 = 0;
    }

LABEL_332:
    *v2 = 0;
    *(v2 + 1) = 0;
    v158 = *(v2 + 3);
    if (v158 && v42)
    {
      (*(*v158 + 16))(v158);
    }

    LOBYTE(v328) = 0;
    LOBYTE(v330) = 0;
LABEL_125:
    v75 = *v2;
    v76 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v77 = *(v2 + 3);
    if (v77 && v76)
    {
      (*(*v77 + 16))(v77, v75);
    }

    goto LABEL_126;
  }

  *(v2 + 2) = v43 + 1;
  if (!v43)
  {
    goto LABEL_332;
  }

  v18 = *v43;
  v311 = 0;
  v310 = 0;
  if (v18 < 0x5555)
  {
    if (!v18)
    {
      goto LABEL_91;
    }

    LOBYTE(v9) = 48 * v18;
    LODWORD(v311) = 48 * v18 / 0x30u;
    v310 = WTF::fastMalloc((48 * v18));
    v39 = 4294967294;
    v20 = 48;
    while (1)
    {
      IPC::Decoder::decode<WebCore::ApplePayInstallmentItem>(v315, v2);
      if ((v316 & 1) == 0)
      {
        goto LABEL_124;
      }

      if (HIDWORD(v311) != v311)
      {
        break;
      }

      WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplePayInstallmentItem>(&v310, v315);
      if (v316)
      {
        goto LABEL_75;
      }

LABEL_90:
      if (!--v18)
      {
        goto LABEL_91;
      }
    }

    v48 = HIDWORD(v311) + 1;
    v49 = v310 + 48 * HIDWORD(v311);
    *v49 = v315[0];
    v50 = *(&v315[0] + 1);
    *(&v315[0] + 1) = 0;
    *(v49 + 1) = v50;
    v51 = *&v315[1];
    *&v315[1] = 0;
    *(v49 + 2) = v51;
    v52 = *(&v315[1] + 1);
    *(&v315[1] + 1) = 0;
    *(v49 + 3) = v52;
    v53 = *&v315[2];
    *&v315[2] = 0;
    *(v49 + 4) = v53;
    v54 = *(&v315[2] + 1);
    *(&v315[2] + 1) = 0;
    *(v49 + 5) = v54;
    HIDWORD(v311) = v48;
LABEL_75:
    v55 = *(&v315[2] + 1);
    *(&v315[2] + 1) = 0;
    if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v55, v44);
    }

    v56 = *&v315[2];
    *&v315[2] = 0;
    if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v44);
    }

    v57 = *(&v315[1] + 1);
    *(&v315[1] + 1) = 0;
    if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v57, v44);
    }

    v58 = *&v315[1];
    *&v315[1] = 0;
    if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v58, v44);
    }

    v59 = *(&v315[0] + 1);
    *(&v315[0] + 1) = 0;
    if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v59, v44);
    }

    goto LABEL_90;
  }

  v39 = 4294967294;
  v20 = 48;
  do
  {
    IPC::Decoder::decode<WebCore::ApplePayInstallmentItem>(v315, v2);
    if ((v316 & 1) == 0)
    {
LABEL_124:
      LOBYTE(v328) = 0;
      LOBYTE(v330) = 0;
      WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v310, v44);
      goto LABEL_125;
    }

    if (HIDWORD(v311) == v311)
    {
      WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplePayInstallmentItem>(&v310, v315);
      if ((v316 & 1) == 0)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v62 = HIDWORD(v311) + 1;
      v63 = v310 + 48 * HIDWORD(v311);
      *v63 = v315[0];
      v64 = *(&v315[0] + 1);
      *(&v315[0] + 1) = 0;
      *(v63 + 1) = v64;
      v65 = *&v315[1];
      *&v315[1] = 0;
      *(v63 + 2) = v65;
      v66 = *(&v315[1] + 1);
      *(&v315[1] + 1) = 0;
      *(v63 + 3) = v66;
      v67 = *&v315[2];
      *&v315[2] = 0;
      *(v63 + 4) = v67;
      v68 = *(&v315[2] + 1);
      *(&v315[2] + 1) = 0;
      *(v63 + 5) = v68;
      HIDWORD(v311) = v62;
    }

    v69 = *(&v315[2] + 1);
    *(&v315[2] + 1) = 0;
    if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v69, v44);
    }

    v70 = *&v315[2];
    *&v315[2] = 0;
    if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v70, v44);
    }

    v71 = *(&v315[1] + 1);
    *(&v315[1] + 1) = 0;
    if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v71, v44);
    }

    v72 = *&v315[1];
    *&v315[1] = 0;
    if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v72, v44);
    }

    v73 = *(&v315[0] + 1);
    *(&v315[0] + 1) = 0;
    if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v73, v44);
    }

LABEL_114:
    --v18;
  }

  while (v18);
  v39 = HIDWORD(v311);
  if (v311 > HIDWORD(v311))
  {
    v9 = v310;
    if (HIDWORD(v311))
    {
      if (HIDWORD(v311) >= 0x5555556)
      {
        __break(0xC471u);
        return;
      }

      v20 = 48 * HIDWORD(v311);
      v74 = WTF::fastMalloc((48 * HIDWORD(v311)));
      LODWORD(v311) = v20 / 0x30;
      v310 = v74;
      if (v74 != v9)
      {
        WTF::VectorMover<false,WebCore::ApplePayInstallmentItem>::move(v9, (v9 + 48 * v39), v74);
      }
    }

    if (v9)
    {
      if (v310 == v9)
      {
        v310 = 0;
        LODWORD(v311) = 0;
      }

      WTF::fastFree(v9, v44);
    }
  }

LABEL_91:
  v60 = v310;
  v310 = 0;
  v328 = v60;
  v61 = v311;
  v311 = 0;
  v329 = v61;
  LOBYTE(v330) = 1;
  WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v310, v44);
LABEL_126:
  IPC::Decoder::decode<WTF::String>(v2, &v310);
  v78 = *(v2 + 1);
  v79 = *(v2 + 2);
  v6 = *v2;
  v229 = v13;
  if (v78 <= &v79[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v194 = *(v2 + 3);
    if (v194)
    {
      if (v78)
      {
        (*(*v194 + 16))(v194);
        v78 = *(v2 + 1);
      }
    }

    else
    {
      v78 = 0;
    }

LABEL_405:
    *v2 = 0;
    *(v2 + 1) = 0;
    v195 = *(v2 + 3);
    if (v195)
    {
      if (v78)
      {
        (*(*v195 + 16))(v195);
        v6 = *v2;
        v78 = *(v2 + 1);
        goto LABEL_408;
      }
    }

    else
    {
      v78 = 0;
    }

    v6 = 0;
    goto LABEL_408;
  }

  *(v2 + 2) = v79 + 1;
  if (!v79)
  {
    goto LABEL_405;
  }

  v80 = *v79;
  if (v80 < 4)
  {
    LODWORD(v9) = v80 | 0x100;
    if (v6)
    {
      goto LABEL_130;
    }

LABEL_409:
    v228 = 0;
    v84 = 0;
    LOBYTE(v340) = 0;
    v348 = 0;
    goto LABEL_142;
  }

LABEL_408:
  *v2 = 0;
  *(v2 + 1) = 0;
  v196 = *(v2 + 3);
  if (!v196)
  {
    goto LABEL_409;
  }

  if (!v78)
  {
    goto LABEL_409;
  }

  (*(*v196 + 16))(v196, v6);
  LODWORD(v9) = 0;
  v6 = *v2;
  if (!*v2)
  {
    goto LABEL_409;
  }

LABEL_130:
  if (v34)
  {
    goto LABEL_306;
  }

  LOBYTE(v315[0]) = v35;
  if ((v325 & 1) == 0)
  {
    goto LABEL_306;
  }

  v81 = v324;
  v324 = 0;
  if ((v400 & 1) == 0)
  {
    goto LABEL_306;
  }

  v82 = v399;
  v399 = 0;
  if ((v398 & 1) == 0)
  {
    goto LABEL_306;
  }

  v83 = v397;
  v397 = 0;
  if ((v396 & 1) == 0)
  {
    goto LABEL_306;
  }

  v21 = v395;
  v395 = 0;
  if ((v40 & 1) == 0)
  {
    goto LABEL_306;
  }

  BYTE8(v315[2]) = v240;
  if ((v394 & 1) == 0)
  {
    goto LABEL_306;
  }

  v40 = v393;
  v393 = 0;
  if ((v392 & 1) == 0)
  {
    goto LABEL_306;
  }

  v39 = v391;
  v391 = 0;
  if ((v330 & 1) == 0)
  {
    goto LABEL_306;
  }

  v34 = v328;
  v328 = 0;
  LODWORD(v13) = v329;
  v20 = HIDWORD(v329);
  v329 = 0;
  if ((v311 & 1) == 0)
  {
    goto LABEL_306;
  }

  v18 = v310;
  v310 = 0;
  if (v9 <= 0xFF)
  {
    goto LABEL_306;
  }

  LOBYTE(v319) = v9;
  v228 = v35;
  LOBYTE(v340) = v35;
  memset(v315 + 8, 0, 32);
  v226 = v82;
  v227 = v81;
  *&v341 = v81;
  *(&v341 + 1) = v82;
  v225 = v83;
  *&v342 = v83;
  *(&v342 + 1) = v21;
  v343 = v240;
  v316 = 0u;
  *&v344 = v40;
  *(&v344 + 1) = v39;
  v317 = 0;
  v345 = v34;
  v318 = 0u;
  *&v346 = __PAIR64__(v20, v13);
  *(&v346 + 1) = v18;
  v347 = v9;
  v84 = 1;
  v348 = 1;
  WebCore::ApplePayInstallmentConfiguration::~ApplePayInstallmentConfiguration(v315, v6);
LABEL_142:
  if (v311 == 1)
  {
    v85 = v310;
    v310 = 0;
    if (v85)
    {
      if (atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v85, v6);
      }
    }
  }

  if (v330 == 1)
  {
    WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v328, v6);
  }

  if (v392 == 1)
  {
    v86 = v391;
    v391 = 0;
    if (v86)
    {
      if (atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v86, v6);
      }
    }
  }

  if (v394 == 1)
  {
    v87 = v393;
    v393 = 0;
    if (v87)
    {
      if (atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v87, v6);
      }
    }
  }

  if (v396 == 1)
  {
    v88 = v395;
    v395 = 0;
    if (v88)
    {
      if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v88, v6);
      }
    }
  }

  if (v398 == 1)
  {
    v89 = v397;
    v397 = 0;
    if (v89)
    {
      if (atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v89, v6);
      }
    }
  }

  if (v400 == 1)
  {
    v90 = v399;
    v399 = 0;
    if (v90)
    {
      if (atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v90, v6);
      }
    }
  }

  if (v325 == 1 && (v91 = v324, v324 = 0, v91) && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v91, v6);
    if ((v84 & 1) == 0)
    {
      goto LABEL_302;
    }

LABEL_172:
    LOBYTE(v243) = v228;
    v341 = 0u;
    v244 = v227;
    v245 = v226;
    v342 = 0u;
    v246 = v225;
    v247 = v21;
    LOBYTE(v248) = v240;
    v344 = 0u;
    v249 = v40;
    v250 = v39;
    v345 = 0;
    v251 = v34;
    v346 = 0u;
    *&v252 = __PAIR64__(v20, v13);
    *(&v252 + 1) = v18;
    LOBYTE(v253) = v9;
    LOBYTE(v256) = 1;
    BYTE8(v256) = 1;
    WebCore::ApplePayInstallmentConfiguration::~ApplePayInstallmentConfiguration(&v340, v6);
    LOBYTE(v13) = v229;
  }

  else
  {
    if (v84)
    {
      goto LABEL_172;
    }

LABEL_302:
    v147 = *v2;
    v148 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v149 = *(v2 + 3);
    LOBYTE(v13) = v229;
    if (v149 && v148)
    {
      (*(*v149 + 16))(v149, v147);
    }

LABEL_303:
    LOBYTE(v243) = 0;
    BYTE8(v256) = 0;
    v6 = *v2;
    v150 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v151 = *(v2 + 3);
    if (v151 && v150)
    {
      (*(*v151 + 16))(v151, v6);
    }
  }

LABEL_173:
  if (!*v2)
  {
    goto LABEL_307;
  }

  if ((BYTE8(v256) & 1) == 0)
  {
    goto LABEL_306;
  }

  WebCore::PaymentInstallmentConfiguration::PaymentInstallmentConfiguration();
  v351[0] = 0;
  v360 = 0;
  if (v348)
  {
    v351[0] = v340;
    v92 = v341;
    v341 = 0u;
    v352 = v92;
    v93 = v342;
    v342 = 0u;
    v353 = v93;
    v354 = v343;
    v94 = v344;
    v344 = 0u;
    v355 = v94;
    v95 = v345;
    v345 = 0;
    v356 = v95;
    v96 = *(&v346 + 1);
    v357 = v346;
    v346 = 0uLL;
    v358 = v96;
    v359 = v347;
    v360 = 1;
    v361 = 1;
    WebCore::ApplePayInstallmentConfiguration::~ApplePayInstallmentConfiguration(&v340, v6);
  }

  else
  {
    v361 = 1;
  }

  while (2)
  {
    if (BYTE8(v256) == 1 && v256 == 1)
    {
      WebCore::ApplePayInstallmentConfiguration::~ApplePayInstallmentConfiguration(&v243, v6);
    }

    v97 = *(v2 + 1);
    if ((v361 & 1) == 0)
    {
      v152 = *v2;
      *v2 = 0;
      *(v2 + 1) = 0;
      v153 = *(v2 + 3);
      if (v153 && v97)
      {
        (*(*v153 + 16))(v153, v152);
        v97 = *(v2 + 1);
        goto LABEL_182;
      }

      v97 = 0;
      v98 = *v2;
      goto LABEL_310;
    }

LABEL_182:
    v98 = *v2;
    v99 = *(v2 + 2);
    if (v97 <= &v99[-*v2])
    {
LABEL_310:
      *v2 = 0;
      *(v2 + 1) = 0;
      v154 = *(v2 + 3);
      if (v154)
      {
        if (v97)
        {
          (*(*v154 + 16))(v154, v98);
          v97 = *(v2 + 1);
        }
      }

      else
      {
        v97 = 0;
      }

LABEL_312:
      *v2 = 0;
      *(v2 + 1) = 0;
      v155 = *(v2 + 3);
      if (v155)
      {
        if (v97)
        {
          (*(*v155 + 16))(v155);
          v98 = *v2;
          v97 = *(v2 + 1);
LABEL_315:
          *v2 = 0;
          *(v2 + 1) = 0;
          v156 = *(v2 + 3);
          if (v156 && v97)
          {
            (*(*v156 + 16))(v156, v98);
          }

          v103 = 0;
          goto LABEL_431;
        }
      }

      else
      {
        v97 = 0;
      }

      v98 = 0;
      goto LABEL_315;
    }

    v100 = v99 + 1;
    *(v2 + 2) = v99 + 1;
    if (!v99)
    {
      goto LABEL_312;
    }

    if (*v99 >= 2u)
    {
      goto LABEL_315;
    }

    if (!*v99)
    {
      v103 = 0;
      LOWORD(v101) = 0;
      v102 = 0;
      goto LABEL_191;
    }

    if (v97 <= v100 - v98)
    {
      v205 = 0;
      v206 = 0;
      *v2 = 0;
      *(v2 + 1) = 0;
      v207 = *(v2 + 3);
      if (v207)
      {
        (*(*v207 + 16))(v207);
        v206 = *v2;
        v205 = *(v2 + 1);
      }

      goto LABEL_427;
    }

    *(v2 + 2) = v99 + 2;
    if (v99 == -1)
    {
      v205 = v97;
      v206 = v98;
LABEL_427:
      *v2 = 0;
      *(v2 + 1) = 0;
      v208 = *(v2 + 3);
      if (v208 && v205)
      {
        (*(*v208 + 16))(v208, v206, v205);
        v98 = *v2;
        v97 = *(v2 + 1);
      }

      else
      {
        v97 = 0;
        v98 = 0;
      }

      goto LABEL_429;
    }

    v101 = *v100;
    if (v101 < 3)
    {
      v102 = 0;
      v103 = 256;
      goto LABEL_191;
    }

LABEL_429:
    *v2 = 0;
    *(v2 + 1) = 0;
    v209 = *(v2 + 3);
    if (v209 && v97)
    {
      (*(*v209 + 16))(v209, v98);
    }

    v103 = 256;
LABEL_431:
    v210 = *v2;
    v211 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v212 = *(v2 + 3);
    if (v212 && v211)
    {
      (*(*v212 + 16))(v212, v210);
    }

    LOWORD(v101) = 0;
    v102 = 1;
LABEL_191:
    v104 = IPC::Decoder::decode<std::optional<BOOL>>(v2);
    IPC::Decoder::decode<WTF::String>(v2, &v399);
    IPC::Decoder::decode<std::optional<WebCore::ApplePayRecurringPaymentRequest>>(&v340, v2);
    IPC::Decoder::decode<std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest>>(&v328, v2);
    IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v324, v2);
    IPC::Decoder::decode<std::optional<WebCore::ApplePayDeferredPaymentRequest>>(v315, v2);
    IPC::Decoder::decode<std::optional<WebCore::ApplePayDisbursementRequest>>(&v310, v2);
    v105 = *(v2 + 1);
    v106 = *(v2 + 2);
    v107 = *v2;
    if (v105 <= &v106[-*v2])
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v183 = *(v2 + 3);
      if (v183)
      {
        if (v105)
        {
          (*(*v183 + 16))(v183);
          v105 = *(v2 + 1);
        }
      }

      else
      {
        v105 = 0;
      }

LABEL_385:
      *v2 = 0;
      *(v2 + 1) = 0;
      v184 = *(v2 + 3);
      if (v184)
      {
        if (v105)
        {
          (*(*v184 + 16))(v184);
          v107 = *v2;
          v105 = *(v2 + 1);
LABEL_388:
          *v2 = 0;
          *(v2 + 1) = 0;
          v185 = *(v2 + 3);
          if (v185 && v105)
          {
            (*(*v185 + 16))(v185, v107);
          }

          v111 = 0;
          goto LABEL_419;
        }
      }

      else
      {
        v105 = 0;
      }

      v107 = 0;
      goto LABEL_388;
    }

    v108 = v106 + 1;
    *(v2 + 2) = v106 + 1;
    if (!v106)
    {
      goto LABEL_385;
    }

    if (*v106 >= 2u)
    {
      goto LABEL_388;
    }

    if (!*v106)
    {
      v111 = 0;
      LOWORD(v109) = 0;
      v110 = 0;
      goto LABEL_200;
    }

    if (v105 <= v108 - v107)
    {
      v197 = 0;
      v198 = 0;
      *v2 = 0;
      *(v2 + 1) = 0;
      v199 = *(v2 + 3);
      if (v199)
      {
        (*(*v199 + 16))(v199);
        v198 = *v2;
        v197 = *(v2 + 1);
      }

      goto LABEL_415;
    }

    *(v2 + 2) = v106 + 2;
    if (v106 == -1)
    {
      v197 = v105;
      v198 = v107;
LABEL_415:
      *v2 = 0;
      *(v2 + 1) = 0;
      v200 = *(v2 + 3);
      if (v200 && v197)
      {
        (*(*v200 + 16))(v200, v198, v197);
        v107 = *v2;
        v105 = *(v2 + 1);
      }

      else
      {
        v105 = 0;
        v107 = 0;
      }

      goto LABEL_417;
    }

    v109 = *v108;
    if (v109 < 3)
    {
      v110 = 0;
      v111 = 256;
      goto LABEL_200;
    }

LABEL_417:
    *v2 = 0;
    *(v2 + 1) = 0;
    v201 = *(v2 + 3);
    if (v201 && v105)
    {
      (*(*v201 + 16))(v201, v107);
    }

    v111 = 256;
LABEL_419:
    v202 = *v2;
    v203 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v204 = *(v2 + 3);
    if (v204 && v203)
    {
      (*(*v204 + 16))(v204, v202);
    }

    LOWORD(v109) = 0;
    v110 = 1;
LABEL_200:
    IPC::Decoder::decode<WTF::String>(v2, &v397);
    if (!*v2)
    {
      *v236 = 0;
      *(v236 + 896) = 0;
      goto LABEL_238;
    }

    if ((v390 & 1) == 0 || (v388 & 1) == 0 || !BYTE5(v242) || (v386 & 1) == 0 || !BYTE5(v241) || (v383 & 1) == 0 || (v380 & 1) == 0 || (v239 & 1) == 0 || (v13 & 1) == 0 || (v378 & 1) == 0 || (v376 & 1) == 0 || (v374 & 1) == 0 || (v366 & 1) == 0 || (v13 = v365, v365 = 0, (v364 & 1) == 0) || (v238 & 1) == 0 || (v361 & 1) == 0 || v102 || (v104 & 0x10000) == 0 || (v400 & 1) == 0 || (v2 = v399, v399 = 0, (v350 & 1) == 0) || (v339 & 1) == 0 || (v327 & 1) == 0 || (v323 & 1) == 0 || (v314 & 1) == 0 || v110 || (v398 & 1) == 0)
    {
LABEL_306:
      __break(1u);
LABEL_307:
      v351[0] = 0;
      v361 = 0;
      continue;
    }

    break;
  }

  v243 = 0;
  v113 = v389;
  v389 = 0;
  v114 = v387;
  v387 = 0;
  v244 = v113;
  v245 = v114;
  LODWORD(v246) = v242;
  BYTE4(v246) = BYTE4(v242);
  v247 = MEMORY[0x1E69E2E40] + 16;
  v248 = v385;
  if (v385)
  {
    v115 = v385;
  }

  LODWORD(v249) = v241;
  BYTE4(v249) = BYTE4(v241);
  v250 = MEMORY[0x1E69E2E40] + 16;
  v251 = v382;
  if (v382)
  {
    v116 = v382;
  }

  v117 = v379;
  *&v112 = 0;
  v379 = v112;
  v252 = v117;
  v253 = v232 | v237 | v231 | v233 | v234;
  v254 = (v232 | v237 | v231 | v233 | v234) >> 32;
  v255 = v235;
  v118 = v377;
  v377 = v112;
  v256 = v118;
  v119 = v375;
  v375 = v112;
  v257 = v119;
  v258 = v367[0];
  v120 = v368;
  v368 = 0uLL;
  v259 = v120;
  v261 = v370;
  v260 = v369;
  v121 = v372;
  v372 = 0;
  v262 = v371;
  v263 = v121;
  v264 = v373;
  v122 = v362;
  v362 = 0;
  v265 = v13;
  v266 = v122;
  *&v120 = v363;
  v363 = 0;
  v267 = v120;
  v268 = v230;
  v269 = 0;
  v278 = 0;
  if (v360 == 1)
  {
    v269 = v351[0];
    v123 = v352;
    v352 = 0uLL;
    v270 = v123;
    v124 = v353;
    v353 = 0uLL;
    v271 = v124;
    v272 = v354;
    v125 = v355;
    v355 = 0uLL;
    v273 = v125;
    v126 = v356;
    v356 = 0;
    v274 = v126;
    v127 = v357;
    v357 = 0;
    v275 = v127;
    v128 = v358;
    v358 = 0;
    v276 = v128;
    v277 = v359;
    v278 = 1;
  }

  v279 = v101 | v103;
  v280 = v104;
  v281 = v2;
  std::__optional_move_base<WebCore::ApplePayRecurringPaymentRequest,false>::__optional_move_base[abi:sn200100](&v282, &v340);
  LOBYTE(v283) = 0;
  v293 = 0;
  if (v338 == 1)
  {
    v283 = v328;
    v284 = v329;
    v129 = v330;
    v286 = v331;
    v287 = v332;
    v130 = v334;
    v288 = v333;
    v330 = 0u;
    v285 = v129;
    v328 = 0;
    v334 = 0;
    v289 = v130;
    v290 = v335;
    v131 = v336;
    v336 = 0u;
    v291 = v131;
    v132 = v337;
    v337 = 0;
    v292 = v132;
    v293 = 1;
  }

  std::__optional_move_base<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v294, &v324);
  LOBYTE(v295) = 0;
  v306 = 0;
  if (v322 == 1)
  {
    v133 = v315[1];
    v315[1] = 0u;
    v297 = v133;
    v298 = v315[2];
    v299 = v316;
    v134 = v320;
    v135 = v321;
    v320 = 0u;
    v321 = 0u;
    v295 = *&v315[0];
    v296 = BYTE8(v315[0]);
    v136 = v318;
    v300 = v317;
    *&v315[0] = 0;
    *&v318 = 0;
    v301 = v136;
    v302 = WORD4(v318);
    v303 = v319;
    v304 = v134;
    v305 = v135;
    v306 = 1;
  }

  std::__optional_move_base<WebCore::ApplePayDisbursementRequest,false>::__optional_move_base[abi:sn200100](v307, &v310);
  v308 = v109 | v111;
  v137 = v397;
  v397 = 0;
  v309 = v137;
  *(WebCore::ApplePaySessionPaymentRequest::ApplePaySessionPaymentRequest(v236, &v243) + 896) = 1;
  MEMORY[0x19EB0CAC0](&v243);
LABEL_238:
  if (v398 == 1)
  {
    v138 = v397;
    v397 = 0;
    if (v138)
    {
      if (atomic_fetch_add_explicit(v138, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v138, v6);
      }
    }
  }

  if (v314 == 1 && v313 == 1 && v312 == 1)
  {
    v139 = v310;
    if (v310)
    {
      v310 = 0;
      LODWORD(v311) = 0;
      WTF::fastFree(v139, v6);
    }
  }

  if (v323 == 1 && v322 == 1)
  {
    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(v315, v6);
  }

  if (v327 == 1 && v326 == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v324, v6);
  }

  if (v339 == 1 && v338 == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(&v328, v6);
  }

  if (v350 == 1 && v349 == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(&v340, v6);
  }

  if (v400 == 1)
  {
    v140 = v399;
    v399 = 0;
    if (v140)
    {
      if (atomic_fetch_add_explicit(v140, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v140, v6);
      }
    }
  }

  if (v361 == 1 && v360 == 1)
  {
    WebCore::ApplePayInstallmentConfiguration::~ApplePayInstallmentConfiguration(v351, v6);
  }

  if (v364 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v362, v6);
  }

  if (v366 == 1)
  {
    v141 = v365;
    v365 = 0;
    if (v141)
    {
      if (atomic_fetch_add_explicit(v141, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v141, v6);
      }
    }
  }

  if (v374 == 1)
  {
    v142 = v372;
    if (v372 && atomic_fetch_add_explicit(v372, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v142, v6);
    }

    v143 = *(&v368 + 1);
    if (*(&v368 + 1) && atomic_fetch_add_explicit(*(&v368 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v143, v6);
    }

    v144 = v368;
    if (v368 && atomic_fetch_add_explicit(v368, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v144, v6);
    }
  }

  if (v376 == 1)
  {
    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v375, v6);
  }

  if (v378 == 1)
  {
    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v377, v6);
  }

  if (v380 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v379, v6);
  }

  if (v383 == 1)
  {
    WebCore::PaymentContact::~PaymentContact(v381);
  }

  if (v386 == 1)
  {
    WebCore::PaymentContact::~PaymentContact(v384);
  }

  if (v388 == 1)
  {
    v145 = v387;
    v387 = 0;
    if (v145)
    {
      if (atomic_fetch_add_explicit(v145, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v145, v6);
      }
    }
  }

  if (v390 == 1)
  {
    v146 = v389;
    v389 = 0;
    if (v146)
    {
      if (atomic_fetch_add_explicit(v146, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v146, v6);
      }
    }
  }
}

void sub_19D6D02A8(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (*(v2 - 128) == 1)
  {
    v4 = *(v2 - 136);
    *(v2 - 136) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (*(v2 - 112) == 1)
  {
    v5 = *(v2 - 120);
    *(v2 - 120) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  if (*(v2 - 96) == 1)
  {
    v6 = *(v2 - 104);
    *(v2 - 104) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x4C0]) == 1)
  {
    v7 = STACK[0x4B8];
    STACK[0x4B8] = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x6B0]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x6A0], a2);
  }

  if (LOBYTE(STACK[0x6C0]) == 1)
  {
    v8 = STACK[0x6B8];
    STACK[0x6B8] = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x718]) == 1)
  {
    v9 = STACK[0x708];
    if (STACK[0x708] && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }

    v10 = STACK[0x6D8];
    if (STACK[0x6D8] && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }

    v11 = STACK[0x6D0];
    if (STACK[0x6D0] && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  if (LOBYTE(STACK[0x730]) == 1)
  {
    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x720], a2);
  }

  if (LOBYTE(STACK[0x748]) == 1)
  {
    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x738], a2);
  }

  if (LOBYTE(STACK[0x760]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x750], a2);
  }

  if (*(v2 - 232) == 1)
  {
    WebCore::PaymentContact::~PaymentContact((v2 - 248));
  }

  if (*(v2 - 208) == 1)
  {
    WebCore::PaymentContact::~PaymentContact((v2 - 224));
  }

  if (*(v2 - 192) == 1)
  {
    v12 = *(v2 - 200);
    *(v2 - 200) = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }
    }
  }

  if (*(v2 - 176) == 1)
  {
    v13 = *(v2 - 184);
    *(v2 - 184) = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WebCore::ApplePaySessionPaymentRequestContactFields>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    goto LABEL_44;
  }

  v4 = v2 + 1;
  a1[2] = v2 + 1;
  if (!v2)
  {
    v50 = a1;
    goto LABEL_47;
  }

  v5 = *v2;
  if (v5 < 2)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v64 = v5;
  v50 = a1;
  while (1)
  {
    *v50 = 0;
    v50[1] = 0;
    v30 = v50[3];
    if (!v30 || !v1)
    {
      v49 = 0;
      v31 = 0;
      v3 = 0;
LABEL_53:
      *v50 = 0;
      v50[1] = 0;
      v32 = v50[3];
      if (v32 && v31)
      {
        (*(*v32 + 16))(v32, v3, v31);
        v65 = 0;
        v3 = *v50;
        v1 = v50[1];
      }

      else
      {
        v1 = 0;
        v3 = 0;
        v65 = 0;
      }

      goto LABEL_56;
    }

    (*(*v30 + 16))(v30, v3);
    v6 = 0;
    a1 = v50;
    v3 = *v50;
    v1 = v50[1];
    v4 = v50[2];
    v5 = v64;
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
      LODWORD(v49) = v7;
      BYTE4(v49) = v6;
      v31 = 0;
      v45 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v50 = a1;
      if (v1 && v45)
      {
        (*(*v45 + 16))(v45);
        v3 = *v50;
        v31 = v50[1];
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_53;
    }

    v8 = v4 + 1;
    a1[2] = v4 + 1;
    if (!v4)
    {
      LODWORD(v49) = v7;
      BYTE4(v49) = v6;
      v50 = a1;
      v31 = v1;
      goto LABEL_53;
    }

    v9 = *v4;
    if (v9 < 2)
    {
      v10 = 1;
      goto LABEL_12;
    }

    BYTE4(v49) = v6;
    v65 = v9;
    LODWORD(v49) = v7;
    v50 = a1;
LABEL_56:
    *v50 = 0;
    v50[1] = 0;
    v33 = v50[3];
    if (!v33 || !v1)
    {
      v62 = 0;
      v34 = 0;
      v3 = 0;
LABEL_58:
      *v50 = 0;
      v50[1] = 0;
      v35 = v50[3];
      if (v35 && v34)
      {
        (*(*v35 + 16))(v35, v3, v34);
        v60 = 0;
        v3 = *v50;
        v1 = v50[1];
      }

      else
      {
        v1 = 0;
        v3 = 0;
        v60 = 0;
      }

      goto LABEL_61;
    }

    (*(*v33 + 16))(v33, v3);
    v10 = 0;
    a1 = v50;
    v3 = *v50;
    v1 = v50[1];
    v8 = v50[2];
    v7 = v49;
    LOBYTE(v6) = BYTE4(v49);
    v9 = v65;
LABEL_12:
    if (v1 <= &v8[-v3])
    {
      v62 = v10;
      BYTE4(v49) = v6;
      v65 = v9;
      LODWORD(v49) = v7;
      v34 = 0;
      v46 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v50 = a1;
      if (v1 && v46)
      {
        (*(*v46 + 16))(v46);
        v3 = *v50;
        v34 = v50[1];
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_58;
    }

    v11 = v8 + 1;
    a1[2] = v8 + 1;
    if (!v8)
    {
      v62 = v10;
      BYTE4(v49) = v6;
      v65 = v9;
      LODWORD(v49) = v7;
      v50 = a1;
      v34 = v1;
      goto LABEL_58;
    }

    v12 = *v8;
    if (v12 < 2)
    {
      v13 = 1;
      goto LABEL_16;
    }

    v60 = v12;
    v62 = v10;
    BYTE4(v49) = v6;
    v65 = v9;
    LODWORD(v49) = v7;
    v50 = a1;
LABEL_61:
    *v50 = 0;
    v50[1] = 0;
    v36 = v50[3];
    if (!v36 || !v1)
    {
      v58 = 0;
      v37 = 0;
      v3 = 0;
LABEL_63:
      *v50 = 0;
      v50[1] = 0;
      v38 = v50[3];
      if (v38 && v37)
      {
        (*(*v38 + 16))(v38, v3, v37);
        v56 = 0;
        v3 = *v50;
        v1 = v50[1];
      }

      else
      {
        v1 = 0;
        v3 = 0;
        v56 = 0;
      }

      goto LABEL_65;
    }

    (*(*v36 + 16))(v36, v3);
    v13 = 0;
    a1 = v50;
    v3 = *v50;
    v1 = v50[1];
    v11 = v50[2];
    v7 = v49;
    LOBYTE(v6) = BYTE4(v49);
    v10 = v62;
    v9 = v65;
    v12 = v60;
LABEL_16:
    if (v1 <= &v11[-v3])
    {
      v58 = v13;
      v60 = v12;
      v62 = v10;
      BYTE4(v49) = v6;
      v65 = v9;
      LODWORD(v49) = v7;
      v37 = 0;
      v47 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v50 = a1;
      if (v1 && v47)
      {
        (*(*v47 + 16))(v47);
        v3 = *v50;
        v37 = v50[1];
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_63;
    }

    v14 = v11 + 1;
    a1[2] = v11 + 1;
    if (!v11)
    {
      v58 = v13;
      v60 = v12;
      v62 = v10;
      BYTE4(v49) = v6;
      v65 = v9;
      LODWORD(v49) = v7;
      v50 = a1;
      v37 = v1;
      goto LABEL_63;
    }

    v15 = *v11;
    if (v15 < 2)
    {
      v16 = 1;
      goto LABEL_20;
    }

    v56 = *v11;
    v58 = v13;
    v60 = v12;
    v62 = v10;
    BYTE4(v49) = v6;
    v65 = v9;
    LODWORD(v49) = v7;
    v50 = a1;
LABEL_65:
    *v50 = 0;
    v50[1] = 0;
    v39 = v50[3];
    if (!v39 || !v1)
    {
      v54 = 0;
      v40 = 0;
      v3 = 0;
LABEL_67:
      *v50 = 0;
      v50[1] = 0;
      v41 = v50[3];
      if (v41 && v40)
      {
        (*(*v41 + 16))(v41, v3, v40);
        v52 = 0;
        v3 = *v50;
        v1 = v50[1];
      }

      else
      {
        v1 = 0;
        v3 = 0;
        v52 = 0;
      }

      goto LABEL_69;
    }

    (*(*v39 + 16))(v39, v3);
    v16 = 0;
    a1 = v50;
    v3 = *v50;
    v1 = v50[1];
    v14 = v50[2];
    v7 = v49;
    LOBYTE(v6) = BYTE4(v49);
    v10 = v62;
    v9 = v65;
    v13 = v58;
    v12 = v60;
    v15 = v56;
LABEL_20:
    if (v1 <= &v14[-v3])
    {
      v54 = v16;
      v56 = v15;
      v58 = v13;
      v60 = v12;
      v62 = v10;
      BYTE4(v49) = v6;
      v65 = v9;
      LODWORD(v49) = v7;
      v40 = 0;
      v48 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v50 = a1;
      if (v1 && v48)
      {
        (*(*v48 + 16))(v48);
        v3 = *v50;
        v40 = v50[1];
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_67;
    }

    a1[2] = v14 + 1;
    if (!v14)
    {
      v54 = v16;
      v56 = v15;
      v58 = v13;
      v60 = v12;
      v62 = v10;
      BYTE4(v49) = v6;
      v65 = v9;
      LODWORD(v49) = v7;
      v50 = a1;
      v40 = v1;
      goto LABEL_67;
    }

    v17 = *v14;
    if (v17 < 2)
    {
      v18 = 1;
      if (!v3)
      {
        goto LABEL_71;
      }

      goto LABEL_24;
    }

    v52 = *v14;
    v54 = v16;
    v56 = v15;
    v58 = v13;
    v60 = v12;
    v62 = v10;
    BYTE4(v49) = v6;
    v65 = v9;
    LODWORD(v49) = v7;
    v50 = a1;
LABEL_69:
    *v50 = 0;
    v50[1] = 0;
    v42 = v50[3];
    if (!v42 || !v1)
    {
      break;
    }

    (*(*v42 + 16))(v42, v3);
    v18 = 0;
    a1 = v50;
    v3 = *v50;
    v7 = v49;
    LOBYTE(v6) = BYTE4(v49);
    v10 = v62;
    v9 = v65;
    v13 = v58;
    v12 = v60;
    v15 = v56;
    v17 = v52;
    v16 = v54;
    if (!*v50)
    {
      goto LABEL_71;
    }

LABEL_24:
    if (v6 & 1) != 0 && (v10 & 1) != 0 && (v13 & 1) != 0 && (v16 & 1) != 0 && (v18)
    {
      v19 = 1;
      v16 = 1;
      v10 = 1;
      v13 = 1;
      v18 = 1;
      goto LABEL_30;
    }

    __break(1u);
LABEL_44:
    *a1 = 0;
    a1[1] = 0;
    v50 = a1;
    v28 = a1[3];
    if (!v28)
    {
      v1 = 0;
LABEL_46:
      v3 = 0;
      goto LABEL_47;
    }

    if (!v1)
    {
      goto LABEL_46;
    }

    (*(*v28 + 16))(v28);
    v3 = *v50;
    v1 = v50[1];
LABEL_47:
    *v50 = 0;
    v50[1] = 0;
    v29 = v50[3];
    if (!v29)
    {
      v1 = 0;
      goto LABEL_49;
    }

    if (v1)
    {
      (*(*v29 + 16))(v29, v3);
      v64 = 0;
      v3 = *v50;
      v1 = v50[1];
    }

    else
    {
LABEL_49:
      v3 = 0;
      v64 = 0;
    }
  }

  v3 = 0;
  v18 = 0;
  a1 = v50;
  v10 = v62;
  v9 = v65;
  v13 = v58;
  v12 = v60;
  v15 = v56;
  v17 = v52;
  v16 = v54;
LABEL_71:
  v43 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v44 = a1[3];
  if (v44)
  {
    v51 = v18;
    v53 = v17;
    v55 = v16;
    v57 = v15;
    v59 = v13;
    v61 = v12;
    v63 = v10;
    v66 = v9;
    if (v43)
    {
      (*(*v44 + 16))(v44, v3);
    }

    v19 = 0;
    v7 = 0;
    v10 = v63;
    v9 = v66;
    v13 = v59;
    v12 = v61;
    v15 = v57;
    v17 = v53;
    v16 = v55;
    v18 = v51;
  }

  else
  {
    v19 = 0;
    v7 = 0;
  }

LABEL_30:
  v20 = (v18 & (v17 != 0)) == 0;
  v21 = 0x100000000;
  if (v20)
  {
    v21 = 0;
  }

  v22 = v21 | (v19 << 40);
  v20 = (v16 & (v15 != 0)) == 0;
  v23 = 0x1000000;
  if (v20)
  {
    v23 = 0;
  }

  v20 = (v13 & (v12 != 0)) == 0;
  v24 = 0x10000;
  if (v20)
  {
    v24 = 0;
  }

  v25 = v24 | v23;
  v20 = (v10 & (v9 != 0)) == 0;
  v26 = 256;
  if (v20)
  {
    v26 = 0;
  }

  return v22 | v25 | v26 | v7;
}

void IPC::Decoder::decode<WebCore::PaymentContact>(uint64_t a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebCore::PaymentContact,void>::decode(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
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

void sub_19D6D1354(_Unwind_Exception *exception_object)
{
  if (*(v1 + 16) == 1)
  {
    WebCore::PaymentContact::~PaymentContact(v1);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, WTF::StringImpl **a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v41 = a2[3];
    if (v41)
    {
      if (v6)
      {
        (*(*v41 + 16))(v41);
        v5 = *a2;
        v6 = a2[1];
LABEL_67:
        *a2 = 0;
        a2[1] = 0;
        v42 = a2[3];
        if (v42 && v6)
        {
          (*(*v42 + 16))(v42, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_69:
        v43 = *a2;
        v44 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v44)
          {
            return (*(*result + 16))(result, v43);
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
    goto LABEL_67;
  }

  a2[2] = (v4 + 8);
  if (!v4)
  {
    goto LABEL_67;
  }

  v8 = *v4;
  v55 = 0;
  v56 = 0;
  if (v8 >= 0x2762)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::ApplePayShippingMethod>(&v46, a2);
      v23 = v54;
      if (v54)
      {
        if (HIDWORD(v56) == v56)
        {
          WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplePayShippingMethod>(&v55, &v46);
        }

        else
        {
          v24 = HIDWORD(v56) + 1;
          v25 = v55 + 104 * HIDWORD(v56);
          v26 = v46;
          v46 = 0;
          *v25 = v26;
          v27 = v47;
          v47 = 0;
          *(v25 + 8) = v27;
          v28 = v48;
          v48 = 0;
          *(v25 + 16) = v28;
          v29 = v49;
          v49 = 0;
          *(v25 + 24) = v29;
          v30 = v51;
          v31 = v52;
          v32 = *v53;
          *(v25 + 93) = *&v53[13];
          *(v25 + 64) = v31;
          *(v25 + 80) = v32;
          *(v25 + 48) = v30;
          *(v25 + 32) = v50;
          HIDWORD(v56) = v24;
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v54 == 1)
      {
        v33 = v49;
        v49 = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v5);
        }

        v34 = v48;
        v48 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v5);
        }

        v35 = v47;
        v47 = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v5);
        }

        v36 = v46;
        v46 = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v5);
        }
      }

      if ((v23 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        v37 = HIDWORD(v56);
        if (v56 <= HIDWORD(v56))
        {
          goto LABEL_61;
        }

        result = v55;
        if (HIDWORD(v56))
        {
          v45 = v55;
          if (HIDWORD(v56) >= 0x2762763)
          {
            __break(0xC471u);
            return result;
          }

          v39 = WTF::fastMalloc((104 * HIDWORD(v56)));
          result = v45;
          LODWORD(v56) = 104 * v37 / 0x68;
          v55 = v39;
          if (v39 != v45)
          {
            WTF::VectorMover<false,WebCore::ApplePayShippingMethod>::move(v45, (v45 + 104 * v37), v39);
            result = v45;
          }
        }

        if (result)
        {
          if (v55 == result)
          {
            v55 = 0;
            LODWORD(v56) = 0;
          }

          WTF::fastFree(result, v5);
        }

        goto LABEL_61;
      }
    }
  }

  else
  {
    if (v8)
    {
      LODWORD(v56) = 104 * v8 / 0x68u;
      v55 = WTF::fastMalloc((104 * v8));
      do
      {
        IPC::Decoder::decode<WebCore::ApplePayShippingMethod>(&v46, a2);
        v9 = v54;
        if (v54)
        {
          if (HIDWORD(v56) == v56)
          {
            WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplePayShippingMethod>(&v55, &v46);
          }

          else
          {
            v10 = HIDWORD(v56) + 1;
            v11 = v55 + 104 * HIDWORD(v56);
            v12 = v46;
            v46 = 0;
            *v11 = v12;
            v13 = v47;
            v47 = 0;
            *(v11 + 8) = v13;
            v14 = v48;
            v48 = 0;
            *(v11 + 16) = v14;
            v15 = v49;
            v49 = 0;
            *(v11 + 24) = v15;
            v16 = v51;
            v17 = v52;
            v18 = *v53;
            *(v11 + 93) = *&v53[13];
            *(v11 + 64) = v17;
            *(v11 + 80) = v18;
            *(v11 + 48) = v16;
            *(v11 + 32) = v50;
            HIDWORD(v56) = v10;
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 16) = 0;
        }

        if (v54 != 1)
        {
          goto LABEL_27;
        }

        v19 = v49;
        v49 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v5);
        }

        v20 = v48;
        v48 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v5);
        }

        v21 = v47;
        v47 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v5);
        }

        v22 = v46;
        v46 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v5);
          if ((v9 & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
LABEL_27:
          if ((v9 & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        --v8;
      }

      while (v8);
    }

LABEL_61:
    *a1 = v55;
    v40 = v56;
    v55 = 0;
    v56 = 0;
    *(a1 + 8) = v40;
    *(a1 + 16) = 1;
  }

LABEL_62:
  result = WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v5);
  if ((*(a1 + 16) & 1) == 0)
  {
    goto LABEL_69;
  }

  return result;
}

void sub_19D6D1820(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (*(v24 + 16) == 1)
  {
    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, WTF::StringImpl **a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v33 = a2[3];
    if (v33)
    {
      if (v6)
      {
        (*(*v33 + 16))(v33);
        v5 = *a2;
        v6 = a2[1];
LABEL_61:
        *a2 = 0;
        a2[1] = 0;
        v34 = a2[3];
        if (v34 && v6)
        {
          (*(*v34 + 16))(v34, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_63:
        v35 = *a2;
        v36 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v36)
          {
            return (*(*result + 16))(result, v35);
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
    goto LABEL_61;
  }

  a2[2] = (v4 + 8);
  if (!v4)
  {
    goto LABEL_61;
  }

  v8 = *v4;
  v47 = 0;
  v48 = 0;
  if (v8 >= 0x3333)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::ApplePayLineItem>(v38, a2);
      v19 = v46;
      if (v46)
      {
        if (HIDWORD(v48) == v48)
        {
          WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplePayLineItem>(&v47, v38);
        }

        else
        {
          v20 = v47 + 80 * HIDWORD(v48);
          *v20 = v38[0];
          v21 = v39;
          v39 = 0;
          *(v20 + 8) = v21;
          v22 = v40;
          v40 = 0;
          *(v20 + 16) = v22;
          v23 = v41;
          v24 = v43;
          *(v20 + 40) = v42;
          *(v20 + 56) = v24;
          *(v20 + 24) = v23;
          v25 = v44;
          v44 = 0;
          *(v20 + 64) = v25;
          *(v20 + 72) = v45;
          ++HIDWORD(v48);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v46 == 1)
      {
        v26 = v44;
        v44 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v5);
        }

        v27 = v40;
        v40 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v5);
        }

        v28 = v39;
        v39 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v5);
        }
      }

      if ((v19 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        v29 = HIDWORD(v48);
        if (v48 <= HIDWORD(v48))
        {
          goto LABEL_55;
        }

        result = v47;
        if (HIDWORD(v48))
        {
          v37 = v47;
          if (HIDWORD(v48) >= 0x3333334)
          {
            __break(0xC471u);
            return result;
          }

          v31 = WTF::fastMalloc((80 * HIDWORD(v48)));
          result = v37;
          LODWORD(v48) = 80 * v29 / 0x50;
          v47 = v31;
          if (v31 != v37)
          {
            WTF::VectorMover<false,WebCore::ApplePayLineItem>::move(v37, (v37 + 80 * v29), v31);
            result = v37;
          }
        }

        if (result)
        {
          if (v47 == result)
          {
            v47 = 0;
            LODWORD(v48) = 0;
          }

          WTF::fastFree(result, v5);
        }

        goto LABEL_55;
      }
    }
  }

  else
  {
    if (v8)
    {
      LODWORD(v48) = 80 * v8 / 0x50u;
      v47 = WTF::fastMalloc((80 * v8));
      do
      {
        IPC::Decoder::decode<WebCore::ApplePayLineItem>(v38, a2);
        v9 = v46;
        if (v46)
        {
          if (HIDWORD(v48) == v48)
          {
            WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplePayLineItem>(&v47, v38);
          }

          else
          {
            v10 = v47 + 80 * HIDWORD(v48);
            *v10 = v38[0];
            v11 = v39;
            v39 = 0;
            *(v10 + 8) = v11;
            v12 = v40;
            v40 = 0;
            *(v10 + 16) = v12;
            v13 = v41;
            v14 = v43;
            *(v10 + 40) = v42;
            *(v10 + 56) = v14;
            *(v10 + 24) = v13;
            v15 = v44;
            v44 = 0;
            *(v10 + 64) = v15;
            *(v10 + 72) = v45;
            ++HIDWORD(v48);
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 16) = 0;
        }

        if (v46 != 1)
        {
          goto LABEL_24;
        }

        v16 = v44;
        v44 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v5);
        }

        v17 = v40;
        v40 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v5);
        }

        v18 = v39;
        v39 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v5);
          if ((v9 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        else
        {
LABEL_24:
          if ((v9 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        --v8;
      }

      while (v8);
    }

LABEL_55:
    *a1 = v47;
    v32 = v48;
    v47 = 0;
    v48 = 0;
    *(a1 + 8) = v32;
    *(a1 + 16) = 1;
  }

LABEL_56:
  result = WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v47, v5);
  if ((*(a1 + 16) & 1) == 0)
  {
    goto LABEL_63;
  }

  return result;
}

void sub_19D6D1D60(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18, uint64_t a19, char a20)
{
  if (*(v20 + 16) == 1)
  {
    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ApplePayLineItem>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v45 = *(a2 + 3);
    if (v45)
    {
      if (v6)
      {
        (*(*v45 + 16))(v45);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_63;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
  }

  else
  {
    *(a2 + 2) = v4 + 1;
    if (v4)
    {
      v7 = *v4;
      if (v7 < 2)
      {
        v8 = 0;
        v9 = v7 != 0;
        goto LABEL_5;
      }

      goto LABEL_66;
    }
  }

LABEL_63:
  *a2 = 0;
  *(a2 + 1) = 0;
  v46 = *(a2 + 3);
  if (v46)
  {
    if (v6)
    {
      (*(*v46 + 16))(v46, v5);
      v5 = *a2;
      v6 = *(a2 + 1);
      goto LABEL_66;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_66:
  *a2 = 0;
  *(a2 + 1) = 0;
  v47 = *(a2 + 3);
  if (!v47 || !v6)
  {
    v9 = 0;
LABEL_68:
    v8 = 1;
    goto LABEL_5;
  }

  (*(*v47 + 16))(v47, v5);
  v9 = 0;
  v63 = *(a2 + 3);
  v64 = *a2;
  v65 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  if (!v63)
  {
    goto LABEL_68;
  }

  v8 = 1;
  if (v65)
  {
    (*(*v63 + 16))(v63, v64);
    v9 = 0;
  }

LABEL_5:
  IPC::Decoder::decode<WTF::String>(a2, &v74);
  IPC::Decoder::decode<WTF::String>(a2, &v72);
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *a2;
  if (v10 <= &v11[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v48 = *(a2 + 3);
    if (v48)
    {
      if (v10)
      {
        (*(*v48 + 16))(v48);
        v10 = *(a2 + 1);
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_71:
    *a2 = 0;
    *(a2 + 1) = 0;
    v49 = *(a2 + 3);
    if (v49)
    {
      if (v10)
      {
        (*(*v49 + 16))(v49);
        v12 = *a2;
        v10 = *(a2 + 1);
        goto LABEL_74;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
    goto LABEL_74;
  }

  *(a2 + 2) = v11 + 1;
  if (!v11)
  {
    goto LABEL_71;
  }

  v13 = *v11;
  if (v13 < 4)
  {
    v14 = v13 | 0x100;
    goto LABEL_9;
  }

LABEL_74:
  *a2 = 0;
  *(a2 + 1) = 0;
  v50 = *(a2 + 3);
  if (v50 && v10)
  {
    (*(*v50 + 16))(v50, v12);
  }

  v14 = 0;
LABEL_9:
  v15 = IPC::Decoder::decode<WTF::Seconds>(a2);
  v17 = v16;
  v18 = *(a2 + 1);
  v19 = *(a2 + 2);
  v20 = *a2;
  if (v18 <= &v19[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v51 = *(a2 + 3);
    if (v51)
    {
      if (v18)
      {
        (*(*v51 + 16))(v51);
        v18 = *(a2 + 1);
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_80:
    *a2 = 0;
    *(a2 + 1) = 0;
    v52 = *(a2 + 3);
    if (v52)
    {
      if (v18)
      {
        (*(*v52 + 16))(v52);
        v20 = *a2;
        v18 = *(a2 + 1);
        goto LABEL_83;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = 0;
    goto LABEL_83;
  }

  *(a2 + 2) = v19 + 1;
  if (!v19)
  {
    goto LABEL_80;
  }

  v21 = *v19;
  if (v21 < 5)
  {
    v22 = v21 | 0x100;
    goto LABEL_13;
  }

LABEL_83:
  *a2 = 0;
  *(a2 + 1) = 0;
  v53 = *(a2 + 3);
  if (!v53)
  {
    v18 = 0;
LABEL_85:
    v20 = 0;
    v22 = 0;
    goto LABEL_13;
  }

  if (!v18)
  {
    goto LABEL_85;
  }

  (*(*v53 + 16))(v53, v20);
  v22 = 0;
  v20 = *a2;
  v18 = *(a2 + 1);
LABEL_13:
  v23 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v18 < v23 - v20 || v18 - (v23 - v20) <= 3)
  {
    goto LABEL_55;
  }

  *(a2 + 2) = v23 + 4;
  if (!v23)
  {
    goto LABEL_58;
  }

  for (i = *v23 | 0x100000000; ; i = 0)
  {
    v25 = IPC::Decoder::decode<WTF::Seconds>(a2);
    v69 = v26;
    v27 = v25;
    v67 = IPC::Decoder::decode<WTF::Seconds>(a2);
    v68 = v28;
    result = IPC::Decoder::decode<WTF::String>(a2, &v70);
    v18 = *(a2 + 1);
    v30 = *(a2 + 2);
    v31 = *a2;
    v66 = v27;
    if (v18 <= &v30[-*a2])
    {
      break;
    }

    v32 = v30 + 1;
    *(a2 + 2) = v30 + 1;
    if (!v30)
    {
      v34 = v15;
      v15 = v8;
      goto LABEL_91;
    }

    if (*v30 >= 2u)
    {
      v34 = v15;
      v15 = v8;
      goto LABEL_95;
    }

    if (*v30)
    {
      if (v18 <= v32 - v31)
      {
        v34 = v15;
        v57 = 0;
        v58 = 0;
        *a2 = 0;
        *(a2 + 1) = 0;
        v59 = *(a2 + 3);
        if (v59)
        {
          (*(*v59 + 16))(v59);
          v58 = *a2;
          v57 = *(a2 + 1);
        }

        goto LABEL_99;
      }

      *(a2 + 2) = v30 + 2;
      if (v30 == -1)
      {
        v34 = v15;
        v57 = v18;
        v58 = v31;
LABEL_99:
        *a2 = 0;
        *(a2 + 1) = 0;
        v60 = *(a2 + 3);
        if (v60 && v57)
        {
          (*(*v60 + 16))(v60, v58, v57);
          v31 = *a2;
          v18 = *(a2 + 1);
        }

        else
        {
          v18 = 0;
          v31 = 0;
        }

LABEL_101:
        v15 = v8;
        *a2 = 0;
        *(a2 + 1) = 0;
        v61 = *(a2 + 3);
        if (v61 && v18)
        {
          (*(*v61 + 16))(v61, v31);
        }

        v8 = 256;
        goto LABEL_103;
      }

      v33 = *v32;
      v34 = v15;
      if (v33 >= 2)
      {
        goto LABEL_101;
      }

      v15 = v8;
      v35 = 0x10000;
      v8 = 256;
      if (!v31)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v34 = v15;
      v15 = v8;
      v8 = 0;
      LOWORD(v33) = 0;
      v35 = 0x10000;
      if (!v31)
      {
        goto LABEL_104;
      }
    }

LABEL_27:
    if (!v15 && (v75 & 1) != 0)
    {
      v36 = v74;
      v74 = 0;
      if (v73)
      {
        v37 = v72;
        v72 = 0;
        if (v14 > 0xFF && (v17 & 1) != 0 && v22 > 0xFF && (i & 0x100000000) != 0 && (v69 & 1) != 0 && (v68 & 1) != 0 && (v71 & 1) != 0)
        {
          v38 = v35 | v8;
          v39 = v70;
          v70 = 0;
          if (HIWORD(v38))
          {
            *a1 = v9;
            *(a1 + 8) = v36;
            *(a1 + 16) = v37;
            *(a1 + 24) = v14;
            *(a1 + 32) = v34;
            *(a1 + 40) = v22;
            *(a1 + 44) = i;
            *(a1 + 48) = v66;
            *(a1 + 56) = v67;
            *(a1 + 64) = v39;
            *(a1 + 72) = v33 | v8;
            v40 = 1;
            *(a1 + 80) = 1;
            goto LABEL_39;
          }
        }
      }
    }

    __break(1u);
LABEL_55:
    *a2 = 0;
    *(a2 + 1) = 0;
    v43 = *(a2 + 3);
    if (v43)
    {
      if (v18)
      {
        (*(*v43 + 16))(v43);
        v20 = *a2;
        v18 = *(a2 + 1);
        goto LABEL_58;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = 0;
LABEL_58:
    *a2 = 0;
    *(a2 + 1) = 0;
    v44 = *(a2 + 3);
    if (v44 && v18)
    {
      (*(*v44 + 16))(v44, v20);
    }
  }

  v34 = v15;
  v15 = v8;
  *a2 = 0;
  *(a2 + 1) = 0;
  v54 = *(a2 + 3);
  if (!v54)
  {
    v18 = 0;
LABEL_90:
    v31 = 0;
    goto LABEL_91;
  }

  if (!v18)
  {
    goto LABEL_90;
  }

  (*(*v54 + 16))(v54);
  v31 = *a2;
  v18 = *(a2 + 1);
LABEL_91:
  *a2 = 0;
  *(a2 + 1) = 0;
  v55 = *(a2 + 3);
  if (!v55)
  {
    v18 = 0;
LABEL_93:
    v31 = 0;
    goto LABEL_95;
  }

  if (!v18)
  {
    goto LABEL_93;
  }

  (*(*v55 + 16))(v55, v31);
  v31 = *a2;
  v18 = *(a2 + 1);
LABEL_95:
  *a2 = 0;
  *(a2 + 1) = 0;
  v56 = *(a2 + 3);
  if (v56 && v18)
  {
    (*(*v56 + 16))(v56, v31);
  }

  v8 = 0;
LABEL_103:
  v31 = *a2;
  v62 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v62)
    {
      result = (*(*result + 16))(result, v31);
      LOWORD(v33) = 0;
      v35 = 0;
      v31 = *a2;
      if (*a2)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_104:
  *a1 = 0;
  *(a1 + 80) = 0;
  if (v71)
  {
    result = v70;
    v70 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v31);
      }
    }
  }

  v40 = 0;
LABEL_39:
  if (v73 == 1)
  {
    result = v72;
    v72 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v31);
      }
    }
  }

  if (v75 == 1 && (result = v74, v74 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v31);
    if ((v40 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v40)
    {
      return result;
    }

LABEL_49:
    v41 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v41)
    {
      v42 = *(*result + 16);

      return v42();
    }
  }

  return result;
}

void sub_19D6D26E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, char a16, WTF::StringImpl *a17, char a18)
{
  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<std::optional<WebCore::ApplePayRecurringPaymentRequest>>(uint64_t a1, IPC::Decoder *a2)
{
  v8 = *(a2 + 2);
  v9 = *a2;
  v10 = *(a2 + 1);
  if (v10 <= v8 - v9)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19)
    {
      if (v10)
      {
        (*(*v19 + 16))(v19);
        v9 = *a2;
        v10 = *(a2 + 1);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
    }

    v9 = 0;
LABEL_17:
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20)
    {
      if (v10)
      {
        (*(*v20 + 16))(v20, v9);
        v9 = *a2;
        v10 = *(a2 + 1);
        goto LABEL_20;
      }
    }

    else
    {
      v10 = 0;
    }

    v9 = 0;
LABEL_20:
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (v21 && v10)
    {
      (*(*v21 + 16))(v21, v9);
    }

LABEL_85:
    *a1 = 0;
    *(a1 + 208) = 0;
    goto LABEL_86;
  }

  *(a2 + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_17;
  }

  v11 = *v8;
  if (v11 >= 2)
  {
    goto LABEL_20;
  }

  if (!v11)
  {
    LOBYTE(v59) = 0;
    v77 = 0;
    std::__optional_move_base<WebCore::ApplePayRecurringPaymentRequest,false>::__optional_move_base[abi:sn200100](a1, &v59);
    *(a1 + 208) = 1;
    if (v77 == 1)
    {
LABEL_84:
      WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(&v59, v18);
    }

LABEL_86:
    if (*(a1 + 208))
    {
      return;
    }

    goto LABEL_93;
  }

  IPC::Decoder::decode<WTF::String>(a2, &v113);
  IPC::Decoder::decode<WebCore::ApplePayLineItem>(v105, a2);
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *a2;
  if (v12 <= &v13[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      if (v12)
      {
        (*(*v22 + 16))(v22);
        v12 = *(a2 + 1);
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_25;
  }

  *(a2 + 2) = v13 + 1;
  if (!v13)
  {
LABEL_25:
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23)
    {
      if (v12)
      {
        (*(*v23 + 16))(v23);
        v14 = *a2;
        v12 = *(a2 + 1);
        goto LABEL_28;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = 0;
LABEL_28:
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    if (v24 && v12)
    {
      (*(*v24 + 16))(v24, v14);
    }

    goto LABEL_29;
  }

  v15 = *v13;
  if (v15 >= 2)
  {
    goto LABEL_28;
  }

  if (!v15)
  {
    v16 = 0;
    v17 = 0;
    v5 = 1;
    goto LABEL_31;
  }

  IPC::Decoder::decode<WebCore::ApplePayLineItem>(&v78, a2);
  if (v84 == 1)
  {
    v5 = 0;
    v16 = 0;
    v17 = v78;
    v4 = v80;
    v58 = v79;
    v102 = *v81;
    v103 = *&v81[16];
    v2 = v82;
    v104 = *&v81[32];
    v3 = v83;
    goto LABEL_31;
  }

LABEL_29:
  v25 = *a2;
  v26 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v27 = *(a2 + 3);
  if (v27 && v26)
  {
    (*(*v27 + 16))(v27, v25);
  }

  v17 = 0;
  v16 = 1;
LABEL_31:
  IPC::Decoder::decode<WTF::String>(a2, &v100);
  IPC::Decoder::decode<WTF::String>(a2, &v98);
  IPC::Decoder::decode<WTF::String>(a2, &v96);
  v28 = *a2;
  if (!*a2)
  {
    LOBYTE(v59) = 0;
    v77 = 0;
    v32 = v58;
    goto LABEL_44;
  }

  if (v114)
  {
    v29 = v113;
    v113 = 0;
    if (v112)
    {
      LOBYTE(v79) = v105[0];
      v30 = v106;
      v106 = 0uLL;
      *&v81[8] = v107;
      *&v81[24] = v108;
      v31 = v110;
      v82 = v109;
      v110 = 0;
      v84 = v111;
      if (!v16)
      {
        v85 = 0;
        v92 = 0;
        if (v5)
        {
          v17 = 0;
          v32 = v58;
        }

        else
        {
          v85 = v17;
          *&v86 = v58;
          *(&v86 + 1) = v4;
          v87 = v102;
          v88 = v103;
          v89 = v104;
          v90 = v2;
          v91 = v3;
          v92 = 1;
          v2 = 0;
          v4 = 0;
          v32 = 0;
        }

        if (v101)
        {
          v33 = v100;
          v100 = 0;
          if (v99)
          {
            v34 = v98;
            v98 = 0;
            if (v97)
            {
              v35 = v96;
              v96 = 0;
              v59 = v29;
              v60 = v105[0];
              v78 = 0;
              v80 = 0;
              *v81 = 0;
              v61 = v30;
              v62 = v107;
              v63 = v108;
              v83 = 0;
              v64 = v109;
              v65 = v31;
              v66 = v111;
              v67 = 0;
              v74 = 0;
              if ((v5 & 1) == 0)
              {
                v67 = v17;
                v36 = v86;
                v86 = 0uLL;
                v68 = v36;
                v69 = v87;
                v70 = v88;
                v37 = v90;
                v90 = 0;
                v71 = v89;
                v72 = v37;
                v73 = v91;
                v74 = 1;
              }

              v93 = 0;
              v94 = 0;
              *&v75 = v33;
              *(&v75 + 1) = v34;
              v95 = 0;
              v76 = v35;
              v77 = 1;
              WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(&v78, v18);
LABEL_44:
              if (v97 == 1)
              {
                v38 = v96;
                v96 = 0;
                if (v38)
                {
                  if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v38, v18);
                  }
                }
              }

              if (v99 == 1)
              {
                v39 = v98;
                v98 = 0;
                if (v39)
                {
                  if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v39, v18);
                  }
                }
              }

              if (v101 == 1)
              {
                v40 = v100;
                v100 = 0;
                if (v40)
                {
                  if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v40, v18);
                  }
                }
              }

              if ((v5 | v16))
              {
LABEL_66:
                if (v112 == 1)
                {
                  v41 = v110;
                  if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v41, v18);
                  }

                  v42 = *(&v106 + 1);
                  if (*(&v106 + 1) && atomic_fetch_add_explicit(*(&v106 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v42, v18);
                  }

                  v43 = v106;
                  if (v106 && atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v43, v18);
                  }
                }

                if (v114 == 1 && (v44 = v113, v113 = 0, v44) && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v44, v18);
                  if (v28)
                  {
                    goto LABEL_80;
                  }
                }

                else if (v28)
                {
                  goto LABEL_80;
                }

                v18 = *a2;
                v53 = *(a2 + 1);
                *a2 = 0;
                *(a2 + 1) = 0;
                v54 = *(a2 + 3);
                if (v54 && v53)
                {
                  (*(*v54 + 16))(v54, v18);
                }

LABEL_80:
                if (v77 == 1)
                {
                  *a1 = v59;
                  *(a1 + 8) = v60;
                  v45 = v61;
                  v46 = v62;
                  v59 = 0;
                  v61 = 0uLL;
                  *(a1 + 16) = v45;
                  *(a1 + 32) = v46;
                  *(a1 + 48) = v63;
                  v47 = v65;
                  v65 = 0;
                  *(a1 + 64) = v64;
                  *(a1 + 72) = v47;
                  *(a1 + 80) = v66;
                  *(a1 + 88) = 0;
                  *(a1 + 168) = 0;
                  if (v74 == 1)
                  {
                    *(a1 + 88) = v67;
                    v48 = v68;
                    v49 = v69;
                    v68 = 0uLL;
                    *(a1 + 96) = v48;
                    *(a1 + 112) = v49;
                    *(a1 + 128) = v70;
                    v50 = v72;
                    v72 = 0;
                    *(a1 + 144) = v71;
                    *(a1 + 152) = v50;
                    *(a1 + 160) = v73;
                    *(a1 + 168) = 1;
                  }

                  v51 = v75;
                  v75 = 0uLL;
                  *(a1 + 176) = v51;
                  v52 = v76;
                  v76 = 0;
                  *(a1 + 192) = v52;
                  *(a1 + 200) = 1;
                  *(a1 + 208) = 1;
                  goto LABEL_84;
                }

                goto LABEL_85;
              }

              if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v2, v18);
                if (v4)
                {
LABEL_60:
                  if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v4, v18);
                  }
                }
              }

              else if (v4)
              {
                goto LABEL_60;
              }

              if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v32, v18);
              }

              goto LABEL_66;
            }
          }
        }
      }
    }
  }

  __break(1u);
LABEL_93:
  v55 = *a2;
  v56 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v57 = *(a2 + 3);
  if (v57)
  {
    if (v56)
    {
      (*(*v57 + 16))(v57, v55);
    }
  }
}

void sub_19D6D2F4C(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (*(v2 + 208) == 1 && *(v2 + 200) == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(v2, a2);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest>>(uint64_t a1, IPC::Decoder *a2)
{
  v12 = *(a2 + 2);
  v13 = *a2;
  v14 = *(a2 + 1);
  if (v14 <= &v12[-v13])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      if (v14)
      {
        (*(*v27 + 16))(v27);
        v13 = *a2;
        v14 = *(a2 + 1);
        goto LABEL_47;
      }
    }

    else
    {
      v14 = 0;
    }

    v13 = 0;
    goto LABEL_47;
  }

  *(a2 + 2) = v12 + 1;
  if (v12)
  {
    v15 = *v12;
    if (v15 >= 2)
    {
      goto LABEL_53;
    }

    if (!v15)
    {
      *a1 = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 1;
      return;
    }

    IPC::Decoder::decode<WTF::String>(a2, &v70);
    IPC::Decoder::decode<WebCore::ApplePayLineItem>(v61, a2);
    IPC::Decoder::decode<WTF::String>(a2, &v59);
    IPC::Decoder::decode<WTF::String>(a2, &v57);
    IPC::Decoder::decode<WTF::String>(a2, &v55);
    v33 = *a2;
    if (*a2)
    {
      if (v71)
      {
        v17 = v70;
        v70 = 0;
        if (v69)
        {
          v8 = v61[0];
          v46 = v61[0];
          v6 = v62;
          v4 = v63;
          v62 = 0;
          v63 = 0;
          v48 = v64;
          v49 = v65;
          v3 = v67;
          v50 = v66;
          v67 = 0;
          v5 = v68;
          v52 = v68;
          if (v60)
          {
            v7 = v59;
            v59 = 0;
            if (v58)
            {
              v9 = v57;
              v57 = 0;
              if (v56)
              {
                v2 = v55;
                v54 = 0;
                v55 = 0;
                v34 = v17;
                v35 = v61[0];
                v47 = 0u;
                *&v36 = v6;
                *(&v36 + 1) = v4;
                v37 = v64;
                v38 = v65;
                v45 = 0;
                v51 = 0;
                v39 = v66;
                v40 = v3;
                v41 = v68;
                v53 = 0u;
                *&v42 = v7;
                *(&v42 + 1) = v9;
                v43 = v2;
                v44 = 1;
                WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(&v45, v16);
LABEL_12:
                if (v56 == 1)
                {
                  v18 = v55;
                  v55 = 0;
                  if (v18)
                  {
                    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v18, v16);
                    }
                  }
                }

                if (v58 == 1)
                {
                  v19 = v57;
                  v57 = 0;
                  if (v19)
                  {
                    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v19, v16);
                    }
                  }
                }

                if (v60 == 1)
                {
                  v20 = v59;
                  v59 = 0;
                  if (v20)
                  {
                    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v20, v16);
                    }
                  }
                }

                if (v69 == 1)
                {
                  v21 = v67;
                  if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v21, v16);
                  }

                  v22 = v63;
                  if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v22, v16);
                  }

                  v23 = v62;
                  if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v23, v16);
                  }
                }

                if (v71 == 1)
                {
                  v24 = v70;
                  v70 = 0;
                  if (v24)
                  {
                    if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v24, v16);
                    }
                  }
                }

                if (v33)
                {
                  v25 = v34;
                  v34 = 0;
                  *a1 = v25;
                  *(a1 + 8) = v8;
                  v36 = 0u;
                  *(a1 + 16) = v6;
                  *(a1 + 24) = v4;
                  v26 = v38;
                  *(a1 + 32) = v37;
                  *(a1 + 48) = v26;
                  v40 = 0;
                  *(a1 + 64) = v39;
                  *(a1 + 72) = v3;
                  *(a1 + 80) = v5;
                  v42 = 0u;
                  *(a1 + 88) = v7;
                  *(a1 + 96) = v9;
                  v43 = 0;
                  *(a1 + 104) = v2;
                  *(a1 + 112) = 1;
                  WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(&v34, v16);
                  *(a1 + 120) = 1;
                  return;
                }

                goto LABEL_52;
              }
            }
          }
        }
      }

      __break(1u);
    }

    LOBYTE(v34) = 0;
    v44 = 0;
    goto LABEL_12;
  }

LABEL_47:
  *a2 = 0;
  *(a2 + 1) = 0;
  v28 = *(a2 + 3);
  if (!v28)
  {
    v14 = 0;
LABEL_49:
    v13 = 0;
    goto LABEL_53;
  }

  if (!v14)
  {
    goto LABEL_49;
  }

  (*(*v28 + 16))(v28, v13);
LABEL_52:
  v13 = *a2;
  v14 = *(a2 + 1);
LABEL_53:
  *a2 = 0;
  *(a2 + 1) = 0;
  v29 = *(a2 + 3);
  if (v29 && v14)
  {
    (*(*v29 + 16))(v29, v13);
  }

  *a1 = 0;
  *(a1 + 120) = 0;
  v30 = *a2;
  v31 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v32 = *(a2 + 3);
  if (v32)
  {
    if (v31)
    {
      (*(*v32 + 16))(v32, v30);
    }
  }
}

void sub_19D6D351C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 - 216))
  {
    v4 = *(v2 - 224);
    *(v2 - 224) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (*(v2 - 200) == 1)
  {
    v5 = *(v2 - 208);
    *(v2 - 208) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  if (*(v2 - 112) == 1)
  {
    v6 = *(v2 - 128);
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(v2 - 176);
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *(v2 - 184);
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  if (*(v2 - 96) == 1)
  {
    v9 = *(v2 - 104);
    *(v2 - 104) = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v49 = *(a2 + 3);
    if (v49)
    {
      if (v6)
      {
        (*(*v49 + 16))(v49);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_90;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_90:
    *a2 = 0;
    *(a2 + 1) = 0;
    v50 = *(a2 + 3);
    if (v50)
    {
      if (v6)
      {
        (*(*v50 + 16))(v50, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_93;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_93:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v6)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_83;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_90;
  }

  if (*v4 >= 2u)
  {
    goto LABEL_93;
  }

  if (!*v4)
  {
    LOBYTE(v54) = 0;
    LOBYTE(v56) = 0;
    result = std::__optional_move_base<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1, &v54);
    a1[24] = 1;
    if (v56 == 1)
    {
      v26 = &v54;
LABEL_72:
      result = WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v25);
    }

LABEL_73:
    if ((a1[24] & 1) == 0)
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

  v7 = v4 & 0xFFFFFFFFFFFFFFF8;
  v8 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v6 < v8 - v5 || v6 - (v8 - v5) <= 7)
  {
    v43 = 0;
    v44 = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    v45 = *(a2 + 3);
    if (v45)
    {
      (*(*v45 + 16))(v45);
      v44 = *a2;
      v43 = *(a2 + 1);
    }

    goto LABEL_80;
  }

  *(a2 + 2) = v7 + 16;
  if (!v8)
  {
    v43 = v6;
    v44 = v5;
LABEL_80:
    *a2 = 0;
    *(a2 + 1) = 0;
    v46 = *(a2 + 3);
    if (v46 && v43)
    {
      (*(*v46 + 16))(v46, v44, v43);
    }

    LOBYTE(v52[0]) = 0;
    v53 = 0;
LABEL_82:
    v47 = *a2;
    v48 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result || !v48 || (result = (*(*result + 16))(result, v47), (v53 & 1) == 0))
    {
LABEL_83:
      *a1 = 0;
      a1[24] = 0;
      goto LABEL_73;
    }

LABEL_70:
    result = std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, v52);
    a1[24] = 1;
    if (v53)
    {
      v26 = v52;
      goto LABEL_72;
    }

    goto LABEL_73;
  }

  v10 = *v8;
  v60 = 0;
  v61 = 0;
  if (v10 < 0x6666)
  {
    if (v10)
    {
      LODWORD(v61) = 40 * v10 / 0x28u;
      v60 = WTF::fastMalloc((40 * v10));
      while (1)
      {
        IPC::Decoder::decode<WebCore::ApplePayPaymentTokenContext>(&v54, a2);
        if ((v59 & 1) == 0)
        {
          goto LABEL_68;
        }

        if (HIDWORD(v61) != v61)
        {
          break;
        }

        WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplePayPaymentTokenContext>(&v60, &v54);
        if (v59)
        {
          goto LABEL_19;
        }

LABEL_34:
        if (!--v10)
        {
          goto LABEL_35;
        }
      }

      v12 = HIDWORD(v61) + 1;
      v13 = (v60 + 40 * HIDWORD(v61));
      v14 = v54;
      v54 = 0;
      *v13 = v14;
      v15 = v55;
      v55 = 0;
      v13[1] = v15;
      v16 = v56;
      v56 = 0;
      v13[2] = v16;
      v17 = v57;
      v57 = 0;
      v13[3] = v17;
      v18 = v58;
      v58 = 0;
      v13[4] = v18;
      HIDWORD(v61) = v12;
LABEL_19:
      v19 = v58;
      v58 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v11);
      }

      v20 = v57;
      v57 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v11);
      }

      v21 = v56;
      v56 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v11);
      }

      v22 = v55;
      v55 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v11);
      }

      v23 = v54;
      v54 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v11);
      }

      goto LABEL_34;
    }

LABEL_35:
    std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v52, &v60);
LABEL_69:
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v60, v11);
    if (v53)
    {
      goto LABEL_70;
    }

    goto LABEL_82;
  }

  do
  {
    IPC::Decoder::decode<WebCore::ApplePayPaymentTokenContext>(&v54, a2);
    if ((v59 & 1) == 0)
    {
LABEL_68:
      LOBYTE(v52[0]) = 0;
      v53 = 0;
      goto LABEL_69;
    }

    if (HIDWORD(v61) == v61)
    {
      result = WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplePayPaymentTokenContext>(&v60, &v54);
      if ((v59 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v27 = HIDWORD(v61) + 1;
      v28 = (v60 + 40 * HIDWORD(v61));
      v29 = v54;
      v54 = 0;
      *v28 = v29;
      v30 = v55;
      v55 = 0;
      v28[1] = v30;
      v31 = v56;
      v56 = 0;
      v28[2] = v31;
      v32 = v57;
      v57 = 0;
      v28[3] = v32;
      v33 = v58;
      v58 = 0;
      v28[4] = v33;
      HIDWORD(v61) = v27;
    }

    v34 = v58;
    v58 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v11);
    }

    v35 = v57;
    v57 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v11);
    }

    v36 = v56;
    v56 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v11);
    }

    v37 = v55;
    v55 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v11);
    }

    result = v54;
    v54 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v11);
    }

LABEL_58:
    --v10;
  }

  while (v10);
  v38 = HIDWORD(v61);
  if (v61 <= HIDWORD(v61))
  {
    goto LABEL_35;
  }

  v39 = v60;
  v51 = v60;
  if (!HIDWORD(v61))
  {
LABEL_64:
    if (v39)
    {
      if (v60 == v39)
      {
        v60 = 0;
        LODWORD(v61) = 0;
      }

      WTF::fastFree(v51, v11);
    }

    goto LABEL_35;
  }

  if (HIDWORD(v61) < 0x6666667)
  {
    v40 = WTF::fastMalloc((40 * HIDWORD(v61)));
    v39 = v51;
    LODWORD(v61) = 40 * v38 / 0x28;
    v60 = v40;
    if (v40 != v51)
    {
      WTF::VectorMover<false,WebCore::ApplePayPaymentTokenContext>::move(v51, (v51 + 40 * v38), v40);
      v39 = v51;
    }

    goto LABEL_64;
  }

  __break(0xC471u);
  return result;
}

void sub_19D6D3C40(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, WTF::StringImpl *a17, char a18)
{
  if (a12 == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<std::optional<WebCore::ApplePayDeferredPaymentRequest>>(uint64_t a1, IPC::Decoder *a2)
{
  v10 = *(a2 + 2);
  v11 = *a2;
  v12 = *(a2 + 1);
  if (v12 <= &v10[-v11])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31)
    {
      if (v12)
      {
        (*(*v31 + 16))(v31);
        v11 = *a2;
        v12 = *(a2 + 1);
        goto LABEL_53;
      }
    }

    else
    {
      v12 = 0;
    }

    v11 = 0;
    goto LABEL_53;
  }

  *(a2 + 2) = v10 + 1;
  if (v10)
  {
    v13 = *v10;
    if (v13 >= 2)
    {
      goto LABEL_59;
    }

    if (!v13)
    {
      *a1 = 0;
      *(a1 + 128) = 0;
      *(a1 + 136) = 1;
      return;
    }

    IPC::Decoder::decode<WTF::String>(a2, &v80);
    IPC::Decoder::decode<WebCore::ApplePayLineItem>(v71, a2);
    v14 = IPC::Decoder::decode<WTF::Seconds>(a2);
    v16 = v15;
    IPC::Decoder::decode<WTF::String>(a2, &v69);
    IPC::Decoder::decode<WTF::String>(a2, &v67);
    IPC::Decoder::decode<WTF::String>(a2, &v65);
    IPC::Decoder::decode<WTF::String>(a2, &v63);
    v39 = *a2;
    if (*a2)
    {
      if (v81)
      {
        v18 = v80;
        v80 = 0;
        if (v79)
        {
          v7 = v71[0];
          v53 = v71[0];
          v5 = v72;
          v19 = v73;
          v72 = 0;
          v73 = 0;
          v55 = v74;
          v56 = v75;
          v20 = v77;
          v57 = v76;
          v77 = 0;
          v6 = v78;
          v59 = v78;
          if (v16)
          {
            v60 = v14;
            if (v70)
            {
              v16 = v69;
              v69 = 0;
              if (v68)
              {
                v2 = v67;
                v67 = 0;
                if (v66)
                {
                  v3 = v65;
                  v65 = 0;
                  if (v64)
                  {
                    v4 = v63;
                    v63 = 0;
                    v40 = v18;
                    v41 = v71[0];
                    v54 = 0u;
                    *&v42 = v5;
                    *(&v42 + 1) = v19;
                    v37 = v20;
                    v38 = v19;
                    v43 = v74;
                    v44 = v75;
                    v52 = 0;
                    v58 = 0;
                    v45 = v76;
                    v46 = v20;
                    v47 = v78;
                    v48 = v14;
                    *&v49 = v16;
                    *(&v49 + 1) = v2;
                    *&v50 = v3;
                    v61 = 0u;
                    v62 = 0u;
                    *(&v50 + 1) = v4;
                    v51 = 1;
                    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(&v52, v17);
LABEL_14:
                    if (v64 == 1)
                    {
                      v21 = v63;
                      v63 = 0;
                      if (v21)
                      {
                        if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v21, v17);
                        }
                      }
                    }

                    if (v66 == 1)
                    {
                      v22 = v65;
                      v65 = 0;
                      if (v22)
                      {
                        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v22, v17);
                        }
                      }
                    }

                    if (v68 == 1)
                    {
                      v23 = v67;
                      v67 = 0;
                      if (v23)
                      {
                        if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v23, v17);
                        }
                      }
                    }

                    if (v70 == 1)
                    {
                      v24 = v69;
                      v69 = 0;
                      if (v24)
                      {
                        if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v24, v17);
                        }
                      }
                    }

                    if (v79 == 1)
                    {
                      v25 = v77;
                      if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v25, v17);
                      }

                      v26 = v73;
                      if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v26, v17);
                      }

                      v27 = v72;
                      if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v27, v17);
                      }
                    }

                    if (v81 == 1)
                    {
                      v28 = v80;
                      v80 = 0;
                      if (v28)
                      {
                        if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v28, v17);
                        }
                      }
                    }

                    if (v39)
                    {
                      v29 = v40;
                      v40 = 0;
                      *a1 = v29;
                      *(a1 + 8) = v7;
                      v42 = 0u;
                      *(a1 + 16) = v5;
                      *(a1 + 24) = v38;
                      v30 = v44;
                      *(a1 + 32) = v43;
                      *(a1 + 48) = v30;
                      v46 = 0;
                      *(a1 + 64) = v45;
                      *(a1 + 72) = v37;
                      *(a1 + 80) = v6;
                      *(a1 + 88) = v14;
                      *(a1 + 96) = v16;
                      *(a1 + 104) = v2;
                      *(a1 + 112) = v3;
                      v49 = 0u;
                      v50 = 0u;
                      *(a1 + 120) = v4;
                      *(a1 + 128) = 1;
                      WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(&v40, v17);
                      *(a1 + 136) = 1;
                      return;
                    }

                    goto LABEL_58;
                  }
                }
              }
            }
          }
        }
      }

      __break(1u);
    }

    LOBYTE(v40) = 0;
    v51 = 0;
    goto LABEL_14;
  }

LABEL_53:
  *a2 = 0;
  *(a2 + 1) = 0;
  v32 = *(a2 + 3);
  if (!v32)
  {
    v12 = 0;
LABEL_55:
    v11 = 0;
    goto LABEL_59;
  }

  if (!v12)
  {
    goto LABEL_55;
  }

  (*(*v32 + 16))(v32, v11);
LABEL_58:
  v11 = *a2;
  v12 = *(a2 + 1);
LABEL_59:
  *a2 = 0;
  *(a2 + 1) = 0;
  v33 = *(a2 + 3);
  if (v33 && v12)
  {
    (*(*v33 + 16))(v33, v11);
  }

  *a1 = 0;
  *(a1 + 136) = 0;
  v34 = *a2;
  v35 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v36 = *(a2 + 3);
  if (v36)
  {
    if (v35)
    {
      (*(*v36 + 16))(v36, v34);
    }
  }
}

void sub_19D6D4214(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 - 232))
  {
    v4 = *(v2 - 240);
    *(v2 - 240) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (*(v2 - 216) == 1)
  {
    v5 = *(v2 - 224);
    *(v2 - 224) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  if (*(v2 - 200) == 1)
  {
    v6 = *(v2 - 208);
    *(v2 - 208) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  if (*(v2 - 112) == 1)
  {
    v7 = *(v2 - 128);
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *(v2 - 176);
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    v9 = *(v2 - 184);
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }
  }

  if (*(v2 - 96) == 1)
  {
    v10 = *(v2 - 104);
    *(v2 - 104) = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<std::optional<WebCore::ApplePayDisbursementRequest>>(_BYTE *a1, void *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= v4 - v5)
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
        goto LABEL_89;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_89:
    *a2 = 0;
    a2[1] = 0;
    v37 = a2[3];
    if (v37)
    {
      if (v6)
      {
        (*(*v37 + 16))(v37, v5);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_92;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_92:
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v6)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_61;
  }

  v7 = (v4 + 1);
  a2[2] = v4 + 1;
  if (!v4)
  {
    goto LABEL_89;
  }

  if (*v4 >= 2u)
  {
    goto LABEL_92;
  }

  if (*v4)
  {
    if (v6 <= v7 - v5)
    {
      v38 = 0;
      v39 = 0;
      *a2 = 0;
      a2[1] = 0;
      v40 = a2[3];
      if (v40)
      {
        (*(*v40 + 16))(v40);
        v39 = *a2;
        v38 = a2[1];
      }
    }

    else
    {
      a2[2] = v4 + 2;
      if (v4 != -1)
      {
        if (*v7 < 2u)
        {
          if (!*v7)
          {
            LOBYTE(v51) = 0;
            v53 = 0;
            std::__optional_move_base<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v47, &v51);
            v50 = 1;
            if (v53 != 1)
            {
              goto LABEL_34;
            }

LABEL_32:
            v18 = v51;
            if (v51)
            {
              v51 = 0;
              v52 = 0;
              WTF::fastFree(v18, v5);
            }

LABEL_34:
            if ((v50 & 1) == 0)
            {
              v5 = *a2;
              v23 = a2[1];
              *a2 = 0;
              a2[1] = 0;
              v24 = a2[3];
              if (v24)
              {
                if (v23)
                {
                  (*(*v24 + 16))(v24, v5);
                }
              }
            }

            if (*a2)
            {
              if ((v50 & 1) == 0)
              {
                __break(1u);
LABEL_60:
                v25 = *a2;
                v26 = a2[1];
                *a2 = 0;
                a2[1] = 0;
                result = a2[3];
                if (result)
                {
                  if (v26)
                  {
                    result = (*(*result + 16))(result, v25);
                    if (v46)
                    {
                      goto LABEL_45;
                    }
                  }
                }

LABEL_61:
                *a1 = 0;
                a1[32] = 0;
                goto LABEL_50;
              }

              std::__optional_move_base<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v51, &v47);
              std::__optional_move_base<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v43, &v51);
              v46 = 1;
              if (v53 == 1)
              {
                v19 = v51;
                if (v51)
                {
                  v51 = 0;
                  v52 = 0;
                  WTF::fastFree(v19, v5);
                }
              }
            }

            else
            {
              LOBYTE(v43) = 0;
              v46 = 0;
            }

            if (v50 == 1 && v49 == 1)
            {
              v20 = v47;
              if (v47)
              {
                v47 = 0;
                v48 = 0;
                WTF::fastFree(v20, v5);
              }
            }

            if (v46)
            {
LABEL_45:
              result = std::__optional_move_base<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1, &v43);
              a1[24] = 1;
              a1[32] = 1;
              if ((v46 & 1) != 0 && v45 == 1)
              {
                result = v43;
                if (v43)
                {
                  v43 = 0;
                  v44 = 0;
                  goto LABEL_49;
                }
              }

              goto LABEL_50;
            }

            goto LABEL_60;
          }

          v8 = v7 & 0xFFFFFFFFFFFFFFF8;
          v9 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v6 < v9 - v5 || v6 - (v9 - v5) <= 7)
          {
            v30 = 0;
            v31 = 0;
            *a2 = 0;
            a2[1] = 0;
            v32 = a2[3];
            if (v32)
            {
              (*(*v32 + 16))(v32);
              v31 = *a2;
              v30 = a2[1];
            }
          }

          else
          {
            a2[2] = v8 + 16;
            if (v9)
            {
              v10 = *v9;
              v55 = 0;
              v56 = 0;
              if (v10 >= 0x100000)
              {
                v11 = 0;
                LODWORD(v27) = 0;
                while (1)
                {
                  v28 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a2);
                  v54 = v28;
                  if (v28 < 0x100u)
                  {
                    break;
                  }

                  if (v27 == v56)
                  {
                    v29 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v55, v27 + 1, &v54);
                    LODWORD(v27) = HIDWORD(v56);
                    v11 = v55;
                    *(v55 + HIDWORD(v56)) = *v29;
                  }

                  else
                  {
                    *(v11 + v27) = v28;
                  }

                  v27 = (v27 + 1);
                  HIDWORD(v56) = v27;
                  v10 = (v10 - 1);
                  if (!v10)
                  {
                    if (v56 > v27)
                    {
                      if (v27)
                      {
                        LODWORD(v56) = v27;
                        v55 = WTF::fastRealloc(v11, v27);
                      }

                      else
                      {
                        v55 = 0;
                        LODWORD(v56) = 0;
                        WTF::fastFree(v11, v14);
                      }
                    }

                    goto LABEL_20;
                  }
                }

                LOBYTE(v51) = 0;
                v53 = 0;
                if (v11)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                if (v10)
                {
                  v11 = WTF::fastMalloc(v10);
                  v12 = 0;
                  LODWORD(v56) = v10;
                  v55 = v11;
                  while (1)
                  {
                    v13 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a2);
                    v54 = v13;
                    if (v13 < 0x100u)
                    {
                      break;
                    }

                    if (v12 == v56)
                    {
                      v15 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v55, v12 + 1, &v54);
                      v12 = HIDWORD(v56);
                      v11 = v55;
                      *(v55 + HIDWORD(v56)) = *v15;
                    }

                    else
                    {
                      *(v11 + v12) = v13;
                    }

                    HIDWORD(v56) = ++v12;
                    v10 = (v10 - 1);
                    if (!v10)
                    {
                      goto LABEL_20;
                    }
                  }

                  LOBYTE(v51) = 0;
                  v53 = 0;
                  goto LABEL_29;
                }

LABEL_20:
                std::optional<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v51, &v55);
                v11 = v55;
                if (v55)
                {
LABEL_29:
                  v55 = 0;
                  LODWORD(v56) = 0;
                  WTF::fastFree(v11, v14);
                }
              }

              if (v53)
              {
                goto LABEL_31;
              }

LABEL_81:
              v5 = *a2;
              v34 = a2[1];
              *a2 = 0;
              a2[1] = 0;
              v35 = a2[3];
              if (v35)
              {
                if (v34)
                {
                  (*(*v35 + 16))(v35, v5);
                  if (v53)
                  {
LABEL_31:
                    std::optional<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v47, &v51);
                    v50 = 1;
                    if ((v53 & 1) == 0)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }
                }
              }

LABEL_82:
              LOBYTE(v47) = 0;
              v50 = 0;
              goto LABEL_34;
            }

            v30 = v6;
            v31 = v5;
          }

          *a2 = 0;
          a2[1] = 0;
          v33 = a2[3];
          if (v33 && v30)
          {
            (*(*v33 + 16))(v33, v31, v30);
          }

          LOBYTE(v51) = 0;
          v53 = 0;
          goto LABEL_81;
        }

LABEL_99:
        *a2 = 0;
        a2[1] = 0;
        v42 = a2[3];
        if (v42 && v6)
        {
          (*(*v42 + 16))(v42, v5);
        }

        goto LABEL_82;
      }

      v38 = v6;
      v39 = v5;
    }

    *a2 = 0;
    a2[1] = 0;
    v41 = a2[3];
    if (v41 && v38)
    {
      (*(*v41 + 16))(v41, v39, v38);
      v5 = *a2;
      v6 = a2[1];
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    goto LABEL_99;
  }

  LOBYTE(v47) = 0;
  v50 = 0;
  result = std::__optional_move_base<WebCore::ApplePayDisbursementRequest,false>::__optional_move_base[abi:sn200100](a1, &v47);
  a1[32] = 1;
  if (v50 == 1 && v49 == 1)
  {
    result = v47;
    if (v47)
    {
      v47 = 0;
      v48 = 0;
LABEL_49:
      result = WTF::fastFree(result, v17);
    }
  }

LABEL_50:
  if ((a1[32] & 1) == 0)
  {
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
  }

  return result;
}

void sub_19D6D4A4C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, int a18, int a19, char a20, int a21, __int16 a22, char a23, char a24, WTF *a25, int a26, int a27, char a28)
{
  if (a28 == 1)
  {
    if (a25)
    {
      WTF::fastFree(a25, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::PaymentMethod,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (PAL::PassKitCoreLibrary(1))
  {
    v4 = (*MEMORY[0x1E69E22D0])();
    v14[0] = v4;
    if (v4)
    {
      v5 = v4;
    }

    WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(v11, v14, 1);
    IPC::decodeRequiringAllowedClasses<PKPaymentMethod,PKPaymentMethod*>(a1, &v12);
    if (v11[0])
    {
      WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v11[0], v6);
    }

    v7 = v14[0];
    v14[0] = 0;
    if (v7)
    {
    }

    if (*a1 && (v13 & 1) != 0)
    {
      WebCore::PaymentMethod::PaymentMethod();
      v8 = v11[1];
      *a2 = MEMORY[0x1E69E2E38] + 16;
      *(a2 + 8) = v8;
      if (v8)
      {
        v9 = v8;
      }

      *(a2 + 16) = 1;
      WebCore::PaymentMethod::~PaymentMethod(v11);
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }

    if (v13 == 1)
    {
      v10 = v12;
      v12 = 0;
      if (v10)
      {
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void sub_19D6D4CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, char a12, uint64_t a13)
{
  WebCore::PaymentMethod::~PaymentMethod(&a9);
  if (a12 == 1)
  {
    v14 = a11;
    a11 = 0;
    if (v14)
    {
    }
  }

  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<WebCore::Payment,void>::encode(IPC::Encoder *a1, WebCore::Payment *this)
{
  WebCore::Payment::pkPayment(&v4, this);
  IPC::encodeObjectDirectly<PKPayment>(a1, v4);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_19D6D4D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::Payment,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!PAL::PassKitCoreLibrary(1))
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    return;
  }

  v4 = (*MEMORY[0x1E69E2258])();
  v19[0] = v4;
  if (v4)
  {
    v5 = v4;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v14, v19, 1);
  IPC::decodeObjectDirectlyRequiringAllowedClasses<PKPayment>(a1, &v17);
  v7 = v18;
  if (v18 == 1)
  {
    v8 = v17;
    v15 = v17;
    if (v17)
    {
      v9 = v17;
      v16 = 1;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
    v16 = 0;
  }

  if (v14)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v14, v6);
  }

  v10 = v19[0];
  v19[0] = 0;
  if (v10)
  {
  }

  if (!*a1)
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_19;
  }

  if ((v7 & 1) == 0)
  {
    __break(1u);
  }

  WebCore::Payment::Payment();
  v11 = v18;
  *a2 = MEMORY[0x1E69E2EC0] + 16;
  *(a2 + 8) = v11;
  if (v11)
  {
    v12 = v11;
  }

  *(a2 + 16) = 1;
  WebCore::Payment::~Payment(&v17);
  if (v16)
  {
LABEL_19:
    v13 = v15;
    v15 = 0;
    if (v13)
    {
    }
  }
}

void sub_19D6D4F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a10)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(a10, v17);
  }

  if (a15)
  {
  }

  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<WebCore::PaymentContact,void>::encode(IPC::Encoder *a1, WebCore::PaymentContact *this)
{
  WebCore::PaymentContact::pkContact(&v4, this);
  IPC::encodeObjectDirectly<PKContact>(a1, v4);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_19D6D4FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::PaymentContact,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (PAL::PassKitCoreLibrary(1))
  {
    v4 = (*MEMORY[0x1E69E2250])();
    v14[0] = v4;
    if (v4)
    {
      v5 = v4;
    }

    WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(v11, v14, 1);
    IPC::decodeRequiringAllowedClasses<PKContact,PKContact*>(a1, &v12);
    if (v11[0])
    {
      WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v11[0], v6);
    }

    v7 = v14[0];
    v14[0] = 0;
    if (v7)
    {
    }

    if (*a1)
    {
      if ((v13 & 1) == 0)
      {
        __break(1u);
      }

      WebCore::PaymentContact::PaymentContact();
      v8 = v11[1];
      *a2 = MEMORY[0x1E69E2E40] + 16;
      *(a2 + 8) = v8;
      if (v8)
      {
        v9 = v8;
      }

      *(a2 + 16) = 1;
      WebCore::PaymentContact::~PaymentContact(v11);
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }

    if (v13 == 1)
    {
      v10 = v12;
      v12 = 0;
      if (v10)
      {
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void sub_19D6D513C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, char a12, uint64_t a13)
{
  WebCore::PaymentContact::~PaymentContact(&a9);
  if (a12 == 1)
  {
    v14 = a11;
    a11 = 0;
    if (v14)
    {
    }
  }

  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<WebCore::PaymentMerchantSession,void>::encode(IPC::Encoder *a1, objc_object **a2)
{
  v3 = *a2;
  v5 = v3;
  if (v3)
  {
    v4 = v3;
    v3 = v5;
  }

  IPC::encodeObjectDirectly<PKPaymentMerchantSession>(a1, v3);
  if (v5)
  {
  }
}

void sub_19D6D5214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::PaymentMerchantSession,void>::decode(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!PAL::PassKitCoreLibrary(1))
  {
    *a2 = 0;
    a2[8] = 0;
    return;
  }

  v4 = (*MEMORY[0x1E69E23A8])();
  v15[0] = v4;
  if (v4)
  {
    v5 = v4;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v12, v15, 1);
  IPC::decodeObjectDirectlyRequiringAllowedClasses<PKPaymentMerchantSession>(a1, &v13);
  v7 = v14;
  if (v14 == 1)
  {
    v8 = v13;
    if (v13)
    {
      v9 = v13;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v12, v6);
  }

  v10 = v15[0];
  v15[0] = 0;
  if (v10)
  {
  }

  if (*a1)
  {
    if ((v7 & 1) == 0)
    {
      __break(1u);
    }

    *a2 = v8;
    if (v8)
    {
      v11 = v8;
      a2[8] = 1;
LABEL_17:

      return;
    }

    a2[8] = 1;
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
    if (v8 && v7)
    {
      goto LABEL_17;
    }
  }
}

void sub_19D6D536C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a10)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(a10, v15);
  }

  if (a13)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebKit::CallbackID,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  if (!*a1)
  {
LABEL_5:
    *a2 = 0;
    a2[8] = 0;
    return result;
  }

  if (v5)
  {
    if ((result - 1) < 0xFFFFFFFFFFFFFFFELL)
    {
      *a2 = result;
      a2[8] = 1;
      return result;
    }

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::ContentWorldData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::ContentWorldData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  if (v5)
  {
    IPC::Decoder::decode<WTF::String>(a1, &v13);
    if (v14)
    {
      v7 = 0;
    }

    else
    {
      v7 = 1;
      IPC::Decoder::addIndexOfDecodingFailure(a1, 1);
    }
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 0);
    IPC::Decoder::decode<WTF::String>(a1, &v13);
    v7 = 1;
  }

  result = IPC::Decoder::decode<WTF::OptionSet<WebKit::ContentWorldOption>>(a1);
  v10 = result;
  if (result > 0xFFu)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7;
  }

  if ((v11 & 1) == 0)
  {
    result = IPC::Decoder::addIndexOfDecodingFailure(a1, 2);
  }

  if (*a1)
  {
    if ((v6 & 1) != 0 && (v14 & 1) != 0 && v10 > 0xFFu)
    {
      v12 = v13;
      *a2 = v4;
      *(a2 + 8) = v12;
      *(a2 + 16) = v10;
      *(a2 + 24) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v14)
    {
      result = v13;
      v13 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v9);
        }
      }
    }
  }

  return result;
}

void sub_19D6D55A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebKit::ContentWorldOption>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<unsigned char>(a1);
  v3 = v2 & 0x1F0;
  if (v3 == 256)
  {
    return v2 | 0x100u;
  }

  IPC::Decoder::markInvalid(a1);
  return 0;
}

uint64_t IPC::ArgumentCoder<WebKit::DebuggableInfoData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = (a2 + 32);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));

  return IPC::Encoder::operator<<<BOOL>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::DebuggableInfoData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    goto LABEL_29;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_31;
  }

  v7 = *v5;
  if (v7 >= 5)
  {
    goto LABEL_34;
  }

  for (i = v7 | 0x100; ; i = 0)
  {
    IPC::Decoder::decode<WTF::String>(a1, &v28);
    IPC::Decoder::decode<WTF::String>(a1, &v26);
    result = IPC::Decoder::decode<WTF::String>(a1, &v24);
    v4 = *(a1 + 1);
    v10 = *(a1 + 2);
    v11 = *a1;
    if (v4 <= &v10[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v21 = *(a1 + 3);
      if (v21)
      {
        if (v4)
        {
          (*(*v21 + 16))(v21);
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
      *(a1 + 2) = v10 + 1;
      if (v10)
      {
        v12 = *v10;
        if (v12 < 2)
        {
          v13 = 1;
          goto LABEL_9;
        }

        v23 = *v10;
        goto LABEL_44;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (!v22)
    {
      v4 = 0;
LABEL_42:
      v11 = 0;
      v23 = 0;
      goto LABEL_44;
    }

    if (!v4)
    {
      goto LABEL_42;
    }

    (*(*v22 + 16))(v22);
    v23 = 0;
    v11 = *a1;
    v4 = *(a1 + 1);
LABEL_44:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v4)
    {
      break;
    }

    result = (*(*result + 16))(result, v11);
    v13 = 0;
    v11 = *a1;
    v12 = v23;
LABEL_9:
    v14 = v12 ? v13 : 0;
    if (!v11)
    {
      break;
    }

    if (i > 0xFF && (v29 & 1) != 0)
    {
      v15 = v28;
      v28 = 0;
      if (v27)
      {
        v16 = v26;
        v26 = 0;
        if (v25 & 1) != 0 && (v13)
        {
          v17 = v24;
          *a2 = i;
          *(a2 + 8) = v15;
          *(a2 + 16) = v16;
          *(a2 + 24) = v17;
          *(a2 + 32) = v14;
          *(a2 + 40) = 1;
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_29:
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18)
    {
      if (v4)
      {
        (*(*v18 + 16))(v18);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_31:
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19)
    {
      if (v4)
      {
        (*(*v19 + 16))(v19);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_34;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_34:
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20 && v4)
    {
      (*(*v20 + 16))(v20, v6);
    }
  }

  *a2 = 0;
  *(a2 + 40) = 0;
  if (v25)
  {
    result = v24;
    v24 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v11);
      }
    }
  }

LABEL_19:
  if (v27 == 1)
  {
    result = v26;
    v26 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  if (v29 == 1)
  {
    result = v28;
    v28 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  return result;
}

void sub_19D6D59F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, char a16)
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

uint64_t IPC::ArgumentCoder<WebKit::DocumentEditingContext::TextRectAndRange,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 24);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::Decoder::decode<WebKit::DocumentEditingContext::Range>(uint64_t result, void *a2)
{
  v2 = a2;
  v3 = a2[1];
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = v4 - *a2;
  v7 = v3 >= v6;
  v8 = v3 - v6;
  if (v7 && v8 > 7)
  {
    a2[2] = v4 + 1;
    if (v4)
    {
      v10 = *v4;
      v11 = 1;
      v12 = v5;
      goto LABEL_8;
    }

    v25 = result;
    v27 = a2;
    goto LABEL_24;
  }

  while (1)
  {
    v25 = result;
    *v2 = 0;
    v2[1] = 0;
    v27 = v2;
    v17 = v2[3];
    if (!v17)
    {
      v3 = 0;
LABEL_23:
      v5 = 0;
      goto LABEL_24;
    }

    if (!v3)
    {
      goto LABEL_23;
    }

    (*(*v17 + 16))(v17, v5);
    v5 = *v27;
    v3 = v27[1];
LABEL_24:
    *v27 = 0;
    v27[1] = 0;
    v18 = v27[3];
    if (v18)
    {
      if (v3)
      {
        (*(*v18 + 16))(v18, v5);
        v11 = 0;
        v10 = 0;
        v2 = v27;
        v12 = *v27;
        v3 = v27[1];
        v5 = *v27;
        goto LABEL_27;
      }

      v12 = 0;
    }

    else
    {
      v12 = 0;
      v3 = 0;
    }

    v5 = 0;
    v11 = 0;
    v10 = 0;
    v2 = v27;
LABEL_27:
    result = v25;
LABEL_8:
    v13 = ((v2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v3 >= v13 - v5 && v3 - (v13 - v5) > 7)
    {
      v2[2] = v13 + 1;
      if (v13)
      {
        v15 = *v13;
        v16 = 1;
        if (!v5)
        {
          goto LABEL_33;
        }

        goto LABEL_15;
      }

      v24 = v11;
      v23 = v10;
      v26 = result;
      v28 = v2;
    }

    else
    {
      v24 = v11;
      v23 = v10;
      v26 = result;
      *v2 = 0;
      v2[1] = 0;
      v28 = v2;
      v19 = v2[3];
      if (!v19)
      {
        v3 = 0;
LABEL_30:
        v12 = 0;
        goto LABEL_31;
      }

      if (!v3)
      {
        goto LABEL_30;
      }

      (*(*v19 + 16))(v19, v12);
      v12 = *v28;
      v3 = v28[1];
    }

LABEL_31:
    *v28 = 0;
    v28[1] = 0;
    v20 = v28[3];
    if (!v20 || !v3)
    {
      v2 = v28;
      result = v26;
      goto LABEL_33;
    }

    (*(*v20 + 16))(v20, v12);
    v16 = 0;
    v15 = 0;
    v2 = v28;
    result = v26;
    v10 = v23;
    v11 = v24;
    if (!*v28)
    {
      goto LABEL_33;
    }

LABEL_15:
    if (v11 & 1) != 0 && (v16)
    {
      break;
    }

    __break(1u);
  }

  if (!__CFADD__(v10, v15))
  {
    *result = v10;
    *(result + 8) = v15;
    *(result + 16) = 1;
    return result;
  }

LABEL_33:
  *result = 0;
  *(result + 16) = 0;
  v21 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  result = v2[3];
  if (result && v21)
  {
    v22 = *(*result + 16);

    return v22();
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::DocumentEditingContextRequest,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1));
  v4 = *(a2 + 8);
  v5 = IPC::Encoder::grow(a1, 8uLL, 8);
  if (v6 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *v5 = v4;
    IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 16));

    return IPC::ArgumentCoder<std::optional<WebCore::ElementContext>,void>::encode<IPC::Encoder,std::optional<WebCore::ElementContext> const&>(a1, a2 + 32);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::DocumentEditingContextRequest,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = a1[2];
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v29 = a1[3];
    if (v29)
    {
      if (v4)
      {
        (*(*v29 + 16))(v29);
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
      v6 = *v5 | 0x100;
      goto LABEL_4;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v30 = a1[3];
  if (!v30 || !v4)
  {
LABEL_31:
    v6 = 0;
    goto LABEL_4;
  }

  (*(*v30 + 16))(v30);
  v6 = 0;
  v31 = *a1;
  v32 = a1[1];
  v33 = a1[3];
  *a1 = 0;
  a1[1] = 0;
  if (v33 && v32)
  {
    (*(*v33 + 16))(v33, v31);
    goto LABEL_31;
  }

LABEL_4:
  v7 = IPC::Decoder::decode<WebCore::TextGranularity>(a1);
  v8 = IPC::Decoder::decode<long long>(a1);
  v10 = v9;
  v11 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v13 = v12;
  if ((v12 & 1) == 0)
  {
    v26 = *a1;
    v27 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v28 = a1[3];
    if (v28)
    {
      if (v27)
      {
        (*(*v28 + 16))(v28, v26);
      }
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v17 = result;
  if ((v15 & 1) == 0)
  {
    v16 = *a1;
    v24 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      if (v24)
      {
        v25 = v15;
        result = (*(*result + 16))(result, v16);
        v15 = v25;
      }
    }
  }

  v18 = *a1;
  if (*a1)
  {
    if ((v13 & 1) == 0 || (v15 & 1) == 0)
    {
      goto LABEL_18;
    }

    v19 = v11 & 0xFFFFFFFFFFFFFF00;
    v11 = v11;
  }

  else
  {
    v22 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v23 = a1[3];
    if (v23 && v22)
    {
      (*(*v23 + 16))(v23, 0);
    }

    v11 = 0;
    v19 = 0;
  }

  result = IPC::Decoder::decode<std::optional<WebCore::ElementContext>>(v34, a1);
  v16 = *a1;
  if (!*a1)
  {
LABEL_19:
    *a2 = 0;
    goto LABEL_17;
  }

  if (v6 <= 0xFF || (v7 & 0x100) == 0 || (v10 & 1) == 0 || !v18 || (LOBYTE(v16) = v36, (v36 & 1) == 0))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v34[3];
  *(a2 + 64) = v34[2];
  *(a2 + 80) = v20;
  *(a2 + 96) = v34[4];
  *(a2 + 112) = v35;
  v21 = v34[1];
  *(a2 + 32) = v34[0];
  *(a2 + 48) = v21;
  *a2 = v6;
  *(a2 + 1) = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v19 | v11;
  LOBYTE(v16) = 1;
  *(a2 + 24) = v17;
LABEL_17:
  *(a2 + 128) = v16;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::TextGranularity>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::TextGranularity,void>::decode<IPC::Decoder>(a1);
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

uint64_t *IPC::Decoder::decode<std::optional<WebCore::ElementContext>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::ElementContext>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 96) & 1) == 0)
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

uint64_t IPC::ArgumentCoder<WebKit::DocumentEditingContext,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebCore::AttributedString,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::AttributedString,void>::encode(a1, a2 + 5);
  IPC::ArgumentCoder<WebCore::AttributedString,void>::encode(a1, a2 + 10);
  IPC::ArgumentCoder<WebCore::AttributedString,void>::encode(a1, a2 + 15);
  IPC::ArgumentCoder<WebCore::AttributedString,void>::encode(a1, a2 + 20);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[25]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[26]);
  IPC::VectorArgumentCoder<false,WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 27));

  return IPC::VectorArgumentCoder<false,WebKit::DocumentEditingContext::Range,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::DocumentEditingContext::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 29));
}

WTF *IPC::ArgumentCoder<WebKit::DocumentEditingContext,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebCore::AttributedString>(a1, v83);
  IPC::Decoder::decode<WebCore::AttributedString>(a1, v81);
  IPC::Decoder::decode<WebCore::AttributedString>(a1, v79);
  IPC::Decoder::decode<WebCore::AttributedString>(a1, v77);
  IPC::Decoder::decode<WebCore::AttributedString>(a1, v75);
  IPC::Decoder::decode<WebKit::DocumentEditingContext::Range>(&v73, a1);
  v7 = *(a1 + 1);
  v8 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *a1;
  v10 = v8 - *a1;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  v13 = v11 && v12 > 7;
  v60 = a2;
  if (!v13)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v54 = *(a1 + 3);
    if (v54)
    {
      if (v7)
      {
        (*(*v54 + 16))(v54);
        v7 = *(a1 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_116;
  }

  *(a1 + 2) = v8 + 1;
  if (!v8)
  {
LABEL_116:
    *a1 = 0;
    *(a1 + 1) = 0;
    v55 = *(a1 + 3);
    if (v55 && v7)
    {
      (*(*v55 + 16))(v55);
    }

    v18 = 0;
    goto LABEL_118;
  }

  v14 = *v8;
  v85 = 0;
  v86 = 0;
  if (v14 >= 0x8000)
  {
    do
    {
      IPC::Decoder::decode<WebKit::DocumentEditingContext::TextRectAndRange>(&v61, a1);
      if ((v63 & 1) == 0)
      {
        goto LABEL_23;
      }

      v22 = HIDWORD(v86);
      if (HIDWORD(v86) == v86)
      {
        v23 = WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v85, HIDWORD(v86) + 1, &v61);
        v22 = HIDWORD(v86);
        v24 = v85;
        v25 = (v85 + 32 * HIDWORD(v86));
        v26 = v23[1];
        *v25 = *v23;
      }

      else
      {
        v24 = v85;
        v25 = (v85 + 32 * HIDWORD(v86));
        v26 = v62;
        *v25 = v61;
      }

      v25[1] = v26;
      v27 = (v22 + 1);
      HIDWORD(v86) = v22 + 1;
      --v14;
    }

    while (v14);
    if (v86 <= v27)
    {
      v18 = v24;
    }

    else
    {
      if (v22 == -1)
      {
        goto LABEL_110;
      }

      if (v27 >> 27)
      {
        goto LABEL_133;
      }

      v50 = WTF::fastMalloc((32 * v27));
      v18 = v50;
      LODWORD(v86) = v27;
      v85 = v50;
      if (v50 == v24)
      {
LABEL_110:
        v85 = 0;
        LODWORD(v86) = 0;
      }

      else
      {
        v51 = 0;
        do
        {
          v52 = (v50 + v51);
          v53 = *(v24 + v51 + 16);
          *v52 = *(v24 + v51);
          v52[1] = v53;
          v51 += 32;
        }

        while (32 * v27 != v51);
        if (!v24)
        {
          goto LABEL_17;
        }
      }

      WTF::fastFree(v24, v9);
      v18 = v85;
    }

LABEL_17:
    v85 = 0;
    v4 = v86;
    v21 = 1;
    HIDWORD(v86) = 0;
    goto LABEL_24;
  }

  if (!v14)
  {
    v18 = 0;
    goto LABEL_17;
  }

  v15 = WTF::fastMalloc((32 * v14));
  LODWORD(v86) = v14;
  v85 = v15;
  while (1)
  {
    IPC::Decoder::decode<WebKit::DocumentEditingContext::TextRectAndRange>(&v61, a1);
    if ((v63 & 1) == 0)
    {
      break;
    }

    v16 = HIDWORD(v86);
    if (HIDWORD(v86) == v86)
    {
      v17 = WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v85, HIDWORD(v86) + 1, &v61);
      v16 = HIDWORD(v86);
      v18 = v85;
      v19 = (v85 + 32 * HIDWORD(v86));
      v20 = v17[1];
      *v19 = *v17;
    }

    else
    {
      v18 = v85;
      v19 = (v85 + 32 * HIDWORD(v86));
      v20 = v62;
      *v19 = v61;
    }

    v19[1] = v20;
    HIDWORD(v86) = v16 + 1;
    if (!--v14)
    {
      goto LABEL_17;
    }
  }

LABEL_23:
  v18 = 0;
  v21 = 0;
LABEL_24:
  result = v85;
  if (v85)
  {
    v85 = 0;
    LODWORD(v86) = 0;
    result = WTF::fastFree(result, v9);
  }

  if (v21)
  {
    v29 = 1;
    goto LABEL_28;
  }

LABEL_118:
  v56 = *a1;
  v57 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v57)
  {
    result = (*(*result + 16))(result, v56);
  }

  v29 = 0;
LABEL_28:
  v30 = *(a1 + 1);
  v31 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v32 = *a1;
  v33 = v31 - *a1;
  v11 = v30 >= v33;
  v34 = v30 - v33;
  if (!v11 || v34 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v58 = *(a1 + 3);
    if (v58)
    {
      if (v30)
      {
        (*(*v58 + 16))(v58);
        v30 = *(a1 + 1);
      }
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_124;
  }

  *(a1 + 2) = v31 + 1;
  if (v31)
  {
    v36 = *v31;
    v85 = 0;
    v86 = 0;
    if (v36 < 0x10000)
    {
      if (v36)
      {
        v37 = WTF::fastMalloc((16 * v36));
        LODWORD(v2) = 0;
        LODWORD(v86) = v36;
        v85 = v37;
        while (1)
        {
          result = IPC::Decoder::decode<WebKit::DocumentEditingContext::Range>(&v61, a1);
          if ((v62 & 1) == 0)
          {
            break;
          }

          if (v2 == v86)
          {
            result = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v85, v2 + 1, &v61);
            v38 = HIDWORD(v86);
            v37 = v85;
            *(v85 + HIDWORD(v86)) = *result;
          }

          else
          {
            *(v37 + v2) = v61;
            v38 = HIDWORD(v86);
          }

          LODWORD(v2) = v38 + 1;
          HIDWORD(v86) = v38 + 1;
          if (!--v36)
          {
            goto LABEL_44;
          }
        }

LABEL_59:
        if (v85)
        {
          WTF::fastFree(v85, v32);
        }

        goto LABEL_61;
      }

      LODWORD(v2) = 0;
LABEL_44:
      v39 = v85;
      v3 = v86;
      v40 = 1;
      goto LABEL_63;
    }

    v41 = 0;
    LODWORD(v2) = 0;
    do
    {
      result = IPC::Decoder::decode<WebKit::DocumentEditingContext::Range>(&v61, a1);
      if ((v62 & 1) == 0)
      {
        goto LABEL_59;
      }

      if (v2 == v86)
      {
        result = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v85, v2 + 1, &v61);
        v42 = HIDWORD(v86);
        v41 = v85;
        *(v85 + HIDWORD(v86)) = *result;
      }

      else
      {
        *(v41 + v2) = v61;
        v42 = HIDWORD(v86);
      }

      v2 = (v42 + 1);
      HIDWORD(v86) = v42 + 1;
      --v36;
    }

    while (v36);
    if (v86 <= v2)
    {
      goto LABEL_44;
    }

    if (v42 == -1)
    {
      goto LABEL_112;
    }

    if (!(v2 >> 28))
    {
      result = WTF::fastMalloc((16 * v2));
      LODWORD(v86) = v2;
      v85 = result;
      if (result != v41)
      {
        v43 = 0;
        do
        {
          *(result + v43) = *(v41 + v43);
          v43 += 16;
        }

        while (16 * v2 != v43);
        if (!v41)
        {
          goto LABEL_44;
        }

        goto LABEL_113;
      }

LABEL_112:
      v85 = 0;
      LODWORD(v86) = 0;
LABEL_113:
      result = WTF::fastFree(v41, v32);
      LODWORD(v2) = HIDWORD(v86);
      goto LABEL_44;
    }

LABEL_133:
    __break(0xC471u);
    JUMPOUT(0x19D6D6A48);
  }

LABEL_124:
  *a1 = 0;
  *(a1 + 1) = 0;
  v59 = *(a1 + 3);
  if (v59 && v30)
  {
    (*(*v59 + 16))(v59);
  }

LABEL_61:
  v32 = *a1;
  v44 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v44)
  {
    result = (*(*result + 16))(result, v32);
  }

  v40 = 0;
  v39 = 0;
LABEL_63:
  if (*a1)
  {
    if (v84)
    {
      result = WebCore::AttributedString::AttributedString();
      if (v82)
      {
        result = WebCore::AttributedString::AttributedString();
        if (v80)
        {
          result = WebCore::AttributedString::AttributedString();
          if (v78)
          {
            result = WebCore::AttributedString::AttributedString();
            if (v76)
            {
              result = WebCore::AttributedString::AttributedString();
              if (v74)
              {
                *&v67[40] = v73;
                if (v29)
                {
                  v68 = v18;
                  v69 = v4;
                  if (v40)
                  {
                    v70 = v39;
                    v71 = v3;
                    v72 = v2;
                    *(WebKit::DocumentEditingContext::DocumentEditingContext(v60, &v61) + 248) = 1;
                    v46 = v70;
                    if (v70)
                    {
                      v70 = 0;
                      v71 = 0;
                      WTF::fastFree(v46, v45);
                    }

                    v47 = v68;
                    if (v68)
                    {
                      v68 = 0;
                      LODWORD(v69) = 0;
                      WTF::fastFree(v47, v45);
                    }

                    MEMORY[0x19EB065D0](v67);
                    MEMORY[0x19EB065D0](&v66);
                    MEMORY[0x19EB065D0](&v65);
                    MEMORY[0x19EB065D0](&v64);
                    result = MEMORY[0x19EB065D0](&v61);
                    goto LABEL_77;
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

  *v60 = 0;
  v60[248] = 0;
  if (v39)
  {
    v48 = v40;
  }

  else
  {
    v48 = 0;
  }

  if (v48)
  {
    result = WTF::fastFree(v39, v32);
  }

  if (v18)
  {
    v49 = v29;
  }

  else
  {
    v49 = 0;
  }

  if (v49 == 1)
  {
    result = WTF::fastFree(v18, v32);
  }

LABEL_77:
  if (v76 == 1)
  {
    result = MEMORY[0x19EB065D0](v75);
  }

  if (v78 == 1)
  {
    result = MEMORY[0x19EB065D0](v77);
  }

  if (v80 == 1)
  {
    result = MEMORY[0x19EB065D0](v79);
  }

  if (v82 == 1)
  {
    result = MEMORY[0x19EB065D0](v81);
  }

  if (v84 == 1)
  {
    return MEMORY[0x19EB065D0](v83);
  }

  return result;
}

void sub_19D6D6A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, WTF *a37, uint64_t a38, WTF *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, int a50, __int16 a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, int a57, __int16 a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a49 == 1)
  {
    MEMORY[0x19EB065D0](&a44);
  }

  if (a56 == 1)
  {
    MEMORY[0x19EB065D0](&a51);
  }

  if (a63 == 1)
  {
    MEMORY[0x19EB065D0](&a58);
  }

  if (*(v63 - 176) == 1)
  {
    MEMORY[0x19EB065D0](v63 - 216);
  }

  if (*(v63 - 128) == 1)
  {
    MEMORY[0x19EB065D0](v63 - 168);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::AttributedString>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::AttributedString,void>::decode(a1, a2);
  if ((a2[40] & 1) == 0)
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

void sub_19D6D6C64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    MEMORY[0x19EB065D0](v1);
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebKit::EditingRange,void>::decode@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  v3 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *result;
  v5 = v3 - *result;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 7)
  {
    result[2] = v3 + 1;
    if (v3)
    {
      v9 = *v3;
      v10 = 1;
      v11 = v4;
      goto LABEL_8;
    }

    v27 = result;
    v24 = a2;
    goto LABEL_24;
  }

  while (1)
  {
    v24 = a2;
    *result = 0;
    result[1] = 0;
    v27 = result;
    v17 = result[3];
    if (!v17)
    {
      v2 = 0;
LABEL_23:
      v4 = 0;
      goto LABEL_24;
    }

    if (!v2)
    {
      goto LABEL_23;
    }

    (*(*v17 + 16))(v17);
    v4 = *v27;
    v2 = v27[1];
LABEL_24:
    *v27 = 0;
    v27[1] = 0;
    v18 = v27[3];
    if (!v18)
    {
      v11 = 0;
      v2 = 0;
LABEL_26:
      v4 = 0;
      v10 = 0;
      v9 = 0;
      a2 = v24;
      result = v27;
      goto LABEL_8;
    }

    if (!v2)
    {
      v11 = 0;
      goto LABEL_26;
    }

    (*(*v18 + 16))(v18, v4);
    v10 = 0;
    v9 = 0;
    result = v27;
    v11 = *v27;
    v2 = v27[1];
    v4 = *v27;
    a2 = v24;
LABEL_8:
    v12 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v2 < v12 - v4 || v2 - (v12 - v4) <= 7)
    {
      v22 = v10;
      v20 = v9;
      v25 = a2;
      *result = 0;
      result[1] = 0;
      v28 = result;
      v19 = result[3];
      if (v19)
      {
        if (v2)
        {
          (*(*v19 + 16))(v19, v11);
          result = v28;
          v11 = *v28;
          v2 = v28[1];
          a2 = v25;
          goto LABEL_30;
        }
      }

      else
      {
        v2 = 0;
      }

      v11 = 0;
      result = v28;
LABEL_30:
      v9 = v20;
      v10 = v22;
      goto LABEL_31;
    }

    result[2] = v12 + 1;
    if (v12)
    {
      v14 = *v12;
      v15 = 1;
      if (!v4)
      {
        goto LABEL_32;
      }

      goto LABEL_15;
    }

LABEL_31:
    *result = 0;
    result[1] = 0;
    v29 = result;
    result = result[3];
    if (!result || !v2 || (v26 = a2, v21 = v9, v23 = v10, result = (*(*result + 16))(result, v11), v10 = v23, v9 = v21, a2 = v26, v15 = 0, v14 = 0, !*v29))
    {
LABEL_32:
      v16 = 0;
      *a2 = 0;
      goto LABEL_19;
    }

LABEL_15:
    if (v10 & 1) != 0 && (v15)
    {
      break;
    }

    __break(1u);
  }

  if (__CFADD__(v9, v14))
  {
    __break(0xC471u);
    JUMPOUT(0x19D6D6DDCLL);
  }

  *a2 = v9;
  *(a2 + 8) = v14;
  v16 = 1;
LABEL_19:
  *(a2 + 16) = v16;
  return result;
}