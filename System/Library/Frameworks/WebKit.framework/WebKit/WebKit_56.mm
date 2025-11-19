IPC::Decoder *IPC::ArgumentCoder<std::optional<WebCore::ScreenDataOverrides>,void>::encode<IPC::Encoder,std::optional<WebCore::ScreenDataOverrides> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 24))
    {
      return IPC::ArgumentCoder<WebCore::HTMLModelElementCamera,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::ScreenDataOverrides>,void>::decode<IPC::Decoder>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<WebCore::ScreenDataOverrides>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    *(result + 1) = 0;
    v15 = *(result + 3);
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

    goto LABEL_20;
  }

  *(result + 2) = v5 + 1;
  if (!v5)
  {
LABEL_20:
    *v2 = 0;
    *(v2 + 1) = 0;
    v16 = *(v2 + 3);
    if (v16)
    {
      if (v4)
      {
        (*(*v16 + 16))(v16);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_14;
  }

  v6 = *v5;
  if (v6 < 2)
  {
    if (!v6)
    {
      *a2 = 0;
      *(a2 + 24) = 0;
      v14 = 1;
      goto LABEL_11;
    }

    v7 = IPC::Decoder::decode<unsigned long long>(result);
    v9 = v8;
    v10 = IPC::Decoder::decode<unsigned long long>(v2);
    v12 = v11;
    result = IPC::Decoder::decode<unsigned long long>(v2);
    if (*v2)
    {
      if (v9 & 1) != 0 && (v12 & 1) != 0 && (v13)
      {
        *a2 = v7;
        *(a2 + 8) = v10;
        *(a2 + 16) = result;
        v14 = 1;
        *(a2 + 24) = 1;
        goto LABEL_11;
      }

      __break(1u);
    }

    v4 = *(v2 + 1);
  }

LABEL_14:
  *v2 = 0;
  *(v2 + 1) = 0;
  result = *(v2 + 3);
  if (result && v4)
  {
    result = (*(*result + 16))(result);
  }

  v14 = 0;
  *a2 = 0;
LABEL_11:
  *(a2 + 32) = v14;
  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::PlatformTimeRanges>,void>::encode<IPC::Encoder,std::optional<WebCore::PlatformTimeRanges> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::VideoPlaybackQualityMetrics>,void>::encode<IPC::Encoder,std::optional<WebCore::VideoPlaybackQualityMetrics> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::VideoPlaybackQualityMetrics>,void>::encode<IPC::Encoder,std::optional<WebCore::VideoPlaybackQualityMetrics> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 32))
    {
      return IPC::ArgumentCoder<WebCore::VideoPlaybackQualityMetrics,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WebCore::PlatformTimeRanges>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

WTF *IPC::Decoder::decode<WebCore::PlatformTimeRanges>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::PlatformTimeRanges,void>::decode(a1, a2);
  if ((a2[16] & 1) == 0)
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

void sub_19D857620(_Unwind_Exception *exception_object, void *a2)
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

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>(IPC::Encoder *result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,0ul>(result, a2, a3);
  }

  else if (*(a2 + 16))
  {
    mpark::throw_bad_variant_access(result);
  }

  return result;
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,0ul>(mpark *this, unint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }

    v4 = *(a2 + 8);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(this, *a2);

    return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(this, v4);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,0ul,1ul>(this, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,0ul,1ul>(mpark *a1, unint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 16) != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::Encoder::addAttachment(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,0ul,1ul,2ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,0ul,1ul,2ul>(IPC::Encoder *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (*(a2 + 16) != 3)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::Encoder::operator<<<WebCore::IntSize>(result, a2);
  }

  return result;
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::decode<IPC::Decoder>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    v8 = a1;
    v9 = a2;
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      if (v2)
      {
        (*(*v6 + 16))(v6);
        v4 = *v8;
        v2 = v8[1];
        goto LABEL_14;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
LABEL_14:
    a2 = v9;
    *v8 = 0;
    v8[1] = 0;
    v7 = v8[3];
    if (v7 && v2)
    {
      (*(*v7 + 16))(v7, v4);
      a2 = v9;
    }

    goto LABEL_4;
  }

  a1[2] = (v3 + 1);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    goto LABEL_14;
  }

  v5 = *v3;
  if (v5 >= 4)
  {
LABEL_4:
    *a2 = 0;
    a2[24] = 0;
    return;
  }

  if (*v3)
  {

    IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::decode<IPC::Decoder,0ul>(a1, v5, a2);
  }

  else
  {
    *a2 = 0;
    a2[16] = 0;
    a2[24] = 1;
  }
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::decode<IPC::Decoder,0ul>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 == 1)
  {
    v5 = IPC::Decoder::decode<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v7);
    if (*a1)
    {
      if (v8)
      {
        *a3 = v7;
        a3[16] = 1;
        a3[24] = 1;
        return;
      }

      __break(1u);
    }

    else
    {
      v6 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v5 = a1[3];
      if (!v5)
      {
LABEL_10:
        *a3 = 0;
        a3[24] = 0;
        return;
      }
    }

    if (v6)
    {
      (*(*v5 + 16))(v5, 0);
    }

    goto LABEL_10;
  }

  IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::decode<IPC::Decoder,0ul,1ul>(a1, a2, a3);
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::decode<IPC::Decoder,0ul,1ul>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 == 2)
  {
    IPC::Decoder::takeLastAttachment(a1, v7);
    if (v8 == 1)
    {
      WTF::MachSendRight::MachSendRight();
      a3[16] = 2;
      a3[24] = 1;
      if (v8)
      {
        WTF::MachSendRight::~MachSendRight(v7);
      }
    }

    else
    {
      *a3 = 0;
      a3[24] = 0;
    }
  }

  else
  {
    if (a2 == 3 && (v4 = IPC::Decoder::decode<WebCore::IntSize>(a1), (v5 & 1) != 0))
    {
      *a3 = v4;
      a3[16] = 3;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      *a3 = 0;
    }

    a3[24] = v6;
  }
}

void sub_19D857A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, __int16 a11, char a12, char a13)
{
  if (a12 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 136 * v5;
    do
    {
      result = IPC::ArgumentCoder<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,void>::encode<IPC::Encoder,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>> const&>(a1, v6);
      v6 = (v6 + 136);
      v7 -= 136;
    }

    while (v7);
  }

  return result;
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,void>::encode<IPC::Encoder,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>> const&>(IPC::Encoder *a1, WebCore::Color *a2)
{
  v5 = *(a2 + 128);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,void>::encode<IPC::Encoder,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>> const&>(a1, a2, v5);
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,void>::encode<IPC::Encoder,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>> const&>(mpark *a1, WebCore::Color *a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,void>::encode<IPC::Encoder,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 128))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,void>::encode<IPC::Encoder,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>> const&,0ul>(mpark *a1, WebCore::Color *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 128) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,void>::encode<IPC::Encoder,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>> const&,0ul,1ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,void>::encode<IPC::Encoder,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>> const&,0ul,1ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 128) != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,void>::encode<IPC::Encoder,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>> const&,0ul,1ul,2ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,void>::encode<IPC::Encoder,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>> const&,0ul,1ul,2ul>(IPC::Encoder *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (*(a2 + 128) == 3)
    {

      return IPC::ArgumentCoder<WebCore::TransformationMatrix,void>::encode(result, a2);
    }

LABEL_11:
    mpark::throw_bad_variant_access(result);
  }

  if (a3 != 4)
  {
    return result;
  }

  if (*(a2 + 128) != 4)
  {
    goto LABEL_11;
  }

  v3 = *a2;

  return IPC::ArgumentCoder<WebCore::FilterOperation,void>::encode(result, *&v3);
}

uint64_t IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
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
      result = IPC::ArgumentCoder<WebCore::TimingFunction,void>::encode(a1, v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = 136 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::PlatformCAAnimationRemoteProperties,void>::encode(a1, v6);
      v6 += 136;
      v7 -= 136;
    }

    while (v7);
  }

  return result;
}

unsigned int *IPC::Decoder::decode<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>>(unsigned int *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (v21)
    {
      if (v6)
      {
        (*(*v21 + 16))(v21);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_37;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_37:
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22 && v6)
    {
      (*(*v22 + 16))(v22, v5);
    }

    goto LABEL_4;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_37;
  }

  v7 = *v4;
  if (v7 > 4)
  {
LABEL_4:
    *v3 = 0;
    *(v3 + 136) = 0;
LABEL_5:
    v8 = *a2;
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v9)
      {
        return (*(*result + 16))(result, v8);
      }
    }

    return result;
  }

  if (!*v4)
  {
    v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = ((v4 & 0xFFFFFFFFFFFFFFFCLL) + 4);
    if (v6 >= v13 - v5 && v6 - (v13 - v5) > 3)
    {
      *(a2 + 2) = v12 + 8;
      if (v13)
      {
        *result = *v13;
        *(result + 128) = 0;
        goto LABEL_32;
      }

      v23 = v6;
      v24 = v5;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v25 = *(a2 + 3);
      if (v25)
      {
        (*(*v25 + 16))(v25);
        v24 = *a2;
        v23 = *(a2 + 1);
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26 && v23)
    {
      (*(*v26 + 16))(v26, v24, v23);
    }

    goto LABEL_4;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      result = IPC::Decoder::decode<WebCore::FloatPoint3D>(a2);
      if ((v15 & 0x100000000) == 0)
      {
        goto LABEL_4;
      }

      *v3 = result;
      v3[2] = v15;
      v16 = 2;
    }

    else if (v7 == 3)
    {
      result = IPC::Decoder::decode<WebCore::TransformationMatrix>(v27, a2);
      if (v28 != 1)
      {
        goto LABEL_4;
      }

      v17 = v27[5];
      *(v3 + 4) = v27[4];
      *(v3 + 5) = v17;
      v18 = v27[7];
      *(v3 + 6) = v27[6];
      *(v3 + 7) = v18;
      v19 = v27[1];
      *v3 = v27[0];
      *(v3 + 1) = v19;
      v20 = v27[3];
      *(v3 + 2) = v27[2];
      *(v3 + 3) = v20;
      v16 = 3;
    }

    else
    {
      result = IPC::Decoder::decode<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>(v27, a2);
      if (BYTE8(v27[0]) != 1)
      {
        goto LABEL_4;
      }

      *v3 = *&v27[0];
      v16 = 4;
    }

    *(v3 + 128) = v16;
LABEL_32:
    *(v3 + 136) = 1;
    return result;
  }

  result = IPC::Decoder::decode<WebCore::Color>(a2, v27);
  if (BYTE8(v27[0]) == 1)
  {
    *v3 = 0;
    v11 = *&v27[0];
    if (v27 == v3)
    {
      *(v3 + 128) = 1;
      *(v3 + 136) = 1;
      if ((v11 & 0x8000000000000) != 0)
      {
        result = (v11 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, v10);
        }
      }
    }

    else
    {
      *v3 = *&v27[0];
      *(v3 + 128) = 1;
      *(v3 + 136) = 1;
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 136) = 0;
  }

  if ((v3[34] & 1) == 0)
  {
    goto LABEL_5;
  }

  return result;
}

void sub_19D857FF8(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 136) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::move_constructor((*a1 + 136 * *(a1 + 12)), v3);
  ++*(a1 + 12);
  return result;
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1, unsigned __int8 *a2)
{
  *a1 = 0;
  a1[128] = -1;
  mpark::detail::constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>>(a1, a2);
  return a1;
}

uint64_t mpark::detail::constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>>(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 128) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1> &>(a1, a2);
  }

  *(a1 + 128) = -1;
  result = a2[128];
  if (result != 255)
  {
    result = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfN7WebCore5ColorENS6_12FloatPoint3DENS6_20TransformationMatrixEN3WTF3RefINS6_15FilterOperationENSA_12RawPtrTraitsISC_EENSA_21DefaultRefDerefTraitsISC_EEEEEEEE17generic_constructINS0_16move_constructorISI_LNS0_5TraitE1EEEEEvRSJ_OT_EUlRSP_OT0_E_JSO_SN_EEEDcmSQ_DpOT0_(result, &v5, a1, a2);
    *(a1 + 128) = a2[128];
  }

  return result;
}

uint64_t _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfN7WebCore5ColorENS6_12FloatPoint3DENS6_20TransformationMatrixEN3WTF3RefINS6_15FilterOperationENSA_12RawPtrTraitsISC_EENSA_21DefaultRefDerefTraitsISC_EEEEEEEE17generic_constructINS0_16move_constructorISI_LNS0_5TraitE1EEEEEvRSJ_OT_EUlRSP_OT0_E_JSO_SN_EEEDcmSQ_DpOT0_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 1)
  {
    if (result == 2)
    {
      v4 = *a4;
      *(a3 + 8) = *(a4 + 2);
      *a3 = v4;
      return result;
    }

    if (result == 3)
    {
      v5 = *a4;
      v6 = *(a4 + 1);
      v7 = *(a4 + 3);
      *(a3 + 32) = *(a4 + 2);
      *(a3 + 48) = v7;
      *a3 = v5;
      *(a3 + 16) = v6;
      v8 = *(a4 + 4);
      v9 = *(a4 + 5);
      v10 = *(a4 + 7);
      *(a3 + 96) = *(a4 + 6);
      *(a3 + 112) = v10;
      *(a3 + 64) = v8;
      *(a3 + 80) = v9;
      return result;
    }

    goto LABEL_9;
  }

  if (!result)
  {
    *a3 = *a4;
    return result;
  }

  *a3 = 0;
  if (a3 != a4)
  {
LABEL_9:
    v11 = *a4;
    *a4 = 0;
    *a3 = v11;
  }

  return result;
}

unint64_t WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 136 * *(a1 + 12) <= a3)
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

    WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x1E1E1E2)
    {
      __break(0xC471u);
      JUMPOUT(0x19D858310);
    }

    v3 = *a1;
    v4 = (*a1 + 136 * *(a1 + 12));
    v5 = 136 * a2;
    v6 = WTF::fastMalloc((136 * a2));
    *(a1 + 8) = v5 / 0x88;
    *a1 = v6;
    WTF::VectorMover<false,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>>::move(v3, v4, v6);
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

uint64_t WTF::VectorMover<false,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>>::move(uint64_t result, unsigned __int8 *a2, _BYTE *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::move_constructor(a3, v5);
      result = mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::~move_constructor(v5, v6);
      a3 += 136;
      v5 += 136;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t this)
{
  if (*(result + 8) > this)
  {
    v3 = result;
    if (*(result + 12) > this)
    {
      result = WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, this);
    }

    v4 = *v3;
    if (this)
    {
      if (this >= 0x1E1E1E2)
      {
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 12);
      v6 = (136 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x88;
      *v3 = result;
      if (result != v4)
      {
        result = WTF::VectorMover<false,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>>::move(v4, v4 + 136 * v5, result);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v4, this);
    }
  }

  return result;
}

uint64_t WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t result, unint64_t a2)
{
  v2 = *(result + 12);
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
      result = *result + 136 * a2;
      v5 = 136 * v2 - 136 * a2;
      do
      {
        result = mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::~move_constructor(result, a2) + 136;
        v5 -= 136;
      }

      while (v5);
    }

    *(v4 + 12) = v3;
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::TimingFunction,void>::decode(a1, a2);
  if ((*(a1 + 8) & 1) == 0)
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

WTF *WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(WTF *result, unint64_t a2)
{
  if (*(result + 2) > a2)
  {
    v3 = result;
    if (*(result + 3) > a2)
    {
      result = WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v4 = *v3;
    if (a2)
    {
      if (*(v3 + 2))
      {
        *(v3 + 2) = a2;
        result = WTF::fastRealloc(v4, (8 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 3);
      result = WTF::fastMalloc((8 * a2));
      *(v3 + 2) = a2;
      *v3 = result;
      if (result != v4)
      {
        result = memcpy(result, v4, 8 * v5);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 2) = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

_DWORD *WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(_DWORD *result, unint64_t a2)
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
      v5 = (*result + 8 * a2);
      v6 = 8 * v2 - 8 * a2;
      do
      {
        result = *v5;
        *v5 = 0;
        if (result)
        {
          if (result[2] == 1)
          {
            result = (*(*result + 16))(result);
          }

          else
          {
            --result[2];
          }
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    v4[3] = v3;
  }

  return result;
}

uint64_t WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::PlatformCAAnimationRemoteProperties>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = WebKit::PlatformCAAnimationRemoteProperties::PlatformCAAnimationRemoteProperties(*a1 + 136 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 136 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x1E1E1E2)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8588BCLL);
    }

    v3 = *a1;
    v4 = (*a1 + 136 * *(a1 + 12));
    v5 = 136 * a2;
    v6 = WTF::fastMalloc((136 * a2));
    *(a1 + 8) = v5 / 0x88;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::PlatformCAAnimationRemoteProperties>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebKit::PlatformCAAnimationRemoteProperties>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      WebKit::PlatformCAAnimationRemoteProperties::PlatformCAAnimationRemoteProperties(a3, v5);
      WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + 120, v6);
      WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + 104, v7);
      v9 = *(v5 + 11);
      if (v9)
      {
        *(v5 + 11) = 0;
        *(v5 + 24) = 0;
        WTF::fastFree(v9, v8);
      }

      WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + 72, v8);
      v11 = *(v5 + 7);
      *(v5 + 7) = 0;
      if (v11)
      {
        if (v11[2] == 1)
        {
          (*(*v11 + 16))(v11);
        }

        else
        {
          --v11[2];
        }
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v10);
        }
      }

      a3 += 136;
      v5 = (v5 + 136);
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    if (result[3] > this)
    {
      result = WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, this);
    }

    v4 = *v3;
    if (this)
    {
      if (this >= 0x1E1E1E2)
      {
        __break(0xC471u);
        return result;
      }

      v5 = v3[3];
      v6 = (136 * this);
      result = WTF::fastMalloc(v6);
      v3[2] = v6 / 0x88;
      *v3 = result;
      if (result != v4)
      {
        result = WTF::VectorMover<false,WebKit::PlatformCAAnimationRemoteProperties>::move(v4, (v4 + 136 * v5), result);
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

unsigned int *WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, unint64_t a2)
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
      v5 = *result;
      v6 = 136 * a2;
      v7 = 136 * v2;
      do
      {
        v8 = v5 + v6;
        WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6 + 120, a2);
        WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6 + 104, v9);
        v11 = *(v5 + v6 + 88);
        if (v11)
        {
          *(v8 + 88) = 0;
          *(v8 + 96) = 0;
          WTF::fastFree(v11, v10);
        }

        WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8 + 72, v10);
        v12 = *(v8 + 56);
        *(v8 + 56) = 0;
        if (v12)
        {
          if (v12[2] == 1)
          {
            (*(*v12 + 16))(v12);
          }

          else
          {
            --v12[2];
          }
        }

        result = *v8;
        *v8 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }

        v7 -= 136;
        v5 += 136;
      }

      while (v6 != v7);
    }

    v4[3] = v3;
  }

  return result;
}

void *WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D858BE8(_Unwind_Exception *exception_object, void *a2)
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

void *WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D858C34(_Unwind_Exception *exception_object, void *a2)
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

