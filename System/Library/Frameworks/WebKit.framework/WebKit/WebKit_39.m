void IPC::ArgumentCoder<WebKit::WebGPU::ExternalTextureDescriptor,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 8);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 24));

  IPC::ArgumentCoder<std::optional<WebKit::SharedVideoFrame>,void>::encode<IPC::Encoder,std::optional<WebKit::SharedVideoFrame>>(a1, a2 + 32);
}

void IPC::ArgumentCoder<WebKit::WebGPU::ExternalTextureDescriptor,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<WTF::String>(a1, &v36);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v2, &v33);
  if ((v35 & 1) == 0)
  {
    v9 = *v2;
    v10 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    v11 = v2[3];
    if (v11)
    {
      if (v10)
      {
        (*(*v11 + 16))(v11, v9);
      }
    }
  }

  v4 = IPC::Decoder::decode<WebCore::WebGPU::PredefinedColorSpace>(v2);
  v5 = v2[1];
  v6 = v2[2];
  v7 = *v2;
  if (v5 <= &v6[-*v2])
  {
    *v2 = 0;
    v2[1] = 0;
    v12 = v2[3];
    if (v12)
    {
      if (v5)
      {
        (*(*v12 + 16))(v12);
        v5 = v2[1];
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_18;
  }

  v2[2] = (v6 + 1);
  if (!v6)
  {
LABEL_18:
    *v2 = 0;
    v2[1] = 0;
    v13 = v2[3];
    if (v13)
    {
      if (v5)
      {
        (*(*v13 + 16))(v13);
        v7 = *v2;
        v5 = v2[1];
        goto LABEL_21;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_21:
    *v2 = 0;
    v2[1] = 0;
    v14 = v2[3];
    if (v14 && v5)
    {
      (*(*v14 + 16))(v14, v7);
    }

    goto LABEL_22;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    goto LABEL_21;
  }

  if (!v8)
  {
    v21[0] = 0;
    v24 = 0;
    std::__optional_move_base<WebKit::SharedVideoFrame,false>::__optional_move_base[abi:sn200100](&v28, v21);
    v32 = 1;
    if (v24 == 1 && BYTE8(v23) == 2)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  IPC::Decoder::decode<WebKit::SharedVideoFrame>(v2, v21);
  if (v24 != 1)
  {
LABEL_22:
    LOBYTE(v28) = 0;
    v32 = 0;
    goto LABEL_23;
  }

  v28 = *v21;
  v29 = *&v21[16];
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,(mpark::detail::Trait)1>::move_constructor(v30, v22);
  v31 = 1;
  v32 = 1;
  if ((v24 & 1) != 0 && BYTE8(v23) == 2)
  {
LABEL_12:
    WTF::MachSendRight::~MachSendRight(v22);
  }

LABEL_23:
  if ((v32 & 1) == 0)
  {
    goto LABEL_46;
  }

  while (1)
  {
    if (!*v2)
    {
      *a2 = 0;
      *(a2 + 88) = 0;
      goto LABEL_36;
    }

    if (v37)
    {
      v15 = v36;
      v36 = 0;
      *v21 = v15;
      if (v35)
      {
        v2 = v21;
        *&v21[8] = v33;
        v21[16] = v34;
        if (v4 > 0xFFu)
        {
          v22[0] = v4;
          if (v32)
          {
            break;
          }
        }
      }
    }

    __break(1u);
LABEL_46:
    v7 = *v2;
    v19 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    v20 = v2[3];
    if (v20 && v19)
    {
      (*(*v20 + 16))(v20, v7);
    }
  }

  std::__optional_move_base<WebKit::SharedVideoFrame,false>::__optional_move_base[abi:sn200100](&v23, &v28);
  v16 = *v21;
  *v21 = 0;
  *a2 = v16;
  *(a2 + 8) = *&v21[8];
  *(a2 + 24) = v22[0];
  std::__optional_move_base<WebKit::SharedVideoFrame,false>::__optional_move_base[abi:sn200100](a2 + 32, &v23);
  *(a2 + 88) = 1;
  if (v27 == 1)
  {
    if (v26 == 2)
    {
      WTF::MachSendRight::~MachSendRight(&v25);
    }

    v26 = -1;
  }

  v17 = *v21;
  *v21 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v7);
  }

LABEL_36:
  if (v32 == 1 && v31 == 1 && v30[16] == 2)
  {
    WTF::MachSendRight::~MachSendRight(v30);
  }

  if (v37 == 1)
  {
    v18 = v36;
    v36 = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v7);
      }
    }
  }
}

void sub_19D7A12D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, int a36, __int16 a37, char a38, char a39, int a40, __int16 a41, char a42, char a43)
{
  if (a41 == 1 && a37 == 1 && a35 == 2)
  {
    WTF::MachSendRight::~MachSendRight(&a33);
  }

  if (*(v43 - 56) == 1)
  {
    v45 = *(v43 - 64);
    *(v43 - 64) = 0;
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

uint64_t IPC::Decoder::decode<WebCore::WebGPU::PredefinedColorSpace>(void *a1)
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
  if (v4 < 2)
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

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::FragmentState,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = (a2 + 5);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, (a2 + 1));
  IPC::VectorArgumentCoder<false,WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 3);

  return IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::ColorTargetState>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::optional<WebKit::WebGPU::ColorTargetState>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::FragmentState,void>::encode(void *a1, void *a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::String> const&>(a1, (a2 + 1));
  IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 3));

  return IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::ColorTargetState>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<std::optional<WebKit::WebGPU::ColorTargetState>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 5);
}

WTF::StringImpl *IPC::Decoder::decode<WTF::Vector<WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, WTF::StringImpl **a2)
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
        goto LABEL_46;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_46:
    *a2 = 0;
    a2[1] = 0;
    v31 = a2[3];
    if (v31 && v6)
    {
      (*(*v31 + 16))(v31, v5);
    }

    *a1 = 0;
    *(a1 + 16) = 0;
LABEL_39:
    v28 = *a2;
    v29 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v29)
      {
        return (*(*result + 16))(result, v28);
      }
    }

    return result;
  }

  a2[2] = (v4 + 8);
  if (!v4)
  {
    goto LABEL_46;
  }

  v8 = *v4;
  v35 = 0;
  v36 = 0;
  if (v8 < 0x10000)
  {
    if (v8)
    {
      LODWORD(v36) = v8;
      v35 = WTF::fastMalloc((16 * v8));
      while (1)
      {
        IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,double>>(&v32, a2);
        if ((v34 & 1) == 0)
        {
          goto LABEL_38;
        }

        if (HIDWORD(v36) != v36)
        {
          break;
        }

        v9 = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v35, HIDWORD(v36) + 1, &v32);
        v10 = HIDWORD(v36) + 1;
        v11 = (v35 + 16 * HIDWORD(v36));
        v12 = *v9;
        *v9 = 0;
        *v11 = v12;
        v11[1] = v9[1];
        HIDWORD(v36) = v10;
        if (v34)
        {
          goto LABEL_15;
        }

LABEL_18:
        if (!--v8)
        {
          goto LABEL_19;
        }
      }

      v13 = HIDWORD(v36) + 1;
      v14 = (v35 + 16 * HIDWORD(v36));
      v15 = v32;
      v32 = 0;
      *v14 = v15;
      v14[1] = v33;
      HIDWORD(v36) = v13;
LABEL_15:
      v16 = v32;
      v32 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v5);
      }

      goto LABEL_18;
    }

LABEL_19:
    *a1 = v35;
    v17 = v36;
    v35 = 0;
    v36 = 0;
    *(a1 + 8) = v17;
    *(a1 + 16) = 1;
    return WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v5);
  }

  do
  {
    IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,double>>(&v32, a2);
    if ((v34 & 1) == 0)
    {
LABEL_38:
      *a1 = 0;
      *(a1 + 16) = 0;
      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v5);
      goto LABEL_39;
    }

    if (HIDWORD(v36) == v36)
    {
      result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v35, HIDWORD(v36) + 1, &v32);
      v19 = HIDWORD(v36) + 1;
      v20 = (v35 + 16 * HIDWORD(v36));
      v21 = *result;
      *result = 0;
      *v20 = v21;
      v20[1] = *(result + 1);
      HIDWORD(v36) = v19;
      if ((v34 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v22 = HIDWORD(v36) + 1;
      v23 = (v35 + 16 * HIDWORD(v36));
      v24 = v32;
      v32 = 0;
      *v23 = v24;
      v23[1] = v33;
      HIDWORD(v36) = v22;
    }

    result = v32;
    v32 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v5);
    }

LABEL_28:
    --v8;
  }

  while (v8);
  v25 = HIDWORD(v36);
  if (v36 <= HIDWORD(v36))
  {
    goto LABEL_19;
  }

  v26 = v35;
  if (!HIDWORD(v36))
  {
LABEL_34:
    if (v26)
    {
      if (v35 == v26)
      {
        v35 = 0;
        LODWORD(v36) = 0;
      }

      WTF::fastFree(v26, v5);
    }

    goto LABEL_19;
  }

  if (!(HIDWORD(v36) >> 28))
  {
    v27 = WTF::fastMalloc((16 * HIDWORD(v36)));
    LODWORD(v36) = v25;
    v35 = v27;
    if (v27 != v26)
    {
      WTF::VectorTypeOperations<WebCore::SpeechRecognitionAlternativeData>::move(v26, (v26 + 16 * v25), v27);
    }

    goto LABEL_34;
  }

  __break(0xC471u);
  return result;
}

void sub_19D7A1950(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyBuffer,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, (a2 + 1));
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, (a2 + 2));
  v4 = a2[3];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyBuffer,void>::encode(uint64_t a1, void *a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(a1, (a2 + 1));
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(a1, (a2 + 2));

  return IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2 + 3);
}

unint64_t IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyBuffer,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 7)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5;
      v11 = 1;
      goto LABEL_8;
    }
  }

  else
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

  *a1 = 0;
  *(a1 + 1) = 0;
  v22 = *(a1 + 3);
  if (v22 && v4)
  {
    (*(*v22 + 16))(v22);
  }

  v11 = 0;
  v10 = 0;
LABEL_8:
  v12 = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  v14 = v13;
  v15 = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  v17 = v16;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v20 = *a1;
  if (!*a1)
  {
LABEL_16:
    *a2 = 0;
    goto LABEL_14;
  }

  if ((v11 & 1) == 0 || (v14 & 1) == 0 || (v17 & 1) == 0 || (v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 12) = BYTE4(v12);
  *(a2 + 13) = v15 << 24;
  LOBYTE(v20) = 1;
  *(a2 + 24) = result;
LABEL_14:
  *(a2 + 32) = v20;
  return result;
}

