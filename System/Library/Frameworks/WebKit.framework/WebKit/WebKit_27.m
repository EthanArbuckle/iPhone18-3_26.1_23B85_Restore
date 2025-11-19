void sub_19D71A8E4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, WTF::StringImpl *a29, uint64_t a30, WTF::StringImpl *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, WTF::StringImpl *a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, int a63)
{
  if (*(v68 - 112) == 1)
  {
    WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v68 - 128);
  }

  if (*(v68 - 136) == 1 && *(v68 - 144) == 1)
  {
    if (*(v68 - 152) == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v68 - 168);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v68 - 184);
  }

  if (a66 == 1 && a64 == 1)
  {
    if (a62 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&a60);
    }

    if (a58 && atomic_fetch_add_explicit(a58, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a58, a2);
    }
  }

  if (a68 == 1)
  {
    v70 = a67;
    a67 = 0;
    if (v70)
    {
      if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v70, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::PublicKeyCredentialRequestOptions,void>::encode(mpark *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::BufferSource,void>::encode(a1, a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 16);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::VectorArgumentCoder<false,WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 32);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 48));

  return IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs>&>(a1, a2 + 56);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::PublicKeyCredentialRequestOptions,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebCore::BufferSource>(&v30, a1);
  v4 = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  v6 = v5;
  IPC::Decoder::decode<WTF::String>(a1, &v28);
  IPC::Decoder::decode<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v25, a1);
  v7 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  IPC::Decoder::decode<std::optional<WebCore::AuthenticationExtensionsClientInputs>>(v24, a1);
  if (*a1)
  {
    if (v32)
    {
      LOBYTE(v14) = 0;
      v15 = -1;
      if (v31 != 255)
      {
        v9 = v30;
        v30 = 0;
        v14 = v9;
        v15 = v31;
      }

      if (v6)
      {
        v16 = v4;
        v17 = BYTE4(v4);
        if (v29)
        {
          v10 = v28;
          v28 = 0;
          v18 = v10;
          if (v27)
          {
            v19 = v25;
            v11 = v26;
            v25 = 0;
            v26 = 0;
            v20 = v11;
            if (v7 > 0xFFu)
            {
              v21 = v7;
              if (v24[152])
              {
                std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs,false>::__optional_move_base[abi:sn200100](v22, v24);
                v23 = 0;
                WebCore::PublicKeyCredentialRequestOptions::PublicKeyCredentialRequestOptions(a2, &v14);
                a2[216] = 1;
                WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(&v14);
                goto LABEL_11;
              }
            }
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  a2[216] = 0;
LABEL_11:
  result = std::__optional_storage_base<std::optional<WebCore::AuthenticationExtensionsClientInputs>,false>::~__optional_storage_base(v24, v8);
  if (v27 == 1)
  {
    result = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25);
  }

  if (v29 == 1)
  {
    result = v28;
    v28 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  if (v32 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v30);
  }

  return result;
}

void sub_19D71AFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(&a10);
  std::__optional_storage_base<std::optional<WebCore::AuthenticationExtensionsClientInputs>,false>::~__optional_storage_base(&a37, v39);
  if (*(v37 - 96) == 1)
  {
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37 - 112);
  }

  if (*(v37 - 80) == 1)
  {
    v41 = *(v37 - 88);
    *(v37 - 88) = 0;
    if (v41)
    {
      if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v40);
      }
    }
  }

  if (*(v37 - 56) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v37 - 72);
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v7);
  v6 = *a1;
  if (*a1)
  {
    if ((v8 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v6 = v7;
    if (v7 && *(v7 + 1))
    {
      v7 = 0;
    }

    else
    {
      result = WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v9;
    }

    *a2 = v6;
    LOBYTE(v6) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = v6;
  if (v8 == 1)
  {
    result = v7;
    v7 = 0;
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

void sub_19D71B174(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a11 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::Site,void>::encode(IPC::Encoder *a1, WebCore::Site *this)
{
  v4 = WebCore::Site::protocol(this);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v4);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, this + 1);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::Site,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v10);
  result = IPC::Decoder::decode<WebCore::RegistrableDomain>(a1, &v8);
  if (!*a1)
  {
    goto LABEL_24;
  }

  if ((v11 & 1) == 0 || (v9 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    *a2 = 0;
    *(a2 + 16) = 0;
    goto LABEL_14;
  }

  WebCore::Site::Site();
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a2 = v6;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  result = v6;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v6, v5);
  }

LABEL_14:
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
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D71B354(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::AudioConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(a1, a2 + 16);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 32);

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 40));
}

uint64_t IPC::ArgumentCoder<WebCore::Cookie,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 48);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 64));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 65));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 66));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 80));
  IPC::ArgumentCoder<std::span<unsigned short const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 120), *(a2 + 132));
  v4 = *(a2 + 136);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebCore::Cookie,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v104);
  IPC::Decoder::decode<WTF::String>(a1, &v102);
  IPC::Decoder::decode<WTF::String>(a1, &v100);
  IPC::Decoder::decode<WTF::String>(a1, &v98);
  IPC::Decoder::decode<WTF::String>(a1, &v96);
  v4 = IPC::Decoder::decode<unsigned long long>(a1);
  v6 = v5;
  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v94);
  if ((v95 & 1) == 0)
  {
    v54 = *a1;
    v55 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v56 = *(a1 + 3);
    if (v56)
    {
      if (v55)
      {
        (*(*v56 + 16))(v56, v54);
      }
    }
  }

  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *a1;
  if (v7 <= &v8[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v59 = *(a1 + 3);
    if (v59)
    {
      if (v7)
      {
        (*(*v59 + 16))(v59);
        v7 = *(a1 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_104:
    *a1 = 0;
    *(a1 + 1) = 0;
    v60 = *(a1 + 3);
    if (v60)
    {
      if (v7)
      {
        (*(*v60 + 16))(v60);
        v11 = 0;
        v9 = *a1;
        v7 = *(a1 + 1);
        goto LABEL_107;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
    v11 = 0;
    goto LABEL_107;
  }

  v10 = v8 + 1;
  *(a1 + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_104;
  }

  v11 = *v8;
  if (v11 < 2)
  {
    v12 = 1;
    goto LABEL_6;
  }

LABEL_107:
  *a1 = 0;
  *(a1 + 1) = 0;
  v61 = *(a1 + 3);
  if (!v61 || !v7)
  {
    v13 = 0;
    v12 = 0;
    v62 = 0;
    v9 = 0;
LABEL_109:
    *a1 = 0;
    *(a1 + 1) = 0;
    v63 = *(a1 + 3);
    if (v63 && v62)
    {
      (*(*v63 + 16))(v63, v9, v62);
      v15 = 0;
      v9 = *a1;
      v7 = *(a1 + 1);
    }

    else
    {
      v7 = 0;
      v9 = 0;
      v15 = 0;
    }

    goto LABEL_111;
  }

  (*(*v61 + 16))(v61, v9);
  v12 = 0;
  v9 = *a1;
  v7 = *(a1 + 1);
  v10 = *(a1 + 2);
LABEL_6:
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v7 <= &v10[-v9])
  {
    v62 = 0;
    v71 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v71 && v7)
    {
      (*(*v71 + 16))(v71);
      v9 = *a1;
      v62 = *(a1 + 1);
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_109;
  }

  v14 = v10 + 1;
  *(a1 + 2) = v10 + 1;
  if (!v10)
  {
    v62 = v7;
    goto LABEL_109;
  }

  v15 = *v10;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_13;
  }

LABEL_111:
  *a1 = 0;
  *(a1 + 1) = 0;
  v64 = *(a1 + 3);
  if (!v64 || !v7)
  {
    v17 = 0;
    v16 = 0;
    v65 = 0;
    v9 = 0;
LABEL_113:
    *a1 = 0;
    *(a1 + 1) = 0;
    v66 = *(a1 + 3);
    if (v66 && v65)
    {
      (*(*v66 + 16))(v66, v9, v65);
      v18 = 0;
      v9 = *a1;
      v7 = *(a1 + 1);
    }

    else
    {
      v7 = 0;
      v9 = 0;
      v18 = 0;
    }

    goto LABEL_115;
  }

  (*(*v64 + 16))(v64, v9);
  v16 = 0;
  v9 = *a1;
  v7 = *(a1 + 1);
  v14 = *(a1 + 2);
LABEL_13:
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v7 <= &v14[-v9])
  {
    v65 = 0;
    v72 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v72 && v7)
    {
      (*(*v72 + 16))(v72);
      v9 = *a1;
      v65 = *(a1 + 1);
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_113;
  }

  *(a1 + 2) = v14 + 1;
  if (!v14)
  {
    v65 = v7;
    goto LABEL_113;
  }

  v18 = *v14;
  if (v18 < 2)
  {
    v19 = 1;
    goto LABEL_20;
  }

LABEL_115:
  *a1 = 0;
  *(a1 + 1) = 0;
  v67 = *(a1 + 3);
  if (v67 && v7)
  {
    (*(*v67 + 16))(v67, v9);
  }

  v19 = 0;
LABEL_20:
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  IPC::Decoder::decode<WTF::String>(a1, &v92);
  IPC::Decoder::decode<WTF::URL>(a1, &v88);
  v21 = *(a1 + 1);
  v22 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = *a1;
  v24 = v22 - *a1;
  v25 = v21 >= v24;
  v26 = v21 - v24;
  if (v25 && v26 > 7)
  {
    *(a1 + 2) = v22 + 1;
    if (v22)
    {
      v27 = *v22;
      if (!*v22)
      {
        v28 = 0;
        goto LABEL_39;
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v28 = ((v22 + 9) & 0xFFFFFFFFFFFFFFF8);
      if (v21 >= v28 - v23 && v21 - (v28 - v23) >= 2 * v27)
      {
        *(a1 + 2) = &v28[v27];
        if (!v28)
        {
          goto LABEL_32;
        }

LABEL_39:
        v31 = WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned short const,18446744073709551615ul>(&v85, v28, v27);
        v87 = 1;
        goto LABEL_40;
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v57 = *(a1 + 3);
    if (v57)
    {
      if (v21)
      {
        (*(*v57 + 16))(v57);
        v21 = *(a1 + 1);
      }
    }

    else
    {
      v21 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v58 = *(a1 + 3);
  if (v58 && v21)
  {
    (*(*v58 + 16))(v58);
  }

LABEL_32:
  v29 = *a1;
  v30 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v31 = *(a1 + 3);
  if (v31)
  {
    goto LABEL_95;
  }

  v30 = 0;
LABEL_34:
  v32 = 0;
  while (1)
  {
    LOBYTE(v85) = 0;
    v87 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v31 && v30)
    {
      v31 = (*(*v31 + 16))(v31, v32);
    }

LABEL_40:
    v30 = *(a1 + 1);
    v33 = *(a1 + 2);
    v29 = *a1;
    if (v30 <= &v33[-*a1])
    {
      break;
    }

    *(a1 + 2) = v33 + 1;
    if (!v33)
    {
      goto LABEL_119;
    }

    v34 = *v33;
    if (v34 >= 3)
    {
      goto LABEL_122;
    }

    v35 = v34 | 0x100;
    if (!v29)
    {
      goto LABEL_123;
    }

LABEL_44:
    if (v105 & 1) != 0 && (v103 & 1) != 0 && (v101 & 1) != 0 && (v99 & 1) != 0 && (v97 & 1) != 0 && (v6 & 1) != 0 && (v95 & 1) != 0 && (v12 & 1) != 0 && (v16 & 1) != 0 && (v19 & 1) != 0 && (v93 & 1) != 0 && (v91 & 1) != 0 && (v87)
    {
      v36 = v85;
      v37 = v86;
      v85 = 0;
      v86 = 0;
      if (v35 > 0xFF)
      {
        v38 = v104;
        v104 = 0;
        v39 = v102;
        v102 = 0;
        v73[0] = v38;
        v73[1] = v39;
        v40 = v100;
        v100 = 0;
        v41 = v98;
        v98 = 0;
        v73[2] = v40;
        v73[3] = v41;
        v42 = v96;
        v96 = 0;
        v73[4] = v42;
        v73[5] = v4;
        v74 = v94;
        v75 = v13;
        v76 = v17;
        v77 = v20;
        v43 = v92;
        v92 = 0;
        v44 = v88;
        v88 = 0;
        v78 = v43;
        v79 = v44;
        v80 = v89;
        v81 = v90;
        LODWORD(v89) = v89 & 0xFFFFFFFE;
        v82 = v36;
        v83 = v37;
        v84 = v35;
        WebCore::Cookie::Cookie(a2, v73);
        a2[144] = 1;
        WebCore::Cookie::~Cookie(v73, v45);
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_95:
    if (!v30)
    {
      goto LABEL_34;
    }

    (*(*v31 + 16))(v31, v29);
    v32 = *a1;
    v30 = *(a1 + 1);
    v31 = *(a1 + 3);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v68 = *(a1 + 3);
  if (v68)
  {
    if (v30)
    {
      (*(*v68 + 16))(v68);
      v30 = *(a1 + 1);
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_119:
  *a1 = 0;
  *(a1 + 1) = 0;
  v69 = *(a1 + 3);
  if (v69)
  {
    if (v30)
    {
      (*(*v69 + 16))(v69);
      v29 = *a1;
      v30 = *(a1 + 1);
      goto LABEL_122;
    }
  }

  else
  {
    v30 = 0;
  }

  v29 = 0;
LABEL_122:
  *a1 = 0;
  *(a1 + 1) = 0;
  v70 = *(a1 + 3);
  if (v70)
  {
    if (v30)
    {
      v31 = (*(*v70 + 16))(v70, v29);
      v35 = 0;
      v29 = *a1;
      if (*a1)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_123:
  *a2 = 0;
  a2[144] = 0;
LABEL_59:
  if (v87 == 1)
  {
    v46 = v85;
    if (v85)
    {
      v85 = 0;
      LODWORD(v86) = 0;
      WTF::fastFree(v46, v29);
    }
  }

  if (v91 == 1)
  {
    v47 = v88;
    v88 = 0;
    if (v47)
    {
      if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v29);
      }
    }
  }

  if (v93 == 1)
  {
    v48 = v92;
    v92 = 0;
    if (v48)
    {
      if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v29);
      }
    }
  }

  if (v97 == 1)
  {
    v49 = v96;
    v96 = 0;
    if (v49)
    {
      if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v29);
      }
    }
  }

  if (v99 == 1)
  {
    v50 = v98;
    v98 = 0;
    if (v50)
    {
      if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v29);
      }
    }
  }

  if (v101 == 1)
  {
    v51 = v100;
    v100 = 0;
    if (v51)
    {
      if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v29);
      }
    }
  }

  if (v103 == 1)
  {
    v52 = v102;
    v102 = 0;
    if (v52)
    {
      if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v29);
      }
    }
  }

  if (v105 == 1)
  {
    v53 = v104;
    v104 = 0;
    if (v53)
    {
      if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v53, v29);
      }
    }
  }
}

void sub_19D71BE40(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, WTF *a28, int a29, int a30, char a31, WTF::StringImpl *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, WTF::StringImpl *a38, char a39)
{
  if (*(v39 - 168) == 1)
  {
    v41 = *(v39 - 176);
    *(v39 - 176) = 0;
    if (v41)
    {
      if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, a2);
      }
    }
  }

  if (*(v39 - 152) == 1)
  {
    v42 = *(v39 - 160);
    *(v39 - 160) = 0;
    if (v42)
    {
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, a2);
      }
    }
  }

  if (*(v39 - 136) == 1)
  {
    v43 = *(v39 - 144);
    *(v39 - 144) = 0;
    if (v43)
    {
      if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, a2);
      }
    }
  }

  if (*(v39 - 120) == 1)
  {
    v44 = *(v39 - 128);
    *(v39 - 128) = 0;
    if (v44)
    {
      if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, a2);
      }
    }
  }

  if (*(v39 - 104) == 1)
  {
    v45 = *(v39 - 112);
    *(v39 - 112) = 0;
    if (v45)
    {
      if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::VideoFrameMetadata,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 40);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 56);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 72);

  return IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 88);
}