void *WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D858C84(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WebCore::FrameTreeSyncData::operator new(WebCore::FrameTreeSyncData *this, void *a2)
{
  if (this == 16 && WebCore::FrameTreeSyncData::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebCore::FrameTreeSyncData::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (a2[40])
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *a2;

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v5);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&,0ul>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (a2[40] != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::Encoder::operator<<<BOOL>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&,0ul,1ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&,0ul,1ul>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (a2[40] != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::Encoder::operator<<<BOOL>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&,0ul,1ul,2ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&,0ul,1ul,2ul>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (a2[40] != 3)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::Encoder::operator<<<BOOL>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&,0ul,1ul,2ul,3ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&,0ul,1ul,2ul,3ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 4)
  {
    if (*(a2 + 40) != 4)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&,0ul,1ul,2ul,3ul,4ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&,0ul,1ul,2ul,3ul,4ul>(IPC::Encoder *result, uint64_t a2, uint64_t a3)
{
  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      if (*(a2 + 40) != 5)
      {
        goto LABEL_24;
      }

LABEL_20:

      return IPC::ArgumentCoder<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,void>::encode<IPC::Encoder,WebCore::SecurityOrigin>(result, a2);
    }

    if (a3 == 6)
    {
      if (*(a2 + 40) != 6)
      {
        goto LABEL_24;
      }

      v3 = *a2;

      return IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(result, v3);
    }
  }

  else
  {
    switch(a3)
    {
      case 7:
        if (*(a2 + 40) != 7)
        {
LABEL_24:
          mpark::throw_bad_variant_access(result);
        }

        break;
      case 8:
        if (*(a2 + 40) != 8)
        {
          goto LABEL_24;
        }

        break;
      case 9:
        if (*(a2 + 40) != 9)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      default:
        return result;
    }

    return IPC::Encoder::operator<<<BOOL>(result, a2);
  }

  return result;
}

void IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::decode<IPC::Decoder>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = *this;
  if (v3 <= &v4[-*this])
  {
    *this = 0;
    *(this + 1) = 0;
    v25 = this;
    v19 = *(this + 3);
    if (v19)
    {
      if (!v3)
      {
        goto LABEL_60;
      }

      (*(*v19 + 16))(v19);
      goto LABEL_66;
    }

LABEL_59:
    v3 = 0;
    goto LABEL_60;
  }

  v6 = v4 + 1;
  *(this + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_55;
  }

  v7 = *v4;
  if (v7 >= 0xA)
  {
LABEL_4:
    *a2 = 0;
    a2[48] = 0;
    return;
  }

  if (!*v4)
  {
    Failure = IPC::Decoder::decode<WebCore::BackgroundFetchFailureReason>(this);
    if (Failure <= 0xFFu)
    {
      goto LABEL_4;
    }

    *a2 = Failure;
    a2[40] = 0;
    goto LABEL_24;
  }

  switch(v7)
  {
    case 1u:
      if (v3 > &v6[-v5])
      {
        *(this + 2) = v4 + 2;
        if (v4 != -1)
        {
          v8 = *v6;
          if (v8 < 2)
          {
            *a2 = v8;
            v9 = 1;
            a2[40] = 1;
LABEL_25:
            a2[48] = v9;
            return;
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

LABEL_56:
      v20 = 0;
      v21 = 0;
      *this = 0;
      *(this + 1) = 0;
      v25 = this;
      v22 = *(this + 3);
      if (v22)
      {
        (*(*v22 + 16))(v22);
        v21 = *v25;
        v20 = *(v25 + 1);
      }

LABEL_58:
      *v25 = 0;
      *(v25 + 1) = 0;
      v23 = *(v25 + 3);
      if (v23 && v20)
      {
        (*(*v23 + 16))(v23, v21, v20);
LABEL_66:
        v3 = *(v25 + 1);
LABEL_60:
        *v25 = 0;
        *(v25 + 1) = 0;
        v24 = *(v25 + 3);
        if (v24)
        {
          if (v3)
          {
            (*(*v24 + 16))(v24);
          }
        }

        goto LABEL_4;
      }

      goto LABEL_59;
    case 2u:
      if (v3 <= &v6[-v5])
      {
        goto LABEL_56;
      }

      *(this + 2) = v4 + 2;
      if (v4 != -1)
      {
        v11 = *v6;
        if (v11 < 2)
        {
          *a2 = v11;
          v12 = 2;
LABEL_23:
          a2[40] = v12;
LABEL_24:
          v9 = 1;
          goto LABEL_25;
        }

        goto LABEL_55;
      }

      goto LABEL_63;
    case 3u:
      if (v3 <= &v6[-v5])
      {
        goto LABEL_56;
      }

      *(this + 2) = v4 + 2;
      if (v4 != -1)
      {
        v13 = *v6;
        if (v13 < 2)
        {
          *a2 = v13;
          v12 = 3;
          goto LABEL_23;
        }

LABEL_55:
        v25 = this;
        goto LABEL_60;
      }

LABEL_63:
      v25 = this;
      v20 = v3;
      v21 = v5;
      goto LABEL_58;
  }

  if (v7 != 4)
  {
    switch(v7)
    {
      case 5u:
        IPC::Decoder::decode<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(&v26, this);
        if (v27)
        {
          *a2 = v26;
          v12 = 5;
          goto LABEL_23;
        }

        break;
      case 6u:
        v16 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebExtensionMenuItemContextType>>(this);
        if (!HIWORD(v16))
        {
          goto LABEL_4;
        }

        *a2 = v16;
        v12 = 6;
        goto LABEL_23;
      case 7u:
        if (v3 <= &v6[-v5])
        {
          goto LABEL_56;
        }

        *(this + 2) = v4 + 2;
        if (v4 != -1)
        {
          v17 = *v6;
          if (v17 < 2)
          {
            *a2 = v17;
            v12 = 7;
            goto LABEL_23;
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      case 8u:
        if (v3 <= &v6[-v5])
        {
          goto LABEL_56;
        }

        *(this + 2) = v4 + 2;
        if (v4 != -1)
        {
          v18 = *v6;
          if (v18 < 2)
          {
            *a2 = v18;
            v12 = 8;
            goto LABEL_23;
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      default:
        IPC::Decoder::decode<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(&v26, this);
        if (v27)
        {
          *a2 = v26;
          v12 = 9;
          goto LABEL_23;
        }

        break;
    }

    v9 = 0;
    *a2 = 0;
    goto LABEL_25;
  }

  IPC::Decoder::decode<WTF::URL>(this, &v26);
  if (v28 != 1)
  {
    goto LABEL_4;
  }

  WTF::URL::URL(a2, &v26);
  a2[40] = 4;
  a2[48] = 1;
  if (v28)
  {
    v15 = v26;
    v26 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }
    }
  }
}

void sub_19D8592B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::HidConnection::create@<X0>(WebKit::HidConnection *this@<X0>, void *a2@<X8>)
{
  v4 = WTF::RefCounted<WebKit::HidConnection>::operator new();
  WebKit::HidConnection::HidConnection(v4, this);
  return WTF::adoptRef<WebKit::AuthenticatorManager,WTF::RawPtrTraits<WebKit::AuthenticatorManager>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorManager>>(a2, v4);
}

const void **WebKit::HidConnection::HidConnection(const void **this, __IOHIDDevice *a2)
{
  WebKit::HidConnection::HidConnection(this, a2);
  return this;
}

{
  WTF::RefCountedAndCanMakeWeakPtr<WebKit::HidConnection>::RefCountedAndCanMakeWeakPtr((this + 1));
  *this = &unk_1F10E8488;
  WTF::RetainPtr<__IOHIDDevice *>::RetainPtr(this + 3, a2);
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((this + 4));
  WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::Deque((this + 6));
  WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(this + 10);
  *(this + 88) = 0;
  return this;
}

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebKit::HidConnection>::RefCountedAndCanMakeWeakPtr(uint64_t a1)
{
  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::AuthenticatorTransportServiceObserver,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::CanMakeWeakPtrBase(a1);
  WTF::RefCounted<WebKit::AuthenticatorManager>::RefCounted((a1 + 8));
  return a1;
}

const void **WTF::RetainPtr<__IOHIDDevice *>::RetainPtr(const void **a1, const void *a2)
{
  WTF::RetainPtr<__IOHIDDevice *>::RetainPtr(a1, a2);
  return a1;
}

{
  *a1 = a2;
  if (*a1)
  {
    WTF::RetainPtr<NSURLRequest>::retainFoundationPtr(*a1);
  }

  return a1;
}

WTF::RefCountedBase *WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::Deque(WTF::RefCountedBase *a1)
{
  WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::Deque(a1);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 1) = 0;
  WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 16);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  return a1;
}

uint64_t *WTF::RefCountedAndCanMakeWeakPtr<WebKit::HidConnection>::~RefCountedAndCanMakeWeakPtr(uint64_t *a1)
{
  WTF::RefCounted<WebKit::AuthenticatorManager>::~RefCounted((a1 + 1));
  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::HidConnection,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::~CanMakeWeakPtrBase(a1);
  return a1;
}

void WebKit::HidConnection::~HidConnection(WebKit::HidConnection *this)
{
  *this = &unk_1F10E8488;
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(this + 10);
  WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::~Deque((this + 48));
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32);
  WTF::RetainPtr<NSURLRequest>::~RetainPtr(this + 3);
  WTF::RefCountedAndCanMakeWeakPtr<WebKit::HidConnection>::~RefCountedAndCanMakeWeakPtr(this + 1);
}

{
  WebKit::HidConnection::~HidConnection(this);
}

{
  WebKit::HidConnection::~HidConnection(this);
  WTF::FastMalloc::fastFree(this, v2);
}

WTF::RefCountedBase *WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::~Deque(WTF::RefCountedBase *a1)
{
  WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::~Deque(a1);
  return a1;
}

{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::destroyAll(a1);
  WTF::VectorBuffer<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::FastMalloc>::~VectorBuffer(a1 + 16);
  return a1;
}

void WebKit::HidConnection::initialize(WebKit::HidConnection *this)
{
  v11[2] = this;
  v2 = this + 24;
  v3 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](this + 24);
  IOHIDDeviceOpen(v3, 1u);
  v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v2);
  Current = CFRunLoopGetCurrent();
  IOHIDDeviceScheduleWithRunLoop(v4, Current, *MEMORY[0x1E695E8E0]);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::resize(this + 32);
  v6 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v2);
  v7 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(this + 32);
  v11[1] = v8;
  v11[0] = v7;
  v9 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v11);
  v10 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(this + 32);
  IOHIDDeviceRegisterInputReportCallback(v6, v9, v10, WebKit::reportReceived, this);
  *(this + 88) = 1;
}

void WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::resize(uint64_t a1)
{
  if (*(a1 + 12) < 0x40uLL)
  {
    if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1) < 0x40)
    {
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, 64);
    }

    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
    if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1))
    {
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
      WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
      WTF::VectorTypeOperations<unsigned char>::destruct();
    }
  }

  else
  {
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<unsigned char>::destruct();
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  }

  *(a1 + 12) = 64;
}

uint64_t WebKit::reportReceived(WebKit *this, void *a2, uint64_t a3, void *a4, IOHIDReportType a5, uint64_t a6, unsigned __int8 *a7)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = a7;
  v12[2] = this;
  if (a2)
  {
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v12);
    WebKit::HidConnection::receiveReport(this, v12);
    return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12);
  }

  else
  {
    v9 = WTF::unsafeMakeSpan<char const,18446744073709551615ul>(v14, v13);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char,18446744073709551615ul>(v11, v9, v10);
    WebKit::HidConnection::receiveReport(this, v11);
    return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11);
  }
}

void sub_19D85995C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, int a15, uint64_t a16)
{
  a16 = a1;
  a15 = a2;
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12);
  JUMPOUT(0x19D85996CLL);
}

uint64_t WebKit::HidConnection::terminate(WebKit::HidConnection *this)
{
  v11[2] = this;
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](this + 24);
  v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(this + 32);
  v11[1] = v4;
  v11[0] = v3;
  v5 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v11);
  v6 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(this + 32);
  IOHIDDeviceRegisterInputReportCallback(v2, v5, v6, 0, 0);
  v7 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](this + 24);
  Current = CFRunLoopGetCurrent();
  IOHIDDeviceUnscheduleFromRunLoop(v7, Current, *MEMORY[0x1E695E8E0]);
  v9 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](this + 24);
  result = IOHIDDeviceClose(v9, 0);
  *(this + 88) = 0;
  return result;
}

BOOL WebKit::HidConnection::sendSync(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1 + 24);
  v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(v9);
  v8[1] = v4;
  v8[0] = v3;
  v5 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v8);
  v6 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v9);
  return IOHIDDeviceSetReport(v2, kIOHIDReportTypeOutput, 0, v5, v6) == 0;
}

const void **WebKit::HidConnection::send(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  WTF::RetainPtr<NSURLRequest>::RetainPtr(&v6, (a1 + 24));
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v7, v11);
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler(&v8, v10);
  WTF::makeBlockPtr<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0>(&v9, &v6);
  WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::~$_0(&v6);
  global_queue = dispatch_get_global_queue(0, 0);
  v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v9);
  dispatch_async(global_queue, v4);
  return WTF::BlockPtr<void ()(void)>::~BlockPtr(&v9);
}

uint64_t *WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(WTF::String const&)>::Function(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

uint64_t *WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::~$_0(uint64_t *a1)
{
  WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::~CompletionHandler((a1 + 3));
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1));
  WTF::RetainPtr<NSURLRequest>::~RetainPtr(a1);
  return a1;
}

const void **WTF::BlockPtr<void ()(void)>::~BlockPtr(const void **a1)
{
  WTF::BlockPtr<void ()(void)>::~BlockPtr(a1);
  return a1;
}

{
  _Block_release(*a1);
  return a1;
}

uint64_t WebKit::HidConnection::registerDataReceivedCallback(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator=(a1 + 10, a2);
  WebKit::HidConnection::consumeReports(a1);
  return (*(*a1 + 48))(a1);
}

BOOL WebKit::HidConnection::consumeReports(WebKit::HidConnection *this)
{
  v5 = this;
  while (1)
  {
    isEmpty = WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::isEmpty(this + 6);
    result = 0;
    if (!isEmpty)
    {
      result = WTF::Function<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::operator BOOL(this + 10);
    }

    if (!result)
    {
      break;
    }

    WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::takeFirst(v4, this + 6);
    WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(this + 80);
    WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4);
  }

  return result;
}

void WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::takeFirst(uint64_t a1, unint64_t *a2)
{
  v4 = WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::first(a2);
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, v4);
  WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::removeFirst(a2);
}

uint64_t *WTF::WeakPtrFactory<WebKit::HidConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(uint64_t *a1)
{
  WTF::WeakPtrFactory<WebKit::HidConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(a1);
  return a1;
}

{
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(a1))
  {
    WTF::WeakPtrImplBase<WTF::DefaultWeakPtrImpl>::clear(*a1);
  }

  v4[1] = a1;
  v4[0] = 0;
  v7 = a1;
  v6 = v4;
  v5 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WTF::DefaultWeakPtrImpl,(WTF::DestructionThread)0>::deref(v5);
  }

  return a1;
}

uint64_t WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char,18446744073709551615ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char,18446744073709551615ul>(a1, a2, a3);
}

{
  v11[0] = a2;
  v11[1] = a3;
  v12 = a1;
  v4 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v11);
  v5 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v11);
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::VectorBuffer(a1, v4, v5);
  std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v11);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1))
  {
    v6 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v11);
    v7 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v11);
    v8 = v7 + std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v11);
    v9 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::VectorMover<true,WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::move(v6, v8, v9);
  }

  return v12;
}

uint64_t *WTF::makeBlockPtr<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &,void>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6[9] = a1;
  v6[8] = a4;
  v6[7] = a3;
  v6[6] = a2;
  v6[5] = a4;
  v6[4] = a3;
  WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::$_0(v6, a2);
  WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0>(a1, v6);
  return WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::~$_0(v6);
}

WTF::ThreadLikeAssertion *WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(uint64_t a1)
{
  v15 = a1;
  v14 = 1;
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
  v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(a1 + 8);
  v12[1] = v4;
  v12[0] = v3;
  v5 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v12);
  v6 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1 + 8);
  v7 = IOHIDDeviceSetReport(v2, kIOHIDReportTypeOutput, 0, v5, v6);
  v13 = v7;
  if (v7)
  {
    v14 = 0;
  }

  WTF::RunLoop::mainSingleton(v7);
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler(&v9, (a1 + 24));
  v10 = v14 & 1;
  WTF::Function<void ()(void)>::Function<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>(&v11, &v9);
  WTF::RunLoop::dispatch();
  WTF::Function<void ()(void)>::~Function(&v11);
  return WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1}::~(&v9);
}

void *WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0>(void *a1, uint64_t *a2)
{
  v10 = a1;
  v9 = a2;
  v8 = malloc_type_malloc(0x40uLL, 0x10F00407B933D54uLL);
  *v8 = MEMORY[0x1E69E9818];
  v7 = 1;
  *(v8 + 2) = 50331650;
  *(v8 + 3) = 0;
  v4 = (v8 + 16);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(&v6);
  *v4 = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0>(WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0)::{lambda(void *)#1}::__invoke;
  *(v8 + 3) = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0>(WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0)::descriptor;
  WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::$_0(v8 + 4, a2);
  result = std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::unique_ptr[abi:sn200100]<true,void>(a1);
  *a1 = v8;
  return result;
}

uint64_t *WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::RetainPtr<NSURLRequest>::RetainPtr(a1, a2);
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 1), a2 + 1);
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler(a1 + 3, a2 + 3);
  return a1;
}

uint64_t *WTF::Function<void ()(void)>::Function<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>(uint64_t *a1, uint64_t a2)
{
  WTF::Function<void ()(void)>::Function<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

WTF::ThreadLikeAssertion *WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1}::~(WTF::ThreadLikeAssertion *a1)
{
  WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1}::~(a1);
  return a1;
}

{
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::~CompletionHandler(a1);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&,0>(void *a1, uint64_t a2)
{
  v3 = WTF::FastMalloc::malloc(0x18);
  WTF::Detail::CallableWrapper<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::CallableWrapper(void *a1, uint64_t a2)
{
  WTF::Detail::CallableWrapper<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E84F0;
  WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1}::((a1 + 1), a2);
  return a1;
}

uint64_t WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1}::(uint64_t a1, uint64_t a2)
{
  WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1}::(a1, a2);
  return a1;
}

{
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler(a1, a2);
  *(a1 + 8) = *(a2 + 8) & 1;
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E84F0;
  WebKit::HidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1}::~((a1 + 1));
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t *WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::operator()(WTF::RefCountedBase *a1, char a2)
{
  v6 = a1;
  v5 = a2 & 1;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  std::exchange[abi:sn200100]<WTF::Function<void ()(WebKit::HidConnection::DataSent)>,decltype(nullptr)>(&v4, a1);
  WTF::Function<void ()(WebKit::HidConnection::DataSent)>::operator()(&v4);
  return WTF::Function<void ()(WebKit::HidConnection::DataSent)>::~Function(&v4);
}

uint64_t WTF::VectorBuffer<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::FastMalloc>::~VectorBuffer(uint64_t a1)
{
  WTF::VectorBuffer<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::FastMalloc>::~VectorBuffer(a1);
  return a1;
}

{
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
  WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1, v2);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, uint64_t a2)
{
  v8[1] = a1;
  v8[0] = a2;
  v7 = 16;
  v11 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1);
  v10 = v11 + (v11 >> 1);
  v9 = v11 + 1;
  v6 = *std::max[abi:sn200100]<unsigned long>(&v10, &v9);
  v3 = std::max[abi:sn200100]<unsigned long>(&v7, &v6);
  v4 = std::max[abi:sn200100]<unsigned long>(v8, v3);
  return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *v4);
}

void WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::append<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(unint64_t *a1, uint64_t *a2)
{
  v9 = a1;
  v8 = a2;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::expandCapacityIfNeeded(a1);
  v3 = WTF::VectorBufferBase<std::unique_ptr<fido::FidoHidPacket>,WTF::FastMalloc>::capacitySpan((a1 + 2));
  v7[1] = v4;
  v7[0] = v3;
  std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::operator[][abi:sn200100](v7, a1[1]);
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator new();
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v5, v8);
  v6 = a1[1];
  if (v6 == WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::capacity((a1 + 2)) - 1)
  {
    a1[1] = 0;
  }

  else
  {
    ++a1[1];
  }

  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
}

void WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::expandCapacityIfNeeded(unint64_t *a1)
{
  if (*a1)
  {
    if (a1[1] + 1 != *a1)
    {
      return;
    }
  }

  else if (a1[1])
  {
    v2 = a1[1];
    if (v2 != WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::capacity((a1 + 2)) - 1)
    {
      return;
    }
  }

  else if (WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::capacity((a1 + 2)))
  {
    return;
  }

  WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::expandCapacity(a1);
}

uint64_t std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::operator[][abi:sn200100](void *a1, unint64_t a2)
{
  if (a2 >= std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1))
  {
    __break(1u);
  }

  return *a1 + 16 * a2;
}

void WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::expandCapacity(unint64_t *a1)
{
  v38 = a1;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  v37 = WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::capacity((a1 + 2));
  v2 = WTF::VectorBufferBase<std::unique_ptr<fido::FidoHidPacket>,WTF::FastMalloc>::capacitySpan((a1 + 2));
  v36[1] = v3;
  v36[0] = v2;
  v35 = 16;
  v34 = v37 + (v37 >> 2) + 1;
  v4 = *std::max[abi:sn200100]<unsigned long>(&v35, &v34);
  v40 = a1 + 2;
  v39 = v4;
  WTF::VectorBufferBase<WebCore::HTTPHeaderMap::CommonHeader,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>((a1 + 2), v4);
  if (*a1 > a1[1])
  {
    v11 = std::span<char const,18446744073709551615ul>::first[abi:sn200100](v36, a1[1]);
    v30 = v12;
    v29 = v11;
    v13 = WTF::VectorBufferBase<std::unique_ptr<fido::FidoHidPacket>,WTF::FastMalloc>::capacitySpan((a1 + 2));
    v28 = v14;
    v27 = v13;
    WTF::VectorTypeOperations<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(v29, v30, v13, v14);
    v15 = WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::capacity((a1 + 2));
    v26 = v15 + *a1 - v37;
    v16 = std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::subspan[abi:sn200100](v36, *a1, v37 - *a1);
    v25 = v17;
    v24 = v16;
    v18 = WTF::VectorBufferBase<std::unique_ptr<fido::FidoHidPacket>,WTF::FastMalloc>::capacitySpan((a1 + 2));
    v23[1] = v19;
    v23[0] = v18;
    v20 = std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::subspan[abi:sn200100](v23, v26, 0xFFFFFFFFFFFFFFFFLL);
    v23[3] = v21;
    v23[2] = v20;
    WTF::VectorTypeOperations<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(v24, v25, v20, v21);
    *a1 = v26;
  }

  else
  {
    v5 = std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::subspan[abi:sn200100](v36, *a1, a1[1] - *a1);
    v33 = v6;
    v32 = v5;
    v7 = WTF::VectorBufferBase<std::unique_ptr<fido::FidoHidPacket>,WTF::FastMalloc>::capacitySpan((a1 + 2));
    v31[1] = v8;
    v31[0] = v7;
    v9 = std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::subspan[abi:sn200100](v31, *a1, 0xFFFFFFFFFFFFFFFFLL);
    v31[3] = v10;
    v31[2] = v9;
    WTF::VectorTypeOperations<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(v32, v33, v9, v10);
  }

  v22 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v36);
  WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer((a1 + 2), v22);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
}

uint64_t WTF::VectorTypeOperations<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a1;
  v14[1] = a2;
  v13[1] = a4;
  v13[0] = a3;
  v12 = std::span<std::unique_ptr<fido::FidoHidPacket>,18446744073709551615ul>::begin[abi:sn200100](v14);
  std::to_address[abi:sn200100]<std::__wrap_iter<std::unique_ptr<fido::FidoHidPacket> *>>(&v12);
  v5 = v4;
  v11 = std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::end[abi:sn200100](v14);
  std::to_address[abi:sn200100]<std::__wrap_iter<std::unique_ptr<fido::FidoHidPacket> *>>(&v11);
  v7 = v6;
  v10 = std::span<std::unique_ptr<fido::FidoHidPacket>,18446744073709551615ul>::begin[abi:sn200100](v13);
  std::to_address[abi:sn200100]<std::__wrap_iter<std::unique_ptr<fido::FidoHidPacket> *>>(&v10);
  return WTF::VectorMover<false,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(v5, v7, v8);
}

uint64_t WTF::VectorMover<false,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(uint64_t result, uint64_t *a2, uint64_t a3)
{
  for (i = result; i != a2; i += 2)
  {
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator new();
    WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v3, i);
    result = WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(i);
    a3 += 16;
  }

  return result;
}

uint64_t WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::first(unint64_t *a1)
{
  v5[2] = a1;
  v2 = WTF::VectorBufferBase<std::unique_ptr<fido::FidoHidPacket>,WTF::FastMalloc>::capacitySpan((a1 + 2));
  v5[1] = v3;
  v5[0] = v2;
  return std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::operator[][abi:sn200100](v5, *a1);
}

void WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::removeFirst(WTF::RefCountedBase *a1)
{
  v9[4] = a1;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  isEmpty = WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::isEmpty(a1);
  if (isEmpty)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(isEmpty);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D85B418);
  }

  v4 = WTF::VectorBufferBase<std::unique_ptr<fido::FidoHidPacket>,WTF::FastMalloc>::capacitySpan(a1 + 16);
  v9[1] = v5;
  v9[0] = v4;
  v6 = std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::subspan[abi:sn200100](v9, *a1, 1uLL);
  v9[3] = v7;
  v9[2] = v6;
  WTF::VectorTypeOperations<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::destruct(v6, v7);
  v8 = *a1;
  if (v8 == WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::capacity(a1 + 16) - 1)
  {
    *a1 = 0;
  }

  else
  {
    ++*a1;
  }

  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
}

void *WebKit::HidService::create@<X0>(WebKit::HidService *this@<X0>, void *a2@<X8>)
{
  v4 = WebKit::FidoService::operator new(this);
  WebKit::HidService::HidService(v4, this);
  return WTF::adoptRef<WebKit::AuthenticatorManager,WTF::RawPtrTraits<WebKit::AuthenticatorManager>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorManager>>(a2, v4);
}

void sub_19D85B4EC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object)
{
  *(v13 - 24) = v12;
  bmalloc::api::tzoneFree(*(v13 - 24), a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::FidoService::operator new(WebKit::FidoService *this)
{

  return WebKit::FidoService::operatorNewSlow(0x30);
}

WebKit::HidService *WebKit::HidService::HidService(WebKit::HidService *this, WebKit::AuthenticatorTransportServiceObserver *a2)
{
  WebKit::HidService::HidService(this, a2);
  return this;
}

{
  v10[2] = this;
  v10[1] = a2;
  WebKit::FidoService::FidoService(this, a2);
  *this = &unk_1F10E8518;
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::unique_ptr[abi:sn200100]<true,void>(this + 5);
  v3 = IOHIDManagerCreate(*MEMORY[0x1E695E480], 0);
  WTF::adoptCF<__IOHIDManager *>(v10, v3);
  v12 = (this + 40);
  v11 = v10;
  v4 = WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(this + 5);
  if (!v4)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v4);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    v24 = 363;
    v23 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/RetainPtr.h";
    v22 = "void WTF::lazyInitialize(const RetainPtr<T> &, RetainPtr<U> &&) [T = __IOHIDManager *, U = __IOHIDManager *]";
    v21 = 26;
    v20 = 363;
    v19 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/RetainPtr.h";
    v18 = "void WTF::lazyInitialize(const RetainPtr<T> &, RetainPtr<U> &&) [T = __IOHIDManager *, U = __IOHIDManager *]";
    v17 = 26;
    v16 = 363;
    v15 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/RetainPtr.h";
    v14 = "void WTF::lazyInitialize(const RetainPtr<T> &, RetainPtr<U> &&) [T = __IOHIDManager *, U = __IOHIDManager *]";
    v13 = 26;
    __break(0xC471u);
    JUMPOUT(0x19D85B6DCLL);
  }

  WTF::RetainPtr<__IOHIDManager *>::operator=(v12, v11);
  WTF::RetainPtr<NSURLRequest>::~RetainPtr(v10);
  v6 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](this + 40);
  IOHIDManagerSetDeviceMatching(v6, &unk_1F1184DA0);
  v7 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](this + 40);
  IOHIDManagerRegisterDeviceMatchingCallback(v7, WebKit::deviceAddedCallback, this);
  v8 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](this + 40);
  IOHIDManagerRegisterDeviceRemovalCallback(v8, WebKit::deviceRemovedCallback, this);
  return this;
}

void sub_19D85B778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object, char a13)
{
  WTF::RetainPtr<NSURLRequest>::~RetainPtr(v14);
  WebKit::FidoService::~FidoService(v13);
  _Unwind_Resume(a1);
}

void WebKit::FidoService::~FidoService(WebKit::FidoService *this)
{
  *this = &unk_1F10E85B8;
  WTF::HashSet<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet((this + 32));
  WTF::RefCounted<WebKit::AuthenticatorManager>::~RefCounted((this + 24));
  WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(this);
}

{
  __break(1u);
}

{
  __break(1u);
}

void WebKit::HidService::~HidService(WebKit::HidService *this)
{
  *this = &unk_1F10E8518;
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](this + 40);
  Current = CFRunLoopGetCurrent();
  IOHIDManagerUnscheduleFromRunLoop(v2, Current, *MEMORY[0x1E695E8E0]);
  v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](this + 40);
  IOHIDManagerClose(v4, 0);
  WTF::RetainPtr<NSURLRequest>::~RetainPtr(this + 5);
  WebKit::FidoService::~FidoService(this);
}

{
  WebKit::HidService::~HidService(this);
}

{
  WebKit::HidService::~HidService(this);
  bmalloc::api::tzoneFree(this, v2);
}

void sub_19D85B938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object)
{
  WTF::RetainPtr<NSURLRequest>::~RetainPtr(v12 + 5);
  WebKit::FidoService::~FidoService(v12);
  _Unwind_Resume(a1);
}

uint64_t WebKit::HidService::platformStartDiscovery(WebKit::HidService *this)
{
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](this + 40);
  Current = CFRunLoopGetCurrent();
  IOHIDManagerScheduleWithRunLoop(v2, Current, *MEMORY[0x1E695E8E0]);
  v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](this + 40);
  return IOHIDManagerOpen(v4, 0);
}

uint64_t *WebKit::HidService::deviceAdded(WebKit::HidService *this, __IOHIDDevice *a2)
{
  v6[2] = this;
  v6[1] = a2;
  (*(*this + 64))(&v4, this, a2);
  WebKit::CtapHidDriver::create(&v4, &v5);
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(v6, &v5);
  WebKit::FidoService::getInfo(this, v6);
  WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(v6);
  WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v5);
  return WTF::Ref<WebKit::HidConnection,WTF::RawPtrTraits<WebKit::HidConnection>,WTF::DefaultRefDerefTraits<WebKit::HidConnection>>::~Ref(&v4);
}

WTF::RefCountedBase *WTF::HashSet<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(WTF::RefCountedBase *a1)
{
  WTF::HashSet<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(a1);
  return a1;
}

{
  WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::~HashTable(a1);
  return a1;
}

void WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(WebKit::AuthenticatorTransportService *this)
{
  *this = &unk_1F10E8570;
  WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(this + 2);
  WTF::AbstractRefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorTransportService>::~AbstractRefCountedAndCanMakeWeakPtr(this);
}

{
  __break(1u);
}

{
  __break(1u);
}

WTF::RefCountedBase *WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::~HashTable(WTF::RefCountedBase *a1)
{
  WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::~HashTable(a1);
  return a1;
}

{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  if (*a1)
  {
    WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::deallocateTable(*a1, v2);
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v4 = *(a1 - 4);
  for (i = 0; i < v4; ++i)
  {
    if (!WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::isDeletedBucket())
    {
      WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref((a1 + 8 * i));
    }
  }

  return WTF::FastMalloc::free((a1 - 16), a2);
}

uint64_t WTF::AbstractRefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorTransportService>::~AbstractRefCountedAndCanMakeWeakPtr(uint64_t a1)
{
  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::AuthenticatorTransportService,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::~CanMakeWeakPtrBase((a1 + 8));
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t *WTF::WeakPtrFactory<WebKit::AuthenticatorTransportService,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(uint64_t *a1)
{
  WTF::WeakPtrFactory<WebKit::AuthenticatorTransportService,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(a1);
  return a1;
}

{
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(a1))
  {
    v8 = a1;
    v9 = a1;
    WTF::WeakPtrImplBase<WTF::DefaultWeakPtrImpl>::clear(*a1);
  }

  v4[1] = a1;
  v4[0] = 0;
  v7 = a1;
  v6 = v4;
  v5 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WTF::DefaultWeakPtrImpl,(WTF::DestructionThread)0>::deref(v5);
  }

  return a1;
}

uint64_t WTF::RefCounted<WebKit::FidoService>::deref(WTF::RefCountedBase *a1)
{
  result = WTF::RefCountedBase::derefBase(a1);
  if (result)
  {
    result = a1 - 24;
    if (a1 != 24)
    {
      return (*(*result + 24))();
    }
  }

  return result;
}

uint64_t *WTF::RetainPtr<__IOHIDManager *>::operator=(uint64_t *a1, uint64_t *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  WTF::RetainPtr<NSURLRequest>::RetainPtr(v4, a2);
  WTF::RetainPtr<NSURLRequest>::swap(a1, v4);
  return WTF::RetainPtr<NSURLRequest>::~RetainPtr(v4);
}

void WebKit::InjectedBundleNodeHandle::getOrCreate(const OpaqueJSContext *a1@<X1>, JSValue a2@<X2>, WebKit::InjectedBundleNodeHandle **a3@<X8>)
{
  v5 = (a1 - 16);
  if ((a1 & 8) == 0)
  {
    v5 = (a1 & 0xFFFFFFFFFFFFC000 | 8);
  }

  v6 = WebCore::JSNode::toWrapped(*v5, a1, a2);
  if (v6)
  {
    v7 = v6;
    *(v6 + 7) += 2;
    WebKit::InjectedBundleNodeHandle::getOrCreate(v6, a3);
    if (*(v7 + 7) == 2)
    {

      WebCore::Node::removedLastRef(v7);
    }

    else
    {
      *(v7 + 7) -= 2;
    }
  }

  else
  {
    *a3 = 0;
  }
}

void WebKit::InjectedBundleNodeHandle::getOrCreate(WebKit::InjectedBundleNodeHandle *this@<X0>, WebKit::InjectedBundleNodeHandle **a2@<X8>)
{
  {
    WebKit::domNodeHandleCache(void)::cache = 0;
    *&dword_1ED6432F8 = 0;
  }

  v5 = WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::get(&WebKit::domNodeHandleCache(void)::cache, this);
  if (v5)
  {
    v8 = v5;
    CFRetain(*(v5 + 8));
    CFRetain(v8[1]);
    *a2 = v8;
    v9 = v8[1];

    CFRelease(v9);
  }

  else
  {
    WebKit::InjectedBundleNodeHandle::create(this, a2);
    v6 = *a2;
    v7 = *(*a2 + 7);
    if (v7)
    {
      v7[7] += 2;
      {
        WebKit::domNodeHandleCache(void)::cache = 0;
        *&dword_1ED6432F8 = 0;
      }

      WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::add<WebKit::InjectedBundleNodeHandle&>(&WebKit::domNodeHandleCache(void)::cache, v7, v6, v10);
      if (v7[7] == 2)
      {
        WebCore::Node::removedLastRef(v7);
      }

      else
      {
        v7[7] -= 2;
      }
    }
  }
}