mpark *IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyExternalImage,void>::encode(mpark *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>> const&>(a1, a2);
  if (*(a1 + 1))
  {
    **a1 = *(a2 + 32);
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

WTF *IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyExternalImage,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (v24)
    {
      if (v4)
      {
        (*(*v24 + 16))(v24);
        v4 = *(v2 + 8);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_74:
    *v2 = 0;
    *(v2 + 8) = 0;
    v25 = *(v2 + 24);
    if (v25)
    {
      if (v4)
      {
        (*(*v25 + 16))(v25);
        goto LABEL_8;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_9:
    *v2 = 0;
    *(v2 + 8) = 0;
    result = *(v2 + 24);
    if (result && v4)
    {
      result = (*(*result + 16))(result, v6);
    }

    LOBYTE(v44) = 0;
    v48 = 0;
    goto LABEL_31;
  }

  v7 = (v5 + 1);
  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_74;
  }

  if (*v5 >= 2u)
  {
    goto LABEL_9;
  }

  if (*v5)
  {
    if (v4 <= v7 - v6)
    {
      v33 = 0;
      v34 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v35 = *(a1 + 3);
      if (v35)
      {
        (*(*v35 + 16))(v35);
        v34 = *v2;
        v33 = *(v2 + 8);
      }
    }

    else
    {
      *(a1 + 2) = v5 + 2;
      if (v5 != -1)
      {
        if (*v7 > 1u)
        {
LABEL_8:
          v6 = *v2;
          v4 = *(v2 + 8);
          goto LABEL_9;
        }

        if (!*v7)
        {
          IPC::Decoder::decode<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v49);
          if (v50 != 1)
          {
            goto LABEL_8;
          }

          v39 = v49[0];
          v40 = v49[1];
          v41 = 0;
LABEL_27:
          v42 = 1;
          result = mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,(mpark::detail::Trait)1>::move_constructor(&v44, &v39);
          v47 = 1;
          v48 = 1;
          if (v42)
          {
            goto LABEL_28;
          }

          goto LABEL_31;
        }

        v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
        v11 = ((v7 & 0xFFFFFFFFFFFFFFFCLL) + 4);
        if (v4 < v11 - v6 || &v4[-(v11 - v6)] <= 3)
        {
          v13 = 0;
          v26 = 0;
          *a1 = 0;
          *(a1 + 1) = 0;
          v27 = *(a1 + 3);
          if (v27)
          {
            (*(*v27 + 16))(v27);
            v26 = *v2;
            v13 = *(v2 + 8);
          }
        }

        else
        {
          *(a1 + 2) = v10 + 8;
          if (v11)
          {
            v12 = *v11 | 0x100000000;
            v13 = v6;
            goto LABEL_18;
          }

          v13 = v4;
          v26 = v6;
        }

        *v2 = 0;
        *(v2 + 8) = 0;
        v28 = *(v2 + 24);
        if (v28)
        {
          if (v13)
          {
            (*(*v28 + 16))(v28, v26, v13);
            v12 = 0;
            v13 = *v2;
            v4 = *(v2 + 8);
            v6 = *v2;
            goto LABEL_18;
          }
        }

        else
        {
          v13 = 0;
        }

        v4 = 0;
        v6 = 0;
        v12 = 0;
LABEL_18:
        v14 = ((*(v2 + 16) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        if (v4 < v14 - v6 || &v4[-(v14 - v6)] <= 3)
        {
          v38 = v12;
          *v2 = 0;
          *(v2 + 8) = 0;
          v29 = *(v2 + 24);
          if (v29)
          {
            if (v4)
            {
              (*(*v29 + 16))(v29, v13);
              v13 = *v2;
              v4 = *(v2 + 8);
              goto LABEL_85;
            }
          }

          else
          {
            v4 = 0;
          }

          v13 = 0;
        }

        else
        {
          *(v2 + 16) = v14 + 4;
          if (v14)
          {
            v15 = *v14 | 0x100000000;
            if (v6)
            {
LABEL_22:
              if ((v12 & 0x100000000) == 0 || (v15 & 0x100000000) == 0)
              {
                goto LABEL_52;
              }

              v39 = (v12 | (v15 << 32));
              v41 = 1;
              goto LABEL_27;
            }

LABEL_88:
            v31 = *(v2 + 8);
            v32 = *(v2 + 24);
            *v2 = 0;
            *(v2 + 8) = 0;
            if (v32 && v31)
            {
              (*(*v32 + 16))(v32, v13);
            }

            goto LABEL_8;
          }

          v38 = v12;
        }

LABEL_85:
        *v2 = 0;
        *(v2 + 8) = 0;
        v30 = *(v2 + 24);
        if (!v30 || !v4)
        {
          goto LABEL_8;
        }

        (*(*v30 + 16))(v30, v13);
        v15 = 0;
        v13 = *v2;
        v12 = v38;
        if (*v2)
        {
          goto LABEL_22;
        }

        goto LABEL_88;
      }

      v33 = v4;
      v34 = v6;
    }

    *v2 = 0;
    *(v2 + 8) = 0;
    v36 = *(v2 + 24);
    if (v36 && v33)
    {
      (*(*v36 + 16))(v36, v34, v33);
    }

    goto LABEL_8;
  }

  LOBYTE(v39) = 0;
  v42 = 0;
  result = std::__optional_move_base<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,false>::__optional_move_base[abi:sn200100](&v44, &v39);
  v48 = 1;
  if (v42 == 1)
  {
LABEL_28:
    if (!v41)
    {
      result = v39;
      if (v39)
      {
        v39 = 0;
        LODWORD(v40) = 0;
        result = WTF::fastFree(result, v9);
      }
    }
  }

LABEL_31:
  v4 = *(v2 + 8);
  if ((v48 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_32:
  v16 = *v2;
  v17 = *(v2 + 16);
  if (v4 > &v17[-*v2])
  {
    *(v2 + 16) = v17 + 1;
    if (v17)
    {
      v18 = *v17;
      if (v18 < 2)
      {
        v2 = 1;
        goto LABEL_36;
      }

      goto LABEL_60;
    }

    goto LABEL_57;
  }

  while (1)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    v22 = *(v2 + 24);
    if (v22)
    {
      if (v4)
      {
        (*(*v22 + 16))(v22, v16);
        v4 = *(v2 + 8);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_57:
    *v2 = 0;
    *(v2 + 8) = 0;
    v23 = *(v2 + 24);
    if (!v23)
    {
      v4 = 0;
LABEL_59:
      v16 = 0;
      v18 = 0;
      goto LABEL_60;
    }

    if (!v4)
    {
      goto LABEL_59;
    }

    (*(*v23 + 16))(v23);
    v18 = 0;
    v16 = *v2;
    v4 = *(v2 + 8);
LABEL_60:
    *v2 = 0;
    *(v2 + 8) = 0;
    result = *(v2 + 24);
    if (!result || !v4)
    {
      goto LABEL_61;
    }

    v37 = v18;
    result = (*(*result + 16))(result, v16);
    v16 = *v2;
    v2 = 0;
    v18 = v37;
LABEL_36:
    v19 = v18 ? v2 : 0;
    if (!v16)
    {
LABEL_61:
      *a2 = 0;
      a2[40] = 0;
      goto LABEL_46;
    }

    if (v48)
    {
      std::__optional_move_base<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,false>::__optional_move_base[abi:sn200100](&v39, &v44);
      if (v2)
      {
        break;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    v20 = *v2;
    *v2 = 0;
    *(v2 + 8) = 0;
    v21 = *(v2 + 24);
    if (v21 && v4)
    {
      result = (*(*v21 + 16))(v21, v20);
      v4 = *(v2 + 8);
      goto LABEL_32;
    }

    v4 = 0;
    v16 = *v2;
  }

  v43 = v19;
  result = std::__optional_move_base<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,false>::__optional_move_base[abi:sn200100](a2, &v39);
  a2[32] = v43;
  a2[40] = 1;
  if (v42 == 1 && !v41)
  {
    result = v39;
    if (v39)
    {
      v39 = 0;
      LODWORD(v40) = 0;
      result = WTF::fastFree(result, v16);
    }
  }

LABEL_46:
  if (v48 == 1 && v47 == 1 && !v46)
  {
    result = v44;
    if (v44)
    {
      v44 = 0;
      v45 = 0;
      return WTF::fastFree(result, v16);
    }
  }

  return result;
}

void sub_19D7A22CC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, WTF *a19, int a20, int a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  if (a28 == 1 && a24 == 1 && !a22)
  {
    if (a19)
    {
      WTF::fastFree(a19, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>> const&>(a1, a2 + 16);
  v4 = *(a2 + 48);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(mpark *a1, uint64_t a2)
{
  result = IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  v5 = -*a1;
  v6 = v5 & 3 | 4;
  if (*(a1 + 1) < v6)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  else
  {
    *(*a1 + (v5 & 3)) = *(a2 + 8);
    v7 = *(a1 + 1);
    v8 = v7 >= v6;
    v9 = v7 - v6;
    if (!v8)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    *a1 += v6;
    *(a1 + 1) = v9;
  }

  result = IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>> const&>(a1, a2 + 16);
  if (*(a1 + 1))
  {
    **a1 = *(a2 + 48);
    v10 = *(a1 + 1);
    if (v10)
    {
      ++*a1;
      *(a1 + 1) = v10 - 1;
      return result;
    }

    goto LABEL_8;
  }

LABEL_9:
  *a1 = 0;
  *(a1 + 1) = 0;
  return result;
}

WTF *IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  v7 = a1[1];
  v8 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = v8 - *a1;
  v10 = v7 >= v9;
  v11 = v7 - v9;
  if (v10 && v11 > 3)
  {
    a1[2] = (v8 + 1);
    if (v8)
    {
      v13 = *v8 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v17 = a1[3];
    if (v17)
    {
      if (v7)
      {
        (*(*v17 + 16))(v17);
        v7 = a1[1];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v18 = a1[3];
  if (v18 && v7)
  {
    (*(*v18 + 16))(v18);
  }

  v13 = 0;
LABEL_8:
  IPC::Decoder::decode<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>>>(&v24, a1);
  result = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  if (!*a1)
  {
LABEL_24:
    *a2 = 0;
    *(a2 + 56) = 0;
    goto LABEL_17;
  }

  if ((v6 & 1) == 0 || (v13 & 0x100000000) == 0 || (v28 & 1) == 0 || (v16 = result, result = std::__optional_move_base<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,false>::__optional_move_base[abi:sn200100](&v19, &v24), v16 <= 0xFFu))
  {
    __break(1u);
    goto LABEL_24;
  }

  v23 = v16;
  *a2 = v4;
  *(a2 + 8) = v13;
  result = std::__optional_move_base<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,false>::__optional_move_base[abi:sn200100]((a2 + 16), &v19);
  *(a2 + 48) = v23;
  *(a2 + 56) = 1;
  if (v22 == 1 && !v21)
  {
    result = v19;
    if (v19)
    {
      v19 = 0;
      v20 = 0;
      result = WTF::fastFree(result, v15);
    }
  }

LABEL_17:
  if (v28 == 1 && v27 == 1 && !v26)
  {
    result = v24;
    if (v24)
    {
      v24 = 0;
      v25 = 0;
      return WTF::fastFree(result, v15);
    }
  }

  return result;
}

void sub_19D7A267C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12, int a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, WTF *a20, int a21, int a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  if (a16 == 1 && !a14 && a11)
  {
    WTF::fastFree(a11, a2);
  }

  if (a29 == 1 && a25 == 1 && !a23)
  {
    if (a20)
    {
      WTF::fastFree(a20, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *IPC::Decoder::decode<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>>>(_BYTE *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18)
    {
      if (v6)
      {
        (*(*v18 + 16))(v18);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_47;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_47;
  }

  v7 = (v4 + 1);
  *(a2 + 2) = v4 + 1;
  if (v4)
  {
    if (*v4 >= 2u)
    {
      goto LABEL_9;
    }

    if (!*v4)
    {
      LOBYTE(v34) = 0;
      v37 = 0;
      result = std::__optional_move_base<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,false>::__optional_move_base[abi:sn200100](result, &v34);
      v3[32] = 1;
      if (v37 != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (v6 <= v7 - v5)
    {
      v27 = 0;
      v28 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v29 = *(a2 + 3);
      if (v29)
      {
        (*(*v29 + 16))(v29);
        v28 = *a2;
        v27 = *(a2 + 1);
      }
    }

    else
    {
      *(a2 + 2) = v4 + 2;
      if (v4 != -1)
      {
        if (*v7 > 1u)
        {
LABEL_8:
          v5 = *a2;
          v6 = *(a2 + 1);
          goto LABEL_9;
        }

        if (!*v7)
        {
          IPC::Decoder::decode<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, v38);
          if (v39 != 1)
          {
            goto LABEL_8;
          }

          v34 = v38[0];
          v35 = v38[1];
          v36 = 0;
LABEL_32:
          v37 = 1;
          result = mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_constructor(v3, &v34);
          v3[24] = 1;
          v3[32] = 1;
          if ((v37 & 1) == 0)
          {
            goto LABEL_35;
          }

LABEL_33:
          if (v36)
          {
            goto LABEL_35;
          }

          result = v34;
          if (!v34)
          {
            goto LABEL_35;
          }

LABEL_43:
          v34 = 0;
          LODWORD(v35) = 0;
          result = WTF::fastFree(result, v5);
          goto LABEL_35;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
        v9 = ((v7 & 0xFFFFFFFFFFFFFFFCLL) + 4);
        if (v6 < v9 - v5 || v6 - (v9 - v5) <= 3)
        {
          v11 = 0;
          v20 = 0;
          *a2 = 0;
          *(a2 + 1) = 0;
          v21 = *(a2 + 3);
          if (v21)
          {
            (*(*v21 + 16))(v21);
            v20 = *a2;
            v11 = *(a2 + 1);
          }
        }

        else
        {
          *(a2 + 2) = v8 + 8;
          if (v9)
          {
            v10 = *v9 | 0x100000000;
            v11 = v5;
            goto LABEL_18;
          }

          v11 = v6;
          v20 = v5;
        }

        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          if (v11)
          {
            result = (*(*result + 16))(result, v20, v11);
            v10 = 0;
            v11 = *a2;
            v6 = *(a2 + 1);
            v5 = *a2;
            goto LABEL_18;
          }
        }

        else
        {
          v11 = 0;
        }

        v6 = 0;
        v5 = 0;
        v10 = 0;
LABEL_18:
        v12 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        if (v6 >= v12 - v5 && v6 - (v12 - v5) > 3)
        {
          *(a2 + 2) = v12 + 4;
          if (v12)
          {
            v13 = *v12 | 0x100000000;
LABEL_22:
            v14 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
            if (v6 < v14 - v5 || v6 - (v14 - v5) <= 3)
            {
              v31 = v13;
              v33 = v10;
              *a2 = 0;
              *(a2 + 1) = 0;
              v23 = *(a2 + 3);
              if (v23)
              {
                if (v6)
                {
                  (*(*v23 + 16))(v23, v11);
                  v11 = *a2;
                  v6 = *(a2 + 1);
                  goto LABEL_65;
                }
              }

              else
              {
                v6 = 0;
              }

              v11 = 0;
            }

            else
            {
              *(a2 + 2) = v14 + 4;
              if (v14)
              {
                v15 = *v14 | 0x100000000;
                if (v5)
                {
LABEL_26:
                  if ((v10 & 0x100000000) == 0 || (v13 & 0x100000000) == 0 || (v15 & 0x100000000) == 0)
                  {
                    __break(1u);
                    goto LABEL_43;
                  }

                  v34 = (v10 | (v13 << 32));
                  LODWORD(v35) = v15;
                  v36 = 1;
                  goto LABEL_32;
                }

LABEL_68:
                v25 = *(a2 + 1);
                v26 = *(a2 + 3);
                *a2 = 0;
                *(a2 + 1) = 0;
                if (v26 && v25)
                {
                  (*(*v26 + 16))(v26, v11);
                }

                goto LABEL_8;
              }

              v31 = v13;
              v33 = v10;
            }

LABEL_65:
            *a2 = 0;
            *(a2 + 1) = 0;
            v24 = *(a2 + 3);
            if (!v24 || !v6)
            {
              goto LABEL_8;
            }

            result = (*(*v24 + 16))(v24, v11);
            v15 = 0;
            v11 = *a2;
            v13 = v31;
            v10 = v33;
            if (*a2)
            {
              goto LABEL_26;
            }

            goto LABEL_68;
          }

          v32 = v10;
LABEL_58:
          *a2 = 0;
          *(a2 + 1) = 0;
          result = *(a2 + 3);
          if (result)
          {
            if (v6)
            {
              result = (*(*result + 16))(result, v11);
              v13 = 0;
              v11 = *a2;
              v6 = *(a2 + 1);
              v5 = *a2;
              goto LABEL_61;
            }

            v11 = 0;
          }

          else
          {
            v11 = 0;
            v6 = 0;
          }

          v5 = 0;
          v13 = 0;
LABEL_61:
          v10 = v32;
          goto LABEL_22;
        }

        v32 = v10;
        *a2 = 0;
        *(a2 + 1) = 0;
        v22 = *(a2 + 3);
        if (v22)
        {
          if (v6)
          {
            (*(*v22 + 16))(v22, v11);
            v11 = *a2;
            v6 = *(a2 + 1);
            goto LABEL_58;
          }
        }

        else
        {
          v6 = 0;
        }

        v11 = 0;
        goto LABEL_58;
      }

      v27 = v6;
      v28 = v5;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v30 = *(a2 + 3);
    if (v30 && v27)
    {
      (*(*v30 + 16))(v30, v28, v27);
    }

    goto LABEL_8;
  }

LABEL_47:
  *a2 = 0;
  *(a2 + 1) = 0;
  v19 = *(a2 + 3);
  if (v19)
  {
    if (v6)
    {
      (*(*v19 + 16))(v19, v5);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_9:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v6)
  {
    result = (*(*result + 16))(result, v5);
  }

  *v3 = 0;
  v3[32] = 0;
LABEL_35:
  if ((v3[32] & 1) == 0)
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

void sub_19D7A2CC8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, int a13, int a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 + 32) == 1 && *(v19 + 24) == 1)
  {
    if (!*(v19 + 16))
    {
      v21 = *v19;
      if (*v19)
      {
        *v19 = 0;
        *(v19 + 8) = 0;
        WTF::fastFree(v21, a2);
      }
    }

    *(v19 + 16) = -1;
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTextureTagged,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>> const&>(a1, a2 + 16);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 49));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 50));
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTextureTagged,void>::encode(mpark *a1, uint64_t a2)
{
  result = IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  v5 = -*a1;
  v6 = v5 & 3 | 4;
  if (*(a1 + 1) < v6)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  else
  {
    *(*a1 + (v5 & 3)) = *(a2 + 8);
    v7 = *(a1 + 1);
    v8 = v7 >= v6;
    v9 = v7 - v6;
    if (!v8)
    {
      goto LABEL_12;
    }

    *a1 += v6;
    *(a1 + 1) = v9;
  }

  result = IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>> const&>(a1, a2 + 16);
  if (*(a1 + 1))
  {
    **a1 = *(a2 + 48);
    v10 = *(a1 + 1);
    if (!v10)
    {
      goto LABEL_12;
    }

    v12 = v10 - 1;
    v11 = v10 == 1;
    v13 = (*a1 + 1);
    *a1 = v13;
    *(a1 + 1) = v12;
    if (v11)
    {
      goto LABEL_13;
    }

    *v13 = *(a2 + 49);
    v14 = *(a1 + 1);
    if (!v14)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v15 = v14 - 1;
    v11 = v14 == 1;
    v16 = (*a1 + 1);
    *a1 = v16;
    *(a1 + 1) = v15;
    if (!v11)
    {
      *v16 = *(a2 + 50);
      v17 = *(a1 + 1);
      if (v17)
      {
        ++*a1;
        *(a1 + 1) = v17 - 1;
        return result;
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  *a1 = 0;
  *(a1 + 1) = 0;
  return result;
}

WTF *IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTextureTagged,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  v7 = a1[1];
  v8 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = v8 - *a1;
  v10 = v7 >= v9;
  v11 = v7 - v9;
  if (v10 && v11 > 3)
  {
    a1[2] = (v8 + 1);
    if (v8)
    {
      v13 = *v8 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v23 = a1[3];
    if (v23)
    {
      if (v7)
      {
        (*(*v23 + 16))(v23);
        v7 = a1[1];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v24 = a1[3];
  if (v24 && v7)
  {
    (*(*v24 + 16))(v24);
  }

  v13 = 0;
LABEL_8:
  IPC::Decoder::decode<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>>>(&v40, a1);
  v14 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  result = IPC::Decoder::decode<WebCore::WebGPU::PredefinedColorSpace>(a1);
  v16 = result;
  v17 = a1[1];
  v18 = a1[2];
  v19 = *a1;
  if (v17 <= &v18[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v25 = a1[3];
    if (v25)
    {
      if (v17)
      {
        (*(*v25 + 16))(v25);
        v17 = a1[1];
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_44:
    *a1 = 0;
    a1[1] = 0;
    v26 = a1[3];
    if (v26)
    {
      if (v17)
      {
        (*(*v26 + 16))(v26);
        v20 = 0;
        v19 = *a1;
        v17 = a1[1];
        goto LABEL_47;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = 0;
    v20 = 0;
    goto LABEL_47;
  }

  a1[2] = (v18 + 1);
  if (!v18)
  {
    goto LABEL_44;
  }

  v20 = *v18;
  if (v20 < 2)
  {
    v21 = 1;
    goto LABEL_12;
  }

LABEL_47:
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (!result || !v17)
  {
LABEL_48:
    *a2 = 0;
    *(a2 + 56) = 0;
    goto LABEL_30;
  }

  result = (*(*result + 16))(result, v19);
  v19 = *a1;
  v21 = 0;
LABEL_12:
  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (!v19)
  {
    goto LABEL_48;
  }

  if ((v6 & 1) == 0 || (v13 & 0x100000000) == 0 || (v44 & 1) == 0 || (result = std::__optional_move_base<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,false>::__optional_move_base[abi:sn200100](&v27, &v40), v14 <= 0xFFu) || (v31 = v14, v32 = v4, v33 = v13, result = std::__optional_move_base<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,false>::__optional_move_base[abi:sn200100](&v34, &v27), v38 = v31, v16 <= 0xFFu) || (LOBYTE(v39) = v16, (v21 & 1) == 0))
  {
    __break(1u);
LABEL_37:
    v27 = 0;
    v28 = 0;
    result = WTF::fastFree(result, v19);
    goto LABEL_30;
  }

  HIBYTE(v39) = v22;
  *a2 = v32;
  *(a2 + 8) = v33;
  result = std::__optional_move_base<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,false>::__optional_move_base[abi:sn200100]((a2 + 16), &v34);
  *(a2 + 48) = v38;
  *(a2 + 49) = v39;
  *(a2 + 56) = 1;
  if (v37 == 1)
  {
    if (!v36)
    {
      result = v34;
      if (v34)
      {
        v34 = 0;
        v35 = 0;
        result = WTF::fastFree(result, v19);
      }
    }

    v36 = -1;
  }

  if (v30 == 1 && !v29)
  {
    result = v27;
    if (v27)
    {
      goto LABEL_37;
    }
  }

LABEL_30:
  if (v44 == 1 && v43 == 1 && !v42)
  {
    result = v40;
    if (v40)
    {
      v40 = 0;
      v41 = 0;
      return WTF::fastFree(result, v19);
    }
  }

  return result;
}

void sub_19D7A3244(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, int a13, int a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF *a23, int a24, int a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 72) == 1 && *(v30 - 80) == 1 && !*(v30 - 88))
  {
    v32 = *(v30 - 104);
    if (v32)
    {
      *(v30 - 104) = 0;
      *(v30 - 96) = 0;
      WTF::fastFree(v32, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ImageDataLayout,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = (a2 + 2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, (a2 + 1));

  return IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ImageDataLayout,void>::encode(uint64_t a1, void *a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(a1, (a2 + 1));

  return IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(a1, (a2 + 2));
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ImageDataLayout,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 7)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5;
      v11 = 1;
      goto LABEL_8;
    }
  }

  else
  {
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
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v19 = *(a1 + 3);
  if (v19 && v4)
  {
    (*(*v19 + 16))(v19);
  }

  v11 = 0;
  v10 = 0;
LABEL_8:
  v12 = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  v14 = v13;
  result = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  v17 = *a1;
  if (!*a1)
  {
LABEL_15:
    *a2 = 0;
    goto LABEL_13;
  }

  if ((v11 & 1) == 0 || (v14 & 1) == 0 || (v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 12) = BYTE4(v12);
  *(a2 + 13) = result << 24;
  LOBYTE(v17) = 1;
LABEL_13:
  *(a2 + 24) = v17;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::MultisampleState,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 8));
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::MultisampleState,void>::encode(uint64_t result, uint64_t a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_9;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_8;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 3)) = *(a2 + 4);
    v8 = *(result + 8);
    v10 = v8 - v7;
    v9 = v8 == v7;
    if (v8 < v7)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    v11 = (*result + v7);
    *result = v11;
    *(result + 8) = v10;
    if (!v9)
    {
      *v11 = *(a2 + 8);
      v12 = *(result + 8);
      if (v12)
      {
        ++*result;
        *(result + 8) = v12 - 1;
        return result;
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::Origin2DDict,void>::encode(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_8;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_7;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 3)) = a2[1];
    v8 = *(result + 8);
    v9 = v8 >= v7;
    v10 = v8 - v7;
    if (v9)
    {
      *result += v7;
      *(result + 8) = v10;
      return result;
    }

LABEL_7:
    __break(1u);
  }

LABEL_8:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

WTF *IPC::ArgumentCoder<WebKit::WebGPU::PipelineLayoutDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v24);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      if (v4)
      {
        (*(*v14 + 16))(v14);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_42;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_42:
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v4)
      {
        (*(*v15 + 16))(v15);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_45;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_45:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v4)
    {
      result = (*(*result + 16))(result, v6);
    }

    goto LABEL_36;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_45;
  }

  if (!v7)
  {
    LOBYTE(v16) = 0;
    LOBYTE(v18) = 0;
    result = std::__optional_move_base<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v20, &v16);
    v23 = 1;
    if (v18 != 1)
    {
      goto LABEL_11;
    }

LABEL_9:
    result = v16;
    if (v16)
    {
      v16 = 0;
      LODWORD(v17) = 0;
      result = WTF::fastFree(result, v6);
    }

    goto LABEL_11;
  }

  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v16);
  if ((v18 & 1) == 0)
  {
    v6 = *a1;
    v13 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v13 || (result = (*(*result + 16))(result, v6), (v18 & 1) == 0))
    {
LABEL_36:
      LOBYTE(v20) = 0;
      v23 = 0;
      goto LABEL_11;
    }
  }

  result = std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v20, &v16);
  v23 = 1;
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_11:
  if ((v23 & 1) == 0)
  {
    goto LABEL_31;
  }

  while (1)
  {
    if (!*a1)
    {
      *a2 = 0;
      a2[32] = 0;
      goto LABEL_21;
    }

    if (v25)
    {
      v9 = v24;
      v24 = 0;
      v16 = v9;
      if (v23)
      {
        break;
      }
    }

    __break(1u);
LABEL_31:
    v6 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v12)
    {
      result = (*(*result + 16))(result, v6);
    }
  }

  std::__optional_move_base<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v17, &v20);
  v10 = v16;
  v16 = 0;
  *a2 = v10;
  std::__optional_move_base<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a2 + 8), &v17);
  a2[32] = 1;
  if (v19 == 1)
  {
    v11 = v17;
    if (v17)
    {
      v17 = 0;
      v18 = 0;
      WTF::fastFree(v11, v6);
    }
  }

  result = v16;
  v16 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v6);
  }

LABEL_21:
  if (v23 == 1 && v22 == 1)
  {
    result = v20;
    if (v20)
    {
      v20 = 0;
      v21 = 0;
      result = WTF::fastFree(result, v6);
    }
  }

  if (v25 == 1)
  {
    result = v24;
    v24 = 0;
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

void sub_19D7A3990(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF *a10, char a11, int a12, char a13, WTF *a14, int a15, int a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a11 == 1 && a9)
  {
    WTF::fastFree(a9, a2);
  }

  if (*(v21 - 24) == 1)
  {
    v23 = *(v21 - 32);
    *(v21 - 32) = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::QuerySetDescriptor,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  v4 = *(a2 + 12);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

void *IPC::ArgumentCoder<WebKit::WebGPU::QuerySetDescriptor,void>::encode(uint64_t *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  if (!a1[1])
  {
    goto LABEL_8;
  }

  **a1 = *(a2 + 8);
  v5 = a1[1];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5 - 1;
  v7 = *a1 + 1;
  *a1 = v7;
  a1[1] = v6;
  v8 = -v7 & 3 | 4;
  if (v6 >= v8)
  {
    *(v7 + (-v7 & 3)) = *(a2 + 12);
    v9 = a1[1];
    v10 = v9 >= v8;
    v11 = v9 - v8;
    if (v10)
    {
      *a1 += v8;
      a1[1] = v11;
      return result;
    }

LABEL_7:
    __break(1u);
  }

LABEL_8:
  *a1 = 0;
  a1[1] = 0;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebGPU::QuerySetDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v17);
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

LABEL_28:
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v5)
      {
        (*(*v15 + 16))(v15);
        v7 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_31;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    goto LABEL_31;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_28;
  }

  v8 = *v6;
  if (v8 < 2)
  {
    v9 = v8 | 0x100;
    goto LABEL_5;
  }

LABEL_31:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (!result)
  {
    v5 = 0;
LABEL_33:
    v7 = 0;
    v9 = 0;
    goto LABEL_5;
  }

  if (!v5)
  {
    goto LABEL_33;
  }

  result = (*(*result + 16))(result, v7);
  v9 = 0;
  v7 = *a1;
  v5 = *(a1 + 1);
LABEL_5:
  v10 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v10 - v7 || v5 - (v10 - v7) <= 3)
  {
    while (1)
    {
      v16 = v9;
      *a1 = 0;
      *(a1 + 1) = 0;
      v13 = *(a1 + 3);
      if (v13)
      {
        if (v5)
        {
          (*(*v13 + 16))(v13);
          v7 = *a1;
          v5 = *(a1 + 1);
          goto LABEL_21;
        }
      }

      else
      {
        v5 = 0;
      }

      v7 = 0;
LABEL_21:
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (!result)
      {
        goto LABEL_22;
      }

      if (!v5)
      {
        goto LABEL_22;
      }

      result = (*(*result + 16))(result, v7);
      v12 = 0;
      v7 = *a1;
      v9 = v16;
      if (!*a1)
      {
        goto LABEL_22;
      }

LABEL_12:
      if ((v18 & 1) != 0 && v9 > 0xFF && (v12 & 0x100000000) != 0)
      {
        *a2 = v17;
        *(a2 + 8) = v9 | (v12 << 32);
        *(a2 + 16) = 1;
        return result;
      }

      __break(1u);
    }
  }

  *(a1 + 2) = v10 + 4;
  if (!v10)
  {
    v16 = v9;
    goto LABEL_21;
  }

  v12 = *v10 | 0x100000000;
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_22:
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
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void sub_19D7A3DF0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::RenderBundleEncoderDescriptor,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::VectorArgumentCoder<false,std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 8);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 28));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 33));
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::RenderBundleEncoderDescriptor,void>::encode(void *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  IPC::VectorArgumentCoder<false,std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 8);
  result = IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, (a2 + 24));
  v5 = -*a1;
  v6 = v5 & 3 | 4;
  if (a1[1] < v6)
  {
    goto LABEL_9;
  }

  *(*a1 + (v5 & 3)) = *(a2 + 28);
  v7 = a1[1];
  v9 = v7 - v6;
  v8 = v7 == v6;
  if (v7 < v6)
  {
    goto LABEL_8;
  }

  v10 = (*a1 + v6);
  *a1 = v10;
  a1[1] = v9;
  if (!v8)
  {
    *v10 = *(a2 + 32);
    v11 = a1[1];
    if (!v11)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 - 1;
    v8 = v11 == 1;
    v13 = (*a1 + 1);
    *a1 = v13;
    a1[1] = v12;
    if (!v8)
    {
      *v13 = *(a2 + 33);
      v14 = a1[1];
      if (v14)
      {
        ++*a1;
        a1[1] = v14 - 1;
        return result;
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::RenderBundleEncoderDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v57);
  v6 = *(a1 + 1);
  v7 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7 - *a1;
  v9 = v6 >= v8;
  v10 = v6 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (v40)
    {
      if (v6)
      {
        (*(*v40 + 16))(v40);
        v6 = *(a1 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_73;
  }

  *(a1 + 2) = v7 + 1;
  if (v7)
  {
    v12 = *v7;
    v61 = 0;
    v62 = 0;
    if (v12 >= 0x80000)
    {
      v20 = 0;
      LODWORD(v2) = 0;
      do
      {
        result = IPC::Decoder::decode<std::optional<WebCore::WebGPU::TextureFormat>>(a1);
        v59 = result;
        v60 = BYTE2(result);
        if ((result & 0x10000) == 0)
        {
          goto LABEL_32;
        }

        if (v2 == v62)
        {
          result = WTF::Vector<std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v61, v2 + 1, &v59);
          v22 = HIDWORD(v62);
          v20 = v61;
          *(v61 + HIDWORD(v62)) = *result;
        }

        else
        {
          *(v20 + v2) = result;
          v22 = HIDWORD(v62);
        }

        v2 = (v22 + 1);
        HIDWORD(v62) = v22 + 1;
        --v12;
      }

      while (v12);
      if (v62 > v2)
      {
        if (v22 == -1)
        {
          goto LABEL_69;
        }

        if ((v2 & 0x80000000) != 0)
        {
          __break(0xC471u);
          return result;
        }

        v23 = WTF::fastMalloc((2 * v2));
        LODWORD(v62) = v2;
        v61 = v23;
        if (v23 == v20)
        {
LABEL_69:
          v61 = 0;
          LODWORD(v62) = 0;
        }

        else
        {
          v24 = 0;
          do
          {
            *(v23 + v24) = *(v20 + v24);
            v24 += 2;
          }

          while (2 * v2 != v24);
          if (!v20)
          {
            goto LABEL_17;
          }
        }

        WTF::fastFree(v20, v15);
        LODWORD(v2) = HIDWORD(v62);
      }
    }

    else
    {
      if (v12)
      {
        v13 = WTF::fastMalloc((2 * v12));
        LODWORD(v2) = 0;
        LODWORD(v62) = v12;
        v61 = v13;
        while (1)
        {
          v14 = IPC::Decoder::decode<std::optional<WebCore::WebGPU::TextureFormat>>(a1);
          v59 = v14;
          v60 = BYTE2(v14);
          if ((v14 & 0x10000) == 0)
          {
            break;
          }

          if (v2 == v62)
          {
            v16 = WTF::Vector<std::optional<WebCore::WebGPU::TextureFormat>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v61, v2 + 1, &v59);
            v17 = HIDWORD(v62);
            v13 = v61;
            *(v61 + HIDWORD(v62)) = *v16;
          }

          else
          {
            *(v13 + v2) = v14;
            v17 = HIDWORD(v62);
          }

          LODWORD(v2) = v17 + 1;
          HIDWORD(v62) = v17 + 1;
          if (!--v12)
          {
            goto LABEL_17;
          }
        }

LABEL_32:
        if (v61)
        {
          WTF::fastFree(v61, v15);
        }

        goto LABEL_34;
      }

      LODWORD(v2) = 0;
    }

LABEL_17:
    v18 = v61;
    v3 = v62;
    v19 = 1;
    goto LABEL_36;
  }

LABEL_73:
  *a1 = 0;
  *(a1 + 1) = 0;
  v41 = *(a1 + 3);
  if (v41 && v6)
  {
    (*(*v41 + 16))(v41);
  }

LABEL_34:
  v25 = *a1;
  v26 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v19 = 0;
    v18 = 0;
LABEL_36:
    result = IPC::Decoder::decode<std::optional<WebCore::WebGPU::TextureFormat>>(a1);
    v26 = *(a1 + 1);
    v27 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v25 = *a1;
    v28 = v27 - *a1;
    v9 = v26 >= v28;
    v29 = v26 - v28;
    if (v9 && v29 > 3)
    {
      v31 = (v27 + 1);
      *(a1 + 2) = v27 + 1;
      if (v27)
      {
        v32 = *v27 | 0x100000000;
        goto LABEL_43;
      }

      v56 = result;
    }

    else
    {
      v56 = result;
      *a1 = 0;
      *(a1 + 1) = 0;
      v42 = *(a1 + 3);
      if (!v42)
      {
        v26 = 0;
LABEL_78:
        v25 = 0;
        goto LABEL_79;
      }

      if (!v26)
      {
        goto LABEL_78;
      }

      (*(*v42 + 16))(v42);
      v25 = *a1;
      v26 = *(a1 + 1);
    }

LABEL_79:
    *a1 = 0;
    *(a1 + 1) = 0;
    v43 = *(a1 + 3);
    if (!v43 || !v26)
    {
      v55 = 0;
      v44 = 0;
      v25 = 0;
LABEL_81:
      *a1 = 0;
      *(a1 + 1) = 0;
      v45 = *(a1 + 3);
      if (v45 && v44)
      {
        (*(*v45 + 16))(v45, v25, v44);
        v54 = 0;
        v25 = *a1;
        v26 = *(a1 + 1);
      }

      else
      {
        v26 = 0;
        v25 = 0;
        v54 = 0;
      }

      goto LABEL_83;
    }

    (*(*v43 + 16))(v43, v25);
    v32 = 0;
    v25 = *a1;
    v26 = *(a1 + 1);
    v31 = *(a1 + 2);
    result = v56;
LABEL_43:
    if (v26 <= v31 - v25)
    {
      v55 = v32;
      v56 = result;
      v44 = 0;
      v50 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v50 && v26)
      {
        (*(*v50 + 16))(v50);
        v25 = *a1;
        v44 = *(a1 + 1);
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_81;
    }

    v33 = v31 + 1;
    *(a1 + 2) = v31 + 1;
    if (!v31)
    {
      v55 = v32;
      v56 = result;
      v44 = v26;
      goto LABEL_81;
    }

    v34 = *v31;
    if (v34 < 2)
    {
      v35 = 1;
      goto LABEL_47;
    }

    v54 = *v31;
    v55 = v32;
    v56 = result;
LABEL_83:
    *a1 = 0;
    *(a1 + 1) = 0;
    v46 = *(a1 + 3);
    if (!v46 || !v26)
    {
      v53 = 0;
      v47 = 0;
      v25 = 0;
      goto LABEL_85;
    }

    (*(*v46 + 16))(v46, v25);
    v35 = 0;
    v25 = *a1;
    v26 = *(a1 + 1);
    v33 = *(a1 + 2);
    result = v56;
    v32 = v55;
    v34 = v54;
LABEL_47:
    v36 = v34 ? v35 : 0;
    if (v26 <= v33 - v25)
    {
      break;
    }

    *(a1 + 2) = v33 + 1;
    if (!v33)
    {
      LOBYTE(v53) = v35;
      WORD2(v53) = v36;
      v55 = v32;
      v56 = result;
      v47 = v26;
      goto LABEL_85;
    }

    v37 = *v33;
    if (v37 >= 2)
    {
      v52 = *v33;
      LOBYTE(v53) = v35;
      WORD2(v53) = v36;
      v55 = v32;
      v56 = result;
      goto LABEL_87;
    }

    v38 = 1;
    if (!v25)
    {
      goto LABEL_88;
    }

LABEL_54:
    if (v58)
    {
      v39 = v57;
      v57 = 0;
      if (v19 & 1) != 0 && (result & 0x10000) != 0 && (v32 & 0x100000000) != 0 && (v35 & 1) != 0 && (v38)
      {
        *a2 = v39;
        *(a2 + 8) = v18;
        *(a2 + 16) = v3;
        *(a2 + 20) = v2;
        *(a2 + 24) = result | (v32 << 32);
        *(a2 + 32) = v36 | ((v37 != 0) << 8);
        *(a2 + 40) = 1;
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_67:
    if (v26)
    {
      (*(*result + 16))(result, v25);
    }
  }

  LOBYTE(v53) = v35;
  WORD2(v53) = v36;
  v55 = v32;
  v56 = result;
  v47 = 0;
  v51 = *(a1 + 3);
  *a1 = 0;
  *(a1 + 1) = 0;
  if (v51 && v26)
  {
    (*(*v51 + 16))(v51);
    v25 = *a1;
    v47 = *(a1 + 1);
  }

  else
  {
    v25 = 0;
  }

LABEL_85:
  *a1 = 0;
  *(a1 + 1) = 0;
  v48 = *(a1 + 3);
  if (v48 && v47)
  {
    (*(*v48 + 16))(v48, v25, v47);
    v52 = 0;
    v25 = *a1;
    v26 = *(a1 + 1);
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v52 = 0;
  }

LABEL_87:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v26)
    {
      (*(*result + 16))(result, v25);
      v38 = 0;
      v25 = *a1;
      result = v56;
      v32 = v55;
      LOBYTE(v35) = v53;
      v36 = WORD2(v53);
      v37 = v52;
      if (*a1)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_88:
  *a2 = 0;
  *(a2 + 40) = 0;
  if (v18)
  {
    v49 = v19;
  }

  else
  {
    v49 = 0;
  }

  if (v49 == 1)
  {
    result = WTF::fastFree(v18, v25);
  }

LABEL_61:
  if (v58 == 1)
  {
    result = v57;
    v57 = 0;
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

void sub_19D7A4650(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, char a15, uint64_t a16, WTF *a17)
{
  if (v17)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (v20 == 1)
  {
    WTF::fastFree(v17, a2);
  }

  if (a15 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::WebGPU::TextureFormat>>(uint64_t *a1)
{
  v2 = IPC::ArgumentCoder<std::optional<WebCore::WebGPU::TextureFormat>,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::RenderPassDescriptor,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 1));
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment> const&>(a1, (a2 + 3));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<WebCore::RemoteUserInputEventData>,void>::encode<IPC::Encoder,std::optional<WebCore::RemoteUserInputEventData> const&>(a1, (a2 + 10));

  return IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(a1, (a2 + 13));
}

WTF *IPC::ArgumentCoder<WebKit::WebGPU::RenderPassDescriptor,void>::encode(WTF *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 1));
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::RenderPassDepthStencilAttachment> const&>(a1, (a2 + 3));
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::ComputePassTimestampWrites>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::ComputePassTimestampWrites> const&>(a1, (a2 + 10));

  return IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(a1, (a2 + 13));
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebGPU::RenderPassDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v119);
  v10 = *(a1 + 1);
  v11 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *a1;
  v13 = v11 - *a1;
  v14 = v10 >= v13;
  v15 = v10 - v13;
  if (!v14 || v15 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v65 = *(a1 + 3);
    if (v65)
    {
      if (v10)
      {
        (*(*v65 + 16))(v65);
        v10 = *(a1 + 1);
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_133;
  }

  *(a1 + 2) = v11 + 1;
  if (!v11)
  {
LABEL_133:
    *a1 = 0;
    *(a1 + 1) = 0;
    v66 = *(a1 + 3);
    if (v66 && v10)
    {
      (*(*v66 + 16))(v66);
    }

    LOBYTE(v116) = 0;
    v118 = 0;
    goto LABEL_120;
  }

  v17 = *v11;
  v109 = 0;
  v110 = 0;
  if (v17 >= 0x2AAA)
  {
    while (1)
    {
      IPC::Decoder::decode<std::optional<WebKit::WebGPU::RenderPassColorAttachment>>(v100, a1);
      LODWORD(v2) = v105[8];
      if (v105[8])
      {
        if (HIDWORD(v110) == v110)
        {
          WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::optional<WebKit::WebGPU::RenderPassColorAttachment>>(&v109, v100);
        }

        else
        {
          std::__optional_move_base<WebKit::WebGPU::RenderPassColorAttachment,false>::__optional_move_base[abi:sn200100](v109 + 96 * HIDWORD(v110), v100);
          ++HIDWORD(v110);
        }
      }

      if (v105[8] == 1 && v105[0] == 1 && v104 == 1 && !BYTE8(v103))
      {
        v55 = *(&v101 + 1);
        if (*(&v101 + 1))
        {
          *(&v101 + 1) = 0;
          LODWORD(v102) = 0;
          WTF::fastFree(v55, v12);
        }
      }

      if ((v2 & 1) == 0)
      {
        break;
      }

      if (!--v17)
      {
        LODWORD(v2) = HIDWORD(v110);
        if (v110 > HIDWORD(v110))
        {
          v32 = v109;
          if (HIDWORD(v110))
          {
            if (HIDWORD(v110) >= 0x2AAAAAB)
            {
              __break(0xC471u);
              goto LABEL_231;
            }

            v56 = WTF::fastMalloc((96 * HIDWORD(v110)));
            LODWORD(v110) = 96 * v2 / 0x60u;
            v109 = v56;
            if (v56 != v32)
            {
              WTF::VectorMover<false,std::optional<WebKit::WebGPU::RenderPassColorAttachment>>::move(v32, (v32 + 96 * v2), v56);
            }
          }

          if (v32)
          {
            if (v109 == v32)
            {
              v109 = 0;
              LODWORD(v110) = 0;
            }

            WTF::fastFree(v32, v12);
          }
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    if (!v17)
    {
LABEL_22:
      v116 = v109;
      v19 = v110;
      v109 = 0;
      v110 = 0;
      v117 = v19;
      v118 = 1;
      WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v109, v12);
      goto LABEL_23;
    }

    LODWORD(v110) = 96 * v17 / 0x60u;
    v109 = WTF::fastMalloc((96 * v17));
    while (1)
    {
      IPC::Decoder::decode<std::optional<WebKit::WebGPU::RenderPassColorAttachment>>(v100, a1);
      LODWORD(v2) = v105[8];
      if (v105[8])
      {
        if (HIDWORD(v110) == v110)
        {
          WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::optional<WebKit::WebGPU::RenderPassColorAttachment>>(&v109, v100);
        }

        else
        {
          std::__optional_move_base<WebKit::WebGPU::RenderPassColorAttachment,false>::__optional_move_base[abi:sn200100](v109 + 96 * HIDWORD(v110), v100);
          ++HIDWORD(v110);
        }
      }

      if (v105[8] == 1 && v105[0] == 1 && v104 == 1 && !BYTE8(v103))
      {
        v18 = *(&v101 + 1);
        if (*(&v101 + 1))
        {
          *(&v101 + 1) = 0;
          LODWORD(v102) = 0;
          WTF::fastFree(v18, v12);
        }
      }

      if ((v2 & 1) == 0)
      {
        break;
      }

      if (!--v17)
      {
        goto LABEL_22;
      }
    }
  }

  LOBYTE(v116) = 0;
  v118 = 0;
  WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v109, v12);
LABEL_120:
  v57 = *a1;
  v58 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v59 = *(a1 + 3);
  if (v59 && v58)
  {
    (*(*v59 + 16))(v59, v57);
  }

LABEL_23:
  v20 = *(a1 + 1);
  v21 = *(a1 + 2);
  v22 = *a1;
  if (v20 <= &v21[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v77 = *(a1 + 3);
    if (v77)
    {
      if (v20)
      {
        (*(*v77 + 16))(v77);
        v20 = *(a1 + 1);
      }
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_159;
  }

  *(a1 + 2) = v21 + 1;
  if (!v21)
  {
LABEL_159:
    *a1 = 0;
    *(a1 + 1) = 0;
    v78 = *(a1 + 3);
    if (v78)
    {
      if (v20)
      {
        (*(*v78 + 16))(v78);
        v22 = *a1;
        v20 = *(a1 + 1);
        goto LABEL_162;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = 0;
LABEL_162:
    *a1 = 0;
    *(a1 + 1) = 0;
    v79 = *(a1 + 3);
    if (v79 && v20)
    {
      (*(*v79 + 16))(v79, v22);
    }

    goto LABEL_125;
  }

  LODWORD(v21) = *v21;
  if (v21 >= 2)
  {
    goto LABEL_162;
  }

  if (!v21)
  {
    v32 = 0;
    v7 = 0;
    LOBYTE(v6) = 0;
    LODWORD(v2) = 1;
    v95 = 0;
LABEL_62:
    LODWORD(v99) = v21;
    goto LABEL_63;
  }

  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  LOBYTE(v5) = v23;
  v24 = *(a1 + 1);
  v25 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v26 = v25 - *a1;
  v14 = v24 >= v26;
  v27 = v24 - v26;
  if (v14 && v27 > 3)
  {
    *(a1 + 2) = v25 + 1;
    if (v25)
    {
      v2 = *v25 | 0x100000000;
      goto LABEL_32;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v88 = *(a1 + 3);
    if (v88)
    {
      if (v24)
      {
        (*(*v88 + 16))(v88);
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
  v89 = *(a1 + 3);
  if (v89 && v24)
  {
    (*(*v89 + 16))(v89);
  }

  v2 = 0;
LABEL_32:
  LODWORD(v3) = IPC::Decoder::decode<std::optional<WebCore::WebGPU::LoadOp>>(a1);
  v6 = IPC::Decoder::decode<std::optional<WebCore::WebGPU::LoadOp>>(a1);
  v28 = *(a1 + 1);
  v29 = *(a1 + 2);
  v30 = *a1;
  if (v28 <= &v29[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v82 = *(a1 + 3);
    if (v82)
    {
      if (v28)
      {
        (*(*v82 + 16))(v82);
        v28 = *(a1 + 1);
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_174:
    *a1 = 0;
    *(a1 + 1) = 0;
    v83 = *(a1 + 3);
    if (v83)
    {
      if (v28)
      {
        (*(*v83 + 16))(v83);
        v31 = 0;
        v30 = *a1;
        v28 = *(a1 + 1);
        goto LABEL_177;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
    v31 = 0;
    goto LABEL_177;
  }

  *(a1 + 2) = v29 + 1;
  if (!v29)
  {
    goto LABEL_174;
  }

  v31 = *v29;
  if (v31 < 2)
  {
    v32 = 1;
    goto LABEL_36;
  }

LABEL_177:
  *a1 = 0;
  *(a1 + 1) = 0;
  v84 = *(a1 + 3);
  if (!v84)
  {
    v30 = 0;
    v28 = 0;
LABEL_179:
    v32 = 0;
    goto LABEL_36;
  }

  if (!v28)
  {
    v30 = 0;
    goto LABEL_179;
  }

  (*(*v84 + 16))(v84, v30);
  v32 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
LABEL_36:
  if (v31)
  {
    v7 = v32;
  }

  else
  {
    v7 = 0;
  }

  v33 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v28 < v33 - v30 || v28 - (v33 - v30) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v67 = *(a1 + 3);
    if (v67)
    {
      if (v28)
      {
        (*(*v67 + 16))(v67);
        v30 = *a1;
        v28 = *(a1 + 1);
        goto LABEL_138;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
    goto LABEL_138;
  }

  *(a1 + 2) = v33 + 4;
  if (v33)
  {
    v99 = *v33 | 0x100000000;
    goto LABEL_43;
  }

LABEL_138:
  *a1 = 0;
  *(a1 + 1) = 0;
  v68 = *(a1 + 3);
  if (v68 && v28)
  {
    (*(*v68 + 16))(v68, v30);
  }

  v99 = 0;
LABEL_43:
  v98 = IPC::Decoder::decode<std::optional<WebCore::WebGPU::LoadOp>>(a1);
  v97 = IPC::Decoder::decode<std::optional<WebCore::WebGPU::LoadOp>>(a1);
  v34 = *(a1 + 1);
  v21 = *(a1 + 2);
  v35 = *a1;
  if (v34 <= &v21[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v85 = *(a1 + 3);
    if (v85)
    {
      if (v34)
      {
        (*(*v85 + 16))(v85);
        v34 = *(a1 + 1);
      }
    }

    else
    {
      v34 = 0;
    }

LABEL_182:
    *a1 = 0;
    *(a1 + 1) = 0;
    v86 = *(a1 + 3);
    if (v86)
    {
      if (v34)
      {
        (*(*v86 + 16))(v86);
        v36 = 0;
        v35 = *a1;
        v34 = *(a1 + 1);
        goto LABEL_185;
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = 0;
    v36 = 0;
    goto LABEL_185;
  }

  *(a1 + 2) = v21 + 1;
  if (!v21)
  {
    goto LABEL_182;
  }

  v36 = *v21;
  if (v36 < 2)
  {
    LODWORD(v21) = 1;
    goto LABEL_47;
  }

LABEL_185:
  *a1 = 0;
  *(a1 + 1) = 0;
  v87 = *(a1 + 3);
  if (!v87 || !v34)
  {
LABEL_125:
    v92 = v7;
    v95 = v2;
    v62 = *a1;
    v63 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v64 = *(a1 + 3);
    if (v64 && v63)
    {
      (*(*v64 + 16))(v64, v62);
    }

    LODWORD(v2) = 0;
    v32 = 0;
    v7 = 0;
    LOBYTE(v6) = 1;
    goto LABEL_62;
  }

  (*(*v87 + 16))(v87, v35);
  LODWORD(v21) = 0;
  v35 = *a1;
LABEL_47:
  if (v36)
  {
    v37 = v21;
  }

  else
  {
    v37 = 0;
  }

  if (!v35)
  {
    v60 = *(a1 + 1);
    v61 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v61 && v60)
    {
      (*(*v61 + 16))(v61);
    }

    goto LABEL_125;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_231;
  }

  if ((v2 & 0x100000000) == 0)
  {
    goto LABEL_231;
  }

  v93 = v37;
  if (!WORD1(v3) || !HIWORD(v6) || (v32 & 1) == 0 || (v99 & 0x100000000) == 0 || !HIWORD(v98) || !HIWORD(v97) || (v21 & 1) == 0)
  {
    goto LABEL_231;
  }

  v91 = v3;
  v92 = v7;
  v90 = v6;
  v95 = v2;
  v32 = v4 & 0xFFFFFFFFFFFFFF00;
  v7 = v4;
  LODWORD(v2) = 1;
  LOBYTE(v6) = 1;
LABEL_63:
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v109, a1);
  v38 = *(a1 + 1);
  v39 = *(a1 + 2);
  v40 = *a1;
  v94 = a2;
  v96 = v2;
  if (v38 <= &v39[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v80 = *(a1 + 3);
    if (v80)
    {
      if (v38)
      {
        (*(*v80 + 16))(v80);
        v38 = *(a1 + 1);
      }
    }

    else
    {
      v38 = 0;
    }

LABEL_166:
    *a1 = 0;
    *(a1 + 1) = 0;
    v81 = *(a1 + 3);
    if (v81)
    {
      if (v38)
      {
        (*(*v81 + 16))(v81);
        v40 = *a1;
        v38 = *(a1 + 1);
LABEL_169:
        *a1 = 0;
        *(a1 + 1) = 0;
        v73 = *(a1 + 3);
        if (v73)
        {
          goto LABEL_170;
        }

        goto LABEL_153;
      }
    }

    else
    {
      v38 = 0;
    }

    v40 = 0;
    goto LABEL_169;
  }

  *(a1 + 2) = v39 + 1;
  if (!v39)
  {
    goto LABEL_166;
  }

  v41 = *v39;
  if (v41 >= 2)
  {
    goto LABEL_169;
  }

  if (!v41)
  {
    v48 = v6;
    v49 = v32;
    v32 = 0;
    v4 = 0;
    v5 = 0;
    LOBYTE(v6) = 1;
    goto LABEL_81;
  }

  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  LOBYTE(v5) = v42;
  v34 = *(a1 + 1);
  v43 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  i = *a1;
  v45 = v43 - *a1;
  v14 = v34 >= v45;
  v46 = v34 - v45;
  if (v14 && v46 > 3)
  {
    *(a1 + 2) = v43 + 1;
    if (v43)
    {
      v2 = *v43 | 0x100000000;
      v40 = i;
      goto LABEL_72;
    }

    goto LABEL_143;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v69 = *(a1 + 3);
  if (v69)
  {
    if (v34)
    {
      (*(*v69 + 16))(v69, i);
      i = *a1;
      v34 = *(a1 + 1);
      goto LABEL_143;
    }
  }

  else
  {
    v34 = 0;
  }

  i = 0;
LABEL_143:
  *a1 = 0;
  *(a1 + 1) = 0;
  v70 = *(a1 + 3);
  if (!v70)
  {
    v40 = 0;
    v34 = 0;
    goto LABEL_145;
  }

  if (!v34)
  {
    goto LABEL_232;
  }

  (*(*v70 + 16))(v70, i);
  v2 = 0;
  v40 = *a1;
  v34 = *(a1 + 1);
  for (i = *a1; ; i = 0)
  {
LABEL_72:
    v47 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v34 < v47 - i || v34 - (v47 - i) <= 3)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v71 = *(a1 + 3);
      if (v71)
      {
        if (v34)
        {
          (*(*v71 + 16))(v71, v40);
          v40 = *a1;
          v34 = *(a1 + 1);
          goto LABEL_149;
        }
      }

      else
      {
        v34 = 0;
      }

      v40 = 0;
    }

    else
    {
      *(a1 + 2) = v47 + 4;
      if (v47)
      {
        v3 = *v47 | 0x100000000;
        if (!i)
        {
          goto LABEL_152;
        }

        goto LABEL_76;
      }
    }

LABEL_149:
    *a1 = 0;
    *(a1 + 1) = 0;
    v72 = *(a1 + 3);
    if (!v72 || !v34)
    {
      goto LABEL_153;
    }

    (*(*v72 + 16))(v72, v40);
    v3 = 0;
    v40 = *a1;
    if (!*a1)
    {
LABEL_152:
      v38 = *(a1 + 1);
      v73 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v73)
      {
LABEL_170:
        if (v38)
        {
          (*(*v73 + 16))(v73, v40);
        }
      }

LABEL_153:
      v48 = v6;
      v49 = v32;
      v74 = *a1;
      v75 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v76 = *(a1 + 3);
      if (v76 && v75)
      {
        (*(*v76 + 16))(v76, v74);
      }

      LOBYTE(v6) = 0;
      v4 = 0;
      v5 = 0;
      goto LABEL_81;
    }

LABEL_76:
    if ((v5 & 1) == 0 || (v2 & 0x100000000) == 0 || (v3 & 0x100000000) == 0)
    {
      goto LABEL_231;
    }

    v48 = v6;
    v49 = v32;
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    v4 = v4;
    LOBYTE(v6) = 1;
    v32 = 1;
LABEL_81:
    result = IPC::Decoder::decode<std::optional<unsigned long long>>(a1, &v106);
    if (!*a1)
    {
      *v94 = 0;
      *(v94 + 120) = 0;
      goto LABEL_91;
    }

    if (v120)
    {
      v52 = v119;
      v119 = 0;
      if (v118)
      {
        v53 = v116;
        v54 = v117;
        v116 = 0;
        v117 = 0;
        if (v96)
        {
          *&v101 = v7 | v49;
          DWORD2(v101) = v95;
          WORD6(v101) = v91;
          HIWORD(v101) = v90;
          LOBYTE(v102) = v92;
          *(&v102 + 1) = v114;
          BYTE3(v102) = v115;
          DWORD1(v102) = v99;
          WORD4(v102) = v98;
          WORD5(v102) = v97;
          BYTE12(v102) = v93;
          *(&v102 + 13) = v112;
          HIBYTE(v102) = v113;
          LOBYTE(v103) = v48;
          if (v111)
          {
            *(&v103 + 1) = v109;
            LOBYTE(v104) = v110;
            if (v6)
            {
              *(&v104 + 1) = v5 | v4;
              *v105 = v2;
              *&v105[4] = v3;
              v105[8] = v32;
              if (v108)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_231:
    __break(1u);
LABEL_232:
    v40 = 0;
LABEL_145:
    v2 = 0;
  }

  *&v105[16] = v106;
  v105[24] = v107;
  v100[0] = 0;
  v100[1] = 0;
  *v94 = v52;
  *(v94 + 8) = v53;
  v100[2] = 0;
  *(v94 + 16) = v54;
  *(v94 + 56) = v103;
  *(v94 + 72) = v104;
  *(v94 + 88) = *v105;
  *(v94 + 24) = v101;
  *(v94 + 40) = v102;
  *(v94 + 97) = *&v105[9];
  *(v94 + 120) = 1;
  WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v100[1], v51);
  result = v100[0];
  v100[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v51);
  }

LABEL_91:
  if (v118 == 1)
  {
    result = WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116, v51);
  }

  if (v120 == 1)
  {
    result = v119;
    v119 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v51);
      }
    }
  }

  return result;
}

void sub_19D7A56A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, WTF *a21, int a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 96) == 1)
  {
    v37 = *(v35 - 104);
    *(v35 - 104) = 0;
    if (v37)
    {
      if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::RenderPipelineDescriptor,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<WebKit::WebGPU::VertexState,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::PrimitiveState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::PrimitiveState> const&>(a1, (a2 + 72));
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::DepthStencilState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::DepthStencilState> const&>(a1, a2 + 80);
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::MultisampleState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::MultisampleState> const&>(a1, a2 + 128);

  return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::FragmentState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::FragmentState> const&>(a1, a2 + 144);
}

void *IPC::ArgumentCoder<WebKit::WebGPU::RenderPipelineDescriptor,void>::encode(WTF *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::StreamConnectionEncoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<WebKit::WebGPU::VertexState,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::PrimitiveState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::PrimitiveState> const&>(a1, (a2 + 72));
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::DepthStencilState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::DepthStencilState> const&>(a1, a2 + 80);
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::MultisampleState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::MultisampleState> const&>(a1, a2 + 128);

  return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::FragmentState>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::FragmentState> const&>(a1, a2 + 144);
}

void IPC::ArgumentCoder<WebKit::WebGPU::RenderPipelineDescriptor,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v272);
  v7 = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a1);
  v9 = v8;
  v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v12 = v11;
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v278);
  IPC::Decoder::decode<WTF::Vector<WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v274, a1);
  v14 = *(a1 + 1);
  v15 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = *a1;
  v17 = v15 - *a1;
  v18 = v14 >= v17;
  v19 = v14 - v17;
  v20 = v18 && v19 > 7;
  v239 = v9;
  if (v20)
  {
    *(a1 + 2) = v15 + 1;
    if (v15)
    {
      v21 = *v15;
      v256 = 0;
      v257 = 0;
      if (v21 >= 0x6666)
      {
        do
        {
          IPC::Decoder::decode<std::optional<WebKit::WebGPU::VertexBufferLayout>>(&v245, a1);
          LODWORD(v2) = v250;
          if (v250)
          {
            if (HIDWORD(v257) == v257)
            {
              WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::optional<WebKit::WebGPU::VertexBufferLayout>>(&v256, &v245);
            }

            else
            {
              std::__optional_move_base<WebKit::WebGPU::VertexBufferLayout,false>::__optional_move_base[abi:sn200100](v256 + 40 * HIDWORD(v257), &v245);
              ++HIDWORD(v257);
            }
          }

          if (v250 == 1 && v249 == 1)
          {
            v145 = v247;
            if (v247)
            {
              v247 = 0;
              LODWORD(v248) = 0;
              WTF::fastFree(v145, v16);
            }
          }

          if ((v2 & 1) == 0)
          {
            goto LABEL_240;
          }

          --v21;
        }

        while (v21);
        LODWORD(v2) = HIDWORD(v257);
        if (v257 > HIDWORD(v257))
        {
          v146 = v256;
          if (HIDWORD(v257))
          {
            if (HIDWORD(v257) >= 0x6666667)
            {
              __break(0xC471u);
              goto LABEL_482;
            }

            v147 = 40 * HIDWORD(v257);
            v148 = WTF::fastMalloc((40 * HIDWORD(v257)));
            LODWORD(v257) = v147 / 0x28;
            v256 = v148;
            if (v148 != v146)
            {
              WTF::VectorMover<false,std::optional<WebKit::WebGPU::VertexBufferLayout>>::move(v146, (v146 + 40 * v2), v148);
            }
          }

          if (v146)
          {
            if (v256 == v146)
            {
              v256 = 0;
              LODWORD(v257) = 0;
            }

            WTF::fastFree(v146, v16);
          }
        }
      }

      else if (v21)
      {
        LODWORD(v257) = 40 * v21 / 0x28u;
        v256 = WTF::fastMalloc((40 * v21));
        while (1)
        {
          IPC::Decoder::decode<std::optional<WebKit::WebGPU::VertexBufferLayout>>(&v245, a1);
          LODWORD(v2) = v250;
          if (v250)
          {
            if (HIDWORD(v257) == v257)
            {
              WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::optional<WebKit::WebGPU::VertexBufferLayout>>(&v256, &v245);
            }

            else
            {
              std::__optional_move_base<WebKit::WebGPU::VertexBufferLayout,false>::__optional_move_base[abi:sn200100](v256 + 40 * HIDWORD(v257), &v245);
              ++HIDWORD(v257);
            }
          }

          if (v250 == 1 && v249 == 1)
          {
            v22 = v247;
            if (v247)
            {
              v247 = 0;
              LODWORD(v248) = 0;
              WTF::fastFree(v22, v16);
            }
          }

          if ((v2 & 1) == 0)
          {
            break;
          }

          if (!--v21)
          {
            goto LABEL_20;
          }
        }

LABEL_240:
        LOBYTE(v286) = 0;
        v288 = 0;
        WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v256, v16);
        goto LABEL_241;
      }

LABEL_20:
      v286 = v256;
      v23 = v257;
      v256 = 0;
      v257 = 0;
      v287 = v23;
      v288 = 1;
      WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v256, v16);
      goto LABEL_21;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v171 = *(a1 + 3);
    if (v171)
    {
      if (v14)
      {
        (*(*v171 + 16))(v171);
        v14 = *(a1 + 1);
      }
    }

    else
    {
      v14 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v172 = *(a1 + 3);
  if (v172 && v14)
  {
    (*(*v172 + 16))(v172);
  }

  LOBYTE(v286) = 0;
  v288 = 0;
LABEL_241:
  v24 = *a1;
  v149 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v150 = *(a1 + 3);
  if (v150 && v149)
  {
    (*(*v150 + 16))(v150, v24);
  }

LABEL_21:
  if (*a1)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_482;
    }

    v256 = v10;
    if ((v279 & 1) == 0)
    {
      goto LABEL_482;
    }

    LOBYTE(v257) = 0;
    v258 = 0;
    if (BYTE8(v278) == 1)
    {
      v25 = v278;
      *&v278 = 0;
      v257 = v25;
      v258 = 1;
    }

    if ((v276 & 1) == 0)
    {
      goto LABEL_482;
    }

    v26 = v274;
    v27 = v275;
    v274 = 0;
    v275 = 0;
    v245 = v10;
    LOBYTE(v246) = 0;
    LOBYTE(v247) = 0;
    if (BYTE8(v278))
    {
      v28 = v257;
      v257 = 0;
      v246 = v28;
      LOBYTE(v247) = 1;
    }

    *&v13 = 0;
    v259 = v13;
    v248 = v26;
    v249 = v27;
    if ((v288 & 1) == 0)
    {
      goto LABEL_482;
    }

    v250 = v286;
    v29 = v287;
    v286 = 0;
    v287 = 0;
    v251 = v29;
    WebKit::WebGPU::VertexState::VertexState(v266, &v245);
    v271 = 1;
    WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v250, v30);
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v248, v31);
    if (v247 == 1)
    {
      v33 = v246;
      v246 = 0;
      if (v33)
      {
        if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v32);
        }
      }
    }

    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v259, v32);
    if (v258 == 1)
    {
      v34 = v257;
      v257 = 0;
      if (v34)
      {
        if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v24);
        }
      }
    }
  }

  else
  {
    v266[0] = 0;
    v271 = 0;
  }

  if (v288 == 1)
  {
    WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v286, v24);
  }

  if (v276 == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v274, v24);
  }

  if (v279 == 1 && BYTE8(v278) == 1)
  {
    v35 = v278;
    *&v278 = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v24);
      }
    }
  }

  v36 = *(a1 + 1);
  if ((v271 & 1) == 0)
  {
    v151 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v152 = *(a1 + 3);
    if (!v152 || !v36)
    {
      v36 = 0;
      v37 = *a1;
LABEL_247:
      *a1 = 0;
      *(a1 + 1) = 0;
      v153 = *(a1 + 3);
      if (v153)
      {
        if (v36)
        {
          (*(*v153 + 16))(v153, v37);
          v36 = *(a1 + 1);
        }
      }

      else
      {
        v36 = 0;
      }

LABEL_249:
      *a1 = 0;
      *(a1 + 1) = 0;
      v154 = *(a1 + 3);
      if (v154)
      {
        if (v36)
        {
          (*(*v154 + 16))(v154);
          v37 = *a1;
          v36 = *(a1 + 1);
          goto LABEL_252;
        }
      }

      else
      {
        v36 = 0;
      }

      v37 = 0;
      goto LABEL_252;
    }

    (*(*v152 + 16))(v152, v151);
    v36 = *(a1 + 1);
  }

  v37 = *a1;
  v38 = *(a1 + 2);
  if (v36 <= &v38[-*a1])
  {
    goto LABEL_247;
  }

  v39 = v38 + 1;
  *(a1 + 2) = v38 + 1;
  if (!v38)
  {
    goto LABEL_249;
  }

  if (*v38 < 2u)
  {
    if (!*v38)
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0x100000000000000;
      goto LABEL_83;
    }

    if (v36 <= v39 - v37)
    {
      v194 = 0;
      v195 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v196 = *(a1 + 3);
      if (v196)
      {
        (*(*v196 + 16))(v196);
        v195 = *a1;
        v194 = *(a1 + 1);
      }
    }

    else
    {
      v40 = v38 + 2;
      *(a1 + 2) = v40;
      if (v39)
      {
        v41 = *v39;
        if (v41 < 5)
        {
          v42 = v41 | 0x100;
          goto LABEL_56;
        }

LABEL_358:
        *a1 = 0;
        *(a1 + 1) = 0;
        v198 = *(a1 + 3);
        if (!v198)
        {
          v42 = 0;
          goto LABEL_360;
        }

        if (!v36)
        {
          v42 = 0;
          goto LABEL_361;
        }

        (*(*v198 + 16))(v198, v37);
        v42 = 0;
        v37 = *a1;
        v36 = *(a1 + 1);
        v40 = *(a1 + 2);
LABEL_56:
        if (v36 > v40 - v37)
        {
          *(a1 + 2) = v40 + 1;
          if (v40)
          {
            v43 = *v40;
            if (v43 < 2)
            {
              if (!v43)
              {
                v46 = 0;
                v45 = 0;
                v47 = 0x10000;
                goto LABEL_64;
              }

              v44 = IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule::Type>(a1);
              v45 = (v44 & ((v44 << 7) >> 15));
              v46 = 256;
              if ((v44 & 0x100) != 0)
              {
                v47 = (v44 & 0x100) << 8;
                goto LABEL_64;
              }

LABEL_367:
              v201 = *a1;
              v202 = *(a1 + 1);
              *a1 = 0;
              *(a1 + 1) = 0;
              v203 = *(a1 + 3);
              if (v203 && v202)
              {
                (*(*v203 + 16))(v203, v201);
              }

              v47 = 0;
LABEL_64:
              v52 = *(a1 + 1);
              v53 = *(a1 + 2);
              v54 = *a1;
              if (v52 <= &v53[-*a1])
              {
                *a1 = 0;
                *(a1 + 1) = 0;
                v204 = *(a1 + 3);
                if (v204)
                {
                  if (v52)
                  {
                    (*(*v204 + 16))(v204);
                    v52 = *(a1 + 1);
                  }
                }

                else
                {
                  v52 = 0;
                }
              }

              else
              {
                v55 = v53 + 1;
                *(a1 + 2) = v53 + 1;
                if (v53)
                {
                  v56 = *v53;
                  if (v56 < 2)
                  {
                    LODWORD(v2) = v56 | 0x100;
                    goto LABEL_68;
                  }

LABEL_382:
                  *a1 = 0;
                  *(a1 + 1) = 0;
                  v206 = *(a1 + 3);
                  if (!v206 || !v52)
                  {
                    LODWORD(v2) = 0;
                    v207 = 0;
                    v54 = 0;
                    goto LABEL_384;
                  }

                  (*(*v206 + 16))(v206, v54);
                  LODWORD(v2) = 0;
                  v54 = *a1;
                  v52 = *(a1 + 1);
                  v55 = *(a1 + 2);
LABEL_68:
                  if (v52 <= v55 - v54)
                  {
                    v207 = 0;
                    v225 = *(a1 + 3);
                    *a1 = 0;
                    *(a1 + 1) = 0;
                    if (v52 && v225)
                    {
                      (*(*v225 + 16))(v225);
                      v54 = *a1;
                      v207 = *(a1 + 1);
                    }

                    else
                    {
                      v54 = 0;
                    }
                  }

                  else
                  {
                    v57 = v55 + 1;
                    *(a1 + 2) = v55 + 1;
                    if (v55)
                    {
                      v58 = *v55;
                      if (v58 < 3)
                      {
                        v59 = v58 | 0x100;
                        goto LABEL_72;
                      }

LABEL_386:
                      *a1 = 0;
                      *(a1 + 1) = 0;
                      v209 = *(a1 + 3);
                      if (!v209 || !v52)
                      {
                        v59 = 0;
                        v210 = 0;
                        v54 = 0;
                        goto LABEL_388;
                      }

                      (*(*v209 + 16))(v209, v54);
                      v59 = 0;
                      v54 = *a1;
                      v52 = *(a1 + 1);
                      v57 = *(a1 + 2);
LABEL_72:
                      if (v52 <= v57 - v54)
                      {
                        v210 = 0;
                        v226 = *(a1 + 3);
                        *a1 = 0;
                        *(a1 + 1) = 0;
                        if (v52 && v226)
                        {
                          (*(*v226 + 16))(v226);
                          v54 = *a1;
                          v210 = *(a1 + 1);
                        }

                        else
                        {
                          v54 = 0;
                        }
                      }

                      else
                      {
                        *(a1 + 2) = v57 + 1;
                        if (v57)
                        {
                          LODWORD(v3) = *v57;
                          if (v3 < 2)
                          {
                            v60 = 1;
                            if (v54)
                            {
                              goto LABEL_76;
                            }

                            goto LABEL_393;
                          }

LABEL_390:
                          *a1 = 0;
                          *(a1 + 1) = 0;
                          v212 = *(a1 + 3);
                          if (!v212 || !v52)
                          {
LABEL_394:
                            v51 = 0;
                            v49 = 0;
                            v50 = 0;
LABEL_82:
                            v48 = 0x1000000000000;
                            goto LABEL_83;
                          }

                          (*(*v212 + 16))(v212, v54);
                          v60 = 0;
                          if (*a1)
                          {
LABEL_76:
                            if (v42 <= 0xFF)
                            {
                              goto LABEL_482;
                            }

                            v61 = v45 | v46;
                            if (!((v61 | v47) >> 16) || v2 <= 0xFF || v59 <= 0xFF || (v60 & 1) == 0)
                            {
                              goto LABEL_482;
                            }

                            v50 = (v59 << 32) | (v2 << 24) | ((v3 != 0) << 40) | (v61 << 8);
                            v49 = v42;
                            v51 = 0x100000000000000;
                            goto LABEL_82;
                          }

LABEL_393:
                          v213 = *(a1 + 1);
                          v214 = *(a1 + 3);
                          *a1 = 0;
                          *(a1 + 1) = 0;
                          if (v214 && v213)
                          {
                            (*(*v214 + 16))(v214);
                          }

                          goto LABEL_394;
                        }

                        v210 = v52;
                      }

LABEL_388:
                      *a1 = 0;
                      *(a1 + 1) = 0;
                      v211 = *(a1 + 3);
                      if (v211 && v210)
                      {
                        (*(*v211 + 16))(v211, v54, v210);
                        LODWORD(v3) = 0;
                        v54 = *a1;
                        v52 = *(a1 + 1);
                      }

                      else
                      {
                        v52 = 0;
                        v54 = 0;
                        LODWORD(v3) = 0;
                      }

                      goto LABEL_390;
                    }

                    v207 = v52;
                  }

LABEL_384:
                  *a1 = 0;
                  *(a1 + 1) = 0;
                  v208 = *(a1 + 3);
                  if (v208 && v207)
                  {
                    (*(*v208 + 16))(v208, v54, v207);
                    v54 = *a1;
                    v52 = *(a1 + 1);
                  }

                  else
                  {
                    v52 = 0;
                    v54 = 0;
                  }

                  goto LABEL_386;
                }
              }

              *a1 = 0;
              *(a1 + 1) = 0;
              v205 = *(a1 + 3);
              if (v205)
              {
                if (v52)
                {
                  (*(*v205 + 16))(v205);
                  v54 = *a1;
                  v52 = *(a1 + 1);
                  goto LABEL_382;
                }
              }

              else
              {
                v52 = 0;
              }

              v54 = 0;
              goto LABEL_382;
            }

LABEL_365:
            *a1 = 0;
            *(a1 + 1) = 0;
            v200 = *(a1 + 3);
            if (v200 && v36)
            {
              (*(*v200 + 16))(v200, v37);
            }

            v46 = 0;
            v45 = 0;
            goto LABEL_367;
          }

LABEL_362:
          *a1 = 0;
          *(a1 + 1) = 0;
          v199 = *(a1 + 3);
          if (v199)
          {
            if (v36)
            {
              (*(*v199 + 16))(v199, v37);
              v37 = *a1;
              v36 = *(a1 + 1);
              goto LABEL_365;
            }
          }

          else
          {
            v36 = 0;
          }

          v37 = 0;
          goto LABEL_365;
        }

        v224 = *(a1 + 3);
        *a1 = 0;
        *(a1 + 1) = 0;
        if (!v36)
        {
LABEL_361:
          v37 = 0;
          goto LABEL_362;
        }

        if (v224)
        {
          (*(*v224 + 16))(v224);
          v37 = *a1;
          v36 = *(a1 + 1);
          goto LABEL_362;
        }

LABEL_360:
        v36 = 0;
        goto LABEL_361;
      }

      v194 = v36;
      v195 = v37;
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v197 = *(a1 + 3);
    if (v197 && v194)
    {
      (*(*v197 + 16))(v197, v195, v194);
      v37 = *a1;
      v36 = *(a1 + 1);
    }

    else
    {
      v36 = 0;
      v37 = 0;
    }

    goto LABEL_358;
  }

LABEL_252:
  *a1 = 0;
  *(a1 + 1) = 0;
  v155 = *(a1 + 3);
  if (v155 && v36)
  {
    (*(*v155 + 16))(v155, v37);
  }

  v48 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
LABEL_83:
  v62 = (v51 | v48 | v49);
  v63 = v62 | v50;
  v64 = *(a1 + 1);
  if (((v62 | v50) & 0x100000000000000) == 0)
  {
    v156 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v157 = *(a1 + 3);
    if (!v157 || !v64)
    {
      v64 = 0;
      v65 = *a1;
LABEL_256:
      *a1 = 0;
      *(a1 + 1) = 0;
      v158 = *(a1 + 3);
      if (v158)
      {
        if (v64)
        {
          (*(*v158 + 16))(v158, v65);
          v64 = *(a1 + 1);
        }
      }

      else
      {
        v64 = 0;
      }

LABEL_258:
      *a1 = 0;
      *(a1 + 1) = 0;
      v159 = *(a1 + 3);
      if (v159)
      {
        if (v64)
        {
          (*(*v159 + 16))(v159);
          v65 = *a1;
          v64 = *(a1 + 1);
LABEL_261:
          *a1 = 0;
          *(a1 + 1) = 0;
          LODWORD(v242) = v62;
          v160 = *(a1 + 3);
          if (v160)
          {
            if (v64)
            {
              (*(*v160 + 16))(v160, v65);
            }

            LODWORD(v242) = v62;
          }

          goto LABEL_417;
        }
      }

      else
      {
        v64 = 0;
      }

      v65 = 0;
      goto LABEL_261;
    }

    (*(*v157 + 16))(v157, v156);
    v64 = *(a1 + 1);
  }

  v65 = *a1;
  v62 = *(a1 + 2);
  if (v64 <= v62 - *a1)
  {
    goto LABEL_256;
  }

  *(a1 + 2) = v62 + 1;
  if (!v62)
  {
    goto LABEL_258;
  }

  LODWORD(v62) = *v62;
  if (v62 >= 2)
  {
    goto LABEL_261;
  }

  if (!v62)
  {
    v78 = 0;
    LOBYTE(v244) = 0;
    v236 = 1;
    v237 = 1;
    LODWORD(v243) = 1;
    LODWORD(v242) = 1;
    goto LABEL_109;
  }

  v244 = IPC::Decoder::decode<WebCore::WebGPU::TextureFormat>(a1);
  v241 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v240 = IPC::Decoder::decode<std::optional<WebCore::WebGPU::CompareFunction>>(a1);
  v2 = IPC::Decoder::decode<WebKit::WebGPU::StencilFaceState>(a1);
  v3 = IPC::Decoder::decode<WebKit::WebGPU::StencilFaceState>(a1);
  v66 = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  v68 = v67;
  v69 = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  v71 = v70;
  v243 = IPC::Decoder::decode<float>(a1);
  v72 = *(a1 + 1);
  v73 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v65 = *a1;
  v74 = v73 - *a1;
  v18 = v72 >= v74;
  v75 = v72 - v74;
  if (v18 && v75 > 3)
  {
    *(a1 + 2) = v73 + 1;
    if (v73)
    {
      v242 = *v73 | 0x100000000;
      v62 = v65;
      goto LABEL_93;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v215 = *(a1 + 3);
    if (v215)
    {
      if (v72)
      {
        (*(*v215 + 16))(v215);
        v72 = *(a1 + 1);
      }
    }

    else
    {
      v72 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v216 = *(a1 + 3);
  if (v216)
  {
    if (v72)
    {
      (*(*v216 + 16))(v216);
      v242 = 0;
      v62 = *a1;
      v72 = *(a1 + 1);
      v65 = *a1;
      goto LABEL_93;
    }

    v62 = 0;
  }

  else
  {
    v62 = 0;
    v72 = 0;
  }

  v65 = 0;
  v242 = 0;
LABEL_93:
  v76 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v72 < v76 - v65 || v72 - (v76 - v65) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v217 = *(a1 + 3);
    if (v217)
    {
      if (v72)
      {
        (*(*v217 + 16))(v217, v62);
        v62 = *a1;
        v72 = *(a1 + 1);
        goto LABEL_413;
      }
    }

    else
    {
      v72 = 0;
    }

    v62 = 0;
  }

  else
  {
    *(a1 + 2) = v76 + 4;
    if (v76)
    {
      v77 = *v76 | 0x100000000;
      if (v65)
      {
        goto LABEL_97;
      }

      goto LABEL_416;
    }
  }

LABEL_413:
  *a1 = 0;
  *(a1 + 1) = 0;
  v218 = *(a1 + 3);
  if (!v218 || !v72)
  {
LABEL_417:
    v221 = *a1;
    v222 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v223 = *(a1 + 3);
    if (v223 && v222)
    {
      (*(*v223 + 16))(v223, v221);
      v236 = 0;
      LOBYTE(v244) = 0;
      v65 = *a1;
    }

    else
    {
      v65 = 0;
      v236 = 0;
      LOBYTE(v244) = 0;
    }

    v78 = 1;
    v237 = v62;
    LODWORD(v243) = v62;
    goto LABEL_109;
  }

  (*(*v218 + 16))(v218, v62);
  v77 = 0;
  v62 = *a1;
  v65 = *a1;
  if (!*a1)
  {
LABEL_416:
    v219 = *(a1 + 1);
    v220 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v220 && v219)
    {
      (*(*v220 + 16))(v220, v62);
    }

    goto LABEL_417;
  }

LABEL_97:
  if ((v244 & 0x100) == 0 || (v241 & 0x10000) == 0 || !HIWORD(v240) || !BYTE4(v2) || !BYTE4(v3) || (v68 & 1) == 0 || (v71 & 1) == 0 || (v243 & 0x100000000) == 0 || (v242 & 0x100000000) == 0 || (v77 & 0x100000000) == 0)
  {
    goto LABEL_482;
  }

  v237 = v77;
  v231 = v69 << 24;
  v232 = v66 << 24;
  v236 = 1;
  v78 = 1;
LABEL_109:
  v79 = *(a1 + 1);
  v80 = *(a1 + 2);
  v234 = v3;
  v235 = v2;
  v238 = v7;
  if (v79 <= v80 - v65)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v189 = *(a1 + 3);
    if (v189)
    {
      if (v79)
      {
        (*(*v189 + 16))(v189);
        v65 = *a1;
        v79 = *(a1 + 1);
LABEL_338:
        *a1 = 0;
        *(a1 + 1) = 0;
        v190 = *(a1 + 3);
        if (v190)
        {
          if (v79)
          {
            (*(*v190 + 16))(v190, v65);
            v84 = *a1;
            v79 = *(a1 + 1);
LABEL_351:
            *a1 = 0;
            *(a1 + 1) = 0;
            v185 = *(a1 + 3);
            if (!v185)
            {
              goto LABEL_331;
            }

            goto LABEL_352;
          }
        }

        else
        {
          v79 = 0;
        }

        v84 = 0;
        goto LABEL_351;
      }
    }

    else
    {
      v79 = 0;
    }

    v65 = 0;
    goto LABEL_338;
  }

  *(a1 + 2) = v80 + 1;
  if (!v80)
  {
    goto LABEL_338;
  }

  if (*v80 >= 2u)
  {
    v84 = v65;
    goto LABEL_351;
  }

  if (!*v80)
  {
    LOBYTE(v2) = 0;
    v91 = 0;
    v90 = 0;
    v92 = 1;
    goto LABEL_130;
  }

  v81 = v80 & 0xFFFFFFFFFFFFFFFCLL;
  v82 = ((v80 & 0xFFFFFFFFFFFFFFFCLL) + 4);
  if (v79 < v82 - v65 || v79 - (v82 - v65) <= 3)
  {
    v84 = 0;
    v177 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    v178 = *(a1 + 3);
    if (v178)
    {
      (*(*v178 + 16))(v178);
      v177 = *a1;
      v84 = *(a1 + 1);
    }
  }

  else
  {
    *(a1 + 2) = v81 + 8;
    if (v82)
    {
      v83 = *v82 | 0x100000000;
      v84 = v65;
      goto LABEL_117;
    }

    v84 = v79;
    v177 = v65;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v179 = *(a1 + 3);
  if (v179)
  {
    if (v84)
    {
      (*(*v179 + 16))(v179, v177, v84);
      v83 = 0;
      v84 = *a1;
      v79 = *(a1 + 1);
      v65 = *a1;
      goto LABEL_117;
    }
  }

  else
  {
    v84 = 0;
  }

  v79 = 0;
  v65 = 0;
  v83 = 0;
LABEL_117:
  v85 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v79 < v85 - v65 || v79 - (v85 - v65) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v180 = *(a1 + 3);
    if (v180)
    {
      if (v79)
      {
        (*(*v180 + 16))(v180, v84);
        v84 = *a1;
        v79 = *(a1 + 1);
        goto LABEL_323;
      }
    }

    else
    {
      v79 = 0;
    }

    v84 = 0;
    goto LABEL_323;
  }

  v86 = (v85 + 1);
  *(a1 + 2) = v85 + 1;
  if (v85)
  {
    v87 = *v85 | 0x100000000;
    goto LABEL_121;
  }

LABEL_323:
  *a1 = 0;
  *(a1 + 1) = 0;
  v181 = *(a1 + 3);
  if (!v181 || !v79)
  {
    v87 = 0;
    v182 = 0;
    v84 = 0;
LABEL_325:
    *a1 = 0;
    *(a1 + 1) = 0;
    v183 = *(a1 + 3);
    if (v183 && v182)
    {
      (*(*v183 + 16))(v183, v84, v182);
      v88 = 0;
      v84 = *a1;
      v79 = *(a1 + 1);
    }

    else
    {
      v79 = 0;
      v84 = 0;
      v88 = 0;
    }

    goto LABEL_327;
  }

  (*(*v181 + 16))(v181, v84);
  v87 = 0;
  v84 = *a1;
  v79 = *(a1 + 1);
  v86 = *(a1 + 2);
  v65 = *a1;
LABEL_121:
  if (v79 <= v86 - v65)
  {
    v182 = 0;
    v227 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v79 && v227)
    {
      (*(*v227 + 16))(v227, v84);
      v84 = *a1;
      v182 = *(a1 + 1);
    }

    else
    {
      v84 = 0;
    }

    goto LABEL_325;
  }

  *(a1 + 2) = v86 + 1;
  if (!v86)
  {
    v182 = v79;
    goto LABEL_325;
  }

  v88 = *v86;
  if (v88 < 2)
  {
    v89 = 1;
    if (v65)
    {
      goto LABEL_125;
    }

LABEL_330:
    v79 = *(a1 + 1);
    v185 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (!v185)
    {
      goto LABEL_331;
    }

LABEL_352:
    if (v79)
    {
      (*(*v185 + 16))(v185, v84);
    }

    goto LABEL_331;
  }

LABEL_327:
  *a1 = 0;
  *(a1 + 1) = 0;
  v184 = *(a1 + 3);
  if (!v184 || !v79)
  {
LABEL_331:
    v186 = *a1;
    v187 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v188 = *(a1 + 3);
    if (v188 && v187)
    {
      (*(*v188 + 16))(v188, v186);
      v92 = 0;
      v91 = 0;
      v90 = 0;
      v65 = *a1;
    }

    else
    {
      v65 = 0;
      v92 = 0;
      v91 = 0;
      v90 = 0;
    }

    goto LABEL_130;
  }

  (*(*v184 + 16))(v184, v84);
  v89 = 0;
  v84 = *a1;
  v65 = *a1;
  if (!*a1)
  {
    goto LABEL_330;
  }

LABEL_125:
  if ((v83 & 0x100000000) == 0 || (v87 & 0x100000000) == 0 || (v89 & 1) == 0)
  {
    goto LABEL_482;
  }

  v90 = v83 & 0xFFFFFF00 | (v87 << 32);
  v233 = v88 != 0;
  v91 = v83;
  v92 = 1;
  LOBYTE(v2) = 1;
LABEL_130:
  v93 = *(a1 + 1);
  v94 = *(a1 + 2);
  if (v93 <= v94 - v65)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v191 = *(a1 + 3);
    if (v191)
    {
      if (v93)
      {
        (*(*v191 + 16))(v191);
        v65 = *a1;
        v93 = *(a1 + 1);
        goto LABEL_344;
      }
    }

    else
    {
      v93 = 0;
    }

    v65 = 0;
LABEL_344:
    *a1 = 0;
    *(a1 + 1) = 0;
    v192 = *(a1 + 3);
    if (v192)
    {
      if (v93)
      {
        (*(*v192 + 16))(v192, v65);
        v65 = *a1;
        v93 = *(a1 + 1);
        goto LABEL_347;
      }
    }

    else
    {
      v93 = 0;
    }

    v65 = 0;
LABEL_347:
    *a1 = 0;
    *(a1 + 1) = 0;
    v193 = *(a1 + 3);
    if (v193 && v93)
    {
      (*(*v193 + 16))(v193, v65);
    }

    goto LABEL_274;
  }

  *(a1 + 2) = v94 + 1;
  if (!v94)
  {
    goto LABEL_344;
  }

  v95 = *v94;
  if (v95 >= 2)
  {
    goto LABEL_347;
  }

  if (!v95)
  {
    LOBYTE(v245) = 0;
    v252 = 0;
    std::__optional_move_base<WebKit::WebGPU::FragmentState,false>::__optional_move_base[abi:sn200100](&v256, &v245);
    v263 = 1;
    if (v252 != 1)
    {
      goto LABEL_193;
    }

LABEL_187:
    v134 = v250;
    if (v250)
    {
      v250 = 0;
      LODWORD(v251) = 0;
      WTF::fastFree(v134, v65);
    }

    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v248, v65);
    if (v247 == 1)
    {
      v135 = v246;
      v246 = 0;
      if (v135)
      {
        if (atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v135, v65);
        }
      }
    }

    goto LABEL_193;
  }

  v96 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v230 = v97;
  v98 = v96;
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v286);
  IPC::Decoder::decode<WTF::Vector<WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v283, a1);
  v100 = *(a1 + 1);
  v101 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v102 = *a1;
  v103 = v101 - *a1;
  v18 = v100 >= v103;
  v104 = v100 - v103;
  v229 = v92;
  if (!v18 || v104 <= 7)
  {
    v111 = v63;
    v112 = a2;
    v113 = v2;
    v2 = v90;
    v114 = v78;
    *a1 = 0;
    *(a1 + 1) = 0;
    v173 = *(a1 + 3);
    if (v173)
    {
      if (v100)
      {
        (*(*v173 + 16))(v173);
        v102 = *a1;
        v100 = *(a1 + 1);
LABEL_309:
        *a1 = 0;
        *(a1 + 1) = 0;
        v174 = *(a1 + 3);
        if (v174 && v100)
        {
          (*(*v174 + 16))(v174, v102);
        }

        v115 = 0;
        goto LABEL_311;
      }
    }

    else
    {
      v100 = 0;
    }

    v102 = 0;
    goto LABEL_309;
  }

  *(a1 + 2) = v101 + 1;
  if (!v101)
  {
    v111 = v63;
    v112 = a2;
    v113 = v2;
    v2 = v90;
    v114 = v78;
    goto LABEL_309;
  }

  v105 = *v101;
  v274 = 0;
  v275 = 0;
  if (v105 >= 0x10000)
  {
    do
    {
      IPC::Decoder::decode<std::optional<WebKit::WebGPU::ColorTargetState>>(&v278, a1);
      if ((v279 & 1) == 0)
      {
        goto LABEL_154;
      }

      v117 = HIDWORD(v275);
      if (HIDWORD(v275) == v275)
      {
        v118 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v274, HIDWORD(v275) + 1, &v278);
        v117 = HIDWORD(v275);
        v119 = v274;
        v120 = *v118;
      }

      else
      {
        v119 = v274;
        v120 = v278;
      }

      *(v119 + v117) = v120;
      v121 = ++HIDWORD(v275);
      --v105;
    }

    while (v105);
    if (v275 > v121)
    {
      v165 = v274;
      if (v121)
      {
        v228 = v274;
        if (v121 >> 28)
        {
LABEL_483:
          __break(0xC471u);
          JUMPOUT(0x19D7A77B0);
        }

        v166 = v121;
        v167 = 16 * v121;
        v168 = WTF::fastMalloc((16 * v121));
        v165 = v228;
        LODWORD(v275) = v166;
        v274 = v168;
        if (v168 != v228)
        {
          v169 = v228;
          do
          {
            v170 = *v169;
            v169 = (v169 + 16);
            *v168 = v170;
            v168 = (v168 + 16);
            v167 -= 16;
          }

          while (v167);
        }
      }

      if (v165)
      {
        if (v274 == v165)
        {
          v274 = 0;
          LODWORD(v275) = 0;
        }

        WTF::fastFree(v165, v102);
      }
    }

    goto LABEL_146;
  }

  if (!v105)
  {
LABEL_146:
    v111 = v63;
    v112 = a2;
    v113 = v2;
    v2 = v90;
    v114 = v78;
    v115 = v274;
    v274 = 0;
    v4 = v275;
    v116 = 1;
    HIDWORD(v275) = 0;
    goto LABEL_155;
  }

  v106 = WTF::fastMalloc((16 * v105));
  LODWORD(v275) = v105;
  v274 = v106;
  while (1)
  {
    IPC::Decoder::decode<std::optional<WebKit::WebGPU::ColorTargetState>>(&v278, a1);
    if ((v279 & 1) == 0)
    {
      break;
    }

    v107 = HIDWORD(v275);
    if (HIDWORD(v275) == v275)
    {
      v108 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v274, HIDWORD(v275) + 1, &v278);
      v107 = HIDWORD(v275);
      v109 = v274;
      v110 = *v108;
    }

    else
    {
      v109 = v274;
      v110 = v278;
    }

    *(v109 + v107) = v110;
    ++HIDWORD(v275);
    if (!--v105)
    {
      goto LABEL_146;
    }
  }