uint64_t IPC::ArgumentCoder<WebCore::VideoFrameMetadata,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  v46 = IPC::Decoder::decode<unsigned long long>(a1);
  v5 = v4;
  v6 = IPC::Decoder::decode<unsigned long long>(a1);
  v8 = v7;
  v9 = *(a1 + 1);
  v10 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = *a1;
  v12 = v10 - *a1;
  v13 = v9 >= v12;
  v14 = v9 - v12;
  if (v13 && v14 > 3)
  {
    *(a1 + 2) = v10 + 1;
    if (v10)
    {
      v16 = *v10 | 0x100000000;
      v17 = v11;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (v40)
    {
      if (v9)
      {
        (*(*v40 + 16))(v40);
        v9 = *(a1 + 1);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v41 = *(a1 + 3);
  if (!v41)
  {
    v17 = 0;
    v9 = 0;
LABEL_50:
    v11 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  if (!v9)
  {
    v17 = 0;
    goto LABEL_50;
  }

  (*(*v41 + 16))(v41);
  v16 = 0;
  v17 = *a1;
  v9 = *(a1 + 1);
  v11 = *a1;
LABEL_8:
  v18 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v9 >= v18 - v11 && v9 - (v18 - v11) > 3)
  {
    *(a1 + 2) = v18 + 1;
    if (v18)
    {
      v20 = *v18 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v42 = *(a1 + 3);
    if (!v42)
    {
      v9 = 0;
LABEL_53:
      v17 = 0;
      goto LABEL_54;
    }

    if (!v9)
    {
      goto LABEL_53;
    }

    (*(*v42 + 16))(v42, v17);
    v17 = *a1;
    v9 = *(a1 + 1);
  }

LABEL_54:
  *a1 = 0;
  *(a1 + 1) = 0;
  v43 = *(a1 + 3);
  if (v43 && v9)
  {
    (*(*v43 + 16))(v43, v17);
  }

  v20 = 0;
LABEL_15:
  v21 = IPC::Decoder::decode<unsigned long long>(a1);
  v23 = v22;
  v24 = *(a1 + 1);
  v25 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v26 = v25 - *a1;
  v13 = v24 >= v26;
  v27 = v24 - v26;
  if (v13 && v27 > 3)
  {
    *(a1 + 2) = v25 + 1;
    if (v25)
    {
      v28 = *v25 | 0x100000000;
      goto LABEL_20;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v44 = *(a1 + 3);
    if (v44)
    {
      if (v24)
      {
        (*(*v44 + 16))(v44);
        v24 = *(a1 + 1);
      }
    }

    else
    {
      v24 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v45 = *(a1 + 3);
  if (v45 && v24)
  {
    (*(*v45 + 16))(v45);
  }

  v28 = 0;
LABEL_20:
  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v53);
  if ((v55 & 1) == 0)
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

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v50);
  if ((v52 & 1) == 0)
  {
    v34 = *a1;
    v35 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36)
    {
      if (v35)
      {
        (*(*v36 + 16))(v36, v34);
      }
    }
  }

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v47);
  if ((v49 & 1) == 0)
  {
    v37 = *a1;
    v38 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (v39)
    {
      if (v38)
      {
        (*(*v39 + 16))(v39, v37);
      }
    }
  }

  result = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  if (*a1)
  {
    if (v5 & 1) != 0 && (v8 & 1) != 0 && (v16 & 0x100000000) != 0 && (v20 & 0x100000000) != 0 && (v23 & 1) != 0 && (v28 & 0x100000000) != 0 && (v55)
    {
      *&v58[4] = v53;
      v58[12] = v54;
      if (v52)
      {
        *(&v57 + 7) = v50;
        HIBYTE(v57) = v51;
        if (v49)
        {
          *(&v56 + 7) = v47;
          HIBYTE(v56) = v48;
          if (v30)
          {
            *a2 = v46;
            *(a2 + 8) = v6;
            *(a2 + 16) = v16;
            *(a2 + 20) = v20;
            *(a2 + 24) = v21;
            *(a2 + 32) = v28;
            *(a2 + 36) = *v58;
            *(a2 + 41) = *&v58[5];
            *(a2 + 49) = v57;
            *(a2 + 65) = v56;
            *(a2 + 88) = result;
            *(a2 + 92) = BYTE4(result);
            *(a2 + 96) = 1;
            return result;
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 96) = 0;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::NavigationPreloadState,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
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

LABEL_20:
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
        goto LABEL_24;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v16 = 0;
    goto LABEL_24;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_20;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

  v16 = v7;
LABEL_24:
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

  result = IPC::Decoder::decode<WTF::String>(a1, &v17);
  if (*a1)
  {
    if (v8 & 1) != 0 && (v18)
    {
      v12 = v17;
      *a2 = v9;
      *(a2 + 8) = v12;
      *(a2 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v18)
  {
    result = v17;
    v17 = 0;
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

uint64_t IPC::ArgumentCoder<WebCore::PlatformDynamicRangeLimit,void>::decode(IPC::Decoder *a1)
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
      v8 = *v2 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    v13 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v13;
  }

  v12 = a1;
  IPC::Decoder::markInvalid(a1);
  v8 = 0;
  v3 = *v12;
LABEL_8:
  if (!v3)
  {
    return 0;
  }

  if ((v8 & 0x100000000) == 0)
  {
    __break(1u);
    return 0;
  }

  v9 = 1.0;
  if (*&v8 <= 1.0)
  {
    v9 = *&v8;
  }

  v10 = 0.0;
  if (*&v8 >= 0.0)
  {
    v10 = v9;
  }

  return LODWORD(v10) | 0x100000000;
}

void *IPC::ArgumentCoder<WebCore::MockContentFilterSettings,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1));
  v5 = *(a2 + 2);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v6 = *(a2 + 3);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
}

IPC::Decoder *IPC::ArgumentCoder<WebCore::MockContentFilterSettings,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
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

LABEL_42:
    *a1 = 0;
    a1[1] = 0;
    v19 = a1[3];
    if (v19)
    {
      if (v4)
      {
        (*(*v19 + 16))(v19);
        v8 = 0;
        v6 = *a1;
        v4 = a1[1];
        goto LABEL_45;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v8 = 0;
    goto LABEL_45;
  }

  v7 = v5 + 1;
  a1[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_42;
  }

  v8 = *v5;
  if (v8 < 2)
  {
    v9 = 1;
    goto LABEL_5;
  }

LABEL_45:
  *a1 = 0;
  a1[1] = 0;
  v20 = a1[3];
  if (v20)
  {
    if (v4)
    {
      (*(*v20 + 16))(v20, v6);
      v6 = *a1;
      v4 = a1[1];
      goto LABEL_48;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_48:
  v9 = 0;
  v7 = a1[2];
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
    *a1 = 0;
    a1[1] = 0;
    v21 = a1[3];
    if (v21)
    {
      if (v4)
      {
        (*(*v21 + 16))(v21);
        v6 = *a1;
        v4 = a1[1];
LABEL_52:
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
            goto LABEL_55;
          }
        }

        else
        {
          v4 = 0;
        }

        v6 = 0;
        goto LABEL_55;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_52;
  }

  a1[2] = (v7 + 1);
  if (!v7)
  {
    goto LABEL_52;
  }

  v11 = *v7;
  if (v11 < 6)
  {
    v12 = v11 | 0x100;
    goto LABEL_12;
  }

LABEL_55:
  *a1 = 0;
  a1[1] = 0;
  v23 = a1[3];
  if (v23 && v4)
  {
    (*(*v23 + 16))(v23, v6);
  }

  v12 = 0;
LABEL_12:
  v13 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
  v14 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
  IPC::Decoder::decode<WTF::String>(a1, &v26);
  result = IPC::Decoder::decode<WTF::String>(a1, &v24);
  if (!*a1)
  {
LABEL_39:
    *a2 = 0;
    *(a2 + 24) = 0;
    goto LABEL_29;
  }

  if ((v9 & 1) == 0 || v12 <= 0xFF || v13 <= 0xFFu || v14 <= 0xFFu || (v27 & 1) == 0 || (v17 = v26, v26 = 0, (v25 & 1) == 0))
  {
    __break(1u);
    goto LABEL_39;
  }

  result = v24;
  v24 = 0;
  *a2 = (v10 | (v12 << 8)) | (v13 << 16) | (v14 << 24);
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v17;
  if (!result)
  {
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  atomic_fetch_add_explicit(result, 2u, memory_order_relaxed);
  *(a2 + 16) = result;
  *(a2 + 24) = 1;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v16);
  }

  if (v17)
  {
LABEL_27:
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v17, v16);
    }
  }

LABEL_29:
  if (v25 == 1)
  {
    result = v24;
    v24 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v16);
      }
    }
  }

  if (v27 == 1)
  {
    result = v26;
    v26 = 0;
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

void sub_19D71CBEC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::LoginStatus,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  v5 = *(a2 + 16);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 17));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::LoginStatus,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::RegistrableDomain>(a1, &v29);
  IPC::Decoder::decode<WTF::String>(a1, &v27);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v4)
      {
        (*(*v15 + 16))(v15);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_30:
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16)
    {
      if (v4)
      {
        (*(*v16 + 16))(v16);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_33;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_33;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_30;
  }

  if (*v5 < 2u)
  {
    v7 = 0;
    goto LABEL_5;
  }

LABEL_33:
  *a1 = 0;
  *(a1 + 1) = 0;
  v17 = *(a1 + 3);
  if (!v17)
  {
    v6 = 0;
    v4 = 0;
LABEL_35:
    v7 = 1;
    goto LABEL_36;
  }

  if (!v4)
  {
    v6 = 0;
    goto LABEL_35;
  }

  (*(*v17 + 16))(v17, v6);
  v6 = 0;
  v21 = *(a1 + 3);
  v22 = *a1;
  v23 = *(a1 + 1);
  v7 = 1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v4 = 0;
  if (!v21 || !v23)
  {
LABEL_36:
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18)
    {
      if (v4)
      {
        (*(*v18 + 16))(v18, v6);
        v6 = *a1;
        v4 = *(a1 + 1);
LABEL_39:
        *a1 = 0;
        *(a1 + 1) = 0;
        v19 = *(a1 + 3);
        if (v19)
        {
          if (v4)
          {
            (*(*v19 + 16))(v19, v6);
            v6 = *a1;
            v4 = *(a1 + 1);
            goto LABEL_42;
          }
        }

        else
        {
          v4 = 0;
        }

        v6 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_39;
  }

  (*(*v21 + 16))(v21, v22, v23);
  v6 = *a1;
  v4 = *(a1 + 1);
LABEL_5:
  v8 = *(a1 + 2);
  if (v4 <= &v8[-v6])
  {
    goto LABEL_36;
  }

  *(a1 + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_39;
  }

  v9 = *v8;
  if (v9 < 3)
  {
    v10 = v9 | 0x100;
    goto LABEL_9;
  }

LABEL_42:
  *a1 = 0;
  *(a1 + 1) = 0;
  v20 = *(a1 + 3);
  if (v20 && v4)
  {
    (*(*v20 + 16))(v20, v6);
  }

  v10 = 0;
LABEL_9:
  IPC::Decoder::decode<WTF::Seconds>(a1);
  v12 = v11;
  result = IPC::Decoder::decode<WTF::Seconds>(a1);
  if (!*a1)
  {
LABEL_27:
    *a2 = 0;
    *(a2 + 40) = 0;
    goto LABEL_17;
  }

  if ((v30 & 1) == 0 || (v28 & 1) == 0 || v7 || v10 <= 0xFF || (v12 & 1) == 0 || (v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  result = WebCore::LoginStatus::LoginStatus();
  *a2 = v24;
  *(a2 + 16) = v25;
  *(a2 + 32) = v26;
  *(a2 + 40) = 1;
LABEL_17:
  if (v28 == 1)
  {
    result = v27;
    v27 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  if (v30 == 1)
  {
    result = v29;
    v29 = 0;
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

void sub_19D71D034(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16, WTF::StringImpl *a17, char a18)
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

void *IPC::ArgumentCoder<WebCore::ExceptionDetails,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 16));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ExceptionDetails,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v20);
  v4 = IPC::Decoder::decode<float>(a1);
  v5 = IPC::Decoder::decode<float>(a1);
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *a1;
  if (v6 <= &v7[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v6 = *(a1 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_24:
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16)
    {
      if (v6)
      {
        (*(*v16 + 16))(v16);
        v8 = *a1;
        v6 = *(a1 + 1);
        goto LABEL_27;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_27;
  }

  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_24;
  }

  v9 = *v7;
  if (v9 < 3)
  {
    v10 = v9 | 0x100;
    goto LABEL_5;
  }

LABEL_27:
  *a1 = 0;
  *(a1 + 1) = 0;
  v17 = *(a1 + 3);
  if (v17 && v6)
  {
    (*(*v17 + 16))(v17, v8);
  }

  v10 = 0;
LABEL_5:
  result = IPC::Decoder::decode<WTF::String>(a1, &v18);
  if (*a1)
  {
    if (v21)
    {
      v13 = v20;
      v20 = 0;
      if (v4 & 0x100000000) != 0 && (v5 & 0x100000000) != 0 && v10 > 0xFF && (v19)
      {
        v14 = v18;
        *a2 = v13;
        *(a2 + 8) = v4;
        *(a2 + 12) = v5;
        *(a2 + 16) = v10;
        *(a2 + 24) = v14;
        *(a2 + 32) = 1;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  if (v19)
  {
    result = v18;
    v18 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v12);
      }
    }
  }

LABEL_12:
  if (v21 == 1)
  {
    result = v20;
    v20 = 0;
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

void sub_19D71D328(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::encode(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_12;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_11;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 3)) = a2[1];
    v8 = *(result + 8);
    v9 = v8 - v7;
    if (v8 < v7)
    {
      goto LABEL_11;
    }

    v10 = *result + v7;
    *result = v10;
    *(result + 8) = v9;
    v11 = -v10 & 3 | 4;
    if (v9 < v11)
    {
      goto LABEL_12;
    }

    *(v10 + (-v10 & 3)) = a2[2];
    v12 = *(result + 8);
    v13 = v12 - v11;
    if (v12 < v11)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v14 = *result + v11;
    *result = v14;
    *(result + 8) = v13;
    v15 = -v14 & 3 | 4;
    if (v13 >= v15)
    {
      *(v14 + (-v14 & 3)) = a2[3];
      v16 = *(result + 8);
      v17 = v16 >= v15;
      v18 = v16 - v15;
      if (v17)
      {
        *result += v15;
        *(result + 8) = v18;
        return result;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 1);
  v3 = ((*(result + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *result;
  v5 = v3 - *result;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 3)
  {
    v9 = v3 + 1;
    *(result + 2) = v3 + 1;
    if (v3)
    {
      v10 = *v3 | 0x100000000;
      goto LABEL_8;
    }

    goto LABEL_39;
  }

  while (1)
  {
    v39 = result;
    v23 = a2;
    IPC::Decoder::markInvalid(result);
    result = v39;
    a2 = v23;
LABEL_39:
    v40 = result;
    v24 = a2;
    IPC::Decoder::markInvalid(result);
    result = v40;
    a2 = v24;
    v10 = 0;
    v2 = *(v40 + 1);
    v9 = *(v40 + 2);
    v4 = *v40;
LABEL_8:
    v11 = ((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v2 >= v11 - v4 && v2 - (v11 - v4) > 3)
    {
      v13 = v11 + 1;
      *(result + 2) = v11 + 1;
      if (v11)
      {
        v14 = *v11 | 0x100000000;
        goto LABEL_15;
      }
    }

    else
    {
      v41 = result;
      v33 = a2;
      IPC::Decoder::markInvalid(result);
      result = v41;
      a2 = v33;
    }

    v34 = a2;
    v42 = result;
    IPC::Decoder::markInvalid(result);
    result = v42;
    a2 = v34;
    v14 = 0;
    v2 = *(v42 + 1);
    v13 = *(v42 + 2);
    v4 = *v42;
LABEL_15:
    v15 = ((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v2 >= v15 - v4 && v2 - (v15 - v4) > 3)
    {
      v17 = v15 + 1;
      *(result + 2) = v15 + 1;
      if (v15)
      {
        v18 = *v15 | 0x100000000;
        goto LABEL_22;
      }
    }

    else
    {
      v43 = result;
      v29 = v14;
      v35 = a2;
      IPC::Decoder::markInvalid(result);
      v14 = v29;
      a2 = v35;
      result = v43;
    }

    v30 = v14;
    v36 = a2;
    v44 = result;
    IPC::Decoder::markInvalid(result);
    v14 = v30;
    a2 = v36;
    result = v44;
    v18 = 0;
    v2 = *(v44 + 1);
    v17 = *(v44 + 2);
    v4 = *v44;
LABEL_22:
    v19 = ((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v6 = v2 >= v19 - v4;
    v20 = v2 - (v19 - v4);
    if (v6 && v20 > 3)
    {
      *(result + 2) = v19 + 1;
      if (v19)
      {
        v22 = *v19 | 0x100000000;
        goto LABEL_29;
      }
    }

    else
    {
      v45 = result;
      v31 = v14;
      v37 = a2;
      v27 = v18;
      IPC::Decoder::markInvalid(result);
      v18 = v27;
      v14 = v31;
      result = v45;
      a2 = v37;
    }

    v28 = v18;
    v32 = v14;
    v38 = a2;
    v26 = v10;
    v25 = result;
    result = IPC::Decoder::markInvalid(result);
    v18 = v28;
    v14 = v32;
    a2 = v38;
    v22 = 0;
    v4 = *v25;
    v10 = v26;
LABEL_29:
    if (!v4)
    {
      break;
    }

    if ((v10 & 0x100000000) != 0 && (v14 & 0x100000000) != 0 && (v18 & 0x100000000) != 0 && (v22 & 0x100000000) != 0)
    {
      *a2 = v10;
      *(a2 + 4) = v14;
      LOBYTE(v4) = 1;
      *(a2 + 8) = v18;
      *(a2 + 12) = v22;
      goto LABEL_35;
    }

    __break(1u);
  }

  *a2 = 0;
LABEL_35:
  *(a2 + 16) = v4;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::RectEdges<BOOL>,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 1);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 2);

  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 3);
}

unint64_t IPC::ArgumentCoder<WebCore::RectEdges<BOOL>,void>::decode(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    goto LABEL_36;
  }

  v4 = v2 + 1;
  a1[2] = v2 + 1;
  if (!v2)
  {
    v45 = a1;
    goto LABEL_39;
  }

  v5 = *v2;
  if (v5 < 2)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v44 = *v2;
  v45 = a1;
  while (1)
  {
    *v45 = 0;
    v45[1] = 0;
    v24 = v45[3];
    if (!v24 || !v1)
    {
      v43 = 0;
      v25 = 0;
      v3 = 0;
LABEL_45:
      *v45 = 0;
      v45[1] = 0;
      v26 = v45[3];
      if (v26 && v25)
      {
        (*(*v26 + 16))(v26, v3, v25);
        v41 = 0;
        v3 = *v45;
        v1 = v45[1];
      }

      else
      {
        v1 = 0;
        v3 = 0;
        v41 = 0;
      }

      goto LABEL_48;
    }

    (*(*v24 + 16))(v24, v3);
    v6 = 0;
    a1 = v45;
    v3 = *v45;
    v1 = v45[1];
    v4 = v45[2];
    v5 = v44;
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
      LOBYTE(v43) = v6;
      HIDWORD(v43) = v7;
      v25 = 0;
      v34 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v45 = a1;
      if (v34 && v1)
      {
        (*(*v34 + 16))(v34);
        v3 = *v45;
        v25 = v45[1];
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_45;
    }

    v8 = v4 + 1;
    a1[2] = v4 + 1;
    if (!v4)
    {
      LOBYTE(v43) = v6;
      HIDWORD(v43) = v7;
      v45 = a1;
      v25 = v1;
      goto LABEL_45;
    }

    v9 = *v4;
    if (v9 < 2)
    {
      v10 = 1;
      goto LABEL_12;
    }

    v41 = *v4;
    LOBYTE(v43) = v6;
    HIDWORD(v43) = v7;
    v45 = a1;
LABEL_48:
    *v45 = 0;
    v45[1] = 0;
    v27 = v45[3];
    if (!v27 || !v1)
    {
      v42 = 0;
      v40 = 0;
      v28 = 0;
      v3 = 0;
LABEL_50:
      *v45 = 0;
      v45[1] = 0;
      v29 = v45[3];
      if (v29 && v28)
      {
        (*(*v29 + 16))(v29, v3, v28);
        v39 = 0;
        v3 = *v45;
        v1 = v45[1];
      }

      else
      {
        v1 = 0;
        v3 = 0;
        v39 = 0;
      }

      goto LABEL_53;
    }

    (*(*v27 + 16))(v27, v3);
    v10 = 0;
    a1 = v45;
    v3 = *v45;
    v1 = v45[1];
    v8 = v45[2];
    LOBYTE(v6) = v43;
    v7 = HIDWORD(v43);
    v9 = v41;
LABEL_12:
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v1 <= &v8[-v3])
    {
      v42 = v11;
      v40 = v10;
      LOBYTE(v43) = v6;
      HIDWORD(v43) = v7;
      v28 = 0;
      v35 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v45 = a1;
      if (v35 && v1)
      {
        (*(*v35 + 16))(v35);
        v3 = *v45;
        v28 = v45[1];
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_50;
    }

    v12 = v8 + 1;
    a1[2] = v8 + 1;
    if (!v8)
    {
      v42 = v11;
      v40 = v10;
      LOBYTE(v43) = v6;
      HIDWORD(v43) = v7;
      v45 = a1;
      v28 = v1;
      goto LABEL_50;
    }

    v13 = *v8;
    if (v13 < 2)
    {
      v14 = 1;
      goto LABEL_19;
    }

    v39 = *v8;
    v42 = v11;
    v40 = v10;
    LOBYTE(v43) = v6;
    HIDWORD(v43) = v7;
    v45 = a1;
LABEL_53:
    *v45 = 0;
    v45[1] = 0;
    v30 = v45[3];
    if (!v30 || !v1)
    {
      v38 = 0;
      v31 = 0;
      v3 = 0;
LABEL_55:
      *v45 = 0;
      v45[1] = 0;
      v32 = v45[3];
      if (v32 && v31)
      {
        (*(*v32 + 16))(v32, v3, v31);
        v37 = 0;
        v3 = *v45;
        v1 = v45[1];
      }

      else
      {
        v1 = 0;
        v3 = 0;
        v37 = 0;
      }

      goto LABEL_57;
    }

    (*(*v30 + 16))(v30, v3);
    v14 = 0;
    a1 = v45;
    v3 = *v45;
    v1 = v45[1];
    v12 = v45[2];
    LOBYTE(v6) = v43;
    v7 = HIDWORD(v43);
    v13 = v39;
    LOBYTE(v10) = v40;
    v11 = v42;
LABEL_19:
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v1 <= &v12[-v3])
    {
      LOBYTE(v38) = v14;
      HIDWORD(v38) = v15;
      v42 = v11;
      v40 = v10;
      LOBYTE(v43) = v6;
      HIDWORD(v43) = v7;
      v31 = 0;
      v36 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v45 = a1;
      if (v36 && v1)
      {
        (*(*v36 + 16))(v36);
        v3 = *v45;
        v31 = v45[1];
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_55;
    }

    a1[2] = v12 + 1;
    if (!v12)
    {
      LOBYTE(v38) = v14;
      HIDWORD(v38) = v15;
      v42 = v11;
      v40 = v10;
      LOBYTE(v43) = v6;
      HIDWORD(v43) = v7;
      v45 = a1;
      v31 = v1;
      goto LABEL_55;
    }

    v16 = *v12;
    if (v16 < 2)
    {
      v17 = 1;
      if (!v3)
      {
        goto LABEL_58;
      }

      goto LABEL_26;
    }

    v37 = *v12;
    LOBYTE(v38) = v14;
    HIDWORD(v38) = v15;
    v42 = v11;
    v40 = v10;
    LOBYTE(v43) = v6;
    HIDWORD(v43) = v7;
    v45 = a1;
LABEL_57:
    *v45 = 0;
    v45[1] = 0;
    v33 = v45[3];
    if (!v33 || !v1 || (a1 = (*(*v33 + 16))(v33, v3), v17 = 0, LOBYTE(v6) = v43, v7 = HIDWORD(v43), v15 = HIDWORD(v38), LOBYTE(v10) = v40, v11 = v42, v16 = v37, LOBYTE(v14) = v38, !*v45))
    {
LABEL_58:
      v20 = 0;
      v19 = 0;
      return v19 | (v20 << 32);
    }

LABEL_26:
    if (v6 & 1) != 0 && (v10 & 1) != 0 && (v14 & 1) != 0 && (v17)
    {
      break;
    }

    __break(1u);
LABEL_36:
    *a1 = 0;
    a1[1] = 0;
    v45 = a1;
    v22 = a1[3];
    if (!v22)
    {
      v1 = 0;
LABEL_38:
      v3 = 0;
      goto LABEL_39;
    }

    if (!v1)
    {
      goto LABEL_38;
    }

    (*(*v22 + 16))(v22);
    v3 = *v45;
    v1 = v45[1];
LABEL_39:
    *v45 = 0;
    v45[1] = 0;
    v23 = v45[3];
    if (!v23)
    {
      v1 = 0;
      goto LABEL_41;
    }

    if (v1)
    {
      (*(*v23 + 16))(v23, v3);
      v44 = 0;
      v3 = *v45;
      v1 = v45[1];
    }

    else
    {
LABEL_41:
      v3 = 0;
      v44 = 0;
    }
  }

  if (v15)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  v19 = v7 | ((v18 | ((v16 != 0) << 16) | v11) << 8);
  v20 = 1;
  return v19 | (v20 << 32);
}

uint64_t IPC::ArgumentCoder<WebCore::RectEdges<WebCore::RubberBandingBehavior>,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[2]);
  v4 = a2[3];

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

unint64_t IPC::ArgumentCoder<WebCore::RectEdges<WebCore::RubberBandingBehavior>,void>::decode(uint64_t *a1)
{
  v2 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  v3 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  v4 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  v5 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_9;
  }

  if ((v2 & 0x100) == 0 || (v3 & 0x100) == 0 || (v4 & 0x100) == 0 || (v5 & 0x100) == 0)
  {
    __break(1u);
LABEL_9:
    v7 = 0;
    return v6 | (v7 << 32);
  }

  LODWORD(v6) = (v4 << 16) | (v5 << 24) | (v3 << 8) | v2;
  v7 = 1;
  return v6 | (v7 << 32);
}

WTF *IPC::ArgumentCoder<WebCore::Path,void>::encode(IPC::Encoder *a1, WebCore::Path *this)
{
  WebCore::Path::segments(&v5, this);
  IPC::VectorArgumentCoder<false,WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v5);
  result = v5;
  if (v5)
  {
    v5 = 0;
    v6 = 0;
    return WTF::fastFree(result, v3);
  }

  return result;
}

void sub_19D71DE18(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<WebCore::Path,void>::encode(mpark *a1, WebCore::Path *this)
{
  result = WebCore::Path::segments(&v14, this);
  v8 = -*a1;
  v9 = v8 & 7 | 8;
  if (*(a1 + 1) < v9)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
LABEL_5:
    v2 = v14;
    if (v16)
    {
      v3 = 56 * v16;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  *(*a1 + (v8 & 7)) = v16;
  v10 = *(a1 + 1);
  v11 = v10 >= v9;
  v12 = v10 - v9;
  if (v11)
  {
    *a1 += v9;
    *(a1 + 1) = v12;
    goto LABEL_5;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  *a1 = 0;
  for (*(a1 + 1) = 0; ; *(a1 + 1) = v13 - 1)
  {
    result = IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&>(a1, v2, v7);
    v2 += 56;
    v3 -= 56;
    if (!v3)
    {
      break;
    }

LABEL_7:
    v7 = v2[52];
    if (!*(a1 + 1))
    {
      goto LABEL_16;
    }

    **a1 = v7;
    v13 = *(a1 + 1);
    if (!v13)
    {
      goto LABEL_15;
    }

    ++*a1;
  }

  v2 = v14;
LABEL_12:
  if (v2)
  {
    v14 = 0;
    v15 = 0;
    return WTF::fastFree(v2, v6);
  }

  return result;
}

void sub_19D71DF3C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::ArgumentCoder<WebCore::Path,void>::decode@<X0>(IPC::Decoder *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  result = IPC::VectorArgumentCoder<false,WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2, &v9);
  if ((v11 & 1) == 0)
  {
    result = IPC::Decoder::markInvalid(a1);
  }

  if (*a1)
  {
    if ((v11 & 1) == 0)
    {
      __break(1u);
    }

    result = MEMORY[0x19EB0E620](v12, &v9);
    *a3 = 0;
    *(a3 + 56) = -1;
    v7 = v14;
    if (v14 == 2)
    {
      *a3 = *&v12[0];
    }

    else if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_8;
      }

      v8 = v12[1];
      *a3 = v12[0];
      *(a3 + 16) = v8;
      *(a3 + 32) = v12[2];
      *(a3 + 48) = v13;
    }

    *(a3 + 56) = v7;
LABEL_8:
    *(a3 + 64) = 1;
    goto LABEL_9;
  }

  *a3 = 0;
  *(a3 + 64) = 0;
LABEL_9:
  if (v11 == 1)
  {
    result = v9;
    if (v9)
    {
      v9 = 0;
      v10 = 0;
      return WTF::fastFree(result, v6);
    }
  }

  return result;
}

void sub_19D71E07C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, int a11, char a12)
{
  if (a12 == 1)
  {
    if (a9)
    {
      WTF::fastFree(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ViewportArguments,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 28));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 36));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 37));
}

void *IPC::ArgumentCoder<WebCore::ViewportArguments,void>::decode@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *result;
  if (v2 <= &v3[-*result])
  {
    v146 = result;
    v160 = a2;
    *result = 0;
    result[1] = 0;
    v40 = result[3];
    if (v40)
    {
      if (v2)
      {
        (*(*v40 + 16))(v40);
        v4 = *v146;
        v2 = v146[1];
LABEL_91:
        *v146 = 0;
        v146[1] = 0;
        v41 = v146[3];
        if (v41)
        {
          if (v2)
          {
            (*(*v41 + 16))(v41, v4);
            result = v146;
            a2 = v160;
            v4 = *v146;
            v2 = v146[1];
LABEL_94:
            *result = 0;
            result[1] = 0;
            v42 = result[3];
            if (v42)
            {
              v147 = result;
              v161 = a2;
              if (v2)
              {
                (*(*v42 + 16))(v42, v4);
                v6 = 0;
                result = v147;
                a2 = v161;
                v4 = *v147;
                v2 = v147[1];
              }

              else
              {
                v4 = 0;
                v6 = 0;
              }
            }

            else
            {
              v2 = 0;
              v4 = 0;
              v6 = 0;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v2 = 0;
        }

        v4 = 0;
        result = v146;
        a2 = v160;
        goto LABEL_94;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    goto LABEL_91;
  }

  result[2] = v3 + 1;
  if (!v3)
  {
    v146 = result;
    v160 = a2;
    goto LABEL_91;
  }

  v5 = *v3;
  if (v5 >= 3)
  {
    goto LABEL_94;
  }

  v6 = v5 | 0x100;
LABEL_5:
  v7 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 >= v7 - v4 && v2 - (v7 - v4) > 3)
  {
    result[2] = v7 + 1;
    if (v7)
    {
      v9 = *v7 | 0x100000000;
      v10 = v4;
      goto LABEL_12;
    }

    v135 = v6;
    v149 = result;
    v163 = a2;
  }

  else
  {
    v135 = v6;
    v149 = result;
    v163 = a2;
    *result = 0;
    result[1] = 0;
    v43 = result[3];
    if (!v43)
    {
      v2 = 0;
LABEL_101:
      v4 = 0;
      goto LABEL_125;
    }

    if (!v2)
    {
      goto LABEL_101;
    }

    (*(*v43 + 16))(v43);
    v4 = *v149;
    v2 = v149[1];
  }

LABEL_125:
  *v149 = 0;
  v149[1] = 0;
  v51 = v149[3];
  if (v51)
  {
    if (v2)
    {
      (*(*v51 + 16))(v51, v4);
      v9 = 0;
      result = v149;
      a2 = v163;
      v10 = *v149;
      v2 = v149[1];
      v4 = *v149;
      goto LABEL_128;
    }

    v10 = 0;
  }

  else
  {
    v10 = 0;
    v2 = 0;
  }

  v4 = 0;
  v9 = 0;
  result = v149;
  a2 = v163;
LABEL_128:
  v6 = v135;
LABEL_12:
  v11 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v11 - v4 || v2 - (v11 - v4) <= 3)
  {
    v124 = v9;
    v136 = v6;
    v150 = result;
    v164 = a2;
    *result = 0;
    result[1] = 0;
    v44 = result[3];
    if (!v44)
    {
      v2 = 0;
LABEL_104:
      v10 = 0;
      goto LABEL_130;
    }

    if (!v2)
    {
      goto LABEL_104;
    }

    (*(*v44 + 16))(v44, v10);
    v10 = *v150;
    v2 = v150[1];
LABEL_130:
    *v150 = 0;
    v150[1] = 0;
    v52 = v150[3];
    if (v52)
    {
      if (v2)
      {
        (*(*v52 + 16))(v52, v10);
        v13 = 0;
        result = v150;
        a2 = v164;
        v10 = *v150;
        v2 = v150[1];
        v4 = *v150;
        goto LABEL_133;
      }

      v10 = 0;
    }

    else
    {
      v10 = 0;
      v2 = 0;
    }

    v4 = 0;
    v13 = 0;
    result = v150;
    a2 = v164;
LABEL_133:
    v6 = v136;
    v9 = v124;
    goto LABEL_19;
  }

  result[2] = v11 + 1;
  if (!v11)
  {
    v124 = v9;
    v136 = v6;
    v150 = result;
    v164 = a2;
    goto LABEL_130;
  }

  v13 = *v11 | 0x100000000;
LABEL_19:
  v14 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v14 - v4 || v2 - (v14 - v4) <= 3)
  {
    v114 = v13;
    v125 = v9;
    v137 = v6;
    v151 = result;
    v165 = a2;
    *result = 0;
    result[1] = 0;
    v45 = result[3];
    if (v45)
    {
      if (v2)
      {
        (*(*v45 + 16))(v45, v10);
        v10 = *v151;
        v2 = v151[1];
LABEL_135:
        *v151 = 0;
        v151[1] = 0;
        v53 = v151[3];
        if (v53)
        {
          if (v2)
          {
            (*(*v53 + 16))(v53, v10);
            v15 = 0;
            result = v151;
            a2 = v165;
            v10 = *v151;
            v2 = v151[1];
            v4 = *v151;
            goto LABEL_138;
          }

          v10 = 0;
        }

        else
        {
          v10 = 0;
          v2 = 0;
        }

        v4 = 0;
        v15 = 0;
        result = v151;
        a2 = v165;
LABEL_138:
        v6 = v137;
        v13 = v114;
        v9 = v125;
        goto LABEL_23;
      }
    }

    else
    {
      v2 = 0;
    }

    v10 = 0;
    goto LABEL_135;
  }

  result[2] = v14 + 1;
  if (!v14)
  {
    v114 = v13;
    v125 = v9;
    v137 = v6;
    v151 = result;
    v165 = a2;
    goto LABEL_135;
  }

  v15 = *v14 | 0x100000000;
LABEL_23:
  v16 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v16 - v4 || v2 - (v16 - v4) <= 3)
  {
    v105 = v15;
    v115 = v13;
    v126 = v9;
    v138 = v6;
    v152 = result;
    v166 = a2;
    *result = 0;
    result[1] = 0;
    v46 = result[3];
    if (v46)
    {
      if (v2)
      {
        (*(*v46 + 16))(v46, v10);
        v10 = *v152;
        v2 = v152[1];
LABEL_140:
        *v152 = 0;
        v152[1] = 0;
        v54 = v152[3];
        if (v54)
        {
          if (v2)
          {
            (*(*v54 + 16))(v54, v10);
            v17 = 0;
            result = v152;
            a2 = v166;
            v10 = *v152;
            v2 = v152[1];
            v4 = *v152;
            goto LABEL_143;
          }

          v10 = 0;
        }

        else
        {
          v10 = 0;
          v2 = 0;
        }

        v4 = 0;
        v17 = 0;
        result = v152;
        a2 = v166;
LABEL_143:
        v6 = v138;
        v13 = v115;
        v9 = v126;
        v15 = v105;
        goto LABEL_27;
      }
    }

    else
    {
      v2 = 0;
    }

    v10 = 0;
    goto LABEL_140;
  }

  result[2] = v16 + 1;
  if (!v16)
  {
    v105 = v15;
    v115 = v13;
    v126 = v9;
    v138 = v6;
    v152 = result;
    v166 = a2;
    goto LABEL_140;
  }

  v17 = *v16 | 0x100000000;
LABEL_27:
  v18 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v18 - v4 || v2 - (v18 - v4) <= 3)
  {
    v97 = v17;
    v106 = v15;
    v116 = v13;
    v127 = v9;
    v139 = v6;
    v153 = result;
    v167 = a2;
    *result = 0;
    result[1] = 0;
    v47 = result[3];
    if (v47)
    {
      if (v2)
      {
        (*(*v47 + 16))(v47, v10);
        v10 = *v153;
        v2 = v153[1];
LABEL_145:
        *v153 = 0;
        v153[1] = 0;
        v55 = v153[3];
        if (v55)
        {
          if (v2)
          {
            (*(*v55 + 16))(v55, v10);
            v19 = 0;
            result = v153;
            a2 = v167;
            v10 = *v153;
            v2 = v153[1];
            v4 = *v153;
            goto LABEL_148;
          }

          v10 = 0;
        }

        else
        {
          v10 = 0;
          v2 = 0;
        }

        v4 = 0;
        v19 = 0;
        result = v153;
        a2 = v167;
LABEL_148:
        v6 = v139;
        v13 = v116;
        v9 = v127;
        v17 = v97;
        v15 = v106;
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0;
    }

    v10 = 0;
    goto LABEL_145;
  }

  result[2] = v18 + 1;
  if (!v18)
  {
    v97 = v17;
    v106 = v15;
    v116 = v13;
    v127 = v9;
    v139 = v6;
    v153 = result;
    v167 = a2;
    goto LABEL_145;
  }

  v19 = *v18 | 0x100000000;
LABEL_31:
  v20 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v20 - v4 || v2 - (v20 - v4) <= 3)
  {
    v90 = v19;
    v98 = v17;
    v107 = v15;
    v117 = v13;
    v128 = v9;
    v140 = v6;
    v154 = result;
    v168 = a2;
    *result = 0;
    result[1] = 0;
    v48 = result[3];
    if (v48)
    {
      if (v2)
      {
        (*(*v48 + 16))(v48, v10);
        v10 = *v154;
        v2 = v154[1];
LABEL_150:
        *v154 = 0;
        v154[1] = 0;
        v56 = v154[3];
        if (v56)
        {
          if (v2)
          {
            (*(*v56 + 16))(v56, v10);
            v21 = 0;
            result = v154;
            a2 = v168;
            v10 = *v154;
            v2 = v154[1];
            v4 = *v154;
            goto LABEL_153;
          }

          v10 = 0;
        }

        else
        {
          v10 = 0;
          v2 = 0;
        }

        v4 = 0;
        v21 = 0;
        result = v154;
        a2 = v168;
LABEL_153:
        v6 = v140;
        v13 = v117;
        v9 = v128;
        v17 = v98;
        v15 = v107;
        v19 = v90;
        goto LABEL_35;
      }
    }

    else
    {
      v2 = 0;
    }

    v10 = 0;
    goto LABEL_150;
  }

  result[2] = v20 + 1;
  if (!v20)
  {
    v90 = v19;
    v98 = v17;
    v107 = v15;
    v117 = v13;
    v128 = v9;
    v140 = v6;
    v154 = result;
    v168 = a2;
    goto LABEL_150;
  }

  v21 = *v20 | 0x100000000;