uint64_t WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::get(uint64_t *a1, uint64_t a2)
{
  ++*(a1 + 2);
  v2 = *(a2 + 16);
  v3 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0xFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFLL) + 8))
  {
    return 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v4 - 8);
  v6 = (v3 + ~(v2 << 32)) ^ ((v3 + ~(v2 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  for (i = 1; ; v9 = (v11 + i++) & v5)
  {
    v11 = v9;
    v12 = *(v4 + 16 * v9);
    if (v12 != -1)
    {
      if (!v12)
      {
        return 0;
      }

      if (v12 == v3)
      {
        break;
      }
    }
  }

  v13 = *(v4 + 16 * v11 + 8);
  if (v13)
  {
    return *(v13 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::InjectedBundleNodeHandle::create@<X0>(WebKit::InjectedBundleNodeHandle *this@<X0>, WebKit::InjectedBundleNodeHandle **a2@<X8>)
{
  v5 = API::Object::newObject(0x40uLL, 140);
  v6 = WebKit::InjectedBundleNodeHandle::InjectedBundleNodeHandle(v5, this);
  *a2 = v6;
  v7 = v6 + 16;

  return MEMORY[0x1EEE55C58](v7);
}

double WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::add<WebKit::InjectedBundleNodeHandle&>@<D0>(uint64_t a1@<X0>, atomic_uint *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  *(a1 + 8) = v8 + 1;
  if (v8 > v9)
  {
    WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::removeNullReferences(a1, a2);
  }

  WTF::WeakPtrFactoryWithBitField<WebCore::EventTarget,WebCore::WeakPtrImplWithEventTargetData>::initializeIfNeeded(a2 + 4, a2);
  v10 = (*(a2 + 2) & 0xFFFFFFFFFFFFLL);
  atomic_fetch_add(v10, 1u);
  *v19 = v10;
  WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::InjectedBundleNodeHandle&>(a1, v19, a3, &v21);
  v12 = *v19;
  *v19 = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v12, v11);
  }

  *v19 = a1;
  *&v19[8] = v21;
  v13 = *a1;
  if (*a1)
  {
    v14 = *(v13 - 4);
    v15 = v13 + 16 * v14;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *&v19[24] = v15;
  *&v20 = v13 + 16 * v14;
  DWORD2(v20) = 0;
  WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>,WTF::HashTableIteratorAdapter<WTF::HashTable<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::PeekPtrType,WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::PeekType>::skipEmptyBuckets(v19);
  v16 = v22;
  v17 = *&v19[16];
  *a4 = *v19;
  *(a4 + 16) = v17;
  result = *&v20;
  *(a4 + 32) = v20;
  *(a4 + 48) = v16;
  return result;
}

WebKit::InjectedBundleNodeHandle *WebKit::InjectedBundleNodeHandle::InjectedBundleNodeHandle(WebKit::InjectedBundleNodeHandle *this, WebCore::Node *a2)
{
  v4 = API::Object::Object(this);
  *v4 = &unk_1F10E86B8;
  WebCore::ActiveDOMObject::ActiveDOMObject((v4 + 16), *(*(a2 + 6) + 8));
  *(this + 6) = 0;
  *this = &unk_1F10E8600;
  *(this + 2) = &unk_1F10E8640;
  *(this + 3) = &unk_1F10E8690;
  *(a2 + 7) += 2;
  *(this + 7) = a2;
  return this;
}

void WebKit::InjectedBundleNodeHandle::~InjectedBundleNodeHandle(WebKit::InjectedBundleNodeHandle *this, void *a2)
{
  *this = &unk_1F10E8600;
  v3 = (this + 16);
  *(this + 2) = &unk_1F10E8640;
  *(this + 3) = &unk_1F10E8690;
  v4 = *(this + 7);
  if (v4)
  {
    *(v4 + 7) += 2;
    {
      WebKit::domNodeHandleCache(void)::cache = 0;
      *&dword_1ED6432F8 = 0;
    }

    WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::remove(v4, a2);
    if (*(v4 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v4);
    }

    else
    {
      *(v4 + 7) -= 2;
    }

    v5 = *(this + 7);
    *(this + 7) = 0;
    if (v5)
    {
      if (*(v5 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v5);
      }

      else
      {
        *(v5 + 7) -= 2;
      }
    }
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(v6 + 8) = 0;
    v7 = *(this + 6);
    *(this + 6) = 0;
    if (v7)
    {
      if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7);
        WTF::fastFree(v7, a2);
      }
    }
  }

  WebCore::ActiveDOMObject::~ActiveDOMObject(v3);
}

{
  WebKit::InjectedBundleNodeHandle::~InjectedBundleNodeHandle(this, a2);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::remove(uint64_t result, void *a2)
{
  v2 = result;
  v3 = dword_1ED6432F8++;
  if (v3 > *algn_1ED6432FC)
  {
    result = WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::removeNullReferences(&WebKit::domNodeHandleCache(void)::cache, a2);
  }

  v4 = *(v2 + 16);
  v5 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0xFFFFFFFFFFFFLL) != 0 && *((v4 & 0xFFFFFFFFFFFFLL) + 8) && WebKit::domNodeHandleCache(void)::cache)
  {
    v6 = *(WebKit::domNodeHandleCache(void)::cache - 8);
    v7 = (v5 + ~(v4 << 32)) ^ ((v5 + ~(v4 << 32)) >> 22);
    v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
    v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
    v10 = v6 & ((v9 >> 31) ^ v9);
    for (i = 1; ; ++i)
    {
      v12 = v10;
      v13 = *(WebKit::domNodeHandleCache(void)::cache + 16 * v10);
      if (v13 != -1)
      {
        if (!v13)
        {
          return result;
        }

        if (v13 == v5)
        {
          break;
        }
      }

      v10 = (v12 + i) & v6;
    }

    if (v12 != *(WebKit::domNodeHandleCache(void)::cache - 4))
    {
      result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>::customDeleteBucket(WebKit::domNodeHandleCache(void)::cache + 16 * v12, a2);
      v14 = WebKit::domNodeHandleCache(void)::cache;
      v15 = vadd_s32(*(WebKit::domNodeHandleCache(void)::cache - 16), 0xFFFFFFFF00000001);
      *(WebKit::domNodeHandleCache(void)::cache - 16) = v15;
      v16 = *(v14 - 4);
      if (6 * v15.i32[1] < v16 && v16 >= 9)
      {

        return WTF::HashTable<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::FastMalloc>::rehash(&WebKit::domNodeHandleCache(void)::cache, v16 >> 1, 0);
      }
    }
  }

  return result;
}

void non-virtual thunk toWebKit::InjectedBundleNodeHandle::~InjectedBundleNodeHandle(WebKit::InjectedBundleNodeHandle *this, void *a2)
{
  WebKit::InjectedBundleNodeHandle::~InjectedBundleNodeHandle((this - 16), a2);
}

{
  WebKit::InjectedBundleNodeHandle::~InjectedBundleNodeHandle((this - 24), a2);
}

{
  WebKit::InjectedBundleNodeHandle::~InjectedBundleNodeHandle((this - 16), a2);

  JUMPOUT(0x19EB14CF0);
}

{
  WebKit::InjectedBundleNodeHandle::~InjectedBundleNodeHandle((this - 24), a2);

  JUMPOUT(0x19EB14CF0);
}

void WebKit::InjectedBundleNodeHandle::document(WebKit::InjectedBundleNodeHandle *this@<X0>, WebKit::InjectedBundleNodeHandle **a2@<X8>)
{
  v2 = *(this + 7);
  if (v2)
  {
    v3 = *(*(v2 + 48) + 8);
    *(v3 + 7) += 2;
    WebKit::InjectedBundleNodeHandle::getOrCreate(v3, a2);
    if (*(v3 + 7) == 2)
    {

      WebCore::Node::removedLastRef(v3);
    }

    else
    {
      *(v3 + 7) -= 2;
    }
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t WebKit::InjectedBundleNodeHandle::elementBounds(WebKit::InjectedBundleNodeHandle *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 28);
  *(v1 + 28) = v2 + 2;
  if ((*(v1 + 32) & 8) == 0)
  {
    if (v2)
    {
      result = 0;
LABEL_6:
      *(v1 + 28) = v2;
      return result;
    }

    WebCore::Node::removedLastRef(v1);
    return 0;
  }

  result = WebCore::Element::boundsInRootViewSpace(v1);
  v2 = *(v1 + 28) - 2;
  if (*(v1 + 28) != 2)
  {
    goto LABEL_6;
  }

  v4 = result;
  WebCore::Node::removedLastRef(v1);
  return v4;
}

uint64_t WebKit::InjectedBundleNodeHandle::renderedImage@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, WebKit::WebImage **a5@<X8>)
{
  v6 = *(result + 56);
  if (!v6 || (v7 = *(*(v6 + 48) + 8), (v8 = *(v7 + 552)) == 0) || (v9 = *(v8 + 8)) == 0)
  {
    *a5 = 0;
    return result;
  }

  ++*(v9 + 16);
  v10 = *(v9 + 216);
  if (v10)
  {
    v14 = result;
    ++*(v10 + 2);
    *(v7 + 28) += 2;
    result = WebCore::Document::updateLayout();
    if (*(v7 + 28) == 2)
    {
      result = WebCore::Node::removedLastRef(v7);
    }

    else
    {
      *(v7 + 28) -= 2;
    }

    v15 = *(*(v14 + 56) + 72);
    if (v15)
    {
      ++*(v15 + 4);
      if (a3)
      {
        v16 = WebCore::RenderObject::absoluteBoundingBoxRect(v15, 0, 0);
        v18 = v17;
      }

      else
      {
        v52[0] = 0;
        v52[1] = 0;
        v19 = WebCore::RenderObject::paintingRootRect(v15, v52);
        v22 = v19 - (v21 & 0xFFFFFFC0);
        v23 = v22 + 32;
        v25 = HIDWORD(v19) - (v24 & 0xFFFFFFC0);
        v26 = v25 + 32;
        v16 = (((v22 + 32) >> 6) + v19 / 64) | ((((v25 + 32) >> 6) + SHIDWORD(v19) / 64) << 32);
        v28 = __OFADD__(v22, v27);
        v29 = v22 + v27;
        v30 = (v22 >> 31) + 0x7FFFFFFF;
        if (!v28)
        {
          v30 = v29;
        }

        v31 = (v30 / 64 - (v23 >> 6) + ((v30 - (v29 & 0xFFFFFFC0) + 32) >> 6));
        v28 = __OFADD__(v25, v20);
        v32 = v25 + v20;
        v33 = (v25 >> 31) + 0x7FFFFFFF;
        if (!v28)
        {
          v33 = v32;
        }

        v18 = v31 | ((v33 / 64 - (v26 >> 6) + ((v33 - (v32 & 0xFFFFFFC0) + 32) >> 6)) << 32);
      }

      WebCore::LocalFrameView::setNodeToDraw(v10, *(v14 + 56));
      v34 = HIDWORD(v18);
      if (v18 < 1 || SHIDWORD(v18) <= 0)
      {
        goto LABEL_35;
      }

      v36 = 1.0;
      if (*(a4 + 4) == 1)
      {
        v36 = *a4 / v18;
        v37 = roundf(*a4);
        if (v37 > -2147500000.0)
        {
          v38 = v37;
        }

        else
        {
          v38 = 0x80000000;
        }

        if (v37 < 2147500000.0)
        {
          LODWORD(v18) = v38;
        }

        else
        {
          LODWORD(v18) = 0x7FFFFFFF;
        }

        v39 = roundf(v36 * v34);
        if (v39 >= 2147500000.0)
        {
          LODWORD(v34) = 0x7FFFFFFF;
        }

        else if (v39 <= -2147500000.0)
        {
          LODWORD(v34) = 0x80000000;
        }

        else
        {
          LODWORD(v34) = v39;
        }
      }

      v40 = WebCore::LocalFrameView::frame(v10);
      v41 = *(*(*(v40 + 3) + 8) + 324);
      v54.i32[0] = (v41 * v18);
      v54.i32[1] = (v41 * v34);
      if (v54.i32[0] < 1 || (v41 * v34) <= 0)
      {
LABEL_35:
        *a5 = 0;
      }

      else
      {
        if (a2)
        {
          LODWORD(v44) = 1;
        }

        else if ((a2 & 0x2000) != 0)
        {
          LODWORD(v44) = 4;
        }

        else
        {
          v44 = (a2 >> 11) & 8;
        }

        v45 = WebCore::DestinationColorSpace::SRGB(v40);
        WebKit::WebImage::create(v45, &v54, v44, 0, &v53);
        if (WebKit::WebImage::context(v53))
        {
          v46 = WebKit::WebImage::context(v53);
          v50 = 0;
          v51 = v54;
          WebCore::FloatRect::FloatRect(v52, &v50);
          (*(*v46 + 288))(v46, v52);
          (*(*v46 + 704))(v46, v41);
          *v52 = v36;
          *(v52 + 1) = v36;
          (*(*v46 + 656))(v46, v52);
          v50 = (-v16 - (v16 & 0xFFFFFFFF00000000));
          WebCore::FloatPoint::FloatPoint(v52, &v50);
          v48.n128_u32[0] = HIDWORD(v52[0]);
          v47.n128_u32[0] = v52[0];
          (*(*v46 + 672))(v46, v47, v48);
          WebCore::LocalFrameView::paintBehavior(v10);
          WebCore::LocalFrameView::paintBehavior(v10);
          WebCore::LocalFrameView::setPaintBehavior();
          WebCore::LocalFrameView::paintContentsForSnapshot();
          WebCore::LocalFrameView::setPaintBehavior();
          *a5 = v53;
        }

        else
        {
          *a5 = 0;
          v49 = v53;
          v53 = 0;
          if (v49)
          {
            CFRelease(*(v49 + 1));
          }
        }
      }

      result = WebCore::LocalFrameView::setNodeToDraw(v10, 0);
      v43 = *(v15 + 4);
      if (!v43)
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      *(v15 + 4) = v43 - 1;
    }

    else
    {
      *a5 = 0;
    }

    if (*(v10 + 2) == 1)
    {
      result = (*(*v10 + 8))(v10);
    }

    else
    {
      --*(v10 + 2);
    }
  }

  else
  {
    *a5 = 0;
  }

  if (*(v9 + 16) == 1)
  {
    return (*(*v9 + 8))(v9);
  }

  --*(v9 + 16);
  return result;
}

uint64_t WebCore::makeSimpleRange<WebCore::VisiblePosition &,WebCore::VisiblePosition &>@<X0>(uint64_t a1@<X8>)
{
  WebCore::makeBoundaryPoint();
  result = WebCore::makeBoundaryPoint();
  if (v6 == 1 && (v4 & 1) != 0)
  {
    result = WebCore::SimpleRange::SimpleRange();
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }

  if (v4 == 1)
  {
    result = v3;
    if (v3)
    {
      if (*(v3 + 7) == 2)
      {
        result = WebCore::Node::removedLastRef(v3);
      }

      else
      {
        *(v3 + 7) -= 2;
      }
    }
  }

  if (v6 == 1)
  {
    result = v5;
    if (v5)
    {
      if (*(v5 + 7) == 2)
      {
        return WebCore::Node::removedLastRef(v5);
      }

      else
      {
        *(v5 + 7) -= 2;
      }
    }
  }

  return result;
}

uint64_t WebKit::InjectedBundleNodeHandle::setHTMLInputElementValueForUser(uint64_t this, const WTF::String *a2)
{
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(v2 + 28);
    *(v2 + 28) = v3 + 2;
    if ((*(v2 + 32) & 0x10) != 0 && *(*(v2 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
    {
      this = WebCore::HTMLInputElement::setValueForUser(v2, a2);
      v3 = *(v2 + 28) - 2;
      if (*(v2 + 28) != 2)
      {
LABEL_5:
        *(v2 + 28) = v3;
        return this;
      }
    }

    else if (v3)
    {
      goto LABEL_5;
    }

    return WebCore::Node::removedLastRef(v2);
  }

  return this;
}

uint64_t WebKit::InjectedBundleNodeHandle::setHTMLInputElementSpellcheckEnabled(WebKit::InjectedBundleNodeHandle *this, int a2)
{
  result = *(this + 7);
  if (result)
  {
    v3 = *(result + 28);
    *(result + 28) = v3 + 2;
    if ((*(result + 32) & 0x10) != 0 && *(*(result + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
    {
      if (a2)
      {
        v4 = 0;
      }

      else
      {
        v4 = 0x8000000;
      }

      *(result + 238) = *(result + 238) & 0xF7FFFFFF | v4;
      if (v3)
      {
        goto LABEL_8;
      }
    }

    else if (v3)
    {
LABEL_8:
      *(result + 28) = v3;
      return result;
    }

    return WebCore::Node::removedLastRef(result);
  }

  return result;
}

uint64_t WebKit::InjectedBundleNodeHandle::isHTMLInputElementAutoFilled(WebKit::InjectedBundleNodeHandle *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 28);
  *(v1 + 28) = v2 + 2;
  if ((*(v1 + 32) & 0x10) != 0 && *(*(v1 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v3 = *(v1 + 239) & 1;
    if (!v2)
    {
      v5 = *(v1 + 239) & 1;
      WebCore::Node::removedLastRef(v1);
      return v5;
    }
  }

  else
  {
    if (!v2)
    {
      WebCore::Node::removedLastRef(v1);
      return 0;
    }

    v3 = 0;
  }

  *(v1 + 28) = v2;
  return v3;
}

uint64_t WebKit::InjectedBundleNodeHandle::isHTMLInputElementAutoFilledAndViewable(WebKit::InjectedBundleNodeHandle *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 28);
  *(v1 + 28) = v2 + 2;
  if ((*(v1 + 32) & 0x10) != 0 && *(*(v1 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v3 = (*(v1 + 239) >> 1) & 1;
    if (!v2)
    {
      v5 = (*(v1 + 239) >> 1) & 1;
      WebCore::Node::removedLastRef(v1);
      return v5;
    }
  }

  else
  {
    if (!v2)
    {
      WebCore::Node::removedLastRef(v1);
      return 0;
    }

    v3 = 0;
  }

  *(v1 + 28) = v2;
  return v3;
}

uint64_t WebKit::InjectedBundleNodeHandle::isHTMLInputElementAutoFilledAndObscured(WebKit::InjectedBundleNodeHandle *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 28);
  *(v1 + 28) = v2 + 2;
  if ((*(v1 + 32) & 0x10) != 0 && *(*(v1 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v3 = (*(v1 + 239) >> 2) & 1;
    if (!v2)
    {
      v5 = (*(v1 + 239) >> 2) & 1;
      WebCore::Node::removedLastRef(v1);
      return v5;
    }
  }

  else
  {
    if (!v2)
    {
      WebCore::Node::removedLastRef(v1);
      return 0;
    }

    v3 = 0;
  }

  *(v1 + 28) = v2;
  return v3;
}

uint64_t WebKit::InjectedBundleNodeHandle::setHTMLInputElementAutoFilled(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 28);
    *(v1 + 28) = v2 + 2;
    if ((*(v1 + 32) & 0x10) != 0 && *(*(v1 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
    {
      this = WebCore::HTMLInputElement::setAutofilled(v1);
      v2 = *(v1 + 28) - 2;
      if (*(v1 + 28) != 2)
      {
LABEL_5:
        *(v1 + 28) = v2;
        return this;
      }
    }

    else if (v2)
    {
      goto LABEL_5;
    }

    return WebCore::Node::removedLastRef(v1);
  }

  return this;
}

uint64_t WebKit::InjectedBundleNodeHandle::setHTMLInputElementAutoFilledAndViewable(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 28);
    *(v1 + 28) = v2 + 2;
    if ((*(v1 + 32) & 0x10) != 0 && *(*(v1 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
    {
      this = WebCore::HTMLInputElement::setAutofilledAndViewable(v1);
      v2 = *(v1 + 28) - 2;
      if (*(v1 + 28) != 2)
      {
LABEL_5:
        *(v1 + 28) = v2;
        return this;
      }
    }

    else if (v2)
    {
      goto LABEL_5;
    }

    return WebCore::Node::removedLastRef(v1);
  }

  return this;
}

uint64_t WebKit::InjectedBundleNodeHandle::setHTMLInputElementAutoFilledAndObscured(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 28);
    *(v1 + 28) = v2 + 2;
    if ((*(v1 + 32) & 0x10) != 0 && *(*(v1 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
    {
      this = WebCore::HTMLInputElement::setAutofilledAndObscured(v1);
      v2 = *(v1 + 28) - 2;
      if (*(v1 + 28) != 2)
      {
LABEL_5:
        *(v1 + 28) = v2;
        return this;
      }
    }

    else if (v2)
    {
      goto LABEL_5;
    }

    return WebCore::Node::removedLastRef(v1);
  }

  return this;
}

BOOL WebKit::InjectedBundleNodeHandle::isHTMLInputElementAutoFillButtonEnabled(WebKit::InjectedBundleNodeHandle *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 28);
  *(v1 + 28) = v2 + 2;
  if ((*(v1 + 32) & 0x10) != 0 && *(*(v1 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v3 = (*(v1 + 239) & 0x38) != 0;
    if (!v2)
    {
      v5 = (*(v1 + 239) & 0x38) != 0;
      WebCore::Node::removedLastRef(v1);
      return v5;
    }
  }

  else
  {
    if (!v2)
    {
      WebCore::Node::removedLastRef(v1);
      return 0;
    }

    v3 = 0;
  }

  *(v1 + 28) = v2;
  return v3;
}

uint64_t WebKit::InjectedBundleNodeHandle::setHTMLInputElementAutoFillButtonEnabled(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    v2 = *(v1 + 28);
    *(v1 + 28) = v2 + 2;
    if ((*(v1 + 32) & 0x10) != 0 && *(*(v1 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
    {
      result = WebCore::HTMLInputElement::setAutofillButtonType();
      v2 = *(v1 + 28) - 2;
      if (*(v1 + 28) != 2)
      {
LABEL_5:
        *(v1 + 28) = v2;
        return result;
      }
    }

    else if (v2)
    {
      goto LABEL_5;
    }

    return WebCore::Node::removedLastRef(v1);
  }

  return result;
}

uint64_t WebKit::InjectedBundleNodeHandle::htmlInputElementAutoFillButtonType(WebKit::InjectedBundleNodeHandle *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 28);
  *(v1 + 28) = v2 + 2;
  if ((*(v1 + 32) & 0x10) != 0 && *(*(v1 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v3 = (*(v1 + 238) >> 11) & 7;
    if (!v2)
    {
      v5 = (*(v1 + 238) >> 11) & 7;
      WebCore::Node::removedLastRef(v1);
      return v5;
    }
  }

  else
  {
    if (!v2)
    {
      WebCore::Node::removedLastRef(v1);
      return 0;
    }

    v3 = 0;
  }

  *(v1 + 28) = v2;
  return v3;
}

uint64_t WebKit::InjectedBundleNodeHandle::htmlInputElementLastAutoFillButtonType(WebKit::InjectedBundleNodeHandle *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 28);
  *(v1 + 28) = v2 + 2;
  if ((*(v1 + 32) & 0x10) != 0 && *(*(v1 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v3 = *(v1 + 240) & 7;
    if (!v2)
    {
      v5 = *(v1 + 240) & 7;
      WebCore::Node::removedLastRef(v1);
      return v5;
    }
  }

  else
  {
    if (!v2)
    {
      WebCore::Node::removedLastRef(v1);
      return 0;
    }

    v3 = 0;
  }

  *(v1 + 28) = v2;
  return v3;
}

uint64_t WebKit::InjectedBundleNodeHandle::setAutoFillAvailable(WebKit::InjectedBundleNodeHandle *this, int a2)
{
  result = *(this + 7);
  if (result)
  {
    v3 = *(result + 28);
    *(result + 28) = v3 + 2;
    if ((*(result + 32) & 0x10) != 0 && *(*(result + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
    {
      if (a2)
      {
        v4 = 0x80000;
      }

      else
      {
        v4 = 0;
      }

      *(result + 238) = *(result + 238) & 0xFFF7FFFF | v4;
      if (v3)
      {
        goto LABEL_8;
      }
    }

    else if (v3)
    {
LABEL_8:
      *(result + 28) = v3;
      return result;
    }

    return WebCore::Node::removedLastRef(result);
  }

  return result;
}

uint64_t WebKit::InjectedBundleNodeHandle::htmlInputElementLastChangeWasUserEdit(WebKit::InjectedBundleNodeHandle *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 28);
  *(v1 + 28) = v2 + 2;
  if ((*(v1 + 32) & 0x10) == 0 || *(*(v1 + 104) + 24) != *(*MEMORY[0x1E69E2C70] + 24))
  {
    if (v2)
    {
      result = 0;
      goto LABEL_5;
    }

    WebCore::Node::removedLastRef(v1);
    return 0;
  }

  result = WebCore::HTMLTextFormControlElement::lastChangeWasUserEdit(v1);
  v2 = *(v1 + 28) - 2;
  if (*(v1 + 28) != 2)
  {
LABEL_5:
    *(v1 + 28) = v2;
    return result;
  }

  v4 = result;
  WebCore::Node::removedLastRef(v1);
  return v4;
}

uint64_t WebKit::InjectedBundleNodeHandle::htmlTextAreaElementLastChangeWasUserEdit(WebKit::InjectedBundleNodeHandle *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 7);
  *(v1 + 7) = v2 + 2;
  if ((*(v1 + 16) & 0x10) != 0 && *(*(v1 + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v5 = v1;
    v3 = WebCore::HTMLTextFormControlElement::lastChangeWasUserEdit(v1);
    v1 = v5;
    v2 = *(v5 + 7) - 2;
    if (*(v5 + 7) == 2)
    {
      v6 = v3;
      WebCore::Node::removedLastRef(v1);
      return v6;
    }
  }

  else
  {
    if (!v2)
    {
      WebCore::Node::removedLastRef(v1);
      return 0;
    }

    v3 = 0;
  }

  *(v1 + 7) = v2;
  return v3;
}

uint64_t WebKit::InjectedBundleNodeHandle::isTextField(WebKit::InjectedBundleNodeHandle *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 28);
  *(v1 + 28) = v2 + 2;
  if ((*(v1 + 32) & 0x10) == 0 || *(*(v1 + 104) + 24) != *(*MEMORY[0x1E69E2C70] + 24))
  {
    if (v2)
    {
      result = 0;
      goto LABEL_5;
    }

    WebCore::Node::removedLastRef(v1);
    return 0;
  }

  result = WebCore::HTMLInputElement::isTextField(v1);
  v2 = *(v1 + 28) - 2;
  if (*(v1 + 28) != 2)
  {
LABEL_5:
    *(v1 + 28) = v2;
    return result;
  }

  v4 = result;
  WebCore::Node::removedLastRef(v1);
  return v4;
}

uint64_t WebKit::InjectedBundleNodeHandle::isSelectableTextNode(WebKit::InjectedBundleNodeHandle *this)
{
  v1 = *(*(this + 7) + 72);
  if (!v1 || (*(v1 + 45) & 2) == 0)
  {
    return 0;
  }

  ++*(v1 + 16);
  v2 = WebCore::RenderStyle::usedUserSelect((*(*(v1 + 32) + 8) + 80));
  v3 = *(v1 + 16);
  if (v3)
  {
    result = v2 != 0;
    *(v1 + 16) = v3 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

WebCore::Node *WebKit::InjectedBundleNodeHandle::htmlTableCellElementCellAbove@<X0>(WebCore::Node *this@<X0>, WebKit::InjectedBundleNodeHandle **a2@<X8>)
{
  v3 = *(this + 7);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + 28);
  *(v3 + 28) = v4 + 2;
  if ((*(v3 + 32) & 0x10) == 0 || (v5 = *(*(v3 + 104) + 24), v5 != *(*MEMORY[0x1E69E2B10] + 24)) && v5 != *(*MEMORY[0x1E69E2B18] + 24))
  {
    if (v4)
    {
      *(v3 + 28) = v4;
    }

    else
    {
      this = WebCore::Node::removedLastRef(v3);
    }

LABEL_7:
    *a2 = 0;
    return this;
  }

  WebCore::HTMLTableCellElement::protectedCellAbove(&v6, v3);
  this = v6;
  if (v6)
  {
    WebKit::InjectedBundleNodeHandle::getOrCreate(v6, a2);
    this = v6;
    v6 = 0;
    if (this)
    {
      if (*(this + 7) == 2)
      {
        this = WebCore::Node::removedLastRef(this);
      }

      else
      {
        *(this + 7) -= 2;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  if (*(v3 + 28) == 2)
  {
    return WebCore::Node::removedLastRef(v3);
  }

  *(v3 + 28) -= 2;
  return this;
}

uint64_t WebKit::InjectedBundleNodeHandle::documentFrame@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = *(v2 + 28);
  *(v2 + 28) = v3 + 2;
  if ((*(v2 + 32) & 0xF000) != 0x9000)
  {
    if (v3)
    {
      *(v2 + 28) = v3;
    }

    else
    {
      v6 = v2;
      v7 = a2;
      this = WebCore::Node::removedLastRef(v6);
      a2 = v7;
    }

LABEL_11:
    *a2 = 0;
    return this;
  }

  v4 = *(v2 + 552);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    ++v5[4];
    this = WebKit::WebFrame::fromCoreFrame(v5, a2);
    if (v5[4] == 1)
    {
      this = (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  else
  {
    *a2 = 0;
  }

  if (*(v2 + 28) == 2)
  {

    return WebCore::Node::removedLastRef(v2);
  }

  else
  {
    *(v2 + 28) -= 2;
  }

  return this;
}

uint64_t WebKit::InjectedBundleNodeHandle::htmlIFrameElementContentFrame@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  if (v2 && (*(v2 + 32) & 0x10) != 0 && *(*(v2 + 104) + 24) == *(*MEMORY[0x1E69E2D78] + 24))
  {
    *(v2 + 28) += 2;
    v3 = *(v2 + 120);
    if (v3 && (v4 = *(v3 + 8)) != 0)
    {
      ++v4[4];
      this = WebKit::WebFrame::fromCoreFrame(v4, a2);
      if (v4[4] == 1)
      {
        this = (*(*v4 + 8))(v4);
      }

      else
      {
        --v4[4];
      }
    }

    else
    {
      *a2 = 0;
    }

    if (*(v2 + 28) == 2)
    {

      return WebCore::Node::removedLastRef(v2);
    }

    else
    {
      *(v2 + 28) -= 2;
    }
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

uint64_t WebKit::InjectedBundleNodeHandle::stop(uint64_t this, void *a2)
{
  v2 = *(this + 56);
  if (v2)
  {
    v3 = this;
    *(v2 + 7) += 2;
    {
      WebKit::domNodeHandleCache(void)::cache = 0;
      *&dword_1ED6432F8 = 0;
    }

    WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::remove(v2, a2);
    this = *(v3 + 56);
    *(v3 + 56) = 0;
    if (this)
    {
      if (*(this + 28) == 2)
      {
        this = WebCore::Node::removedLastRef(this);
      }

      else
      {
        *(this + 28) -= 2;
      }
    }

    if (*(v2 + 7) == 2)
    {

      return WebCore::Node::removedLastRef(v2);
    }

    else
    {
      *(v2 + 7) -= 2;
    }
  }

  return this;
}

uint64_t *WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::InjectedBundleNodeHandle&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D85DFF4);
  }

  v7 = result;
  v8 = *result;
  if (*result || (result = WTF::HashTable<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::FastMalloc>::expand(result, 0), (v8 = *v7) != 0))
  {
    v9 = 0;
    v10 = *(v8 - 8);
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  v11 = 0;
  v12 = *a2;
  v13 = ~(*a2 << 32) + *a2;
  v14 = 9 * (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) ^ (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) >> 8));
  v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
  v16 = (v15 >> 31) ^ v15;
  for (i = 1; ; ++i)
  {
    v18 = v16 & v10;
    v19 = (v8 + 16 * v18);
    v20 = *v19;
    if (*v19 == -1)
    {
      v11 = (v8 + 16 * v18);
      goto LABEL_8;
    }

    if (!v20)
    {
      if (v11)
      {
        *v11 = 0;
        v11[1] = 0;
        --*(*v7 - 16);
        v12 = *a2;
        v19 = v11;
      }

      *a2 = 0;
      v21 = *v19;
      *v19 = v12;
      if (v21)
      {
        WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v21, a2);
      }

      if (!*(a3 + 48))
      {
        v22 = WTF::fastCompactMalloc(0x10);
        *v22 = 1;
        *(v22 + 8) = a3;
        v23 = *(a3 + 48);
        *(a3 + 48) = v22;
        if (v23)
        {
          if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v23);
            WTF::fastFree(v23, a2);
          }
        }
      }

      v24 = *(a3 + 48);
      atomic_fetch_add(v24, 1u);
      result = v19[1];
      v19[1] = v24;
      if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, a2);
      }

      v25 = *v7;
      if (*v7)
      {
        v26 = *(v25 - 12) + 1;
      }

      else
      {
        v26 = 1;
      }

      *(v25 - 12) = v26;
      v27 = (*(v25 - 16) + v26);
      v28 = *(v25 - 4);
      if (v28 > 0x400)
      {
        if (v28 > 2 * v27)
        {
          goto LABEL_23;
        }
      }

      else if (3 * v28 > 4 * v27)
      {
LABEL_23:
        v29 = v25 + 16 * v28;
        v30 = 1;
        goto LABEL_24;
      }

      result = WTF::HashTable<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::FastMalloc>::expand(v7, v19);
      v19 = result;
      v25 = *v7;
      if (*v7)
      {
        v28 = *(v25 - 4);
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_23;
    }

    if (v20 == v12)
    {
      break;
    }

LABEL_8:
    v16 = i + v18;
  }

  if (v9)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v8 - 4);
  }

  v30 = 0;
  v29 = v8 + 16 * v31;
LABEL_24:
  *a4 = v19;
  *(a4 + 8) = v29;
  *(a4 + 16) = v30;
  return result;
}

uint64_t WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::removeNullReferences(uint64_t a1, void *a2)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_20;
  }

  v4 = *(v3 - 4);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 16 * v4 - 16;
    do
    {
      if ((*v6 + 1) >= 2 && !*(*v6 + 8))
      {
        WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>::customDeleteBucket(v6, a2);
        ++v5;
      }

      v6 -= 16;
      --v4;
    }

    while (v4);
    v3 = *a1;
    if (v5)
    {
      v12 = *(v3 - 12) - v5;
      *(v3 - 16) += v5;
      *(v3 - 12) = v12;
      result = 1;
      goto LABEL_11;
    }

    if (!v3)
    {
LABEL_20:
      LODWORD(v3) = 0;
      result = 0;
      *(a1 + 8) = 0;
      goto LABEL_17;
    }
  }

  result = 0;
LABEL_11:
  v8 = *(v3 - 4);
  if (6 * *(v3 - 12) < v8 && v8 > 8)
  {
    v11 = result;
    WTF::HashTable<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
    result = v11;
    v3 = *a1;
    *(a1 + 8) = 0;
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *(a1 + 8) = 0;
  }

  LODWORD(v3) = *(v3 - 12);
  if (v3 > 0x7FFFFFFE)
  {
    v10 = -2;
    goto LABEL_19;
  }

LABEL_17:
  v10 = 2 * v3;
LABEL_19:
  *(a1 + 12) = v10;
  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::FastMalloc>::shrinkToBestSize(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_21;
  }

  v1 = *(*a1 - 12);
  if (v1 <= 1)
  {
LABEL_3:
    v2 = v1;
    v3 = 1;
    goto LABEL_7;
  }

  v4 = __clz(v1 - 1);
  if (!v4)
  {
    __break(1u);
LABEL_21:
    LODWORD(v1) = 0;
    goto LABEL_3;
  }

  v3 = (1 << -v4);
  if (v1 <= 0x400)
  {
    v2 = *(*a1 - 12);
LABEL_7:
    if (3 * v3 > 4 * v2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 <= 2 * v1)
  {
LABEL_8:
    LODWORD(v3) = 2 * v3;
  }

LABEL_9:
  if (v3 > 0x400)
  {
    v5 = 0.416666667;
  }

  else
  {
    v5 = 0.604166667;
  }

  if (v3 * v5 <= v1)
  {
    LODWORD(v3) = 2 * v3;
  }

  if (v3 <= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v3;
  }

  return WTF::HashTable<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::FastMalloc>::rehash(a1, v6, 0);
}

unsigned int *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>::customDeleteBucket(uint64_t a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  result = *(a1 + 8);
  *a1 = -1;
  *(a1 + 8) = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, atomic_uint **a3)
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
    v13 = v7;
    do
    {
      v14 = (v6 + 16 * v11);
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
        {
          v18 = *a1;
          if (*a1)
          {
            v19 = *(v18 - 8);
          }

          else
          {
            v19 = 0;
          }

          v20 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
          v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
          v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
          v23 = v19 & ((v22 >> 31) ^ v22);
          v24 = 1;
          do
          {
            v25 = v23;
            v26 = *(v18 + 16 * v23);
            v23 = (v23 + v24++) & v19;
          }

          while (v26);
          v27 = v18 + 16 * v25;
          v28 = *(v27 + 8);
          *(v27 + 8) = 0;
          if (v28 && atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v28);
            WTF::fastFree(v28, v10);
          }

          v29 = *v27;
          *v27 = 0;
          if (v29)
          {
            WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v29, v10);
          }

          v30 = *v14;
          *v14 = 0;
          *v27 = v30;
          v31 = v14[1];
          v14[1] = 0;
          *(v27 + 8) = v31;
          v32 = v14[1];
          v14[1] = 0;
          if (v32 && atomic_fetch_add(v32, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v32);
            WTF::fastFree(v32, v10);
          }

          v33 = *v14;
          *v14 = 0;
          if (v33)
          {
            WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v33, v10);
          }

          if (v14 == a3)
          {
            v12 = v27;
          }
        }

        else
        {
          v16 = v14[1];
          v14[1] = 0;
          if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v16);
            WTF::fastFree(v16, v10);
          }

          v17 = *v14;
          *v14 = 0;
          if (v17)
          {
            WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v17, v10);
          }
        }
      }

      ++v11;
    }

    while (v11 != v13);
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

uint64_t WTF::HashTable<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::FastMalloc>::expand(uint64_t *a1, atomic_uint **a2)
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

  return WTF::HashTable<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

atomic_uint *WTF::WeakPtrFactoryWithBitField<WebCore::EventTarget,WebCore::WeakPtrImplWithEventTargetData>::initializeIfNeeded(atomic_uint *result, uint64_t a2)
{
  if ((*result & 0xFFFFFFFFFFFFLL) == 0)
  {
    v3 = result;
    v5 = WTF::fastCompactMalloc(0x28);
    *v5 = 1;
    *(v5 + 8) = a2;
    WebCore::EventListenerMap::EventListenerMap((v5 + 16));
    v7 = *v3;
    *v3 = *v3 & 0xFFFF000000000000 | v5;
    result = (v7 & 0xFFFFFFFFFFFFLL);
    if ((v7 & 0xFFFFFFFFFFFFLL) != 0)
    {

      return WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(result, v6);
    }
  }

  return result;
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(atomic_uint *result, void *a2)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v6 = v2;
    v4 = result;
    atomic_store(add, result);
    WTF::Vector<std::pair<WTF::AtomString,WTF::Vector<WTF::RefPtr<WebCore::RegisteredEventListener,WTF::RawPtrTraits<WebCore::RegisteredEventListener>,WTF::DefaultRefDerefTraits<WebCore::RegisteredEventListener>>,1ul,WTF::CrashOnOverflow,2ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,4ul,WTF::FastMalloc>::~Vector((result + 4), a2);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WTF::AtomString,WTF::Vector<WTF::RefPtr<WebCore::RegisteredEventListener,WTF::RawPtrTraits<WebCore::RegisteredEventListener>,WTF::DefaultRefDerefTraits<WebCore::RegisteredEventListener>>,1ul,WTF::CrashOnOverflow,2ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,4ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 32 * v3;
    v5 = *a1 + 8;
    do
    {
      WTF::Vector<WTF::RefPtr<WebCore::RegisteredEventListener,WTF::RawPtrTraits<WebCore::RegisteredEventListener>,WTF::DefaultRefDerefTraits<WebCore::RegisteredEventListener>>,1ul,WTF::CrashOnOverflow,2ul,WTF::FastMalloc>::~Vector(v5, a2);
      v6 = *(v5 - 8);
      *(v5 - 8) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v5 += 32;
      v4 -= 32;
    }

    while (v4);
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

uint64_t WTF::Vector<WTF::RefPtr<WebCore::RegisteredEventListener,WTF::RawPtrTraits<WebCore::RegisteredEventListener>,WTF::DefaultRefDerefTraits<WebCore::RegisteredEventListener>>,1ul,WTF::CrashOnOverflow,2ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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
        WTF::RefCounted<WebCore::RegisteredEventListener>::deref(v6, a2);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  v7 = *a1;
  if (a1 + 16 != *a1 && v7 != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::RefCounted<WebCore::RegisteredEventListener>::deref(uint64_t result, void *a2)
{
  if (*result == 1)
  {
    v2 = *(result + 8);
    *(result + 8) = 0;
    if (v2)
    {
      if (v2[4] == 1)
      {
        v3 = result;
        (*(*v2 + 8))(v2);
        result = v3;
      }

      else
      {
        --v2[4];
      }
    }

    if (*result == 1)
    {

      return WTF::fastFree(result, a2);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>,WTF::HashTableIteratorAdapter<WTF::HashTable<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashMap<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WebCore::WeakPtrImplWithEventTargetData,WTF::RawPtrTraits<WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultRefDerefTraits<WebCore::WeakPtrImplWithEventTargetData>>,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::PeekPtrType,WTF::WeakHashMap<WebCore::Node,WTF::WeakRef<WebKit::InjectedBundleNodeHandle,WTF::DefaultWeakPtrImpl>,WebCore::WeakPtrImplWithEventTargetData>::PeekType>::skipEmptyBuckets(void *result)
{
  v1 = result[3];
  v2 = result[1];
  while (v2 != v1 && !*(*v2 + 8))
  {
    v2 += 16;
    result[1] = v2;
    v3 = result[2];
    while (v2 != v3 && (*v2 + 1) <= 1)
    {
      v2 += 16;
      result[1] = v2;
    }
  }

  return result;
}

uint64_t *WebKit::InjectedBundleRangeHandle::getOrCreate@<X0>(WebCore::JSRange **this@<X0>, const OpaqueJSContext *a2@<X1>, JSValue a3@<X2>, uint64_t *a4@<X8>)
{
  result = WebCore::JSRange::toWrapped(this[7], a2, a3);
  if (result)
  {
    v6 = result;
    ++*(result + 2);
    result = WebKit::InjectedBundleRangeHandle::getOrCreate(result, a4);
    if (*(v6 + 2) == 1)
    {
      v7 = *(*v6 + 8);

      return v7(v6);
    }

    else
    {
      --*(v6 + 2);
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t *WebKit::InjectedBundleRangeHandle::getOrCreate@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  if (!this)
  {
    v20 = 0;
    goto LABEL_40;
  }

  v4 = this;
  if ((_MergedGlobals_49 & 1) == 0)
  {
    qword_1ED641B18 = 0;
    _MergedGlobals_49 = 1;
  }

  if (!this[2])
  {
    v6 = WTF::fastCompactMalloc(0x10);
    *v6 = 1;
    *(v6 + 8) = v4;
    v7 = v4[2];
    v4[2] = v6;
    if (v7)
    {
      if (*v7 == 1)
      {
        WTF::fastFree(v7, v5);
      }

      else
      {
        --*v7;
      }
    }
  }

  v8 = v4[2];
  ++*v8;
  if (v8 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D85EB44);
  }

  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19D85EB64);
  }

  v9 = qword_1ED641B18;
  if (qword_1ED641B18 || (WTF::HashTable<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::expand(), (v9 = qword_1ED641B18) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = WTF::PtrHashBase<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,true>::hash(v8[1]);
  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v11 & v10;
    v16 = (v9 + 16 * (v11 & v10));
    v17 = *v16;
    if (*v16 == -1)
    {
      v13 = (v9 + 16 * v15);
      goto LABEL_21;
    }

    if (!v17)
    {
      if (v13)
      {
        *v13 = 0;
        v13[1] = 0;
        --*(qword_1ED641B18 - 16);
        *v13 = v8;
      }

      else
      {
        *v16 = v8;
        v13 = v16;
      }

      v20 = API::Object::newObject(0x20uLL, 144);
      v21 = API::Object::Object(v20);
      *(v21 + 2) = 0;
      *v21 = &unk_1F10E86E0;
      ++*(v4 + 2);
      *(v21 + 3) = v4;
      v23 = WTF::fastCompactMalloc(0x10);
      *v23 = 1;
      *(v23 + 8) = v20;
      v24 = *(v20 + 16);
      *(v20 + 16) = v23;
      if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v24);
        WTF::fastFree(v24, v22);
      }

      v25 = *(v20 + 16);
      atomic_fetch_add(v25, 1u);
      this = v13[1];
      v13[1] = v25;
      if (this && atomic_fetch_add(this, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this);
        this = WTF::fastFree(this, v22);
      }

      v26 = qword_1ED641B18;
      if (qword_1ED641B18)
      {
        v27 = *(qword_1ED641B18 - 12) + 1;
      }

      else
      {
        v27 = 1;
      }

      *(qword_1ED641B18 - 12) = v27;
      v28 = (*(v26 - 16) + v27);
      v29 = *(v26 - 4);
      if (v29 > 0x400)
      {
        if (v29 > 2 * v28)
        {
          goto LABEL_40;
        }
      }

      else if (3 * v29 > 4 * v28)
      {
        goto LABEL_40;
      }

      this = WTF::HashTable<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::expand();
      goto LABEL_40;
    }

    v18 = v17[1];
    if (!v18)
    {
      goto LABEL_52;
    }

    v19 = v8[1];
    if (!v19)
    {
      __break(0xC471u);
      JUMPOUT(0x19D85EB24);
    }

    if (v19 == v18)
    {
      break;
    }

LABEL_21:
    v11 = i + v15;
  }

  if (*v8 == 1)
  {
    WTF::fastFree(v8, v12);
  }

  else
  {
    --*v8;
  }

  v20 = v16[1][1];
  if (!v20)
  {
LABEL_52:
    __break(0xC471u);
    JUMPOUT(0x19D85EB04);
  }

  this = CFRetain(*(v20 + 8));
LABEL_40:
  *a2 = v20;
  return this;
}

void WebKit::InjectedBundleRangeHandle::~InjectedBundleRangeHandle(WebKit::InjectedBundleRangeHandle *this, void *a2)
{
  *this = &unk_1F10E86E0;
  if ((_MergedGlobals_49 & 1) == 0)
  {
    qword_1ED641B18 = 0;
    _MergedGlobals_49 = 1;
    v4 = (this + 24);
LABEL_18:
    v3 = *v4;
    goto LABEL_19;
  }

  v4 = (this + 24);
  v3 = *(this + 3);
  if (qword_1ED641B18)
  {
    v5 = *(qword_1ED641B18 - 8);
    v6 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    for (i = 1; ; ++i)
    {
      v11 = v9;
      v12 = *(qword_1ED641B18 + 16 * v9);
      if (v12 != -1)
      {
        if (!v12)
        {
          goto LABEL_18;
        }

        v13 = *(v12 + 1);
        if (!v13)
        {
          __break(0xC471u);
          return;
        }

        if (v13 == v3)
        {
          break;
        }
      }

      v9 = (v11 + i) & v5;
    }

    if (v11 != *(qword_1ED641B18 - 4))
    {
      v14 = (qword_1ED641B18 + 16 * v11);
      *v14 = 0;
      if (*v12 == 1)
      {
        WTF::fastFree(v12, a2);
      }

      else
      {
        --*v12;
      }

      v15 = v14[1];
      *v14 = -1;
      v14[1] = 0;
      if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        WTF::fastFree(v15, a2);
      }

      v16 = qword_1ED641B18;
      v17 = vadd_s32(*(qword_1ED641B18 - 16), 0xFFFFFFFF00000001);
      *(qword_1ED641B18 - 16) = v17;
      v18 = *(v16 - 4);
      if (6 * v17.i32[1] < v18 && v18 >= 9)
      {
        WTF::HashTable<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(v18 >> 1);
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  *v4 = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  v20 = *(this + 2);
  if (v20)
  {
    *(v20 + 8) = 0;
    v21 = *(this + 2);
    *(this + 2) = 0;
    if (v21)
    {
      if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v21);
        WTF::fastFree(v21, a2);
      }
    }
  }
}

{
  WebKit::InjectedBundleRangeHandle::~InjectedBundleRangeHandle(this, a2);

  JUMPOUT(0x19EB14CF0);
}

void WebKit::InjectedBundleRangeHandle::document(WebKit::InjectedBundleRangeHandle *this@<X0>, WebKit::InjectedBundleNodeHandle **a2@<X8>)
{
  v2 = *(*(*(*(this + 3) + 32) + 48) + 8);
  *(v2 + 7) += 2;
  WebKit::InjectedBundleNodeHandle::getOrCreate(v2, a2);
  if (*(v2 + 7) == 2)
  {

    WebCore::Node::removedLastRef(v2);
  }

  else
  {
    *(v2 + 7) -= 2;
  }
}

uint64_t WebKit::InjectedBundleRangeHandle::boundingRectInWindowCoordinates(WebKit::InjectedBundleRangeHandle *this)
{
  WebCore::makeSimpleRange();
  v1 = *(*(*(v18 + 6) + 8) + 552);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    ++*(v2 + 16);
    v3 = *(v2 + 216);
    if (v3)
    {
      ++*(v3 + 2);
      WebCore::RenderObject::absoluteBorderAndTextRects();
      WebCore::unionRectIgnoringZeroRects();
      v16[0] = v4;
      v16[1] = v5;
      v16[2] = v6;
      v16[3] = v7;
      v17[0] = WebCore::enclosingIntRect(v16, v8);
      v17[1] = v9;
      v11 = WebCore::ScrollView::contentsToWindow(v3, v17);
      if (v15)
      {
        WTF::fastFree(v15, v10);
      }

      if (*(v3 + 2) == 1)
      {
        (*(*v3 + 8))(v3);
      }

      else
      {
        --*(v3 + 2);
      }
    }

    else
    {
      v11 = 0;
    }

    if (*(v2 + 16) == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --*(v2 + 16);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v19;
  v19 = 0;
  if (v12)
  {
    if (*(v12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v12);
    }

    else
    {
      *(v12 + 7) -= 2;
    }
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    if (*(v13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v13);
    }

    else
    {
      *(v13 + 7) -= 2;
    }
  }

  return v11;
}

WebCore::Node *WebKit::InjectedBundleRangeHandle::renderedImage@<X0>(char a1@<W1>, WebKit::WebImage **a2@<X8>)
{
  WebCore::makeSimpleRange();
  v4 = *(*(v65 + 6) + 8);
  v5 = *(v4 + 28);
  *(v4 + 28) = v5 + 2;
  v6 = *(v4 + 552);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    ++*(v7 + 16);
    v8 = *(v7 + 216);
    if (v8)
    {
      ++*(v8 + 2);
      v9 = *(*(v7 + 224) + 3208);
      v10 = *(v9 + 56);
      if (v10)
      {
        *(v10 + 28) += 2;
      }

      v46 = v10;
      v47 = *(v9 + 64);
      v48 = *(v9 + 68);
      v11 = *(v9 + 72);
      if (v11)
      {
        *(v11 + 28) += 2;
      }

      v49 = v11;
      v50 = *(v9 + 80);
      v51 = *(v9 + 84);
      v12 = *(v9 + 88);
      if (v12)
      {
        *(v12 + 28) += 2;
      }

      v52 = v12;
      v53 = *(v9 + 96);
      v54 = *(v9 + 100);
      v13 = *(v9 + 104);
      if (v13)
      {
        *(v13 + 28) += 2;
      }

      v55 = v13;
      v56 = *(v9 + 112);
      v57 = *(v9 + 116);
      v14 = *(v9 + 120);
      if (v14)
      {
        *(v14 + 28) += 2;
      }

      v58 = v14;
      v59 = *(v9 + 128);
      v60 = *(v9 + 132);
      v15 = *(v9 + 136);
      if (v15)
      {
        *(v15 + 28) += 2;
      }

      v61 = v15;
      v62 = *(v9 + 144);
      v63 = *(v9 + 148);
      v64 = *(v9 + 152);
      WebCore::VisibleSelection::VisibleSelection();
      WebCore::FrameSelection::setSelection();
      WebCore::VisibleSelection::~VisibleSelection(v45);
      v16 = 1.0;
      if ((a1 & 0x20) == 0)
      {
        v16 = *(*(*(v7 + 24) + 8) + 324);
      }

      WebCore::RenderObject::absoluteBorderAndTextRects();
      WebCore::unionRectIgnoringZeroRects();
      v41 = v17;
      v42 = v18;
      v43 = v19;
      v44 = v20;
      v23 = WebCore::enclosingIntRect(&v41, v21);
      v24 = v22;
      v45[1] = v22;
      v25 = v39;
      if (v39)
      {
        v39 = 0;
        v40 = 0;
        v25 = WTF::fastFree(v25, v22);
      }

      LODWORD(v39) = (v16 * v24);
      HIDWORD(v39) = (v16 * SHIDWORD(v24));
      v26 = WebCore::DestinationColorSpace::SRGB(v25);
      WebKit::WebImage::create(v26, &v39, 1u, 0, &v38);
      if (WebKit::WebImage::context(v38))
      {
        v27 = HIDWORD(v23);
        v28 = WebKit::WebImage::context(v38);
        v41 = LODWORD(v16);
        v42 = LODWORD(v16);
        (*(*v28 + 656))(v28, &v41);
        v29 = WebCore::Widget::frameRect(v8) + v23;
        v30 = (WebCore::Widget::frameRect(v8) >> 32) + v27;
        v31 = WebCore::ScrollableArea::visibleContentRect();
        LODWORD(v45[0]) = v29 - v31;
        HIDWORD(v45[0]) = v30 - HIDWORD(v31);
        v37 = (v31 - v29) - (v45[0] & 0xFFFFFFFF00000000);
        WebCore::FloatPoint::FloatPoint(&v41, &v37);
        v32.n128_u32[0] = v41;
        v33.n128_u32[0] = v42;
        (*(*v28 + 672))(v28, v32, v33);
        WebCore::LocalFrameView::paintBehavior(v8);
        WebCore::LocalFrameView::setPaintBehavior();
        WebCore::Document::updateLayout();
        WebCore::ScrollView::paint();
        WebCore::LocalFrameView::setPaintBehavior();
        WebCore::FrameSelection::setSelection();
        *a2 = v38;
      }

      else
      {
        *a2 = 0;
        v34 = v38;
        v38 = 0;
        if (v34)
        {
          CFRelease(*(v34 + 1));
        }
      }

      WebCore::VisibleSelection::~VisibleSelection(&v46);
      if (*(v8 + 2) == 1)
      {
        (*(*v8 + 8))(v8);
      }

      else
      {
        --*(v8 + 2);
      }
    }

    else
    {
      *a2 = 0;
    }

    if (*(v7 + 16) == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      --*(v7 + 16);
    }

    v5 = *(v4 + 28) - 2;
    if (*(v4 + 28) != 2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *a2 = 0;
    if (v5)
    {
LABEL_29:
      *(v4 + 28) = v5;
      goto LABEL_30;
    }
  }

  WebCore::Node::removedLastRef(v4);
LABEL_30:
  v35 = v66;
  v66 = 0;
  if (v35)
  {
    if (*(v35 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v35);
    }

    else
    {
      *(v35 + 7) -= 2;
    }
  }

  result = v65;
  v65 = 0;
  if (result)
  {
    if (*(result + 7) == 2)
    {
      return WebCore::Node::removedLastRef(result);
    }

    else
    {
      *(result + 7) -= 2;
    }
  }

  return result;
}

WebCore::Node *WebKit::InjectedBundleRangeHandle::text(WebKit::InjectedBundleRangeHandle *this)
{
  WebCore::makeSimpleRange();
  v1 = *(*(v3 + 6) + 8);
  *(v1 + 7) += 2;
  WebCore::Document::updateLayout();
  if (*(v1 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v1);
  }

  else
  {
    *(v1 + 7) -= 2;
  }

  WebCore::plainText();
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v4);
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  result = v3;
  if (v3)
  {
    if (*(v3 + 7) == 2)
    {
      return WebCore::Node::removedLastRef(v3);
    }

    else
    {
      *(v3 + 7) -= 2;
    }
  }

  return result;
}

uint64_t WebKit::createHandle@<X0>(uint64_t *a1@<X8>)
{
  WebCore::createLiveRange();
  WebKit::InjectedBundleRangeHandle::getOrCreate(v3, a1);
  result = v3;
  if (v3)
  {
    if (*(v3 + 2) == 1)
    {
      return (*(*v3 + 8))();
    }

    else
    {
      --*(v3 + 2);
    }
  }

  return result;
}

void WebCore::VisibleSelection::~VisibleSelection(WebCore::VisibleSelection *this)
{
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    if (*(v2 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v2);
    }

    else
    {
      *(v2 + 7) -= 2;
    }
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    if (*(v3 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v3);
    }

    else
    {
      *(v3 + 7) -= 2;
    }
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v4);
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v6);
    }

    else
    {
      *(v6 + 7) -= 2;
    }
  }

  v7 = *this;
  *this = 0;
  if (v7)
  {
    if (*(v7 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v7);
    }

    else
    {
      *(v7 + 7) -= 2;
    }
  }
}

_DWORD *WTF::HashTable<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::expand()
{
  if (qword_1ED641B18 && (v0 = *(qword_1ED641B18 - 4)) != 0)
  {
    return WTF::HashTable<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(v0 << (6 * *(qword_1ED641B18 - 12) >= (2 * v0)));
  }

  else
  {
    return WTF::HashTable<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(8u);
  }
}

_DWORD *WTF::HashTable<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleRangeHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = qword_1ED641B18;
  if (qword_1ED641B18)
  {
    v3 = *(qword_1ED641B18 - 4);
    v4 = *(qword_1ED641B18 - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a1 + 16));
  qword_1ED641B18 = (result + 4);
  result[2] = a1 - 1;
  result[3] = a1;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v7 = 0;
    while (1)
    {
      v8 = (v2 + 16 * v7);
      v9 = *v8;
      if (*v8 != -1)
      {
        if (v9)
        {
          v12 = qword_1ED641B18;
          if (qword_1ED641B18)
          {
            v13 = *(qword_1ED641B18 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = WTF::PtrHashBase<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,true>::hash(*(v9 + 1));
          v15 = 0;
          do
          {
            v16 = v14 & v13;
            v14 = ++v15 + v16;
          }

          while (*(v12 + 16 * v16));
          v17 = v12 + 16 * v16;
          v18 = *(v17 + 8);
          *(v17 + 8) = 0;
          if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v6);
          }

          v19 = *v17;
          *v17 = 0;
          if (v19)
          {
            if (*v19 == 1)
            {
              WTF::fastFree(v19, v6);
            }

            else
            {
              --*v19;
            }
          }

          v20 = *v8;
          *v8 = 0;
          *v17 = v20;
          v21 = v8[1];
          v8[1] = 0;
          *(v17 + 8) = v21;
          v22 = v8[1];
          v8[1] = 0;
          if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v6);
          }

          v11 = *v8;
          *v8 = 0;
          if (!v11)
          {
            goto LABEL_21;
          }

          if (*v11 == 1)
          {
            goto LABEL_33;
          }

          --*v11;
        }

        else
        {
          v10 = v8[1];
          v8[1] = 0;
          if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v10);
            WTF::fastFree(v10, v6);
          }

          v11 = *v8;
          *v8 = 0;
          if (!v11)
          {
            goto LABEL_21;
          }

          if (*v11 == 1)
          {
LABEL_33:
            WTF::fastFree(v11, v6);
            goto LABEL_21;
          }

          --*v11;
        }
      }

LABEL_21:
      if (++v7 == v3)
      {
        goto LABEL_37;
      }
    }
  }

  if (v2)
  {
LABEL_37:

    return WTF::fastFree((v2 - 16), v6);
  }

  return result;
}