LABEL_154:
  v111 = v63;
  v112 = a2;
  v113 = v2;
  v2 = v90;
  v114 = v78;
  v116 = 0;
  v115 = 0;
LABEL_155:
  v122 = v274;
  if (v274)
  {
    v274 = 0;
    LODWORD(v275) = 0;
    WTF::fastFree(v122, v102);
  }

  if (v116)
  {
    v123 = 1;
    v78 = v114;
    goto LABEL_159;
  }

LABEL_311:
  v102 = *a1;
  v175 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v176 = *(a1 + 3);
  v78 = v114;
  if (v176 && v175)
  {
    (*(*v176 + 16))(v176, v102);
  }

  v123 = 0;
LABEL_159:
  v90 = v2;
  LOBYTE(v2) = v113;
  if (*a1)
  {
    if (v230)
    {
      v274 = v98;
      if (v288)
      {
        a2 = v112;
        LOBYTE(v275) = 0;
        v276 = 0;
        if (v287 == 1)
        {
          v124 = v286;
          v286 = 0;
          v275 = v124;
          v276 = 1;
        }

        if (v285)
        {
          v63 = v111;
          v125 = v283;
          v126 = v284;
          v283 = 0;
          v284 = 0;
          *&v278 = v98;
          BYTE8(v278) = 0;
          v279 = 0;
          if (v287)
          {
            v127 = v275;
            v275 = 0;
            *(&v278 + 1) = v127;
            v279 = 1;
          }

          *&v99 = 0;
          v277 = v99;
          v280[0] = v125;
          v280[1] = v126;
          if (v123)
          {
            v281 = v115;
            v282 = v4;
            WebKit::WebGPU::FragmentState::FragmentState(&v245, &v278);
            v252 = 1;
            v129 = v281;
            if (v281)
            {
              v281 = 0;
              LODWORD(v282) = 0;
              WTF::fastFree(v129, v128);
            }

            WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v280, v128);
            if (v279 == 1)
            {
              v131 = *(&v278 + 1);
              *(&v278 + 1) = 0;
              if (v131)
              {
                if (atomic_fetch_add_explicit(v131, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v131, v130);
                }
              }
            }

            WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v277, v130);
            if (v276 == 1)
            {
              v132 = v275;
              v275 = 0;
              if (v132)
              {
                if (atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v132, v102);
                }
              }
            }

            goto LABEL_178;
          }
        }
      }
    }