LABEL_35:
  v22 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v22 - v4 || v2 - (v22 - v4) <= 3)
  {
    v84 = v21;
    v91 = v19;
    v99 = v17;
    v108 = v15;
    v118 = v13;
    v129 = v9;
    v141 = v6;
    v155 = result;
    v169 = a2;
    *result = 0;
    result[1] = 0;
    v49 = result[3];
    if (v49)
    {
      if (v2)
      {
        (*(*v49 + 16))(v49, v10);
        v10 = *v155;
        v2 = v155[1];
LABEL_155:
        *v155 = 0;
        v155[1] = 0;
        v57 = v155[3];
        if (v57)
        {
          if (v2)
          {
            (*(*v57 + 16))(v57, v10);
            v23 = 0;
            result = v155;
            a2 = v169;
            v10 = *v155;
            v2 = v155[1];
            v4 = *v155;
            goto LABEL_158;
          }

          v10 = 0;
        }

        else
        {
          v10 = 0;
          v2 = 0;
        }

        v4 = 0;
        v23 = 0;
        result = v155;
        a2 = v169;
LABEL_158:
        v6 = v141;
        v13 = v118;
        v9 = v129;
        v17 = v99;
        v15 = v108;
        v21 = v84;
        v19 = v91;
        goto LABEL_39;
      }
    }

    else
    {
      v2 = 0;
    }

    v10 = 0;
    goto LABEL_155;
  }

  result[2] = v22 + 1;
  if (!v22)
  {
    v84 = v21;
    v91 = v19;
    v99 = v17;
    v108 = v15;
    v118 = v13;
    v129 = v9;
    v141 = v6;
    v155 = result;
    v169 = a2;
    goto LABEL_155;
  }

  v23 = *v22 | 0x100000000;