uint64_t WTF::PtrHashBase<WTF::WeakRef<WebCore::Range,WTF::SingleThreadWeakPtrImpl>,true>::hash(uint64_t a1)
{
  if (a1)
  {
    v1 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
    v2 = 9 * ((v1 + ~(v1 << 13)) ^ ((v1 + ~(v1 << 13)) >> 8));
    v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
    return (v3 >> 31) ^ v3;
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

WebKit::JSWebExtensionAPIAction *WebKit::toWebExtensionAPIAction(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIAction::actionClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIAction::actionClass(result);
        if (JSValueIsObjectOfClass(this, a2, v6))
        {
          v7 = JSValueToObject(this, a2, 0);
          Private = JSObjectGetPrivate(v7);
          if (Private)
          {
            return (Private - 40);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

JSClassRef WebKit::JSWebExtensionAPIAction::actionClass(WebKit::JSWebExtensionAPIAction *this)
{
  result = WebKit::JSWebExtensionAPIAction::actionClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIAction::actionClass(void)::jsClass)
  {
    v2 = *(MEMORY[0x1E696EBF8] + 16);
    *&v6.version = *MEMORY[0x1E696EBF8];
    *&v6.parentClass = v2;
    v3 = *(MEMORY[0x1E696EBF8] + 48);
    *&v6.staticFunctions = *(MEMORY[0x1E696EBF8] + 32);
    *&v6.finalize = v3;
    v4 = *(MEMORY[0x1E696EBF8] + 80);
    *&v6.getProperty = *(MEMORY[0x1E696EBF8] + 64);
    *&v6.deleteProperty = v4;
    v5 = *(MEMORY[0x1E696EBF8] + 112);
    *&v6.callAsFunction = *(MEMORY[0x1E696EBF8] + 96);
    *&v6.hasInstance = v5;
    v6.className = "Action";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIAction::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPIAction::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIAction::actionClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIAction::getTitle(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_33;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v35 = "argument";
    }

    else
    {
      v35 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v47)
    {
      v36 = v47 + 16;
    }

    else
    {
      v36 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v49 = 2082;
    v50 = v35;
    v51 = 2082;
    v52 = v36;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.getTitle() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v38 = v47;
    v47 = 0;
    if (v38)
    {
      if (*v38 == 1)
      {
        WTF::fastFree(v38, v37);
      }

      else
      {
        --*v38;
      }
    }

    v39 = v46;
    v46 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v37);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v22 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v24 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v25 = *a5;
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v19 = 0;
LABEL_23:
        v27 = *buf;
        if (*buf)
        {
          Undefined = 0;
          goto LABEL_27;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v47 = resolve;
        *buf = this;
        v46 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v43, buf, &v47, &v46);
        v27 = v43;
LABEL_27:
        *buf = v27;
        v42 = 0;
        WebKit::WebExtensionAPIAction::getTitle(v12, v19, buf, &v42);
        v30 = v42;
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
        }

        if (v30)
        {
          *a6 = WebKit::toJSError(this, @"action.getTitle()", 0, v30, v29);
        }

        else if (Undefined)
        {
LABEL_32:

          goto LABEL_33;
        }

        Undefined = JSValueMakeUndefined(this);
        goto LABEL_32;
      }

      goto LABEL_57;
    }

    v33 = WebKit::toJSValue(this, *a5, v23);
    v34 = [v33 _isDictionary];

    if ((v34 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
      goto LABEL_26;
    }

LABEL_58:
    v40 = @"an object is expected";
    v41 = @"details";
    goto LABEL_59;
  }

  if (a4 != 2)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v15 = WebKit::toJSValue(this, *a5, v14);
  v16 = [v15 _isDictionary];

  if ((v16 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_58;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_57:
  v40 = @"a function is expected";
  v41 = @"callback";
LABEL_59:
  *a6 = WebKit::toJSError(this, @"action.getTitle()", &v41->isa, &v40->isa, v17);
  Undefined = JSValueMakeUndefined(this);
LABEL_33:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8600EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    if (*(v15 + 48) == 1)
    {
      (*(*(v15 + 40) + 8))(v15 + 40);
    }

    else
    {
      --*(v15 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAction::setTitle(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_28;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v31 = "argument";
    }

    else
    {
      v31 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v44)
    {
      v32 = v44 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v46 = 2082;
    v47 = v31;
    v48 = 2082;
    v49 = v32;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.setTitle() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v34 = v44;
    v44 = 0;
    if (v34)
    {
      if (*v34 == 1)
      {
        WTF::fastFree(v34, v33);
      }

      else
      {
        --*v34;
      }
    }

    v35 = v43;
    v43 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }
  }

  if (a4 == 1)
  {
    v18 = WebKit::toJSValue(this, *a5, v14);
    v19 = [v18 _isDictionary];

    if (v19)
    {
      v21 = WebKit::toNSDictionary(this, *a5, 1, 0);
      if (!v21)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    goto LABEL_47;
  }

  if (a4 != 2)
  {
    if (a4)
    {
LABEL_7:
      v16 = 0;
      goto LABEL_8;
    }

    *a6 = WebKit::toJSError(this, @"action.setTitle()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"details";
    goto LABEL_48;
  }

  if (JSValueIsObject(this, *(a5 + 8)) && (v24 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
  {
    v21 = WebKit::toNSDictionary(this, *a5, 1, 0);
    v25 = *(a5 + 8);
    v26 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v25, v26, buf);
    v16 = *buf;
    if (!v21)
    {
LABEL_8:
      *a6 = WebKit::toJSError(this, @"action.setTitle()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
      Undefined = JSValueMakeUndefined(this);
      if (v16)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
      }

      goto LABEL_28;
    }

    if (*buf)
    {
      Undefined = 0;
      goto LABEL_22;
    }

LABEL_21:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v44 = resolve;
    *buf = this;
    v43 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v40, buf, &v44, &v43);
    v16 = v40;
LABEL_22:
    *buf = v16;
    v39 = 0;
    WebKit::WebExtensionAPIAction::setTitle(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"action.setTitle()", 0, v28, v27);
    }

    else if (Undefined)
    {
LABEL_27:

      goto LABEL_28;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_27;
  }

  v37 = @"a function is expected";
  v38 = @"callback";
LABEL_48:
  *a6 = WebKit::toJSError(this, @"action.setTitle()", &v38->isa, &v37->isa, v20);
  v36 = JSValueMakeUndefined(this);
LABEL_49:
  Undefined = v36;
LABEL_28:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8606C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (*(v15 + 48) == 1)
  {
    (*(*(v15 + 40) + 8))(v15 + 40);
  }

  else
  {
    --*(v15 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAction::getBadgeText(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_33;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v35 = "argument";
    }

    else
    {
      v35 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v47)
    {
      v36 = v47 + 16;
    }

    else
    {
      v36 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v49 = 2082;
    v50 = v35;
    v51 = 2082;
    v52 = v36;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.getBadgeText() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v38 = v47;
    v47 = 0;
    if (v38)
    {
      if (*v38 == 1)
      {
        WTF::fastFree(v38, v37);
      }

      else
      {
        --*v38;
      }
    }

    v39 = v46;
    v46 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v37);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v22 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v24 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v25 = *a5;
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v19 = 0;
LABEL_23:
        v27 = *buf;
        if (*buf)
        {
          Undefined = 0;
          goto LABEL_27;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v47 = resolve;
        *buf = this;
        v46 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v43, buf, &v47, &v46);
        v27 = v43;
LABEL_27:
        *buf = v27;
        v42 = 0;
        WebKit::WebExtensionAPIAction::getBadgeText(v12, v19, buf, &v42);
        v30 = v42;
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
        }

        if (v30)
        {
          *a6 = WebKit::toJSError(this, @"action.getBadgeText()", 0, v30, v29);
        }

        else if (Undefined)
        {
LABEL_32:

          goto LABEL_33;
        }

        Undefined = JSValueMakeUndefined(this);
        goto LABEL_32;
      }

      goto LABEL_57;
    }

    v33 = WebKit::toJSValue(this, *a5, v23);
    v34 = [v33 _isDictionary];

    if ((v34 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
      goto LABEL_26;
    }

LABEL_58:
    v40 = @"an object is expected";
    v41 = @"details";
    goto LABEL_59;
  }

  if (a4 != 2)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v15 = WebKit::toJSValue(this, *a5, v14);
  v16 = [v15 _isDictionary];

  if ((v16 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_58;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_57:
  v40 = @"a function is expected";
  v41 = @"callback";
LABEL_59:
  *a6 = WebKit::toJSError(this, @"action.getBadgeText()", &v41->isa, &v40->isa, v17);
  Undefined = JSValueMakeUndefined(this);
LABEL_33:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D860D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    if (*(v15 + 48) == 1)
    {
      (*(*(v15 + 40) + 8))(v15 + 40);
    }

    else
    {
      --*(v15 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAction::setBadgeText(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_28;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v31 = "argument";
    }

    else
    {
      v31 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v44)
    {
      v32 = v44 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v46 = 2082;
    v47 = v31;
    v48 = 2082;
    v49 = v32;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.setBadgeText() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v34 = v44;
    v44 = 0;
    if (v34)
    {
      if (*v34 == 1)
      {
        WTF::fastFree(v34, v33);
      }

      else
      {
        --*v34;
      }
    }

    v35 = v43;
    v43 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }
  }

  if (a4 == 1)
  {
    v18 = WebKit::toJSValue(this, *a5, v14);
    v19 = [v18 _isDictionary];

    if (v19)
    {
      v21 = WebKit::toNSDictionary(this, *a5, 1, 0);
      if (!v21)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    goto LABEL_47;
  }

  if (a4 != 2)
  {
    if (a4)
    {
LABEL_7:
      v16 = 0;
      goto LABEL_8;
    }

    *a6 = WebKit::toJSError(this, @"action.setBadgeText()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"details";
    goto LABEL_48;
  }

  if (JSValueIsObject(this, *(a5 + 8)) && (v24 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
  {
    v21 = WebKit::toNSDictionary(this, *a5, 1, 0);
    v25 = *(a5 + 8);
    v26 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v25, v26, buf);
    v16 = *buf;
    if (!v21)
    {
LABEL_8:
      *a6 = WebKit::toJSError(this, @"action.setBadgeText()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
      Undefined = JSValueMakeUndefined(this);
      if (v16)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
      }

      goto LABEL_28;
    }

    if (*buf)
    {
      Undefined = 0;
      goto LABEL_22;
    }

LABEL_21:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v44 = resolve;
    *buf = this;
    v43 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v40, buf, &v44, &v43);
    v16 = v40;
LABEL_22:
    *buf = v16;
    v39 = 0;
    WebKit::WebExtensionAPIAction::setBadgeText(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"action.setBadgeText()", 0, v28, v27);
    }

    else if (Undefined)
    {
LABEL_27:

      goto LABEL_28;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_27;
  }

  v37 = @"a function is expected";
  v38 = @"callback";
LABEL_48:
  *a6 = WebKit::toJSError(this, @"action.setBadgeText()", &v38->isa, &v37->isa, v20);
  v36 = JSValueMakeUndefined(this);
LABEL_49:
  Undefined = v36;
LABEL_28:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D86132C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (*(v15 + 48) == 1)
  {
    (*(*(v15 + 40) + 8))(v15 + 40);
  }

  else
  {
    --*(v15 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAction::getBadgeBackgroundColor(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_33;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v35 = "argument";
    }

    else
    {
      v35 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v47)
    {
      v36 = v47 + 16;
    }

    else
    {
      v36 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v49 = 2082;
    v50 = v35;
    v51 = 2082;
    v52 = v36;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.getBadgeBackgroundColor() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v38 = v47;
    v47 = 0;
    if (v38)
    {
      if (*v38 == 1)
      {
        WTF::fastFree(v38, v37);
      }

      else
      {
        --*v38;
      }
    }

    v39 = v46;
    v46 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v37);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v22 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v24 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v25 = *a5;
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v19 = 0;
LABEL_23:
        v27 = *buf;
        if (*buf)
        {
          Undefined = 0;
          goto LABEL_27;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v47 = resolve;
        *buf = this;
        v46 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v43, buf, &v47, &v46);
        v27 = v43;
LABEL_27:
        *buf = v27;
        v42 = 0;
        WebKit::WebExtensionAPIAction::getBadgeBackgroundColor(v12, v19, buf, &v42);
        v30 = v42;
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
        }

        if (v30)
        {
          *a6 = WebKit::toJSError(this, @"action.getBadgeBackgroundColor()", 0, v30, v29);
        }

        else if (Undefined)
        {
LABEL_32:

          goto LABEL_33;
        }

        Undefined = JSValueMakeUndefined(this);
        goto LABEL_32;
      }

      goto LABEL_57;
    }

    v33 = WebKit::toJSValue(this, *a5, v23);
    v34 = [v33 _isDictionary];

    if ((v34 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
      goto LABEL_26;
    }

LABEL_58:
    v40 = @"an object is expected";
    v41 = @"details";
    goto LABEL_59;
  }

  if (a4 != 2)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v15 = WebKit::toJSValue(this, *a5, v14);
  v16 = [v15 _isDictionary];

  if ((v16 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_58;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_57:
  v40 = @"a function is expected";
  v41 = @"callback";
LABEL_59:
  *a6 = WebKit::toJSError(this, @"action.getBadgeBackgroundColor()", &v41->isa, &v40->isa, v17);
  Undefined = JSValueMakeUndefined(this);
LABEL_33:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8619C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    if (*(v15 + 48) == 1)
    {
      (*(*(v15 + 40) + 8))(v15 + 40);
    }

    else
    {
      --*(v15 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAction::setBadgeBackgroundColor(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_28;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v30 = "argument";
    }

    else
    {
      v30 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v43)
    {
      v31 = v43 + 16;
    }

    else
    {
      v31 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v45 = 2082;
    v46 = v30;
    v47 = 2082;
    v48 = v31;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.setBadgeBackgroundColor() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v33 = v43;
    v43 = 0;
    if (v33)
    {
      if (*v33 == 1)
      {
        WTF::fastFree(v33, v32);
      }

      else
      {
        --*v33;
      }
    }

    v34 = v42;
    v42 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v32);
    }
  }

  if (a4 == 1)
  {
    v18 = WebKit::toJSValue(this, *a5, v14);
    v19 = [v18 _isDictionary];

    if (v19)
    {
      v21 = WebKit::toNSDictionary(this, *a5, 1, 0);
      if (!v21)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    goto LABEL_47;
  }

  if (a4 != 2)
  {
    if (a4)
    {
LABEL_7:
      v16 = 0;
      goto LABEL_8;
    }

    *a6 = WebKit::toJSError(this, @"action.setBadgeBackgroundColor()", 0, &cfstr_ARequiredArgum.isa, v15);
    v35 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v36 = @"an object is expected";
    v37 = @"details";
    goto LABEL_48;
  }

  if (JSValueIsObject(this, *(a5 + 8)) && (v24 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
  {
    v21 = WebKit::toNSDictionary(this, *a5, 1, 0);
    v25 = *(a5 + 8);
    v26 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v25, v26, buf);
    v16 = *buf;
    if (!v21)
    {
LABEL_8:
      *a6 = WebKit::toJSError(this, @"action.setBadgeBackgroundColor()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
      Undefined = JSValueMakeUndefined(this);
      if (v16)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
      }

      goto LABEL_28;
    }

    if (*buf)
    {
      Undefined = 0;
      goto LABEL_22;
    }

LABEL_21:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v43 = resolve;
    *buf = this;
    v42 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v39, buf, &v43, &v42);
    v16 = v39;
LABEL_22:
    *buf = v16;
    v38 = 0;
    WebKit::WebExtensionAPIAction::setBadgeBackgroundColor(v12, v21, buf, &v38);
    v28 = v38;
    if (*buf)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(*buf);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"action.setBadgeBackgroundColor()", 0, v28, v27);
    }

    else if (Undefined)
    {
LABEL_27:

      goto LABEL_28;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_27;
  }

  v36 = @"a function is expected";
  v37 = @"callback";
LABEL_48:
  *a6 = WebKit::toJSError(this, @"action.setBadgeBackgroundColor()", &v37->isa, &v36->isa, v20);
  v35 = JSValueMakeUndefined(this);
LABEL_49:
  Undefined = v35;
LABEL_28:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D861F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (*(v15 + 48) == 1)
  {
    (*(*(v15 + 40) + 8))(v15 + 40);
  }

  else
  {
    --*(v15 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAction::enable(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_33;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v29 = "argument";
    }

    else
    {
      v29 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v41)
    {
      v30 = v41 + 16;
    }

    else
    {
      v30 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v43 = 2082;
    v44 = v29;
    v45 = 2082;
    v46 = v30;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.enable() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v32 = v41;
    v41 = 0;
    if (v32)
    {
      if (*v32 == 1)
      {
        WTF::fastFree(v32, v31);
      }

      else
      {
        --*v32;
      }
    }

    v33 = v40;
    v40 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v31);
    }
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        if (JSValueIsObject(this, a5[1]) && (v15 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v15)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
        {
          v16 = JSValueToNumber(this, *a5, 0);
          v17 = a5[1];
          v18 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v17, v18, buf);
          v19 = *buf;
          if (!*buf)
          {
            goto LABEL_26;
          }

LABEL_24:
          Undefined = 0;
          goto LABEL_27;
        }

        goto LABEL_57;
      }

LABEL_58:
      v34 = @"a number is expected";
      v35 = @"tabId";
      goto LABEL_59;
    }

    v16 = NAN;
LABEL_26:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v41 = resolve;
    *buf = this;
    v40 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v37, buf, &v41, &v40);
    v19 = v37;
LABEL_27:
    *buf = v19;
    v36 = 0;
    WebKit::WebExtensionAPIAction::enable(v12, buf, &v36, v16);
    v26 = v36;
    v27 = *buf;
    *buf = 0;
    if (v27)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v27);
    }

    if (v26)
    {
      *a6 = WebKit::toJSError(this, @"action.enable()", 0, v26, v25);
    }

    else if (Undefined)
    {
LABEL_32:

      goto LABEL_33;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_32;
  }

  if (!JSValueIsObject(this, *a5) || (v20 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v20)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      if (!JSValueIsNumber(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        goto LABEL_58;
      }

      v16 = JSValueToNumber(this, *a5, 0);
      goto LABEL_26;
    }
  }

  if (JSValueIsObject(this, *a5) && (v21 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v21)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
  {
    v22 = *a5;
    v23 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v22, v23, buf);
    v19 = *buf;
    v16 = NAN;
    if (*buf)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_57:
  v34 = @"a function is expected";
  v35 = @"callback";
LABEL_59:
  *a6 = WebKit::toJSError(this, @"action.enable()", &v35->isa, &v34->isa, v14);
  Undefined = JSValueMakeUndefined(this);
LABEL_33:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D862604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    if (*(v15 + 48) == 1)
    {
      (*(*(v15 + 40) + 8))(v15 + 40);
    }

    else
    {
      --*(v15 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAction::disable(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_33;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v29 = "argument";
    }

    else
    {
      v29 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v41)
    {
      v30 = v41 + 16;
    }

    else
    {
      v30 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v43 = 2082;
    v44 = v29;
    v45 = 2082;
    v46 = v30;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.disable() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v32 = v41;
    v41 = 0;
    if (v32)
    {
      if (*v32 == 1)
      {
        WTF::fastFree(v32, v31);
      }

      else
      {
        --*v32;
      }
    }

    v33 = v40;
    v40 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v31);
    }
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        if (JSValueIsObject(this, a5[1]) && (v15 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v15)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
        {
          v16 = JSValueToNumber(this, *a5, 0);
          v17 = a5[1];
          v18 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v17, v18, buf);
          v19 = *buf;
          if (!*buf)
          {
            goto LABEL_26;
          }

LABEL_24:
          Undefined = 0;
          goto LABEL_27;
        }

        goto LABEL_57;
      }

LABEL_58:
      v34 = @"a number is expected";
      v35 = @"tabId";
      goto LABEL_59;
    }

    v16 = NAN;
LABEL_26:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v41 = resolve;
    *buf = this;
    v40 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v37, buf, &v41, &v40);
    v19 = v37;
LABEL_27:
    *buf = v19;
    v36 = 0;
    WebKit::WebExtensionAPIAction::disable(v12, buf, &v36, v16);
    v26 = v36;
    v27 = *buf;
    *buf = 0;
    if (v27)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v27);
    }

    if (v26)
    {
      *a6 = WebKit::toJSError(this, @"action.disable()", 0, v26, v25);
    }

    else if (Undefined)
    {
LABEL_32:

      goto LABEL_33;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_32;
  }

  if (!JSValueIsObject(this, *a5) || (v20 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v20)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      if (!JSValueIsNumber(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        goto LABEL_58;
      }

      v16 = JSValueToNumber(this, *a5, 0);
      goto LABEL_26;
    }
  }

  if (JSValueIsObject(this, *a5) && (v21 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v21)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
  {
    v22 = *a5;
    v23 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v22, v23, buf);
    v19 = *buf;
    v16 = NAN;
    if (*buf)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_57:
  v34 = @"a function is expected";
  v35 = @"callback";
LABEL_59:
  *a6 = WebKit::toJSError(this, @"action.disable()", &v35->isa, &v34->isa, v14);
  Undefined = JSValueMakeUndefined(this);
LABEL_33:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D862C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    if (*(v15 + 48) == 1)
    {
      (*(*(v15 + 40) + 8))(v15 + 40);
    }

    else
    {
      --*(v15 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAction::isEnabled(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_33;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v35 = "argument";
    }

    else
    {
      v35 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v47)
    {
      v36 = v47 + 16;
    }

    else
    {
      v36 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v49 = 2082;
    v50 = v35;
    v51 = 2082;
    v52 = v36;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.isEnabled() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v38 = v47;
    v47 = 0;
    if (v38)
    {
      if (*v38 == 1)
      {
        WTF::fastFree(v38, v37);
      }

      else
      {
        --*v38;
      }
    }

    v39 = v46;
    v46 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v37);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v22 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v24 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v25 = *a5;
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v19 = 0;
LABEL_23:
        v27 = *buf;
        if (*buf)
        {
          Undefined = 0;
          goto LABEL_27;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v47 = resolve;
        *buf = this;
        v46 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v43, buf, &v47, &v46);
        v27 = v43;
LABEL_27:
        *buf = v27;
        v42 = 0;
        WebKit::WebExtensionAPIAction::isEnabled(v12, v19, buf, &v42);
        v30 = v42;
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
        }

        if (v30)
        {
          *a6 = WebKit::toJSError(this, @"action.isEnabled()", 0, v30, v29);
        }

        else if (Undefined)
        {
LABEL_32:

          goto LABEL_33;
        }

        Undefined = JSValueMakeUndefined(this);
        goto LABEL_32;
      }

      goto LABEL_57;
    }

    v33 = WebKit::toJSValue(this, *a5, v23);
    v34 = [v33 _isDictionary];

    if ((v34 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
      goto LABEL_26;
    }

LABEL_58:
    v40 = @"an object is expected";
    v41 = @"details";
    goto LABEL_59;
  }

  if (a4 != 2)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v15 = WebKit::toJSValue(this, *a5, v14);
  v16 = [v15 _isDictionary];

  if ((v16 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_58;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_57:
  v40 = @"a function is expected";
  v41 = @"callback";
LABEL_59:
  *a6 = WebKit::toJSError(this, @"action.isEnabled()", &v41->isa, &v40->isa, v17);
  Undefined = JSValueMakeUndefined(this);
LABEL_33:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D863290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    if (*(v15 + 48) == 1)
    {
      (*(*(v15 + 40) + 8))(v15 + 40);
    }

    else
    {
      --*(v15 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAction::setIcon(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v54 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_34;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v34 = "argument";
    }

    else
    {
      v34 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v48)
    {
      v35 = *v48 + 16;
    }

    else
    {
      v35 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v50 = 2082;
    v51 = v34;
    v52 = 2082;
    v53 = v35;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.setIcon() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v37 = *v48;
    *v48 = 0;
    if (v37)
    {
      if (*v37 == 1)
      {
        WTF::fastFree(v37, v36);
      }

      else
      {
        --*v37;
      }
    }

    v38 = v47;
    v47 = 0;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v36);
    }
  }

  if (a4 == 1)
  {
    v19 = WebKit::toJSValue(this, *a5, v14);
    v20 = [v19 _isDictionary];

    if (v20)
    {
      v18 = WebKit::toNSDictionary(this, *a5, 1, 0);
      if (!v18)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    goto LABEL_53;
  }

  if (a4 == 2)
  {
    v22 = WebKit::toJSValue(this, *a5, v14);
    v23 = [v22 _isDictionary];

    if (v23)
    {
      if (JSValueIsObject(this, *(a5 + 8)) && (v24 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
      {
        v18 = WebKit::toNSDictionary(this, *a5, 1, 0);
        v25 = *(a5 + 8);
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v16 = *buf;
        if (!v18)
        {
          goto LABEL_8;
        }

        if (*buf)
        {
          Undefined = 0;
          goto LABEL_21;
        }

LABEL_20:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        *buf = this;
        v47 = reject;
        *v48 = resolve;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v44, buf, v48, &v47);
        v16 = v44;
LABEL_21:
        GlobalContext = JSContextGetGlobalContext(this);
        WebKit::WebFrame::frameForContext(GlobalContext, v28, buf);
        if (*buf)
        {
          *v48 = v16;
          v43 = 0;
          WebKit::WebExtensionAPIAction::setIcon(v12, *buf, v18, v48, &v43);
          v30 = v43;
          v31 = *v48;
          *v48 = 0;
          if (v31)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
          }

          if (v30)
          {
            *a6 = WebKit::toJSError(this, @"action.setIcon()", 0, &v30->isa, v29);
          }

          else if (Undefined)
          {
LABEL_27:

            if (*buf)
            {
              CFRelease(*(*buf + 8));
            }

            v16 = 0;
            goto LABEL_30;
          }

          Undefined = JSValueMakeUndefined(this);
          goto LABEL_27;
        }

        v41 = qword_1ED640AB8;
        if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
        {
          *v48 = 0;
          _os_log_error_impl(&dword_19D52D000, v41, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v48, 2u);
          if (!Undefined)
          {
            goto LABEL_58;
          }
        }

        else if (!Undefined)
        {
          goto LABEL_58;
        }

        Undefined = WebKit::toJSRejectedPromise(this, @"action.setIcon()", 0, &cfstr_AnUnknownError.isa, v42);
        if (Undefined)
        {
          goto LABEL_30;
        }

LABEL_58:
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_30;
      }

      v39 = @"a function is expected";
      v40 = @"callback";
LABEL_54:
      v32 = 0;
      *a6 = WebKit::toJSError(this, @"action.setIcon()", &v40->isa, &v39->isa, v21);
      Undefined = JSValueMakeUndefined(this);
LABEL_33:

      goto LABEL_34;
    }

LABEL_53:
    v39 = @"an object is expected";
    v40 = @"details";
    goto LABEL_54;
  }

  if (a4)
  {
LABEL_7:
    v16 = 0;
LABEL_8:
    *a6 = WebKit::toJSError(this, @"action.setIcon()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
    Undefined = JSValueMakeUndefined(this);
    v18 = 0;
LABEL_30:
    if (v16)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
    }

    v32 = v18;
    goto LABEL_33;
  }

  *a6 = WebKit::toJSError(this, @"action.setIcon()", 0, &cfstr_ARequiredArgum.isa, v15);
  Undefined = JSValueMakeUndefined(this);
LABEL_34:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D863944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    CFRelease(*(a17 + 8));
  }

  if (v19)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v19);
  }

  if (*(v17 + 48) == 1)
  {
    (*(*(v17 + 40) + 8))(v17 + 40);
  }

  else
  {
    --*(v17 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIAction::setPopup(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_28;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v31 = "argument";
    }

    else
    {
      v31 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v44)
    {
      v32 = v44 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v46 = 2082;
    v47 = v31;
    v48 = 2082;
    v49 = v32;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.setPopup() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v34 = v44;
    v44 = 0;
    if (v34)
    {
      if (*v34 == 1)
      {
        WTF::fastFree(v34, v33);
      }

      else
      {
        --*v34;
      }
    }

    v35 = v43;
    v43 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }
  }

  if (a4 == 1)
  {
    v18 = WebKit::toJSValue(this, *a5, v14);
    v19 = [v18 _isDictionary];

    if (v19)
    {
      v21 = WebKit::toNSDictionary(this, *a5, 1, 0);
      if (!v21)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    goto LABEL_47;
  }

  if (a4 != 2)
  {
    if (a4)
    {
LABEL_7:
      v16 = 0;
      goto LABEL_8;
    }

    *a6 = WebKit::toJSError(this, @"action.setPopup()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"details";
    goto LABEL_48;
  }

  if (JSValueIsObject(this, *(a5 + 8)) && (v24 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
  {
    v21 = WebKit::toNSDictionary(this, *a5, 1, 0);
    v25 = *(a5 + 8);
    v26 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v25, v26, buf);
    v16 = *buf;
    if (!v21)
    {
LABEL_8:
      *a6 = WebKit::toJSError(this, @"action.setPopup()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
      Undefined = JSValueMakeUndefined(this);
      if (v16)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
      }

      goto LABEL_28;
    }

    if (*buf)
    {
      Undefined = 0;
      goto LABEL_22;
    }

LABEL_21:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v44 = resolve;
    *buf = this;
    v43 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v40, buf, &v44, &v43);
    v16 = v40;
LABEL_22:
    *buf = v16;
    v39 = 0;
    WebKit::WebExtensionAPIAction::setPopup(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"action.setPopup()", 0, v28, v27);
    }

    else if (Undefined)
    {
LABEL_27:

      goto LABEL_28;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_27;
  }

  v37 = @"a function is expected";
  v38 = @"callback";
LABEL_48:
  *a6 = WebKit::toJSError(this, @"action.setPopup()", &v38->isa, &v37->isa, v20);
  v36 = JSValueMakeUndefined(this);
LABEL_49:
  Undefined = v36;
LABEL_28:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D863F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (*(v15 + 48) == 1)
  {
    (*(*(v15 + 40) + 8))(v15 + 40);
  }

  else
  {
    --*(v15 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAction::getPopup(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_33;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v35 = "argument";
    }

    else
    {
      v35 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v47)
    {
      v36 = v47 + 16;
    }

    else
    {
      v36 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v49 = 2082;
    v50 = v35;
    v51 = 2082;
    v52 = v36;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.getPopup() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v38 = v47;
    v47 = 0;
    if (v38)
    {
      if (*v38 == 1)
      {
        WTF::fastFree(v38, v37);
      }

      else
      {
        --*v38;
      }
    }

    v39 = v46;
    v46 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v37);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v22 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v24 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v25 = *a5;
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v19 = 0;
LABEL_23:
        v27 = *buf;
        if (*buf)
        {
          Undefined = 0;
          goto LABEL_27;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v47 = resolve;
        *buf = this;
        v46 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v43, buf, &v47, &v46);
        v27 = v43;
LABEL_27:
        *buf = v27;
        v42 = 0;
        WebKit::WebExtensionAPIAction::getPopup(v12, v19, buf, &v42);
        v30 = v42;
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
        }

        if (v30)
        {
          *a6 = WebKit::toJSError(this, @"action.getPopup()", 0, v30, v29);
        }

        else if (Undefined)
        {
LABEL_32:

          goto LABEL_33;
        }

        Undefined = JSValueMakeUndefined(this);
        goto LABEL_32;
      }

      goto LABEL_57;
    }

    v33 = WebKit::toJSValue(this, *a5, v23);
    v34 = [v33 _isDictionary];

    if ((v34 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
      goto LABEL_26;
    }

LABEL_58:
    v40 = @"an object is expected";
    v41 = @"details";
    goto LABEL_59;
  }

  if (a4 != 2)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v15 = WebKit::toJSValue(this, *a5, v14);
  v16 = [v15 _isDictionary];

  if ((v16 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_58;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_57:
  v40 = @"a function is expected";
  v41 = @"callback";
LABEL_59:
  *a6 = WebKit::toJSError(this, @"action.getPopup()", &v41->isa, &v40->isa, v17);
  Undefined = JSValueMakeUndefined(this);
LABEL_33:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8645D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    if (*(v15 + 48) == 1)
    {
      (*(*(v15 + 40) + 8))(v15 + 40);
    }

    else
    {
      --*(v15 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAction::openPopup(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAction(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_36;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v36 = "argument";
    }

    else
    {
      v36 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v50)
    {
      v37 = *v50 + 16;
    }

    else
    {
      v37 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v52 = 2082;
    v53 = v36;
    v54 = 2082;
    v55 = v37;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function action.openPopup() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v39 = *v50;
    *v50 = 0;
    if (v39)
    {
      if (*v39 == 1)
      {
        WTF::fastFree(v39, v38);
      }

      else
      {
        --*v39;
      }
    }

    v40 = v49;
    v49 = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v38);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v22 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v24 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v25 = *a5;
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v19 = 0;
LABEL_23:
        v27 = *buf;
        if (*buf)
        {
          Undefined = 0;
          goto LABEL_27;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        *buf = this;
        v49 = reject;
        *v50 = resolve;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v46, buf, v50, &v49);
        v27 = v46;
LABEL_27:
        WebKit::toWebPage(this, buf);
        if (*buf)
        {
          v29 = *(*buf + 1832);
          *v50 = v27;
          v45 = 0;
          WebKit::WebExtensionAPIAction::openPopup(v12, v29, v19, v50, &v45);
          v31 = v45;
          v32 = *v50;
          *v50 = 0;
          if (v32)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v32);
          }

          if (v31)
          {
            *a6 = WebKit::toJSError(this, @"action.openPopup()", 0, v31, v30);
          }

          else if (Undefined)
          {
            goto LABEL_33;
          }

          Undefined = JSValueMakeUndefined(this);
LABEL_33:

          if (*buf)
          {
            CFRelease(*(*buf + 8));
          }

          goto LABEL_35;
        }

        v41 = qword_1ED640AB8;
        if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
        {
          *v50 = 0;
          _os_log_error_impl(&dword_19D52D000, v41, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v50, 2u);
          if (Undefined)
          {
LABEL_60:
            Undefined = WebKit::toJSRejectedPromise(this, @"action.openPopup()", 0, &cfstr_AnUnknownError.isa, v42);
            if (Undefined)
            {
              goto LABEL_62;
            }
          }
        }

        else if (Undefined)
        {
          goto LABEL_60;
        }

        Undefined = JSValueMakeUndefined(this);
LABEL_62:
        if (v27)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v27);
        }

        goto LABEL_35;
      }

      goto LABEL_66;
    }

    v34 = WebKit::toJSValue(this, *a5, v23);
    v35 = [v34 _isDictionary];

    if ((v35 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
      goto LABEL_26;
    }

LABEL_67:
    v43 = @"an object is expected";
    v44 = @"options";
    goto LABEL_68;
  }

  if (a4 != 2)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v15 = WebKit::toJSValue(this, *a5, v14);
  v16 = [v15 _isDictionary];

  if ((v16 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_67;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 1, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_66:
  v43 = @"a function is expected";
  v44 = @"callback";
LABEL_68:
  *a6 = WebKit::toJSError(this, @"action.openPopup()", &v44->isa, &v43->isa, v17);
  Undefined = JSValueMakeUndefined(this);
  v19 = 0;
LABEL_35:

LABEL_36:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D864D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    CFRelease(*(a17 + 8));
  }

  if (v19)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v19);
  }

  if (*(v17 + 48) == 1)
  {
    (*(*(v17 + 40) + 8))(v17 + 40);
  }

  else
  {
    --*(v17 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIAction::onClicked(WebKit::JSWebExtensionAPIAction *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIAction(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter action.onClicked in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIAction::onClicked(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D86501C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

WebKit::JSWebExtensionAPIAlarms *WebKit::toWebExtensionAPIAlarms(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIAlarms::alarmsClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIAlarms::alarmsClass(result);
        if (JSValueIsObjectOfClass(this, a2, v6))
        {
          v7 = JSValueToObject(this, a2, 0);
          Private = JSObjectGetPrivate(v7);
          if (Private)
          {
            return (Private - 40);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

JSClassRef WebKit::JSWebExtensionAPIAlarms::alarmsClass(WebKit::JSWebExtensionAPIAlarms *this)
{
  result = WebKit::JSWebExtensionAPIAlarms::alarmsClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIAlarms::alarmsClass(void)::jsClass)
  {
    v2 = *(MEMORY[0x1E696EBF8] + 16);
    *&v6.version = *MEMORY[0x1E696EBF8];
    *&v6.parentClass = v2;
    v3 = *(MEMORY[0x1E696EBF8] + 48);
    *&v6.staticFunctions = *(MEMORY[0x1E696EBF8] + 32);
    *&v6.finalize = v3;
    v4 = *(MEMORY[0x1E696EBF8] + 80);
    *&v6.getProperty = *(MEMORY[0x1E696EBF8] + 64);
    *&v6.deleteProperty = v4;
    v5 = *(MEMORY[0x1E696EBF8] + 112);
    *&v6.callAsFunction = *(MEMORY[0x1E696EBF8] + 96);
    *&v6.hasInstance = v5;
    v6.className = "Alarms";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIAlarms::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPIAlarms::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIAlarms::alarmsClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIAlarms::create(WebKit::JSWebExtensionAPIAlarms *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAlarms(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_36;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v34 = "argument";
    }

    else
    {
      v34 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v43)
    {
      v35 = v43 + 16;
    }

    else
    {
      v35 = 0;
    }

    *buf = 134349570;
    v45 = a4;
    v46 = 2082;
    v47 = v34;
    v48 = 2082;
    v49 = v35;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function alarms.create() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v37 = v43;
    v43 = 0;
    if (v37)
    {
      if (*v37 == 1)
      {
        WTF::fastFree(v37, v36);
      }

      else
      {
        --*v37;
      }
    }

    v38 = v42;
    v42 = 0;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v36);
    }
  }

  v16 = a4 - 2;
  if (a4 == 2)
  {
    if (JSValueIsString(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v24 = WebKit::toJSValue(this, *(a5 + 8), v23);
      v25 = [v24 _isDictionary];

      if (v25)
      {
        v26 = WebKit::toNSString(this, *a5, 2);
        WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
        v22 = v27 = v26;
        if (v22)
        {
LABEL_32:
          v41 = 0;
          WebKit::WebExtensionAPIAlarms::createAlarm(v12, v26, v22, &v41);
          v32 = v41;
          if (v32)
          {
            *a6 = WebKit::toJSError(this, @"alarms.create()", 0, v32, v31);
          }

          Undefined = JSValueMakeUndefined(this);

          v27 = v26;
          goto LABEL_35;
        }

        goto LABEL_17;
      }

      v39 = @"an object is expected";
      v40 = @"info";
LABEL_61:
      v27 = 0;
      *a6 = WebKit::toJSError(this, @"alarms.create()", &v40->isa, &v39->isa, v15);
      Undefined = JSValueMakeUndefined(this);
      v22 = 0;
      goto LABEL_35;
    }

LABEL_60:
    v39 = @"a string is expected";
    v40 = @"name";
    goto LABEL_61;
  }

  if (a4)
  {
    v17 = a4 - 1;
    if (a4 - 1 < 0)
    {
      v27 = 0;
      goto LABEL_17;
    }

    v18 = *(a5 + 8 * v17);
    if (v18)
    {
      v19 = WebKit::toJSValue(this, *(a5 + 8 * v17), v14);
      v20 = [v19 _isDictionary];

      if ((v20 & 1) == 0)
      {
        v22 = 0;
        *a6 = WebKit::toJSError(this, @"alarms.create()", &cfstr_Info.isa, &cfstr_AnObjectIsExpe.isa, v21);
        Undefined = JSValueMakeUndefined(this);
        v27 = 0;
        goto LABEL_35;
      }

      v22 = WebKit::toNSDictionary(this, v18, 0, 0);
    }

    else
    {
      v22 = 0;
      v16 = a4 - 1;
    }

    v27 = 0;
    if (a4 == 1 || (v16 & 0x8000000000000000) != 0)
    {
LABEL_29:
      if (v22)
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          v26 = v27;
          goto LABEL_32;
        }

        *a6 = WebKit::toJSError(this, @"alarms.create()", 0, &cfstr_AnUnknownArgum.isa, v15);
        v28 = JSValueMakeUndefined(this);
        goto LABEL_18;
      }

LABEL_17:
      v22 = 0;
      *a6 = WebKit::toJSError(this, @"alarms.create()", &cfstr_Info.isa, &cfstr_AnObjectIsExpe.isa, v15);
      v28 = JSValueMakeUndefined(this);
LABEL_18:
      Undefined = v28;
LABEL_35:

      goto LABEL_36;
    }

    if (v16 < a4)
    {
      v30 = *(a5 + 8 * v16);
      if (v30 && (JSValueIsString(this, v30) || JSValueIsNull(this, v30) || JSValueIsUndefined(this, v30)))
      {
        v27 = WebKit::toNSString(this, v30, 2);
        --v16;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_60;
  }

  *a6 = WebKit::toJSError(this, @"alarms.create()", 0, &cfstr_ARequiredArgum.isa, v15);
  Undefined = JSValueMakeUndefined(this);
LABEL_36:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D865770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (*(v11 + 48) == 1)
  {
    (*(*(v11 + 40) + 8))(v11 + 40);
  }

  else
  {
    --*(v11 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAlarms::get(WebKit::JSWebExtensionAPIAlarms *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAlarms(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_32;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v27 = "argument";
    }

    else
    {
      v27 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v38)
    {
      v28 = v38 + 16;
    }

    else
    {
      v28 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v40 = 2082;
    v41 = v27;
    v42 = 2082;
    v43 = v28;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function alarms.get() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v30 = v38;
    v38 = 0;
    if (v30)
    {
      if (*v30 == 1)
      {
        WTF::fastFree(v30, v29);
      }

      else
      {
        --*v30;
      }
    }

    v31 = v37;
    v37 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v29);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v19 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v19)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v20 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v20)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v21 = *a5;
        v22 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v21, v22, buf);
        v16 = 0;
LABEL_23:
        v23 = *buf;
        if (*buf)
        {
          Undefined = 0;
LABEL_27:
          *buf = v23;
          WebKit::WebExtensionAPIAlarms::get(v12, v16, buf);
          v25 = *buf;
          *buf = 0;
          if (v25)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v25);
          }

          if (!Undefined)
          {
            Undefined = JSValueMakeUndefined(this);
          }

          goto LABEL_31;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v38 = resolve;
        *buf = this;
        v37 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v34, buf, &v38, &v37);
        v23 = v34;
        goto LABEL_27;
      }

      goto LABEL_55;
    }

    if (JSValueIsString(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v16 = WebKit::toNSString(this, *a5, 2);
      goto LABEL_26;
    }

LABEL_56:
    v32 = @"a string is expected";
    v33 = @"name";
    goto LABEL_57;
  }

  if (a4 != 2)
  {
    v16 = 0;
    goto LABEL_26;
  }

  if (!JSValueIsString(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_56;
  }

  if (JSValueIsObject(this, a5[1]) && (v15 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v15)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v16 = WebKit::toNSString(this, *a5, 2);
    v17 = a5[1];
    v18 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v17, v18, buf);
    goto LABEL_23;
  }

LABEL_55:
  v32 = @"a function is expected";
  v33 = @"callback";
LABEL_57:
  *a6 = WebKit::toJSError(this, @"alarms.get()", &v33->isa, &v32->isa, v14);
  Undefined = JSValueMakeUndefined(this);
  v16 = 0;
LABEL_31:

LABEL_32:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D865D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    if (*(v15 + 48) == 1)
    {
      (*(*(v15 + 40) + 8))(v15 + 40);
    }

    else
    {
      --*(v15 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIAlarms::getAll(WebKit::JSWebExtensionAPIAlarms *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAlarms(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_17;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v23 = "argument";
    }

    else
    {
      v23 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v32)
    {
      v24 = v32 + 16;
    }

    else
    {
      v24 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v34 = 2082;
    v35 = v23;
    v36 = 2082;
    v37 = v24;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function alarms.getAll() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v26 = v32;
    v32 = 0;
    if (v26)
    {
      if (*v26 == 1)
      {
        WTF::fastFree(v26, v25);
      }

      else
      {
        --*v26;
      }
    }

    v27 = v31;
    v31 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }
  }

  if (a4 != 1)
  {
    goto LABEL_11;
  }

  if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      *a6 = WebKit::toJSError(this, @"alarms.getAll()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
      v21 = JSValueMakeUndefined(this);
      goto LABEL_16;
    }
  }

  v16 = *a5;
  v17 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v16, v17, buf);
  v18 = *buf;
  if (*buf)
  {
    Undefined = 0;
  }

  else
  {
LABEL_11:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v32 = resolve;
    *buf = this;
    v31 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v28, buf, &v32, &v31);
    v18 = v28;
  }

  *buf = v18;
  WebKit::WebExtensionAPIAlarms::getAll(v12, buf);
  v20 = *buf;
  *buf = 0;
  if (v20)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
  }

  if (Undefined)
  {
    goto LABEL_17;
  }

  v21 = JSValueMakeUndefined(this);
LABEL_16:
  Undefined = v21;
LABEL_17:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}