LABEL_482:
    __break(1u);
    goto LABEL_483;
  }

  LOBYTE(v245) = 0;
  v252 = 0;
  if (!v115)
  {
    v123 = 0;
  }

  a2 = v112;
  v63 = v111;
  if (v123)
  {
    WTF::fastFree(v115, v102);
  }

LABEL_178:
  if (v285 == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v283, v102);
  }

  v92 = v229;
  if (v288 == 1 && v287 == 1)
  {
    v133 = v286;
    v286 = 0;
    if (v133)
    {
      if (atomic_fetch_add_explicit(v133, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v133, v102);
      }
    }
  }

  if ((v252 & 1) == 0)
  {
    v65 = *a1;
    v163 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v164 = *(a1 + 3);
    if (!v164 || !v163 || ((*(*v164 + 16))(v164, v65), (v252 & 1) == 0))
    {
LABEL_274:
      LOBYTE(v256) = 0;
      v263 = 0;
      goto LABEL_193;
    }
  }

  WebKit::WebGPU::FragmentState::FragmentState(&v256, &v245);
  v262 = 1;
  v263 = 1;
  if (v252)
  {
    goto LABEL_187;
  }

LABEL_193:
  if ((v263 & 1) == 0)
  {
    v65 = *a1;
    v161 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v162 = *(a1 + 3);
    if (v162)
    {
      if (v161)
      {
        (*(*v162 + 16))(v162, v65);
      }
    }
  }

  if (!*a1)
  {
    *a2 = 0;
    *(a2 + 208) = 0;
    goto LABEL_203;
  }

  if ((v273 & 1) == 0)
  {
    goto LABEL_482;
  }

  v136 = v272;
  v272 = 0;
  if ((v239 & 1) == 0)
  {
    goto LABEL_482;
  }

  v245 = v136;
  v246 = v238;
  if ((v271 & 1) == 0)
  {
    goto LABEL_482;
  }

  WebKit::WebGPU::VertexState::VertexState(&v247, v266);
  if ((v63 & 0x100000000000000) == 0)
  {
    goto LABEL_482;
  }

  *v253 = v63;
  v253[6] = BYTE6(v63);
  *&v253[4] = WORD2(v63);
  if ((v236 & 1) == 0)
  {
    goto LABEL_482;
  }

  v253[8] = v244;
  *&v253[9] = v241;
  *&v253[11] = v240;
  *&v253[13] = v235;
  *&v253[17] = v234;
  *&v253[21] = v232;
  *&v253[29] = v231;
  *&v253[37] = v264;
  v253[39] = v265;
  *&v253[40] = v243;
  *&v253[44] = v242;
  *v254 = v237;
  v254[4] = v78;
  if ((v92 & 1) == 0)
  {
    goto LABEL_482;
  }

  *&v254[8] = v90 | v91;
  *&v254[16] = v233;
  v254[20] = v2;
  if ((v263 & 1) == 0)
  {
    goto LABEL_482;
  }

  std::__optional_move_base<WebKit::WebGPU::FragmentState,false>::__optional_move_base[abi:sn200100](v255, &v256);
  v137 = v245;
  v138 = v246;
  v245 = 0;
  *a2 = v137;
  *(a2 + 8) = v138;
  WebKit::WebGPU::VertexState::VertexState(a2 + 16, &v247);
  *(a2 + 88) = *&v253[16];
  *(a2 + 104) = *&v253[32];
  *(a2 + 120) = *v254;
  *(a2 + 133) = *&v254[13];
  *(a2 + 72) = *v253;
  std::__optional_move_base<WebKit::WebGPU::FragmentState,false>::__optional_move_base[abi:sn200100]((a2 + 144), v255);
  *(a2 + 208) = 1;
  WebKit::WebGPU::RenderPipelineDescriptor::~RenderPipelineDescriptor(&v245, v139);
LABEL_203:
  if (v263 == 1 && v262 == 1)
  {
    v140 = v260;
    if (v260)
    {
      v260 = 0;
      v261 = 0;
      WTF::fastFree(v140, v65);
    }

    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v259, v65);
    if (v258 == 1)
    {
      v141 = v257;
      v257 = 0;
      if (v141)
      {
        if (atomic_fetch_add_explicit(v141, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v141, v65);
        }
      }
    }
  }

  if (v271 == 1)
  {
    WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v270, v65);
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v269, v142);
    if (v268 == 1)
    {
      v143 = v267;
      v267 = 0;
      if (v143)
      {
        if (atomic_fetch_add_explicit(v143, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v143, v65);
        }
      }
    }
  }

  if (v273 == 1)
  {
    v144 = v272;
    v272 = 0;
    if (v144)
    {
      if (atomic_fetch_add_explicit(v144, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v144, v65);
      }
    }
  }
}

void sub_19D7A77CC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, WTF::StringImpl *a27, WTF *a28, WTF::StringImpl *a29, uint64_t a30, WTF *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, WTF::StringImpl *a53, uint64_t a54, uint64_t a55, uint64_t a56, WTF *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v71 - 232) == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v71 - 248, a2);
  }

  if (*(v71 - 192) == 1 && *(v71 - 200) == 1)
  {
    v73 = *(v71 - 208);
    *(v71 - 208) = 0;
    if (v73)
    {
      if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v73, a2);
      }
    }
  }

  if (a71 == 1 && a70 && atomic_fetch_add_explicit(a70, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a70, a2);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::RequestAdapterOptions,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::TextDirection>,void>::encode<IPC::Encoder,std::optional<WebCore::TextDirection> const&>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 2);

  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 3);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::RequestAdapterOptions,void>::encode(uint64_t a1, _BYTE *a2)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, a2);
  if (!*(a1 + 8))
  {
    goto LABEL_7;
  }

  **a1 = a2[2];
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = v5 - 1;
  v6 = v5 == 1;
  v8 = (*a1 + 1);
  *a1 = v8;
  *(a1 + 8) = v7;
  if (!v6)
  {
    *v8 = a2[3];
    v9 = *(a1 + 8);
    if (v9)
    {
      ++*a1;
      *(a1 + 8) = v9 - 1;
      return result;
    }

LABEL_6:
    __break(1u);
  }

LABEL_7:
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

unint64_t IPC::ArgumentCoder<WebKit::WebGPU::RequestAdapterOptions,void>::decode(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    goto LABEL_30;
  }

  v4 = v2 + 1;
  a1[2] = v2 + 1;
  if (!v2)
  {
    v47 = a1;
    goto LABEL_33;
  }

  if (*v2 >= 2u)
  {
    v47 = a1;
    goto LABEL_37;
  }

  if (*v2)
  {
    if (v1 <= &v4[-v3])
    {
      v23 = 0;
      v24 = 0;
      *a1 = 0;
      a1[1] = 0;
      v47 = a1;
      v25 = a1[3];
      if (v25)
      {
        (*(*v25 + 16))(v25);
        v24 = *v47;
        v23 = v47[1];
      }
    }

    else
    {
      a1[2] = v2 + 2;
      if (v2 != -1)
      {
        v5 = *v4;
        if (v5 < 2)
        {
          v6 = 0x10000;
          v7 = 256;
          goto LABEL_10;
        }

        v47 = a1;
LABEL_46:
        *v47 = 0;
        v47[1] = 0;
        v27 = v47[3];
        if (v27 && v1)
        {
          (*(*v27 + 16))(v27, v3);
          v37 = v47[3];
          v38 = *v47;
          v39 = v47[1];
          v46 = 256;
          *v47 = 0;
          v47[1] = 0;
          if (!v37 || !v39)
          {
            goto LABEL_48;
          }

          (*(*v37 + 16))(v37, v38);
        }

        v46 = 256;
        goto LABEL_48;
      }

      v47 = a1;
      v23 = v1;
      v24 = v3;
    }

    *v47 = 0;
    v47[1] = 0;
    v26 = v47[3];
    if (v26 && v23)
    {
      (*(*v26 + 16))(v26, v24, v23);
      v3 = *v47;
      v1 = v47[1];
    }

    else
    {
      v1 = 0;
      v3 = 0;
    }

    goto LABEL_46;
  }

  v7 = 0;
  v5 = 0;
  v6 = 0x10000;