LABEL_39:
  v24 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v2 < v24 - v4 || v2 - (v24 - v4) <= 3)
  {
    v78 = v23;
    v83 = v21;
    v89 = v19;
    v96 = v17;
    v104 = v15;
    v113 = v13;
    v123 = v9;
    v134 = v6;
    v148 = result;
    v162 = a2;
    *result = 0;
    result[1] = 0;
    v50 = result[3];
    if (v50)
    {
      if (v2)
      {
        (*(*v50 + 16))(v50, v10);
        v10 = *v148;
        v2 = v148[1];
        goto LABEL_160;
      }
    }

    else
    {
      v2 = 0;
    }

    v10 = 0;
    goto LABEL_160;
  }

  result[2] = v24 + 1;
  if (v24)
  {
    v25 = *v24 | 0x100000000;
    goto LABEL_43;
  }

  v78 = v23;
  v83 = v21;
  v89 = v19;
  v96 = v17;
  v104 = v15;
  v113 = v13;
  v123 = v9;
  v134 = v6;
  v148 = result;
  v162 = a2;
LABEL_160:
  *v148 = 0;
  v148[1] = 0;
  v58 = v148[3];
  if (!v58)
  {
    v4 = 0;
    v68 = 0;
    v73 = 0;
    v2 = 0;
    goto LABEL_162;
  }

  if (!v2)
  {
    v4 = 0;
    v68 = 0;
    v73 = 0;
LABEL_162:
    *v148 = 0;
    v148[1] = 0;
    v59 = v148[3];
    if (v59)
    {
      if (v2)
      {
        (*(*v59 + 16))(v59, v4);
        v4 = *v148;
        v2 = v148[1];
LABEL_165:
        *v148 = 0;
        v148[1] = 0;
        v60 = v148[3];
        if (v60)
        {
          if (v2)
          {
            (*(*v60 + 16))(v60, v4);
            result = v148;
            a2 = v162;
            v2 = v148[1];
            goto LABEL_168;
          }
        }

        else
        {
          v2 = 0;
        }

        result = v148;
        a2 = v162;
LABEL_168:
        v6 = v134;
        v13 = v113;
        v9 = v123;
        v17 = v96;
        v15 = v104;
        v21 = v83;
        v19 = v89;
        v25 = v73;
        v23 = v78;
        v29 = v68;
        goto LABEL_70;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    goto LABEL_165;
  }

  (*(*v58 + 16))(v58, v10);
  v25 = 0;
  result = v148;
  a2 = v162;
  v4 = *v148;
  v2 = v148[1];
  v6 = v134;
  v13 = v113;
  v9 = v123;
  v17 = v96;
  v15 = v104;
  v21 = v83;
  v19 = v89;
  v23 = v78;
LABEL_43:
  v26 = result[2];
  if (v2 <= &v26[-v4])
  {
    v78 = v23;
    v83 = v21;
    v89 = v19;
    v96 = v17;
    v104 = v15;
    v113 = v13;
    v123 = v9;
    v134 = v6;
    v148 = result;
    v162 = a2;
    v68 = v25;
    v73 = v25;
    goto LABEL_162;
  }

  result[2] = v26 + 1;
  if (!v26)
  {
    v78 = v23;
    v83 = v21;
    v89 = v19;
    v96 = v17;
    v104 = v15;
    v113 = v13;
    v123 = v9;
    v134 = v6;
    v148 = result;
    v162 = a2;
    v68 = v25;
    v73 = v25;
    goto LABEL_165;
  }

  v27 = *v26;
  if (v27 >= 3)
  {
    goto LABEL_69;
  }

  v28 = v27 | 0x100;
  v29 = v25;
LABEL_47:
  v30 = result[2];
  if (v2 > &v30[-v4])
  {
    result[2] = v30 + 1;
    if (v30)
    {
      v31 = *v30;
      if (v31 < 2)
      {
        v32 = 1;
        goto LABEL_51;
      }

      goto LABEL_76;
    }

    goto LABEL_74;
  }

  while (1)
  {
    *result = 0;
    result[1] = 0;
    v36 = result[3];
    if (v36)
    {
      v63 = v28;
      v67 = v29;
      v72 = v25;
      v77 = v23;
      v82 = v21;
      v88 = v19;
      v95 = v17;
      v103 = v15;
      v112 = v13;
      v122 = v9;
      v133 = v6;
      v145 = result;
      v159 = a2;
      if (v2)
      {
        (*(*v36 + 16))(v36, v4);
        result = v145;
        a2 = v159;
        v4 = *v145;
        v2 = v145[1];
      }

      else
      {
        v4 = 0;
      }

      v6 = v133;
      v13 = v112;
      v9 = v122;
      v17 = v95;
      v15 = v103;
      v21 = v82;
      v19 = v88;
      v25 = v72;
      v23 = v77;
      v29 = v67;
      v28 = v63;
    }

    else
    {
      v2 = 0;
      v4 = 0;
    }

LABEL_74:
    *result = 0;
    result[1] = 0;
    v37 = result[3];
    if (v37)
    {
      v62 = v28;
      v66 = v29;
      v71 = v25;
      v76 = v23;
      v81 = v21;
      v87 = v19;
      v94 = v17;
      v102 = v15;
      v111 = v13;
      v121 = v9;
      v132 = v6;
      v144 = result;
      v158 = a2;
      if (v2)
      {
        (*(*v37 + 16))(v37, v4);
        v31 = 0;
        result = v144;
        a2 = v158;
        v4 = *v144;
        v2 = v144[1];
      }

      else
      {
        v4 = 0;
        v31 = 0;
      }

      v6 = v132;
      v13 = v111;
      v9 = v121;
      v17 = v94;
      v15 = v102;
      v21 = v81;
      v19 = v87;
      v25 = v71;
      v23 = v76;
      v29 = v66;
      v28 = v62;
    }

    else
    {
      v2 = 0;
      v4 = 0;
      v31 = 0;
    }

LABEL_76:
    *result = 0;
    result[1] = 0;
    v38 = result[3];
    if (!v38 || !v2)
    {
      break;
    }

    v61 = v28;
    v143 = v31;
    v39 = result;
    v157 = a2;
    v131 = v6;
    v110 = v13;
    v120 = v9;
    v93 = v17;
    v101 = v15;
    v80 = v21;
    v86 = v19;
    v70 = v25;
    v75 = v23;
    v65 = v29;
    result = (*(*v38 + 16))(v38, v4);
    v6 = v131;
    v31 = v143;
    v28 = v61;
    v29 = v65;
    v25 = v70;
    v23 = v75;
    v21 = v80;
    v19 = v86;
    v17 = v93;
    v15 = v101;
    v13 = v110;
    v9 = v120;
    a2 = v157;
    v32 = 0;
    v4 = *v39;
LABEL_51:
    v33 = v31 ? v32 : 0;
    if (!v4)
    {
      break;
    }

    if (v6 > 0xFF && (v9 & 0x100000000) != 0 && (v13 & 0x100000000) != 0 && (v15 & 0x100000000) != 0 && (v17 & 0x100000000) != 0 && (v19 & 0x100000000) != 0 && (v21 & 0x100000000) != 0 && (v23 & 0x100000000) != 0 && (v29 & 0x100000000) != 0 && v28 > 0xFF && (v32 & 1) != 0)
    {
      *a2 = v6;
      *(a2 + 4) = v9;
      *(a2 + 8) = v13;
      *(a2 + 12) = v15;
      *(a2 + 16) = v17;
      *(a2 + 20) = v19;
      *(a2 + 24) = v21;
      *(a2 + 28) = v23;
      *(a2 + 32) = v25;
      *(a2 + 36) = v28;
      v34 = 1;
      *(a2 + 37) = v33;
      goto LABEL_67;
    }

    __break(1u);
LABEL_69:
    v29 = v25;
LABEL_70:
    *result = 0;
    result[1] = 0;
    v35 = result[3];
    if (v35)
    {
      v64 = v29;
      v69 = v25;
      v74 = v23;
      v79 = v21;
      v85 = v19;
      v92 = v17;
      v100 = v15;
      v109 = v13;
      v119 = v9;
      v130 = v6;
      v142 = result;
      v156 = a2;
      if (v2)
      {
        (*(*v35 + 16))(v35);
        v28 = 0;
        result = v142;
        a2 = v156;
        v4 = *v142;
        v2 = v142[1];
        v6 = v130;
        v13 = v109;
        v9 = v119;
        v17 = v92;
        v15 = v100;
        v21 = v79;
        v19 = v85;
        v25 = v69;
        v23 = v74;
        v29 = v64;
        goto LABEL_47;
      }

      v4 = 0;
      v28 = 0;
    }

    else
    {
      v4 = 0;
      v28 = 0;
      v2 = 0;
    }
  }

  v34 = 0;
  *a2 = 0;
LABEL_67:
  *(a2 + 40) = v34;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ElementContext,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::UUID>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::UUID>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::UUID>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::UUID>>> const&>(a1, (a2 + 32));

  return IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 64));
}

uint64_t IPC::ArgumentCoder<WebCore::ElementContext,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v22 = *a1;
    v23 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (v24 && v23 != 0)
    {
      (*(*v24 + 16))(v24, v22);
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v9 = result;
  if ((v8 & 1) == 0)
  {
    v20 = *a1;
    v19 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v19)
      {
        v21 = v8;
        result = (*(*result + 16))(result, v20);
        v8 = v21;
      }
    }
  }

  v10 = *a1;
  if (*a1)
  {
    if ((v6 & 1) == 0 || (v8 & 1) == 0)
    {
      goto LABEL_14;
    }

    v11 = v4 & 0xFFFFFFFFFFFFFF00;
    v12 = v4;
  }

  else
  {
    v17 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18 && v17)
    {
      (*(*v18 + 16))(v18, 0);
    }

    v12 = 0;
    v11 = 0;
  }

  v13 = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a1);
  v15 = v14;
  IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::UUID>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::UUID>>>>(v27, a1);
  result = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a1);
  if (!*a1)
  {
LABEL_15:
    *a2 = 0;
    *(a2 + 80) = 0;
    return result;
  }

  if (!v10 || (v15 & 1) == 0 || (v28 & 1) == 0 || (*&v26[8] = v27[0], *&v26[24] = v27[1], (v16 & 1) == 0))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *a2 = v11 | v12;
  *(a2 + 8) = v9;
  *(a2 + 16) = v13;
  *(a2 + 24) = *v26;
  *(a2 + 40) = *&v26[16];
  *(a2 + 56) = *&v26[32];
  *(a2 + 64) = result;
  *(a2 + 80) = 1;
  return result;
}

uint64_t IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(IPC::Decoder *a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8)
    {
      if (v2)
      {
        (*(*v8 + 16))(v8);
        v2 = *(a1 + 1);
      }
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_10;
  }

  *(a1 + 2) = v3 + 1;
  if (!v3)
  {
LABEL_10:
    *a1 = 0;
    *(a1 + 1) = 0;
    v9 = *(a1 + 3);
    if (v9)
    {
      if (v2)
      {
        (*(*v9 + 16))(v9);
        v4 = *a1;
        v2 = *(a1 + 1);
        goto LABEL_13;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
LABEL_13:
    *a1 = 0;
    *(a1 + 1) = 0;
    v10 = *(a1 + 3);
    if (v10 && v2)
    {
      (*(*v10 + 16))(v10, v4);
    }

LABEL_14:
    v11 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
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

  v5 = *v3;
  if (v5 >= 2)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    return 0;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t *a1)
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

    goto LABEL_10;
  }

  a1[2] = (v3 + 1);
  if (!v3)
  {
LABEL_10:
    *a1 = 0;
    a1[1] = 0;
    v9 = a1[3];
    if (v9)
    {
      if (v2)
      {
        (*(*v9 + 16))(v9);
        v4 = *a1;
        v2 = a1[1];
        goto LABEL_13;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
LABEL_13:
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10 && v2)
    {
      (*(*v10 + 16))(v10, v4);
    }

LABEL_14:
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

  v5 = *v3;
  if (v5 >= 2)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    return 0;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::SystemPreviewInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::ElementContext,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 80));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 96));
}

unint64_t IPC::ArgumentCoder<WebCore::SystemPreviewInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ElementContext>(a1, v25);
  result = IPC::Decoder::decode<WebCore::IntRect>(a1, &v17);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      if (v5)
      {
        (*(*v14 + 16))(v14);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v5)
      {
        (*(*v15 + 16))(v15);
        v16 = 0;
        v7 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_20;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    v16 = 0;
    goto LABEL_20;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = *v6;
  if (v8 < 2)
  {
    v9 = 1;
    goto LABEL_5;
  }

  v16 = *v6;
LABEL_20:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (!result || !v5)
  {
LABEL_21:
    *a2 = 0;
    *(a2 + 112) = 0;
    return result;
  }

  result = (*(*result + 16))(result, v7);
  v9 = 0;
  v7 = *a1;
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

  if (!v7)
  {
    goto LABEL_21;
  }

  if ((v27 & 1) == 0 || (v21 = v25[2], v22 = v25[3], *&v23 = v26, v19 = v25[0], v20 = v25[1], (v18 & 1) == 0) || (v24 = v17, (v9 & 1) == 0))
  {
    __break(1u);
  }

  v11 = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v11;
  v12 = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v12;
  v13 = v20;
  *a2 = v19;
  *(a2 + 16) = v13;
  *(a2 + 96) = v10;
  *(a2 + 112) = 1;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ResourceRequestBase::RequestData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc> const&>(a1, a2 + 96);
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc> const&>(a1, a2 + 112);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 128);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 144));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 145));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 146));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 147));
  v12 = (*(a2 + 148) & 2) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v12);
  v11 = *(a2 + 148) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v11);
  v10 = (*(a2 + 148) & 4) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v10);
  v9 = (*(a2 + 148) & 8) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v9);
  v8 = (*(a2 + 148) & 0x10) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  v7 = (*(a2 + 148) & 0x20) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  v6 = (*(a2 + 148) & 0x40) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  v5 = *(a2 + 148) >> 7;
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

uint64_t IPC::Decoder::decode<WebCore::ResourceRequestRequester>(IPC::Decoder *a1)
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
  if (v2 >= 0xA)
  {
LABEL_8:
    IPC::Decoder::markInvalid(a1);
    v3 = 0;
    v2 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

uint64_t IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(IPC::Encoder *a1, WebCore::ResourceRequest *this)
{
  WebCore::ResourceRequest::getRequestDataToSerialize(v5, this);
  v7 = v6;
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  IPC::ArgumentCoder<mpark::variant<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>>(a1, v5, v7);
  if (v6 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>,(mpark::detail::Trait)1> &>(&v8, v5);
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, this + 20);
  LOBYTE(v5[0]) = (*(this + 184) & 0x10) != 0;
  return IPC::Encoder::operator<<<BOOL>(a1, v5);
}

void sub_19D71FA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29)
{
  if (a29 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>,(mpark::detail::Trait)1> &>(v29 - 17, &a10);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v202 = *MEMORY[0x1E69E9840];
  v5 = *(this + 2);
  if (*(this + 1) <= &v5[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_232;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_232;
  }

  v6 = *v5;
  if (v6 > 1)
  {
    goto LABEL_233;
  }

  if (!v6)
  {
    IPC::Decoder::decode<WTF::URL>(this, &v198);
    IPC::Decoder::decode<WTF::URL>(this, &v194);
    v45 = IPC::Decoder::decode<unsigned long long>(this);
    v47 = v46;
    IPC::Decoder::decode<WTF::String>(this, &v192);
    IPC::Decoder::decode<WebCore::HTTPHeaderMap>(&v187, this);
    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(this, &v184);
    v48 = *(this + 1);
    v49 = *(this + 2);
    v50 = *this;
    if (v48 <= &v49[-*this])
    {
      IPC::Decoder::markInvalid(this);
    }

    else
    {
      v51 = v49 + 1;
      *(this + 2) = v49 + 1;
      if (v49)
      {
        v52 = *v49;
        if (v52 < 6)
        {
          v53 = 0;
          goto LABEL_92;
        }

LABEL_264:
        IPC::Decoder::markInvalid(this);
        LOBYTE(v52) = 0;
        v48 = *(this + 1);
        v51 = *(this + 2);
        v53 = 1;
        v50 = *this;
LABEL_92:
        if (v48 <= &v51[-v50])
        {
          IPC::Decoder::markInvalid(this);
        }

        else
        {
          v54 = v51 + 1;
          *(this + 2) = v51 + 1;
          if (v51)
          {
            v55 = *v51;
            if (v55 < 3)
            {
              v56 = 0;
              goto LABEL_96;
            }

LABEL_267:
            IPC::Decoder::markInvalid(this);
            LOBYTE(v55) = 0;
            v48 = *(this + 1);
            v54 = *(this + 2);
            v56 = 1;
            v50 = *this;
LABEL_96:
            if (v48 <= &v54[-v50])
            {
              IPC::Decoder::markInvalid(this);
            }

            else
            {
              *(this + 2) = v54 + 1;
              if (v54)
              {
                v57 = *v54;
                if (v57 < 5)
                {
                  v58 = 0;
                  goto LABEL_100;
                }

LABEL_270:
                IPC::Decoder::markInvalid(this);
                LOBYTE(v57) = 0;
                v58 = 1;
LABEL_100:
                v145 = IPC::Decoder::decode<WebCore::ResourceRequestRequester>(this);
                v59 = *(this + 1);
                v60 = *(this + 2);
                v61 = *this;
                v130 = v45;
                v129 = v52;
                v143 = v47;
                v131 = v57;
                v132 = v55;
                v140 = v56;
                v141 = v53;
                v138 = v58;
                if (v59 <= &v60[-*this])
                {
                  IPC::Decoder::markInvalid(this);
                }

                else
                {
                  v62 = v60 + 1;
                  *(this + 2) = v60 + 1;
                  if (v60)
                  {
                    v63 = *v60;
                    if (v63 < 2)
                    {
                      v64 = 1;
                      goto LABEL_104;
                    }

LABEL_273:
                    IPC::Decoder::markInvalid(this);
                    v64 = 0;
                    v59 = *(this + 1);
                    v62 = *(this + 2);
                    v61 = *this;
LABEL_104:
                    v135 = v64;
                    if (!v63)
                    {
                      v64 = 0;
                    }

                    v128 = v64;
                    if (v59 <= &v62[-v61])
                    {
                      IPC::Decoder::markInvalid(this);
                    }

                    else
                    {
                      v65 = v62 + 1;
                      *(this + 2) = v62 + 1;
                      if (v62)
                      {
                        v66 = *v62;
                        if (v66 < 2)
                        {
                          v67 = 1;
                          goto LABEL_110;
                        }

LABEL_276:
                        IPC::Decoder::markInvalid(this);
                        v67 = 0;
                        v59 = *(this + 1);
                        v65 = *(this + 2);
                        v61 = *this;
LABEL_110:
                        v133 = v67;
                        if (!v66)
                        {
                          v67 = 0;
                        }

                        v127 = v67;
                        if (v59 <= &v65[-v61])
                        {
                          IPC::Decoder::markInvalid(this);
                        }

                        else
                        {
                          v68 = v65 + 1;
                          *(this + 2) = v65 + 1;
                          if (v65)
                          {
                            v69 = *v65;
                            if (v69 < 2)
                            {
                              v70 = 1;
                              goto LABEL_116;
                            }

LABEL_279:
                            IPC::Decoder::markInvalid(this);
                            v70 = 0;
                            v59 = *(this + 1);
                            v68 = *(this + 2);
                            v61 = *this;
LABEL_116:
                            if (v69)
                            {
                              v71 = v70;
                            }

                            else
                            {
                              v71 = 0;
                            }

                            v126 = v71;
                            if (v59 <= &v68[-v61])
                            {
                              IPC::Decoder::markInvalid(this);
                            }

                            else
                            {
                              v72 = v68 + 1;
                              *(this + 2) = v68 + 1;
                              if (v68)
                              {
                                v73 = *v68;
                                if (v73 < 2)
                                {
                                  v74 = 1;
                                  goto LABEL_123;
                                }

LABEL_282:
                                IPC::Decoder::markInvalid(this);
                                v74 = 0;
                                v59 = *(this + 1);
                                v72 = *(this + 2);
                                v61 = *this;
LABEL_123:
                                if (v73)
                                {
                                  v75 = v74;
                                }

                                else
                                {
                                  v75 = 0;
                                }

                                v125 = v75;
                                if (v59 <= &v72[-v61])
                                {
                                  IPC::Decoder::markInvalid(this);
                                }

                                else
                                {
                                  v76 = v72 + 1;
                                  *(this + 2) = v72 + 1;
                                  if (v72)
                                  {
                                    v77 = *v72;
                                    if (v77 < 2)
                                    {
                                      v78 = 1;
                                      goto LABEL_130;
                                    }

LABEL_285:
                                    IPC::Decoder::markInvalid(this);
                                    v78 = 0;
                                    v59 = *(this + 1);
                                    v76 = *(this + 2);
                                    v61 = *this;
LABEL_130:
                                    if (v77)
                                    {
                                      v79 = v78;
                                    }

                                    else
                                    {
                                      v79 = 0;
                                    }

                                    v124 = v79;
                                    if (v59 <= &v76[-v61])
                                    {
                                      IPC::Decoder::markInvalid(this);
                                    }

                                    else
                                    {
                                      v80 = v76 + 1;
                                      *(this + 2) = v76 + 1;
                                      if (v76)
                                      {
                                        v81 = *v76;
                                        if (v81 < 2)
                                        {
                                          v82 = 1;
                                          goto LABEL_137;
                                        }

LABEL_288:
                                        IPC::Decoder::markInvalid(this);
                                        v82 = 0;
                                        v59 = *(this + 1);
                                        v80 = *(this + 2);
                                        v61 = *this;
LABEL_137:
                                        if (v81)
                                        {
                                          v83 = v82;
                                        }

                                        else
                                        {
                                          v83 = 0;
                                        }

                                        if (v59 <= &v80[-v61])
                                        {
                                          IPC::Decoder::markInvalid(this);
                                        }

                                        else
                                        {
                                          v84 = v80 + 1;
                                          *(this + 2) = v80 + 1;
                                          if (v80)
                                          {
                                            v85 = *v80;
                                            if (v85 < 2)
                                            {
                                              v2 = a2;
                                              v86 = 1;
                                              goto LABEL_144;
                                            }

LABEL_291:
                                            IPC::Decoder::markInvalid(this);
                                            v2 = a2;
                                            v86 = 0;
                                            v59 = *(this + 1);
                                            v84 = *(this + 2);
                                            v61 = *this;
LABEL_144:
                                            if (v85)
                                            {
                                              a2 = v86;
                                            }

                                            else
                                            {
                                              a2 = 0;
                                            }

                                            if (v59 <= &v84[-v61])
                                            {
                                              IPC::Decoder::markInvalid(this);
                                            }

                                            else
                                            {
                                              *(this + 2) = v84 + 1;
                                              if (v84)
                                              {
                                                v87 = *v84;
                                                if (v87 < 2)
                                                {
                                                  v88 = 1;
LABEL_151:
                                                  if (v61)
                                                  {
                                                    if ((v201 & 1) == 0 || (v197 & 1) == 0 || (v143 & 1) == 0 || (v193 & 1) == 0 || (v191 & 1) == 0 || (v186 & 1) == 0 || v141 || v140 || v138 || v145 <= 0xFFu || (v135 & 1) == 0 || (v133 & 1) == 0 || (v70 & 1) == 0 || (v74 & 1) == 0 || (v78 & 1) == 0 || (v82 & 1) == 0 || (v86 & 1) == 0 || (v88 & 1) == 0)
                                                    {
                                                      goto LABEL_226;
                                                    }

                                                    v89 = v198;
                                                    v198 = 0;
                                                    v169 = v199;
                                                    v170 = v200;
                                                    LODWORD(v199) = v199 & 0xFFFFFFFE;
                                                    v90 = v194;
                                                    v194 = 0;
                                                    v168 = v89;
                                                    v171 = v90;
                                                    v172 = v195;
                                                    v173 = v196;
                                                    LODWORD(v195) = v195 & 0xFFFFFFFE;
                                                    v91 = v192;
                                                    v192 = 0;
                                                    v174 = v130;
                                                    v175 = v91;
                                                    v92 = v187;
                                                    v187 = 0;
                                                    v176[0] = v92;
                                                    v93 = v188;
                                                    v188 = 0;
                                                    v176[1] = v93;
                                                    v94 = v189;
                                                    v189 = 0;
                                                    v177[0] = v94;
                                                    v95 = v190;
                                                    v190 = 0;
                                                    if (v128)
                                                    {
                                                      v96 = 2;
                                                    }

                                                    else
                                                    {
                                                      v96 = 0;
                                                    }

                                                    v177[1] = v95;
                                                    v97 = v96 | v127;
                                                    v98 = v184;
                                                    if (v126)
                                                    {
                                                      v99 = 4;
                                                    }

                                                    else
                                                    {
                                                      v99 = 0;
                                                    }

                                                    v184 = 0;
                                                    v100 = v97 | v99;
                                                    v178[0] = v98;
                                                    if (v125)
                                                    {
                                                      v101 = 8;
                                                    }

                                                    else
                                                    {
                                                      v101 = 0;
                                                    }

                                                    v102 = v185;
                                                    v103 = v100 | v101;
                                                    v185 = 0;
                                                    if (v124)
                                                    {
                                                      v104 = 16;
                                                    }

                                                    else
                                                    {
                                                      v104 = 0;
                                                    }

                                                    v178[1] = v102;
                                                    v179 = v129;
                                                    if (v83)
                                                    {
                                                      v105 = 32;
                                                    }

                                                    else
                                                    {
                                                      v105 = 0;
                                                    }

                                                    v180 = v132;
                                                    if (a2)
                                                    {
                                                      v106 = 64;
                                                    }

                                                    else
                                                    {
                                                      v106 = 0;
                                                    }

                                                    v181 = v131;
                                                    v182 = v145;
                                                    v183 = v103 | v104 | v105 | v106 | ((v87 != 0) << 7);
                                                    WebCore::ResourceRequestBase::RequestData::RequestData(&v146, &v168);
                                                    LOBYTE(v153) = 1;
                                                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v178, v107);
                                                    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v177, v108);
                                                    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v176, v109);
                                                    v110 = v175;
                                                    v175 = 0;
                                                    a2 = v2;
                                                    if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                                    {
                                                      WTF::StringImpl::destroy(v110, v10);
                                                    }

                                                    v111 = v171;
                                                    v171 = 0;
                                                    if (v111 && atomic_fetch_add_explicit(v111, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                                    {
                                                      WTF::StringImpl::destroy(v111, v10);
                                                    }

                                                    v112 = v168;
                                                    v168 = 0;
                                                    if (v112 && atomic_fetch_add_explicit(v112, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                                    {
                                                      WTF::StringImpl::destroy(v112, v10);
                                                    }
                                                  }

                                                  else
                                                  {
                                                    LOBYTE(v146) = 0;
                                                    LOBYTE(v153) = 0;
                                                    a2 = v2;
                                                  }

                                                  if (v186 == 1)
                                                  {
                                                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v184, v10);
                                                  }

                                                  if (v191 == 1)
                                                  {
                                                    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v189, v10);
                                                    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v187, v113);
                                                  }

                                                  if (v193 == 1)
                                                  {
                                                    v114 = v192;
                                                    v192 = 0;
                                                    if (v114)
                                                    {
                                                      if (atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                                      {
                                                        WTF::StringImpl::destroy(v114, v10);
                                                      }
                                                    }
                                                  }

                                                  if (v197 == 1)
                                                  {
                                                    v115 = v194;
                                                    v194 = 0;
                                                    if (v115)
                                                    {
                                                      if (atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                                      {
                                                        WTF::StringImpl::destroy(v115, v10);
                                                      }
                                                    }
                                                  }

                                                  if (v201 == 1)
                                                  {
                                                    v116 = v198;
                                                    v198 = 0;
                                                    if (v116)
                                                    {
                                                      if (atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                                      {
                                                        WTF::StringImpl::destroy(v116, v10);
                                                      }
                                                    }
                                                  }

                                                  if (v153 & 1) != 0 || (IPC::Decoder::markInvalid(this), (v153))
                                                  {
                                                    WebCore::ResourceRequestBase::RequestData::RequestData(&v158, &v146);
                                                    v166 = 0;
                                                    v167 = 1;
                                                    if (v153)
                                                    {
                                                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v152, v117);
                                                      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v151, v118);
                                                      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v150, v119);
                                                      v121 = v149;
                                                      v149 = 0;
                                                      if (v121 && atomic_fetch_add_explicit(v121, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                                      {
                                                        WTF::StringImpl::destroy(v121, v120);
                                                      }

                                                      v122 = v148;
                                                      v148 = 0;
                                                      if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                                      {
                                                        WTF::StringImpl::destroy(v122, v120);
                                                      }

                                                      v123 = v146;
                                                      v146 = 0;
                                                      if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                                      {
                                                        WTF::StringImpl::destroy(v123, v120);
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    LOBYTE(v158) = 0;
                                                    v167 = 0;
                                                  }

                                                  if ((v167 & 1) == 0)
                                                  {
                                                    goto LABEL_234;
                                                  }

                                                  goto LABEL_71;
                                                }

LABEL_294:
                                                IPC::Decoder::markInvalid(this);
                                                v88 = 0;
                                                v61 = *this;
                                                goto LABEL_151;
                                              }
                                            }

                                            IPC::Decoder::markInvalid(this);
                                            v87 = 0;
                                            goto LABEL_294;
                                          }
                                        }

                                        IPC::Decoder::markInvalid(this);
                                        v85 = 0;
                                        goto LABEL_291;
                                      }
                                    }

                                    IPC::Decoder::markInvalid(this);
                                    v81 = 0;
                                    goto LABEL_288;
                                  }
                                }

                                IPC::Decoder::markInvalid(this);
                                v77 = 0;
                                goto LABEL_285;
                              }
                            }

                            IPC::Decoder::markInvalid(this);
                            v73 = 0;
                            goto LABEL_282;
                          }
                        }

                        IPC::Decoder::markInvalid(this);
                        v69 = 0;
                        goto LABEL_279;
                      }
                    }

                    IPC::Decoder::markInvalid(this);
                    v66 = 0;
                    goto LABEL_276;
                  }
                }

                IPC::Decoder::markInvalid(this);
                v63 = 0;
                goto LABEL_273;
              }
            }

            IPC::Decoder::markInvalid(this);
            goto LABEL_270;
          }
        }

        IPC::Decoder::markInvalid(this);
        goto LABEL_267;
      }
    }

    IPC::Decoder::markInvalid(this);
    goto LABEL_264;
  }

  v7 = objc_opt_class();
  v198 = v7;
  if (v7)
  {
    v8 = v7;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v168, &v198, 1);
  IPC::decodeObjectDirectlyRequiringAllowedClasses<NSURLRequest>(this, v9, &v146);
  LODWORD(v2) = v147;
  if (v147 != 1)
  {
    goto LABEL_227;
  }

  v11 = v146;
  if (v146)
  {
    v12 = v146;
  }

  while (1)
  {
    if (v168)
    {
      WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v168, v10);
    }

    v13 = v198;
    v198 = 0;
    if (v13)
    {
    }

    if ((v2 & 1) == 0)
    {
      IPC::Decoder::markInvalid(this);
    }

    v142 = v2;
    v144 = IPC::Decoder::decode<std::optional<BOOL>>(this);
    v14 = *(this + 2);
    if (*(this + 1) <= &v14[-*this])
    {
      IPC::Decoder::markInvalid(this);
LABEL_244:
      IPC::Decoder::markInvalid(this);
LABEL_245:
      IPC::Decoder::markInvalid(this);
      v139 = 0;
      goto LABEL_246;
    }

    *(this + 2) = v14 + 1;
    if (!v14)
    {
      goto LABEL_244;
    }

    v15 = *v14;
    if (v15 >= 2)
    {
      goto LABEL_245;
    }

    if (!v15)
    {
      v139 = 0;
      v18 = 0x10000;
      goto LABEL_25;
    }

    v16 = IPC::Decoder::decode<WebCore::ResourceRequestRequester>(this);
    if ((v16 & 0xFF00) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v139 = v17 | 0x10000000000;
    if (v16 > 0xFFu)
    {
      v18 = (v16 << 8) & 0xFF0000;
LABEL_25:
      v137 = v18;
      goto LABEL_26;
    }

LABEL_246:
    IPC::Decoder::markInvalid(this);
    v137 = 0;
LABEL_26:
    v19 = *(this + 1);
    v20 = *(this + 2);
    v21 = *this;
    v136 = a2;
    if (v19 <= &v20[-*this])
    {
      IPC::Decoder::markInvalid(this);
LABEL_248:
      IPC::Decoder::markInvalid(this);
      v23 = 0;
      goto LABEL_249;
    }

    v22 = v20 + 1;
    *(this + 2) = v20 + 1;
    if (!v20)
    {
      goto LABEL_248;
    }

    v23 = *v20;
    if (v23 < 2)
    {
      a2 = 1;
      goto LABEL_30;
    }

LABEL_249:
    IPC::Decoder::markInvalid(this);
    a2 = 0;
    v19 = *(this + 1);
    v22 = *(this + 2);
    v21 = *this;
LABEL_30:
    if (v23)
    {
      v24 = a2;
    }

    else
    {
      v24 = 0;
    }

    v134 = v24;
    if (v19 <= &v22[-v21])
    {
      IPC::Decoder::markInvalid(this);
LABEL_251:
      IPC::Decoder::markInvalid(this);
      v26 = 0;
      goto LABEL_252;
    }

    v25 = v22 + 1;
    *(this + 2) = v22 + 1;
    if (!v22)
    {
      goto LABEL_251;
    }

    v26 = *v22;
    if (v26 < 2)
    {
      v27 = 1;
      goto LABEL_37;
    }

LABEL_252:
    IPC::Decoder::markInvalid(this);
    v27 = 0;
    v19 = *(this + 1);
    v25 = *(this + 2);
    v21 = *this;
LABEL_37:
    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v19 <= &v25[-v21])
    {
      IPC::Decoder::markInvalid(this);
LABEL_254:
      IPC::Decoder::markInvalid(this);
      v30 = 0;
      goto LABEL_255;
    }

    v29 = v25 + 1;
    *(this + 2) = v25 + 1;
    if (!v25)
    {
      goto LABEL_254;
    }

    v30 = *v25;
    if (v30 < 2)
    {
      v31 = 1;
      goto LABEL_44;
    }

LABEL_255:
    IPC::Decoder::markInvalid(this);
    v31 = 0;
    v19 = *(this + 1);
    v29 = *(this + 2);
    v21 = *this;
LABEL_44:
    if (v30)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (v19 <= &v29[-v21])
    {
      IPC::Decoder::markInvalid(this);
LABEL_257:
      IPC::Decoder::markInvalid(this);
      v34 = 0;
      goto LABEL_258;
    }

    v33 = v29 + 1;
    *(this + 2) = v29 + 1;
    if (!v29)
    {
      goto LABEL_257;
    }

    v34 = *v29;
    if (v34 < 2)
    {
      LODWORD(v2) = 1;
      goto LABEL_51;
    }

LABEL_258:
    IPC::Decoder::markInvalid(this);
    LODWORD(v2) = 0;
    v19 = *(this + 1);
    v33 = *(this + 2);
    v21 = *this;
LABEL_51:
    if (v34)
    {
      v35 = v2;
    }

    else
    {
      v35 = 0;
    }

    if (v19 <= &v33[-v21])
    {
      IPC::Decoder::markInvalid(this);
LABEL_260:
      IPC::Decoder::markInvalid(this);
      v36 = 0;
      goto LABEL_261;
    }

    *(this + 2) = v33 + 1;
    if (!v33)
    {
      goto LABEL_260;
    }

    v36 = *v33;
    if (v36 < 2)
    {
      v37 = 1;
      goto LABEL_58;
    }

LABEL_261:
    IPC::Decoder::markInvalid(this);
    v37 = 0;
    v21 = *this;
LABEL_58:
    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    if (v21)
    {
      if ((v142 & 1) == 0 || (v144 & 0x10000) == 0 || !((v139 | HIDWORD(v139) | v137) >> 16) || (a2 & 1) == 0 || (v27 & 1) == 0 || (v31 & 1) == 0 || (v2 & 1) == 0 || (v37 & 1) == 0)
      {
        goto LABEL_226;
      }

      v158 = v11;
      v159 = v144;
      v160 = v139 | WORD2(v139);
      v161 = v134;
      v162 = v28;
      v163 = v32;
      v164 = v35;
      v165 = v38;
      v166 = 1;
      v167 = 1;
      a2 = v136;
    }

    else
    {
      a2 = v136;
      if (v11 && v142)
      {
      }

LABEL_232:
      IPC::Decoder::markInvalid(this);
LABEL_233:
      LOBYTE(v158) = 0;
      v167 = 0;
LABEL_234:
      IPC::Decoder::markInvalid(this);
    }

LABEL_71:
    IPC::Decoder::decode<WTF::String>(this, &v168);
    v39 = *(this + 2);
    v40 = *this;
    if (*(this + 1) <= &v39[-*this])
    {
      IPC::Decoder::markInvalid(this);
LABEL_241:
      IPC::Decoder::markInvalid(this);
      goto LABEL_242;
    }

    *(this + 2) = v39 + 1;
    if (!v39)
    {
      goto LABEL_241;
    }

    if (*v39 < 2u)
    {
      v41 = 1;
      goto LABEL_75;
    }

LABEL_242:
    IPC::Decoder::markInvalid(this);
    v41 = 0;
    v40 = *this;
LABEL_75:
    if (!v40)
    {
      break;
    }

    if (v167 & 1) != 0 && (v169 & 1) != 0 && (v41)
    {
      WebCore::ResourceRequest::fromResourceRequestData();
      WebCore::ResourceRequestBase::RequestData::RequestData(a2, &v146);
      v42 = v153;
      v153 = 0uLL;
      *(a2 + 152) = v42;
      v43 = v155;
      *(a2 + 168) = v154;
      *(a2 + 176) = v43;
      *(a2 + 184) = v156;
      *(a2 + 192) = v157;
      *(a2 + 200) = 1;
      v154 = 0;
      v157 = 0;
      WebCore::ResourceRequestBase::~ResourceRequestBase(&v146);
      goto LABEL_80;
    }

LABEL_226:
    __break(1u);
LABEL_227:
    v11 = 0;
  }

  *a2 = 0;
  *(a2 + 200) = 0;
LABEL_80:
  if (v169 == 1)
  {
    v44 = v168;
    v168 = 0;
    if (v44)
    {
      if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, v10);
      }
    }
  }

  if (v167 == 1 && v166 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>,(mpark::detail::Trait)1> &>(&v146, &v158);
  }
}

void sub_19D72086C(_Unwind_Exception *a1, void *a2)
{
  if (LOBYTE(STACK[0x270]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x260], a2);
  }

  std::optional<WebCore::HTTPHeaderMap>::~optional(v2 - 248, a2);
  if (*(v2 - 200) == 1)
  {
    v5 = *(v2 - 208);
    *(v2 - 208) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  if (*(v2 - 152) == 1)
  {
    v6 = *(v2 - 192);
    *(v2 - 192) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }
    }
  }

  if (*(v2 - 104) == 1)
  {
    v7 = *(v2 - 144);
    *(v2 - 144) = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::ResourceError::IPCData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::encodeObjectDirectly<NSError>(a1, *(a2 + 8));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));
}