LABEL_10:
  v8 = v6 | v7;
  v9 = a1[2];
  if (v1 <= &v9[-v3])
  {
    v44 = v7;
    v45 = v5;
    v46 = v8;
    v47 = a1;
    while (1)
    {
      *v47 = 0;
      v47[1] = 0;
      v30 = v47[3];
      if (!v30)
      {
        break;
      }

      if (!v1)
      {
        goto LABEL_53;
      }

      (*(*v30 + 16))(v30, v3);
      v3 = *v47;
      v1 = v47[1];
LABEL_54:
      *v47 = 0;
      v47[1] = 0;
      v31 = v47[3];
      if (v31)
      {
        if (v1)
        {
          (*(*v31 + 16))(v31, v3);
          v42 = 0;
          v3 = *v47;
          v1 = v47[1];
          goto LABEL_57;
        }
      }

      else
      {
        v1 = 0;
      }

      v3 = 0;
      v42 = 0;
LABEL_57:
      *v47 = 0;
      v47[1] = 0;
      v32 = v47[3];
      if (v32 && v1)
      {
        (*(*v32 + 16))(v32, v3);
        v12 = 0;
        a1 = v47;
        v3 = *v47;
        v1 = v47[1];
        v10 = v47[2];
        v8 = v46;
        v7 = v44;
        v5 = v45;
        v11 = v42;
        goto LABEL_14;
      }

      v41 = 0;
      v43 = 0;
      v33 = 0;
      v3 = 0;
LABEL_59:
      *v47 = 0;
      v47[1] = 0;
      v34 = v47[3];
      if (v34 && v33)
      {
        (*(*v34 + 16))(v34, v3, v33);
        v40 = 0;
        v3 = *v47;
        v1 = v47[1];
      }

      else
      {
        v1 = 0;
        v3 = 0;
        v40 = 0;
      }

LABEL_61:
      *v47 = 0;
      v47[1] = 0;
      v35 = v47[3];
      if (!v35)
      {
        goto LABEL_62;
      }

      if (!v1)
      {
        goto LABEL_62;
      }

      a1 = (*(*v35 + 16))(v35, v3);
      v15 = 0;
      v8 = v46;
      v7 = v44;
      v5 = v45;
      LOBYTE(v12) = v41;
      v13 = v43;
      v14 = v40;
      if (!*v47)
      {
        goto LABEL_62;
      }

LABEL_21:
      if (HIWORD(v8) && (v12 & 1) != 0 && (v15 & 1) != 0)
      {
        if (v13)
        {
          v16 = 0x10000;
        }

        else
        {
          v16 = 0;
        }

        v17 = v5 | v7 | v16 | ((v14 != 0) << 24);
        v18 = 1;
        return v17 | (v18 << 32);
      }

      __break(1u);
LABEL_30:
      *a1 = 0;
      a1[1] = 0;
      v47 = a1;
      v20 = a1[3];
      if (!v20)
      {
        v1 = 0;
LABEL_32:
        v3 = 0;
        goto LABEL_33;
      }

      if (!v1)
      {
        goto LABEL_32;
      }

      (*(*v20 + 16))(v20);
      v3 = *v47;
      v1 = v47[1];
LABEL_33:
      *v47 = 0;
      v47[1] = 0;
      v21 = v47[3];
      if (!v21)
      {
        v1 = 0;
LABEL_35:
        v3 = 0;
        goto LABEL_37;
      }

      if (!v1)
      {
        goto LABEL_35;
      }

      (*(*v21 + 16))(v21, v3);
      v3 = *v47;
      v1 = v47[1];
LABEL_37:
      *v47 = 0;
      v47[1] = 0;
      v22 = v47[3];
      if (v22 && v1)
      {
        (*(*v22 + 16))(v22, v3);
      }

      v46 = 0;
LABEL_48:
      v28 = *v47;
      v1 = v47[1];
      *v47 = 0;
      v47[1] = 0;
      v29 = v47[3];
      if (v29)
      {
        if (v1)
        {
          (*(*v29 + 16))(v29, v28);
          v5 = 0;
          v6 = 0;
          a1 = v47;
          v3 = *v47;
          v1 = v47[1];
          v7 = v46;
          goto LABEL_10;
        }

        v3 = 0;
        v45 = 0;
      }

      else
      {
        v3 = 0;
        v45 = 0;
        v1 = 0;
      }

      v44 = v46;
    }

    v1 = 0;
LABEL_53:
    v3 = 0;
    goto LABEL_54;
  }

  v10 = v9 + 1;
  a1[2] = v9 + 1;
  if (!v9)
  {
    v44 = v7;
    v45 = v5;
    v46 = v8;
    v47 = a1;
    goto LABEL_54;
  }

  v11 = *v9;
  if (v11 >= 2)
  {
    v42 = *v9;
    v44 = v7;
    v45 = v5;
    v46 = v8;
    v47 = a1;
    goto LABEL_57;
  }

  v12 = 1;
LABEL_14:
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v1 <= &v10[-v3])
  {
    v41 = v12;
    v43 = v13;
    v44 = v7;
    v45 = v5;
    v46 = v8;
    v33 = 0;
    v36 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    v47 = a1;
    if (v36 && v1)
    {
      (*(*v36 + 16))(v36);
      v3 = *v47;
      v33 = v47[1];
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_59;
  }

  a1[2] = v10 + 1;
  if (!v10)
  {
    v41 = v12;
    v43 = v13;
    v44 = v7;
    v45 = v5;
    v46 = v8;
    v47 = a1;
    v33 = v1;
    goto LABEL_59;
  }

  v14 = *v10;
  if (v14 >= 2)
  {
    v40 = *v10;
    v41 = v12;
    v43 = v13;
    v44 = v7;
    v45 = v5;
    v46 = v8;
    v47 = a1;
    goto LABEL_61;
  }

  v15 = 1;
  if (v3)
  {
    goto LABEL_21;
  }

LABEL_62:
  v18 = 0;
  v17 = 0;
  return v17 | (v18 << 32);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::SamplerDescriptor,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 9));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 10));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 11));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 13));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 24));
  v4 = *(a2 + 26);

  return IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::SamplerDescriptor,void>::encode(uint64_t *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  if (!a1[1])
  {
    goto LABEL_21;
  }

  **a1 = *(a2 + 8);
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = v4 - 1;
  v5 = v4 == 1;
  v7 = (*a1 + 1);
  *a1 = v7;
  a1[1] = v6;
  if (v5)
  {
    goto LABEL_21;
  }

  *v7 = *(a2 + 9);
  v8 = a1[1];
  if (!v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = v8 - 1;
  v5 = v8 == 1;
  v10 = (*a1 + 1);
  *a1 = v10;
  a1[1] = v9;
  if (v5)
  {
LABEL_21:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_19;
  }

  *v10 = *(a2 + 10);
  v11 = a1[1];
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v11 - 1;
  v5 = v11 == 1;
  v13 = (*a1 + 1);
  *a1 = v13;
  a1[1] = v12;
  if (v5)
  {
    goto LABEL_21;
  }

  *v13 = *(a2 + 11);
  v14 = a1[1];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14 - 1;
  v5 = v14 == 1;
  v16 = (*a1 + 1);
  *a1 = v16;
  a1[1] = v15;
  if (v5)
  {
    goto LABEL_21;
  }

  *v16 = *(a2 + 12);
  v17 = a1[1];
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = v17 - 1;
  v5 = v17 == 1;
  v19 = (*a1 + 1);
  *a1 = v19;
  a1[1] = v18;
  if (v5)
  {
    goto LABEL_21;
  }

  *v19 = *(a2 + 13);
  v20 = a1[1];
  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = v20 - 1;
  v22 = *a1 + 1;
  *a1 = v22;
  a1[1] = v21;
  v23 = -v22 & 3 | 4;
  if (v21 < v23)
  {
    goto LABEL_21;
  }

  *(v22 + (-v22 & 3)) = *(a2 + 16);
  v24 = a1[1];
  v25 = v24 - v23;
  if (v24 < v23)
  {
    goto LABEL_20;
  }

  v26 = *a1 + v23;
  *a1 = v26;
  a1[1] = v25;
  v27 = -v26 & 3 | 4;
  if (v25 < v27)
  {
    goto LABEL_21;
  }

  *(v26 + (-v26 & 3)) = *(a2 + 20);
  v28 = a1[1];
  v29 = v28 >= v27;
  v30 = v28 - v27;
  if (!v29)
  {
    goto LABEL_20;
  }

  *a1 += v27;
  a1[1] = v30;
LABEL_19:
  IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, (a2 + 24));
  v32 = *(a2 + 26);
  return IPC::StreamConnectionEncoder::encodeSpan<unsigned short const,18446744073709551615ul>(a1, &v32, 1);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::SamplerDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v36);
  v4 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v5 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v6 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v7 = IPC::Decoder::decode<WebCore::WebGPU::PredefinedColorSpace>(a1);
  v8 = IPC::Decoder::decode<WebCore::WebGPU::PredefinedColorSpace>(a1);
  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  v11 = *a1;
  if (v9 <= &v10[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v28 = *(a1 + 3);
    if (v28)
    {
      if (v9)
      {
        (*(*v28 + 16))(v28);
        v9 = *(a1 + 1);
      }
    }

    else
    {
      v9 = 0;
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
        v13 = v12 | 0x100;
        goto LABEL_5;
      }

      goto LABEL_45;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v29 = *(a1 + 3);
  if (v29)
  {
    if (v9)
    {
      (*(*v29 + 16))(v29);
      v11 = *a1;
      v9 = *(a1 + 1);
      goto LABEL_45;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
LABEL_45:
  *a1 = 0;
  *(a1 + 1) = 0;
  v30 = *(a1 + 3);
  if (v30)
  {
    if (v9)
    {
      (*(*v30 + 16))(v30, v11);
      v13 = 0;
      v11 = *a1;
      v9 = *(a1 + 1);
      goto LABEL_5;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  v13 = 0;
LABEL_5:
  v14 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v9 < v14 - v11 || v9 - (v14 - v11) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = *(a1 + 3);
    if (v31)
    {
      if (v9)
      {
        (*(*v31 + 16))(v31);
        v11 = *a1;
        v9 = *(a1 + 1);
        goto LABEL_53;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
  }

  else
  {
    *(a1 + 2) = v14 + 4;
    if (v14)
    {
      v15 = *v14 | 0x100000000;
      v16 = v11;
      goto LABEL_9;
    }
  }

LABEL_53:
  *a1 = 0;
  *(a1 + 1) = 0;
  v32 = *(a1 + 3);
  if (v32)
  {
    if (v9)
    {
      (*(*v32 + 16))(v32, v11);
      v15 = 0;
      v16 = *a1;
      v9 = *(a1 + 1);
      v11 = *a1;
      goto LABEL_9;
    }

    v16 = 0;
  }

  else
  {
    v16 = 0;
    v9 = 0;
  }

  v11 = 0;
  v15 = 0;
LABEL_9:
  v17 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v9 < v17 - v11 || v9 - (v17 - v11) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33)
    {
      if (v9)
      {
        (*(*v33 + 16))(v33, v16);
        v16 = *a1;
        v9 = *(a1 + 1);
        goto LABEL_59;
      }
    }

    else
    {
      v9 = 0;
    }

    v16 = 0;
    goto LABEL_59;
  }

  *(a1 + 2) = v17 + 4;
  if (v17)
  {
    v18 = *v17 | 0x100000000;
    goto LABEL_13;
  }

LABEL_59:
  *a1 = 0;
  *(a1 + 1) = 0;
  v34 = *(a1 + 3);
  if (v34 && v9)
  {
    (*(*v34 + 16))(v34, v16);
  }

  v18 = 0;
LABEL_13:
  result = IPC::Decoder::decode<std::optional<WebCore::WebGPU::CompareFunction>>(a1);
  v20 = *(a1 + 1);
  v21 = ((*(a1 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v22 = *a1;
  v23 = v21 - *a1;
  v24 = v20 >= v23;
  v25 = v20 - v23;
  if (!v24 || v25 <= 1)
  {
    goto LABEL_32;
  }

  *(a1 + 2) = v21 + 1;
  if (!v21)
  {
    v35 = result;
    goto LABEL_35;
  }

  v26 = *v21 | 0x10000;
  if (v22)
  {
    while (1)
    {
      if ((v37 & 1) != 0 && v4 > 0xFFu && v5 > 0xFFu && v6 > 0xFFu && v7 > 0xFFu && v8 > 0xFFu && v13 > 0xFF && (v15 & 0x100000000) != 0 && (v18 & 0x100000000) != 0 && WORD1(result) && (v26 & 0x10000) != 0)
      {
        *a2 = v36;
        *(a2 + 8) = v4;
        *(a2 + 9) = v5;
        *(a2 + 10) = v6;
        *(a2 + 11) = v7;
        *(a2 + 12) = v8;
        *(a2 + 13) = v13;
        *(a2 + 16) = v15;
        *(a2 + 20) = v18;
        *(a2 + 24) = result;
        *(a2 + 26) = v26;
        *(a2 + 32) = 1;
        return result;
      }

      __break(1u);
LABEL_32:
      v35 = result;
      *a1 = 0;
      *(a1 + 1) = 0;
      v27 = *(a1 + 3);
      if (!v27)
      {
        break;
      }

      if (!v20)
      {
        goto LABEL_34;
      }

      (*(*v27 + 16))(v27);
      v22 = *a1;
      v20 = *(a1 + 1);
LABEL_35:
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result)
      {
        if (v20)
        {
          (*(*result + 16))(result, v22);
          v26 = 0;
          v22 = *a1;
          result = v35;
          if (*a1)
          {
            continue;
          }
        }
      }

      goto LABEL_36;
    }

    v20 = 0;
LABEL_34:
    v22 = 0;
    goto LABEL_35;
  }

LABEL_36:
  *a2 = 0;
  *(a2 + 32) = 0;
  if (v37)
  {
    result = v36;
    v36 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v22);
      }
    }
  }

  return result;
}

void sub_19D7A8AB0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ShaderModuleDescriptor,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);

  return IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 2));
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ShaderModuleDescriptor,void>::encode(void *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2 + 1);

  return IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 2));
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebGPU::ShaderModuleDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v46);
  IPC::Decoder::decode<WTF::String>(a1, &v44);
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
    v37 = *(a1 + 3);
    if (v37)
    {
      if (v5)
      {
        (*(*v37 + 16))(v37);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_71:
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38 && v5)
    {
      (*(*v38 + 16))(v38);
    }

    LOBYTE(v42) = 0;
    v43 = 0;
LABEL_23:
    v21 = *a1;
    v22 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v22)
    {
      result = (*(*result + 16))(result, v21);
    }

    goto LABEL_47;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_71;
  }

  v12 = *v6;
  v48 = 0;
  v49 = 0;
  if (v12 >= 0x10000)
  {
    do
    {
      result = IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>>(&v39, a1);
      v24 = v41;
      if (v41)
      {
        if (HIDWORD(v49) == v49)
        {
          v25 = WTF::Vector<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v48, HIDWORD(v49) + 1, &v39);
          v26 = (v48 + 16 * HIDWORD(v49));
          v27 = *v25;
          *v25 = 0;
          result = (v25 + 1);
          *v26 = v27;
        }

        else
        {
          v28 = v39;
          v26 = (v48 + 16 * HIDWORD(v49));
          v39 = 0;
          *v26 = v28;
          result = &v40;
        }

        v26[1] = *result;
        ++HIDWORD(v49);
      }

      if (v41 == 1)
      {
        result = v39;
        v39 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v7);
          }
        }
      }

      if ((v24 & 1) == 0)
      {
LABEL_22:
        LOBYTE(v42) = 0;
        v43 = 0;
        WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v7);
        goto LABEL_23;
      }

      --v12;
    }

    while (v12);
    v29 = HIDWORD(v49);
    if (v49 > HIDWORD(v49))
    {
      v30 = v48;
      if (HIDWORD(v49))
      {
        if (HIDWORD(v49) >> 28)
        {
          __break(0xC471u);
          goto LABEL_78;
        }

        v31 = WTF::fastMalloc((16 * HIDWORD(v49)));
        LODWORD(v49) = v29;
        v48 = v31;
        if (v31 != v30)
        {
          WTF::VectorTypeOperations<WebKit::OptionItem>::move(v30, (v30 + 16 * v29), v31);
        }
      }

      if (v30)
      {
        if (v48 == v30)
        {
          v48 = 0;
          LODWORD(v49) = 0;
        }

        WTF::fastFree(v30, v7);
      }
    }
  }

  else if (v12)
  {
    v13 = WTF::fastMalloc((16 * v12));
    LODWORD(v49) = v12;
    v48 = v13;
    do
    {
      IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>>(&v39, a1);
      v14 = v41;
      if (v41)
      {
        if (HIDWORD(v49) == v49)
        {
          v15 = WTF::Vector<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v48, HIDWORD(v49) + 1, &v39);
          v16 = (v48 + 16 * HIDWORD(v49));
          v17 = *v15;
          *v15 = 0;
          v18 = v15 + 1;
          *v16 = v17;
        }

        else
        {
          v19 = v39;
          v16 = (v48 + 16 * HIDWORD(v49));
          v39 = 0;
          *v16 = v19;
          v18 = &v40;
        }

        v16[1] = *v18;
        ++HIDWORD(v49);
      }

      if (v41 == 1 && (v20 = v39, v39 = 0, v20) && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v7);
        if ((v14 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if ((v14 & 1) == 0)
      {
        goto LABEL_22;
      }

      --v12;
    }

    while (v12);
  }

  *&v42 = v48;
  v32 = v49;
  v48 = 0;
  v49 = 0;
  *(&v42 + 1) = v32;
  v43 = 1;
  result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v7);
LABEL_47:
  if (*a1)
  {
    if (v47)
    {
      v33 = v46;
      v46 = 0;
      if (v45)
      {
        v34 = v44;
        v44 = 0;
        if (v43)
        {
          *&v4 = 0;
          v35 = v42;
          v42 = v4;
          v39 = 0;
          v40 = 0;
          *a2 = v33;
          *(a2 + 8) = v34;
          v41 = v4;
          *(a2 + 16) = v35;
          *(a2 + 32) = 1;
          WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v21);
          v36 = v40;
          v40 = 0;
          if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v36, v21);
          }

          result = v39;
          v39 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v21);
          }

          goto LABEL_57;
        }
      }
    }

LABEL_78:
    __break(1u);
    return result;
  }

  *a2 = 0;
  *(a2 + 32) = 0;
LABEL_57:
  if (v43 == 1)
  {
    result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v21);
  }

  if (v45 == 1)
  {
    result = v44;
    v44 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v21);
      }
    }
  }

  if (v47 == 1)
  {
    result = v46;
    v46 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }
  }

  return result;
}

void sub_19D7A9044(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, WTF::StringImpl *a19, char a20)
{
  if ((a18 & 1) != 0 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a20 == 1 && a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::TextureDescriptor,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  v5 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(a1, a2 + 8, v5);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 36));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 41));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 42));
  return IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 48);
}

void *IPC::ArgumentCoder<WebKit::WebGPU::TextureDescriptor,void>::encode(mpark *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(a1, a2 + 8);
  v4 = -*a1;
  v5 = v4 & 3 | 4;
  if (*(a1 + 1) < v5)
  {
    goto LABEL_16;
  }

  *(*a1 + (v4 & 3)) = *(a2 + 32);
  v6 = *(a1 + 1);
  v7 = v6 - v5;
  if (v6 < v5)
  {
    goto LABEL_15;
  }

  v8 = *a1 + v5;
  *a1 = v8;
  *(a1 + 1) = v7;
  v9 = -v8 & 3 | 4;
  if (v7 >= v9)
  {
    *(v8 + (-v8 & 3)) = *(a2 + 36);
    v10 = *(a1 + 1);
    v12 = v10 - v9;
    v11 = v10 == v9;
    if (v10 < v9)
    {
      goto LABEL_15;
    }

    v13 = (*a1 + v9);
    *a1 = v13;
    *(a1 + 1) = v12;
    if (v11)
    {
      goto LABEL_16;
    }

    *v13 = *(a2 + 40);
    v14 = *(a1 + 1);
    if (!v14)
    {
      goto LABEL_15;
    }

    v15 = v14 - 1;
    v11 = v14 == 1;
    v16 = (*a1 + 1);
    *a1 = v16;
    *(a1 + 1) = v15;
    if (v11)
    {
      goto LABEL_16;
    }

    *v16 = *(a2 + 41);
    v17 = *(a1 + 1);
    if (!v17)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v18 = v17 - 1;
    v11 = v17 == 1;
    v19 = (*a1 + 1);
    *a1 = v19;
    *(a1 + 1) = v18;
    if (!v11)
    {
      *v19 = *(a2 + 42);
      v20 = *(a1 + 1);
      if (v20)
      {
        ++*a1;
        *(a1 + 1) = v20 - 1;
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  *a1 = 0;
  *(a1 + 1) = 0;
LABEL_12:

  return IPC::VectorArgumentCoder<false,WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 48);
}

WTF *IPC::ArgumentCoder<WebKit::WebGPU::TextureDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v47);
  IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>>(a1, &v43);
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
  }

  else
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
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v28 = *(a1 + 3);
  if (!v28)
  {
    v12 = 0;
    v4 = 0;
LABEL_50:
    v6 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_50;
  }

  (*(*v28 + 16))(v28);
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
    v29 = *(a1 + 3);
    if (v29)
    {
      if (v4)
      {
        (*(*v29 + 16))(v29, v12);
        v12 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_54;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

LABEL_54:
  *a1 = 0;
  *(a1 + 1) = 0;
  v30 = *(a1 + 3);
  if (!v30)
  {
    v6 = 0;
    v15 = 0;
    v4 = 0;
    goto LABEL_56;
  }

  if (!v4)
  {
    v6 = 0;
    v15 = 0;
    goto LABEL_56;
  }

  (*(*v30 + 16))(v30, v12);
  v15 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
LABEL_15:
  v16 = *(a1 + 2);
  if (v4 > &v16[-v6])
  {
    *(a1 + 2) = v16 + 1;
    if (v16)
    {
      v17 = *v16;
      if (v17 < 3)
      {
        v18 = v17 | 0x100;
        goto LABEL_19;
      }

      goto LABEL_62;
    }

    goto LABEL_59;
  }

LABEL_56:
  *a1 = 0;
  *(a1 + 1) = 0;
  v31 = *(a1 + 3);
  if (v31)
  {
    if (v4)
    {
      (*(*v31 + 16))(v31, v6);
      v6 = *a1;
      v4 = *(a1 + 1);
      goto LABEL_59;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_59:
  *a1 = 0;
  *(a1 + 1) = 0;
  v32 = *(a1 + 3);
  if (!v32)
  {
    v4 = 0;
LABEL_61:
    v6 = 0;
    goto LABEL_62;
  }

  if (!v4)
  {
    goto LABEL_61;
  }

  (*(*v32 + 16))(v32, v6);
  v6 = *a1;
  v4 = *(a1 + 1);
LABEL_62:
  *a1 = 0;
  *(a1 + 1) = 0;
  v33 = *(a1 + 3);
  if (v33 && v4)
  {
    (*(*v33 + 16))(v33, v6);
  }

  v18 = 0;
LABEL_19:
  v19 = IPC::Decoder::decode<WebCore::WebGPU::TextureFormat>(a1);
  v20 = IPC::Decoder::decode<WTF::OptionSet<WebCore::WebGPU::TextureUsage>>(a1);
  result = IPC::Decoder::decode<WTF::Vector<WebCore::WebGPU::TextureFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v41, a1);
  if (!*a1)
  {
    goto LABEL_44;
  }

  if ((v48 & 1) == 0 || (v23 = v47, v47 = 0, v34 = v23, (v46 & 1) == 0) || (result = mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>,(mpark::detail::Trait)1>::move_constructor(&v35, &v43), (v11 & 0x100000000) == 0) || (*v38 = v11, (v15 & 0x100000000) == 0) || (*&v38[4] = v15, v18 <= 0xFF) || (v38[8] = v18, (v19 & 0x100) == 0) || (v38[9] = v19, (v20 & 0x100) == 0) || (v38[10] = v20, (v42 & 1) == 0))
  {
    __break(1u);
LABEL_44:
    *a2 = 0;
    *(a2 + 64) = 0;
    if ((v42 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v24 = v41[0];
  v41[0] = 0;
  v40 = v41[1];
  v39 = v24;
  *a2 = v34;
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>,(mpark::detail::Trait)1>::move_constructor(a2 + 8, &v35);
  *(a2 + 32) = *v38;
  *(a2 + 39) = *&v38[7];
  *(a2 + 48) = v39;
  v25 = v40;
  v39 = 0;
  v40 = 0;
  *(a2 + 56) = v25;
  *(a2 + 64) = 1;
  if (!v37)
  {
    v26 = v35;
    if (v35)
    {
      v35 = 0;
      v36 = 0;
      WTF::fastFree(v26, v22);
    }
  }

  v37 = -1;
LABEL_32:
  result = v41[0];
  if (v41[0])
  {
    result = WTF::fastFree(v41[0], v22);
  }

LABEL_34:
  if (v46 == 1 && !v45)
  {
    result = v43;
    if (v43)
    {
      v43 = 0;
      v44 = 0;
      result = WTF::fastFree(result, v22);
    }
  }

  if (v48 == 1)
  {
    result = v47;
    v47 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v22);
      }
    }
  }

  return result;
}

void sub_19D7A977C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF *a11, int a12, int a13, char a14, uint64_t a15, uint64_t a16, WTF *a17, int a18, WTF *a19, uint64_t a20, char a21, WTF *a22, int a23, int a24, char a25, int a26, __int16 a27, char a28, char a29)
{
  if (a27 == 1 && !a25 && a22)
  {
    WTF::fastFree(a22, a2);
  }

  if (*(v29 - 72) == 1)
  {
    v31 = *(v29 - 80);
    *(v29 - 80) = 0;
    if (v31)
    {
      if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[24] & 1) == 0)
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

void sub_19D7A990C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 24) == 1)
  {
    if (!*(v2 + 16))
    {
      v4 = *v2;
      if (*v2)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
        WTF::fastFree(v4, a2);
      }
    }

    *(v2 + 16) = -1;
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::WebGPU::TextureUsage>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WTF::OptionSet<WebCore::WebGPU::TextureUsage>,void>::decode<IPC::Decoder>(a1);
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

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::WebGPU::TextureFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v20 = a2[3];
    if (v20)
    {
      if (v6)
      {
        (*(*v20 + 16))(v20);
        v5 = *a2;
        v6 = a2[1];
LABEL_34:
        *a2 = 0;
        a2[1] = 0;
        v21 = a2[3];
        if (v21 && v6)
        {
          (*(*v21 + 16))(v21, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_36:
        v22 = *a2;
        v23 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v23)
          {
            return (*(*result + 16))(result, v22);
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
    goto LABEL_34;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_34;
  }

  v8 = *v4;
  v25 = 0;
  v26 = 0;
  if (v8 >= 0x100000)
  {
    v15 = 0;
    LODWORD(v16) = 0;
    while (1)
    {
      v17 = IPC::Decoder::decode<WebCore::WebGPU::TextureFormat>(a2);
      v24 = v17;
      if ((v17 & 0x100) == 0)
      {
        break;
      }

      if (v16 == v26)
      {
        v18 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v25, v16 + 1, &v24);
        LODWORD(v16) = HIDWORD(v26);
        v15 = v25;
        *(v25 + HIDWORD(v26)) = *v18;
      }

      else
      {
        *(v15 + v16) = v17;
      }

      v16 = (v16 + 1);
      HIDWORD(v26) = v16;
      v8 = (v8 - 1);
      if (!v8)
      {
        if (v26 > v16)
        {
          if (v16)
          {
            LODWORD(v26) = v16;
            v25 = WTF::fastRealloc(v15, v16);
          }

          else
          {
            v25 = 0;
            LODWORD(v26) = 0;
            WTF::fastFree(v15, v5);
          }
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!v8)
    {
LABEL_15:
      v13 = v25;
      v25 = 0;
      *a1 = v13;
      *(a1 + 8) = v26;
      v14 = 1;
      *(a1 + 16) = 1;
      goto LABEL_26;
    }

    v9 = WTF::fastMalloc(v8);
    v10 = 0;
    LODWORD(v26) = v8;
    v25 = v9;
    while (1)
    {
      v11 = IPC::Decoder::decode<WebCore::WebGPU::TextureFormat>(a2);
      v24 = v11;
      if ((v11 & 0x100) == 0)
      {
        break;
      }

      if (v10 == v26)
      {
        v12 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v25, v10 + 1, &v24);
        v10 = HIDWORD(v26);
        v9 = v25;
        *(v25 + HIDWORD(v26)) = *v12;
      }

      else
      {
        *(v9 + v10) = v11;
      }

      HIDWORD(v26) = ++v10;
      v8 = (v8 - 1);
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  v14 = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_26:
  result = v25;
  if (v25)
  {
    result = WTF::fastFree(v25, v5);
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_36;
  }

  return result;
}

void sub_19D7A9C48(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::TextureViewDescriptor,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 10));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 20);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 28));

  return IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 32);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::TextureViewDescriptor,void>::encode(uint64_t *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, (a2 + 10));
  if (!a1[1])
  {
    goto LABEL_15;
  }

  **a1 = *(a2 + 12);
  v4 = a1[1];
  if (v4)
  {
    v5 = v4 - 1;
    v6 = *a1 + 1;
    *a1 = v6;
    a1[1] = v5;
    v7 = -v6 & 3 | 4;
    if (v5 < v7)
    {
      goto LABEL_15;
    }

    *(v6 + (-v6 & 3)) = *(a2 + 16);
    v8 = a1[1];
    v9 = v8 >= v7;
    v10 = v8 - v7;
    if (v9)
    {
      *a1 += v7;
      a1[1] = v10;
      goto LABEL_7;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_15:
    *a1 = 0;
    a1[1] = 0;
LABEL_7:
    IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(a1, a2 + 20);
    v11 = -*a1;
    v12 = v11 & 3 | 4;
    if (a1[1] < v12)
    {
      break;
    }

    *(*a1 + (v11 & 3)) = *(a2 + 28);
    v13 = a1[1];
    v9 = v13 >= v12;
    v14 = v13 - v12;
    if (v9)
    {
      *a1 += v12;
      a1[1] = v14;
      goto LABEL_11;
    }
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_11:

  return IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(a1, a2 + 32);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebGPU::TextureViewDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v40);
  v39 = IPC::Decoder::decode<std::optional<WebCore::WebGPU::TextureFormat>>(a1);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33)
    {
      if (v4)
      {
        (*(*v33 + 16))(v33);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_47:
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34)
    {
      if (v4)
      {
        (*(*v34 + 16))(v34);
        v6 = *a1;
        v4 = *(a1 + 1);
LABEL_50:
        *a1 = 0;
        *(a1 + 1) = 0;
        v35 = *(a1 + 3);
        if (v35 && v4)
        {
          (*(*v35 + 16))(v35, v6);
        }

        v10 = 0;
        v9 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_50;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_47;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_50;
  }

  if (!v7)
  {
    v10 = 0;
    v9 = 0;
    v11 = 0x10000;
    goto LABEL_11;
  }

  Failure = IPC::Decoder::decode<WebCore::BackgroundFetchFailureReason>(a1);
  if ((Failure & 0xFF00) != 0)
  {
    v9 = Failure;
  }

  else
  {
    v9 = 0;
  }

  v10 = 256;
  if (Failure > 0xFFu)
  {
    v11 = (Failure << 8) & 0xFF0000;
    goto LABEL_11;
  }

LABEL_52:
  v36 = *a1;
  v37 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v38 = *(a1 + 3);
  if (v38 && v37)
  {
    (*(*v38 + 16))(v38, v36);
  }

  v11 = 0;
LABEL_11:
  v12 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v13 = *(a1 + 1);
  v14 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = v14 - *a1;
  v16 = v13 >= v15;
  v17 = v13 - v15;
  if (v16 && v17 > 3)
  {
    *(a1 + 2) = v14 + 1;
    if (v14)
    {
      v18 = *v14 | 0x100000000;
      goto LABEL_16;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (v29)
    {
      if (v13)
      {
        (*(*v29 + 16))(v29);
        v13 = *(a1 + 1);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v30 = *(a1 + 3);
  if (v30 && v13)
  {
    (*(*v30 + 16))(v30);
  }

  v18 = 0;
LABEL_16:
  v19 = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  v21 = v20;
  v22 = *(a1 + 1);
  v23 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v24 = v23 - *a1;
  v16 = v22 >= v24;
  v25 = v22 - v24;
  if (v16 && v25 > 3)
  {
    *(a1 + 2) = v23 + 1;
    if (v23)
    {
      v26 = *v23 | 0x100000000;
      goto LABEL_21;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = *(a1 + 3);
    if (v31)
    {
      if (v22)
      {
        (*(*v31 + 16))(v31);
        v22 = *(a1 + 1);
      }
    }

    else
    {
      v22 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v32 = *(a1 + 3);
  if (v32 && v22)
  {
    (*(*v32 + 16))(v32);
  }

  v26 = 0;
LABEL_21:
  result = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  if (*a1)
  {
    if (v41 & 1) != 0 && (v39 & 0x10000) != 0 && (v9 | v10 | v11) >> 16 && v12 > 0xFFu && (v18 & 0x100000000) != 0 && (v21 & 1) != 0 && (v26 & 0x100000000) != 0 && (v28)
    {
      *a2 = v40;
      *(a2 + 8) = v39;
      *(a2 + 10) = v9 | v10;
      *(a2 + 12) = v12;
      *(a2 + 16) = v18;
      *(a2 + 20) = v19;
      *(a2 + 24) = BYTE4(v19);
      *(a2 + 28) = v26;
      *(a2 + 32) = result;
      *(a2 + 36) = BYTE4(result);
      *(a2 + 40) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 40) = 0;
  if (v41)
  {
    result = v40;
    v40 = 0;
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

void sub_19D7AA22C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::VertexState,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = (a2 + 5);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, (a2 + 1));
  IPC::VectorArgumentCoder<false,WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 3);

  return IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v4);
}

WTF *IPC::ArgumentCoder<WebKit::WebGPU::VertexState,void>::encode(WTF *a1, void *a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::String> const&>(a1, (a2 + 1));
  IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 3));

  return IPC::VectorArgumentCoder<false,std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 5));
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::VertexBufferLayout,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));

  return IPC::VectorArgumentCoder<false,WebKit::WebGPU::VertexAttribute,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebGPU::VertexAttribute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 16);
}