void IPC::ArgumentCoder<WebCore::ResourceError::IPCData,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WebCore::ResourceErrorBaseType>(a2);
  if (!*a2)
  {
    goto LABEL_9;
  }

  v5 = v4;
  if (v4 <= 0xFFu)
  {
    goto LABEL_13;
  }

  if (!v4)
  {
LABEL_9:
    *a1 = 0;
    *(a1 + 24) = 0;
    return;
  }

  IPC::Decoder::decode<WTF::RetainPtr<NSError>>(&v8, a2);
  v6 = IPC::Decoder::decode<BOOL>(a2);
  if (*a2)
  {
    if ((v9 & 1) != 0 && (v6 & 0x100) != 0)
    {
      v7 = v8;
      *a1 = v5;
      *(a1 + 8) = v7;
      *(a1 + 16) = v6;
      *(a1 + 24) = 1;
      return;
    }

LABEL_13:
    __break(1u);
    return;
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if ((v9 & 1) != 0 && v8)
  {
  }
}

void sub_19D720B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10)
{
  if (a10)
  {
    if (a9)
    {
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::ResourceErrorBaseType>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<unsigned char>(a1);
  v3 = v2;
  v5 = (v2 & 0x100) == 0 || v2 > 4u;
  if (v5)
  {
    IPC::Decoder::markInvalid(a1);
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return v3 | 0x100u;
  }
}

void IPC::Decoder::decode<WTF::RetainPtr<NSError>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::RetainPtr<NSError>,void>::decode<NSError,NSError*>(a1, a2);
  if ((*(a1 + 8) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(IPC::Encoder *a1, WebCore::ResourceError *this)
{
  WebCore::ResourceError::ipcData(&v4, this);
  IPC::ArgumentCoder<std::optional<WebCore::ResourceError::IPCData>,void>::encode<IPC::Encoder,std::optional<WebCore::ResourceError::IPCData>>(a1, &v4);
  if (v6 == 1)
  {
    v3 = v5;
    v5 = 0;
    if (v3)
    {
    }
  }
}

void sub_19D720CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    if (a10)
    {
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::ResourceError,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<std::optional<WebCore::ResourceError::IPCData>>(v7, a1);
  if (*a1)
  {
    if ((v10 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WebCore::ResourceError::fromIPCData();
    _ZNSt3__127__optional_copy_assign_baseIN7WebCore13ResourceErrorELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(a2, v6);
    WebCore::ResourceError::~ResourceError(v6, v4);
  }

  else
  {
    *a2 = 0;
    a2[80] = 0;
  }

  if (v10 == 1 && v9 == 1)
  {
    v5 = v8;
    v8 = 0;
    if (v5)
    {
    }
  }
}

void sub_19D720D9C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::ResourceError::~ResourceError(va, a2);
  if (*(v3 - 24) == 1 && *(v3 - 32) == 1)
  {
    v5 = *(v3 - 48);
    *(v3 - 48) = 0;
    if (v5)
    {
    }
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<std::optional<WebCore::ResourceError::IPCData>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::ResourceError::IPCData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 32) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void WebCore::ResourceError::~ResourceError(WebCore::ResourceError *this, WTF::StringImpl *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }
}

void IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(WTF *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  IPC::ArgumentCoder<CGColorSpace *,void>::encode(a1, v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_19D720F2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::WindowFeatures,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::ArgumentCoder<std::optional<float>,void>::encode<IPC::Encoder,std::optional<float> const&>(a1, (a2 + 4));
  IPC::ArgumentCoder<std::optional<float>,void>::encode<IPC::Encoder,std::optional<float> const&>(a1, (a2 + 12));
  IPC::ArgumentCoder<std::optional<float>,void>::encode<IPC::Encoder,std::optional<float> const&>(a1, (a2 + 20));
  IPC::ArgumentCoder<std::optional<float>,void>::encode<IPC::Encoder,std::optional<float> const&>(a1, (a2 + 28));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 36);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 38);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 40);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 42);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 44);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 46);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 48);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 50);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 52);

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 54);
}

uint64_t IPC::ArgumentCoder<WebCore::WindowFeatures,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36)
    {
      if (v3)
      {
        (*(*v36 + 16))(v36);
        v3 = *(a1 + 1);
      }
    }

    else
    {
      v3 = 0;
    }

LABEL_72:
    *a1 = 0;
    *(a1 + 1) = 0;
    v37 = *(a1 + 3);
    if (v37)
    {
      if (v3)
      {
        (*(*v37 + 16))(v37);
        v7 = 0;
        v5 = *a1;
        v3 = *(a1 + 1);
        goto LABEL_75;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    v7 = 0;
    goto LABEL_75;
  }

  v6 = (v4 + 1);
  *(a1 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_72;
  }

  v7 = *v4;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

LABEL_75:
  *a1 = 0;
  *(a1 + 1) = 0;
  v38 = *(a1 + 3);
  if (!v38)
  {
    v69 = 0;
    v3 = 0;
LABEL_77:
    v5 = 0;
LABEL_78:
    v67 = 0;
    goto LABEL_79;
  }

  if (!v3)
  {
    v69 = 0;
    goto LABEL_77;
  }

  (*(*v38 + 16))(v38, v5);
  v8 = 0;
  v5 = *a1;
  v3 = *(a1 + 1);
  v6 = *(a1 + 2);
LABEL_5:
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v69) = v9;
  BYTE4(v69) = v8;
  if (v3 <= v6 - v5)
  {
    v67 = 0;
    v47 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v47 && v3)
    {
      (*(*v47 + 16))(v47);
      v67 = 0;
      v5 = *a1;
      v3 = *(a1 + 1);
    }

    else
    {
      v5 = 0;
      v3 = 0;
    }

    goto LABEL_79;
  }

  v10 = v6 + 1;
  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_78;
  }

  if (*v6 > 1u)
  {
    v67 = 0;
    goto LABEL_83;
  }

  if (!*v6)
  {
    v67 = 0;
    goto LABEL_19;
  }

  v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = ((v6 & 0xFFFFFFFFFFFFFFFCLL) + 4);
  if (v3 >= v12 - v5 && v3 - (v12 - v5) >= 4)
  {
    v10 = v11 + 8;
    *(a1 + 2) = v10;
    if (!v12)
    {
      v67 = 0x100000000;
      goto LABEL_83;
    }

    v67 = *v12 | 0x100000000;
LABEL_19:
    v68 = 1;
    goto LABEL_20;
  }

  v67 = 0x100000000;