uint64_t std::optional<WebKit::WebGPU::VertexBufferLayout>::optional[abi:sn200100]<WebKit::WebGPU::VertexBufferLayout,0>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
  *(a1 + 32) = 1;
  return a1;
}

void sub_19D7AA3E0(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v6, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::VertexAttribute,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::TextureBindingLayout,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[1]);

  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 2);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::SupportedLimits,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 28));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 36));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 44));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 52));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 76));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 100));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 104));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 108));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 112));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 116));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 120));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 124));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 128));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 132));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 136));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 140));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 144));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 148));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 152));
  v4 = *(a2 + 156);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::SupportedLimits,void>::encode(uint64_t a1, uint64_t a2)
{
  v4 = -*a1;
  v5 = v4 & 3 | 4;
  if (*(a1 + 8) < v5)
  {
    goto LABEL_74;
  }

  *(*a1 + (v4 & 3)) = *a2;
  v6 = *(a1 + 8);
  v7 = v6 - v5;
  if (v6 >= v5)
  {
    v8 = *a1 + v5;
    *a1 = v8;
    *(a1 + 8) = v7;
    v9 = -v8 & 3 | 4;
    if (v7 < v9)
    {
      goto LABEL_74;
    }

    *(v8 + (-v8 & 3)) = *(a2 + 4);
    v10 = *(a1 + 8);
    v11 = v10 - v9;
    if (v10 >= v9)
    {
      v12 = *a1 + v9;
      *a1 = v12;
      *(a1 + 8) = v11;
      v13 = -v12 & 3 | 4;
      if (v11 < v13)
      {
        goto LABEL_74;
      }

      *(v12 + (-v12 & 3)) = *(a2 + 8);
      v14 = *(a1 + 8);
      v15 = v14 - v13;
      if (v14 >= v13)
      {
        v16 = *a1 + v13;
        *a1 = v16;
        *(a1 + 8) = v15;
        v17 = -v16 & 3 | 4;
        if (v15 < v17)
        {
          goto LABEL_74;
        }

        *(v16 + (-v16 & 3)) = *(a2 + 12);
        v18 = *(a1 + 8);
        v19 = v18 - v17;
        if (v18 >= v17)
        {
          v20 = *a1 + v17;
          *a1 = v20;
          *(a1 + 8) = v19;
          v21 = -v20 & 3 | 4;
          if (v19 < v21)
          {
            goto LABEL_74;
          }

          *(v20 + (-v20 & 3)) = *(a2 + 16);
          v22 = *(a1 + 8);
          v23 = v22 - v21;
          if (v22 >= v21)
          {
            v24 = *a1 + v21;
            *a1 = v24;
            *(a1 + 8) = v23;
            v25 = -v24 & 3 | 4;
            if (v23 < v25)
            {
              goto LABEL_74;
            }

            *(v24 + (-v24 & 3)) = *(a2 + 20);
            v26 = *(a1 + 8);
            v27 = v26 - v25;
            if (v26 >= v25)
            {
              v28 = *a1 + v25;
              *a1 = v28;
              *(a1 + 8) = v27;
              v29 = -v28 & 3 | 4;
              if (v27 < v29)
              {
                goto LABEL_74;
              }

              *(v28 + (-v28 & 3)) = *(a2 + 24);
              v30 = *(a1 + 8);
              v31 = v30 - v29;
              if (v30 >= v29)
              {
                v32 = *a1 + v29;
                *a1 = v32;
                *(a1 + 8) = v31;
                v33 = -v32 & 3 | 4;
                if (v31 < v33)
                {
                  goto LABEL_74;
                }

                *(v32 + (-v32 & 3)) = *(a2 + 28);
                v34 = *(a1 + 8);
                v35 = v34 - v33;
                if (v34 >= v33)
                {
                  v36 = *a1 + v33;
                  *a1 = v36;
                  *(a1 + 8) = v35;
                  v37 = -v36 & 3 | 4;
                  if (v35 < v37)
                  {
                    goto LABEL_74;
                  }

                  *(v36 + (-v36 & 3)) = *(a2 + 32);
                  v38 = *(a1 + 8);
                  v39 = v38 - v37;
                  if (v38 >= v37)
                  {
                    v40 = *a1 + v37;
                    *a1 = v40;
                    *(a1 + 8) = v39;
                    v41 = -v40 & 3 | 4;
                    if (v39 < v41)
                    {
                      goto LABEL_74;
                    }

                    *(v40 + (-v40 & 3)) = *(a2 + 36);
                    v42 = *(a1 + 8);
                    v43 = v42 - v41;
                    if (v42 >= v41)
                    {
                      v44 = *a1 + v41;
                      *a1 = v44;
                      *(a1 + 8) = v43;
                      v45 = -v44 & 3 | 4;
                      if (v43 < v45)
                      {
                        goto LABEL_74;
                      }

                      *(v44 + (-v44 & 3)) = *(a2 + 40);
                      v46 = *(a1 + 8);
                      v47 = v46 - v45;
                      if (v46 >= v45)
                      {
                        v48 = *a1 + v45;
                        *a1 = v48;
                        *(a1 + 8) = v47;
                        v49 = -v48 & 3 | 4;
                        if (v47 < v49)
                        {
                          goto LABEL_74;
                        }

                        *(v48 + (-v48 & 3)) = *(a2 + 44);
                        v50 = *(a1 + 8);
                        v51 = v50 - v49;
                        if (v50 >= v49)
                        {
                          v52 = *a1 + v49;
                          *a1 = v52;
                          *(a1 + 8) = v51;
                          v53 = -v52 & 3 | 4;
                          if (v51 < v53)
                          {
                            goto LABEL_74;
                          }

                          *(v52 + (-v52 & 3)) = *(a2 + 48);
                          v54 = *(a1 + 8);
                          v55 = v54 - v53;
                          if (v54 >= v53)
                          {
                            v56 = *a1 + v53;
                            *a1 = v56;
                            *(a1 + 8) = v55;
                            v57 = -v56 & 3 | 4;
                            if (v55 < v57)
                            {
                              goto LABEL_74;
                            }

                            *(v56 + (-v56 & 3)) = *(a2 + 52);
                            v58 = *(a1 + 8);
                            v59 = v58 >= v57;
                            v60 = v58 - v57;
                            if (v59)
                            {
                              *a1 += v57;
                              *(a1 + 8) = v60;
                              goto LABEL_31;
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

  while (1)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          __break(1u);
LABEL_74:
          *a1 = 0;
          *(a1 + 8) = 0;
LABEL_31:
          IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, (a2 + 56));
          IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, (a2 + 64));
          v61 = -*a1;
          v62 = v61 & 3 | 4;
          if (*(a1 + 8) < v62)
          {
            goto LABEL_76;
          }

          *(*a1 + (v61 & 3)) = *(a2 + 72);
          v63 = *(a1 + 8);
          v64 = v63 - v62;
        }

        while (v63 < v62);
        v65 = *a1 + v62;
        *a1 = v65;
        *(a1 + 8) = v64;
        v66 = -v65 & 3 | 4;
        if (v64 < v66)
        {
          break;
        }

        *(v65 + (-v65 & 3)) = *(a2 + 76);
        v67 = *(a1 + 8);
        v68 = v67 - v66;
        if (v67 >= v66)
        {
          v69 = *a1 + v66;
          *a1 = v69;
          *(a1 + 8) = v68;
          v70 = -v69 & 3 | 4;
          if (v68 < v70)
          {
            break;
          }

          *(v69 + (-v69 & 3)) = *(a2 + 80);
          v71 = *(a1 + 8);
          v59 = v71 >= v70;
          v72 = v71 - v70;
          if (v59)
          {
            *a1 += v70;
            *(a1 + 8) = v72;
            goto LABEL_39;
          }
        }
      }

LABEL_76:
      *a1 = 0;
      *(a1 + 8) = 0;
LABEL_39:
      result = IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, (a2 + 88));
      v74 = -*a1;
      v75 = v74 & 3 | 4;
      if (*(a1 + 8) < v75)
      {
        goto LABEL_75;
      }

      *(*a1 + (v74 & 3)) = *(a2 + 96);
      v76 = *(a1 + 8);
      v77 = v76 - v75;
      if (v76 >= v75)
      {
        v78 = *a1 + v75;
        *a1 = v78;
        *(a1 + 8) = v77;
        v79 = -v78 & 3 | 4;
        if (v77 < v79)
        {
          goto LABEL_75;
        }

        *(v78 + (-v78 & 3)) = *(a2 + 100);
        v80 = *(a1 + 8);
        v81 = v80 - v79;
        if (v80 >= v79)
        {
          v82 = *a1 + v79;
          *a1 = v82;
          *(a1 + 8) = v81;
          v83 = -v82 & 3 | 4;
          if (v81 < v83)
          {
            goto LABEL_75;
          }

          *(v82 + (-v82 & 3)) = *(a2 + 104);
          v84 = *(a1 + 8);
          v85 = v84 - v83;
          if (v84 >= v83)
          {
            v86 = *a1 + v83;
            *a1 = v86;
            *(a1 + 8) = v85;
            v87 = -v86 & 3 | 4;
            if (v85 < v87)
            {
              goto LABEL_75;
            }

            *(v86 + (-v86 & 3)) = *(a2 + 108);
            v88 = *(a1 + 8);
            v89 = v88 - v87;
            if (v88 >= v87)
            {
              v90 = *a1 + v87;
              *a1 = v90;
              *(a1 + 8) = v89;
              v91 = -v90 & 3 | 4;
              if (v89 < v91)
              {
                goto LABEL_75;
              }

              *(v90 + (-v90 & 3)) = *(a2 + 112);
              v92 = *(a1 + 8);
              v93 = v92 - v91;
              if (v92 >= v91)
              {
                v94 = *a1 + v91;
                *a1 = v94;
                *(a1 + 8) = v93;
                v95 = -v94 & 3 | 4;
                if (v93 < v95)
                {
                  goto LABEL_75;
                }

                *(v94 + (-v94 & 3)) = *(a2 + 116);
                v96 = *(a1 + 8);
                v97 = v96 - v95;
                if (v96 >= v95)
                {
                  v98 = *a1 + v95;
                  *a1 = v98;
                  *(a1 + 8) = v97;
                  v99 = -v98 & 3 | 4;
                  if (v97 < v99)
                  {
                    goto LABEL_75;
                  }

                  *(v98 + (-v98 & 3)) = *(a2 + 120);
                  v100 = *(a1 + 8);
                  v101 = v100 - v99;
                  if (v100 >= v99)
                  {
                    v102 = *a1 + v99;
                    *a1 = v102;
                    *(a1 + 8) = v101;
                    v103 = -v102 & 3 | 4;
                    if (v101 < v103)
                    {
                      goto LABEL_75;
                    }

                    *(v102 + (-v102 & 3)) = *(a2 + 124);
                    v104 = *(a1 + 8);
                    v105 = v104 - v103;
                    if (v104 >= v103)
                    {
                      v106 = *a1 + v103;
                      *a1 = v106;
                      *(a1 + 8) = v105;
                      v107 = -v106 & 3 | 4;
                      if (v105 < v107)
                      {
                        goto LABEL_75;
                      }

                      *(v106 + (-v106 & 3)) = *(a2 + 128);
                      v108 = *(a1 + 8);
                      v109 = v108 - v107;
                      if (v108 >= v107)
                      {
                        v110 = *a1 + v107;
                        *a1 = v110;
                        *(a1 + 8) = v109;
                        v111 = -v110 & 3 | 4;
                        if (v109 < v111)
                        {
                          goto LABEL_75;
                        }

                        *(v110 + (-v110 & 3)) = *(a2 + 132);
                        v112 = *(a1 + 8);
                        v113 = v112 - v111;
                        if (v112 >= v111)
                        {
                          v114 = *a1 + v111;
                          *a1 = v114;
                          *(a1 + 8) = v113;
                          v115 = -v114 & 3 | 4;
                          if (v113 < v115)
                          {
                            goto LABEL_75;
                          }

                          *(v114 + (-v114 & 3)) = *(a2 + 136);
                          v116 = *(a1 + 8);
                          v117 = v116 - v115;
                          if (v116 >= v115)
                          {
                            v118 = *a1 + v115;
                            *a1 = v118;
                            *(a1 + 8) = v117;
                            v119 = -v118 & 3 | 4;
                            if (v117 < v119)
                            {
                              goto LABEL_75;
                            }

                            *(v118 + (-v118 & 3)) = *(a2 + 140);
                            v120 = *(a1 + 8);
                            v121 = v120 - v119;
                            if (v120 >= v119)
                            {
                              v122 = *a1 + v119;
                              *a1 = v122;
                              *(a1 + 8) = v121;
                              v123 = -v122 & 3 | 4;
                              if (v121 < v123)
                              {
                                goto LABEL_75;
                              }

                              *(v122 + (-v122 & 3)) = *(a2 + 144);
                              v124 = *(a1 + 8);
                              v125 = v124 - v123;
                              if (v124 >= v123)
                              {
                                v126 = *a1 + v123;
                                *a1 = v126;
                                *(a1 + 8) = v125;
                                v127 = -v126 & 3 | 4;
                                if (v125 < v127)
                                {
                                  goto LABEL_75;
                                }

                                *(v126 + (-v126 & 3)) = *(a2 + 148);
                                v128 = *(a1 + 8);
                                v129 = v128 - v127;
                                if (v128 >= v127)
                                {
                                  v130 = *a1 + v127;
                                  *a1 = v130;
                                  *(a1 + 8) = v129;
                                  v131 = -v130 & 3 | 4;
                                  if (v129 < v131)
                                  {
                                    goto LABEL_75;
                                  }

                                  *(v130 + (-v130 & 3)) = *(a2 + 152);
                                  v132 = *(a1 + 8);
                                  v133 = v132 - v131;
                                  if (v132 >= v131)
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
                }
              }
            }
          }
        }
      }
    }

    v134 = *a1 + v131;
    *a1 = v134;
    *(a1 + 8) = v133;
    v135 = -v134 & 3 | 4;
    if (v133 < v135)
    {
      break;
    }

    *(v134 + (-v134 & 3)) = *(a2 + 156);
    v136 = *(a1 + 8);
    v59 = v136 >= v135;
    v137 = v136 - v135;
    if (v59)
    {
      *a1 += v135;
      *(a1 + 8) = v137;
      return result;
    }
  }

LABEL_75:
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

void *IPC::ArgumentCoder<WebKit::WebGPU::SupportedLimits,void>::decode@<X0>(void *result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v5 = result[1];
  v6 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *result;
  v8 = v6 - *result;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (v9 && v10 > 3)
  {
    result[2] = v6 + 1;
    if (v6)
    {
      v715 = *v6 | 0x100000000;
      v12 = v7;
      goto LABEL_8;
    }

    v115 = result;
    v114 = a5;
  }

  else
  {
    v114 = a5;
    *result = 0;
    result[1] = 0;
    v115 = result;
    v116 = result[3];
    if (!v116)
    {
      v5 = 0;
LABEL_216:
      v7 = 0;
      goto LABEL_217;
    }

    if (!v5)
    {
      goto LABEL_216;
    }

    (*(*v116 + 16))(v116, v7);
    v7 = *v115;
    v5 = v115[1];
  }

LABEL_217:
  *v115 = 0;
  v115[1] = 0;
  v117 = v115[3];
  if (!v117)
  {
    v12 = 0;
    v5 = 0;
LABEL_219:
    v7 = 0;
    v715 = 0;
    a5 = v114;
    result = v115;
    goto LABEL_8;
  }

  if (!v5)
  {
    v12 = 0;
    goto LABEL_219;
  }

  (*(*v117 + 16))(v117, v7);
  v715 = 0;
  result = v115;
  v12 = *v115;
  v5 = v115[1];
  v7 = *v115;
  a5 = v114;
LABEL_8:
  v13 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 >= v13 - v7 && v5 - (v13 - v7) > 3)
  {
    result[2] = v13 + 1;
    if (v13)
    {
      v714 = *v13 | 0x100000000;
      goto LABEL_15;
    }

    v118 = v715;
    v120 = result;
    v119 = a5;
  }

  else
  {
    v118 = v715;
    v119 = a5;
    *result = 0;
    result[1] = 0;
    v120 = result;
    v121 = result[3];
    if (v121)
    {
      if (v5)
      {
        (*(*v121 + 16))(v121, v12);
        v12 = *v120;
        v5 = v120[1];
        goto LABEL_223;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
  }

LABEL_223:
  *v120 = 0;
  v120[1] = 0;
  v122 = v120[3];
  v715 = v118;
  if (v122)
  {
    if (v5)
    {
      (*(*v122 + 16))(v122, v12);
      v714 = 0;
      result = v120;
      v12 = *v120;
      v5 = v120[1];
      v7 = *v120;
      a5 = v119;
      goto LABEL_15;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v5 = 0;
  }

  v7 = 0;
  v714 = 0;
  a5 = v119;
  result = v120;
LABEL_15:
  v15 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v15 - v7 || v5 - (v15 - v7) <= 3)
  {
    v123 = v714;
    v124 = v715;
    v125 = a5;
    *result = 0;
    result[1] = 0;
    v126 = result;
    v127 = result[3];
    if (v127)
    {
      if (v5)
      {
        (*(*v127 + 16))(v127, v12);
        v12 = *v126;
        v5 = v126[1];
        goto LABEL_229;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
  }

  else
  {
    result[2] = v15 + 1;
    if (v15)
    {
      v16 = *v15 | 0x100000000;
      goto LABEL_19;
    }

    v123 = v714;
    v124 = v715;
    v126 = result;
    v125 = a5;
  }

LABEL_229:
  *v126 = 0;
  v126[1] = 0;
  v128 = v126[3];
  v714 = v123;
  v715 = v124;
  if (v128)
  {
    if (v5)
    {
      (*(*v128 + 16))(v128, v12);
      v16 = 0;
      result = v126;
      v12 = *v126;
      v5 = v126[1];
      v7 = *v126;
      a5 = v125;
      goto LABEL_19;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v5 = 0;
  }

  v7 = 0;
  v16 = 0;
  a5 = v125;
  result = v126;
LABEL_19:
  v17 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v17 - v7 || v5 - (v17 - v7) <= 3)
  {
    v129 = v16;
    v130 = v714;
    v131 = v715;
    v132 = a5;
    *result = 0;
    result[1] = 0;
    v133 = result;
    v134 = result[3];
    if (v134)
    {
      if (v5)
      {
        (*(*v134 + 16))(v134, v12);
        v12 = *v133;
        v5 = v133[1];
LABEL_235:
        *v133 = 0;
        v133[1] = 0;
        v135 = v133[3];
        v714 = v130;
        v715 = v131;
        if (v135)
        {
          if (v5)
          {
            (*(*v135 + 16))(v135, v12);
            v18 = 0;
            result = v133;
            v12 = *v133;
            v5 = v133[1];
            v7 = *v133;
            a5 = v132;
            goto LABEL_238;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          v5 = 0;
        }

        v7 = 0;
        v18 = 0;
        a5 = v132;
        result = v133;
LABEL_238:
        v16 = v129;
        goto LABEL_23;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    goto LABEL_235;
  }

  result[2] = v17 + 1;
  if (!v17)
  {
    v129 = v16;
    v130 = v714;
    v131 = v715;
    v133 = result;
    v132 = a5;
    goto LABEL_235;
  }

  v18 = *v17 | 0x100000000;
LABEL_23:
  v19 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v19 - v7 || v5 - (v19 - v7) <= 3)
  {
    v136 = v16;
    v137 = v714;
    v138 = v715;
    v139 = a5;
    *result = 0;
    result[1] = 0;
    v140 = result;
    v141 = result[3];
    if (v141)
    {
      if (v5)
      {
        (*(*v141 + 16))(v141, v12);
        v12 = *v140;
        v5 = v140[1];
LABEL_242:
        *v140 = 0;
        v140[1] = 0;
        v142 = v140[3];
        v714 = v137;
        v715 = v138;
        if (v142)
        {
          if (v5)
          {
            (*(*v142 + 16))(v142, v12);
            v717 = 0;
            result = v140;
            v12 = *v140;
            v5 = v140[1];
            v7 = *v140;
            a5 = v139;
            goto LABEL_245;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          v5 = 0;
        }

        v7 = 0;
        v717 = 0;
        a5 = v139;
        result = v140;
LABEL_245:
        v16 = v136;
        goto LABEL_27;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    goto LABEL_242;
  }

  result[2] = v19 + 1;
  if (!v19)
  {
    v136 = v16;
    v137 = v714;
    v138 = v715;
    v140 = result;
    v139 = a5;
    goto LABEL_242;
  }

  v717 = *v19 | 0x100000000;
LABEL_27:
  v20 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v20 - v7 || v5 - (v20 - v7) <= 3)
  {
    v143 = v717;
    v144 = v16;
    v145 = v714;
    v146 = v715;
    v147 = a5;
    *result = 0;
    result[1] = 0;
    v148 = result;
    v149 = result[3];
    if (v149)
    {
      if (v5)
      {
        (*(*v149 + 16))(v149, v12);
        v12 = *v148;
        v5 = v148[1];
LABEL_249:
        *v148 = 0;
        v148[1] = 0;
        v150 = v148[3];
        v717 = v143;
        v714 = v145;
        v715 = v146;
        if (v150)
        {
          if (v5)
          {
            (*(*v150 + 16))(v150, v12);
            v726 = 0;
            result = v148;
            v12 = *v148;
            v5 = v148[1];
            v7 = *v148;
            a5 = v147;
            goto LABEL_252;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          v5 = 0;
        }

        v7 = 0;
        v726 = 0;
        a5 = v147;
        result = v148;
LABEL_252:
        v16 = v144;
        goto LABEL_31;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    goto LABEL_249;
  }

  result[2] = v20 + 1;
  if (!v20)
  {
    v143 = v717;
    v144 = v16;
    v145 = v714;
    v146 = v715;
    v148 = result;
    v147 = a5;
    goto LABEL_249;
  }

  v726 = *v20 | 0x100000000;
LABEL_31:
  v21 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v21 - v7 || v5 - (v21 - v7) <= 3)
  {
    v151 = v726;
    v152 = v717;
    v153 = v16;
    v154 = v714;
    v155 = v715;
    v156 = a5;
    *result = 0;
    result[1] = 0;
    v157 = result;
    v158 = result[3];
    if (v158)
    {
      if (v5)
      {
        (*(*v158 + 16))(v158, v12);
        v12 = *v157;
        v5 = v157[1];
LABEL_256:
        *v157 = 0;
        v157[1] = 0;
        v159 = v157[3];
        v726 = v151;
        v717 = v152;
        v714 = v154;
        v715 = v155;
        if (v159)
        {
          if (v5)
          {
            (*(*v159 + 16))(v159, v12);
            v725 = 0;
            result = v157;
            v12 = *v157;
            v5 = v157[1];
            v7 = *v157;
            a5 = v156;
            goto LABEL_259;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          v5 = 0;
        }

        v7 = 0;
        v725 = 0;
        a5 = v156;
        result = v157;
LABEL_259:
        v16 = v153;
        goto LABEL_35;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    goto LABEL_256;
  }

  result[2] = v21 + 1;
  if (!v21)
  {
    v151 = v726;
    v152 = v717;
    v153 = v16;
    v154 = v714;
    v155 = v715;
    v157 = result;
    v156 = a5;
    goto LABEL_256;
  }

  v725 = *v21 | 0x100000000;
LABEL_35:
  v22 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v22 - v7 || v5 - (v22 - v7) <= 3)
  {
    v160 = v725;
    v161 = v726;
    v162 = v717;
    v163 = v16;
    v164 = v714;
    v165 = v715;
    v166 = a5;
    *result = 0;
    result[1] = 0;
    v167 = result;
    v168 = result[3];
    if (v168)
    {
      if (v5)
      {
        (*(*v168 + 16))(v168, v12);
        v12 = *v167;
        v5 = v167[1];
LABEL_263:
        *v167 = 0;
        v167[1] = 0;
        v169 = v167[3];
        v725 = v160;
        v726 = v161;
        v717 = v162;
        v714 = v164;
        v715 = v165;
        if (v169)
        {
          if (v5)
          {
            (*(*v169 + 16))(v169, v12);
            v724 = 0;
            result = v167;
            v12 = *v167;
            v5 = v167[1];
            v7 = *v167;
            a5 = v166;
            goto LABEL_266;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          v5 = 0;
        }

        v7 = 0;
        v724 = 0;
        a5 = v166;
        result = v167;
LABEL_266:
        v16 = v163;
        goto LABEL_39;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    goto LABEL_263;
  }

  result[2] = v22 + 1;
  if (!v22)
  {
    v160 = v725;
    v161 = v726;
    v162 = v717;
    v163 = v16;
    v164 = v714;
    v165 = v715;
    v167 = result;
    v166 = a5;
    goto LABEL_263;
  }

  v724 = *v22 | 0x100000000;
LABEL_39:
  v23 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v23 - v7 || v5 - (v23 - v7) <= 3)
  {
    v170 = v724;
    v171 = v725;
    v172 = v726;
    v173 = v717;
    v174 = v18;
    v175 = v16;
    v176 = v714;
    v177 = v715;
    v178 = a5;
    *result = 0;
    result[1] = 0;
    v179 = result;
    v180 = result[3];
    if (v180)
    {
      if (v5)
      {
        (*(*v180 + 16))(v180, v12);
        v12 = *v179;
        v5 = v179[1];
LABEL_270:
        *v179 = 0;
        v179[1] = 0;
        v181 = v179[3];
        v724 = v170;
        v725 = v171;
        v726 = v172;
        v717 = v173;
        v714 = v176;
        v715 = v177;
        if (v181)
        {
          if (v5)
          {
            (*(*v181 + 16))(v181, v12);
            v723 = 0;
            result = v179;
            v12 = *v179;
            v5 = v179[1];
            v7 = *v179;
            a5 = v178;
            goto LABEL_273;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          v5 = 0;
        }

        v7 = 0;
        v723 = 0;
        a5 = v178;
        result = v179;
LABEL_273:
        v16 = v175;
        v18 = v174;
        goto LABEL_43;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    goto LABEL_270;
  }

  result[2] = v23 + 1;
  if (!v23)
  {
    v170 = v724;
    v171 = v725;
    v172 = v726;
    v173 = v717;
    v174 = v18;
    v175 = v16;
    v176 = v714;
    v177 = v715;
    v179 = result;
    v178 = a5;
    goto LABEL_270;
  }

  v723 = *v23 | 0x100000000;
LABEL_43:
  v24 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v24 - v7 || v5 - (v24 - v7) <= 3)
  {
    v182 = v724;
    v183 = v725;
    v184 = v726;
    v185 = v717;
    v186 = v18;
    v187 = v16;
    v188 = v714;
    v189 = v715;
    v190 = a5;
    *result = 0;
    result[1] = 0;
    v191 = result;
    v192 = result[3];
    if (v192)
    {
      if (v5)
      {
        (*(*v192 + 16))(v192, v12);
        v12 = *v191;
        v5 = v191[1];
LABEL_277:
        *v191 = 0;
        v191[1] = 0;
        v193 = v191[3];
        v724 = v182;
        v725 = v183;
        v726 = v184;
        v717 = v185;
        v714 = v188;
        v715 = v189;
        if (v193)
        {
          if (v5)
          {
            (*(*v193 + 16))(v193, v12);
            v722 = 0;
            result = v191;
            v12 = *v191;
            v5 = v191[1];
            v7 = *v191;
            a5 = v190;
            goto LABEL_280;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          v5 = 0;
        }

        v7 = 0;
        v722 = 0;
        a5 = v190;
        result = v191;
LABEL_280:
        v16 = v187;
        v18 = v186;
        goto LABEL_47;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    goto LABEL_277;
  }

  result[2] = v24 + 1;
  if (!v24)
  {
    v182 = v724;
    v183 = v725;
    v184 = v726;
    v185 = v717;
    v186 = v18;
    v187 = v16;
    v188 = v714;
    v189 = v715;
    v191 = result;
    v190 = a5;
    goto LABEL_277;
  }

  v722 = *v24 | 0x100000000;
LABEL_47:
  v25 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v25 - v7 || v5 - (v25 - v7) <= 3)
  {
    v194 = v724;
    v195 = v725;
    v196 = v726;
    v197 = v717;
    v198 = v18;
    v199 = v16;
    v200 = v714;
    v201 = v715;
    v202 = a5;
    *result = 0;
    result[1] = 0;
    v203 = result;
    v204 = result[3];
    if (v204)
    {
      if (v5)
      {
        (*(*v204 + 16))(v204, v12);
        v12 = *v203;
        v5 = v203[1];
LABEL_284:
        *v203 = 0;
        v203[1] = 0;
        v205 = v203[3];
        v724 = v194;
        v725 = v195;
        v726 = v196;
        v717 = v197;
        v714 = v200;
        v715 = v201;
        if (v205)
        {
          if (v5)
          {
            (*(*v205 + 16))(v205, v12);
            v721 = 0;
            result = v203;
            v12 = *v203;
            v5 = v203[1];
            v7 = *v203;
            a5 = v202;
            goto LABEL_287;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          v5 = 0;
        }

        v7 = 0;
        v721 = 0;
        a5 = v202;
        result = v203;
LABEL_287:
        v16 = v199;
        v18 = v198;
        goto LABEL_51;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    goto LABEL_284;
  }

  result[2] = v25 + 1;
  if (!v25)
  {
    v194 = v724;
    v195 = v725;
    v196 = v726;
    v197 = v717;
    v198 = v18;
    v199 = v16;
    v200 = v714;
    v201 = v715;
    v203 = result;
    v202 = a5;
    goto LABEL_284;
  }

  v721 = *v25 | 0x100000000;
LABEL_51:
  v26 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v26 - v7 || v5 - (v26 - v7) <= 3)
  {
    v206 = v724;
    v207 = v725;
    v208 = v726;
    v209 = v717;
    v210 = v18;
    v211 = v16;
    v212 = v714;
    v213 = v715;
    v214 = a5;
    *result = 0;
    result[1] = 0;
    v215 = result;
    v216 = result[3];
    if (v216)
    {
      if (v5)
      {
        (*(*v216 + 16))(v216, v12);
        v12 = *v215;
        v5 = v215[1];
LABEL_291:
        *v215 = 0;
        v215[1] = 0;
        v217 = v215[3];
        v724 = v206;
        v725 = v207;
        v726 = v208;
        v717 = v209;
        v714 = v212;
        v715 = v213;
        if (v217)
        {
          if (v5)
          {
            (*(*v217 + 16))(v217, v12);
            v720 = 0;
            result = v215;
            v12 = *v215;
            v5 = v215[1];
            v7 = *v215;
            a5 = v214;
            goto LABEL_294;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          v5 = 0;
        }

        v7 = 0;
        v720 = 0;
        a5 = v214;
        result = v215;
LABEL_294:
        v16 = v211;
        v18 = v210;
        goto LABEL_55;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    goto LABEL_291;
  }

  result[2] = v26 + 1;
  if (!v26)
  {
    v206 = v724;
    v207 = v725;
    v208 = v726;
    v209 = v717;
    v210 = v18;
    v211 = v16;
    v212 = v714;
    v213 = v715;
    v215 = result;
    v214 = a5;
    goto LABEL_291;
  }

  v720 = *v26 | 0x100000000;
LABEL_55:
  v27 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v27 - v7 || v5 - (v27 - v7) <= 3)
  {
    v218 = v724;
    v219 = v725;
    v220 = v726;
    v221 = v717;
    v222 = v18;
    v223 = v16;
    v224 = v714;
    v225 = v715;
    v226 = a5;
    *result = 0;
    result[1] = 0;
    v227 = result;
    v228 = result[3];
    if (v228)
    {
      if (v5)
      {
        (*(*v228 + 16))(v228, v12);
        v12 = *v227;
        v5 = v227[1];
LABEL_298:
        *v227 = 0;
        v227[1] = 0;
        v229 = v227[3];
        v724 = v218;
        v725 = v219;
        v726 = v220;
        v717 = v221;
        v714 = v224;
        v715 = v225;
        if (v229)
        {
          if (v5)
          {
            (*(*v229 + 16))(v229, v12);
            v719 = 0;
            result = v227;
            v12 = *v227;
            v5 = v227[1];
            v7 = *v227;
            a5 = v226;
            goto LABEL_301;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          v5 = 0;
        }

        v7 = 0;
        v719 = 0;
        a5 = v226;
        result = v227;
LABEL_301:
        v16 = v223;
        v18 = v222;
        goto LABEL_59;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    goto LABEL_298;
  }

  result[2] = v27 + 1;
  if (!v27)
  {
    v218 = v724;
    v219 = v725;
    v220 = v726;
    v221 = v717;
    v222 = v18;
    v223 = v16;
    v224 = v714;
    v225 = v715;
    v227 = result;
    v226 = a5;
    goto LABEL_298;
  }

  v719 = *v27 | 0x100000000;
LABEL_59:
  v28 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v28 - v7 || v5 - (v28 - v7) <= 3)
  {
    v230 = v725;
    v231 = v726;
    v232 = v18;
    v233 = v717;
    v234 = v16;
    v235 = v714;
    v236 = v715;
    v237 = a5;
    *result = 0;
    result[1] = 0;
    v238 = result;
    v239 = result[3];
    if (v239)
    {
      if (v5)
      {
        (*(*v239 + 16))(v239, v12);
        v12 = *v238;
        v5 = v238[1];
        goto LABEL_305;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    goto LABEL_305;
  }

  result[2] = v28 + 1;
  if (v28)
  {
    v713 = *v28 | 0x100000000;
    goto LABEL_63;
  }

  v230 = v725;
  v231 = v726;
  v232 = v18;
  v233 = v717;
  v234 = v16;
  v235 = v714;
  v236 = v715;
  v238 = result;
  v237 = a5;
LABEL_305:
  *v238 = 0;
  v238[1] = 0;
  v240 = v238[3];
  v725 = v230;
  v726 = v231;
  v717 = v233;
  v714 = v235;
  v715 = v236;
  if (v240)
  {
    if (v5)
    {
      (*(*v240 + 16))(v240, v12);
      v713 = 0;
      result = v238;
      v12 = *v238;
      v5 = v238[1];
      v7 = *v238;
      a5 = v237;
      goto LABEL_308;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v5 = 0;
  }

  v7 = 0;
  v713 = 0;
  a5 = v237;
  result = v238;
LABEL_308:
  v16 = v234;
  v18 = v232;
LABEL_63:
  v29 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v5 < v29 - v7 || v5 - (v29 - v7) <= 7)
  {
    goto LABEL_193;
  }

  result[2] = v29 + 1;
  if (!v29)
  {
    v79 = v724;
    v80 = v725;
    v81 = v726;
    v82 = v18;
    v83 = v717;
    v84 = v16;
    v85 = v714;
    v86 = v715;
    v88 = result;
    v87 = a5;
    goto LABEL_196;
  }

  v30 = *v29;
  for (i = 1; ; i = 0)
  {
    v32 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v5 < v32 - v7 || v5 - (v32 - v7) <= 7)
    {
      v693 = i;
      v674 = v30;
      v91 = v725;
      v92 = v726;
      v93 = v717;
      v94 = v18;
      v95 = v16;
      v96 = v714;
      v97 = v715;
      v98 = a5;
      *result = 0;
      result[1] = 0;
      v99 = result;
      v100 = result[3];
      if (v100)
      {
        if (v5)
        {
          (*(*v100 + 16))(v100, v12);
          v12 = *v99;
          v5 = v99[1];
LABEL_203:
          *v99 = 0;
          v99[1] = 0;
          v101 = v99[3];
          v725 = v91;
          v726 = v92;
          v717 = v93;
          v714 = v96;
          v715 = v97;
          if (v101)
          {
            if (v5)
            {
              (*(*v101 + 16))(v101, v12);
              result = v99;
              v12 = *v99;
              v5 = v99[1];
              v7 = *v99;
              a5 = v98;
              v34 = 0;
              goto LABEL_206;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          a5 = v98;
          v34 = 0;
          result = v99;
LABEL_206:
          v16 = v95;
          v18 = v94;
          v33 = 0;
          v30 = v674;
          i = v693;
          goto LABEL_71;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_203;
    }

    result[2] = v32 + 1;
    if (!v32)
    {
      v693 = i;
      v674 = v30;
      v91 = v725;
      v92 = v726;
      v93 = v717;
      v94 = v18;
      v95 = v16;
      v96 = v714;
      v97 = v715;
      v99 = result;
      v98 = a5;
      goto LABEL_203;
    }

    v33 = *v32;
    v34 = 1;
LABEL_71:
    v35 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v35 - v7 || v5 - (v35 - v7) <= 3)
    {
      v654 = v34;
      v637 = v33;
      v695 = i;
      v676 = v30;
      v241 = v725;
      v242 = v726;
      v243 = v717;
      v244 = v18;
      v245 = v16;
      v246 = v714;
      v247 = v715;
      v248 = a5;
      *result = 0;
      result[1] = 0;
      v249 = result;
      v250 = result[3];
      if (v250)
      {
        if (v5)
        {
          (*(*v250 + 16))(v250, v12);
          v12 = *v249;
          v5 = v249[1];
LABEL_312:
          *v249 = 0;
          v249[1] = 0;
          v251 = v249[3];
          v725 = v241;
          v726 = v242;
          v717 = v243;
          v714 = v246;
          v715 = v247;
          if (v251)
          {
            if (v5)
            {
              (*(*v251 + 16))(v251, v12);
              v718 = 0;
              result = v249;
              v12 = *v249;
              v5 = v249[1];
              v7 = *v249;
              a5 = v248;
              goto LABEL_315;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v718 = 0;
          a5 = v248;
          result = v249;
LABEL_315:
          v16 = v245;
          v18 = v244;
          v30 = v676;
          i = v695;
          v33 = v637;
          v34 = v654;
          goto LABEL_75;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_312;
    }

    result[2] = v35 + 1;
    if (!v35)
    {
      v654 = v34;
      v637 = v33;
      v695 = i;
      v676 = v30;
      v241 = v725;
      v242 = v726;
      v243 = v717;
      v244 = v18;
      v245 = v16;
      v246 = v714;
      v247 = v715;
      v249 = result;
      v248 = a5;
      goto LABEL_312;
    }

    v718 = *v35 | 0x100000000;
LABEL_75:
    v36 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v36 - v7 || v5 - (v36 - v7) <= 3)
    {
      v655 = v34;
      v638 = v33;
      v696 = i;
      v677 = v30;
      v252 = v725;
      v253 = v726;
      v254 = v717;
      v255 = v18;
      v256 = v16;
      v257 = v714;
      v258 = v715;
      v259 = a5;
      *result = 0;
      result[1] = 0;
      v260 = result;
      v261 = result[3];
      if (v261)
      {
        if (v5)
        {
          (*(*v261 + 16))(v261, v12);
          v12 = *v260;
          v5 = v260[1];
LABEL_319:
          *v260 = 0;
          v260[1] = 0;
          v262 = v260[3];
          v725 = v252;
          v726 = v253;
          v717 = v254;
          v714 = v257;
          v715 = v258;
          if (v262)
          {
            if (v5)
            {
              (*(*v262 + 16))(v262, v12);
              v37 = 0;
              result = v260;
              v12 = *v260;
              v5 = v260[1];
              v7 = *v260;
              a5 = v259;
              goto LABEL_322;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v37 = 0;
          a5 = v259;
          result = v260;
LABEL_322:
          v16 = v256;
          v18 = v255;
          v30 = v677;
          i = v696;
          v33 = v638;
          v34 = v655;
          goto LABEL_79;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_319;
    }

    result[2] = v36 + 1;
    if (!v36)
    {
      v655 = v34;
      v638 = v33;
      v696 = i;
      v677 = v30;
      v252 = v725;
      v253 = v726;
      v254 = v717;
      v255 = v18;
      v256 = v16;
      v257 = v714;
      v258 = v715;
      v260 = result;
      v259 = a5;
      goto LABEL_319;
    }

    v37 = *v36 | 0x100000000;
LABEL_79:
    v38 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v38 - v7 || v5 - (v38 - v7) <= 3)
    {
      v621 = v37;
      v639 = v33;
      v656 = v34;
      v697 = i;
      v678 = v30;
      v263 = v725;
      v264 = v726;
      v265 = v717;
      v266 = v18;
      v267 = v16;
      v268 = v714;
      v269 = v715;
      v270 = a5;
      *result = 0;
      result[1] = 0;
      v271 = result;
      v272 = result[3];
      if (v272)
      {
        if (v5)
        {
          (*(*v272 + 16))(v272, v12);
          v12 = *v271;
          v5 = v271[1];
LABEL_326:
          *v271 = 0;
          v271[1] = 0;
          v273 = v271;
          v274 = v271[3];
          v725 = v263;
          v726 = v264;
          v717 = v265;
          v714 = v268;
          v715 = v269;
          if (v274)
          {
            if (v5)
            {
              (*(*v274 + 16))(v274, v12);
              v39 = 0;
              result = v273;
              v12 = *v273;
              v5 = v273[1];
              v7 = *v273;
              a5 = v270;
              goto LABEL_329;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v39 = 0;
          a5 = v270;
          result = v273;
LABEL_329:
          v16 = v267;
          v18 = v266;
          v30 = v678;
          i = v697;
          v37 = v621;
          v33 = v639;
          v34 = v656;
          goto LABEL_83;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_326;
    }

    result[2] = v38 + 1;
    if (!v38)
    {
      v621 = v37;
      v639 = v33;
      v656 = v34;
      v697 = i;
      v678 = v30;
      v263 = v725;
      v264 = v726;
      v265 = v717;
      v266 = v18;
      v267 = v16;
      v268 = v714;
      v269 = v715;
      v271 = result;
      v270 = a5;
      goto LABEL_326;
    }

    v39 = *v38 | 0x100000000;
LABEL_83:
    v40 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v5 < v40 - v7 || v5 - (v40 - v7) <= 7)
    {
      v603 = v39;
      v620 = v37;
      v653 = v34;
      v636 = v33;
      v694 = i;
      v675 = v30;
      v102 = v724;
      v103 = v725;
      v104 = v726;
      v105 = v18;
      v106 = v717;
      v107 = v16;
      v108 = v714;
      v109 = v715;
      v110 = a5;
      *result = 0;
      result[1] = 0;
      v111 = result;
      v112 = result[3];
      if (v112)
      {
        if (v5)
        {
          (*(*v112 + 16))(v112, v12);
          v12 = *v111;
          v5 = v111[1];
LABEL_210:
          *v111 = 0;
          v111[1] = 0;
          v113 = v111[3];
          v724 = v102;
          v725 = v103;
          v726 = v104;
          v717 = v106;
          v714 = v108;
          v715 = v109;
          if (v113)
          {
            if (v5)
            {
              (*(*v113 + 16))(v113, v12);
              v42 = 0;
              result = v111;
              v12 = *v111;
              v5 = v111[1];
              v7 = *v111;
              a5 = v110;
              goto LABEL_213;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v42 = 0;
          a5 = v110;
          result = v111;
LABEL_213:
          v16 = v107;
          v18 = v105;
          v41 = 0;
          v30 = v675;
          i = v694;
          v37 = v620;
          v33 = v636;
          v34 = v653;
          v39 = v603;
          goto LABEL_87;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_210;
    }

    result[2] = v40 + 1;
    if (!v40)
    {
      v603 = v39;
      v620 = v37;
      v653 = v34;
      v636 = v33;
      v694 = i;
      v675 = v30;
      v102 = v724;
      v103 = v725;
      v104 = v726;
      v105 = v18;
      v106 = v717;
      v107 = v16;
      v108 = v714;
      v109 = v715;
      v111 = result;
      v110 = a5;
      goto LABEL_210;
    }

    v41 = *v40;
    v42 = 1;
LABEL_87:
    v43 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v43 - v7 || v5 - (v43 - v7) <= 3)
    {
      v571 = v42;
      v588 = v41;
      v604 = v39;
      v622 = v37;
      v640 = v33;
      v657 = v34;
      v698 = i;
      v679 = v30;
      v276 = v724;
      v275 = v725;
      v277 = v18;
      v278 = v726;
      v279 = v717;
      v280 = v16;
      v281 = v714;
      v282 = v715;
      v283 = a5;
      *result = 0;
      result[1] = 0;
      v284 = result;
      v285 = result[3];
      if (v285)
      {
        if (v5)
        {
          (*(*v285 + 16))(v285, v12);
          v12 = *v284;
          v5 = v284[1];
LABEL_333:
          *v284 = 0;
          v284[1] = 0;
          v286 = v284[3];
          v724 = v276;
          v725 = v275;
          v726 = v278;
          v717 = v279;
          v714 = v281;
          v715 = v282;
          if (v286)
          {
            if (v5)
            {
              (*(*v286 + 16))(v286, v12);
              v44 = 0;
              result = v284;
              v12 = *v284;
              v5 = v284[1];
              v7 = *v284;
              a5 = v283;
              goto LABEL_336;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v44 = 0;
          a5 = v283;
          result = v284;
LABEL_336:
          v16 = v280;
          v18 = v277;
          v30 = v679;
          i = v698;
          v37 = v622;
          v33 = v640;
          v34 = v657;
          v41 = v588;
          v39 = v604;
          v42 = v571;
          goto LABEL_91;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_333;
    }

    result[2] = v43 + 1;
    if (!v43)
    {
      v571 = v42;
      v588 = v41;
      v604 = v39;
      v622 = v37;
      v640 = v33;
      v657 = v34;
      v698 = i;
      v679 = v30;
      v276 = v724;
      v275 = v725;
      v277 = v18;
      v278 = v726;
      v279 = v717;
      v280 = v16;
      v281 = v714;
      v282 = v715;
      v284 = result;
      v283 = a5;
      goto LABEL_333;
    }

    v44 = *v43 | 0x100000000;
LABEL_91:
    v45 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v45 - v7 || v5 - (v45 - v7) <= 3)
    {
      v554 = v44;
      v572 = v42;
      v589 = v41;
      v605 = v39;
      v623 = v37;
      v641 = v33;
      v658 = v34;
      v699 = i;
      v680 = v30;
      v287 = v724;
      v288 = v725;
      v289 = v726;
      v290 = v717;
      v291 = v18;
      v292 = v16;
      v293 = v714;
      v294 = v715;
      v295 = a5;
      *result = 0;
      result[1] = 0;
      v296 = result;
      v297 = result[3];
      if (v297)
      {
        if (v5)
        {
          (*(*v297 + 16))(v297, v12);
          v12 = *v296;
          v5 = v296[1];
LABEL_340:
          *v296 = 0;
          v296[1] = 0;
          v298 = v296[3];
          v724 = v287;
          v725 = v288;
          v726 = v289;
          v717 = v290;
          v714 = v293;
          v715 = v294;
          if (v298)
          {
            if (v5)
            {
              (*(*v298 + 16))(v298, v12);
              v46 = 0;
              result = v296;
              v12 = *v296;
              v5 = v296[1];
              v7 = *v296;
              a5 = v295;
              goto LABEL_343;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v46 = 0;
          a5 = v295;
          result = v296;
LABEL_343:
          v16 = v292;
          v18 = v291;
          v30 = v680;
          i = v699;
          v37 = v623;
          v33 = v641;
          v34 = v658;
          v41 = v589;
          v39 = v605;
          v42 = v572;
          v44 = v554;
          goto LABEL_95;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_340;
    }

    result[2] = v45 + 1;
    if (!v45)
    {
      v554 = v44;
      v572 = v42;
      v589 = v41;
      v605 = v39;
      v623 = v37;
      v641 = v33;
      v658 = v34;
      v699 = i;
      v680 = v30;
      v287 = v724;
      v288 = v725;
      v289 = v726;
      v290 = v717;
      v291 = v18;
      v292 = v16;
      v293 = v714;
      v294 = v715;
      v296 = result;
      v295 = a5;
      goto LABEL_340;
    }

    v46 = *v45 | 0x100000000;
LABEL_95:
    v47 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v47 - v7 || v5 - (v47 - v7) <= 3)
    {
      v539 = v46;
      v555 = v44;
      v573 = v42;
      v590 = v41;
      v606 = v39;
      v624 = v37;
      v642 = v33;
      v659 = v34;
      v700 = i;
      v681 = v30;
      v299 = v724;
      v300 = v725;
      v301 = v726;
      v302 = v717;
      v303 = v18;
      v304 = v16;
      v305 = v714;
      v306 = v715;
      v307 = a5;
      *result = 0;
      result[1] = 0;
      v308 = result;
      v309 = result[3];
      if (v309)
      {
        if (v5)
        {
          (*(*v309 + 16))(v309, v12);
          v12 = *v308;
          v5 = v308[1];
LABEL_347:
          *v308 = 0;
          v308[1] = 0;
          v310 = v308[3];
          v724 = v299;
          v725 = v300;
          v726 = v301;
          v717 = v302;
          v714 = v305;
          v715 = v306;
          if (v310)
          {
            if (v5)
            {
              (*(*v310 + 16))(v310, v12);
              v48 = 0;
              result = v308;
              v12 = *v308;
              v5 = v308[1];
              v7 = *v308;
              a5 = v307;
              goto LABEL_350;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v48 = 0;
          a5 = v307;
          result = v308;
LABEL_350:
          v16 = v304;
          v18 = v303;
          v30 = v681;
          i = v700;
          v37 = v624;
          v33 = v642;
          v34 = v659;
          v41 = v590;
          v39 = v606;
          v42 = v573;
          v46 = v539;
          v44 = v555;
          goto LABEL_99;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_347;
    }

    result[2] = v47 + 1;
    if (!v47)
    {
      v539 = v46;
      v555 = v44;
      v573 = v42;
      v590 = v41;
      v606 = v39;
      v624 = v37;
      v642 = v33;
      v659 = v34;
      v700 = i;
      v681 = v30;
      v299 = v724;
      v300 = v725;
      v301 = v726;
      v302 = v717;
      v303 = v18;
      v304 = v16;
      v305 = v714;
      v306 = v715;
      v308 = result;
      v307 = a5;
      goto LABEL_347;
    }

    v48 = *v47 | 0x100000000;
LABEL_99:
    v49 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v49 - v7 || v5 - (v49 - v7) <= 3)
    {
      v525 = v48;
      v540 = v46;
      v556 = v44;
      v574 = v42;
      v591 = v41;
      v607 = v39;
      v625 = v37;
      v643 = v33;
      v660 = v34;
      v701 = i;
      v682 = v30;
      v311 = v724;
      v312 = v725;
      v313 = v726;
      v314 = v717;
      v315 = v18;
      v316 = v16;
      v317 = v714;
      v318 = v715;
      v319 = a5;
      *result = 0;
      result[1] = 0;
      v320 = result;
      v321 = result[3];
      if (v321)
      {
        if (v5)
        {
          (*(*v321 + 16))(v321, v12);
          v12 = *v320;
          v5 = v320[1];
LABEL_354:
          *v320 = 0;
          v320[1] = 0;
          v322 = v320[3];
          v724 = v311;
          v725 = v312;
          v726 = v313;
          v717 = v314;
          v714 = v317;
          v715 = v318;
          if (v322)
          {
            if (v5)
            {
              (*(*v322 + 16))(v322, v12);
              v50 = 0;
              result = v320;
              v12 = *v320;
              v5 = v320[1];
              v7 = *v320;
              a5 = v319;
              goto LABEL_357;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v50 = 0;
          a5 = v319;
          result = v320;
LABEL_357:
          v16 = v316;
          v18 = v315;
          v30 = v682;
          i = v701;
          v37 = v625;
          v33 = v643;
          v34 = v660;
          v41 = v591;
          v39 = v607;
          v42 = v574;
          v46 = v540;
          v44 = v556;
          v48 = v525;
          goto LABEL_103;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_354;
    }

    result[2] = v49 + 1;
    if (!v49)
    {
      v525 = v48;
      v540 = v46;
      v556 = v44;
      v574 = v42;
      v591 = v41;
      v607 = v39;
      v625 = v37;
      v643 = v33;
      v660 = v34;
      v701 = i;
      v682 = v30;
      v311 = v724;
      v312 = v725;
      v313 = v726;
      v314 = v717;
      v315 = v18;
      v316 = v16;
      v317 = v714;
      v318 = v715;
      v320 = result;
      v319 = a5;
      goto LABEL_354;
    }

    v50 = *v49 | 0x100000000;
LABEL_103:
    v51 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v51 - v7 || v5 - (v51 - v7) <= 3)
    {
      v512 = v50;
      v526 = v48;
      v541 = v46;
      v557 = v44;
      v575 = v42;
      v592 = v41;
      v608 = v39;
      v626 = v37;
      v644 = v33;
      v661 = v34;
      v702 = i;
      v683 = v30;
      v324 = v724;
      v323 = v725;
      v325 = v726;
      v326 = v717;
      v327 = v18;
      v328 = v16;
      v329 = v714;
      v330 = v715;
      v331 = a5;
      *result = 0;
      result[1] = 0;
      v332 = result;
      v333 = result[3];
      if (v333)
      {
        if (v5)
        {
          (*(*v333 + 16))(v333, v12);
          v12 = *v332;
          v5 = v332[1];
LABEL_361:
          *v332 = 0;
          v332[1] = 0;
          v334 = v332[3];
          v724 = v324;
          v725 = v323;
          v726 = v325;
          v717 = v326;
          v714 = v329;
          v715 = v330;
          if (v334)
          {
            if (v5)
            {
              (*(*v334 + 16))(v334, v12);
              a2 = 0;
              result = v332;
              v12 = *v332;
              v5 = v332[1];
              v7 = *v332;
              a5 = v331;
              goto LABEL_364;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          a2 = 0;
          a5 = v331;
          result = v332;
LABEL_364:
          v16 = v328;
          v18 = v327;
          v30 = v683;
          i = v702;
          v37 = v626;
          v33 = v644;
          v34 = v661;
          v41 = v592;
          v39 = v608;
          v42 = v575;
          v46 = v541;
          v44 = v557;
          v50 = v512;
          v48 = v526;
          goto LABEL_107;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_361;
    }

    result[2] = v51 + 1;
    if (!v51)
    {
      v512 = v50;
      v526 = v48;
      v541 = v46;
      v557 = v44;
      v575 = v42;
      v592 = v41;
      v608 = v39;
      v626 = v37;
      v644 = v33;
      v661 = v34;
      v702 = i;
      v683 = v30;
      v324 = v724;
      v323 = v725;
      v325 = v726;
      v326 = v717;
      v327 = v18;
      v328 = v16;
      v329 = v714;
      v330 = v715;
      v332 = result;
      v331 = a5;
      goto LABEL_361;
    }

    a2 = *v51 | 0x100000000;
LABEL_107:
    v52 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v52 - v7 || v5 - (v52 - v7) <= 3)
    {
      v499 = a2;
      v513 = v50;
      v527 = v48;
      v542 = v46;
      v558 = v44;
      v576 = v42;
      v593 = v41;
      v609 = v39;
      v627 = v37;
      v645 = v33;
      v662 = v34;
      v703 = i;
      v684 = v30;
      v335 = v724;
      v336 = v725;
      v337 = v726;
      v338 = v717;
      v339 = v18;
      v340 = v16;
      v341 = v714;
      v342 = v715;
      v343 = a5;
      *result = 0;
      result[1] = 0;
      v344 = result;
      v345 = result[3];
      if (v345)
      {
        if (v5)
        {
          (*(*v345 + 16))(v345, v12);
          v12 = *v344;
          v5 = v344[1];
LABEL_368:
          *v344 = 0;
          v344[1] = 0;
          v346 = v344[3];
          v724 = v335;
          v725 = v336;
          v726 = v337;
          v717 = v338;
          v714 = v341;
          v715 = v342;
          if (v346)
          {
            if (v5)
            {
              (*(*v346 + 16))(v346, v12);
              v53 = 0;
              result = v344;
              v12 = *v344;
              v5 = v344[1];
              v7 = *v344;
              a5 = v343;
              goto LABEL_371;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v53 = 0;
          a5 = v343;
          result = v344;
LABEL_371:
          v16 = v340;
          v18 = v339;
          v30 = v684;
          i = v703;
          v37 = v627;
          v33 = v645;
          v34 = v662;
          v41 = v593;
          v39 = v609;
          v42 = v576;
          v46 = v542;
          v44 = v558;
          v50 = v513;
          v48 = v527;
          a2 = v499;
          goto LABEL_111;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_368;
    }

    result[2] = v52 + 1;
    if (!v52)
    {
      v499 = a2;
      v513 = v50;
      v527 = v48;
      v542 = v46;
      v558 = v44;
      v576 = v42;
      v593 = v41;
      v609 = v39;
      v627 = v37;
      v645 = v33;
      v662 = v34;
      v703 = i;
      v684 = v30;
      v335 = v724;
      v336 = v725;
      v337 = v726;
      v338 = v717;
      v339 = v18;
      v340 = v16;
      v341 = v714;
      v342 = v715;
      v344 = result;
      v343 = a5;
      goto LABEL_368;
    }

    v53 = *v52 | 0x100000000;
LABEL_111:
    v54 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v54 - v7 || v5 - (v54 - v7) <= 3)
    {
      v487 = v53;
      v500 = a2;
      v514 = v50;
      v528 = v48;
      v543 = v46;
      v559 = v44;
      v577 = v42;
      v594 = v41;
      v610 = v39;
      v628 = v37;
      v646 = v33;
      v663 = v34;
      v704 = i;
      v685 = v30;
      v347 = v724;
      v348 = v725;
      v349 = v726;
      v350 = v717;
      v351 = v18;
      v352 = v16;
      v353 = v714;
      v354 = v715;
      v355 = a5;
      *result = 0;
      result[1] = 0;
      v356 = result;
      v357 = result[3];
      if (v357)
      {
        if (v5)
        {
          (*(*v357 + 16))(v357, v12);
          v12 = *v356;
          v5 = v356[1];
LABEL_375:
          *v356 = 0;
          v356[1] = 0;
          v358 = v356[3];
          v724 = v347;
          v725 = v348;
          v726 = v349;
          v717 = v350;
          v714 = v353;
          v715 = v354;
          if (v358)
          {
            if (v5)
            {
              (*(*v358 + 16))(v358, v12);
              a3 = 0;
              result = v356;
              v12 = *v356;
              v5 = v356[1];
              v7 = *v356;
              a5 = v355;
              goto LABEL_378;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          a3 = 0;
          a5 = v355;
          result = v356;
LABEL_378:
          v16 = v352;
          v18 = v351;
          v30 = v685;
          i = v704;
          v37 = v628;
          v33 = v646;
          v34 = v663;
          v41 = v594;
          v39 = v610;
          v42 = v577;
          v46 = v543;
          v44 = v559;
          v50 = v514;
          v48 = v528;
          v53 = v487;
          a2 = v500;
          goto LABEL_115;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_375;
    }

    result[2] = v54 + 1;
    if (!v54)
    {
      v487 = v53;
      v500 = a2;
      v514 = v50;
      v528 = v48;
      v543 = v46;
      v559 = v44;
      v577 = v42;
      v594 = v41;
      v610 = v39;
      v628 = v37;
      v646 = v33;
      v663 = v34;
      v704 = i;
      v685 = v30;
      v347 = v724;
      v348 = v725;
      v349 = v726;
      v350 = v717;
      v351 = v18;
      v352 = v16;
      v353 = v714;
      v354 = v715;
      v356 = result;
      v355 = a5;
      goto LABEL_375;
    }

    a3 = *v54 | 0x100000000;
LABEL_115:
    v55 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v55 - v7 || v5 - (v55 - v7) <= 3)
    {
      v476 = a3;
      v488 = v53;
      v501 = a2;
      v515 = v50;
      v529 = v48;
      v544 = v46;
      v560 = v44;
      v578 = v42;
      v595 = v41;
      v611 = v39;
      v629 = v37;
      v647 = v33;
      v664 = v34;
      v705 = i;
      v686 = v30;
      v359 = v724;
      v360 = v725;
      v361 = v726;
      v362 = v717;
      v363 = v18;
      v364 = v16;
      v365 = v714;
      v366 = v715;
      v367 = a5;
      *result = 0;
      result[1] = 0;
      v368 = result;
      v369 = result[3];
      if (v369)
      {
        if (v5)
        {
          (*(*v369 + 16))(v369, v12);
          v12 = *v368;
          v5 = v368[1];
LABEL_382:
          *v368 = 0;
          v368[1] = 0;
          v370 = v368[3];
          v724 = v359;
          v725 = v360;
          v726 = v361;
          v717 = v362;
          v714 = v365;
          v715 = v366;
          if (v370)
          {
            if (v5)
            {
              (*(*v370 + 16))(v370, v12);
              a4 = 0;
              result = v368;
              v12 = *v368;
              v5 = v368[1];
              v7 = *v368;
              a5 = v367;
              goto LABEL_385;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          a4 = 0;
          a5 = v367;
          result = v368;
LABEL_385:
          v16 = v364;
          v18 = v363;
          v30 = v686;
          i = v705;
          v37 = v629;
          v33 = v647;
          v34 = v664;
          v41 = v595;
          v39 = v611;
          v42 = v578;
          v46 = v544;
          v44 = v560;
          v50 = v515;
          v48 = v529;
          v53 = v488;
          a2 = v501;
          a3 = v476;
          goto LABEL_119;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_382;
    }

    result[2] = v55 + 1;
    if (!v55)
    {
      v476 = a3;
      v488 = v53;
      v501 = a2;
      v515 = v50;
      v529 = v48;
      v544 = v46;
      v560 = v44;
      v578 = v42;
      v595 = v41;
      v611 = v39;
      v629 = v37;
      v647 = v33;
      v664 = v34;
      v705 = i;
      v686 = v30;
      v359 = v724;
      v360 = v725;
      v361 = v726;
      v362 = v717;
      v363 = v18;
      v364 = v16;
      v365 = v714;
      v366 = v715;
      v368 = result;
      v367 = a5;
      goto LABEL_382;
    }

    a4 = *v55 | 0x100000000;
LABEL_119:
    v56 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v716 = v16;
    if (v5 < v56 - v7 || v5 - (v56 - v7) <= 3)
    {
      v466 = a4;
      v477 = a3;
      v489 = v53;
      v502 = a2;
      v516 = v50;
      v530 = v48;
      v545 = v46;
      v561 = v44;
      v579 = v42;
      v596 = v41;
      v612 = v39;
      v630 = v37;
      v648 = v33;
      v665 = v34;
      v706 = i;
      v687 = v30;
      v371 = v724;
      v372 = v725;
      v373 = v726;
      v374 = v717;
      v375 = v18;
      v376 = v714;
      v377 = v715;
      v378 = a5;
      *result = 0;
      result[1] = 0;
      v379 = result;
      v380 = result[3];
      if (v380)
      {
        if (v5)
        {
          (*(*v380 + 16))(v380, v12);
          v12 = *v379;
          v5 = v379[1];
LABEL_389:
          *v379 = 0;
          v379[1] = 0;
          v381 = v379[3];
          v724 = v371;
          v725 = v372;
          v726 = v373;
          v717 = v374;
          v714 = v376;
          v715 = v377;
          if (v381)
          {
            if (v5)
            {
              (*(*v381 + 16))(v381, v12);
              v57 = 0;
              result = v379;
              v12 = *v379;
              v5 = v379[1];
              v7 = *v379;
              a5 = v378;
              goto LABEL_392;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v57 = 0;
          a5 = v378;
          result = v379;
LABEL_392:
          v18 = v375;
          v30 = v687;
          i = v706;
          v37 = v630;
          v33 = v648;
          v34 = v665;
          v41 = v596;
          v39 = v612;
          v42 = v579;
          v46 = v545;
          v44 = v561;
          v50 = v516;
          v48 = v530;
          v53 = v489;
          a2 = v502;
          a4 = v466;
          a3 = v477;
          goto LABEL_123;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_389;
    }

    result[2] = v56 + 1;
    if (!v56)
    {
      v466 = a4;
      v477 = a3;
      v489 = v53;
      v502 = a2;
      v516 = v50;
      v530 = v48;
      v545 = v46;
      v561 = v44;
      v579 = v42;
      v596 = v41;
      v612 = v39;
      v630 = v37;
      v648 = v33;
      v665 = v34;
      v706 = i;
      v687 = v30;
      v371 = v724;
      v372 = v725;
      v373 = v726;
      v374 = v717;
      v375 = v18;
      v376 = v714;
      v377 = v715;
      v379 = result;
      v378 = a5;
      goto LABEL_389;
    }

    v57 = *v56 | 0x100000000;
LABEL_123:
    v58 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v58 - v7 || v5 - (v58 - v7) <= 3)
    {
      v457 = v57;
      v467 = a4;
      v478 = a3;
      v490 = v53;
      v503 = a2;
      v517 = v50;
      v531 = v48;
      v546 = v46;
      v562 = v44;
      v580 = v42;
      v597 = v41;
      v613 = v39;
      v631 = v37;
      v649 = v33;
      v666 = v34;
      v707 = i;
      v688 = v30;
      v383 = v724;
      v382 = v725;
      v384 = v726;
      v385 = v717;
      v386 = v18;
      v387 = v714;
      v388 = v715;
      v389 = a5;
      *result = 0;
      result[1] = 0;
      v390 = result;
      v391 = result[3];
      if (v391)
      {
        if (v5)
        {
          (*(*v391 + 16))(v391, v12);
          v12 = *v390;
          v5 = v390[1];
LABEL_396:
          *v390 = 0;
          v390[1] = 0;
          v392 = v390[3];
          v724 = v383;
          v725 = v382;
          v726 = v384;
          v717 = v385;
          v714 = v387;
          v715 = v388;
          if (v392)
          {
            if (v5)
            {
              (*(*v392 + 16))(v392, v12);
              v59 = 0;
              result = v390;
              v12 = *v390;
              v5 = v390[1];
              v7 = *v390;
              a5 = v389;
              goto LABEL_399;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v59 = 0;
          a5 = v389;
          result = v390;
LABEL_399:
          v18 = v386;
          v30 = v688;
          i = v707;
          v37 = v631;
          v33 = v649;
          v34 = v666;
          v41 = v597;
          v39 = v613;
          v42 = v580;
          v46 = v546;
          v44 = v562;
          v50 = v517;
          v48 = v531;
          v53 = v490;
          a2 = v503;
          a4 = v467;
          a3 = v478;
          v57 = v457;
          goto LABEL_127;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_396;
    }

    result[2] = v58 + 1;
    if (!v58)
    {
      v457 = v57;
      v467 = a4;
      v478 = a3;
      v490 = v53;
      v503 = a2;
      v517 = v50;
      v531 = v48;
      v546 = v46;
      v562 = v44;
      v580 = v42;
      v597 = v41;
      v613 = v39;
      v631 = v37;
      v649 = v33;
      v666 = v34;
      v707 = i;
      v688 = v30;
      v383 = v724;
      v382 = v725;
      v384 = v726;
      v385 = v717;
      v386 = v18;
      v387 = v714;
      v388 = v715;
      v390 = result;
      v389 = a5;
      goto LABEL_396;
    }

    v59 = *v58 | 0x100000000;
LABEL_127:
    v60 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v60 - v7 || v5 - (v60 - v7) <= 3)
    {
      v449 = v59;
      v458 = v57;
      v468 = a4;
      v479 = a3;
      v491 = v53;
      v504 = a2;
      v518 = v50;
      v532 = v48;
      v547 = v46;
      v563 = v44;
      v581 = v42;
      v598 = v41;
      v614 = v39;
      v632 = v37;
      v650 = v33;
      v667 = v34;
      v708 = i;
      v689 = v30;
      v393 = v725;
      v394 = v726;
      v395 = v717;
      v396 = v18;
      v397 = v714;
      v398 = v715;
      v399 = a5;
      *result = 0;
      result[1] = 0;
      v400 = result;
      v401 = result[3];
      if (v401)
      {
        if (v5)
        {
          (*(*v401 + 16))(v401, v12);
          v12 = *v400;
          v5 = v400[1];
LABEL_403:
          *v400 = 0;
          v400[1] = 0;
          v402 = v400[3];
          v725 = v393;
          v726 = v394;
          v717 = v395;
          v714 = v397;
          v715 = v398;
          if (v402)
          {
            if (v5)
            {
              (*(*v402 + 16))(v402, v12);
              v712 = 0;
              result = v400;
              v12 = *v400;
              v5 = v400[1];
              v7 = *v400;
              a5 = v399;
              goto LABEL_406;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v712 = 0;
          a5 = v399;
          result = v400;
LABEL_406:
          v18 = v396;
          v30 = v689;
          i = v708;
          v37 = v632;
          v33 = v650;
          v34 = v667;
          v41 = v598;
          v39 = v614;
          v42 = v581;
          v46 = v547;
          v44 = v563;
          v50 = v518;
          v48 = v532;
          v53 = v491;
          a2 = v504;
          a4 = v468;
          a3 = v479;
          v59 = v449;
          v57 = v458;
          goto LABEL_131;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_403;
    }

    result[2] = v60 + 1;
    if (!v60)
    {
      v449 = v59;
      v458 = v57;
      v468 = a4;
      v479 = a3;
      v491 = v53;
      v504 = a2;
      v518 = v50;
      v532 = v48;
      v547 = v46;
      v563 = v44;
      v581 = v42;
      v598 = v41;
      v614 = v39;
      v632 = v37;
      v650 = v33;
      v667 = v34;
      v708 = i;
      v689 = v30;
      v393 = v725;
      v394 = v726;
      v395 = v717;
      v396 = v18;
      v397 = v714;
      v398 = v715;
      v400 = result;
      v399 = a5;
      goto LABEL_403;
    }

    v712 = *v60 | 0x100000000;
LABEL_131:
    v61 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v61 - v7 || v5 - (v61 - v7) <= 3)
    {
      v450 = v59;
      v459 = v57;
      v469 = a4;
      v480 = a3;
      v492 = v53;
      v505 = a2;
      v519 = v50;
      v533 = v48;
      v548 = v46;
      v564 = v44;
      v582 = v42;
      v599 = v41;
      v615 = v39;
      v633 = v37;
      v651 = v33;
      v668 = v34;
      v709 = i;
      v690 = v30;
      v403 = v726;
      v404 = v717;
      v405 = v714;
      v406 = v715;
      v407 = a5;
      *result = 0;
      result[1] = 0;
      v408 = result;
      v409 = result[3];
      if (v409)
      {
        if (v5)
        {
          (*(*v409 + 16))(v409, v12);
          v12 = *v408;
          v5 = v408[1];
LABEL_410:
          *v408 = 0;
          v408[1] = 0;
          v410 = v408[3];
          v726 = v403;
          v717 = v404;
          v714 = v405;
          v715 = v406;
          if (v410)
          {
            if (v5)
            {
              (*(*v410 + 16))(v410, v12);
              v711 = 0;
              result = v408;
              v12 = *v408;
              v5 = v408[1];
              v7 = *v408;
              a5 = v407;
              goto LABEL_413;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v711 = 0;
          a5 = v407;
          result = v408;
LABEL_413:
          v30 = v690;
          i = v709;
          v37 = v633;
          v33 = v651;
          v34 = v668;
          v41 = v599;
          v39 = v615;
          v42 = v582;
          v46 = v548;
          v44 = v564;
          v50 = v519;
          v48 = v533;
          v53 = v492;
          a2 = v505;
          a4 = v469;
          a3 = v480;
          v59 = v450;
          v57 = v459;
          goto LABEL_135;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_410;
    }

    result[2] = v61 + 1;
    if (!v61)
    {
      v450 = v59;
      v459 = v57;
      v469 = a4;
      v480 = a3;
      v492 = v53;
      v505 = a2;
      v519 = v50;
      v533 = v48;
      v548 = v46;
      v564 = v44;
      v582 = v42;
      v599 = v41;
      v615 = v39;
      v633 = v37;
      v651 = v33;
      v668 = v34;
      v709 = i;
      v690 = v30;
      v403 = v726;
      v404 = v717;
      v405 = v714;
      v406 = v715;
      v408 = result;
      v407 = a5;
      goto LABEL_410;
    }

    v711 = *v61 | 0x100000000;
LABEL_135:
    v62 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v62 - v7 || v5 - (v62 - v7) <= 3)
    {
      v451 = v59;
      v460 = v57;
      v470 = a4;
      v481 = a3;
      v493 = v53;
      v506 = a2;
      v520 = v50;
      v534 = v48;
      v549 = v46;
      v565 = v44;
      v583 = v42;
      v600 = v41;
      v616 = v39;
      v634 = v37;
      v652 = v33;
      v669 = v34;
      v710 = i;
      v691 = v30;
      v411 = v18;
      v412 = v717;
      v413 = v714;
      v414 = v715;
      v415 = a5;
      *result = 0;
      result[1] = 0;
      v416 = result;
      v417 = result[3];
      if (v417)
      {
        if (v5)
        {
          (*(*v417 + 16))(v417, v12);
          v12 = *v416;
          v5 = v416[1];
LABEL_417:
          *v416 = 0;
          v416[1] = 0;
          v418 = v416;
          v419 = v416[3];
          v717 = v412;
          v714 = v413;
          v715 = v414;
          if (v419)
          {
            if (v5)
            {
              (*(*v419 + 16))(v419, v12);
              v63 = 0;
              result = v418;
              v12 = *v418;
              v5 = v418[1];
              v7 = *v418;
              a5 = v415;
              goto LABEL_420;
            }

            v12 = 0;
          }

          else
          {
            v12 = 0;
            v5 = 0;
          }

          v7 = 0;
          v63 = 0;
          a5 = v415;
          result = v418;
LABEL_420:
          v18 = v411;
          v30 = v691;
          i = v710;
          v37 = v634;
          v33 = v652;
          v34 = v669;
          v41 = v600;
          v39 = v616;
          v42 = v583;
          v46 = v549;
          v44 = v565;
          v50 = v520;
          v48 = v534;
          v53 = v493;
          a2 = v506;
          a4 = v470;
          a3 = v481;
          v59 = v451;
          v57 = v460;
          goto LABEL_139;
        }
      }

      else
      {
        v5 = 0;
      }

      v12 = 0;
      goto LABEL_417;
    }

    result[2] = v62 + 1;
    if (!v62)
    {
      v451 = v59;
      v460 = v57;
      v470 = a4;
      v481 = a3;
      v493 = v53;
      v506 = a2;
      v520 = v50;
      v534 = v48;
      v549 = v46;
      v565 = v44;
      v583 = v42;
      v600 = v41;
      v616 = v39;
      v634 = v37;
      v652 = v33;
      v669 = v34;
      v710 = i;
      v691 = v30;
      v411 = v18;
      v412 = v717;
      v413 = v714;
      v414 = v715;
      v416 = result;
      v415 = a5;
      goto LABEL_417;
    }

    v63 = *v62 | 0x100000000;
LABEL_139:
    v64 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v65 = v64 - v7;
    v9 = v5 >= v65;
    v66 = v5 - v65;
    if (v9 && v66 > 3)
    {
      result[2] = v64 + 1;
      if (v64)
      {
        v67 = *v64 | 0x100000000;
        goto LABEL_144;
      }
    }

    else
    {
      *result = 0;
      result[1] = 0;
      v420 = result[3];
      if (v420 && v5)
      {
        v456 = v59;
        v465 = v57;
        v443 = a5;
        v445 = result;
        v440 = v30;
        v673 = v34;
        v441 = v42;
        v553 = v46;
        v570 = v44;
        v524 = v50;
        v538 = v48;
        v498 = v53;
        v511 = a2;
        v475 = a4;
        v486 = a3;
        (*(*v420 + 16))(v420, v12);
        v59 = v456;
        v57 = v465;
        a4 = v475;
        a3 = v486;
        v53 = v498;
        a2 = v511;
        v50 = v524;
        v48 = v538;
        v46 = v553;
        v44 = v570;
        v42 = v441;
        v34 = v673;
        v30 = v440;
        result = v445;
        a5 = v443;
      }
    }

    v692 = v30;
    v670 = v34;
    v584 = v42;
    v550 = v46;
    v566 = v44;
    v521 = v50;
    v535 = v48;
    v494 = v53;
    v507 = a2;
    v471 = a4;
    v482 = a3;
    v452 = v59;
    v461 = v57;
    v421 = a5;
    v422 = *result;
    v423 = result[1];
    *result = 0;
    result[1] = 0;
    v424 = result;
    v425 = result[3];
    if (v425 && v423)
    {
      (*(*v425 + 16))(v425, v422);
    }

    v67 = 0;
    a5 = v421;
    result = v424;
    v30 = v692;
    v34 = v670;
    v42 = v584;
    v46 = v550;
    v44 = v566;
    v50 = v521;
    v48 = v535;
    v53 = v494;
    a2 = v507;
    a4 = v471;
    a3 = v482;
    v59 = v452;
    v57 = v461;
LABEL_144:
    v5 = result[1];
    v68 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v69 = *result;
    v70 = v68 - *result;
    v9 = v5 >= v70;
    v71 = v5 - v70;
    if (!v9 || v71 <= 3)
    {
      v453 = v59;
      v462 = v57;
      v472 = a4;
      v483 = a3;
      v495 = v53;
      v508 = a2;
      v522 = v50;
      v536 = v48;
      v551 = v46;
      v567 = v44;
      v585 = v42;
      v601 = v41;
      v617 = v39;
      v635 = v37;
      v671 = v34;
      v426 = i;
      v427 = v18;
      v428 = v30;
      v446 = v427;
      v429 = a5;
      *result = 0;
      result[1] = 0;
      v430 = result;
      v431 = result[3];
      if (v431)
      {
        if (v5)
        {
          (*(*v431 + 16))(v431);
          v69 = *v430;
          v5 = v430[1];
LABEL_427:
          *v430 = 0;
          v430[1] = 0;
          v432 = v430[3];
          if (v432)
          {
            if (v5)
            {
              (*(*v432 + 16))(v432, v69);
              v74 = 0;
              result = v430;
              v75 = *v430;
              v5 = v430[1];
              v69 = *v430;
              a5 = v429;
              goto LABEL_430;
            }

            v75 = 0;
          }

          else
          {
            v75 = 0;
            v5 = 0;
          }

          v69 = 0;
          v74 = 0;
          a5 = v429;
          result = v430;
LABEL_430:
          v73 = v446;
          v59 = v453;
          v72 = v428;
          i = v426;
          v34 = v671;
          v39 = v617;
          v37 = v635;
          v41 = v601;
          v42 = v585;
          v46 = v551;
          v44 = v567;
          v50 = v522;
          v48 = v536;
          v53 = v495;
          a2 = v508;
          a4 = v472;
          a3 = v483;
          v57 = v462;
          goto LABEL_149;
        }
      }

      else
      {
        v5 = 0;
      }

      v69 = 0;
      goto LABEL_427;
    }

    v72 = v30;
    result[2] = v68 + 1;
    if (!v68)
    {
      v453 = v59;
      v462 = v57;
      v472 = a4;
      v483 = a3;
      v495 = v53;
      v508 = a2;
      v522 = v50;
      v536 = v48;
      v551 = v46;
      v567 = v44;
      v585 = v42;
      v601 = v41;
      v617 = v39;
      v635 = v37;
      v671 = v34;
      v426 = i;
      v436 = v18;
      v428 = v30;
      v446 = v436;
      v430 = result;
      v429 = a5;
      goto LABEL_427;
    }

    v73 = v18;
    v74 = *v68 | 0x100000000;
    v75 = v69;
LABEL_149:
    v76 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v76 - v69 || v5 - (v76 - v69) <= 3)
    {
      v454 = v59;
      v463 = v57;
      v473 = a4;
      v484 = a3;
      v496 = v53;
      v509 = a2;
      v523 = v50;
      v537 = v48;
      v552 = v46;
      v568 = v44;
      v586 = v42;
      v618 = v39;
      v447 = v73;
      v433 = a5;
      *result = 0;
      result[1] = 0;
      v434 = result;
      v435 = result[3];
      if (v435)
      {
        if (v5)
        {
          (*(*v435 + 16))(v435, v75);
          result = v434;
          v75 = *v434;
          v5 = v434[1];
          a5 = v433;
          goto LABEL_434;
        }
      }

      else
      {
        v5 = 0;
      }

      v75 = 0;
      result = v434;
LABEL_434:
      v73 = v447;
      v59 = v454;
      v39 = v618;
      v42 = v586;
      v46 = v552;
      v44 = v568;
      v50 = v523;
      v48 = v537;
      v53 = v496;
      a2 = v509;
      a4 = v473;
      a3 = v484;
      v57 = v463;
      goto LABEL_435;
    }

    result[2] = v76 + 1;
    if (v76)
    {
      v77 = *v76 | 0x100000000;
      v18 = v717;
      goto LABEL_153;
    }

LABEL_435:
    *result = 0;
    result[1] = 0;
    v444 = result;
    result = result[3];
    if (!result || !v5)
    {
      break;
    }

    v455 = v59;
    v464 = v57;
    v442 = a5;
    v448 = v73;
    v672 = v34;
    v602 = v41;
    v619 = v39;
    v587 = v42;
    v569 = v44;
    v437 = v46;
    v438 = v48;
    v439 = v50;
    v497 = v53;
    v510 = a2;
    v474 = a4;
    v485 = a3;
    (*(*result + 16))(result, v75);
    v59 = v455;
    v57 = v464;
    a4 = v474;
    a3 = v485;
    v53 = v497;
    a2 = v510;
    v50 = v439;
    v48 = v438;
    v46 = v437;
    v44 = v569;
    v42 = v587;
    v41 = v602;
    v39 = v619;
    v34 = v672;
    v18 = v717;
    result = v444;
    v73 = v448;
    a5 = v442;
    v77 = 0;
    v69 = *v444;
LABEL_153:
    v16 = v716;
    if (!v69)
    {
      break;
    }

    if ((v715 & 0x100000000) != 0)
    {
      v5 = v714;
      if ((v714 & 0x100000000) != 0 && (v716 & 0x100000000) != 0 && (v73 & 0x100000000) != 0 && (v18 & 0x100000000) != 0)
      {
        result = v726;
        if ((v726 & 0x100000000) != 0)
        {
          result = v725;
          if ((v725 & 0x100000000) != 0)
          {
            result = v724;
            if ((v724 & 0x100000000) != 0)
            {
              result = v723;
              if ((v723 & 0x100000000) != 0)
              {
                result = v722;
                if ((v722 & 0x100000000) != 0)
                {
                  result = v721;
                  if ((v721 & 0x100000000) != 0)
                  {
                    result = v720;
                    if ((v720 & 0x100000000) != 0)
                    {
                      result = v719;
                      if ((v719 & 0x100000000) != 0)
                      {
                        result = v713;
                        if ((v713 & 0x100000000) != 0 && (i & 1) != 0 && (v34 & 1) != 0 && (v718 & 0x100000000) != 0 && (v37 & 0x100000000) != 0 && (v39 & 0x100000000) != 0 && (v42 & 1) != 0 && (v44 & 0x100000000) != 0 && (v46 & 0x100000000) != 0 && (v48 & 0x100000000) != 0 && (v50 & 0x100000000) != 0 && (a2 & 0x100000000) != 0 && (v53 & 0x100000000) != 0 && (a3 & 0x100000000) != 0 && (a4 & 0x100000000) != 0 && (v57 & 0x100000000) != 0 && (v59 & 0x100000000) != 0 && (v712 & 0x100000000) != 0 && (v711 & 0x100000000) != 0 && (v63 & 0x100000000) != 0 && (v67 & 0x100000000) != 0 && (v74 & 0x100000000) != 0 && (v77 & 0x100000000) != 0)
                        {
                          *a5 = v715;
                          *(a5 + 4) = v714;
                          *(a5 + 8) = v716;
                          *(a5 + 12) = v73;
                          *(a5 + 16) = v18;
                          *(a5 + 20) = v726;
                          *(a5 + 24) = v725;
                          *(a5 + 28) = v724;
                          *(a5 + 32) = v723;
                          *(a5 + 36) = v722;
                          *(a5 + 40) = v721;
                          *(a5 + 44) = v720;
                          *(a5 + 48) = v719;
                          *(a5 + 52) = v713;
                          *(a5 + 56) = v72;
                          *(a5 + 64) = v33;
                          *(a5 + 72) = v718;
                          *(a5 + 76) = v37;
                          *(a5 + 80) = v39;
                          *(a5 + 88) = v41;
                          *(a5 + 96) = v44;
                          *(a5 + 100) = v46;
                          *(a5 + 104) = v48;
                          *(a5 + 108) = v50;
                          *(a5 + 112) = a2;
                          *(a5 + 116) = v53;
                          *(a5 + 120) = a3;
                          *(a5 + 124) = a4;
                          *(a5 + 128) = v57;
                          *(a5 + 132) = v59;
                          *(a5 + 136) = v712;
                          *(a5 + 140) = v711;
                          *(a5 + 144) = v63;
                          *(a5 + 148) = v67;
                          v78 = 1;
                          *(a5 + 152) = v74;
                          *(a5 + 156) = v77;
                          goto LABEL_191;
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
LABEL_193:
    v79 = v724;
    v80 = v725;
    v81 = v726;
    v82 = v18;
    v83 = v717;
    v84 = v16;
    v85 = v714;
    v86 = v715;
    v87 = a5;
    *result = 0;
    result[1] = 0;
    v88 = result;
    v89 = result[3];
    if (!v89)
    {
      v5 = 0;
LABEL_195:
      v12 = 0;
      goto LABEL_196;
    }

    if (!v5)
    {
      goto LABEL_195;
    }

    (*(*v89 + 16))(v89);
    v12 = *v88;
    v5 = v88[1];
LABEL_196:
    *v88 = 0;
    v88[1] = 0;
    v90 = v88[3];
    v724 = v79;
    v725 = v80;
    v726 = v81;
    v717 = v83;
    v714 = v85;
    v715 = v86;
    if (!v90)
    {
      v12 = 0;
      v5 = 0;
LABEL_198:
      v7 = 0;
      v30 = 0;
      a5 = v87;
      result = v88;
      goto LABEL_199;
    }

    if (!v5)
    {
      v12 = 0;
      goto LABEL_198;
    }

    (*(*v90 + 16))(v90, v12, v5, a2, a3, a4);
    v30 = 0;
    result = v88;
    v12 = *v88;
    v5 = v88[1];
    v7 = *v88;
    a5 = v87;
LABEL_199:
    v16 = v84;
    v18 = v82;
  }

  v78 = 0;
  *a5 = 0;
LABEL_191:
  *(a5 + 160) = v78;
  return result;
}