LABEL_79:
  *a1 = 0;
  *(a1 + 1) = 0;
  v39 = *(a1 + 3);
  if (v39)
  {
    if (v3)
    {
      (*(*v39 + 16))(v39, v5);
      v5 = *a1;
      v3 = *(a1 + 1);
      goto LABEL_83;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = 0;
LABEL_83:
  *a1 = 0;
  *(a1 + 1) = 0;
  v40 = *(a1 + 3);
  if (!v40)
  {
    v68 = 0;
    v3 = 0;
LABEL_85:
    v5 = 0;
    goto LABEL_86;
  }

  if (!v3)
  {
    v68 = 0;
    goto LABEL_85;
  }

  (*(*v40 + 16))(v40, v5);
  v3 = 0;
  v68 = 0;
  v48 = *(a1 + 3);
  v58 = *a1;
  v59 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  if (!v48 || !v59)
  {
LABEL_116:
    v65 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v48 && v3)
    {
      (*(*v48 + 16))(v48);
      v65 = 0;
      v5 = *a1;
      v3 = *(a1 + 1);
    }

    else
    {
      v5 = 0;
      v3 = 0;
    }

    goto LABEL_87;
  }

  (*(*v48 + 16))(v48, v58, v59);
  v68 = 0;
  v5 = *a1;
  v3 = *(a1 + 1);
  v10 = *(a1 + 2);
LABEL_20:
  if (v3 <= v10 - v5)
  {
    v48 = *(a1 + 3);
    goto LABEL_116;
  }

  v14 = v10 + 1;
  *(a1 + 2) = v10 + 1;
  if (v10)
  {
    if (*v10 > 1u)
    {
      v65 = 0;
      goto LABEL_90;
    }

    if (*v10)
    {
      v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = ((v10 & 0xFFFFFFFFFFFFFFFCLL) + 4);
      if (v3 < v16 - v5 || v3 - (v16 - v5) < 4)
      {
        v65 = 0x100000000;
        goto LABEL_87;
      }

      v14 = v15 + 8;
      *(a1 + 2) = v14;
      if (!v16)
      {
        v65 = 0x100000000;
        goto LABEL_90;
      }

      v17 = *v16 | 0x100000000;
    }

    else
    {
      v17 = 0;
    }

    v66 = 1;
    goto LABEL_29;
  }

LABEL_86:
  v65 = 0;
LABEL_87:
  *a1 = 0;
  *(a1 + 1) = 0;
  v41 = *(a1 + 3);
  if (v41)
  {
    if (v3)
    {
      (*(*v41 + 16))(v41, v5);
      v5 = *a1;
      v3 = *(a1 + 1);
      goto LABEL_90;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = 0;
LABEL_90:
  *a1 = 0;
  *(a1 + 1) = 0;
  v42 = *(a1 + 3);
  if (!v42)
  {
    v66 = 0;
    v3 = 0;
LABEL_92:
    v5 = 0;
    goto LABEL_93;
  }

  if (!v3)
  {
    v66 = 0;
    goto LABEL_92;
  }

  (*(*v42 + 16))(v42, v5);
  v3 = 0;
  v66 = 0;
  v49 = *(a1 + 3);
  v56 = *a1;
  v57 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  if (!v49 || !v57)
  {
LABEL_120:
    v63 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v49 && v3)
    {
      (*(*v49 + 16))(v49);
      v63 = 0;
      v5 = *a1;
      v3 = *(a1 + 1);
    }

    else
    {
      v5 = 0;
      v3 = 0;
    }

    goto LABEL_94;
  }

  (*(*v49 + 16))(v49, v56, v57);
  v66 = 0;
  v5 = *a1;
  v3 = *(a1 + 1);
  v14 = *(a1 + 2);
  v17 = v65;
LABEL_29:
  if (v3 <= v14 - v5)
  {
    v65 = v17;
    v49 = *(a1 + 3);
    goto LABEL_120;
  }

  v18 = v14 + 1;
  *(a1 + 2) = v14 + 1;
  if (v14)
  {
    if (*v14 > 1u)
    {
      v65 = v17;
      v63 = 0;
      goto LABEL_97;
    }

    if (*v14)
    {
      v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v20 = ((v14 & 0xFFFFFFFFFFFFFFFCLL) + 4);
      if (v3 < v20 - v5 || v3 - (v20 - v5) < 4)
      {
        v63 = 0x100000000;
        v65 = v17;
        goto LABEL_94;
      }

      v18 = v19 + 8;
      *(a1 + 2) = v18;
      if (!v20)
      {
        v65 = v17;
        v63 = 0x100000000;
        goto LABEL_97;
      }

      v21 = *v20 | 0x100000000;
    }

    else
    {
      v21 = 0;
    }

    v22 = 1;
    goto LABEL_38;
  }

  v65 = v17;
LABEL_93:
  v63 = 0;
LABEL_94:
  *a1 = 0;
  *(a1 + 1) = 0;
  v43 = *(a1 + 3);
  if (v43)
  {
    if (v3)
    {
      (*(*v43 + 16))(v43, v5);
      v5 = *a1;
      v3 = *(a1 + 1);
      goto LABEL_97;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = 0;
LABEL_97:
  *a1 = 0;
  *(a1 + 1) = 0;
  v44 = *(a1 + 3);
  if (!v44)
  {
    v64 = 0;
    v3 = 0;
LABEL_99:
    v5 = 0;
    goto LABEL_100;
  }

  if (!v3)
  {
    v64 = 0;
    goto LABEL_99;
  }

  (*(*v44 + 16))(v44, v5);
  v3 = 0;
  v64 = 0;
  v50 = *(a1 + 3);
  v54 = *a1;
  v55 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  if (!v50 || !v55)
  {
LABEL_125:
    v61 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v50 && v3)
    {
      (*(*v50 + 16))(v50);
      v61 = 0;
      v5 = *a1;
      v3 = *(a1 + 1);
    }

    else
    {
      v5 = 0;
      v3 = 0;
    }

    goto LABEL_101;
  }

  (*(*v50 + 16))(v50, v54, v55);
  v22 = 0;
  v5 = *a1;
  v3 = *(a1 + 1);
  v18 = *(a1 + 2);
  v17 = v65;
  v21 = v63;
LABEL_38:
  v65 = v17;
  v63 = v21;
  v64 = v22;
  if (v3 <= v18 - v5)
  {
    v50 = *(a1 + 3);
    goto LABEL_125;
  }

  *(a1 + 2) = v18 + 1;
  if (v18)
  {
    if (*v18 > 1u)
    {
      v61 = 0;
      goto LABEL_104;
    }

    if (*v18)
    {
      v23 = v18 & 0xFFFFFFFFFFFFFFFCLL;
      v24 = ((v18 & 0xFFFFFFFFFFFFFFFCLL) + 4);
      if (v3 < v24 - v5 || v3 - (v24 - v5) < 4)
      {
        v61 = 0x100000000;
        goto LABEL_101;
      }

      *(a1 + 2) = v23 + 8;
      if (!v24)
      {
        v61 = 0x100000000;
        goto LABEL_104;
      }

      v61 = *v24 | 0x100000000;
    }

    else
    {
      v61 = 0;
    }

    v62 = 1;
    goto LABEL_47;
  }

LABEL_100:
  v61 = 0;
LABEL_101:
  *a1 = 0;
  *(a1 + 1) = 0;
  v45 = *(a1 + 3);
  if (v45)
  {
    if (v3)
    {
      (*(*v45 + 16))(v45, v5);
      v5 = *a1;
      v3 = *(a1 + 1);
      goto LABEL_104;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = 0;
LABEL_104:
  *a1 = 0;
  *(a1 + 1) = 0;
  v46 = *(a1 + 3);
  if (!v46 || !v3)
  {
    goto LABEL_105;
  }

  (*(*v46 + 16))(v46, v5);
  v62 = 0;
  v51 = *(a1 + 3);
  v52 = *a1;
  v53 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  if (v51 && v53)
  {
    (*(*v51 + 16))(v51, v52);
LABEL_105:
    v62 = 0;
  }

LABEL_47:
  v25 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v26 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v27 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v28 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v29 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v30 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v31 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v32 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v33 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  result = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  if (*a1)
  {
    if ((v69 & 0x100000000) != 0)
    {
      LOBYTE(v70) = v69;
      if (v68)
      {
        DWORD1(v70) = v67;
        BYTE8(v70) = BYTE4(v67);
        if (v66)
        {
          HIDWORD(v70) = v65;
          v71 = BYTE4(v65);
          if (v64)
          {
            v72 = v63;
            v73 = BYTE4(v63);
            if (v62)
            {
              v74 = v61;
              v75 = BYTE4(v61);
              if ((v25 & 0x10000) != 0)
              {
                v76 = v25;
                if ((v26 & 0x10000) != 0)
                {
                  v77 = v26;
                  if ((v27 & 0x10000) != 0)
                  {
                    v78 = v27;
                    if ((v28 & 0x10000) != 0)
                    {
                      v79 = v28;
                      if ((v29 & 0x10000) != 0)
                      {
                        v80 = v29;
                        if ((v30 & 0x10000) != 0)
                        {
                          v81 = v30;
                          if ((v31 & 0x10000) != 0)
                          {
                            v82 = v31;
                            if ((v32 & 0x10000) != 0)
                            {
                              v83 = v32;
                              if ((v33 & 0x10000) != 0)
                              {
                                v84 = v33;
                                if ((result & 0x10000) != 0)
                                {
                                  v85 = result;
                                  v86 = 0;
                                  v87[0] = 0;
                                  v87[1] = 0;
                                  std::optional<WebCore::WindowFeatures>::optional[abi:sn200100]<WebCore::WindowFeatures,0>(a2, &v70);
                                  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v87, v35);
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

  *a2 = 0;
  a2[80] = 0;
  return result;
}

uint64_t std::optional<WebCore::WindowFeatures>::optional[abi:sn200100]<WebCore::WindowFeatures,0>(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *a1 = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
  *(a1 + 80) = 1;
  return a1;
}

void sub_19D721A84(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v6, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::CompositionUnderline,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  v5 = *(a2 + 8);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 16));
  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 24));
}

unsigned int *IPC::ArgumentCoder<WebCore::CompositionUnderline,void>::decode@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *this;
  v7 = v5 - *this;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    *(this + 2) = v5 + 1;
    if (v5)
    {
      v11 = *v5 | 0x100000000;
      v12 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    v34 = *(this + 3);
    if (v34)
    {
      if (v4)
      {
        (*(*v34 + 16))(v34);
        v4 = *(this + 1);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *this = 0;
  *(this + 1) = 0;
  v35 = *(this + 3);
  if (!v35)
  {
    v12 = 0;
    v4 = 0;
LABEL_52:
    v6 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_52;
  }

  (*(*v35 + 16))(v35);
  v11 = 0;
  v12 = *this;
  v4 = *(this + 1);
  v6 = *this;
LABEL_8:
  v13 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 >= v13 - v6 && v4 - (v13 - v6) > 3)
  {
    *(this + 2) = v13 + 1;
    if (v13)
    {
      v15 = *v13 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    v36 = *(this + 3);
    if (v36)
    {
      if (v4)
      {
        (*(*v36 + 16))(v36, v12);
        v12 = *this;
        v4 = *(this + 1);
        goto LABEL_56;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

LABEL_56:
  *this = 0;
  *(this + 1) = 0;
  v37 = *(this + 3);
  if (!v37)
  {
    v6 = 0;
    v15 = 0;
    v4 = 0;
    goto LABEL_58;
  }

  if (!v4)
  {
    v6 = 0;
    v15 = 0;
    goto LABEL_58;
  }

  (*(*v37 + 16))(v37, v12);
  v15 = 0;
  v6 = *this;
  v4 = *(this + 1);
LABEL_15:
  v16 = *(this + 2);
  if (v4 > &v16[-v6])
  {
    *(this + 2) = v16 + 1;
    if (v16)
    {
      v17 = *v16;
      if (v17 < 2)
      {
        v18 = 0;
        v19 = v17 != 0;
        goto LABEL_19;
      }

      goto LABEL_64;
    }

    goto LABEL_61;
  }

LABEL_58:
  *this = 0;
  *(this + 1) = 0;
  v38 = *(this + 3);
  if (v38)
  {
    if (v4)
    {
      (*(*v38 + 16))(v38, v6);
      v6 = *this;
      v4 = *(this + 1);
      goto LABEL_61;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_61:
  *this = 0;
  *(this + 1) = 0;
  v39 = *(this + 3);
  if (v39)
  {
    if (v4)
    {
      (*(*v39 + 16))(v39, v6);
      v6 = *this;
      v4 = *(this + 1);
      goto LABEL_64;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_64:
  *this = 0;
  *(this + 1) = 0;
  v40 = *(this + 3);
  if (v40 && v4)
  {
    (*(*v40 + 16))(v40, v6);
    v19 = 0;
    v42 = *(this + 3);
    v43 = *this;
    v44 = *(this + 1);
    v18 = 1;
    *this = 0;
    *(this + 1) = 0;
    if (v42 && v44)
    {
      (*(*v42 + 16))(v42, v43);
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v18 = 1;
  }

LABEL_19:
  result = IPC::ArgumentCoder<WebCore::Color,void>::decode(this, &v46);
  v21 = *(this + 1);
  if ((v47 & 1) == 0)
  {
    v29 = *this;
    *this = 0;
    *(this + 1) = 0;
    v30 = *(this + 3);
    if (!v30 || !v21)
    {
      v31 = 0;
      v32 = 0;
LABEL_44:
      *this = 0;
      *(this + 1) = 0;
      v33 = *(this + 3);
      if (v33 && v31)
      {
        (*(*v33 + 16))(v33, v32, v31);
        v45 = 0;
        v22 = *this;
        v21 = *(this + 1);
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v45 = 0;
      }

      goto LABEL_46;
    }

    result = (*(*v30 + 16))(v30, v29);
    v21 = *(this + 1);
  }

  v22 = *this;
  v23 = *(this + 2);
  if (v21 <= &v23[-*this])
  {
    v31 = 0;
    v41 = *(this + 3);
    *this = 0;
    *(this + 1) = 0;
    v32 = 0;
    if (v41 && v21)
    {
      (*(*v41 + 16))(v41);
      v32 = *this;
      v31 = *(this + 1);
    }

    goto LABEL_44;
  }

  *(this + 2) = v23 + 1;
  if (!v23)
  {
    v31 = v21;
    v32 = v22;
    goto LABEL_44;
  }

  v24 = *v23;
  if (v24 < 2)
  {
    v25 = 1;
    goto LABEL_24;
  }

  v45 = v24;
LABEL_46:
  *this = 0;
  *(this + 1) = 0;
  result = *(this + 3);
  if (!result || !v21)
  {
LABEL_47:
    v28 = 0;
    *a2 = 0;
    goto LABEL_36;
  }

  result = (*(*result + 16))(result, v22);
  v25 = 0;
  v22 = *this;
  v24 = v45;
LABEL_24:
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (!v22)
  {
    goto LABEL_47;
  }

  if ((v11 & 0x100000000) == 0 || (v15 & 0x100000000) == 0 || v18 || (v47 & 1) == 0 || (v25 & 1) == 0)
  {
    __break(1u);
LABEL_40:
    result = (v26 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v26 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v22);
    }

    return result;
  }

  v27 = v46;
  if ((v46 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v46 & 0xFFFFFFFFFFFFLL), 1u);
  }

  *a2 = v11;
  *(a2 + 4) = v15;
  *(a2 + 8) = v19;
  *(a2 + 16) = v27;
  v28 = 1;
  *(a2 + 24) = v26;
LABEL_36:
  *(a2 + 32) = v28;
  if (v47 == 1)
  {
    v26 = v46;
    if ((v46 & 0x8000000000000) != 0)
    {
      goto LABEL_40;
    }
  }

  return result;
}

void sub_19D72205C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1 && (a11 & 0x8000000000000) != 0)
  {
    v13 = (a11 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::SerializedAttachmentData,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);
  v4 = a2[2];

  IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(a1, v4);
}

void IPC::ArgumentCoder<WebCore::SerializedAttachmentData,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v15);
  IPC::Decoder::decode<WTF::String>(a1, &v13);
  IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v11);
  if (*a1)
  {
    if (v16)
    {
      v5 = v15;
      v15 = 0;
      if (v14)
      {
        v6 = v13;
        v13 = 0;
        if (v12)
        {
          v7 = v11;
          *a2 = v5;
          *(a2 + 8) = v6;
          *(a2 + 16) = v7;
          *(a2 + 24) = 1;
          goto LABEL_6;
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v12)
  {
    v10 = v11;
    v11 = 0;
    if (v10)
    {
      if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10 + 2);
        (*(*v10 + 8))(v10);
      }
    }
  }

LABEL_6:
  if (v14 == 1)
  {
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }
    }
  }

  if (v16 == 1)
  {
    v9 = v15;
    v15 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v4);
      }
    }
  }
}

void sub_19D722240(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
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

void IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::SharedBuffer,void>::decode(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

uint64_t std::optional<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

uint64_t IPC::ArgumentCoder<WebCore::FileChooserSettings,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 1);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (a2 + 8));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (a2 + 24));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (a2 + 40));
  v4 = a2[56];

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::FileChooserSettings,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *a1;
  if (v7 <= &v8[-*a1])
  {
    goto LABEL_34;
  }

  v10 = v8 + 1;
  *(a1 + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_36;
  }

  v11 = *v8;
  if (v11 < 2)
  {
    v12 = 1;
    goto LABEL_5;
  }

  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (!v30 || !v7)
    {
      v13 = 0;
      v12 = 0;
      v31 = 0;
      v9 = 0;
LABEL_41:
      *a1 = 0;
      *(a1 + 1) = 0;
      v32 = *(a1 + 3);
      if (v32 && v31)
      {
        (*(*v32 + 16))(v32, v9, v31);
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

      goto LABEL_43;
    }

    (*(*v30 + 16))(v30, v9);
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

    if (v7 <= v10 - v9)
    {
      v31 = 0;
      v36 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v36 && v7)
      {
        (*(*v36 + 16))(v36);
        v9 = *a1;
        v31 = *(a1 + 1);
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_41;
    }

    *(a1 + 2) = v10 + 1;
    if (!v10)
    {
      v31 = v7;
      goto LABEL_41;
    }

    v14 = *v10;
    if (v14 < 2)
    {
      v15 = 1;
      goto LABEL_12;
    }

LABEL_43:
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33 && v7)
    {
      (*(*v33 + 16))(v33, v9);
    }

    v15 = 0;
LABEL_12:
    v16 = v14 ? v15 : 0;
    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v48);
    IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v45);
    result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v42);
    v7 = *(a1 + 1);
    v19 = *(a1 + 2);
    v20 = *a1;
    if (v7 <= &v19[-*a1])
    {
      break;
    }

    *(a1 + 2) = v19 + 1;
    if (!v19)
    {
      goto LABEL_47;
    }

    v21 = *v19;
    if (v21 >= 3)
    {
      goto LABEL_50;
    }

    v22 = v21 | 0x100;
    if (!v20)
    {
      goto LABEL_51;
    }

LABEL_19:
    if (v12)
    {
      LOBYTE(v37) = v13;
      if (v15)
      {
        HIBYTE(v37) = v16;
        if (v50)
        {
          v23 = v48;
          a3.n128_u64[0] = v49;
          v48 = 0;
          v49 = 0;
          if (v47)
          {
            v24 = v45;
            a4.n128_u64[0] = v46;
            v45 = 0;
            v46 = 0;
            if (v44)
            {
              v25 = v42;
              a5.n128_u64[0] = v43;
              v42 = 0;
              v43 = 0;
              if (v22 > 0xFF)
              {
                *&v18 = 0;
                v41 = v22;
                *a2 = v37;
                v38 = v18;
                v39 = v18;
                *(a2 + 8) = v23;
                *(a2 + 16) = a3.n128_u64[0];
                *(a2 + 24) = v24;
                *(a2 + 32) = a4.n128_u64[0];
                v40 = v18;
                *(a2 + 40) = v25;
                *(a2 + 48) = a5.n128_u64[0];
                *(a2 + 56) = v22;
                *(a2 + 64) = 1;
                WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v20);
                WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v26);
                result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v27);
                goto LABEL_26;
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_34:
    *a1 = 0;
    *(a1 + 1) = 0;
    v28 = *(a1 + 3);
    if (v28)
    {
      if (v7)
      {
        (*(*v28 + 16))(v28, a3, a4, a5);
        v7 = *(a1 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_36:
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (!v29)
    {
      v7 = 0;
      goto LABEL_38;
    }

    if (v7)
    {
      (*(*v29 + 16))(v29);
      v11 = 0;
      v9 = *a1;
      v7 = *(a1 + 1);
    }

    else
    {
LABEL_38:
      v9 = 0;
      v11 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v34 = *(a1 + 3);
  if (v34)
  {
    if (v7)
    {
      (*(*v34 + 16))(v34);
      v7 = *(a1 + 1);
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_47:
  *a1 = 0;
  *(a1 + 1) = 0;
  v35 = *(a1 + 3);
  if (!v35)
  {
    v7 = 0;
    goto LABEL_49;
  }

  if (v7)
  {
    (*(*v35 + 16))(v35);
    v20 = *a1;
    v7 = *(a1 + 1);
  }

  else
  {
LABEL_49:
    v20 = 0;
  }

LABEL_50:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v7)
    {
      result = (*(*result + 16))(result, v20);
      v22 = 0;
      v20 = *a1;
      if (*a1)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_51:
  *a2 = 0;
  *(a2 + 64) = 0;
LABEL_26:
  if (v44 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v20);
  }

  if (v47 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v20);
  }

  if (v50 == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v20);
  }

  return result;
}

void sub_19D722870(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a20)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a18, a2);
  }

  if (a26 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a22, a2);
  }

  if (*(v26 - 56) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26 - 72, a2);
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::GrammarDetail,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (a2 + 2));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::GrammarDetail,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::CharacterRange>(a1, &v16);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v13);
  result = IPC::Decoder::decode<WTF::String>(a1, &v11);
  if (!*a1)
  {
    goto LABEL_14;
  }

  if ((v17 & 1) == 0 || (v15 & 1) == 0 || (v6 = v13, v7 = v14, v13 = 0, v14 = 0, (v12 & 1) == 0))
  {
    __break(1u);
LABEL_14:
    *a2 = 0;
    *(a2 + 40) = 0;
    goto LABEL_6;
  }

  v8 = v11;
  v11 = 0;
  *a2 = v16;
  v9 = 0;
  *(a2 + 16) = v6;
  v10 = 0u;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = 1;
  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v5);
LABEL_6:
  if (v12 == 1)
  {
    result = v11;
    v11 = 0;
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
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v5);
  }

  return result;
}

void sub_19D722A30(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  if (a19)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, a2);
  }

  _Unwind_Resume(exception_object);
}

void *IPC::Decoder::decode<WebCore::CharacterRange>@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::CharacterRange,void>::decode(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
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

void *IPC::ArgumentCoder<WebCore::TextCheckingResult,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::VectorArgumentCoder<false,WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 24);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::TextCheckingResult,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::OptionSet<WebCore::TextCheckingType>>(a1);
  IPC::Decoder::decode<WebCore::CharacterRange>(a1, &v21);
  IPC::VectorArgumentCoder<false,WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v18);
  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::String>(a1, &v16);
    if (!*a1)
    {
      break;
    }

    if ((v4 & 0x100) != 0)
    {
      v13[0] = v4;
      if (v22)
      {
        *&v13[8] = v21;
        if (v20)
        {
          v7 = v18;
          v8 = v19;
          v18 = 0;
          v19 = 0;
          if (v17)
          {
            v9 = v16;
            v16 = 0;
            *a2 = *v13;
            v14 = 0;
            *(a2 + 16) = *&v13[16];
            *(a2 + 24) = v7;
            v15 = 0u;
            *(a2 + 32) = v8;
            *(a2 + 40) = v9;
            *(a2 + 48) = 1;
            result = WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v6);
            goto LABEL_8;
          }
        }
      }
    }

    __break(1u);
LABEL_16:
    v10 = *a1;
    v11 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v12 = a1[3];
    if (v12 && v11)
    {
      (*(*v12 + 16))(v12, v10);
    }
  }

  *a2 = 0;
  *(a2 + 48) = 0;
LABEL_8:
  if (v17 == 1)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  if (v20 == 1)
  {
    return WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v6);
  }

  return result;
}

void sub_19D722CAC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::TextCheckingType>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WTF::OptionSet<WebCore::TextCheckingType>,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::ArgumentCoder<WebCore::TextCheckingRequestData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v6 = *(a2 + 8);
  v7 = v4;
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, &v6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 25));
  LOBYTE(v6) = *(a2 + 24);
  return IPC::Encoder::operator<<<BOOL>(a1, &v6);
}

uint64_t IPC::ArgumentCoder<WebCore::TextCheckingRequestData,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    goto LABEL_25;
  }

  a1[2] = (v6 + 1);
  if (!v6)
  {
    goto LABEL_27;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    goto LABEL_48;
  }

  if (v8)
  {
    v9 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(a1);
    if ((v10 & 1) == 0)
    {
      goto LABEL_47;
    }

    v11 = v9;
    v12 = 1;
    v2 = 1;
  }

  else
  {
    v11 = 0;
    v2 = 0;
    v12 = 1;
  }

  while (1)
  {
    IPC::Decoder::decode<WTF::String>(a1, &v31);
    result = IPC::Decoder::decode<WTF::OptionSet<WebCore::TextCheckingType>>(a1);
    v5 = a1[1];
    v14 = a1[2];
    v15 = *a1;
    if (v5 <= &v14[-*a1])
    {
      v30 = result;
      *a1 = 0;
      a1[1] = 0;
      v23 = a1[3];
      if (v23)
      {
        if (v5)
        {
          (*(*v23 + 16))(v23);
          v15 = *a1;
          v5 = a1[1];
          goto LABEL_33;
        }
      }

      else
      {
        v5 = 0;
      }

      v15 = 0;
    }

    else
    {
      a1[2] = (v14 + 1);
      if (v14)
      {
        v16 = *v14;
        if (v16 < 2)
        {
          v17 = 0;
          v18 = v16 != 0;
          if (!v15)
          {
            goto LABEL_38;
          }

          goto LABEL_12;
        }

        v30 = result;
        goto LABEL_37;
      }

      v30 = result;
    }

LABEL_33:
    *a1 = 0;
    a1[1] = 0;
    v24 = a1[3];
    if (v24)
    {
      if (v5)
      {
        (*(*v24 + 16))(v24, v15);
        v15 = *a1;
        v5 = a1[1];
        goto LABEL_37;
      }
    }

    else
    {
      v5 = 0;
    }

    v15 = 0;
LABEL_37:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (!result || !v5 || ((*(*result + 16))(result, v15), result = a1[3], v15 = *a1, v25 = a1[1], *a1 = 0, a1[1] = 0, !result) || !v25 || ((*(*result + 16))(result, v15), v18 = 0, v15 = *a1, v17 = 1, result = v30, !*a1))
    {
LABEL_38:
      v20 = 0;
      *a2 = 0;
      goto LABEL_19;
    }

LABEL_12:
    if ((v12 & 1) != 0 && (v32 & 1) != 0 && (result & 0x100) != 0 && !v17)
    {
      break;
    }

    __break(1u);
LABEL_25:
    *a1 = 0;
    a1[1] = 0;
    v21 = a1[3];
    if (v21)
    {
      if (v5)
      {
        (*(*v21 + 16))(v21);
        v5 = a1[1];
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_27:
    *a1 = 0;
    a1[1] = 0;
    v22 = a1[3];
    if (!v22)
    {
      v5 = 0;
LABEL_29:
      v7 = 0;
      goto LABEL_48;
    }

    if (!v5)
    {
      goto LABEL_29;
    }

    (*(*v22 + 16))(v22);
LABEL_47:
    v7 = *a1;
    v5 = a1[1];
LABEL_48:
    *a1 = 0;
    a1[1] = 0;
    v26 = a1[3];
    if (v26 && v5)
    {
      (*(*v26 + 16))(v26, v7);
    }

    v27 = *a1;
    v28 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v29 = a1[3];
    if (v29 && v28)
    {
      (*(*v29 + 16))(v29, v27);
    }

    v12 = 0;
    v11 = 0;
  }

  v19 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
  }

  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v2;
  *(a2 + 24) = v18;
  v20 = 1;
  *(a2 + 25) = result;
LABEL_19:
  *(a2 + 32) = v20;
  if (v32 == 1)
  {
    result = v31;
    v31 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v15);
      }
    }
  }

  return result;
}

void sub_19D723148(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::LayoutRect,void>::encode(IPC::Encoder *a1, int *a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[2]);
  v4 = a2[3];

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

unint64_t IPC::ArgumentCoder<WebCore::LayoutRect,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::LayoutPoint>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WebCore::LayoutPoint>(a1);
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

unint64_t IPC::Decoder::decode<WebCore::LayoutPoint>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::LayoutPoint,void>::decode(a1);
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

void IPC::ArgumentCoder<WebCore::BlobPart,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>>(v7, a1);
  if (*a1)
  {
    if ((v8 & 1) == 0)
    {
      __break(1u);
      return;
    }

    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>::move_constructor(v6, v7);
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>::move_constructor(a2, v6);
    a2[48] = 1;
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(v6, v5);
  }

  else
  {
    *a2 = 0;
    a2[48] = 0;
  }

  if (v8 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(v7, v4);
  }
}

void sub_19D723368(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(&a10, a2);
  if (a22 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(&a16, v23);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[48] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }
}

void sub_19D7233D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 48) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::MediaStreamRequest,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = (a2 + 8);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WebCore::MediaConstraints,void>::encode(a1, v4);
  IPC::ArgumentCoder<WebCore::MediaConstraints,void>::encode(a1, (a2 + 976));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1944));

  return IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 1952));
}

void IPC::ArgumentCoder<WebCore::MediaStreamRequest,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v33 = a1[3];
    if (v33)
    {
      if (v4)
      {
        (*(*v33 + 16))(v33);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_28:
    *a1 = 0;
    a1[1] = 0;
    v34 = a1[3];
    if (v34)
    {
      if (v4)
      {
        (*(*v34 + 16))(v34);
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
    goto LABEL_31;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = *v5;
  if (v7 < 3)
  {
    v8 = v7 | 0x100;
    goto LABEL_5;
  }

LABEL_31:
  *a1 = 0;
  a1[1] = 0;
  v35 = a1[3];
  if (v35 && v4)
  {
    (*(*v35 + 16))(v35, v6);
  }

  v8 = 0;
LABEL_5:
  IPC::Decoder::decode<WebCore::MediaConstraints>(a1, v50);
  IPC::Decoder::decode<WebCore::MediaConstraints>(a1, v46);
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a1;
  if (v9 <= &v10[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v36 = a1[3];
    if (v36)
    {
      if (v9)
      {
        (*(*v36 + 16))(v36);
        v9 = a1[1];
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_37:
    *a1 = 0;
    a1[1] = 0;
    v37 = a1[3];
    if (v37)
    {
      if (v9)
      {
        (*(*v37 + 16))(v37);
        v12 = 0;
        v11 = *a1;
        v9 = a1[1];
        goto LABEL_40;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    v12 = 0;
    goto LABEL_40;
  }

  a1[2] = (v10 + 1);
  if (!v10)
  {
    goto LABEL_37;
  }

  v12 = *v10;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_9;
  }

LABEL_40:
  *a1 = 0;
  a1[1] = 0;
  v38 = a1[3];
  if (v38 && v9)
  {
    (*(*v38 + 16))(v38, v11);
  }

  v13 = 0;
LABEL_9:
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a1);
  if (*a1)
  {
    if (v8 > 0xFF && (v53 & 1) != 0)
    {
      v17 = v15;
      v18 = v16;
      WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(v39, v50);
      *&v19 = 0;
      v20 = v51;
      v51 = v19;
      v40 = v20;
      v41 = v52;
      if (v49)
      {
        WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(v42, v46);
        *&v21 = 0;
        v22 = v47;
        v47 = v21;
        v43 = v22;
        v44 = v48;
        if (v13)
        {
          LOBYTE(v45) = v14;
          if (v18)
          {
            *(&v45 + 1) = v17;
            *a2 = v8;
            WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(a2 + 8, v39);
            *&v23 = 0;
            v24 = v40;
            v40 = v23;
            *(a2 + 952) = v24;
            *(a2 + 968) = v41;
            WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(a2 + 976, v42);
            *&v25 = 0;
            v26 = v43;
            v43 = v25;
            *(a2 + 1920) = v26;
            *(a2 + 1936) = v44;
            *(a2 + 1944) = v45;
            *(a2 + 1960) = 1;
            WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v27);
            WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v42, v28);
            WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v29);
            WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v39, v30);
            goto LABEL_19;
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 1960) = 0;
LABEL_19:
  if (v49 == 1)
  {
    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v47, v16);
    WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v46, v31);
  }

  if (v53 == 1)
  {
    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v16);
    WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v50, v32);
  }
}

void sub_19D723880(_Unwind_Exception *a1, void *a2)
{
  if (LOBYTE(STACK[0xB78]) == 1)
  {
    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xB60], a2);
    WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(&STACK[0x7B0], v3);
  }

  if (LOBYTE(STACK[0xF48]) == 1)
  {
    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xF30], a2);
    WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(&STACK[0xB80], v4);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::MediaConstraints>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::MediaConstraints,void>::decode(a1, a2);
  if ((*(a2 + 968) & 1) == 0)
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

void sub_19D723994(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 968) == 1)
  {
    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 944, a2);
    WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v2, v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::MediaTrackConstraintSetMap,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::IntConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::IntConstraint> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::IntConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::IntConstraint> const&>(a1, (a2 + 56));
  IPC::ArgumentCoder<std::optional<WebCore::IntConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::IntConstraint> const&>(a1, (a2 + 112));
  IPC::ArgumentCoder<std::optional<WebCore::IntConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::IntConstraint> const&>(a1, (a2 + 168));
  IPC::ArgumentCoder<std::optional<WebCore::DoubleConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::DoubleConstraint> const&>(a1, (a2 + 224));
  IPC::ArgumentCoder<std::optional<WebCore::DoubleConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::DoubleConstraint> const&>(a1, (a2 + 312));
  IPC::ArgumentCoder<std::optional<WebCore::DoubleConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::DoubleConstraint> const&>(a1, (a2 + 400));
  IPC::ArgumentCoder<std::optional<WebCore::BooleanConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::BooleanConstraint> const&>(a1, a2 + 488);
  IPC::ArgumentCoder<std::optional<WebCore::BooleanConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::BooleanConstraint> const&>(a1, a2 + 512);
  IPC::ArgumentCoder<std::optional<WebCore::BooleanConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::BooleanConstraint> const&>(a1, a2 + 536);
  IPC::ArgumentCoder<std::optional<WebCore::StringConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::StringConstraint> const&>(a1, (a2 + 560));
  IPC::ArgumentCoder<std::optional<WebCore::StringConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::StringConstraint> const&>(a1, (a2 + 616));
  IPC::ArgumentCoder<std::optional<WebCore::StringConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::StringConstraint> const&>(a1, (a2 + 672));
  IPC::ArgumentCoder<std::optional<WebCore::StringConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::StringConstraint> const&>(a1, (a2 + 728));
  IPC::ArgumentCoder<std::optional<WebCore::DoubleConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::DoubleConstraint> const&>(a1, (a2 + 784));
  IPC::ArgumentCoder<std::optional<WebCore::BooleanConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::BooleanConstraint> const&>(a1, a2 + 872);
  IPC::ArgumentCoder<std::optional<WebCore::BooleanConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::BooleanConstraint> const&>(a1, a2 + 896);

  return IPC::ArgumentCoder<std::optional<WebCore::BooleanConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::BooleanConstraint> const&>(a1, a2 + 920);
}

_BYTE *IPC::Decoder::decode<std::optional<WebCore::IntConstraint>>(_BYTE *result, uint64_t *a2)
{
  v3 = result;
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v21 = a2[3];
    if (v21)
    {
      if (v6)
      {
        (*(*v21 + 16))(v21);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_29;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_29;
  }

  a2[2] = (v4 + 1);
  if (v4)
  {
    v7 = *v4;
    if (v7 >= 2)
    {
      goto LABEL_9;
    }

    if (v7)
    {
      v8 = IPC::Decoder::decode<WebCore::HueInterpolationMethod>(a2);
      v9 = IPC::Decoder::decode<std::optional<int>>(a2);
      v11 = v10;
      v12 = IPC::Decoder::decode<std::optional<int>>(a2);
      v14 = v13;
      v15 = IPC::Decoder::decode<std::optional<int>>(a2);
      v17 = v16;
      result = IPC::Decoder::decode<std::optional<int>>(a2);
      if (!*a2)
      {
LABEL_8:
        v6 = a2[1];
        goto LABEL_9;
      }

      if (v8 <= 0xFFu)
      {
        goto LABEL_23;
      }

      if (v8)
      {
        goto LABEL_8;
      }

      if ((v11 & 1) == 0 || (v14 & 1) == 0 || (v17 & 1) == 0 || (v18 & 1) == 0)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        if (v6)
        {
          (*(*result + 16))(result);
        }

        goto LABEL_10;
      }

      v3[8] = 0;
      *(v3 + 12) = v9;
      *(v3 + 20) = v12;
      *(v3 + 28) = v15;
      *(v3 + 9) = result;
      v3[40] = BYTE4(result);
      *v3 = &unk_1F10E7EA0;
      v3[48] = 1;
    }

    else
    {
      *result = 0;
      result[48] = 0;
    }

    v3[56] = 1;
    return result;
  }

LABEL_29:
  *a2 = 0;
  a2[1] = 0;
  v22 = a2[3];
  if (v22)
  {
    if (v6)
    {
      (*(*v22 + 16))(v22, v5);
      v6 = a2[1];
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_9:
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    goto LABEL_24;
  }

LABEL_10:
  *v3 = 0;
  v3[56] = 0;
  v19 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v19)
  {
    v20 = *(*result + 16);

    return v20();
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::optional<WebCore::DoubleConstraint>>(IPC::Decoder *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    if (v24)
    {
      if (v6)
      {
        (*(*v24 + 16))(v24);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_45:
        *a2 = 0;
        *(a2 + 1) = 0;
        v25 = *(a2 + 3);
        if (v25)
        {
          if (v6)
          {
            (*(*v25 + 16))(v25, v5);
            v6 = *(a2 + 1);
          }
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_45;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_45;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_34;
  }

  if (!v7)
  {
    *result = 0;
    *(result + 80) = 0;
    goto LABEL_18;
  }

  v8 = IPC::Decoder::decode<WebCore::HueInterpolationMethod>(a2);
  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a2, &v35);
  if ((v36 & 1) == 0)
  {
    v10 = *a2;
    v11 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12)
    {
      if (v11)
      {
        (*(*v12 + 16))(v12, v10);
      }
    }
  }

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a2, &v33);
  if ((v34 & 1) == 0)
  {
    v13 = *a2;
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15)
    {
      if (v14)
      {
        (*(*v15 + 16))(v15, v13);
      }
    }
  }

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a2, &v31);
  if ((v32 & 1) == 0)
  {
    v16 = *a2;
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18)
    {
      if (v17)
      {
        (*(*v18 + 16))(v18, v16);
      }
    }
  }

  result = IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a2, &v29);
  if ((v30 & 1) == 0)
  {
    v19 = *a2;
    v20 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v20)
      {
        result = (*(*result + 16))(result, v19);
      }
    }
  }

  if (*a2)
  {
    if (v8 <= 0xFFu)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 == 1)
    {
      if (v36 & 1) != 0 && (v34 & 1) != 0 && (v32 & 1) != 0 && (v30)
      {
        v9 = v33;
        *v28 = *(&v31 + 1);
        *&v28[8] = v29;
        v26 = v35;
        *v27 = v31;
        *&v27[9] = *&v28[1];
        *(v3 + 8) = 1;
        *(v3 + 1) = v26;
        *(v3 + 2) = v9;
        *(v3 + 3) = *v27;
        *(v3 + 57) = *&v28[1];
        *v3 = &unk_1F10E7F18;
        *(v3 + 80) = 1;
LABEL_18:
        *(v3 + 88) = 1;
        return result;
      }

      goto LABEL_32;
    }
  }

LABEL_33:
  v6 = *(a2 + 1);
LABEL_34:
  *a2 = 0;
  *(a2 + 1) = 0;
  v21 = *(a2 + 3);
  if (v21 && v6)
  {
    (*(*v21 + 16))(v21);
  }

  *v3 = 0;
  *(v3 + 88) = 0;
  v22 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v22)
  {
    v23 = *(*result + 16);

    return v23();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::BooleanConstraint>>(uint64_t result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12)
    {
      if (v6)
      {
        (*(*v12 + 16))(v12);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_27:
        *a2 = 0;
        *(a2 + 1) = 0;
        v13 = *(a2 + 3);
        if (v13)
        {
          if (v6)
          {
            (*(*v13 + 16))(v13, v5);
            v6 = *(a2 + 1);
          }
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_27;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_27;
  }

  v7 = *v4;
  if (v7 < 2)
  {
    if (!v7)
    {
      *result = 0;
      *(result + 16) = 0;
      goto LABEL_12;
    }

    v8 = IPC::Decoder::decode<WebCore::HueInterpolationMethod>(a2);
    v9 = IPC::Decoder::decode<std::optional<BOOL>>(a2);
    result = IPC::Decoder::decode<std::optional<BOOL>>(a2);
    if (*a2)
    {
      if (v8 <= 0xFFu)
      {
LABEL_17:
        __break(1u);
LABEL_18:
        if (v6)
        {
          (*(*result + 16))(result);
        }

        goto LABEL_15;
      }

      if (v8 == 2)
      {
        if ((v9 & 0x10000) != 0 && (result & 0x10000) != 0)
        {
          *(v3 + 8) = 2;
          *v3 = &unk_1F10E7F68;
          *(v3 + 9) = v9 | (result << 16);
          *(v3 + 16) = 1;
LABEL_12:
          *(v3 + 24) = 1;
          return result;
        }

        goto LABEL_17;
      }
    }

    v6 = *(a2 + 1);
  }

LABEL_14:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    goto LABEL_18;
  }

LABEL_15:
  *v3 = 0;
  *(v3 + 24) = 0;
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

uint64_t IPC::Decoder::decode<std::optional<WebCore::StringConstraint>>(WTF *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      if (v6)
      {
        (*(*v22 + 16))(v22);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_35;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_35:
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23)
    {
      if (v6)
      {
        (*(*v23 + 16))(v23, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_38;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_38:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v6)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_28;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_35;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_38;
  }

  if (!v7)
  {
    LOBYTE(v24[0]) = 0;
    v27 = 0;
    result = std::__optional_move_base<WebCore::StringConstraint,false>::__optional_move_base[abi:sn200100](a1, v24);
    *(a1 + 56) = 1;
    if (v27 != 1)
    {
LABEL_21:
      if (*(a1 + 56))
      {
        return result;
      }

      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v8 = IPC::Decoder::decode<WebCore::HueInterpolationMethod>(a2);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v36);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v34);
  if (!*a2)
  {
    goto LABEL_13;
  }

  if (v8 <= 0xFFu)
  {
    goto LABEL_23;
  }

  if (v8 != 3)
  {
LABEL_13:
    LOBYTE(v24[0]) = 0;
    v27 = 0;
    goto LABEL_14;
  }

  v28 = &unk_1F10E7EF0;
  v29 = 3;
  if (v37 & 1) != 0 && (v35)
  {
    *&v10 = 0;
    v31 = 3;
    v11 = v36;
    v36 = v10;
    v30 = &unk_1F10E7F90;
    v32 = v11;
    v12 = v34;
    v34 = v10;
    v33 = v12;
    std::optional<WebCore::StringConstraint>::optional[abi:sn200100]<WebCore::StringConstraint,0>(v24, &v30);
    v30 = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v13);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v14);
LABEL_14:
    if (v35 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v9);
    }

    if (v37 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v9);
    }

    if ((v27 & 1) == 0)
    {
      v20 = *a2;
      v21 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (!result || !v21 || (result = (*(*result + 16))(result, v20), (v27 & 1) == 0))
      {
LABEL_28:
        *a1 = 0;
        *(a1 + 56) = 0;
        goto LABEL_21;
      }
    }

    result = std::optional<WebCore::StringConstraint>::optional[abi:sn200100]<WebCore::StringConstraint,0>(a1, v24);
    *(a1 + 56) = 1;
    if ((v27 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    v24[0] = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v16);
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v17);
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  v18 = *a2;
  v19 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v19)
    {
      return (*(*result + 16))(result, v18);
    }
  }

  return result;
}

void sub_19D724654(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a16 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::MediaCapabilitiesDecodingInfo,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 1);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 2);

  return IPC::ArgumentCoder<WebCore::MediaDecodingConfiguration,void>::encode(a1, (a2 + 8));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::MediaCapabilitiesDecodingInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v23 = *(a1 + 3);
    if (v23)
    {
      if (v4)
      {
        (*(*v23 + 16))(v23);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_67:
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (v24)
    {
      if (v4)
      {
        (*(*v24 + 16))(v24);
        v8 = 0;
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_70;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v8 = 0;
    goto LABEL_70;
  }

  v7 = v5 + 1;
  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_67;
  }

  v8 = *v5;
  if (v8 < 2)
  {
    v9 = 1;
    goto LABEL_5;
  }

LABEL_70:
  *a1 = 0;
  *(a1 + 1) = 0;
  v25 = *(a1 + 3);
  if (!v25 || !v4)
  {
    v10 = 0;
    v9 = 0;
    v26 = 0;
    v6 = 0;
LABEL_72:
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27 && v26)
    {
      (*(*v27 + 16))(v27, v6, v26);
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

    goto LABEL_74;
  }

  (*(*v25 + 16))(v25, v6);
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

  if (v4 <= v7 - v6)
  {
    v26 = 0;
    v32 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v32 && v4)
    {
      (*(*v32 + 16))(v32);
      v6 = *a1;
      v26 = *(a1 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_72;
  }

  v11 = v7 + 1;
  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
    v26 = v4;
    goto LABEL_72;
  }

  v12 = *v7;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_12;
  }

LABEL_74:
  *a1 = 0;
  *(a1 + 1) = 0;
  v28 = *(a1 + 3);
  if (!v28 || !v4)
  {
    v14 = 0;
    v13 = 0;
    v29 = 0;
    v6 = 0;
LABEL_76:
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (v30 && v29)
    {
      (*(*v30 + 16))(v30, v6, v29);
      v34 = 0;
      v6 = *a1;
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v34 = 0;
    }

    goto LABEL_79;
  }

  (*(*v28 + 16))(v28, v6);
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

  if (v4 <= v11 - v6)
  {
    v29 = 0;
    v33 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v33 && v4)
    {
      (*(*v33 + 16))(v33);
      v6 = *a1;
      v29 = *(a1 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_76;
  }

  *(a1 + 2) = v11 + 1;
  if (!v11)
  {
    v29 = v4;
    goto LABEL_76;
  }

  v15 = *v11;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_19;
  }

  v34 = v15;
LABEL_79:
  *a1 = 0;
  *(a1 + 1) = 0;
  v31 = *(a1 + 3);
  if (v31 && v4)
  {
    (*(*v31 + 16))(v31, v6);
  }

  v16 = 0;
  v15 = v34;
LABEL_19:
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result = IPC::ArgumentCoder<WebCore::MediaDecodingConfiguration,void>::decode(a1, v44);
  if ((v52 & 1) == 0)
  {
    goto LABEL_61;
  }

  while (1)
  {
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 168) = 0;
      goto LABEL_43;
    }

    if (v9 & 1) != 0 && (v13 & 1) != 0 && (v16)
    {
      LOBYTE(v35) = v10;
      HIBYTE(v35) = v14;
      if (v52)
      {
        break;
      }
    }

    __break(1u);
LABEL_61:
    v19 = *a1;
    v22 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v22)
    {
      result = (*(*result + 16))(result, v19);
    }
  }

  WebCore::MediaConfiguration::MediaConfiguration(v36, v44);
  v43 = v51;
  *a2 = v35;
  *(a2 + 2) = v17;
  result = WebCore::MediaConfiguration::MediaConfiguration(a2 + 8, v36);
  *(a2 + 160) = v43;
  *(a2 + 168) = 1;
  if (v42[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v42, v19);
  }

  if (v41[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v19);
  }

  if (v40 == 1)
  {
    v20 = v39;
    v39 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }

    result = v38;
    v38 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v19);
    }
  }

  if (v37 == 1)
  {
    result = v36[0];
    v36[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }
    }
  }

LABEL_43:
  if (v52 == 1)
  {
    if (v50[16] == 1)
    {
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v50, v19);
    }

    if (v49[16] == 1)
    {
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v49, v19);
    }

    if (v48 == 1)
    {
      v21 = v47;
      v47 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v19);
      }

      result = v46;
      v46 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }
    }

    if (v45 == 1)
    {
      result = v44[0];
      v44[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v19);
        }
      }
    }
  }

  return result;
}