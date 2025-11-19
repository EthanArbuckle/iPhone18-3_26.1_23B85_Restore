uint64_t IPC::ArgumentCoder<WebKit::WebGPU::SupportedFeatures,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v9);
  if (*a1)
  {
    if ((v10 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    *&v6 = 0;
    v7 = v9;
    v9 = v6;
    v8 = v6;
    *a2 = v7;
    *(a2 + 16) = 1;
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v5);
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  if (v10 == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v5);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::StorageTextureBindingLayout,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[1]);
  v4 = a2[2];

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

void *IPC::ArgumentCoder<WebKit::WebGPU::StencilFaceState,void>::encode(void *result, _BYTE *a2)
{
  if (!result[1])
  {
    goto LABEL_11;
  }

  **result = *a2;
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_10;
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
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = v6 - 1;
    v3 = v6 == 1;
    v8 = (*result + 1);
    *result = v8;
    result[1] = v7;
    if (v3)
    {
      goto LABEL_11;
    }

    *v8 = a2[2];
    v9 = result[1];
    if (!v9)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v10 = v9 - 1;
    v3 = v9 == 1;
    v11 = (*result + 1);
    *result = v11;
    result[1] = v10;
    if (!v3)
    {
      *v11 = a2[3];
      v12 = result[1];
      if (v12)
      {
        ++*result;
        result[1] = v12 - 1;
        return result;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::RenderPassTimestampWrites,void>::encode(uint64_t a1, uint64_t a2)
{
  result = IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  v5 = -*a1;
  v6 = v5 & 3 | 4;
  if (*(a1 + 8) < v6)
  {
    goto LABEL_8;
  }

  *(*a1 + (v5 & 3)) = *(a2 + 8);
  v7 = *(a1 + 8);
  v8 = v7 - v6;
  if (v7 < v6)
  {
    goto LABEL_7;
  }

  v9 = *a1 + v6;
  *a1 = v9;
  *(a1 + 8) = v8;
  v10 = -v9 & 3 | 4;
  if (v8 >= v10)
  {
    *(v9 + (-v9 & 3)) = *(a2 + 12);
    v11 = *(a1 + 8);
    v12 = v11 >= v10;
    v13 = v11 - v10;
    if (v12)
    {
      *a1 += v10;
      *(a1 + 8) = v13;
      return result;
    }

LABEL_7:
    __break(1u);
  }

LABEL_8:
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::RenderPassDepthStencilAttachment,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 12));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 14));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 24));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 26));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 28));
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::RenderPassDepthStencilAttachment,void>::encode(uint64_t a1, uint64_t a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  v4 = -*a1;
  v5 = v4 & 3 | 4;
  if (*(a1 + 8) < v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *(*a1 + (v4 & 3)) = *(a2 + 8);
    v6 = *(a1 + 8);
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (!v7)
    {
      goto LABEL_14;
    }

    *a1 += v5;
    *(a1 + 8) = v8;
  }

  IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, (a2 + 12));
  IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, (a2 + 14));
  if (!*(a1 + 8))
  {
    goto LABEL_15;
  }

  **a1 = *(a2 + 16);
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = *a1 + 1;
    *a1 = v11;
    *(a1 + 8) = v10;
    v12 = -v11 & 3 | 4;
    if (v10 < v12)
    {
      goto LABEL_15;
    }

    *(v11 + (-v11 & 3)) = *(a2 + 20);
    v13 = *(a1 + 8);
    v7 = v13 >= v12;
    v14 = v13 - v12;
    if (v7)
    {
      *a1 += v12;
      *(a1 + 8) = v14;
      goto LABEL_11;
    }
  }

LABEL_14:
  while (1)
  {
    __break(1u);
LABEL_15:
    *a1 = 0;
    *(a1 + 8) = 0;
LABEL_11:
    IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, (a2 + 24));
    result = IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, (a2 + 26));
    if (!*(a1 + 8))
    {
      break;
    }

    **a1 = *(a2 + 28);
    v16 = *(a1 + 8);
    if (v16)
    {
      ++*a1;
      *(a1 + 8) = v16 - 1;
      return result;
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::WebGPU::LoadOp>>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10)
    {
      if (v2)
      {
        (*(*v10 + 16))(v10);
        v2 = a1[1];
      }
    }

    else
    {
      v2 = 0;
    }

LABEL_14:
    *a1 = 0;
    a1[1] = 0;
    v11 = a1[3];
    if (v11)
    {
      if (v2)
      {
        (*(*v11 + 16))(v11);
        v4 = *a1;
        v2 = a1[1];
LABEL_17:
        *a1 = 0;
        a1[1] = 0;
        v12 = a1[3];
        if (v12 && v2)
        {
          (*(*v12 + 16))(v12, v4);
        }

        v5 = 0;
        v7 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    goto LABEL_17;
  }

  a1[2] = (v3 + 1);
  if (!v3)
  {
    goto LABEL_14;
  }

  v5 = *v3;
  if (v5 >= 2)
  {
    goto LABEL_17;
  }

  if (!v5)
  {
    v7 = 0;
    v8 = 0x10000;
    return v7 | v5 | v8;
  }

  v6 = IPC::Decoder::decode<WebCore::WebGPU::PredefinedColorSpace>(a1);
  if ((v6 & 0xFF00) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = 256;
  if (v6 > 0xFFu)
  {
    v8 = (v6 << 8) & 0xFF0000;
    return v7 | v5 | v8;
  }

LABEL_19:
  v13 = *a1;
  v14 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v15 = a1[3];
  if (v15)
  {
    v17 = v7;
    v16 = v5;
    if (v14)
    {
      (*(*v15 + 16))(v15, v13);
    }

    v8 = 0;
    v5 = v16;
    v7 = v17;
  }

  else
  {
    v8 = 0;
  }

  return v7 | v5 | v8;
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::RenderPassColorAttachment,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 8);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 16);
  IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>> const&>(a1, a2 + 32);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  v4 = *(a2 + 81);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

WTF *IPC::ArgumentCoder<WebKit::WebGPU::RenderPassColorAttachment,void>::encode(WTF *a1, uint64_t a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(a1, a2 + 8);
  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(a1, a2 + 16);
  v5 = *(a1 + 1);
  if ((*(a2 + 72) & 1) == 0)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    **a1 = 0;
    v8 = *(a1 + 1);
    if (!v8)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v7 = v8 - 1;
    ++*a1;
    *(a1 + 1) = v7;
LABEL_10:
    if (!v7)
    {
      goto LABEL_16;
    }

    **a1 = *(a2 + 80);
    v9 = *(a1 + 1);
    if (v9)
    {
      v11 = v9 - 1;
      v10 = v9 == 1;
      v12 = (*a1 + 1);
      *a1 = v12;
      *(a1 + 1) = v11;
      if (!v10)
      {
        *v12 = *(a2 + 81);
        v13 = *(a1 + 1);
        if (v13)
        {
          ++*a1;
          *(a1 + 1) = v13 - 1;
          return result;
        }

        goto LABEL_15;
      }

LABEL_16:
      *a1 = 0;
      *(a1 + 1) = 0;
      return result;
    }

    goto LABEL_15;
  }

  if (v5)
  {
    **a1 = 1;
    v6 = *(a1 + 1);
    if (!v6)
    {
      goto LABEL_15;
    }

    ++*a1;
    *(a1 + 1) = v6 - 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  if (*(a2 + 72))
  {
    result = IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&>(a1, a2 + 32);
    v7 = *(a1 + 1);
    goto LABEL_10;
  }

  v14 = std::__throw_bad_optional_access[abi:sn200100]();
  return IPC::ArgumentCoder<WebKit::WebGPU::ProgrammableStage,void>::encode(v14);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ProgrammableStage,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = a2 + 3;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, (a2 + 1));

  return IPC::VectorArgumentCoder<false,WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ProgrammableStage,void>::encode(void *a1, void *a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::String> const&>(a1, (a2 + 1));

  return IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 3));
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::PrimitiveState,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, a2 + 1);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[4]);

  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 5);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::PrimitiveState,void>::encode(uint64_t result, _BYTE *a2)
{
  if (!*(result + 8))
  {
    goto LABEL_20;
  }

  **result = *a2;
  v2 = *(result + 8);
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2 - 1;
  v4 = (*result + 1);
  *result = v4;
  *(result + 8) = v2 - 1;
  v5 = a2 + 2;
  if ((a2[2] & 1) == 0)
  {
    if (!v3)
    {
      goto LABEL_21;
    }

    *v4 = 0;
LABEL_11:
    v9 = *(result + 8);
    if (v9)
    {
      v11 = v9 - 1;
      v10 = v9 == 1;
      v12 = (*result + 1);
      *result = v12;
      *(result + 8) = v11;
      if (v10)
      {
        goto LABEL_21;
      }

      *v12 = a2[3];
      v13 = *(result + 8);
      if (v13)
      {
        v14 = v13 - 1;
        v10 = v13 == 1;
        v15 = (*result + 1);
        *result = v15;
        *(result + 8) = v14;
        if (v10)
        {
          goto LABEL_21;
        }

        *v15 = a2[4];
        v16 = *(result + 8);
        if (v16)
        {
          v17 = v16 - 1;
          v10 = v16 == 1;
          v18 = (*result + 1);
          *result = v18;
          *(result + 8) = v17;
          if (!v10)
          {
            *v18 = a2[5];
            v19 = *(result + 8);
            if (v19)
            {
              ++*result;
              *(result + 8) = v19 - 1;
              return result;
            }

            goto LABEL_19;
          }

LABEL_21:
          *result = 0;
          *(result + 8) = 0;
          return result;
        }
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    *result = 0;
    *(result + 8) = 0;
    v21 = a2[2];
    v20 = a2 + 2;
    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }

    v5 = v20;
    goto LABEL_23;
  }

  if (v3)
  {
    *v4 = 1;
    v6 = *(result + 8);
    if (!v6)
    {
      goto LABEL_19;
    }

    v7 = v6 - 1;
    v8 = (*result + 1);
    *result = v8;
    *(result + 8) = v7;
    if ((*v5 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (!v7)
    {
      goto LABEL_21;
    }

    *v8 = a2[1];
    goto LABEL_11;
  }

LABEL_23:
  *result = 0;
  *(result + 8) = 0;
  if (*v5)
  {
    goto LABEL_21;
  }

LABEL_24:
  v22 = std::__throw_bad_optional_access[abi:sn200100]();
  return IPC::ArgumentCoder<WebKit::WebGPU::ColorTargetState,void>::encode(v22, v23);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ColorTargetState,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::BlendState>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::BlendState> const&>(a1, (a2 + 1));
  v4 = *(a2 + 8);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ColorDict,void>::encode(IPC::Encoder *a1, double *a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[2]);
  v4 = a2[3];

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ColorDict,void>::encode(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(a1, &v5, 1);
  v5 = a2[1];
  IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(a1, &v5, 1);
  v5 = a2[2];
  IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(a1, &v5, 1);
  v5 = a2[3];
  return IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(a1, &v5, 1);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ColorDict,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<unsigned long long>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<unsigned long long>(a1);
  v9 = v8;
  v10 = IPC::Decoder::decode<unsigned long long>(a1);
  v12 = v11;
  result = IPC::Decoder::decode<unsigned long long>(a1);
  v15 = *a1;
  if (!*a1)
  {
    goto LABEL_9;
  }

  if ((v6 & 1) == 0 || (v9 & 1) == 0 || (v12 & 1) == 0 || (v14 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  LOBYTE(v15) = 1;
  *(a2 + 16) = v10;
  *(a2 + 24) = result;
LABEL_7:
  *(a2 + 32) = v15;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::CanvasConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 9));
  IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 16);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 33));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 34));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 35));
}

void *IPC::ArgumentCoder<WebKit::WebGPU::CanvasConfiguration,void>::encode(void *a1, uint64_t a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  if (!a1[1])
  {
    goto LABEL_16;
  }

  **a1 = *(a2 + 8);
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_15;
  }

  v6 = v4 - 1;
  v5 = v4 == 1;
  v7 = (*a1 + 1);
  *a1 = v7;
  a1[1] = v6;
  if (v5)
  {
    goto LABEL_16;
  }

  *v7 = *(a2 + 9);
  v8 = a1[1];
  if (!v8)
  {
    goto LABEL_15;
  }

  ++*a1;
  for (a1[1] = v8 - 1; ; a1[1] = 0)
  {
    result = IPC::VectorArgumentCoder<false,WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 16);
    if (!a1[1])
    {
      break;
    }

    **a1 = *(a2 + 32);
    v10 = a1[1];
    if (v10)
    {
      v11 = v10 - 1;
      v5 = v10 == 1;
      v12 = (*a1 + 1);
      *a1 = v12;
      a1[1] = v11;
      if (v5)
      {
        break;
      }

      *v12 = *(a2 + 33);
      v13 = a1[1];
      if (v13)
      {
        v14 = v13 - 1;
        v5 = v13 == 1;
        v15 = (*a1 + 1);
        *a1 = v15;
        a1[1] = v14;
        if (v5)
        {
          break;
        }

        *v15 = *(a2 + 34);
        v16 = a1[1];
        if (v16)
        {
          v17 = v16 - 1;
          v5 = v16 == 1;
          v18 = (*a1 + 1);
          *a1 = v18;
          a1[1] = v17;
          if (v5)
          {
            break;
          }

          *v18 = *(a2 + 35);
          v19 = a1[1];
          if (v19)
          {
            ++*a1;
            a1[1] = v19 - 1;
            return result;
          }
        }
      }
    }

LABEL_15:
    __break(1u);
LABEL_16:
    *a1 = 0;
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::CanvasConfiguration,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<WebCore::WebGPU::TextureFormat>(a1);
  v8 = IPC::Decoder::decode<WTF::OptionSet<WebCore::WebGPU::TextureUsage>>(a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::WebGPU::TextureFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v50, a1);
  result = IPC::Decoder::decode<WebCore::WebGPU::PredefinedColorSpace>(a1);
  v10 = a1[1];
  v11 = a1[2];
  v12 = *a1;
  if (v10 <= &v11[-*a1])
  {
    goto LABEL_24;
  }

  a1[2] = (v11 + 1);
  if (!v11)
  {
    v42 = result;
    goto LABEL_27;
  }

  v13 = *v11;
  if (v13 >= 2)
  {
    goto LABEL_31;
  }

  v14 = v13 | 0x100;
LABEL_5:
  v15 = a1[2];
  if (v10 <= v15 - v12)
  {
    while (1)
    {
      *a1 = 0;
      a1[1] = 0;
      v26 = a1[3];
      if (v26)
      {
        v41 = v14;
        v49 = result;
        if (v10)
        {
          (*(*v26 + 16))(v26, v12);
          v12 = *a1;
          v10 = a1[1];
        }

        else
        {
          v12 = 0;
        }

        v14 = v41;
        result = v49;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

LABEL_35:
      *a1 = 0;
      a1[1] = 0;
      v27 = a1[3];
      if (v27)
      {
        v40 = v14;
        v48 = result;
        if (v10)
        {
          (*(*v27 + 16))(v27, v12);
          v12 = *a1;
          v10 = a1[1];
        }

        else
        {
          v12 = 0;
        }

        v14 = v40;
        result = v48;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

LABEL_37:
      *a1 = 0;
      a1[1] = 0;
      v28 = a1[3];
      if (v28)
      {
        v36 = v14;
        v43 = result;
        if (v10)
        {
          (*(*v28 + 16))(v28, v12);
          v17 = 0;
          v12 = *a1;
          v10 = a1[1];
          v14 = v36;
          result = v43;
          goto LABEL_9;
        }

        v12 = 0;
        v17 = 0;
        result = result;
      }

      else
      {
        v12 = 0;
        v17 = 0;
        v10 = 0;
      }

LABEL_39:
      *a1 = 0;
      a1[1] = 0;
      v29 = a1[3];
      if (v29)
      {
        v35 = v17;
        v39 = v14;
        v46 = result;
        if (v10)
        {
          (*(*v29 + 16))(v29, v12);
          v12 = *a1;
          v10 = a1[1];
        }

        else
        {
          v12 = 0;
        }

        v14 = v39;
        result = v46;
        v17 = v35;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

LABEL_41:
      *a1 = 0;
      a1[1] = 0;
      v30 = a1[3];
      if (v30)
      {
        v34 = v17;
        v38 = v14;
        v45 = result;
        if (v10)
        {
          (*(*v30 + 16))(v30, v12);
          v19 = 0;
          v12 = *a1;
          v10 = a1[1];
        }

        else
        {
          v12 = 0;
          v19 = 0;
        }

        v14 = v38;
        result = v45;
        v17 = v34;
      }

      else
      {
        v10 = 0;
        v12 = 0;
        v19 = 0;
      }

LABEL_43:
      *a1 = 0;
      a1[1] = 0;
      v31 = a1[3];
      if (!v31)
      {
        goto LABEL_44;
      }

      if (!v10)
      {
        goto LABEL_44;
      }

      v32 = v19;
      v33 = v17;
      v37 = v14;
      v44 = result;
      (*(*v31 + 16))(v31, v12);
      v20 = 0;
      v12 = *a1;
      v14 = v37;
      result = v44;
      v19 = v32;
      v17 = v33;
      if (!*a1)
      {
        goto LABEL_44;
      }

LABEL_13:
      if (v6 & 1) != 0 && (v7 & 0x100) != 0 && (v8 & 0x100) != 0 && (v51 & 1) != 0 && result > 0xFFu && v14 > 0xFF && v17 > 0xFF && (v20)
      {
        v21 = v50[0];
        v22 = v50[1];
        result = result & 0xFFFE00FF | ((v14 & 0x1FF) << 8);
        *a2 = v4;
        *(a2 + 8) = v7;
        *(a2 + 9) = v8;
        *(a2 + 16) = v21;
        *(a2 + 24) = v22;
        *(a2 + 32) = result | (v17 << 16) | ((v19 != 0) << 24);
        *(a2 + 40) = 1;
        return result;
      }

      __break(1u);
LABEL_24:
      v42 = result;
      *a1 = 0;
      a1[1] = 0;
      v23 = a1[3];
      if (!v23)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_26;
      }

      (*(*v23 + 16))(v23);
      v12 = *a1;
      v10 = a1[1];
LABEL_27:
      *a1 = 0;
      a1[1] = 0;
      v24 = a1[3];
      if (!v24)
      {
        v10 = 0;
LABEL_29:
        v12 = 0;
        goto LABEL_30;
      }

      if (!v10)
      {
        goto LABEL_29;
      }

      (*(*v24 + 16))(v24, v12);
      v12 = *a1;
      v10 = a1[1];
LABEL_30:
      result = v42;
LABEL_31:
      *a1 = 0;
      a1[1] = 0;
      v25 = a1[3];
      if (v25)
      {
        v47 = result;
        if (v10)
        {
          (*(*v25 + 16))(v25, v12);
          v14 = 0;
          v12 = *a1;
          v10 = a1[1];
          result = v47;
          goto LABEL_5;
        }

        v12 = 0;
        v14 = 0;
        result = result;
      }

      else
      {
        v12 = 0;
        v14 = 0;
        v10 = 0;
      }
    }

    v10 = 0;
LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  a1[2] = (v15 + 1);
  if (!v15)
  {
    goto LABEL_35;
  }

  v16 = *v15;
  if (v16 >= 2)
  {
    goto LABEL_37;
  }

  v17 = v16 | 0x100;
LABEL_9:
  v18 = a1[2];
  if (v10 <= v18 - v12)
  {
    goto LABEL_39;
  }

  a1[2] = (v18 + 1);
  if (!v18)
  {
    goto LABEL_41;
  }

  v19 = *v18;
  if (v19 >= 2)
  {
    goto LABEL_43;
  }

  v20 = 1;
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_44:
  *a2 = 0;
  *(a2 + 40) = 0;
  if (v51)
  {
    result = v50[0];
    if (v50[0])
    {

      return WTF::fastFree(result, v12);
    }
  }

  return result;
}

void sub_19D7AF6C8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    if (a12)
    {
      WTF::fastFree(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::BufferBindingLayout,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1));
  v4 = *(a2 + 8);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::BufferBinding,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);

  return IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(a1, (a2 + 2));
}

uint64_t IPC::Decoder::decode<WebKit::WebGPU::BlendComponent>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (v13)
    {
      if (v2)
      {
        (*(*v13 + 16))(v13);
        v2 = a1[1];
      }
    }

    else
    {
      v2 = 0;
    }

LABEL_19:
    *a1 = 0;
    a1[1] = 0;
    v14 = a1[3];
    if (v14)
    {
      if (v2)
      {
        (*(*v14 + 16))(v14);
        v4 = *a1;
        v2 = a1[1];
        goto LABEL_22;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    goto LABEL_22;
  }

  a1[2] = (v3 + 1);
  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = *v3;
  if (v5 < 5)
  {
    v6 = v5 | 0x100;
    goto LABEL_5;
  }

LABEL_22:
  *a1 = 0;
  a1[1] = 0;
  v15 = a1[3];
  if (v15 && v2)
  {
    (*(*v15 + 16))(v15, v4);
  }

  v6 = 0;
LABEL_5:
  v7 = IPC::Decoder::decode<WebCore::WebGPU::BlendFactor>(a1);
  v8 = IPC::Decoder::decode<WebCore::WebGPU::BlendFactor>(a1);
  if (*a1)
  {
    if (v6 > 0xFF && v7 > 0xFFu && v8 > 0xFFu)
    {
      LODWORD(v9) = 0x1000000;
      return v6 | (v7 << 8) | v9 | (v8 << 16);
    }

    __break(1u);
  }

  v11 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v9 = a1[3];
  if (v9)
  {
    v12 = v8;
    if (v11)
    {
      (*(*v9 + 16))(v9);
    }

    LODWORD(v9) = 0;
    LOBYTE(v6) = 0;
    LOBYTE(v8) = v12;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 | (v7 << 8) | v9 | (v8 << 16);
}

void *IPC::ArgumentCoder<WebKit::WebGPU::BlendComponent,void>::encode(void *result, _BYTE *a2)
{
  if (!result[1])
  {
    goto LABEL_9;
  }

  **result = *a2;
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_8;
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
    if (!v6)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    v7 = v6 - 1;
    v3 = v6 == 1;
    v8 = (*result + 1);
    *result = v8;
    result[1] = v7;
    if (!v3)
    {
      *v8 = a2[2];
      v9 = result[1];
      if (v9)
      {
        ++*result;
        result[1] = v9 - 1;
        return result;
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::WebGPU::BlendFactor>(void *a1)
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
  if (v4 < 0xD)
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

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::BindGroupEntry,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WebKit::WebGPU::BufferBinding,void>::encode(a1, (a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  v4 = *(a2 + 48);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::BindGroupEntry,void>::encode(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = -*result;
  v5 = v4 & 3 | 4;
  if (*(result + 8) < v5)
  {
    *result = 0;
    *(result + 8) = 0;
  }

  else
  {
    *(*result + (v4 & 3)) = *a2;
    v6 = *(result + 8);
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (!v7)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    *result += v5;
    *(result + 8) = v8;
  }

  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(result, (a2 + 8));
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(v3, (a2 + 16));
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(v3, a2 + 24);
  result = IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(v3, (a2 + 40));
  if (*(v3 + 1))
  {
    **v3 = *(a2 + 48);
    v9 = *(v3 + 1);
    if (v9)
    {
      ++*v3;
      *(v3 + 1) = v9 - 1;
      return result;
    }

    goto LABEL_8;
  }

LABEL_9:
  *v3 = 0;
  *(v3 + 1) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebUserScriptData,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);

  return IPC::ArgumentCoder<WebCore::UserScript,void>::encode(a1, (a2 + 2));
}

void IPC::ArgumentCoder<WebKit::WebUserScriptData,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 0);
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    v10 = v11;
LABEL_7:
    IPC::Decoder::decode<WebCore::UserScript>(a1, v15);
    goto LABEL_8;
  }

  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v8 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 1);
    v10 = 0;
    goto LABEL_7;
  }

  IPC::Decoder::decode<WebCore::UserScript>(a1, v15);
  if ((v16 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 2);
  }

  v10 = 1;
LABEL_8:
  if (*a1)
  {
    if (v6)
    {
      *&v13 = v4;
      if (v10)
      {
        *(&v13 + 1) = v7;
        if (v16)
        {
          WebCore::UserScript::UserScript(v14, v15);
          *a2 = v13;
          WebCore::UserScript::UserScript(a2 + 16, v14);
          *(a2 + 104) = 1;
          WebCore::UserScript::~UserScript(v14, v12);
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 104) = 0;
LABEL_13:
  if (v16 == 1)
  {
    WebCore::UserScript::~UserScript(v15, v9);
  }
}

void sub_19D7AFDD8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a34 == 1)
  {
    WebCore::UserScript::~UserScript(&a23, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebCore::UserScript>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::UserScript,void>::decode(a1, a2);
  if ((a2[88] & 1) == 0)
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

void sub_19D7AFE7C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 88) == 1)
  {
    WebCore::UserScript::~UserScript(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebUserStyleSheetData,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);

  return IPC::ArgumentCoder<WebCore::UserStyleSheet,void>::encode(a1, (a2 + 2));
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebUserStyleSheetData,void>::decode@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 0);
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    v11 = v12;
LABEL_7:
    result = IPC::Decoder::decode<WebCore::UserStyleSheet>(&v24, a1);
    goto LABEL_8;
  }

  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v8 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 1);
    v11 = 0;
    goto LABEL_7;
  }

  result = IPC::Decoder::decode<WebCore::UserStyleSheet>(&v24, a1);
  if ((v28 & 1) == 0)
  {
    result = IPC::Decoder::addIndexOfDecodingFailure(a1, 2);
  }

  v11 = 1;
LABEL_8:
  if (!*a1)
  {
LABEL_27:
    *a2 = 0;
    a2[120] = 0;
    goto LABEL_18;
  }

  if ((v6 & 1) == 0 || (*&v19 = v4, (v11 & 1) == 0) || (*(&v19 + 1) = v7, (v28 & 1) == 0))
  {
    __break(1u);
    goto LABEL_27;
  }

  WebCore::UserStyleSheet::UserStyleSheet(&v20, &v24);
  *a2 = v19;
  WebCore::UserStyleSheet::UserStyleSheet((a2 + 16), &v20);
  a2[120] = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v13);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v14);
  v15 = v21;
  v21 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v10);
  }

  result = v20;
  v20 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v10);
  }

LABEL_18:
  if (v28 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v10);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v16);
    v18 = v25;
    v25 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    result = v24;
    v24 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  return result;
}

void sub_19D7B00C4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25, WTF::StringImpl *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a38 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a33, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a31, v39);
    if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a26, v40);
    }

    if (a25)
    {
      if (atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a25, v40);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::UserStyleSheet>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v33);
  v4 = v34;
  if ((v34 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a2, 0);
  }

  IPC::Decoder::decode<WTF::URL>(a2, &v31);
  v5 = v4 ^ 1;
  if (((v4 ^ 1) & 1) == 0 && (v32 & 1) == 0)
  {
    v5 = 1;
    IPC::Decoder::addIndexOfDecodingFailure(a2, 1);
  }

  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, v29);
  if (((v5 | v30) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a2, 2);
    v5 = 1;
  }

  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, v27);
  if (((v5 | v28) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a2, 3);
    v5 = 1;
  }

  v6 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a2);
  if (v6 > 0xFFu)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  if ((v7 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a2, 4);
    v5 = 1;
  }

  v8 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2);
  if (v8 > 0xFFu)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5;
  }

  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a2, 5);
    v5 = 1;
  }

  v10 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a2);
  if (v10 > 0xFFu)
  {
    v11 = 1;
  }

  else
  {
    v11 = v5;
  }

  if ((v11 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a2, 6);
    v5 = 1;
  }

  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v25);
  if ((v26 & 1) == 0)
  {
    goto LABEL_56;
  }

  while (1)
  {
    if (!*a2)
    {
      *a1 = 0;
      a1[104] = 0;
      goto LABEL_41;
    }

    if (v34 & 1) != 0 && (v32 & 1) != 0 && (v30 & 1) != 0 && (v28 & 1) != 0 && v6 > 0xFFu && v8 > 0xFFu && v10 > 0xFFu && (v26)
    {
      break;
    }

    __break(1u);
LABEL_56:
    v13 = *a2;
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v17)
    {
      result = (*(*result + 16))(result, v13);
      v18 = v26;
    }

    else
    {
      v18 = 0;
    }

    if (((v5 | v18) & 1) == 0)
    {
      result = IPC::Decoder::addIndexOfDecodingFailure(a2, 7);
    }
  }

  WebCore::UserStyleSheet::UserStyleSheet();
  WebCore::UserStyleSheet::UserStyleSheet(a1, &v21);
  a1[104] = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v14);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v15);
  v16 = v22;
  v22 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v13);
  }

  result = v21;
  v21 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v13);
  }

LABEL_41:
  if (v28 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v13);
  }

  if (v30 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v13);
  }

  if (v32 == 1)
  {
    result = v31;
    v31 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  if (v34 == 1)
  {
    result = v33;
    v33 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  if ((a1[104] & 1) == 0)
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
        return (*(*result + 16))(result, v19);
      }
    }
  }

  return result;
}

void sub_19D7B0538(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  if (*(v29 + 104) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29 + 64, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29 + 48, v31);
    v33 = *(v29 + 8);
    *(v29 + 8) = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v32);
    }

    v34 = *v29;
    *v29 = 0;
    if (v34)
    {
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v32);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebScriptMessageHandlerData,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 0);
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    v11 = v12;
LABEL_7:
    result = IPC::Decoder::decode<WTF::String>(a1, &v14);
    goto LABEL_8;
  }

  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v8 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 1);
    v11 = 0;
    goto LABEL_7;
  }

  result = IPC::Decoder::decode<WTF::String>(a1, &v14);
  if ((v15 & 1) == 0)
  {
    result = IPC::Decoder::addIndexOfDecodingFailure(a1, 2);
  }

  v11 = 1;
LABEL_8:
  if (*a1)
  {
    if (v6 & 1) != 0 && (v11 & 1) != 0 && (v15)
    {
      v13 = v14;
      *a2 = v4;
      *(a2 + 8) = v7;
      *(a2 + 16) = v13;
      *(a2 + 24) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v15)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  return result;
}

void sub_19D7B07C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if ((a10 & 1) != 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::GPUProcessConnectionInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WebKit::CoreIPCAuditToken>,void>::encode<IPC::Encoder,std::optional<WebKit::CoreIPCAuditToken> const&>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 36));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 37));
}

uint64_t IPC::ArgumentCoder<WebKit::GPUProcessConnectionInfo,void>::decode@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<std::optional<WebKit::CoreIPCAuditToken>>(v8, this);
  v4 = IPC::Decoder::decode<BOOL>(this);
  result = IPC::Decoder::decode<BOOL>(this);
  if (*this)
  {
    if ((v10 & 1) != 0 && (v6 = v8[1], LOBYTE(v7) = v9, (v4 & 0x100) != 0) && (result & 0x100) != 0)
    {
      *a2 = v8[0];
      *(a2 + 16) = v6;
      *(a2 + 32) = v7;
      *(a2 + 36) = v4;
      *(a2 + 37) = result;
      *(a2 + 40) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 40) = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::BufferIdentifierSet,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 16);

  return IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 32);
}

IPC::Decoder *IPC::ArgumentCoder<WebKit::BufferIdentifierSet,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v14);
  if ((v16 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v11);
  if ((v13 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v8);
  if ((v10 & 1) == 0)
  {
    result = IPC::Decoder::markInvalid(a1);
  }

  if (*a1)
  {
    if (v16)
    {
      *&v5 = v14;
      BYTE8(v5) = v15;
      if (v13)
      {
        *&v6 = v11;
        BYTE8(v6) = v12;
        if (v10)
        {
          *&v7 = v8;
          BYTE8(v7) = v9;
          *a2 = v5;
          *(a2 + 16) = v6;
          *(a2 + 32) = v7;
          *(a2 + 48) = 1;
          return result;
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = (a2 + 34);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, a2 + 8);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 33));

  return IPC::Encoder::operator<<<BOOL>(a1, v4);
}

WTF *IPC::ArgumentCoder<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,void>::encode(uint64_t a1, uint64_t a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2);
  result = IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, a2 + 8);
  if (!*(a1 + 8))
  {
    goto LABEL_9;
  }

  **a1 = *(a2 + 32);
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = v5 - 1;
  v6 = v5 == 1;
  v8 = (*a1 + 1);
  *a1 = v8;
  *(a1 + 8) = v7;
  if (!v6)
  {
    *v8 = *(a2 + 33);
    v9 = *(a1 + 8);
    if (!v9)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    v10 = v9 - 1;
    v6 = v9 == 1;
    v11 = (*a1 + 1);
    *a1 = v11;
    *(a1 + 8) = v10;
    if (!v6)
    {
      *v11 = *(a2 + 34);
      v12 = *(a1 + 8);
      if (v12)
      {
        ++*a1;
        *(a1 + 8) = v12 - 1;
        return result;
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

void IPC::ArgumentCoder<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  IPC::Decoder::decode<WebCore::Region>(v24, a1);
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *a1;
  if (v7 <= &v8[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_35;
  }

  v10 = v8 + 1;
  *(a1 + 2) = v8 + 1;
  if (!v8)
  {
LABEL_35:
    IPC::Decoder::markInvalid(a1);
    v11 = 0;
    goto LABEL_36;
  }

  v11 = *v8;
  if (v11 < 2)
  {
    v12 = 1;
    goto LABEL_5;
  }

LABEL_36:
  IPC::Decoder::markInvalid(a1);
  v12 = 0;
  v7 = *(a1 + 1);
  v10 = *(a1 + 2);
  v9 = *a1;
LABEL_5:
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
    IPC::Decoder::markInvalid(a1);
    goto LABEL_38;
  }

  v14 = v10 + 1;
  *(a1 + 2) = v10 + 1;
  if (!v10)
  {
LABEL_38:
    IPC::Decoder::markInvalid(a1);
    v15 = 0;
    goto LABEL_39;
  }

  v15 = *v10;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_12;
  }

LABEL_39:
  IPC::Decoder::markInvalid(a1);
  v16 = 0;
  v7 = *(a1 + 1);
  v14 = *(a1 + 2);
  v9 = *a1;
LABEL_12:
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
    IPC::Decoder::markInvalid(a1);
    goto LABEL_41;
  }

  *(a1 + 2) = v14 + 1;
  if (!v14)
  {
LABEL_41:
    IPC::Decoder::markInvalid(a1);
    v18 = 0;
    goto LABEL_42;
  }

  v18 = *v14;
  if (v18 < 2)
  {
    v19 = 1;
    goto LABEL_19;
  }

LABEL_42:
  IPC::Decoder::markInvalid(a1);
  v9 = *a1;
  v19 = 0;
LABEL_19:
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v9)
  {
    if (v6 & 1) != 0 && (v25)
    {
      WebCore::Region::Region();
      if (v12)
      {
        LOBYTE(v22) = v13;
        if (v16)
        {
          HIBYTE(v22) = v17;
          if (v19)
          {
            v23 = v20;
            *a2 = v4;
            WebCore::Region::Region();
            *(a2 + 32) = v22;
            *(a2 + 34) = v23;
            *(a2 + 40) = 1;
            WebCore::Region::~Region(&v21);
            goto LABEL_29;
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 40) = 0;
LABEL_29:
  if (v25 == 1)
  {
    WebCore::Region::~Region(v24);
  }
}

void sub_19D7B0D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
    WebCore::Region::~Region(&a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<PAL::SessionID,void>::decode(a1);
  if ((v3 & 1) == 0)
  {
    v4 = result;
    IPC::Decoder::markInvalid(a1);
    return v4;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::ImageBufferSetPrepareBufferForDisplayOutputData,void>::encode(IPC::Encoder *a1, unint64_t a2)
{
  IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 96));

  return IPC::ArgumentCoder<WebKit::BufferIdentifierSet,void>::encode(a1, a2 + 104);
}

WTF::MachSendRight *IPC::ArgumentCoder<WebKit::ImageBufferSetPrepareBufferForDisplayOutputData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(a1, v12);
  v4 = IPC::Decoder::decode<WebCore::GradientSpreadMethod>(v2);
  result = IPC::ArgumentCoder<WebKit::BufferIdentifierSet,void>::decode(v2, v10);
  v6 = v11;
  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }

  while (1)
  {
    if (!*v2)
    {
      *a2 = 0;
      *(a2 + 152) = 0;
      goto LABEL_8;
    }

    if (v13)
    {
      v2 = v8;
      std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](v8, v12);
      if ((v4 & 0x100) != 0)
      {
        v9[0] = v4;
        if (v6)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_13:
    result = IPC::Decoder::markInvalid(v2);
  }

  *&v9[8] = v10[0];
  *&v9[24] = v10[1];
  *&v9[40] = v10[2];
  result = std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](a2, v8);
  v7 = *&v9[16];
  *(a2 + 96) = *v9;
  *(a2 + 112) = v7;
  *(a2 + 128) = *&v9[32];
  *(a2 + 144) = *&v9[48];
  *(a2 + 152) = 1;
  if (v8[88] == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v8);
  }

LABEL_8:
  if (v13 == 1 && v12[88] == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v12);
  }

  return result;
}

void sub_19D7B0F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a21 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(&a10);
  }

  if (*(v21 - 56) == 1 && *(v21 - 64) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((v21 - 152));
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::ArgumentCoder<WebKit::MediaOverridesForTesting,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 2);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 4);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 6);

  return IPC::ArgumentCoder<std::optional<WebCore::ScreenDataOverrides>,void>::encode<IPC::Encoder,std::optional<WebCore::ScreenDataOverrides> const&>(a1, (a2 + 8));
}

IPC::Decoder *IPC::ArgumentCoder<WebKit::MediaOverridesForTesting,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v5 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v6 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v7 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  result = IPC::ArgumentCoder<std::optional<WebCore::ScreenDataOverrides>,void>::decode<IPC::Decoder>(a1, v12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v9 = *a1;
    if (!*a1)
    {
      break;
    }

    if (v4 & 0x10000) != 0 && (v5 & 0x10000) != 0 && (v6 & 0x10000) != 0 && (v7 & 0x10000) != 0 && (v13)
    {
      *(a2 + 8) = v12[0];
      *(a2 + 17) = *(v12 + 9);
      *a2 = v4;
      *(a2 + 2) = v5;
      *(a2 + 4) = v6;
      *(a2 + 6) = v7;
      LOBYTE(v9) = 1;
      goto LABEL_9;
    }

    __break(1u);
LABEL_11:
    v10 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v11)
    {
      result = (*(*result + 16))(result, v10);
    }
  }

  *a2 = 0;
LABEL_9:
  *(a2 + 40) = v9;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::MediaTimeUpdateData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));
  v4 = *(a2 + 24);

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::MediaTimeUpdateData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::MediaTime>(a1, v17);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
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
    v13 = *(a1 + 3);
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v15 = 0;
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
    v15 = 0;
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

  v15 = v7;
LABEL_21:
  *a1 = 0;
  *(a1 + 1) = 0;
  v14 = *(a1 + 3);
  if (v14 && v4)
  {
    (*(*v14 + 16))(v14, v6);
  }

  v8 = 0;
  v7 = v15;
LABEL_5:
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  if (*a1)
  {
    if (v18)
    {
      *&v16 = v17[0];
      *(&v16 + 5) = *(v17 + 5);
      if (v8 & 1) != 0 && (v11)
      {
        *a2 = v16;
        *(a2 + 16) = v9;
        *(a2 + 24) = result;
        *(a2 + 32) = 1;
        return result;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteCDMConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 16);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 33));
  v4 = *(a2 + 40);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteCDMConfiguration,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v48, a1);
  result = IPC::Decoder::decode<WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v45, a1);
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *a1;
  if (v8 <= &v9[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (v25)
    {
      if (v8)
      {
        (*(*v25 + 16))(v25);
        v8 = *(a1 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_39:
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (v26)
    {
      if (v8)
      {
        (*(*v26 + 16))(v26);
        v40 = 0;
        v10 = *a1;
        v8 = *(a1 + 1);
        goto LABEL_43;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    v40 = 0;
    goto LABEL_43;
  }

  v11 = v9 + 1;
  *(a1 + 2) = v9 + 1;
  if (!v9)
  {
    goto LABEL_39;
  }

  v12 = *v9;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_5;
  }

  v40 = *v9;
LABEL_43:
  *a1 = 0;
  *(a1 + 1) = 0;
  v27 = *(a1 + 3);
  if (!v27 || !v8)
  {
    v37 = 0;
    v28 = 0;
    v10 = 0;
LABEL_45:
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (v29 && v28)
    {
      (*(*v29 + 16))(v29, v10, v28);
      v34 = 0;
      v10 = *a1;
      v8 = *(a1 + 1);
    }

    else
    {
      v8 = 0;
      v10 = 0;
      v34 = 0;
    }

    goto LABEL_48;
  }

  result = (*(*v27 + 16))(v27, v10);
  v13 = 0;
  v10 = *a1;
  v8 = *(a1 + 1);
  v11 = *(a1 + 2);
  v12 = v40;
LABEL_5:
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v8 <= v11 - v10)
  {
    v37 = __PAIR64__(v14, v13);
    v28 = 0;
    v30 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v30 && v8)
    {
      (*(*v30 + 16))(v30);
      v10 = *a1;
      v28 = *(a1 + 1);
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_45;
  }

  *(a1 + 2) = v11 + 1;
  if (!v11)
  {
    v37 = __PAIR64__(v14, v13);
    v28 = v8;
    goto LABEL_45;
  }

  v15 = *v11;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_12;
  }

  v34 = *v11;
  v37 = __PAIR64__(v14, v13);
LABEL_48:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v8)
    {
      result = (*(*result + 16))(result, v10);
      v16 = 0;
      v10 = *a1;
      v8 = *(a1 + 1);
      goto LABEL_51;
    }

    v10 = 0;
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v16 = 0;
LABEL_51:
  v13 = v37;
  v14 = HIDWORD(v37);
  v15 = v34;
LABEL_12:
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v8 < v18 - v10 || v8 - (v18 - v10) <= 7)
  {
    goto LABEL_31;
  }

  *(a1 + 2) = v18 + 8;
  if (!v18)
  {
    goto LABEL_35;
  }

  v19 = *v18;
  v20 = 1;
  if (v10)
  {
    while (1)
    {
      if (v50)
      {
        v21 = v48;
        v5.n128_u64[0] = v49;
        v48 = 0;
        v49 = 0;
        if (v47)
        {
          v22 = v45;
          v6.n128_u64[0] = v46;
          v45 = 0;
          v46 = 0;
          if (v13)
          {
            LOBYTE(v44) = v14;
            if (v16)
            {
              BYTE1(v44) = v17;
              if (v20)
              {
                *&v7 = 0;
                *(&v44 + 1) = v19;
                *a2 = v21;
                *(a2 + 8) = v5.n128_u64[0];
                v42 = v7;
                v43 = v7;
                *(a2 + 16) = v22;
                *(a2 + 24) = v6.n128_u64[0];
                *(a2 + 32) = v44;
                *(a2 + 48) = 1;
                WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v10);
                result = WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v23);
                goto LABEL_25;
              }
            }
          }
        }
      }

      __break(1u);
LABEL_31:
      v31 = v16;
      v33 = v17;
      v36 = v13;
      v39 = v14;
      *a1 = 0;
      *(a1 + 1) = 0;
      v24 = *(a1 + 3);
      if (!v24)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_33;
      }

      (*(*v24 + 16))(v24, v5, v6);
      v10 = *a1;
      v8 = *(a1 + 1);
LABEL_34:
      v13 = v36;
      v14 = v39;
      v16 = v31;
      v17 = v33;
LABEL_35:
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result)
      {
        if (v8)
        {
          v32 = v16;
          v35 = v17;
          v38 = v13;
          v41 = v14;
          result = (*(*result + 16))(result);
          v20 = 0;
          v19 = 0;
          v10 = *a1;
          v13 = v38;
          v14 = v41;
          v16 = v32;
          v17 = v35;
          if (*a1)
          {
            continue;
          }
        }
      }

      goto LABEL_36;
    }

    v8 = 0;
LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

LABEL_36:
  *a2 = 0;
  *(a2 + 48) = 0;
LABEL_25:
  if (v47 == 1)
  {
    result = WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v10);
  }

  if (v50 == 1)
  {
    return WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v10);
  }

  return result;
}

void sub_19D7B17E0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, a2);
  }

  if (*(v19 - 24) == 1)
  {
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19 - 40, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteAudioSessionConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 56));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 57));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  v4 = *(a2 + 72);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteAudioSessionConfiguration,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v63);
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
      v60 = *v5 | 0x100000000;
      v11 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v50 = *(a1 + 3);
    if (!v50)
    {
      v4 = 0;
LABEL_107:
      v6 = 0;
      goto LABEL_108;
    }

    if (!v4)
    {
      goto LABEL_107;
    }

    (*(*v50 + 16))(v50, v6);
    v6 = *a1;
    v4 = *(a1 + 1);
  }

LABEL_108:
  *a1 = 0;
  *(a1 + 1) = 0;
  v51 = *(a1 + 3);
  if (!v51)
  {
    v11 = 0;
    v4 = 0;
LABEL_110:
    v6 = 0;
    v60 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    v11 = 0;
    goto LABEL_110;
  }

  (*(*v51 + 16))(v51, v6);
  v60 = 0;
  v11 = *a1;
  v4 = *(a1 + 1);
  v6 = *a1;
LABEL_8:
  v12 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v4 >= v12 - v6 && v4 - (v12 - v6) > 7)
  {
    *(a1 + 2) = v12 + 1;
    if (v12)
    {
      v56 = *v12;
      v59 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34)
    {
      if (v4)
      {
        (*(*v34 + 16))(v34, v11);
        v11 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_71;
      }
    }

    else
    {
      v4 = 0;
    }

    v11 = 0;
  }

LABEL_71:
  *a1 = 0;
  *(a1 + 1) = 0;
  v35 = *(a1 + 3);
  if (v35)
  {
    if (v4)
    {
      (*(*v35 + 16))(v35, v11);
      v59 = 0;
      v56 = 0;
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
  v59 = 0;
  v56 = 0;
LABEL_15:
  v14 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v4 < v14 - v6 || v4 - (v14 - v6) <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36)
    {
      if (v4)
      {
        (*(*v36 + 16))(v36, v11);
        v11 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_77;
      }
    }

    else
    {
      v4 = 0;
    }

    v11 = 0;
  }

  else
  {
    *(a1 + 2) = v14 + 1;
    if (v14)
    {
      v55 = *v14;
      v58 = 1;
      goto LABEL_19;
    }
  }

LABEL_77:
  *a1 = 0;
  *(a1 + 1) = 0;
  v37 = *(a1 + 3);
  if (v37)
  {
    if (v4)
    {
      (*(*v37 + 16))(v37, v11);
      v58 = 0;
      v55 = 0;
      v11 = *a1;
      v4 = *(a1 + 1);
      v6 = *a1;
      goto LABEL_19;
    }

    v11 = 0;
  }

  else
  {
    v11 = 0;
    v4 = 0;
  }

  v6 = 0;
  v58 = 0;
  v55 = 0;
LABEL_19:
  v15 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v4 < v15 - v6 || v4 - (v15 - v6) <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38)
    {
      if (v4)
      {
        (*(*v38 + 16))(v38, v11);
        v11 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_83;
      }
    }

    else
    {
      v4 = 0;
    }

    v11 = 0;
  }

  else
  {
    *(a1 + 2) = v15 + 1;
    if (v15)
    {
      v54 = *v15;
      v57 = 1;
      goto LABEL_23;
    }
  }

LABEL_83:
  *a1 = 0;
  *(a1 + 1) = 0;
  v39 = *(a1 + 3);
  if (v39)
  {
    if (v4)
    {
      (*(*v39 + 16))(v39, v11);
      v57 = 0;
      v54 = 0;
      v11 = *a1;
      v4 = *(a1 + 1);
      v6 = *a1;
      goto LABEL_23;
    }

    v11 = 0;
  }

  else
  {
    v11 = 0;
    v4 = 0;
  }

  v6 = 0;
  v57 = 0;
  v54 = 0;
LABEL_23:
  v16 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v4 < v16 - v6 || v4 - (v16 - v6) <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (v40)
    {
      if (v4)
      {
        (*(*v40 + 16))(v40, v11);
        v11 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_89;
      }
    }

    else
    {
      v4 = 0;
    }

    v11 = 0;
  }

  else
  {
    *(a1 + 2) = v16 + 1;
    if (v16)
    {
      v17 = *v16;
      v18 = 1;
      goto LABEL_27;
    }
  }

LABEL_89:
  *a1 = 0;
  *(a1 + 1) = 0;
  v41 = *(a1 + 3);
  if (v41)
  {
    if (v4)
    {
      (*(*v41 + 16))(v41, v11);
      v18 = 0;
      v17 = 0;
      v11 = *a1;
      v4 = *(a1 + 1);
      v6 = *a1;
      goto LABEL_27;
    }

    v11 = 0;
  }

  else
  {
    v11 = 0;
    v4 = 0;
  }

  v6 = 0;
  v18 = 0;
  v17 = 0;
LABEL_27:
  v19 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v4 < v19 - v6 || v4 - (v19 - v6) <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v42 = *(a1 + 3);
    if (v42)
    {
      if (v4)
      {
        (*(*v42 + 16))(v42, v11);
        v11 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_95;
      }
    }

    else
    {
      v4 = 0;
    }

    v11 = 0;
    goto LABEL_95;
  }

  v20 = (v19 + 1);
  *(a1 + 2) = v19 + 1;
  if (v19)
  {
    v21 = *v19;
    v22 = 1;
    goto LABEL_31;
  }

LABEL_95:
  *a1 = 0;
  *(a1 + 1) = 0;
  v43 = *(a1 + 3);
  if (!v43 || !v4)
  {
    v21 = 0;
    v22 = 0;
    v44 = 0;
    v11 = 0;
LABEL_97:
    *a1 = 0;
    *(a1 + 1) = 0;
    v45 = *(a1 + 3);
    if (v45 && v44)
    {
      (*(*v45 + 16))(v45, v11, v44);
      v24 = 0;
      v11 = *a1;
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = 0;
      v11 = 0;
      v24 = 0;
    }

    goto LABEL_99;
  }

  (*(*v43 + 16))(v43, v11);
  v22 = 0;
  v21 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
  v20 = *(a1 + 2);
  v11 = *a1;
LABEL_31:
  if (v4 <= &v20[-v6])
  {
    v44 = 0;
    v52 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v52 && v4)
    {
      (*(*v52 + 16))(v52, v11);
      v11 = *a1;
      v44 = *(a1 + 1);
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_97;
  }

  v23 = v20 + 1;
  *(a1 + 2) = v20 + 1;
  if (!v20)
  {
    v44 = v4;
    goto LABEL_97;
  }

  v24 = *v20;
  if (v24 < 2)
  {
    v25 = 1;
    goto LABEL_35;
  }

LABEL_99:
  *a1 = 0;
  *(a1 + 1) = 0;
  v46 = *(a1 + 3);
  if (!v46 || !v4)
  {
    v26 = 0;
    v25 = 0;
    v47 = 0;
    v11 = 0;
LABEL_101:
    *a1 = 0;
    *(a1 + 1) = 0;
    v48 = *(a1 + 3);
    if (v48 && v47)
    {
      (*(*v48 + 16))(v48, v11, v47);
      v27 = 0;
      v11 = *a1;
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = 0;
      v11 = 0;
      v27 = 0;
    }

    goto LABEL_103;
  }

  (*(*v46 + 16))(v46, v11);
  v25 = 0;
  v6 = *a1;
  v4 = *(a1 + 1);
  v23 = *(a1 + 2);
  v11 = *a1;
LABEL_35:
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v4 <= &v23[-v6])
  {
    v47 = 0;
    v53 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v53 && v4)
    {
      (*(*v53 + 16))(v53, v11);
      v11 = *a1;
      v47 = *(a1 + 1);
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_101;
  }

  *(a1 + 2) = v23 + 1;
  if (!v23)
  {
    v47 = v4;
    goto LABEL_101;
  }

  v27 = *v23;
  if (v27 < 2)
  {
    v28 = 1;
    goto LABEL_42;
  }

LABEL_103:
  *a1 = 0;
  *(a1 + 1) = 0;
  v49 = *(a1 + 3);
  if (v49 && v4)
  {
    (*(*v49 + 16))(v49, v11);
  }

  v28 = 0;
LABEL_42:
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  IPC::Decoder::decode<WTF::String>(a1, &v61);
  result = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1);
  if (*a1)
  {
    if (v64)
    {
      v32 = v63;
      v63 = 0;
      if (v60 & 0x100000000) != 0 && (v59 & 1) != 0 && (v58 & 1) != 0 && (v57 & 1) != 0 && (v18 & 1) != 0 && (v22 & 1) != 0 && (v25 & 1) != 0 && (v28 & 1) != 0 && (v62)
      {
        v33 = v61;
        v61 = 0;
        if ((result & 0x100) != 0)
        {
          *a2 = v32;
          *(a2 + 8) = v60;
          *(a2 + 16) = v56;
          *(a2 + 24) = v55;
          *(a2 + 32) = v54;
          *(a2 + 40) = v17;
          *(a2 + 48) = v21;
          *(a2 + 56) = v26;
          *(a2 + 57) = v29;
          *(a2 + 64) = v33;
          *(a2 + 72) = result;
          *(a2 + 80) = 1;
          goto LABEL_58;
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 80) = 0;
  if (v62)
  {
    result = v61;
    v61 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v31);
      }
    }
  }

LABEL_58:
  if (v64 == 1)
  {
    result = v63;
    v63 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v31);
      }
    }
  }

  return result;
}

void sub_19D7B21B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16, WTF::StringImpl *a17, char a18)
{
  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteMediaPlayerConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 8));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 9));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 10));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 11));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 12));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 13));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 14));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 15));
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteMediaPlayerConfiguration,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v88);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    goto LABEL_60;
  }

  v7 = v5 + 1;
  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_62;
  }

  v8 = *v5;
  if (v8 < 2)
  {
    v9 = 1;
    goto LABEL_5;
  }

  v80 = v8;
  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v45 = *(a1 + 3);
    if (!v45 || !v4)
    {
      v79 = 0;
      v46 = 0;
      v6 = 0;
LABEL_68:
      *a1 = 0;
      *(a1 + 1) = 0;
      v47 = *(a1 + 3);
      if (v47 && v46)
      {
        (*(*v47 + 16))(v47, v6, v46);
        v81 = 0;
        v6 = *a1;
        v4 = *(a1 + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v81 = 0;
      }

      goto LABEL_71;
    }

    (*(*v45 + 16))(v45, v6);
    v9 = 0;
    v6 = *a1;
    v4 = *(a1 + 1);
    v7 = *(a1 + 2);
    v8 = v80;
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
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
      v46 = 0;
      v60 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v60 && v4)
      {
        (*(*v60 + 16))(v60);
        v6 = *a1;
        v46 = *(a1 + 1);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_68;
    }

    v11 = v7 + 1;
    *(a1 + 2) = v7 + 1;
    if (!v7)
    {
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
      v46 = v4;
      goto LABEL_68;
    }

    v12 = *v7;
    if (v12 < 2)
    {
      v13 = 1;
      goto LABEL_12;
    }

    BYTE4(v79) = v9;
    v81 = *v7;
    LODWORD(v79) = v10;
LABEL_71:
    *a1 = 0;
    *(a1 + 1) = 0;
    v48 = *(a1 + 3);
    if (!v48)
    {
      v78 = 0;
      v4 = 0;
LABEL_73:
      v6 = 0;
      v77 = v81 == 0;
      goto LABEL_74;
    }

    if (!v4)
    {
      v78 = 0;
      goto LABEL_73;
    }

    (*(*v48 + 16))(v48, v6);
    v13 = 0;
    v6 = *a1;
    v4 = *(a1 + 1);
    v11 = *(a1 + 2);
    v10 = v79;
    LOBYTE(v9) = BYTE4(v79);
    v12 = v81;
LABEL_12:
    v14 = v12 == 0;
    if (v4 <= v11 - v6)
    {
      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
      v61 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v61)
      {
        if (v4)
        {
          (*(*v61 + 16))(v61);
          v6 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_74;
        }
      }

      else
      {
        v4 = 0;
      }

      v6 = 0;
    }

    else
    {
      v15 = v11 + 1;
      *(a1 + 2) = v11 + 1;
      if (v11)
      {
        v16 = *v11;
        if (v16 < 2)
        {
          v17 = 1;
          goto LABEL_16;
        }

        v82 = *v11;
        v77 = v14;
        v78 = v13;
        LODWORD(v79) = v10;
        BYTE4(v79) = v9;
        goto LABEL_78;
      }

      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
    }

LABEL_74:
    *a1 = 0;
    *(a1 + 1) = 0;
    v49 = *(a1 + 3);
    if (!v49)
    {
      v4 = 0;
LABEL_76:
      v6 = 0;
      v82 = 0;
      goto LABEL_78;
    }

    if (!v4)
    {
      goto LABEL_76;
    }

    (*(*v49 + 16))(v49, v6);
    v82 = 0;
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_78:
    *a1 = 0;
    *(a1 + 1) = 0;
    v50 = *(a1 + 3);
    if (!v50)
    {
      v76 = 0;
      v4 = 0;
LABEL_80:
      v6 = 0;
      v75 = v82 == 0;
      goto LABEL_81;
    }

    if (!v4)
    {
      v76 = 0;
      goto LABEL_80;
    }

    (*(*v50 + 16))(v50, v6);
    v17 = 0;
    v6 = *a1;
    v4 = *(a1 + 1);
    v15 = *(a1 + 2);
    v10 = v79;
    LOBYTE(v9) = BYTE4(v79);
    v14 = v77;
    v13 = v78;
    v16 = v82;
LABEL_16:
    v18 = v16 == 0;
    if (v4 <= v15 - v6)
    {
      v75 = v18;
      v76 = v17;
      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
      v62 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v62)
      {
        if (v4)
        {
          (*(*v62 + 16))(v62);
          v6 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_81;
        }
      }

      else
      {
        v4 = 0;
      }

      v6 = 0;
    }

    else
    {
      v19 = v15 + 1;
      *(a1 + 2) = v15 + 1;
      if (v15)
      {
        v20 = *v15;
        if (v20 < 2)
        {
          v21 = 1;
          goto LABEL_20;
        }

        v83 = *v15;
        v75 = v18;
        v76 = v17;
        v77 = v14;
        v78 = v13;
        LODWORD(v79) = v10;
        BYTE4(v79) = v9;
        goto LABEL_84;
      }

      v75 = v18;
      v76 = v17;
      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
    }

LABEL_81:
    *a1 = 0;
    *(a1 + 1) = 0;
    v51 = *(a1 + 3);
    if (!v51)
    {
      v4 = 0;
LABEL_83:
      v6 = 0;
      v83 = 0;
      goto LABEL_84;
    }

    if (!v4)
    {
      goto LABEL_83;
    }

    (*(*v51 + 16))(v51, v6);
    v83 = 0;
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_84:
    *a1 = 0;
    *(a1 + 1) = 0;
    v52 = *(a1 + 3);
    if (!v52)
    {
      v74 = 0;
      v4 = 0;
LABEL_86:
      v6 = 0;
      v73 = v83 == 0;
      goto LABEL_87;
    }

    if (!v4)
    {
      v74 = 0;
      goto LABEL_86;
    }

    (*(*v52 + 16))(v52, v6);
    v21 = 0;
    v6 = *a1;
    v4 = *(a1 + 1);
    v19 = *(a1 + 2);
    v10 = v79;
    LOBYTE(v9) = BYTE4(v79);
    v14 = v77;
    v13 = v78;
    v18 = v75;
    v17 = v76;
    v20 = v83;
LABEL_20:
    v22 = v20 == 0;
    if (v4 <= v19 - v6)
    {
      v73 = v22;
      v74 = v21;
      v75 = v18;
      v76 = v17;
      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
      v63 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v63)
      {
        if (v4)
        {
          (*(*v63 + 16))(v63);
          v6 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_87;
        }
      }

      else
      {
        v4 = 0;
      }

      v6 = 0;
    }

    else
    {
      v23 = v19 + 1;
      *(a1 + 2) = v19 + 1;
      if (v19)
      {
        v24 = *v19;
        if (v24 < 2)
        {
          v25 = 1;
          goto LABEL_24;
        }

        v84 = *v19;
        v73 = v22;
        v74 = v21;
        v75 = v18;
        v76 = v17;
        v77 = v14;
        v78 = v13;
        LODWORD(v79) = v10;
        BYTE4(v79) = v9;
        goto LABEL_90;
      }

      v73 = v22;
      v74 = v21;
      v75 = v18;
      v76 = v17;
      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
    }

LABEL_87:
    *a1 = 0;
    *(a1 + 1) = 0;
    v53 = *(a1 + 3);
    if (!v53)
    {
      v4 = 0;
LABEL_89:
      v6 = 0;
      v84 = 0;
      goto LABEL_90;
    }

    if (!v4)
    {
      goto LABEL_89;
    }

    (*(*v53 + 16))(v53, v6);
    v84 = 0;
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_90:
    *a1 = 0;
    *(a1 + 1) = 0;
    v54 = *(a1 + 3);
    if (!v54)
    {
      v72 = 0;
      v4 = 0;
LABEL_92:
      v6 = 0;
      v71 = v84 == 0;
      goto LABEL_93;
    }

    if (!v4)
    {
      v72 = 0;
      goto LABEL_92;
    }

    (*(*v54 + 16))(v54, v6);
    v25 = 0;
    v6 = *a1;
    v4 = *(a1 + 1);
    v23 = *(a1 + 2);
    v10 = v79;
    LOBYTE(v9) = BYTE4(v79);
    v14 = v77;
    v13 = v78;
    v18 = v75;
    v17 = v76;
    v22 = v73;
    v21 = v74;
    v24 = v84;
LABEL_24:
    v26 = v24 == 0;
    if (v4 <= v23 - v6)
    {
      v71 = v26;
      v72 = v25;
      v73 = v22;
      v74 = v21;
      v75 = v18;
      v76 = v17;
      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
      v64 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v64)
      {
        if (v4)
        {
          (*(*v64 + 16))(v64);
          v6 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_93;
        }
      }

      else
      {
        v4 = 0;
      }

      v6 = 0;
    }

    else
    {
      v27 = v23 + 1;
      *(a1 + 2) = v23 + 1;
      if (v23)
      {
        v28 = *v23;
        if (v28 < 2)
        {
          result = 1;
          goto LABEL_28;
        }

        v85 = *v23;
        v71 = v26;
        v72 = v25;
        v73 = v22;
        v74 = v21;
        v75 = v18;
        v76 = v17;
        v77 = v14;
        v78 = v13;
        LODWORD(v79) = v10;
        BYTE4(v79) = v9;
        goto LABEL_96;
      }

      v71 = v26;
      v72 = v25;
      v73 = v22;
      v74 = v21;
      v75 = v18;
      v76 = v17;
      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
    }

LABEL_93:
    *a1 = 0;
    *(a1 + 1) = 0;
    v55 = *(a1 + 3);
    if (!v55)
    {
      v4 = 0;
LABEL_95:
      v6 = 0;
      v85 = 0;
      goto LABEL_96;
    }

    if (!v4)
    {
      goto LABEL_95;
    }

    (*(*v55 + 16))(v55, v6);
    v85 = 0;
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_96:
    *a1 = 0;
    *(a1 + 1) = 0;
    v56 = *(a1 + 3);
    if (!v56)
    {
      v70 = 0;
      v4 = 0;
LABEL_98:
      v6 = 0;
      v69 = v85 == 0;
      goto LABEL_99;
    }

    if (!v4)
    {
      v70 = 0;
      goto LABEL_98;
    }

    (*(*v56 + 16))(v56, v6);
    result = 0;
    v6 = *a1;
    v4 = *(a1 + 1);
    v27 = *(a1 + 2);
    v10 = v79;
    LOBYTE(v9) = BYTE4(v79);
    v14 = v77;
    v13 = v78;
    v18 = v75;
    v17 = v76;
    v22 = v73;
    v21 = v74;
    v26 = v71;
    v25 = v72;
    v28 = v85;
LABEL_28:
    v30 = v28 == 0;
    if (v4 <= v27 - v6)
    {
      v69 = v30;
      v70 = result;
      v71 = v26;
      v72 = v25;
      v73 = v22;
      v74 = v21;
      v75 = v18;
      v76 = v17;
      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
      v65 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v65)
      {
        if (v4)
        {
          (*(*v65 + 16))(v65);
          v6 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_99;
        }
      }

      else
      {
        v4 = 0;
      }

      v6 = 0;
    }

    else
    {
      v31 = v27 + 1;
      *(a1 + 2) = v27 + 1;
      if (v27)
      {
        v32 = *v27;
        if (v32 < 2)
        {
          v33 = 1;
          goto LABEL_32;
        }

        v86 = *v27;
        v69 = v30;
        v70 = result;
        v71 = v26;
        v72 = v25;
        v73 = v22;
        v74 = v21;
        v75 = v18;
        v76 = v17;
        v77 = v14;
        v78 = v13;
        LODWORD(v79) = v10;
        BYTE4(v79) = v9;
        goto LABEL_102;
      }

      v69 = v30;
      v70 = result;
      v71 = v26;
      v72 = v25;
      v73 = v22;
      v74 = v21;
      v75 = v18;
      v76 = v17;
      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
    }

LABEL_99:
    *a1 = 0;
    *(a1 + 1) = 0;
    v57 = *(a1 + 3);
    if (v57)
    {
      if (v4)
      {
        (*(*v57 + 16))(v57, v6);
        v86 = 0;
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_102;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v86 = 0;
LABEL_102:
    *a1 = 0;
    *(a1 + 1) = 0;
    v58 = *(a1 + 3);
    if (!v58)
    {
      v68 = 0;
      v4 = 0;
      goto LABEL_104;
    }

    if (!v4)
    {
      v68 = 0;
LABEL_104:
      v6 = 0;
      v87 = v86 == 0;
      goto LABEL_105;
    }

    (*(*v58 + 16))(v58, v6);
    v33 = 0;
    v6 = *a1;
    v4 = *(a1 + 1);
    v31 = *(a1 + 2);
    v10 = v79;
    LOBYTE(v9) = BYTE4(v79);
    v14 = v77;
    v13 = v78;
    v18 = v75;
    v17 = v76;
    v22 = v73;
    v21 = v74;
    v26 = v71;
    v25 = v72;
    v30 = v69;
    result = v70;
    v32 = v86;
LABEL_32:
    v34 = v32 == 0;
    if (v4 <= v31 - v6)
    {
      v87 = v34;
      v68 = v33;
      v69 = v30;
      v70 = result;
      v71 = v26;
      v72 = v25;
      v73 = v22;
      v74 = v21;
      v75 = v18;
      v76 = v17;
      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
      v66 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (!v66)
      {
        v4 = 0;
LABEL_144:
        v6 = 0;
        goto LABEL_105;
      }

      if (!v4)
      {
        goto LABEL_144;
      }

      (*(*v66 + 16))(v66);
      v6 = *a1;
      v4 = *(a1 + 1);
LABEL_105:
      *a1 = 0;
      *(a1 + 1) = 0;
      v59 = *(a1 + 3);
      if (v59)
      {
        if (v4)
        {
          (*(*v59 + 16))(v59, v6);
          v67 = 0;
          v6 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_108;
        }
      }

      else
      {
        v4 = 0;
      }

      v6 = 0;
      v67 = 0;
      goto LABEL_108;
    }

    *(a1 + 2) = v31 + 1;
    if (!v31)
    {
      v87 = v34;
      v68 = v33;
      v69 = v30;
      v70 = result;
      v71 = v26;
      v72 = v25;
      v73 = v22;
      v74 = v21;
      v75 = v18;
      v76 = v17;
      v77 = v14;
      v78 = v13;
      LODWORD(v79) = v10;
      BYTE4(v79) = v9;
      goto LABEL_105;
    }

    v35 = *v31;
    if (v35 >= 2)
    {
      break;
    }

    v4 = 1;
    if (!v6)
    {
      goto LABEL_109;
    }

LABEL_36:
    if (v89 & 1) != 0 && (v9 & 1) != 0 && (v13 & 1) != 0 && (v17 & 1) != 0 && (v21 & 1) != 0 && (v25 & 1) != 0 && (result & 1) != 0 && (v33 & 1) != 0 && (v4)
    {
      v36 = !v14;
      v37 = 256;
      if (!v36)
      {
        v37 = 0;
      }

      v38 = 0x10000;
      if (v18)
      {
        v38 = 0;
      }

      v39 = 0x1000000;
      if (v22)
      {
        v39 = 0;
      }

      v40 = 0x100000000;
      if (v26)
      {
        v40 = 0;
      }

      v41 = 0x10000000000;
      if (v30)
      {
        v41 = 0;
      }

      v42 = 0x1000000000000;
      if (v34)
      {
        v42 = 0;
      }

      *a2 = v88;
      *(a2 + 8) = v40 | v38 | v10 | v42 | v37 | v39 | v41 | ((v35 != 0) << 56);
      *(a2 + 16) = 1;
      return result;
    }

    __break(1u);
LABEL_60:
    *a1 = 0;
    *(a1 + 1) = 0;
    v43 = *(a1 + 3);
    if (v43)
    {
      if (v4)
      {
        (*(*v43 + 16))(v43);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_62:
    *a1 = 0;
    *(a1 + 1) = 0;
    v44 = *(a1 + 3);
    if (!v44)
    {
      v4 = 0;
      goto LABEL_64;
    }

    if (v4)
    {
      (*(*v44 + 16))(v44);
      v80 = 0;
      v6 = *a1;
      v4 = *(a1 + 1);
    }

    else
    {
LABEL_64:
      v6 = 0;
      v80 = 0;
    }
  }

  v67 = v35;
  v87 = v34;
  v68 = v33;
  v69 = v30;
  v70 = result;
  v71 = v26;
  v72 = v25;
  v73 = v22;
  v74 = v21;
  v75 = v18;
  v76 = v17;
  v77 = v14;
  v78 = v13;
  LODWORD(v79) = v10;
  BYTE4(v79) = v9;
LABEL_108:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v4)
    {
      (*(*result + 16))(result, v6);
      v4 = 0;
      v6 = *a1;
      v10 = v79;
      LOBYTE(v9) = BYTE4(v79);
      v14 = v77;
      v13 = v78;
      v18 = v75;
      v17 = v76;
      v22 = v73;
      v21 = v74;
      v26 = v71;
      v25 = v72;
      v30 = v69;
      result = v70;
      v35 = v67;
      v33 = v68;
      v34 = v87;
      if (*a1)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_109:
  *a2 = 0;
  *(a2 + 16) = 0;
  if (v89)
  {
    result = v88;
    v88 = 0;
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

void sub_19D7B2F58(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 - 24) == 1)
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

uint64_t IPC::ArgumentCoder<WebKit::RemoteMediaPlayerState,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, a2);
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, (a2 + 64));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 80));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::ArgumentCoder<std::optional<WebCore::PlatformTimeRanges>,void>::encode<IPC::Encoder,std::optional<WebCore::PlatformTimeRanges> const&>(a1, a2 + 96);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 120));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 121));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 122));
  IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, (a2 + 124));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 136));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 144));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 152));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 160));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 168));
  IPC::ArgumentCoder<std::optional<WebCore::VideoPlaybackQualityMetrics>,void>::encode<IPC::Encoder,std::optional<WebCore::VideoPlaybackQualityMetrics> const&>(a1, a2 + 176);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 216));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 218));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 219));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 220));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 221));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 222));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 223));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 224));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 225));
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::RemoteMediaPlayerState,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v185 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::MediaTime>(a1, v182);
  IPC::Decoder::decode<WTF::MediaTime>(v2, v180);
  IPC::Decoder::decode<WTF::MediaTime>(v2, v178);
  IPC::Decoder::decode<WTF::MediaTime>(v2, v176);
  IPC::Decoder::decode<WTF::MediaTime>(v2, v174);
  IPC::Decoder::decode<WTF::String>(v2, &v172);
  IPC::Decoder::decode<WTF::String>(v2, &v170);
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *v2;
  if (v4 <= &v5[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v10 = *(v2 + 3);
    if (v10)
    {
      if (v4)
      {
        (*(*v10 + 16))(v10);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_13;
  }

  *(v2 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_13:
    *v2 = 0;
    *(v2 + 1) = 0;
    v11 = *(v2 + 3);
    if (v11)
    {
      if (v4)
      {
        (*(*v11 + 16))(v11);
        v6 = *v2;
        v4 = *(v2 + 1);
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_16:
    *v2 = 0;
    *(v2 + 1) = 0;
    v12 = *(v2 + 3);
    if (v12 && v4)
    {
      (*(*v12 + 16))(v12, v6);
    }

    goto LABEL_17;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    IPC::Decoder::decode<WebCore::PlatformTimeRanges>(v2, v155);
    if (v155[16] == 1)
    {
      std::optional<WebCore::PlatformTimeRanges>::optional[abi:sn200100]<WebCore::PlatformTimeRanges,0>(&v166, v155);
      v169 = 1;
      if ((v155[16] & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }

LABEL_17:
    LOBYTE(v166) = 0;
    v169 = 0;
    goto LABEL_18;
  }

  v155[0] = 0;
  v155[16] = 0;
  std::__optional_move_base<WebCore::PlatformTimeRanges,false>::__optional_move_base[abi:sn200100](&v166, v155);
  v169 = 1;
  if (v155[16] != 1)
  {
    goto LABEL_18;
  }

LABEL_9:
  v9 = *v155;
  if (*v155)
  {
    *v155 = 0;
    *&v155[8] = 0;
    WTF::fastFree(v9, v8);
  }

LABEL_18:
  v13 = *(v2 + 1);
  v154 = a2;
  if ((v169 & 1) == 0)
  {
    goto LABEL_148;
  }

LABEL_19:
  v14 = *v2;
  v15 = *(v2 + 2);
  if (v13 > &v15[-*v2])
  {
    *(v2 + 2) = v15 + 1;
    if (!v15)
    {
      goto LABEL_152;
    }

    v16 = *v15;
    if (v16 >= 7)
    {
      goto LABEL_155;
    }

    v153 = v16 | 0x100;
    goto LABEL_23;
  }

  while (1)
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v85 = *(v2 + 3);
    if (v85)
    {
      if (v13)
      {
        (*(*v85 + 16))(v85, v14);
        v13 = *(v2 + 1);
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_152:
    *v2 = 0;
    *(v2 + 1) = 0;
    v86 = *(v2 + 3);
    if (!v86)
    {
      v13 = 0;
LABEL_154:
      v14 = 0;
      goto LABEL_155;
    }

    if (!v13)
    {
      goto LABEL_154;
    }

    (*(*v86 + 16))(v86);
    v14 = *v2;
    v13 = *(v2 + 1);
LABEL_155:
    *v2 = 0;
    *(v2 + 1) = 0;
    v87 = *(v2 + 3);
    if (v87)
    {
      if (v13)
      {
        (*(*v87 + 16))(v87, v14);
        v153 = 0;
        v14 = *v2;
        v13 = *(v2 + 1);
LABEL_23:
        v17 = *(v2 + 2);
        if (v13 <= &v17[-v14])
        {
          goto LABEL_157;
        }

        *(v2 + 2) = v17 + 1;
        if (!v17)
        {
          goto LABEL_160;
        }

        v18 = *v17;
        if (v18 >= 5)
        {
          goto LABEL_163;
        }

        v152 = v18 | 0x100;
LABEL_27:
        v19 = *(v2 + 2);
        if (v13 > &v19[-v14])
        {
          *(v2 + 2) = v19 + 1;
          if (v19)
          {
            v20 = *v19;
            if (v20 < 3)
            {
              v21 = v20 | 0x100;
              goto LABEL_31;
            }

            goto LABEL_171;
          }

          goto LABEL_168;
        }

        goto LABEL_165;
      }

      v14 = 0;
      v153 = 0;
    }

    else
    {
      v14 = 0;
      v153 = 0;
      v13 = 0;
    }

LABEL_157:
    *v2 = 0;
    *(v2 + 1) = 0;
    v88 = *(v2 + 3);
    if (!v88)
    {
      v13 = 0;
LABEL_159:
      v14 = 0;
      goto LABEL_160;
    }

    if (!v13)
    {
      goto LABEL_159;
    }

    (*(*v88 + 16))(v88, v14);
    v14 = *v2;
    v13 = *(v2 + 1);
LABEL_160:
    *v2 = 0;
    *(v2 + 1) = 0;
    v89 = *(v2 + 3);
    if (!v89)
    {
      v13 = 0;
LABEL_162:
      v14 = 0;
      goto LABEL_163;
    }

    if (!v13)
    {
      goto LABEL_162;
    }

    (*(*v89 + 16))(v89, v14);
    v14 = *v2;
    v13 = *(v2 + 1);
LABEL_163:
    *v2 = 0;
    *(v2 + 1) = 0;
    v90 = *(v2 + 3);
    if (v90)
    {
      if (v13)
      {
        (*(*v90 + 16))(v90, v14);
        v152 = 0;
        v14 = *v2;
        v13 = *(v2 + 1);
        goto LABEL_27;
      }

      v14 = 0;
      v152 = 0;
    }

    else
    {
      v14 = 0;
      v152 = 0;
      v13 = 0;
    }

LABEL_165:
    *v2 = 0;
    *(v2 + 1) = 0;
    v91 = *(v2 + 3);
    if (!v91)
    {
      v13 = 0;
LABEL_167:
      v14 = 0;
      goto LABEL_168;
    }

    if (!v13)
    {
      goto LABEL_167;
    }

    (*(*v91 + 16))(v91, v14);
    v14 = *v2;
    v13 = *(v2 + 1);
LABEL_168:
    *v2 = 0;
    *(v2 + 1) = 0;
    v92 = *(v2 + 3);
    if (!v92)
    {
      v13 = 0;
LABEL_170:
      v14 = 0;
      goto LABEL_171;
    }

    if (!v13)
    {
      goto LABEL_170;
    }

    (*(*v92 + 16))(v92, v14);
    v14 = *v2;
    v13 = *(v2 + 1);
LABEL_171:
    *v2 = 0;
    *(v2 + 1) = 0;
    v93 = *(v2 + 3);
    if (v93 && v13)
    {
      (*(*v93 + 16))(v93, v14);
    }

    v21 = 0;
LABEL_31:
    v22 = IPC::Decoder::decode<WebCore::FloatPoint>(v2);
    v24 = v23;
    v25 = IPC::Decoder::decode<unsigned long long>(v2);
    v27 = v26;
    v28 = IPC::Decoder::decode<unsigned long long>(v2);
    v148 = v29;
    v30 = v28;
    v31 = IPC::Decoder::decode<unsigned long long>(v2);
    v146 = v32;
    v33 = v31;
    v34 = IPC::Decoder::decode<unsigned long long>(v2);
    v144 = v35;
    v36 = v34;
    v37 = *(v2 + 1);
    v38 = ((*(v2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v39 = *v2;
    v40 = v38 - *v2;
    v41 = v37 >= v40;
    v42 = v37 - v40;
    if (v41 && v42 > 7)
    {
      v43 = (v38 + 1);
      *(v2 + 2) = v38 + 1;
      if (v38)
      {
        v140 = *v38;
        v142 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v99 = *(v2 + 3);
      if (v99)
      {
        if (v37)
        {
          (*(*v99 + 16))(v99);
          v37 = *(v2 + 1);
        }
      }

      else
      {
        v37 = 0;
      }
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    v100 = *(v2 + 3);
    if (v100)
    {
      if (v37)
      {
        (*(*v100 + 16))(v100);
        v39 = *v2;
        v37 = *(v2 + 1);
        goto LABEL_205;
      }
    }

    else
    {
      v37 = 0;
    }

    v39 = 0;
LABEL_205:
    v142 = 0;
    v140 = 0;
    v43 = *(v2 + 2);
LABEL_36:
    if (v37 <= &v43[-v39])
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v101 = *(v2 + 3);
      if (v101)
      {
        if (v37)
        {
          (*(*v101 + 16))(v101);
          v39 = *v2;
          v37 = *(v2 + 1);
LABEL_209:
          *v2 = 0;
          *(v2 + 1) = 0;
          v102 = *(v2 + 3);
          if (v102)
          {
            if (v37)
            {
              (*(*v102 + 16))(v102, v39);
              v39 = *v2;
              v37 = *(v2 + 1);
              goto LABEL_212;
            }
          }

          else
          {
            v37 = 0;
          }

          v39 = 0;
LABEL_212:
          *v2 = 0;
          *(v2 + 1) = 0;
          v95 = *(v2 + 3);
          if (v95 && v37)
          {
            goto LABEL_199;
          }

          goto LABEL_174;
        }
      }

      else
      {
        v37 = 0;
      }

      v39 = 0;
      goto LABEL_209;
    }

    *(v2 + 2) = v43 + 1;
    if (!v43)
    {
      goto LABEL_209;
    }

    v44 = *v43;
    if (v44 >= 2)
    {
      goto LABEL_212;
    }

    if (v44)
    {
      IPC::ArgumentCoder<WebCore::VideoPlaybackQualityMetrics,void>::decode(v2, v155);
      if (v156)
      {
        v184[0] = *&v155[1];
        *(v184 + 15) = *&v155[16];
        LOBYTE(v139) = v155[0];
        BYTE4(v139) = 1;
LABEL_42:
        v45 = 1;
        goto LABEL_44;
      }

      v39 = *v2;
      v94 = *(v2 + 1);
      *v2 = 0;
      *(v2 + 1) = 0;
      v95 = *(v2 + 3);
      if (v95 && v94)
      {
LABEL_199:
        (*(*v95 + 16))(v95, v39);
      }

LABEL_174:
      v96 = *v2;
      v97 = *(v2 + 1);
      *v2 = 0;
      *(v2 + 1) = 0;
      v98 = *(v2 + 3);
      if (v98 && v97)
      {
        (*(*v98 + 16))(v98, v96);
      }

      v139 = 0;
      goto LABEL_42;
    }

    v45 = 0;
    v139 = 0x100000000;
LABEL_44:
    result = IPC::Decoder::decode<std::optional<BOOL>>(v2);
    v138 = result;
    v13 = *(v2 + 1);
    v47 = *(v2 + 2);
    v48 = *v2;
    v151 = v21;
    v149 = v22;
    v150 = v24;
    v147 = v25;
    v145 = v30;
    v143 = v33;
    v141 = v36;
    v137 = v45;
    if (v13 <= &v47[-*v2])
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v103 = *(v2 + 3);
      if (v103)
      {
        if (v13)
        {
          (*(*v103 + 16))(v103);
          v13 = *(v2 + 1);
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v49 = v47 + 1;
      *(v2 + 2) = v47 + 1;
      if (v47)
      {
        v50 = *v47;
        if (v50 < 2)
        {
          v51 = 1;
          goto LABEL_48;
        }

        goto LABEL_220;
      }
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    v104 = *(v2 + 3);
    if (!v104)
    {
      v13 = 0;
LABEL_219:
      v48 = 0;
      v50 = 0;
      goto LABEL_220;
    }

    if (!v13)
    {
      goto LABEL_219;
    }

    (*(*v104 + 16))(v104);
    v50 = 0;
    v48 = *v2;
    v13 = *(v2 + 1);
LABEL_220:
    *v2 = 0;
    *(v2 + 1) = 0;
    v105 = *(v2 + 3);
    if (!v105 || !v13)
    {
      v136 = 0;
      v106 = 0;
      v48 = 0;
LABEL_222:
      *v2 = 0;
      *(v2 + 1) = 0;
      v107 = *(v2 + 3);
      if (v107 && v106)
      {
        (*(*v107 + 16))(v107, v48, v106);
        v53 = 0;
        v48 = *v2;
        v13 = *(v2 + 1);
      }

      else
      {
        v13 = 0;
        v48 = 0;
        v53 = 0;
      }

      goto LABEL_224;
    }

    result = (*(*v105 + 16))(v105, v48);
    v51 = 0;
    v48 = *v2;
    v13 = *(v2 + 1);
    v49 = *(v2 + 2);
LABEL_48:
    BYTE4(v136) = v51;
    if (!v50)
    {
      v51 = 0;
    }

    LOBYTE(v136) = v51;
    if (v13 <= v49 - v48)
    {
      v106 = 0;
      v126 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v126 && v13)
      {
        (*(*v126 + 16))(v126);
        v48 = *v2;
        v106 = *(v2 + 1);
      }

      else
      {
        v48 = 0;
      }

      goto LABEL_222;
    }

    v52 = v49 + 1;
    *(v2 + 2) = v49 + 1;
    if (!v49)
    {
      v106 = v13;
      goto LABEL_222;
    }

    v53 = *v49;
    if (v53 < 2)
    {
      v54 = 1;
      goto LABEL_54;
    }

LABEL_224:
    *v2 = 0;
    *(v2 + 1) = 0;
    v108 = *(v2 + 3);
    if (!v108 || !v13)
    {
      v135 = 0;
      v109 = 0;
      v48 = 0;
LABEL_226:
      *v2 = 0;
      *(v2 + 1) = 0;
      v110 = *(v2 + 3);
      if (v110 && v109)
      {
        (*(*v110 + 16))(v110, v48, v109);
        v56 = 0;
        v48 = *v2;
        v13 = *(v2 + 1);
      }

      else
      {
        v13 = 0;
        v48 = 0;
        v56 = 0;
      }

      goto LABEL_228;
    }

    result = (*(*v108 + 16))(v108, v48);
    v54 = 0;
    v48 = *v2;
    v13 = *(v2 + 1);
    v52 = *(v2 + 2);
LABEL_54:
    BYTE4(v135) = v54;
    if (!v53)
    {
      v54 = 0;
    }

    LOBYTE(v135) = v54;
    if (v13 <= v52 - v48)
    {
      v109 = 0;
      v127 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v127 && v13)
      {
        (*(*v127 + 16))(v127);
        v48 = *v2;
        v109 = *(v2 + 1);
      }

      else
      {
        v48 = 0;
      }

      goto LABEL_226;
    }

    v55 = v52 + 1;
    *(v2 + 2) = v52 + 1;
    if (!v52)
    {
      v109 = v13;
      goto LABEL_226;
    }

    v56 = *v52;
    if (v56 < 2)
    {
      v57 = 1;
      goto LABEL_60;
    }

LABEL_228:
    *v2 = 0;
    *(v2 + 1) = 0;
    v111 = *(v2 + 3);
    if (!v111 || !v13)
    {
      v134 = 0;
      v112 = 0;
      v48 = 0;
LABEL_230:
      *v2 = 0;
      *(v2 + 1) = 0;
      v113 = *(v2 + 3);
      if (v113 && v112)
      {
        (*(*v113 + 16))(v113, v48, v112);
        v60 = 0;
        v48 = *v2;
        v13 = *(v2 + 1);
      }

      else
      {
        v13 = 0;
        v48 = 0;
        v60 = 0;
      }

      goto LABEL_232;
    }

    result = (*(*v111 + 16))(v111, v48);
    v57 = 0;
    v48 = *v2;
    v13 = *(v2 + 1);
    v55 = *(v2 + 2);
LABEL_60:
    BYTE4(v134) = v57;
    if (v56)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    LOBYTE(v134) = v58;
    if (v13 <= v55 - v48)
    {
      v112 = 0;
      v128 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v128 && v13)
      {
        (*(*v128 + 16))(v128);
        v48 = *v2;
        v112 = *(v2 + 1);
      }

      else
      {
        v48 = 0;
      }

      goto LABEL_230;
    }

    v59 = v55 + 1;
    *(v2 + 2) = v55 + 1;
    if (!v55)
    {
      v112 = v13;
      goto LABEL_230;
    }

    v60 = *v55;
    if (v60 < 2)
    {
      v61 = 1;
      goto LABEL_67;
    }

LABEL_232:
    *v2 = 0;
    *(v2 + 1) = 0;
    v114 = *(v2 + 3);
    if (!v114 || !v13)
    {
      v62 = 0;
      v61 = 0;
      v115 = 0;
      v48 = 0;
LABEL_234:
      *v2 = 0;
      *(v2 + 1) = 0;
      v116 = *(v2 + 3);
      if (v116 && v115)
      {
        (*(*v116 + 16))(v116, v48, v115);
        v64 = 0;
        v48 = *v2;
        v13 = *(v2 + 1);
      }

      else
      {
        v13 = 0;
        v48 = 0;
        v64 = 0;
      }

      goto LABEL_236;
    }

    result = (*(*v114 + 16))(v114, v48);
    v61 = 0;
    v48 = *v2;
    v13 = *(v2 + 1);
    v59 = *(v2 + 2);
LABEL_67:
    if (v60)
    {
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    if (v13 <= v59 - v48)
    {
      v115 = 0;
      v129 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v129 && v13)
      {
        (*(*v129 + 16))(v129);
        v48 = *v2;
        v115 = *(v2 + 1);
      }

      else
      {
        v48 = 0;
      }

      goto LABEL_234;
    }

    v63 = v59 + 1;
    *(v2 + 2) = v59 + 1;
    if (!v59)
    {
      v115 = v13;
      goto LABEL_234;
    }

    v64 = *v59;
    if (v64 < 2)
    {
      v65 = 1;
      goto LABEL_74;
    }

LABEL_236:
    *v2 = 0;
    *(v2 + 1) = 0;
    v117 = *(v2 + 3);
    if (!v117 || !v13)
    {
      v66 = 0;
      v65 = 0;
      v118 = 0;
      v48 = 0;
LABEL_238:
      *v2 = 0;
      *(v2 + 1) = 0;
      v119 = *(v2 + 3);
      if (v119 && v118)
      {
        (*(*v119 + 16))(v119, v48, v118);
        v68 = 0;
        v48 = *v2;
        v13 = *(v2 + 1);
      }

      else
      {
        v13 = 0;
        v48 = 0;
        v68 = 0;
      }

      goto LABEL_240;
    }

    result = (*(*v117 + 16))(v117, v48);
    v65 = 0;
    v48 = *v2;
    v13 = *(v2 + 1);
    v63 = *(v2 + 2);
LABEL_74:
    if (v64)
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    if (v13 <= v63 - v48)
    {
      v118 = 0;
      v130 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v130 && v13)
      {
        (*(*v130 + 16))(v130);
        v48 = *v2;
        v118 = *(v2 + 1);
      }

      else
      {
        v48 = 0;
      }

      goto LABEL_238;
    }

    v67 = v63 + 1;
    *(v2 + 2) = v63 + 1;
    if (!v63)
    {
      v118 = v13;
      goto LABEL_238;
    }

    v68 = *v63;
    if (v68 < 2)
    {
      v69 = 1;
      goto LABEL_81;
    }

LABEL_240:
    *v2 = 0;
    *(v2 + 1) = 0;
    v120 = *(v2 + 3);
    if (!v120 || !v13)
    {
      v133 = 0;
      v121 = 0;
      v48 = 0;
LABEL_242:
      *v2 = 0;
      *(v2 + 1) = 0;
      v122 = *(v2 + 3);
      if (v122 && v121)
      {
        (*(*v122 + 16))(v122, v48, v121);
        v71 = 0;
        v48 = *v2;
        v13 = *(v2 + 1);
      }

      else
      {
        v13 = 0;
        v48 = 0;
        v71 = 0;
      }

      goto LABEL_244;
    }

    result = (*(*v120 + 16))(v120, v48);
    v69 = 0;
    v48 = *v2;
    v13 = *(v2 + 1);
    v67 = *(v2 + 2);
LABEL_81:
    BYTE4(v133) = v69;
    if (!v68)
    {
      v69 = 0;
    }

    LOBYTE(v133) = v69;
    if (v13 <= v67 - v48)
    {
      v121 = 0;
      v131 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v131 && v13)
      {
        (*(*v131 + 16))(v131);
        v48 = *v2;
        v121 = *(v2 + 1);
      }

      else
      {
        v48 = 0;
      }

      goto LABEL_242;
    }

    v70 = v67 + 1;
    *(v2 + 2) = v67 + 1;
    if (!v67)
    {
      v121 = v13;
      goto LABEL_242;
    }

    v71 = *v67;
    if (v71 < 2)
    {
      v72 = 1;
      goto LABEL_87;
    }

LABEL_244:
    *v2 = 0;
    *(v2 + 1) = 0;
    v123 = *(v2 + 3);
    if (!v123 || !v13)
    {
      v73 = 0;
      v72 = 0;
      v124 = 0;
      v48 = 0;
LABEL_246:
      *v2 = 0;
      *(v2 + 1) = 0;
      v125 = *(v2 + 3);
      if (v125 && v124)
      {
        (*(*v125 + 16))(v125, v48, v124);
        v74 = 0;
        v48 = *v2;
        v13 = *(v2 + 1);
      }

      else
      {
        v13 = 0;
        v48 = 0;
        v74 = 0;
      }

      goto LABEL_248;
    }

    result = (*(*v123 + 16))(v123, v48);
    v72 = 0;
    v48 = *v2;
    v13 = *(v2 + 1);
    v70 = *(v2 + 2);
LABEL_87:
    if (v71)
    {
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }

    if (v13 <= v70 - v48)
    {
      v124 = 0;
      v132 = *(v2 + 3);
      *v2 = 0;
      *(v2 + 1) = 0;
      if (v132 && v13)
      {
        (*(*v132 + 16))(v132);
        v48 = *v2;
        v124 = *(v2 + 1);
      }

      else
      {
        v48 = 0;
      }

      goto LABEL_246;
    }

    *(v2 + 2) = v70 + 1;
    if (!v70)
    {
      v124 = v13;
      goto LABEL_246;
    }

    v74 = *v70;
    if (v74 < 2)
    {
      v75 = 1;
      goto LABEL_94;
    }

LABEL_248:
    *v2 = 0;
    *(v2 + 1) = 0;
    result = *(v2 + 3);
    if (!result || !v13)
    {
      goto LABEL_249;
    }

    result = (*(*result + 16))(result, v48);
    v75 = 0;
    v48 = *v2;
LABEL_94:
    if (v74)
    {
      v2 = v75;
    }

    else
    {
      v2 = 0;
    }

    if (!v48)
    {
LABEL_249:
      *v154 = 0;
      *(v154 + 232) = 0;
      goto LABEL_134;
    }

    if (v183)
    {
      *v155 = v182[0];
      *&v155[5] = *(v182 + 5);
      if (v181)
      {
        *&v155[16] = v180[0];
        *&v155[21] = *(v180 + 5);
        if (v179)
        {
          *&v156 = v178[0];
          *(&v156 + 5) = *(v178 + 5);
          if (v177)
          {
            *v157 = v176[0];
            *&v157[5] = *(v176 + 5);
            if (v175)
            {
              *&v157[16] = v174[0];
              *&v157[21] = *(v174 + 5);
              if (v173)
              {
                v76 = v172;
                v172 = 0;
                v158[0] = v76;
                if (v171)
                {
                  v77 = v170;
                  v170 = 0;
                  v158[1] = v77;
                  if (v169)
                  {
                    std::__optional_move_base<WebCore::PlatformTimeRanges,false>::__optional_move_base[abi:sn200100](&v159, &v166);
                    if (v153 > 0xFF)
                    {
                      LOBYTE(v162) = v153;
                      if (v152 > 0xFF)
                      {
                        BYTE1(v162) = v152;
                        if (v151 > 0xFF)
                        {
                          BYTE2(v162) = v151;
                          if (v150)
                          {
                            *(&v162 + 4) = v149;
                            if (v27)
                            {
                              *&v163 = v147;
                              if (v148)
                              {
                                *(&v163 + 1) = v145;
                                if (v146)
                                {
                                  *&v164 = v143;
                                  if (v144)
                                  {
                                    *(&v164 + 1) = v141;
                                    if (v142)
                                    {
                                      *v165 = v140;
                                      if ((v139 & 0x100000000) != 0)
                                      {
                                        v165[8] = v139;
                                        *&v165[9] = v184[0];
                                        *&v165[24] = *(v184 + 15);
                                        v165[40] = v137;
                                        if ((v138 & 0x10000) != 0)
                                        {
                                          *&v165[48] = v138;
                                          if ((v136 & 0x100000000) != 0)
                                          {
                                            v165[50] = v136;
                                            if ((v135 & 0x100000000) != 0)
                                            {
                                              v165[51] = v135;
                                              if ((v134 & 0x100000000) != 0)
                                              {
                                                v165[52] = v134;
                                                if (v61)
                                                {
                                                  v165[53] = v62;
                                                  if (v65)
                                                  {
                                                    v165[54] = v66;
                                                    if ((v133 & 0x100000000) != 0)
                                                    {
                                                      v165[55] = v133;
                                                      if (v72)
                                                      {
                                                        v165[56] = v73;
                                                        if (v75)
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
LABEL_148:
    v83 = *v2;
    *v2 = 0;
    *(v2 + 1) = 0;
    v84 = *(v2 + 3);
    if (v84 && v13)
    {
      (*(*v84 + 16))(v84, v83);
      v13 = *(v2 + 1);
      goto LABEL_19;
    }

    v13 = 0;
    v14 = *v2;
  }

  v165[57] = v2;
  v78 = *v157;
  *(v154 + 32) = v156;
  *(v154 + 48) = v78;
  *(v154 + 61) = *&v157[13];
  v79 = *&v155[16];
  *v154 = *v155;
  *(v154 + 16) = v79;
  v80 = *v158;
  v158[0] = 0;
  v158[1] = 0;
  *(v154 + 80) = v80;
  std::__optional_move_base<WebCore::PlatformTimeRanges,false>::__optional_move_base[abi:sn200100](v154 + 96, &v159);
  *(v154 + 168) = *v165;
  *(v154 + 184) = *&v165[16];
  *(v154 + 200) = *&v165[32];
  *(v154 + 210) = *&v165[42];
  *(v154 + 120) = v162;
  *(v154 + 136) = v163;
  *(v154 + 152) = v164;
  *(v154 + 232) = 1;
  if (v161 == 1)
  {
    v81 = v159;
    if (v159)
    {
      v159 = 0;
      v160 = 0;
      WTF::fastFree(v81, v48);
    }
  }

  v82 = v158[1];
  v158[1] = 0;
  if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v82, v48);
  }

  result = v158[0];
  v158[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v48);
  }

LABEL_134:
  if (v169 == 1 && v168 == 1)
  {
    result = v166;
    if (v166)
    {
      v166 = 0;
      v167 = 0;
      result = WTF::fastFree(result, v48);
    }
  }

  if (v171 == 1)
  {
    result = v170;
    v170 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v48);
      }
    }
  }

  if (v173 == 1)
  {
    result = v172;
    v172 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v48);
      }
    }
  }

  return result;
}

void sub_19D7B4620(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, WTF::StringImpl *a41, WTF::StringImpl *a42, WTF *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, WTF *a60, uint64_t a61, char a62, int a63)
{
  if (a64 == 1 && a62 == 1 && a60)
  {
    WTF::fastFree(a60, a2);
  }

  if (a66 == 1 && a65 && atomic_fetch_add_explicit(a65, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a65, a2);
  }

  if (a68 == 1 && a67 && atomic_fetch_add_explicit(a67, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a67, a2);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteVideoFrameProxyProperties,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, (a2 + 16));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 34));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 36));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 44));

  return IPC::ArgumentCoder<WebCore::PlatformVideoColorSpace,void>::encode(a1, (a2 + 48));
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteVideoFrameProxyProperties,void>::encode(void *a1, uint64_t a2)
{
  IPC::ArgumentCoder<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(a1, a2);
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, (a2 + 16));
  if (!a1[1])
  {
    goto LABEL_10;
  }

  **a1 = *(a2 + 32);
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_9;
  }

  ++*a1;
  for (a1[1] = v4 - 1; ; a1[1] = 0)
  {
    v11 = *(a2 + 34);
    IPC::StreamConnectionEncoder::encodeSpan<unsigned short const,18446744073709551615ul>(a1, &v11, 1);
    IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(a1, (a2 + 36));
    v5 = -*a1;
    v6 = v5 & 3 | 4;
    if (a1[1] < v6)
    {
      break;
    }

    *(*a1 + (v5 & 3)) = *(a2 + 44);
    v7 = a1[1];
    v8 = v7 >= v6;
    v9 = v7 - v6;
    if (v8)
    {
      *a1 += v6;
      a1[1] = v9;
      return IPC::ArgumentCoder<WebCore::PlatformVideoColorSpace,void>::encode(a1, (a2 + 48));
    }

LABEL_9:
    __break(1u);
LABEL_10:
    *a1 = 0;
  }

  *a1 = 0;
  a1[1] = 0;
  return IPC::ArgumentCoder<WebCore::PlatformVideoColorSpace,void>::encode(a1, (a2 + 48));
}

unint64_t IPC::ArgumentCoder<WebKit::RemoteVideoFrameProxyProperties,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v31);
  IPC::Decoder::decode<WTF::MediaTime>(a1, v29);
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v25 = a1[3];
    if (v25)
    {
      if (v4)
      {
        (*(*v25 + 16))(v25);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_32:
    *a1 = 0;
    a1[1] = 0;
    v26 = a1[3];
    if (v26)
    {
      if (v4)
      {
        (*(*v26 + 16))(v26);
        v7 = 0;
        v6 = *a1;
        v4 = a1[1];
        goto LABEL_35;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_35;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_32;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

LABEL_35:
  *a1 = 0;
  a1[1] = 0;
  v27 = a1[3];
  if (v27 && v4)
  {
    (*(*v27 + 16))(v27, v6);
  }

  v8 = 0;
LABEL_5:
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = IPC::Decoder::decode<WebCore::VideoFrameRotation>(a1);
  v11 = IPC::Decoder::decode<WebCore::IntSize>(a1);
  v13 = v12;
  v14 = a1[1];
  v15 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = v15 - *a1;
  v17 = v14 >= v16;
  v18 = v14 - v16;
  if (v17 && v18 > 3)
  {
    a1[2] = (v15 + 1);
    if (v15)
    {
      v20 = *v15 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v23 = a1[3];
    if (v23)
    {
      if (v14)
      {
        (*(*v23 + 16))(v23);
        v14 = a1[1];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v24 = a1[3];
  if (v24 && v14)
  {
    (*(*v24 + 16))(v24);
  }

  v20 = 0;
LABEL_15:
  result = IPC::Decoder::decode<WebCore::PlatformVideoColorSpace>(a1);
  if (*a1)
  {
    if (v32 & 1) != 0 && (v30)
    {
      *&v28 = v29[0];
      *(&v28 + 5) = *(v29 + 5);
      if (v8 & 1) != 0 && (v10 & 0x10000) != 0 && (v13 & 1) != 0 && (v20 & 0x100000000) != 0 && (v22)
      {
        *a2 = v31;
        *(a2 + 16) = v28;
        *(a2 + 32) = v9;
        *(a2 + 34) = v10;
        *(a2 + 36) = v11;
        *(a2 + 44) = v20;
        *(a2 + 48) = result;
        *(a2 + 56) = 1;
        return result;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 56) = 0;
  return result;
}

IPC::Encoder *IPC::ArgumentCoder<WebKit::SharedVideoFrame,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 18));
  v5 = *(a2 + 40);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>(a1, a2 + 24, v5);
}

void IPC::ArgumentCoder<WebKit::SharedVideoFrame,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::MediaTime>(a1, v22);
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

LABEL_27:
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v4)
      {
        (*(*v15 + 16))(v15);
        v7 = 0;
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_30;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_30;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_27;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

LABEL_30:
  *a1 = 0;
  *(a1 + 1) = 0;
  v16 = *(a1 + 3);
  if (v16 && v4)
  {
    (*(*v16 + 16))(v16, v6);
  }

  v8 = 0;
LABEL_5:
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = IPC::Decoder::decode<WebCore::VideoFrameRotation>(a1);
  IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::decode<IPC::Decoder>(a1, v20);
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

  while (1)
  {
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 48) = 0;
      goto LABEL_16;
    }

    if (v23)
    {
      *&v17 = v22[0];
      *(&v17 + 5) = *(v22 + 5);
      if (v8)
      {
        LOBYTE(v18) = v9;
        if ((v10 & 0x10000) != 0)
        {
          HIWORD(v18) = v10;
          if (v21)
          {
            break;
          }
        }
      }
    }

    __break(1u);
LABEL_21:
    v11 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13 && v12)
    {
      (*(*v13 + 16))(v13, v11);
    }
  }

  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,(mpark::detail::Trait)1>::move_constructor(v19, v20);
  *a2 = v17;
  *(a2 + 16) = v18;
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,(mpark::detail::Trait)1>::move_constructor((a2 + 24), v19);
  *(a2 + 48) = 1;
  if (v19[16] == 2)
  {
    WTF::MachSendRight::~MachSendRight(v19);
  }

LABEL_16:
  if (v21 == 1 && v20[16] == 2)
  {
    WTF::MachSendRight::~MachSendRight(v20);
  }
}

void sub_19D7B4EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a23 == 1 && a21 == 2)
  {
    WTF::MachSendRight::~MachSendRight(&a17);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::MediaDeviceSandboxExtensions,void>::encode(IPC::Encoder *a1, WTF::StringImpl **this)
{
  v2 = this;
  WebKit::MediaDeviceSandboxExtensions::takeIDs(this, v8);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v8);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v4);
  WebKit::MediaDeviceSandboxExtensions::takeHandles(v2, v8);
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v8);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v5);
  v6 = v2[4];
  v2 += 4;
  *v2 = 0;
  v7 = v6;
  v8[0] = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](v2, 0);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v8);
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, &v7);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v7);
}

void sub_19D7B4FD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(va);
  _Unwind_Resume(a1);
}

uint64_t WebKit::MediaDeviceSandboxExtensions::takeIDs@<X0>(WTF::StringImpl **this@<X0>, void *a2@<X8>)
{
  v10 = 0uLL;
  *a2 = 0;
  a2[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a2, this);
  v5 = *(this + 3);
  if (v5)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*this, (*this + 8 * v5));
  }

  v6 = *this;
  if (*this)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v6, v3);
    v8 = *(&v10 + 1);
    v7 = v10;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *&v4 = 0;
  v10 = v4;
  *this = v7;
  this[1] = v8;
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v3);
}

void sub_19D7B509C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v11);
  _Unwind_Resume(a1);
}

uint64_t WebKit::MediaDeviceSandboxExtensions::takeHandles@<X0>(WebKit::MediaDeviceSandboxExtensions *this@<X0>, void *a2@<X8>)
{
  v13 = 0uLL;
  *a2 = 0;
  a2[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a2, this + 4);
  v5 = *(this + 7);
  if (v5)
  {
    v10 = *(this + 2);
    v11 = 8 * v5;
    do
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v10);
      v10 = (v12 + 8);
      v11 -= 8;
    }

    while (v11);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v6, v3);
    v8 = *(&v13 + 1);
    v7 = v13;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *&v4 = 0;
  v13 = v4;
  *(this + 2) = v7;
  *(this + 3) = v8;
  return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v3);
}

void sub_19D7B5184(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, a2);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v11);
  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<WebKit::MediaDeviceSandboxExtensions,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v22);
  IPC::Decoder::decode<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v4, v20);
  if (!*a1)
  {
    goto LABEL_12;
  }

  v6 = v24;
  if ((v24 & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = v21;
  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (HIDWORD(v23) == v20[3])
  {
    IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(a1, &v18);
    v6 = v19;
    if ((v19 & 1) == 0)
    {
      goto LABEL_19;
    }

    while (*a1)
    {
      if (v24)
      {
        v14[0] = v22;
        v7 = v23;
        v22 = 0;
        v23 = 0;
        v14[1] = v7;
        if (v21 & 1) != 0 && (v6)
        {
          WebKit::MediaDeviceSandboxExtensions::MediaDeviceSandboxExtensions(v15, v14, v20, &v18);
          WebKit::MediaDeviceSandboxExtensions::MediaDeviceSandboxExtensions(a2, v15);
          *(a2 + 40) = 1;
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v17);
          WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v8);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15, v9);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v10);
          if ((v19 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }
      }

LABEL_18:
      __break(1u);
LABEL_19:
      v5 = *a1;
      v11 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v12 = *(a1 + 3);
      if (v12 && v11)
      {
        v13 = v6;
        (*(*v12 + 16))(v12, v5);
        v6 = v13;
      }
    }

    *a2 = 0;
    *(a2 + 40) = 0;
    if (v6)
    {
LABEL_11:
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v18);
    }
  }

  else
  {
LABEL_12:
    *a2 = 0;
    *(a2 + 40) = 0;
  }

LABEL_13:
  if (v21 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v5);
  }

  if (v24 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v5);
  }
}

void sub_19D7B5354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WebKit::SandboxExtensionImpl *a17, char a18)
{
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v18 + 32));
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 16, v21);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, v22);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v23);
  if (a18 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a17);
  }

  if (*(v19 - 48) == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19 - 64, v24);
  }

  if (*(v19 - 24) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19 - 40, v24);
  }

  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<WebKit::NetworkProcessConnectionInfo,void>::encode(IPC::Encoder *a1, unint64_t a2)
{
  IPC::Encoder::addAttachment(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 4));

  IPC::ArgumentCoder<std::optional<WebKit::CoreIPCAuditToken>,void>::encode<IPC::Encoder,std::optional<WebKit::CoreIPCAuditToken>>(a1, a2 + 8);
}

void IPC::ArgumentCoder<WebKit::NetworkProcessConnectionInfo,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<IPC::ConnectionHandle>(a1, v10);
  PartyWebsiteDataRemoval = IPC::Decoder::decode<WebCore::FirstPartyWebsiteDataRemovalMode>(a1);
  IPC::Decoder::decode<std::optional<WebKit::CoreIPCAuditToken>>(v7, a1);
  if (*a1)
  {
    if ((v11 & 1) == 0 || (WTF::MachSendRight::MachSendRight(), (PartyWebsiteDataRemoval & 0x100) == 0) || (v6[0] = PartyWebsiteDataRemoval, (v9 & 1) == 0))
    {
      __break(1u);
      return;
    }

    *&v6[4] = v7[0];
    *&v6[20] = v7[1];
    v6[36] = v8;
    WTF::MachSendRight::MachSendRight();
    *(a2 + 4) = *v6;
    *(a2 + 20) = *&v6[16];
    *(a2 + 33) = *&v6[29];
    *(a2 + 44) = 1;
    WTF::MachSendRight::~MachSendRight(v5);
  }

  else
  {
    *a2 = 0;
    *(a2 + 44) = 0;
  }

  if (v11 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v10);
  }
}

void sub_19D7B5508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10)
{
  WTF::MachSendRight::~MachSendRight(&a10);
  if (*(v10 - 36) == 1)
  {
    WTF::MachSendRight::~MachSendRight((v10 - 40));
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebKit::WebSpeechSynthesisVoice,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 24));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 25));
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebSpeechSynthesisVoice,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v30);
  IPC::Decoder::decode<WTF::String>(a1, &v28);
  result = IPC::Decoder::decode<WTF::String>(a1, &v26);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    goto LABEL_28;
  }

  v8 = v6 + 1;
  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_30;
  }

  v9 = *v6;
  if (v9 < 2)
  {
    v10 = 1;
    goto LABEL_5;
  }

  v25 = *v6;
  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (!v19 || !v5)
    {
      v24 = 0;
      v20 = 0;
      v7 = 0;
      goto LABEL_36;
    }

    result = (*(*v19 + 16))(v19, v7);
    v10 = 0;
    v7 = *a1;
    v5 = *(a1 + 1);
    v8 = *(a1 + 2);
    v9 = v25;
LABEL_5:
    v11 = v9 ? v10 : 0;
    if (v5 <= v8 - v7)
    {
      break;
    }

    *(a1 + 2) = v8 + 1;
    if (!v8)
    {
      LOBYTE(v24) = v10;
      WORD2(v24) = v11;
      v20 = v5;
      goto LABEL_36;
    }

    v12 = *v8;
    if (v12 >= 2)
    {
      v23 = *v8;
      LOBYTE(v24) = v10;
      WORD2(v24) = v11;
      goto LABEL_39;
    }

    v13 = 1;
    if (!v7)
    {
      goto LABEL_40;
    }

LABEL_12:
    if (v31)
    {
      v14 = v30;
      v30 = 0;
      if (v29)
      {
        v15 = v28;
        v28 = 0;
        if (v27 & 1) != 0 && (v10 & 1) != 0 && (v13)
        {
          v16 = v26;
          *a2 = v14;
          *(a2 + 8) = v15;
          *(a2 + 16) = v16;
          *(a2 + 24) = v11 | ((v12 != 0) << 8);
          *(a2 + 32) = 1;
          goto LABEL_18;
        }
      }
    }

    __break(1u);
LABEL_28:
    *a1 = 0;
    *(a1 + 1) = 0;
    v17 = *(a1 + 3);
    if (v17)
    {
      if (v5)
      {
        (*(*v17 + 16))(v17);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_30:
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (!v18)
    {
      v5 = 0;
      goto LABEL_32;
    }

    if (v5)
    {
      (*(*v18 + 16))(v18);
      v25 = 0;
      v7 = *a1;
      v5 = *(a1 + 1);
    }

    else
    {
LABEL_32:
      v7 = 0;
      v25 = 0;
    }
  }

  LOBYTE(v24) = v10;
  WORD2(v24) = v11;
  v20 = 0;
  v22 = *(a1 + 3);
  *a1 = 0;
  *(a1 + 1) = 0;
  if (v22 && v5)
  {
    (*(*v22 + 16))(v22);
    v7 = *a1;
    v20 = *(a1 + 1);
  }

  else
  {
    v7 = 0;
  }

LABEL_36:
  *a1 = 0;
  *(a1 + 1) = 0;
  v21 = *(a1 + 3);
  if (v21 && v20)
  {
    (*(*v21 + 16))(v21, v7, v20);
    v23 = 0;
    v7 = *a1;
    v5 = *(a1 + 1);
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v23 = 0;
  }

LABEL_39:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v5)
    {
      result = (*(*result + 16))(result, v7);
      v13 = 0;
      v7 = *a1;
      LOBYTE(v10) = v24;
      v11 = WORD2(v24);
      v12 = v23;
      if (*a1)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_40:
  *a2 = 0;
  *(a2 + 32) = 0;
  if (v27)
  {
    result = v26;
    v26 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

LABEL_18:
  if (v29 == 1)
  {
    result = v28;
    v28 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if (v31 == 1)
  {
    result = v30;
    v30 = 0;
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

void sub_19D7B5924(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
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

uint64_t IPC::ArgumentCoder<WebKit::PlatformCAAnimationRemoteProperties,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 44));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 49));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,void>::encode<IPC::Encoder,WebCore::TimingFunction>(a1, (a2 + 56));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 64));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 65));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 66));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 67));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 68));
  IPC::VectorArgumentCoder<false,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 72);
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 88), *(a2 + 100));
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 104);

  return IPC::VectorArgumentCoder<false,WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 120));
}

void WebKit::PlatformCAAnimationRemoteProperties::~PlatformCAAnimationRemoteProperties(WebKit::PlatformCAAnimationRemoteProperties *this)
{
  WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 120);
  WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, v2);
  v4 = *(this + 11);
  if (v4)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v4, v3);
  }

  WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 72, v3);
  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    if (v6[2] == 1)
    {
      (*(*v6 + 16))(v6);
    }

    else
    {
      --v6[2];
    }
  }

  v7 = *this;
  *this = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }
  }
}

uint64_t IPC::ArgumentCoder<WebKit::SharedPreferencesForWebProcess,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 7)
  {
    v9 = (v3 + 1);
    *(a1 + 2) = v3 + 1;
    if (v3)
    {
      v2417 = *v3;
      v2589 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v2073 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2073;
  }

  v2074 = a1;
  IPC::Decoder::markInvalid(a1);
  a1 = v2074;
  v2589 = 0;
  v2417 = 0;
  v2 = *(v2074 + 1);
  v9 = *(v2074 + 2);
  v4 = *v2074;
LABEL_8:
  if (v2 <= &v9[-v4])
  {
    v2075 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2075;
    goto LABEL_453;
  }

  v10 = v9 + 1;
  *(a1 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_453:
    v139 = v2589;
    v140 = v2417;
    v141 = a1;
    IPC::Decoder::markInvalid(a1);
    v11 = 0;
    goto LABEL_454;
  }

  v11 = *v9;
  if (v11 < 2)
  {
    v2592 = 1;
    goto LABEL_12;
  }

  v139 = v2589;
  v140 = v2417;
  v141 = a1;
LABEL_454:
  v2589 = v139;
  v2417 = v140;
  IPC::Decoder::markInvalid(v141);
  a1 = v141;
  v2592 = 0;
  v2 = *(v141 + 1);
  v10 = *(v141 + 2);
  v4 = *v141;
LABEL_12:
  if (v11)
  {
    v12 = v2592;
  }

  else
  {
    v12 = 0;
  }

  v2416 = v12;
  if (v2 <= &v10[-v4])
  {
    v2076 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2076;
    goto LABEL_456;
  }

  v13 = v10 + 1;
  *(a1 + 2) = v10 + 1;
  if (!v10)
  {
LABEL_456:
    v142 = v2592;
    v143 = v2589;
    v144 = v2417;
    v145 = a1;
    IPC::Decoder::markInvalid(a1);
    v146 = 0;
    goto LABEL_457;
  }

  v2492 = *v10;
  if (v2492 < 2)
  {
    v2588 = 1;
    goto LABEL_19;
  }

  v142 = v2592;
  v143 = v2589;
  v146 = *v10;
  v144 = v2417;
  v145 = a1;
LABEL_457:
  LOBYTE(v2592) = v142;
  v2492 = v146;
  v2589 = v143;
  v2417 = v144;
  IPC::Decoder::markInvalid(v145);
  a1 = v145;
  v2588 = 0;
  v2 = *(v145 + 1);
  v13 = *(v145 + 2);
  v4 = *v145;
LABEL_19:
  if (v2 <= &v13[-v4])
  {
    v2077 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2077;
    goto LABEL_459;
  }

  v14 = v13 + 1;
  *(a1 + 2) = v13 + 1;
  if (!v13)
  {
LABEL_459:
    v147 = v2588;
    v148 = v2592;
    v149 = v2589;
    v150 = v2492;
    v151 = v2417;
    v152 = a1;
    IPC::Decoder::markInvalid(a1);
    v153 = 0;
    goto LABEL_460;
  }

  v2493 = *v13;
  if (v2493 < 2)
  {
    v2587 = 1;
    goto LABEL_23;
  }

  v147 = v2588;
  v148 = v2592;
  v149 = v2589;
  v153 = *v13;
  v150 = v2492;
  v151 = v2417;
  v152 = a1;
LABEL_460:
  LOBYTE(v2592) = v148;
  v2492 = v150;
  v2493 = v153;
  v2588 = v147;
  v2589 = v149;
  v2417 = v151;
  IPC::Decoder::markInvalid(v152);
  a1 = v152;
  v2587 = 0;
  v2 = *(v152 + 1);
  v14 = *(v152 + 2);
  v4 = *v152;
LABEL_23:
  if (v2 <= &v14[-v4])
  {
    v2078 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2078;
    goto LABEL_462;
  }

  v15 = v14 + 1;
  *(a1 + 2) = v14 + 1;
  if (!v14)
  {
LABEL_462:
    v154 = v2587;
    v155 = v2588;
    v156 = v2592;
    v157 = v2589;
    v158 = v2493;
    v159 = v2492;
    v160 = v2417;
    v161 = a1;
    IPC::Decoder::markInvalid(a1);
    v162 = 0;
    goto LABEL_463;
  }

  v2494 = *v14;
  if (v2494 < 2)
  {
    v2585 = 1;
    goto LABEL_27;
  }

  v154 = v2587;
  v155 = v2588;
  v156 = v2592;
  v157 = v2589;
  v162 = *v14;
  v158 = v2493;
  v159 = v2492;
  v160 = v2417;
  v161 = a1;
LABEL_463:
  LOBYTE(v2592) = v156;
  v2587 = v154;
  v2492 = v159;
  v2493 = v158;
  v2588 = v155;
  v2589 = v157;
  v2494 = v162;
  v2417 = v160;
  IPC::Decoder::markInvalid(v161);
  a1 = v161;
  v2585 = 0;
  v2 = *(v161 + 1);
  v15 = *(v161 + 2);
  v4 = *v161;
LABEL_27:
  if (v2 <= &v15[-v4])
  {
    v2079 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2079;
    goto LABEL_465;
  }

  v16 = v15 + 1;
  *(a1 + 2) = v15 + 1;
  if (!v15)
  {
LABEL_465:
    v163 = v2588;
    v164 = v2592;
    v165 = v2589;
    v166 = v2494;
    v167 = v2493;
    v168 = v2492;
    v169 = v2417;
    v170 = a1;
    IPC::Decoder::markInvalid(a1);
    v171 = 0;
    goto LABEL_466;
  }

  v2495 = *v15;
  if (v2495 < 2)
  {
    v2583 = 1;
    goto LABEL_31;
  }

  v163 = v2588;
  v164 = v2592;
  v171 = *v15;
  v165 = v2589;
  v166 = v2494;
  v167 = v2493;
  v168 = v2492;
  v169 = v2417;
  v170 = a1;
LABEL_466:
  LOBYTE(v2592) = v164;
  v2492 = v168;
  v2493 = v167;
  v2588 = v163;
  v2589 = v165;
  v2494 = v166;
  v2495 = v171;
  v2417 = v169;
  IPC::Decoder::markInvalid(v170);
  a1 = v170;
  v2583 = 0;
  v2 = *(v170 + 1);
  v16 = *(v170 + 2);
  v4 = *v170;
LABEL_31:
  if (v2 <= &v16[-v4])
  {
    v2080 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2080;
    goto LABEL_468;
  }

  v17 = v16 + 1;
  *(a1 + 2) = v16 + 1;
  if (!v16)
  {
LABEL_468:
    v172 = v2592;
    v173 = v2495;
    v174 = v2589;
    v175 = v2494;
    v176 = v2493;
    v177 = v2492;
    v178 = v2417;
    v179 = a1;
    IPC::Decoder::markInvalid(a1);
    v180 = 0;
    goto LABEL_469;
  }

  v2496 = *v16;
  if (v2496 < 2)
  {
    v2582 = 1;
    goto LABEL_35;
  }

  v180 = *v16;
  v172 = v2592;
  v173 = v2495;
  v174 = v2589;
  v175 = v2494;
  v176 = v2493;
  v177 = v2492;
  v178 = v2417;
  v179 = a1;
LABEL_469:
  LOBYTE(v2592) = v172;
  v2492 = v177;
  v2493 = v176;
  v2589 = v174;
  v2494 = v175;
  v2495 = v173;
  v2496 = v180;
  v2417 = v178;
  IPC::Decoder::markInvalid(v179);
  a1 = v179;
  v2582 = 0;
  v2 = *(v179 + 1);
  v17 = *(v179 + 2);
  v4 = *v179;
LABEL_35:
  if (v2 <= &v17[-v4])
  {
    v2081 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2081;
    goto LABEL_471;
  }

  v18 = v17 + 1;
  *(a1 + 2) = v17 + 1;
  if (!v17)
  {
LABEL_471:
    v181 = v2592;
    v182 = v2495;
    v183 = v2589;
    v184 = v2494;
    v185 = v2493;
    v186 = v2492;
    v187 = v2417;
    v188 = a1;
    IPC::Decoder::markInvalid(a1);
    v189 = 0;
    goto LABEL_472;
  }

  v2497 = *v17;
  if (v2497 < 2)
  {
    v2581 = 1;
    goto LABEL_39;
  }

  v189 = *v17;
  v181 = v2592;
  v182 = v2495;
  v183 = v2589;
  v184 = v2494;
  v185 = v2493;
  v186 = v2492;
  v187 = v2417;
  v188 = a1;
LABEL_472:
  LOBYTE(v2592) = v181;
  v2492 = v186;
  v2493 = v185;
  v2589 = v183;
  v2494 = v184;
  v2495 = v182;
  v2497 = v189;
  v2417 = v187;
  IPC::Decoder::markInvalid(v188);
  a1 = v188;
  v2581 = 0;
  v2 = *(v188 + 1);
  v18 = *(v188 + 2);
  v4 = *v188;
LABEL_39:
  if (v2 <= &v18[-v4])
  {
    v2082 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2082;
    goto LABEL_474;
  }

  v19 = v18 + 1;
  *(a1 + 2) = v18 + 1;
  if (!v18)
  {
LABEL_474:
    v190 = v2592;
    v191 = v2495;
    v192 = v2589;
    v193 = v2494;
    v194 = v2493;
    v195 = v2492;
    v196 = v2417;
    v197 = a1;
    IPC::Decoder::markInvalid(a1);
    v198 = 0;
    goto LABEL_475;
  }

  v2499 = *v18;
  if (v2499 < 2)
  {
    v2579 = 1;
    goto LABEL_43;
  }

  v198 = *v18;
  v190 = v2592;
  v191 = v2495;
  v192 = v2589;
  v193 = v2494;
  v194 = v2493;
  v195 = v2492;
  v196 = v2417;
  v197 = a1;
LABEL_475:
  LOBYTE(v2592) = v190;
  v2492 = v195;
  v2493 = v194;
  v2589 = v192;
  v2494 = v193;
  v2495 = v191;
  v2417 = v196;
  v2499 = v198;
  IPC::Decoder::markInvalid(v197);
  a1 = v197;
  v2579 = 0;
  v2 = *(v197 + 1);
  v19 = *(v197 + 2);
  v4 = *v197;
LABEL_43:
  if (v2 <= &v19[-v4])
  {
    v2083 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2083;
    goto LABEL_477;
  }

  v20 = v19 + 1;
  *(a1 + 2) = v19 + 1;
  if (!v19)
  {
LABEL_477:
    v199 = v2592;
    v200 = v2495;
    v201 = v2589;
    v202 = v2494;
    v203 = v2493;
    v204 = v2492;
    v205 = v2417;
    v206 = a1;
    IPC::Decoder::markInvalid(a1);
    v207 = 0;
    goto LABEL_478;
  }

  v2498 = *v19;
  if (v2498 < 2)
  {
    v2577 = 1;
    goto LABEL_47;
  }

  v207 = *v19;
  v199 = v2592;
  v200 = v2495;
  v201 = v2589;
  v202 = v2494;
  v203 = v2493;
  v204 = v2492;
  v205 = v2417;
  v206 = a1;
LABEL_478:
  LOBYTE(v2592) = v199;
  v2492 = v204;
  v2493 = v203;
  v2589 = v201;
  v2494 = v202;
  v2495 = v200;
  v2417 = v205;
  v2498 = v207;
  IPC::Decoder::markInvalid(v206);
  a1 = v206;
  v2577 = 0;
  v2 = *(v206 + 1);
  v20 = *(v206 + 2);
  v4 = *v206;
LABEL_47:
  if (v2 <= &v20[-v4])
  {
    v2084 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2084;
    goto LABEL_480;
  }

  v21 = v20 + 1;
  *(a1 + 2) = v20 + 1;
  if (!v20)
  {
LABEL_480:
    v208 = v2495;
    v209 = v2589;
    v210 = v2494;
    v211 = v2493;
    v212 = v2492;
    v213 = v2417;
    v214 = a1;
    IPC::Decoder::markInvalid(a1);
    v215 = 0;
    goto LABEL_481;
  }

  v2458 = *v20;
  if (v2458 < 2)
  {
    v2575 = 1;
    goto LABEL_51;
  }

  v215 = *v20;
  v208 = v2495;
  v209 = v2589;
  v210 = v2494;
  v211 = v2493;
  v212 = v2492;
  v213 = v2417;
  v214 = a1;
LABEL_481:
  v2458 = v215;
  v2492 = v212;
  v2493 = v211;
  v2589 = v209;
  v2494 = v210;
  v2495 = v208;
  v2417 = v213;
  IPC::Decoder::markInvalid(v214);
  a1 = v214;
  v2575 = 0;
  v2 = *(v214 + 1);
  v21 = *(v214 + 2);
  v4 = *v214;
LABEL_51:
  if (v2 <= &v21[-v4])
  {
    v2085 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2085;
    goto LABEL_483;
  }

  v22 = v21 + 1;
  *(a1 + 2) = v21 + 1;
  if (!v21)
  {
LABEL_483:
    v216 = v2495;
    v217 = v2589;
    v218 = v2494;
    v219 = v2493;
    v220 = v2492;
    v221 = v2417;
    v222 = a1;
    IPC::Decoder::markInvalid(a1);
    v223 = 0;
    goto LABEL_484;
  }

  v2459 = *v21;
  if (v2459 < 2)
  {
    v2573 = 1;
    goto LABEL_55;
  }

  v223 = *v21;
  v216 = v2495;
  v217 = v2589;
  v218 = v2494;
  v219 = v2493;
  v220 = v2492;
  v221 = v2417;
  v222 = a1;
LABEL_484:
  v2459 = v223;
  v2492 = v220;
  v2493 = v219;
  v2589 = v217;
  v2494 = v218;
  v2495 = v216;
  v2417 = v221;
  IPC::Decoder::markInvalid(v222);
  a1 = v222;
  v2573 = 0;
  v2 = *(v222 + 1);
  v22 = *(v222 + 2);
  v4 = *v222;
LABEL_55:
  if (v2 <= &v22[-v4])
  {
    v2086 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2086;
    goto LABEL_486;
  }

  v23 = v22 + 1;
  *(a1 + 2) = v22 + 1;
  if (!v22)
  {
LABEL_486:
    v224 = v2495;
    v225 = v2589;
    v226 = v2494;
    v227 = v2493;
    v228 = v2492;
    v229 = v2417;
    v230 = a1;
    IPC::Decoder::markInvalid(a1);
    v231 = 0;
    goto LABEL_487;
  }

  v2460 = *v22;
  if (v2460 < 2)
  {
    v2571 = 1;
    goto LABEL_59;
  }

  v231 = *v22;
  v224 = v2495;
  v225 = v2589;
  v226 = v2494;
  v227 = v2493;
  v228 = v2492;
  v229 = v2417;
  v230 = a1;
LABEL_487:
  v2460 = v231;
  v2492 = v228;
  v2493 = v227;
  v2589 = v225;
  v2494 = v226;
  v2495 = v224;
  v2417 = v229;
  IPC::Decoder::markInvalid(v230);
  a1 = v230;
  v2571 = 0;
  v2 = *(v230 + 1);
  v23 = *(v230 + 2);
  v4 = *v230;
LABEL_59:
  if (v2 <= &v23[-v4])
  {
    v2087 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2087;
    goto LABEL_489;
  }

  v24 = v23 + 1;
  *(a1 + 2) = v23 + 1;
  if (!v23)
  {
LABEL_489:
    v232 = v2495;
    v233 = v2589;
    v234 = v2494;
    v235 = v2493;
    v236 = v2492;
    v237 = v2417;
    v238 = a1;
    IPC::Decoder::markInvalid(a1);
    v239 = 0;
    goto LABEL_490;
  }

  v25 = *v23;
  if (v25 < 2)
  {
    v2569 = 1;
    goto LABEL_63;
  }

  v239 = *v23;
  v232 = v2495;
  v233 = v2589;
  v234 = v2494;
  v235 = v2493;
  v236 = v2492;
  v237 = v2417;
  v238 = a1;
LABEL_490:
  v2492 = v236;
  v2493 = v235;
  v2589 = v233;
  v2494 = v234;
  v2495 = v232;
  v2417 = v237;
  IPC::Decoder::markInvalid(v238);
  a1 = v238;
  v2569 = 0;
  v2 = *(v238 + 1);
  v24 = *(v238 + 2);
  v4 = *v238;
  v25 = v239;
LABEL_63:
  if (v2 <= &v24[-v4])
  {
    v2088 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2088;
    goto LABEL_492;
  }

  v26 = v24 + 1;
  *(a1 + 2) = v24 + 1;
  if (!v24)
  {
LABEL_492:
    v2161 = v25;
    v240 = v2592;
    v241 = v2495;
    v242 = v2589;
    v243 = v2494;
    v244 = v2493;
    v245 = v2492;
    v246 = v2417;
    v247 = a1;
    IPC::Decoder::markInvalid(a1);
    v2284 = 0;
    goto LABEL_493;
  }

  v27 = *v24;
  if (v27 < 2)
  {
    v2567 = 1;
    goto LABEL_67;
  }

  v2161 = v25;
  v2284 = *v24;
  v240 = v2592;
  v241 = v2495;
  v242 = v2589;
  v243 = v2494;
  v244 = v2493;
  v245 = v2492;
  v246 = v2417;
  v247 = a1;
LABEL_493:
  LOBYTE(v2592) = v240;
  v2492 = v245;
  v2493 = v244;
  v2589 = v242;
  v2494 = v243;
  v2495 = v241;
  v2417 = v246;
  IPC::Decoder::markInvalid(v247);
  a1 = v247;
  v2567 = 0;
  v2 = *(v247 + 1);
  v26 = *(v247 + 2);
  v4 = *v247;
  v25 = v2161;
  v27 = v2284;
LABEL_67:
  if (v2 <= &v26[-v4])
  {
    v2089 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2089;
    goto LABEL_495;
  }

  v28 = v26 + 1;
  *(a1 + 2) = v26 + 1;
  if (!v26)
  {
LABEL_495:
    v2162 = v25;
    v2285 = v27;
    v248 = v2592;
    v249 = v2495;
    v250 = v2589;
    v251 = v2494;
    v252 = v2493;
    v253 = v2492;
    v254 = v2417;
    v255 = a1;
    IPC::Decoder::markInvalid(a1);
    v2461 = 0;
    goto LABEL_496;
  }

  v2461 = *v26;
  if (v2461 < 2)
  {
    v2565 = 1;
    goto LABEL_71;
  }

  v2162 = v25;
  v2285 = v27;
  v248 = v2592;
  v249 = v2495;
  v250 = v2589;
  v251 = v2494;
  v252 = v2493;
  v253 = v2492;
  v254 = v2417;
  v255 = a1;
LABEL_496:
  LOBYTE(v2592) = v248;
  v2492 = v253;
  v2493 = v252;
  v2589 = v250;
  v2494 = v251;
  v2495 = v249;
  v2417 = v254;
  IPC::Decoder::markInvalid(v255);
  a1 = v255;
  v2565 = 0;
  v2 = *(v255 + 1);
  v28 = *(v255 + 2);
  v4 = *v255;
  v25 = v2162;
  v27 = v2285;
LABEL_71:
  if (v2 <= &v28[-v4])
  {
    v2090 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2090;
    goto LABEL_498;
  }

  v29 = v28 + 1;
  *(a1 + 2) = v28 + 1;
  if (!v28)
  {
LABEL_498:
    v2163 = v25;
    v2286 = v27;
    v256 = v2592;
    v257 = v2495;
    v258 = v2589;
    v259 = v2494;
    v260 = v2493;
    v261 = v2492;
    v262 = v2417;
    v263 = a1;
    IPC::Decoder::markInvalid(a1);
    v2462 = 0;
    goto LABEL_499;
  }

  v2462 = *v28;
  if (v2462 < 2)
  {
    v2563 = 1;
    goto LABEL_75;
  }

  v2163 = v25;
  v2286 = v27;
  v256 = v2592;
  v257 = v2495;
  v258 = v2589;
  v259 = v2494;
  v260 = v2493;
  v261 = v2492;
  v262 = v2417;
  v263 = a1;
LABEL_499:
  LOBYTE(v2592) = v256;
  v2492 = v261;
  v2493 = v260;
  v2589 = v258;
  v2494 = v259;
  v2495 = v257;
  v2417 = v262;
  IPC::Decoder::markInvalid(v263);
  a1 = v263;
  v2563 = 0;
  v2 = *(v263 + 1);
  v29 = *(v263 + 2);
  v4 = *v263;
  v25 = v2163;
  v27 = v2286;
LABEL_75:
  if (v2 <= &v29[-v4])
  {
    v2091 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2091;
    goto LABEL_501;
  }

  v30 = v29 + 1;
  *(a1 + 2) = v29 + 1;
  if (!v29)
  {
LABEL_501:
    v2164 = v25;
    v2287 = v27;
    v264 = v2592;
    v265 = v2495;
    v266 = v2589;
    v267 = v2494;
    v268 = v2493;
    v269 = v2492;
    v270 = v2417;
    v271 = a1;
    IPC::Decoder::markInvalid(a1);
    v2463 = 0;
    goto LABEL_502;
  }

  v2463 = *v29;
  if (v2463 < 2)
  {
    v2561 = 1;
    goto LABEL_79;
  }

  v2164 = v25;
  v2287 = v27;
  v264 = v2592;
  v265 = v2495;
  v266 = v2589;
  v267 = v2494;
  v268 = v2493;
  v269 = v2492;
  v270 = v2417;
  v271 = a1;
LABEL_502:
  LOBYTE(v2592) = v264;
  v2492 = v269;
  v2493 = v268;
  v2589 = v266;
  v2494 = v267;
  v2495 = v265;
  v2417 = v270;
  IPC::Decoder::markInvalid(v271);
  a1 = v271;
  v2561 = 0;
  v2 = *(v271 + 1);
  v30 = *(v271 + 2);
  v4 = *v271;
  v25 = v2164;
  v27 = v2287;
LABEL_79:
  if (v2 <= &v30[-v4])
  {
    v2092 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2092;
    goto LABEL_504;
  }

  v31 = v30 + 1;
  *(a1 + 2) = v30 + 1;
  if (!v30)
  {
LABEL_504:
    v2165 = v25;
    v2288 = v27;
    v272 = v2592;
    v273 = v2495;
    v274 = v2589;
    v275 = v2494;
    v276 = v2493;
    v277 = v2492;
    v278 = v2417;
    v279 = a1;
    IPC::Decoder::markInvalid(a1);
    v2464 = 0;
    goto LABEL_505;
  }

  v2464 = *v30;
  if (v2464 < 2)
  {
    v2559 = 1;
    goto LABEL_83;
  }

  v2165 = v25;
  v2288 = v27;
  v272 = v2592;
  v273 = v2495;
  v274 = v2589;
  v275 = v2494;
  v276 = v2493;
  v277 = v2492;
  v278 = v2417;
  v279 = a1;
LABEL_505:
  LOBYTE(v2592) = v272;
  v2492 = v277;
  v2493 = v276;
  v2589 = v274;
  v2494 = v275;
  v2495 = v273;
  v2417 = v278;
  IPC::Decoder::markInvalid(v279);
  a1 = v279;
  v2559 = 0;
  v2 = *(v279 + 1);
  v31 = *(v279 + 2);
  v4 = *v279;
  v25 = v2165;
  v27 = v2288;
LABEL_83:
  if (v2 <= &v31[-v4])
  {
    v2093 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2093;
    goto LABEL_507;
  }

  v32 = v31 + 1;
  *(a1 + 2) = v31 + 1;
  if (!v31)
  {
LABEL_507:
    v2166 = v25;
    v2289 = v27;
    v280 = v2592;
    v281 = v2495;
    v282 = v2589;
    v283 = v2494;
    v284 = v2493;
    v285 = v2492;
    v286 = v2417;
    v287 = a1;
    IPC::Decoder::markInvalid(a1);
    v2465 = 0;
    goto LABEL_508;
  }

  v2465 = *v31;
  if (v2465 < 2)
  {
    v2557 = 1;
    goto LABEL_87;
  }

  v2166 = v25;
  v2289 = v27;
  v280 = v2592;
  v281 = v2495;
  v282 = v2589;
  v283 = v2494;
  v284 = v2493;
  v285 = v2492;
  v286 = v2417;
  v287 = a1;
LABEL_508:
  LOBYTE(v2592) = v280;
  v2492 = v285;
  v2493 = v284;
  v2589 = v282;
  v2494 = v283;
  v2495 = v281;
  v2417 = v286;
  IPC::Decoder::markInvalid(v287);
  a1 = v287;
  v2557 = 0;
  v2 = *(v287 + 1);
  v32 = *(v287 + 2);
  v4 = *v287;
  v25 = v2166;
  v27 = v2289;
LABEL_87:
  if (v2 <= &v32[-v4])
  {
    v2094 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2094;
    goto LABEL_510;
  }

  v33 = v32 + 1;
  *(a1 + 2) = v32 + 1;
  if (!v32)
  {
LABEL_510:
    v2167 = v25;
    v2290 = v27;
    v288 = v2592;
    v289 = v2495;
    v290 = v2589;
    v291 = v2494;
    v292 = v2493;
    v293 = v2492;
    v294 = v2417;
    v295 = a1;
    IPC::Decoder::markInvalid(a1);
    v2466 = 0;
    goto LABEL_511;
  }

  v2466 = *v32;
  if (v2466 < 2)
  {
    v2555 = 1;
    goto LABEL_91;
  }

  v2167 = v25;
  v2290 = v27;
  v288 = v2592;
  v289 = v2495;
  v290 = v2589;
  v291 = v2494;
  v292 = v2493;
  v293 = v2492;
  v294 = v2417;
  v295 = a1;
LABEL_511:
  LOBYTE(v2592) = v288;
  v2492 = v293;
  v2493 = v292;
  v2589 = v290;
  v2494 = v291;
  v2495 = v289;
  v2417 = v294;
  IPC::Decoder::markInvalid(v295);
  a1 = v295;
  v2555 = 0;
  v2 = *(v295 + 1);
  v33 = *(v295 + 2);
  v4 = *v295;
  v25 = v2167;
  v27 = v2290;
LABEL_91:
  if (v2 <= &v33[-v4])
  {
    v2095 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2095;
    goto LABEL_513;
  }

  v34 = v33 + 1;
  *(a1 + 2) = v33 + 1;
  if (!v33)
  {
LABEL_513:
    v2168 = v25;
    v2291 = v27;
    v296 = v2592;
    v297 = v2495;
    v298 = v2589;
    v299 = v2494;
    v300 = v2493;
    v301 = v2492;
    v302 = v2417;
    v303 = a1;
    IPC::Decoder::markInvalid(a1);
    v2467 = 0;
    goto LABEL_514;
  }

  v2467 = *v33;
  if (v2467 < 2)
  {
    v2553 = 1;
    goto LABEL_95;
  }

  v2168 = v25;
  v2291 = v27;
  v296 = v2592;
  v297 = v2495;
  v298 = v2589;
  v299 = v2494;
  v300 = v2493;
  v301 = v2492;
  v302 = v2417;
  v303 = a1;
LABEL_514:
  LOBYTE(v2592) = v296;
  v2492 = v301;
  v2493 = v300;
  v2589 = v298;
  v2494 = v299;
  v2495 = v297;
  v2417 = v302;
  IPC::Decoder::markInvalid(v303);
  a1 = v303;
  v2553 = 0;
  v2 = *(v303 + 1);
  v34 = *(v303 + 2);
  v4 = *v303;
  v25 = v2168;
  v27 = v2291;
LABEL_95:
  if (v2 <= &v34[-v4])
  {
    v2096 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2096;
    goto LABEL_516;
  }

  v35 = v34 + 1;
  *(a1 + 2) = v34 + 1;
  if (!v34)
  {
LABEL_516:
    v2169 = v25;
    v2292 = v27;
    v304 = v2592;
    v305 = v2495;
    v306 = v2589;
    v307 = v2494;
    v308 = v2493;
    v309 = v2492;
    v310 = v2417;
    v311 = a1;
    IPC::Decoder::markInvalid(a1);
    v2468 = 0;
    goto LABEL_517;
  }

  v2468 = *v34;
  if (v2468 < 2)
  {
    v2551 = 1;
    goto LABEL_99;
  }

  v2169 = v25;
  v2292 = v27;
  v304 = v2592;
  v305 = v2495;
  v306 = v2589;
  v307 = v2494;
  v308 = v2493;
  v309 = v2492;
  v310 = v2417;
  v311 = a1;
LABEL_517:
  LOBYTE(v2592) = v304;
  v2492 = v309;
  v2493 = v308;
  v2589 = v306;
  v2494 = v307;
  v2495 = v305;
  v2417 = v310;
  IPC::Decoder::markInvalid(v311);
  a1 = v311;
  v2551 = 0;
  v2 = *(v311 + 1);
  v35 = *(v311 + 2);
  v4 = *v311;
  v25 = v2169;
  v27 = v2292;
LABEL_99:
  if (v2 <= &v35[-v4])
  {
    v2097 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2097;
    goto LABEL_519;
  }

  v36 = v35 + 1;
  *(a1 + 2) = v35 + 1;
  if (!v35)
  {
LABEL_519:
    v2170 = v25;
    v2293 = v27;
    v312 = v2592;
    v313 = v2495;
    v314 = v2589;
    v315 = v2494;
    v316 = v2493;
    v317 = v2492;
    v318 = v2417;
    v319 = a1;
    IPC::Decoder::markInvalid(a1);
    v2469 = 0;
    goto LABEL_520;
  }

  v2469 = *v35;
  if (v2469 < 2)
  {
    v2549 = 1;
    goto LABEL_103;
  }

  v2170 = v25;
  v2293 = v27;
  v312 = v2592;
  v313 = v2495;
  v314 = v2589;
  v315 = v2494;
  v316 = v2493;
  v317 = v2492;
  v318 = v2417;
  v319 = a1;
LABEL_520:
  LOBYTE(v2592) = v312;
  v2492 = v317;
  v2493 = v316;
  v2589 = v314;
  v2494 = v315;
  v2495 = v313;
  v2417 = v318;
  IPC::Decoder::markInvalid(v319);
  a1 = v319;
  v2549 = 0;
  v2 = *(v319 + 1);
  v36 = *(v319 + 2);
  v4 = *v319;
  v25 = v2170;
  v27 = v2293;
LABEL_103:
  if (v2 <= &v36[-v4])
  {
    v2098 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2098;
    goto LABEL_522;
  }

  v37 = v36 + 1;
  *(a1 + 2) = v36 + 1;
  if (!v36)
  {
LABEL_522:
    v2171 = v25;
    v2294 = v27;
    v320 = v2592;
    v321 = v2495;
    v322 = v2589;
    v323 = v2494;
    v324 = v2493;
    v325 = v2492;
    v326 = v2417;
    v327 = a1;
    IPC::Decoder::markInvalid(a1);
    v2470 = 0;
    goto LABEL_523;
  }

  v2470 = *v36;
  if (v2470 < 2)
  {
    v2547 = 1;
    goto LABEL_107;
  }

  v2171 = v25;
  v2294 = v27;
  v320 = v2592;
  v321 = v2495;
  v322 = v2589;
  v323 = v2494;
  v324 = v2493;
  v325 = v2492;
  v326 = v2417;
  v327 = a1;
LABEL_523:
  LOBYTE(v2592) = v320;
  v2492 = v325;
  v2493 = v324;
  v2589 = v322;
  v2494 = v323;
  v2495 = v321;
  v2417 = v326;
  IPC::Decoder::markInvalid(v327);
  a1 = v327;
  v2547 = 0;
  v2 = *(v327 + 1);
  v37 = *(v327 + 2);
  v4 = *v327;
  v25 = v2171;
  v27 = v2294;
LABEL_107:
  if (v2 <= &v37[-v4])
  {
    v2099 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2099;
    goto LABEL_525;
  }

  v38 = v37 + 1;
  *(a1 + 2) = v37 + 1;
  if (!v37)
  {
LABEL_525:
    v2172 = v25;
    v2295 = v27;
    v328 = v2592;
    v329 = v2495;
    v330 = v2589;
    v331 = v2494;
    v332 = v2493;
    v333 = v2492;
    v334 = v2417;
    v335 = a1;
    IPC::Decoder::markInvalid(a1);
    v2471 = 0;
    goto LABEL_526;
  }

  v2471 = *v37;
  if (v2471 < 2)
  {
    v2545 = 1;
    goto LABEL_111;
  }

  v2172 = v25;
  v2295 = v27;
  v328 = v2592;
  v329 = v2495;
  v330 = v2589;
  v331 = v2494;
  v332 = v2493;
  v333 = v2492;
  v334 = v2417;
  v335 = a1;
LABEL_526:
  LOBYTE(v2592) = v328;
  v2492 = v333;
  v2493 = v332;
  v2589 = v330;
  v2494 = v331;
  v2495 = v329;
  v2417 = v334;
  IPC::Decoder::markInvalid(v335);
  a1 = v335;
  v2545 = 0;
  v2 = *(v335 + 1);
  v38 = *(v335 + 2);
  v4 = *v335;
  v25 = v2172;
  v27 = v2295;
LABEL_111:
  if (v2 <= &v38[-v4])
  {
    v2100 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2100;
    goto LABEL_528;
  }

  v39 = v38 + 1;
  *(a1 + 2) = v38 + 1;
  if (!v38)
  {
LABEL_528:
    v2173 = v25;
    v2296 = v27;
    v336 = v2592;
    v337 = v2495;
    v338 = v2589;
    v339 = v2494;
    v340 = v2493;
    v341 = v2492;
    v342 = v2417;
    v343 = a1;
    IPC::Decoder::markInvalid(a1);
    v2472 = 0;
    goto LABEL_529;
  }

  v2472 = *v38;
  if (v2472 < 2)
  {
    v2543 = 1;
    goto LABEL_115;
  }

  v2173 = v25;
  v2296 = v27;
  v336 = v2592;
  v337 = v2495;
  v338 = v2589;
  v339 = v2494;
  v340 = v2493;
  v341 = v2492;
  v342 = v2417;
  v343 = a1;
LABEL_529:
  LOBYTE(v2592) = v336;
  v2492 = v341;
  v2493 = v340;
  v2589 = v338;
  v2494 = v339;
  v2495 = v337;
  v2417 = v342;
  IPC::Decoder::markInvalid(v343);
  a1 = v343;
  v2543 = 0;
  v2 = *(v343 + 1);
  v39 = *(v343 + 2);
  v4 = *v343;
  v25 = v2173;
  v27 = v2296;
LABEL_115:
  if (v2 <= &v39[-v4])
  {
    v2101 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2101;
    goto LABEL_531;
  }

  v40 = v39 + 1;
  *(a1 + 2) = v39 + 1;
  if (!v39)
  {
LABEL_531:
    v2174 = v25;
    v2297 = v27;
    v344 = v2592;
    v345 = v2495;
    v346 = v2589;
    v347 = v2494;
    v348 = v2493;
    v349 = v2492;
    v350 = v2417;
    v351 = a1;
    IPC::Decoder::markInvalid(a1);
    v2473 = 0;
    goto LABEL_532;
  }

  v2473 = *v39;
  if (v2473 < 2)
  {
    v2541 = 1;
    goto LABEL_119;
  }

  v2174 = v25;
  v2297 = v27;
  v344 = v2592;
  v345 = v2495;
  v346 = v2589;
  v347 = v2494;
  v348 = v2493;
  v349 = v2492;
  v350 = v2417;
  v351 = a1;
LABEL_532:
  LOBYTE(v2592) = v344;
  v2492 = v349;
  v2493 = v348;
  v2589 = v346;
  v2494 = v347;
  v2495 = v345;
  v2417 = v350;
  IPC::Decoder::markInvalid(v351);
  a1 = v351;
  v2541 = 0;
  v2 = *(v351 + 1);
  v40 = *(v351 + 2);
  v4 = *v351;
  v25 = v2174;
  v27 = v2297;
LABEL_119:
  if (v2 <= &v40[-v4])
  {
    v2102 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2102;
    goto LABEL_534;
  }

  v41 = v40 + 1;
  *(a1 + 2) = v40 + 1;
  if (!v40)
  {
LABEL_534:
    v2175 = v25;
    v2298 = v27;
    v352 = v2592;
    v353 = v2495;
    v354 = v2589;
    v355 = v2494;
    v356 = v2493;
    v357 = v2492;
    v358 = v2417;
    v359 = a1;
    IPC::Decoder::markInvalid(a1);
    v2474 = 0;
    goto LABEL_535;
  }

  v2474 = *v40;
  if (v2474 < 2)
  {
    v2539 = 1;
    goto LABEL_123;
  }

  v2175 = v25;
  v2298 = v27;
  v352 = v2592;
  v353 = v2495;
  v354 = v2589;
  v355 = v2494;
  v356 = v2493;
  v357 = v2492;
  v358 = v2417;
  v359 = a1;
LABEL_535:
  LOBYTE(v2592) = v352;
  v2492 = v357;
  v2493 = v356;
  v2589 = v354;
  v2494 = v355;
  v2495 = v353;
  v2417 = v358;
  IPC::Decoder::markInvalid(v359);
  a1 = v359;
  v2539 = 0;
  v2 = *(v359 + 1);
  v41 = *(v359 + 2);
  v4 = *v359;
  v25 = v2175;
  v27 = v2298;
LABEL_123:
  if (v2 <= &v41[-v4])
  {
    v2103 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2103;
    goto LABEL_537;
  }

  v42 = v41 + 1;
  *(a1 + 2) = v41 + 1;
  if (!v41)
  {
LABEL_537:
    v2176 = v25;
    v2299 = v27;
    v360 = v2592;
    v361 = v2495;
    v362 = v2589;
    v363 = v2494;
    v364 = v2493;
    v365 = v2492;
    v366 = v2417;
    v367 = a1;
    IPC::Decoder::markInvalid(a1);
    v2476 = 0;
    goto LABEL_538;
  }

  v43 = *v41;
  if (v43 < 2)
  {
    v2537 = 1;
    goto LABEL_127;
  }

  v2476 = *v41;
  v2176 = v25;
  v2299 = v27;
  v360 = v2592;
  v361 = v2495;
  v362 = v2589;
  v363 = v2494;
  v364 = v2493;
  v365 = v2492;
  v366 = v2417;
  v367 = a1;
LABEL_538:
  LOBYTE(v2592) = v360;
  v2492 = v365;
  v2493 = v364;
  v2589 = v362;
  v2494 = v363;
  v2495 = v361;
  v2417 = v366;
  IPC::Decoder::markInvalid(v367);
  a1 = v367;
  v2537 = 0;
  v2 = *(v367 + 1);
  v42 = *(v367 + 2);
  v4 = *v367;
  v25 = v2176;
  v27 = v2299;
  v43 = v2476;
LABEL_127:
  v2475 = v43;
  if (v2 <= &v42[-v4])
  {
    v2104 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2104;
    goto LABEL_540;
  }

  v44 = v42 + 1;
  *(a1 + 2) = v42 + 1;
  if (!v42)
  {
LABEL_540:
    v2177 = v25;
    v2300 = v27;
    v368 = v2592;
    v369 = v2495;
    v370 = v2589;
    v371 = v2494;
    v372 = v2493;
    v373 = v2492;
    v374 = v2417;
    v375 = a1;
    IPC::Decoder::markInvalid(a1);
    v2478 = 0;
    goto LABEL_541;
  }

  v45 = *v42;
  if (v45 < 2)
  {
    v2536 = 1;
    goto LABEL_131;
  }

  v2478 = *v42;
  v2177 = v25;
  v2300 = v27;
  v368 = v2592;
  v369 = v2495;
  v370 = v2589;
  v371 = v2494;
  v372 = v2493;
  v373 = v2492;
  v374 = v2417;
  v375 = a1;
LABEL_541:
  LOBYTE(v2592) = v368;
  v2492 = v373;
  v2493 = v372;
  v2589 = v370;
  v2494 = v371;
  v2495 = v369;
  v2417 = v374;
  IPC::Decoder::markInvalid(v375);
  a1 = v375;
  v2536 = 0;
  v2 = *(v375 + 1);
  v44 = *(v375 + 2);
  v4 = *v375;
  v25 = v2177;
  v27 = v2300;
  v45 = v2478;
LABEL_131:
  v2477 = v45;
  if (v2 <= &v44[-v4])
  {
    v2105 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2105;
    goto LABEL_543;
  }

  v46 = v44 + 1;
  *(a1 + 2) = v44 + 1;
  if (!v44)
  {
LABEL_543:
    v2178 = v25;
    v2301 = v27;
    v376 = v2592;
    v377 = v2495;
    v378 = v2589;
    v379 = v2494;
    v380 = v2493;
    v381 = v2492;
    v382 = v2417;
    v383 = a1;
    IPC::Decoder::markInvalid(a1);
    v2480 = 0;
    goto LABEL_544;
  }

  v47 = *v44;
  if (v47 < 2)
  {
    v2534 = 1;
    goto LABEL_135;
  }

  v2480 = *v44;
  v2178 = v25;
  v2301 = v27;
  v376 = v2592;
  v377 = v2495;
  v378 = v2589;
  v379 = v2494;
  v380 = v2493;
  v381 = v2492;
  v382 = v2417;
  v383 = a1;
LABEL_544:
  LOBYTE(v2592) = v376;
  v2492 = v381;
  v2493 = v380;
  v2589 = v378;
  v2494 = v379;
  v2495 = v377;
  v2417 = v382;
  IPC::Decoder::markInvalid(v383);
  a1 = v383;
  v2534 = 0;
  v2 = *(v383 + 1);
  v46 = *(v383 + 2);
  v4 = *v383;
  v25 = v2178;
  v27 = v2301;
  v47 = v2480;
LABEL_135:
  v2479 = v47;
  if (v2 <= &v46[-v4])
  {
    v2106 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2106;
    goto LABEL_546;
  }

  v48 = v46 + 1;
  *(a1 + 2) = v46 + 1;
  if (!v46)
  {
LABEL_546:
    v2179 = v25;
    v2302 = v27;
    v384 = v2592;
    v385 = v2495;
    v386 = v2589;
    v387 = v2494;
    v388 = v2493;
    v389 = v2492;
    v390 = v2417;
    v391 = a1;
    IPC::Decoder::markInvalid(a1);
    v2481 = 0;
    goto LABEL_547;
  }

  v2481 = *v46;
  if (v2481 < 2)
  {
    v2532 = 1;
    goto LABEL_139;
  }

  v2179 = v25;
  v2302 = v27;
  v384 = v2592;
  v385 = v2495;
  v386 = v2589;
  v387 = v2494;
  v388 = v2493;
  v389 = v2492;
  v390 = v2417;
  v391 = a1;
LABEL_547:
  LOBYTE(v2592) = v384;
  v2492 = v389;
  v2493 = v388;
  v2589 = v386;
  v2494 = v387;
  v2495 = v385;
  v2417 = v390;
  IPC::Decoder::markInvalid(v391);
  a1 = v391;
  v2532 = 0;
  v2 = *(v391 + 1);
  v48 = *(v391 + 2);
  v4 = *v391;
  v25 = v2179;
  v27 = v2302;
LABEL_139:
  if (v2 <= &v48[-v4])
  {
    v2107 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v2107;
    goto LABEL_549;
  }

  v49 = v48 + 1;
  *(a1 + 2) = v48 + 1;
  if (!v48)
  {
LABEL_549:
    v2180 = v25;
    v2303 = v27;
    v392 = v2592;
    v393 = v2495;
    v394 = v2589;
    v395 = v2494;
    v396 = v2493;
    v397 = v2492;
    v398 = v2417;
    v399 = a1;
    IPC::Decoder::markInvalid(a1);
    v2482 = 0;
    goto LABEL_550;
  }

  v2482 = *v48;
  if (v2482 < 2)
  {
    v50 = 1;
    goto LABEL_143;
  }

  v2180 = v25;
  v2303 = v27;
  v392 = v2592;
  v393 = v2495;
  v394 = v2589;
  v395 = v2494;
  v396 = v2493;
  v397 = v2492;
  v398 = v2417;
  v399 = a1;
LABEL_550:
  LOBYTE(v2592) = v392;
  v2492 = v397;
  v2493 = v396;
  v2589 = v394;
  v2494 = v395;
  v2495 = v393;
  v2417 = v398;
  IPC::Decoder::markInvalid(v399);
  a1 = v399;
  v50 = 0;
  v2 = *(v399 + 1);
  v49 = *(v399 + 2);
  v4 = *v399;
  v25 = v2180;
  v27 = v2303;
LABEL_143:
  if (v2 <= &v49[-v4])
  {
    v2108 = a1;
    v2304 = v27;
    v400 = v50;
    IPC::Decoder::markInvalid(a1);
    v50 = v400;
    v27 = v2304;
    a1 = v2108;
    goto LABEL_552;
  }

  v51 = v49 + 1;
  *(a1 + 2) = v49 + 1;
  if (!v49)
  {
LABEL_552:
    v1759 = v50;
    v2181 = v25;
    v2305 = v27;
    v401 = v2592;
    v402 = v2495;
    v403 = v2589;
    v404 = v2494;
    v405 = v2493;
    v406 = v2492;
    v407 = v2417;
    v408 = a1;
    IPC::Decoder::markInvalid(a1);
    v2483 = 0;
    goto LABEL_553;
  }

  v2483 = *v49;
  if (v2483 < 2)
  {
    v52 = 1;
    goto LABEL_147;
  }

  v1759 = v50;
  v2181 = v25;
  v2305 = v27;
  v401 = v2592;
  v402 = v2495;
  v403 = v2589;
  v404 = v2494;
  v405 = v2493;
  v406 = v2492;
  v407 = v2417;
  v408 = a1;
LABEL_553:
  LOBYTE(v2592) = v401;
  v2492 = v406;
  v2493 = v405;
  v2589 = v403;
  v2494 = v404;
  v2495 = v402;
  v2417 = v407;
  IPC::Decoder::markInvalid(v408);
  a1 = v408;
  v52 = 0;
  v2 = *(v408 + 1);
  v51 = *(v408 + 2);
  v4 = *v408;
  v25 = v2181;
  v27 = v2305;
  v50 = v1759;
LABEL_147:
  if (v2 <= &v51[-v4])
  {
    v2109 = a1;
    v2306 = v27;
    v409 = v50;
    v410 = v52;
    IPC::Decoder::markInvalid(a1);
    v52 = v410;
    v27 = v2306;
    v50 = v409;
    a1 = v2109;
    goto LABEL_555;
  }

  v53 = v51 + 1;
  *(a1 + 2) = v51 + 1;
  if (!v51)
  {
LABEL_555:
    v1760 = v50;
    v1638 = v52;
    v2182 = v25;
    v2307 = v27;
    v411 = v2592;
    v412 = v2495;
    v413 = v2589;
    v414 = v2494;
    v415 = v2493;
    v416 = v2492;
    v417 = v2417;
    v418 = a1;
    IPC::Decoder::markInvalid(a1);
    v2484 = 0;
    goto LABEL_556;
  }

  v2484 = *v51;
  if (v2484 < 2)
  {
    v2531 = 1;
    goto LABEL_151;
  }

  v1638 = v52;
  v1760 = v50;
  v2182 = v25;
  v2307 = v27;
  v411 = v2592;
  v412 = v2495;
  v413 = v2589;
  v414 = v2494;
  v415 = v2493;
  v416 = v2492;
  v417 = v2417;
  v418 = a1;
LABEL_556:
  LOBYTE(v2592) = v411;
  v2492 = v416;
  v2493 = v415;
  v2589 = v413;
  v2494 = v414;
  v2495 = v412;
  v2417 = v417;
  IPC::Decoder::markInvalid(v418);
  a1 = v418;
  v2531 = 0;
  v2 = *(v418 + 1);
  v53 = *(v418 + 2);
  v4 = *v418;
  v25 = v2182;
  v27 = v2307;
  v50 = v1760;
  v52 = v1638;
LABEL_151:
  if (v2 <= &v53[-v4])
  {
    v2110 = a1;
    v2308 = v27;
    v419 = v50;
    v420 = v52;
    IPC::Decoder::markInvalid(a1);
    v52 = v420;
    v50 = v419;
    v27 = v2308;
    a1 = v2110;
    goto LABEL_558;
  }

  v54 = v53 + 1;
  *(a1 + 2) = v53 + 1;
  if (!v53)
  {
LABEL_558:
    v1761 = v50;
    v1639 = v52;
    v2183 = v25;
    v2309 = v27;
    v421 = v2592;
    v422 = v2495;
    v423 = v2589;
    v424 = v2494;
    v425 = v2493;
    v426 = v2492;
    v427 = v2417;
    v428 = a1;
    IPC::Decoder::markInvalid(a1);
    v1520 = 0;
    goto LABEL_559;
  }

  v55 = *v53;
  if (v55 < 2)
  {
    v2530 = 1;
    goto LABEL_155;
  }

  v1639 = v52;
  v1520 = *v53;
  v1761 = v50;
  v2183 = v25;
  v2309 = v27;
  v421 = v2592;
  v422 = v2495;
  v423 = v2589;
  v424 = v2494;
  v425 = v2493;
  v426 = v2492;
  v427 = v2417;
  v428 = a1;
LABEL_559:
  LOBYTE(v2592) = v421;
  v2492 = v426;
  v2493 = v425;
  v2589 = v423;
  v2494 = v424;
  v2495 = v422;
  v2417 = v427;
  IPC::Decoder::markInvalid(v428);
  a1 = v428;
  v2530 = 0;
  v2 = *(v428 + 1);
  v54 = *(v428 + 2);
  v4 = *v428;
  v25 = v2183;
  v27 = v2309;
  v50 = v1761;
  v55 = v1520;
  v52 = v1639;
LABEL_155:
  if (v2 <= &v54[-v4])
  {
    v2111 = a1;
    v2184 = v25;
    v2310 = v27;
    v429 = v50;
    v430 = v52;
    IPC::Decoder::markInvalid(a1);
    v52 = v430;
    v50 = v429;
    v25 = v2184;
    v27 = v2310;
    a1 = v2111;
    goto LABEL_561;
  }

  v56 = v54 + 1;
  *(a1 + 2) = v54 + 1;
  if (!v54)
  {
LABEL_561:
    v1762 = v50;
    v1521 = v55;
    v1640 = v52;
    v2185 = v25;
    v2311 = v27;
    v431 = v2592;
    v432 = v2495;
    v433 = v2589;
    v434 = v2494;
    v435 = v2493;
    v436 = v2492;
    v437 = v2417;
    v438 = a1;
    IPC::Decoder::markInvalid(a1);
    v1405 = 0;
    goto LABEL_562;
  }

  v57 = *v54;
  if (v57 < 2)
  {
    v2528 = 1;
    goto LABEL_159;
  }

  v1405 = *v54;
  v1640 = v52;
  v1521 = v55;
  v1762 = v50;
  v2185 = v25;
  v2311 = v27;
  v431 = v2592;
  v432 = v2495;
  v433 = v2589;
  v434 = v2494;
  v435 = v2493;
  v436 = v2492;
  v437 = v2417;
  v438 = a1;
LABEL_562:
  LOBYTE(v2592) = v431;
  v2492 = v436;
  v2493 = v435;
  v2589 = v433;
  v2494 = v434;
  v2495 = v432;
  v2417 = v437;
  IPC::Decoder::markInvalid(v438);
  a1 = v438;
  v2528 = 0;
  v2 = *(v438 + 1);
  v56 = *(v438 + 2);
  v4 = *v438;
  v25 = v2185;
  v27 = v2311;
  v50 = v1762;
  v55 = v1521;
  v52 = v1640;
  v57 = v1405;
LABEL_159:
  if (v2 <= &v56[-v4])
  {
    v2112 = a1;
    v2186 = v25;
    v2312 = v27;
    v439 = v50;
    v440 = v52;
    IPC::Decoder::markInvalid(a1);
    v52 = v440;
    v50 = v439;
    v25 = v2186;
    v27 = v2312;
    a1 = v2112;
    goto LABEL_564;
  }

  v58 = v56 + 1;
  *(a1 + 2) = v56 + 1;
  if (!v56)
  {
LABEL_564:
    v1763 = v50;
    v1522 = v55;
    v1641 = v52;
    v1406 = v57;
    v2187 = v25;
    v2313 = v27;
    v441 = v2592;
    v442 = v2495;
    v443 = v2589;
    v444 = v2494;
    v445 = v2493;
    v446 = v2492;
    v447 = v2417;
    v448 = a1;
    IPC::Decoder::markInvalid(a1);
    v1356 = 0;
    goto LABEL_565;
  }

  v59 = *v56;
  if (v59 < 2)
  {
    v2527 = 1;
    goto LABEL_163;
  }

  v1356 = *v56;
  v1406 = v57;
  v1641 = v52;
  v1522 = v55;
  v1763 = v50;
  v2187 = v25;
  v2313 = v27;
  v441 = v2592;
  v442 = v2495;
  v443 = v2589;
  v444 = v2494;
  v445 = v2493;
  v446 = v2492;
  v447 = v2417;
  v448 = a1;
LABEL_565:
  LOBYTE(v2592) = v441;
  v2492 = v446;
  v2493 = v445;
  v2589 = v443;
  v2494 = v444;
  v2495 = v442;
  v2417 = v447;
  IPC::Decoder::markInvalid(v448);
  a1 = v448;
  v2527 = 0;
  v2 = *(v448 + 1);
  v58 = *(v448 + 2);
  v4 = *v448;
  v25 = v2187;
  v27 = v2313;
  v50 = v1763;
  v55 = v1522;
  v52 = v1641;
  v59 = v1356;
  v57 = v1406;
LABEL_163:
  if (v2 <= &v58[-v4])
  {
    v2113 = a1;
    v2188 = v25;
    v2314 = v27;
    v449 = v50;
    v450 = v52;
    IPC::Decoder::markInvalid(a1);
    v52 = v450;
    v50 = v449;
    v25 = v2188;
    v27 = v2314;
    a1 = v2113;
    goto LABEL_567;
  }

  v60 = v58 + 1;
  *(a1 + 2) = v58 + 1;
  if (!v58)
  {
LABEL_567:
    v1764 = v50;
    v1523 = v55;
    v1642 = v52;
    v1357 = v59;
    v1407 = v57;
    v2189 = v25;
    v2315 = v27;
    v451 = v2592;
    v452 = v2495;
    v453 = v2589;
    v454 = v2494;
    v455 = v2493;
    v456 = v2492;
    v457 = v2417;
    v458 = a1;
    IPC::Decoder::markInvalid(a1);
    v1245 = 0;
    goto LABEL_568;
  }

  v61 = *v58;
  if (v61 < 2)
  {
    v2525 = 1;
    goto LABEL_167;
  }

  v1245 = *v58;
  v1357 = v59;
  v1407 = v57;
  v1642 = v52;
  v1523 = v55;
  v1764 = v50;
  v2189 = v25;
  v2315 = v27;
  v451 = v2592;
  v452 = v2495;
  v453 = v2589;
  v454 = v2494;
  v455 = v2493;
  v456 = v2492;
  v457 = v2417;
  v458 = a1;
LABEL_568:
  LOBYTE(v2592) = v451;
  v2492 = v456;
  v2493 = v455;
  v2589 = v453;
  v2494 = v454;
  v2495 = v452;
  v2417 = v457;
  IPC::Decoder::markInvalid(v458);
  a1 = v458;
  v2525 = 0;
  v2 = *(v458 + 1);
  v60 = *(v458 + 2);
  v4 = *v458;
  v25 = v2189;
  v27 = v2315;
  v50 = v1764;
  v55 = v1523;
  v52 = v1642;
  v59 = v1357;
  v57 = v1407;
  v61 = v1245;
LABEL_167:
  if (v2 <= &v60[-v4])
  {
    v2114 = a1;
    v2190 = v25;
    v2316 = v27;
    v459 = v50;
    v460 = v52;
    IPC::Decoder::markInvalid(a1);
    v52 = v460;
    v50 = v459;
    v25 = v2190;
    v27 = v2316;
    a1 = v2114;
    goto LABEL_570;
  }

  v62 = v60 + 1;
  *(a1 + 2) = v60 + 1;
  if (!v60)
  {
LABEL_570:
    v1765 = v50;
    v1524 = v55;
    v1643 = v52;
    v1358 = v59;
    v1408 = v57;
    v1246 = v61;
    v2191 = v25;
    v2317 = v27;
    v461 = v2592;
    v462 = v2495;
    v463 = v2589;
    v464 = v2494;
    v465 = v2493;
    v466 = v2492;
    v467 = v2417;
    v468 = a1;
    IPC::Decoder::markInvalid(a1);
    v1137 = 0;
    goto LABEL_571;
  }

  v63 = *v60;
  if (v63 < 2)
  {
    v2523 = 1;
    goto LABEL_171;
  }

  v1137 = *v60;
  v1246 = v61;
  v1358 = v59;
  v1408 = v57;
  v1643 = v52;
  v1524 = v55;
  v1765 = v50;
  v2191 = v25;
  v2317 = v27;
  v461 = v2592;
  v462 = v2495;
  v463 = v2589;
  v464 = v2494;
  v465 = v2493;
  v466 = v2492;
  v467 = v2417;
  v468 = a1;
LABEL_571:
  LOBYTE(v2592) = v461;
  v2492 = v466;
  v2493 = v465;
  v2589 = v463;
  v2494 = v464;
  v2495 = v462;
  v2417 = v467;
  IPC::Decoder::markInvalid(v468);
  a1 = v468;
  v2523 = 0;
  v2 = *(v468 + 1);
  v62 = *(v468 + 2);
  v4 = *v468;
  v25 = v2191;
  v27 = v2317;
  v50 = v1765;
  v55 = v1524;
  v52 = v1643;
  v59 = v1358;
  v57 = v1408;
  v61 = v1246;
  v63 = v1137;
LABEL_171:
  if (v2 <= &v62[-v4])
  {
    v2115 = a1;
    v2192 = v25;
    v2318 = v27;
    v469 = v50;
    v470 = v52;
    v471 = v63;
    IPC::Decoder::markInvalid(a1);
    v63 = v471;
    v52 = v470;
    v50 = v469;
    v25 = v2192;
    v27 = v2318;
    a1 = v2115;
    goto LABEL_573;
  }

  v64 = v62 + 1;
  *(a1 + 2) = v62 + 1;
  if (!v62)
  {
LABEL_573:
    v1766 = v50;
    v1525 = v55;
    v1644 = v52;
    v1359 = v59;
    v1409 = v57;
    v1247 = v61;
    v1138 = v63;
    v2193 = v25;
    v2319 = v27;
    v472 = v2592;
    v473 = v2495;
    v474 = v2589;
    v475 = v2494;
    v476 = v2493;
    v477 = v2492;
    v478 = v2417;
    v479 = a1;
    IPC::Decoder::markInvalid(a1);
    v2485 = 0;
    goto LABEL_574;
  }

  v2485 = *v62;
  if (v2485 < 2)
  {
    v2522 = 1;
    goto LABEL_175;
  }

  v1138 = v63;
  v1247 = v61;
  v1359 = v59;
  v1409 = v57;
  v1644 = v52;
  v1525 = v55;
  v1766 = v50;
  v2193 = v25;
  v2319 = v27;
  v472 = v2592;
  v473 = v2495;
  v474 = v2589;
  v475 = v2494;
  v476 = v2493;
  v477 = v2492;
  v478 = v2417;
  v479 = a1;
LABEL_574:
  LOBYTE(v2592) = v472;
  v2492 = v477;
  v2493 = v476;
  v2589 = v474;
  v2494 = v475;
  v2495 = v473;
  v2417 = v478;
  IPC::Decoder::markInvalid(v479);
  a1 = v479;
  v2522 = 0;
  v2 = *(v479 + 1);
  v64 = *(v479 + 2);
  v4 = *v479;
  v25 = v2193;
  v27 = v2319;
  v50 = v1766;
  v55 = v1525;
  v52 = v1644;
  v59 = v1359;
  v57 = v1409;
  v61 = v1247;
  v63 = v1138;
LABEL_175:
  if (v2 <= &v64[-v4])
  {
    v2116 = a1;
    v2194 = v25;
    v2320 = v27;
    v480 = v50;
    v481 = v52;
    v482 = v63;
    IPC::Decoder::markInvalid(a1);
    v63 = v482;
    v52 = v481;
    v50 = v480;
    v25 = v2194;
    v27 = v2320;
    a1 = v2116;
    goto LABEL_576;
  }

  v65 = v64 + 1;
  *(a1 + 2) = v64 + 1;
  if (!v64)
  {
LABEL_576:
    v1767 = v50;
    v1526 = v55;
    v1645 = v52;
    v1360 = v59;
    v1410 = v57;
    v1248 = v61;
    v1139 = v63;
    v2195 = v25;
    v2321 = v27;
    v483 = v2592;
    v484 = v2495;
    v485 = v2589;
    v486 = v2494;
    v487 = v2493;
    v488 = v2492;
    v489 = v2417;
    v490 = a1;
    IPC::Decoder::markInvalid(a1);
    v2486 = 0;
    goto LABEL_577;
  }

  v2486 = *v64;
  if (v2486 < 2)
  {
    v2521 = 1;
    goto LABEL_179;
  }

  v1139 = v63;
  v1248 = v61;
  v1360 = v59;
  v1410 = v57;
  v1645 = v52;
  v1526 = v55;
  v1767 = v50;
  v2195 = v25;
  v2321 = v27;
  v483 = v2592;
  v484 = v2495;
  v485 = v2589;
  v486 = v2494;
  v487 = v2493;
  v488 = v2492;
  v489 = v2417;
  v490 = a1;
LABEL_577:
  LOBYTE(v2592) = v483;
  v2492 = v488;
  v2493 = v487;
  v2589 = v485;
  v2494 = v486;
  v2495 = v484;
  v2417 = v489;
  IPC::Decoder::markInvalid(v490);
  a1 = v490;
  v2521 = 0;
  v2 = *(v490 + 1);
  v65 = *(v490 + 2);
  v4 = *v490;
  v25 = v2195;
  v27 = v2321;
  v50 = v1767;
  v55 = v1526;
  v52 = v1645;
  v59 = v1360;
  v57 = v1410;
  v61 = v1248;
  v63 = v1139;
LABEL_179:
  if (v2 <= &v65[-v4])
  {
    v2117 = a1;
    v2196 = v25;
    v2322 = v27;
    v491 = v50;
    v492 = v52;
    v493 = v63;
    IPC::Decoder::markInvalid(a1);
    v63 = v493;
    v52 = v492;
    v50 = v491;
    v25 = v2196;
    v27 = v2322;
    a1 = v2117;
    goto LABEL_579;
  }

  v66 = v65 + 1;
  *(a1 + 2) = v65 + 1;
  if (!v65)
  {
LABEL_579:
    v1768 = v50;
    v1527 = v55;
    v1646 = v52;
    v1361 = v59;
    v1411 = v57;
    v1249 = v61;
    v1140 = v63;
    v2197 = v25;
    v2323 = v27;
    v494 = v2592;
    v495 = v2495;
    v496 = v2589;
    v497 = v2494;
    v498 = v2493;
    v499 = v2492;
    v500 = v2417;
    v501 = a1;
    IPC::Decoder::markInvalid(a1);
    v2487 = 0;
    goto LABEL_580;
  }

  v2487 = *v65;
  if (v2487 < 2)
  {
    v2520 = 1;
    goto LABEL_183;
  }

  v1140 = v63;
  v1249 = v61;
  v1361 = v59;
  v1411 = v57;
  v1646 = v52;
  v1527 = v55;
  v1768 = v50;
  v2197 = v25;
  v2323 = v27;
  v494 = v2592;
  v495 = v2495;
  v496 = v2589;
  v497 = v2494;
  v498 = v2493;
  v499 = v2492;
  v500 = v2417;
  v501 = a1;
LABEL_580:
  LOBYTE(v2592) = v494;
  v2492 = v499;
  v2493 = v498;
  v2589 = v496;
  v2494 = v497;
  v2495 = v495;
  v2417 = v500;
  IPC::Decoder::markInvalid(v501);
  a1 = v501;
  v2520 = 0;
  v2 = *(v501 + 1);
  v66 = *(v501 + 2);
  v4 = *v501;
  v25 = v2197;
  v27 = v2323;
  v50 = v1768;
  v55 = v1527;
  v52 = v1646;
  v59 = v1361;
  v57 = v1411;
  v61 = v1249;
  v63 = v1140;
LABEL_183:
  if (v2 <= &v66[-v4])
  {
    v2118 = a1;
    v2198 = v25;
    v2324 = v27;
    v502 = v50;
    v503 = v52;
    v504 = v63;
    IPC::Decoder::markInvalid(a1);
    v63 = v504;
    v52 = v503;
    v50 = v502;
    v25 = v2198;
    v27 = v2324;
    a1 = v2118;
    goto LABEL_582;
  }

  v67 = v66 + 1;
  *(a1 + 2) = v66 + 1;
  if (!v66)
  {
LABEL_582:
    v1769 = v50;
    v1528 = v55;
    v1647 = v52;
    v1362 = v59;
    v1412 = v57;
    v1250 = v61;
    v1141 = v63;
    v2199 = v25;
    v2325 = v27;
    v505 = v2592;
    v506 = v2495;
    v507 = v2589;
    v508 = v2494;
    v509 = v2493;
    v510 = v2492;
    v511 = v2417;
    v512 = a1;
    IPC::Decoder::markInvalid(a1);
    v2488 = 0;
    goto LABEL_583;
  }

  v2488 = *v66;
  if (v2488 < 2)
  {
    v2519 = 1;
    goto LABEL_187;
  }

  v1141 = v63;
  v1250 = v61;
  v1362 = v59;
  v1412 = v57;
  v1647 = v52;
  v1528 = v55;
  v1769 = v50;
  v2199 = v25;
  v2325 = v27;
  v505 = v2592;
  v506 = v2495;
  v507 = v2589;
  v508 = v2494;
  v509 = v2493;
  v510 = v2492;
  v511 = v2417;
  v512 = a1;
LABEL_583:
  LOBYTE(v2592) = v505;
  v2492 = v510;
  v2493 = v509;
  v2589 = v507;
  v2494 = v508;
  v2495 = v506;
  v2417 = v511;
  IPC::Decoder::markInvalid(v512);
  a1 = v512;
  v2519 = 0;
  v2 = *(v512 + 1);
  v67 = *(v512 + 2);
  v4 = *v512;
  v25 = v2199;
  v27 = v2325;
  v50 = v1769;
  v55 = v1528;
  v52 = v1647;
  v59 = v1362;
  v57 = v1412;
  v61 = v1250;
  v63 = v1141;
LABEL_187:
  if (v2 <= &v67[-v4])
  {
    v2119 = a1;
    v2200 = v25;
    v2326 = v27;
    v513 = v50;
    v514 = v52;
    v515 = v63;
    IPC::Decoder::markInvalid(a1);
    v63 = v515;
    v52 = v514;
    v50 = v513;
    v25 = v2200;
    v27 = v2326;
    a1 = v2119;
    goto LABEL_585;
  }

  v68 = v67 + 1;
  *(a1 + 2) = v67 + 1;
  if (!v67)
  {
LABEL_585:
    v1770 = v50;
    v1529 = v55;
    v1648 = v52;
    v1363 = v59;
    v1413 = v57;
    v1251 = v61;
    v1142 = v63;
    v2201 = v25;
    v2327 = v27;
    v516 = v2592;
    v517 = v2495;
    v518 = v2589;
    v519 = v2494;
    v520 = v2493;
    v521 = v2492;
    v522 = v2417;
    v523 = a1;
    IPC::Decoder::markInvalid(a1);
    v2489 = 0;
    goto LABEL_586;
  }

  v2489 = *v67;
  if (v2489 < 2)
  {
    v2518 = 1;
    goto LABEL_191;
  }

  v1142 = v63;
  v1251 = v61;
  v1363 = v59;
  v1413 = v57;
  v1648 = v52;
  v1529 = v55;
  v1770 = v50;
  v2201 = v25;
  v2327 = v27;
  v516 = v2592;
  v517 = v2495;
  v518 = v2589;
  v519 = v2494;
  v520 = v2493;
  v521 = v2492;
  v522 = v2417;
  v523 = a1;
LABEL_586:
  LOBYTE(v2592) = v516;
  v2492 = v521;
  v2493 = v520;
  v2589 = v518;
  v2494 = v519;
  v2495 = v517;
  v2417 = v522;
  IPC::Decoder::markInvalid(v523);
  a1 = v523;
  v2518 = 0;
  v2 = *(v523 + 1);
  v68 = *(v523 + 2);
  v4 = *v523;
  v25 = v2201;
  v27 = v2327;
  v50 = v1770;
  v55 = v1529;
  v52 = v1648;
  v59 = v1363;
  v57 = v1413;
  v61 = v1251;
  v63 = v1142;
LABEL_191:
  if (v2 <= &v68[-v4])
  {
    v2120 = a1;
    v2202 = v25;
    v1771 = v50;
    v524 = v55;
    v525 = v52;
    v526 = v63;
    IPC::Decoder::markInvalid(a1);
    v63 = v526;
    v52 = v525;
    v55 = v524;
    v50 = v1771;
    v25 = v2202;
    a1 = v2120;
    goto LABEL_588;
  }

  v69 = v68 + 1;
  *(a1 + 2) = v68 + 1;
  if (!v68)
  {
LABEL_588:
    v1772 = v50;
    v1530 = v55;
    v1649 = v52;
    v1364 = v59;
    v1414 = v57;
    v1252 = v61;
    v1143 = v63;
    v2203 = v25;
    v2328 = v27;
    v527 = v2592;
    v528 = v2495;
    v529 = v2589;
    v530 = v2494;
    v531 = v2493;
    v532 = v2492;
    v533 = v2417;
    v534 = a1;
    IPC::Decoder::markInvalid(a1);
    v2490 = 0;
    goto LABEL_589;
  }

  v2490 = *v68;
  if (v2490 < 2)
  {
    v2517 = 1;
    goto LABEL_195;
  }

  v1143 = v63;
  v1252 = v61;
  v1364 = v59;
  v1414 = v57;
  v1649 = v52;
  v1530 = v55;
  v1772 = v50;
  v2203 = v25;
  v2328 = v27;
  v527 = v2592;
  v528 = v2495;
  v529 = v2589;
  v530 = v2494;
  v531 = v2493;
  v532 = v2492;
  v533 = v2417;
  v534 = a1;
LABEL_589:
  LOBYTE(v2592) = v527;
  v2492 = v532;
  v2493 = v531;
  v2589 = v529;
  v2494 = v530;
  v2495 = v528;
  v2417 = v533;
  IPC::Decoder::markInvalid(v534);
  a1 = v534;
  v2517 = 0;
  v2 = *(v534 + 1);
  v69 = *(v534 + 2);
  v4 = *v534;
  v25 = v2203;
  v27 = v2328;
  v50 = v1772;
  v55 = v1530;
  v52 = v1649;
  v59 = v1364;
  v57 = v1414;
  v61 = v1252;
  v63 = v1143;
LABEL_195:
  if (v2 <= &v69[-v4])
  {
    v2121 = a1;
    v2204 = v25;
    v2329 = v27;
    v535 = v50;
    v536 = v52;
    v537 = v63;
    IPC::Decoder::markInvalid(a1);
    v63 = v537;
    v52 = v536;
    v50 = v535;
    v25 = v2204;
    v27 = v2329;
    a1 = v2121;
    goto LABEL_591;
  }

  v70 = v69 + 1;
  *(a1 + 2) = v69 + 1;
  if (!v69)
  {
LABEL_591:
    v1773 = v50;
    v1531 = v55;
    v1650 = v52;
    v1365 = v59;
    v1415 = v57;
    v1253 = v61;
    v1144 = v63;
    v2205 = v25;
    v2330 = v27;
    v538 = v2592;
    v539 = v2495;
    v540 = v2589;
    v541 = v2494;
    v542 = v2493;
    v543 = v2492;
    v544 = v2417;
    v545 = a1;
    IPC::Decoder::markInvalid(a1);
    v2491 = 0;
    goto LABEL_592;
  }

  v2491 = *v69;
  if (v2491 < 2)
  {
    v2516 = 1;
    goto LABEL_199;
  }

  v1144 = v63;
  v1253 = v61;
  v1365 = v59;
  v1415 = v57;
  v1650 = v52;
  v1531 = v55;
  v1773 = v50;
  v2205 = v25;
  v2330 = v27;
  v538 = v2592;
  v539 = v2495;
  v540 = v2589;
  v541 = v2494;
  v542 = v2493;
  v543 = v2492;
  v544 = v2417;
  v545 = a1;
LABEL_592:
  LOBYTE(v2592) = v538;
  v2492 = v543;
  v2493 = v542;
  v2589 = v540;
  v2494 = v541;
  v2495 = v539;
  v2417 = v544;
  IPC::Decoder::markInvalid(v545);
  a1 = v545;
  v2516 = 0;
  v2 = *(v545 + 1);
  v70 = *(v545 + 2);
  v4 = *v545;
  v25 = v2205;
  v27 = v2330;
  v50 = v1773;
  v55 = v1531;
  v52 = v1650;
  v59 = v1365;
  v57 = v1415;
  v61 = v1253;
  v63 = v1144;
LABEL_199:
  if (v2 <= &v70[-v4])
  {
    v2122 = a1;
    v2206 = v25;
    v2331 = v27;
    v546 = v50;
    v547 = v52;
    v548 = v63;
    IPC::Decoder::markInvalid(a1);
    v63 = v548;
    v52 = v547;
    v50 = v546;
    v25 = v2206;
    v27 = v2331;
    a1 = v2122;
    goto LABEL_594;
  }

  v71 = v70 + 1;
  *(a1 + 2) = v70 + 1;
  if (!v70)
  {
LABEL_594:
    v1774 = v50;
    v1532 = v55;
    v1651 = v52;
    v1366 = v59;
    v1416 = v57;
    v1254 = v61;
    v1145 = v63;
    v2207 = v25;
    v2332 = v27;
    v549 = v2592;
    v550 = v2495;
    v551 = v2589;
    v552 = v2494;
    v553 = v2493;
    v554 = v2492;
    v555 = v2417;
    v556 = a1;
    IPC::Decoder::markInvalid(a1);
    v1996 = 0;
    goto LABEL_595;
  }

  v72 = *v70;
  if (v72 < 2)
  {
    v2515 = 1;
    goto LABEL_203;
  }

  v1996 = *v70;
  v1145 = v63;
  v1254 = v61;
  v1366 = v59;
  v1416 = v57;
  v1651 = v52;
  v1532 = v55;
  v1774 = v50;
  v2207 = v25;
  v2332 = v27;
  v549 = v2592;
  v550 = v2495;
  v551 = v2589;
  v552 = v2494;
  v553 = v2493;
  v554 = v2492;
  v555 = v2417;
  v556 = a1;
LABEL_595:
  LOBYTE(v2592) = v549;
  v2492 = v554;
  v2493 = v553;
  v2589 = v551;
  v2494 = v552;
  v2495 = v550;
  v2417 = v555;
  IPC::Decoder::markInvalid(v556);
  a1 = v556;
  v2515 = 0;
  v2 = *(v556 + 1);
  v71 = *(v556 + 2);
  v4 = *v556;
  v25 = v2207;
  v27 = v2332;
  v50 = v1774;
  v55 = v1532;
  v52 = v1651;
  v59 = v1366;
  v57 = v1416;
  v61 = v1254;
  v63 = v1145;
  v72 = v1996;
LABEL_203:
  if (v2 <= &v71[-v4])
  {
    v2123 = a1;
    v2208 = v25;
    v2333 = v27;
    v557 = v50;
    v558 = v52;
    v559 = v63;
    v1997 = v72;
    IPC::Decoder::markInvalid(a1);
    v72 = v1997;
    v63 = v559;
    v52 = v558;
    v50 = v557;
    v25 = v2208;
    v27 = v2333;
    a1 = v2123;
    goto LABEL_597;
  }

  v73 = v71 + 1;
  *(a1 + 2) = v71 + 1;
  if (!v71)
  {
LABEL_597:
    v1775 = v50;
    v1533 = v55;
    v1652 = v52;
    v1367 = v59;
    v1417 = v57;
    v1255 = v61;
    v1146 = v63;
    v1998 = v72;
    v2209 = v25;
    v2334 = v27;
    v560 = v2592;
    v561 = v2495;
    v562 = v2589;
    v563 = v2494;
    v564 = v2493;
    v565 = v2492;
    v566 = v2417;
    v567 = a1;
    IPC::Decoder::markInvalid(a1);
    v1921 = 0;
    goto LABEL_598;
  }

  v74 = *v71;
  if (v74 < 2)
  {
    v2514 = 1;
    goto LABEL_207;
  }

  v1921 = *v71;
  v1998 = v72;
  v1146 = v63;
  v1255 = v61;
  v1367 = v59;
  v1417 = v57;
  v1652 = v52;
  v1533 = v55;
  v1775 = v50;
  v2209 = v25;
  v2334 = v27;
  v560 = v2592;
  v561 = v2495;
  v562 = v2589;
  v563 = v2494;
  v564 = v2493;
  v565 = v2492;
  v566 = v2417;
  v567 = a1;
LABEL_598:
  LOBYTE(v2592) = v560;
  v2492 = v565;
  v2493 = v564;
  v2589 = v562;
  v2494 = v563;
  v2495 = v561;
  v2417 = v566;
  IPC::Decoder::markInvalid(v567);
  a1 = v567;
  v2514 = 0;
  v2 = *(v567 + 1);
  v73 = *(v567 + 2);
  v4 = *v567;
  v25 = v2209;
  v27 = v2334;
  v50 = v1775;
  v55 = v1533;
  v52 = v1652;
  v59 = v1367;
  v57 = v1417;
  v61 = v1255;
  v63 = v1146;
  v74 = v1921;
  v72 = v1998;
LABEL_207:
  if (v2 <= &v73[-v4])
  {
    v2124 = a1;
    v2210 = v25;
    v2335 = v27;
    v568 = v50;
    v569 = v52;
    v570 = v63;
    v1922 = v74;
    v1999 = v72;
    IPC::Decoder::markInvalid(a1);
    v74 = v1922;
    v72 = v1999;
    v63 = v570;
    v52 = v569;
    v50 = v568;
    v25 = v2210;
    v27 = v2335;
    a1 = v2124;
    goto LABEL_600;
  }

  v75 = v73 + 1;
  *(a1 + 2) = v73 + 1;
  if (!v73)
  {
LABEL_600:
    v1776 = v50;
    v1534 = v55;
    v1653 = v52;
    v1368 = v59;
    v1418 = v57;
    v1256 = v61;
    v1147 = v63;
    v1923 = v74;
    v2000 = v72;
    v2211 = v25;
    v2336 = v27;
    v571 = v2592;
    v572 = v2495;
    v573 = v2589;
    v574 = v2494;
    v575 = v2493;
    v576 = v2492;
    v577 = v2417;
    v578 = a1;
    IPC::Decoder::markInvalid(a1);
    v1884 = 0;
    goto LABEL_601;
  }

  v76 = *v73;
  if (v76 < 2)
  {
    v2513 = 1;
    goto LABEL_211;
  }

  v1884 = *v73;
  v1923 = v74;
  v2000 = v72;
  v1147 = v63;
  v1256 = v61;
  v1368 = v59;
  v1418 = v57;
  v1653 = v52;
  v1534 = v55;
  v1776 = v50;
  v2211 = v25;
  v2336 = v27;
  v571 = v2592;
  v572 = v2495;
  v573 = v2589;
  v574 = v2494;
  v575 = v2493;
  v576 = v2492;
  v577 = v2417;
  v578 = a1;
LABEL_601:
  LOBYTE(v2592) = v571;
  v2492 = v576;
  v2493 = v575;
  v2589 = v573;
  v2494 = v574;
  v2495 = v572;
  v2417 = v577;
  IPC::Decoder::markInvalid(v578);
  a1 = v578;
  v2513 = 0;
  v75 = *(v578 + 2);
  v25 = v2211;
  v27 = v2336;
  v50 = v1776;
  v55 = v1534;
  v52 = v1653;
  v59 = v1368;
  v57 = v1418;
  v61 = v1256;
  v63 = v1147;
  v74 = v1923;
  v72 = v2000;
  v76 = v1884;
LABEL_211:
  v77 = *a1;
  v78 = *(a1 + 1);
  if (v78 <= &v75[-*a1])
  {
    v2125 = a1;
    v2212 = v25;
    v2337 = v27;
    v579 = v50;
    v580 = v52;
    v581 = v63;
    v1924 = v74;
    v2001 = v72;
    IPC::Decoder::markInvalid(a1);
    v74 = v1924;
    v72 = v2001;
    v63 = v581;
    v52 = v580;
    v50 = v579;
    v25 = v2212;
    v27 = v2337;
    a1 = v2125;
    goto LABEL_603;
  }

  v79 = v75 + 1;
  *(a1 + 2) = v75 + 1;
  if (!v75)
  {
LABEL_603:
    v1777 = v50;
    v1535 = v55;
    v1654 = v52;
    v1369 = v59;
    v1419 = v57;
    v1257 = v61;
    v1148 = v63;
    v1925 = v74;
    v2002 = v72;
    v1885 = v76;
    v2213 = v25;
    v2338 = v27;
    v582 = v2592;
    v583 = v2495;
    v584 = v2589;
    v585 = v2494;
    v586 = v2493;
    v587 = v2492;
    v588 = v2417;
    v589 = a1;
    IPC::Decoder::markInvalid(a1);
    v1813 = 0;
    goto LABEL_604;
  }

  v80 = *v75;
  if (v80 < 2)
  {
    v2512 = 1;
    goto LABEL_215;
  }

  v1813 = *v75;
  v1885 = v76;
  v1925 = v74;
  v2002 = v72;
  v1148 = v63;
  v1257 = v61;
  v1369 = v59;
  v1419 = v57;
  v1654 = v52;
  v1535 = v55;
  v1777 = v50;
  v2213 = v25;
  v2338 = v27;
  v582 = v2592;
  v583 = v2495;
  v584 = v2589;
  v585 = v2494;
  v586 = v2493;
  v587 = v2492;
  v588 = v2417;
  v589 = a1;
LABEL_604:
  LOBYTE(v2592) = v582;
  v2492 = v587;
  v2493 = v586;
  v2589 = v584;
  v2494 = v585;
  v2495 = v583;
  v2417 = v588;
  IPC::Decoder::markInvalid(v589);
  a1 = v589;
  v2512 = 0;
  v78 = *(v589 + 1);
  v79 = *(v589 + 2);
  v77 = *v589;
  v25 = v2213;
  v27 = v2338;
  v50 = v1777;
  v80 = v1813;
  v55 = v1535;
  v52 = v1654;
  v59 = v1369;
  v57 = v1419;
  v61 = v1257;
  v63 = v1148;
  v74 = v1925;
  v72 = v2002;
  v76 = v1885;
LABEL_215:
  if (v78 <= &v79[-v77])
  {
    v2126 = a1;
    v2214 = v25;
    v2339 = v27;
    v590 = v50;
    v591 = v52;
    v592 = v63;
    v1926 = v74;
    v2003 = v72;
    v1814 = v80;
    IPC::Decoder::markInvalid(a1);
    v80 = v1814;
    v74 = v1926;
    v72 = v2003;
    v63 = v592;
    v52 = v591;
    v50 = v590;
    v25 = v2214;
    v27 = v2339;
    a1 = v2126;
    goto LABEL_606;
  }

  v81 = v79 + 1;
  *(a1 + 2) = v79 + 1;
  if (!v79)
  {
LABEL_606:
    v1778 = v50;
    v1815 = v80;
    v1536 = v55;
    v1655 = v52;
    v1370 = v59;
    v1420 = v57;
    v1258 = v61;
    v1149 = v63;
    v1927 = v74;
    v2004 = v72;
    v1886 = v76;
    v2215 = v25;
    v2340 = v27;
    v593 = v2592;
    v594 = v2495;
    v595 = v2589;
    v596 = v2494;
    v597 = v2493;
    v598 = v2492;
    v599 = v2417;
    v600 = a1;
    IPC::Decoder::markInvalid(a1);
    v1690 = 0;
    goto LABEL_607;
  }

  v82 = *v79;
  if (v82 < 2)
  {
    v2511 = 1;
    goto LABEL_219;
  }

  v1655 = v52;
  v1690 = *v79;
  v1815 = v80;
  v1886 = v76;
  v1927 = v74;
  v2004 = v72;
  v1149 = v63;
  v1258 = v61;
  v1370 = v59;
  v1420 = v57;
  v1536 = v55;
  v1778 = v50;
  v2215 = v25;
  v2340 = v27;
  v593 = v2592;
  v594 = v2495;
  v595 = v2589;
  v596 = v2494;
  v597 = v2493;
  v598 = v2492;
  v599 = v2417;
  v600 = a1;
LABEL_607:
  LOBYTE(v2592) = v593;
  v2492 = v598;
  v2493 = v597;
  v2589 = v595;
  v2494 = v596;
  v2495 = v594;
  v2417 = v599;
  IPC::Decoder::markInvalid(v600);
  a1 = v600;
  v2511 = 0;
  v78 = *(v600 + 1);
  v81 = *(v600 + 2);
  v77 = *v600;
  v25 = v2215;
  v27 = v2340;
  v50 = v1778;
  v80 = v1815;
  v55 = v1536;
  v52 = v1655;
  v82 = v1690;
  v59 = v1370;
  v57 = v1420;
  v61 = v1258;
  v63 = v1149;
  v74 = v1927;
  v72 = v2004;
  v76 = v1886;
LABEL_219:
  if (v78 <= &v81[-v77])
  {
    v2127 = a1;
    v2216 = v25;
    v2341 = v27;
    v601 = v50;
    v602 = v52;
    v603 = v63;
    v1928 = v74;
    v2005 = v72;
    v1816 = v80;
    v1691 = v82;
    IPC::Decoder::markInvalid(a1);
    v82 = v1691;
    v80 = v1816;
    v74 = v1928;
    v72 = v2005;
    v63 = v603;
    v52 = v602;
    v50 = v601;
    v25 = v2216;
    v27 = v2341;
    a1 = v2127;
    goto LABEL_609;
  }

  v83 = v81 + 1;
  *(a1 + 2) = v81 + 1;
  if (!v81)
  {
LABEL_609:
    v1779 = v50;
    v1817 = v80;
    v1537 = v55;
    v1656 = v52;
    v1692 = v82;
    v1371 = v59;
    v1421 = v57;
    v1259 = v61;
    v1150 = v63;
    v1929 = v74;
    v2006 = v72;
    v1887 = v76;
    v2217 = v25;
    v2342 = v27;
    v604 = v2592;
    v605 = v2495;
    v606 = v2589;
    v607 = v2494;
    v608 = v2493;
    v609 = v2492;
    v610 = v2417;
    v611 = a1;
    IPC::Decoder::markInvalid(a1);
    v1571 = 0;
    goto LABEL_610;
  }

  v84 = *v81;
  if (v84 < 2)
  {
    v2510 = 1;
    goto LABEL_223;
  }

  v1571 = *v81;
  v1656 = v52;
  v1692 = v82;
  v1779 = v50;
  v1817 = v80;
  v1887 = v76;
  v1929 = v74;
  v2006 = v72;
  v1150 = v63;
  v1259 = v61;
  v1371 = v59;
  v1421 = v57;
  v1537 = v55;
  v2217 = v25;
  v2342 = v27;
  v604 = v2592;
  v605 = v2495;
  v606 = v2589;
  v607 = v2494;
  v608 = v2493;
  v609 = v2492;
  v610 = v2417;
  v611 = a1;
LABEL_610:
  LOBYTE(v2592) = v604;
  v2492 = v609;
  v2493 = v608;
  v2589 = v606;
  v2494 = v607;
  v2495 = v605;
  v2417 = v610;
  IPC::Decoder::markInvalid(v611);
  a1 = v611;
  v2510 = 0;
  v78 = *(v611 + 1);
  v83 = *(v611 + 2);
  v77 = *v611;
  v25 = v2217;
  v27 = v2342;
  v50 = v1779;
  v80 = v1817;
  v55 = v1537;
  v84 = v1571;
  v52 = v1656;
  v82 = v1692;
  v59 = v1371;
  v57 = v1421;
  v61 = v1259;
  v63 = v1150;
  v74 = v1929;
  v72 = v2006;
  v76 = v1887;
LABEL_223:
  if (v78 <= &v83[-v77])
  {
    v2128 = a1;
    v2218 = v25;
    v2343 = v27;
    v612 = v50;
    v613 = v52;
    v614 = v63;
    v1930 = v74;
    v2007 = v72;
    v1818 = v80;
    v1693 = v82;
    v1572 = v84;
    IPC::Decoder::markInvalid(a1);
    v84 = v1572;
    v82 = v1693;
    v80 = v1818;
    v74 = v1930;
    v72 = v2007;
    v63 = v614;
    v52 = v613;
    v50 = v612;
    v25 = v2218;
    v27 = v2343;
    a1 = v2128;
    goto LABEL_612;
  }

  v85 = v83 + 1;
  *(a1 + 2) = v83 + 1;
  if (!v83)
  {
LABEL_612:
    v1780 = v50;
    v1819 = v80;
    v1538 = v55;
    v1573 = v84;
    v1657 = v52;
    v1694 = v82;
    v1372 = v59;
    v1422 = v57;
    v1260 = v61;
    v1151 = v63;
    v1931 = v74;
    v2008 = v72;
    v1888 = v76;
    v2219 = v25;
    v2344 = v27;
    v615 = v2592;
    v616 = v2495;
    v617 = v2589;
    v618 = v2494;
    v619 = v2493;
    v620 = v2492;
    v621 = v2417;
    v622 = a1;
    IPC::Decoder::markInvalid(a1);
    v1455 = 0;
    goto LABEL_613;
  }

  v86 = *v83;
  if (v86 < 2)
  {
    v2509 = 1;
    goto LABEL_227;
  }

  v1422 = v57;
  v1455 = *v83;
  v1573 = v84;
  v1657 = v52;
  v1694 = v82;
  v1780 = v50;
  v1819 = v80;
  v1888 = v76;
  v1931 = v74;
  v2008 = v72;
  v1151 = v63;
  v1260 = v61;
  v1372 = v59;
  v1538 = v55;
  v2219 = v25;
  v2344 = v27;
  v615 = v2592;
  v616 = v2495;
  v617 = v2589;
  v618 = v2494;
  v619 = v2493;
  v620 = v2492;
  v621 = v2417;
  v622 = a1;
LABEL_613:
  LOBYTE(v2592) = v615;
  v2492 = v620;
  v2493 = v619;
  v2589 = v617;
  v2494 = v618;
  v2495 = v616;
  v2417 = v621;
  IPC::Decoder::markInvalid(v622);
  a1 = v622;
  v2509 = 0;
  v78 = *(v622 + 1);
  v85 = *(v622 + 2);
  v77 = *v622;
  v25 = v2219;
  v27 = v2344;
  v50 = v1780;
  v80 = v1819;
  v55 = v1538;
  v84 = v1573;
  v52 = v1657;
  v82 = v1694;
  v59 = v1372;
  v57 = v1422;
  v61 = v1260;
  v63 = v1151;
  v74 = v1931;
  v72 = v2008;
  v76 = v1888;
  v86 = v1455;
LABEL_227:
  if (v78 <= &v85[-v77])
  {
    v2129 = a1;
    v2220 = v25;
    v2345 = v27;
    v623 = v50;
    v624 = v52;
    v625 = v63;
    v1932 = v74;
    v2009 = v72;
    v1820 = v80;
    v1695 = v82;
    v1574 = v84;
    v1456 = v86;
    IPC::Decoder::markInvalid(a1);
    v86 = v1456;
    v84 = v1574;
    v82 = v1695;
    v80 = v1820;
    v74 = v1932;
    v72 = v2009;
    v63 = v625;
    v52 = v624;
    v50 = v623;
    v25 = v2220;
    v27 = v2345;
    a1 = v2129;
    goto LABEL_615;
  }

  v87 = v85 + 1;
  *(a1 + 2) = v85 + 1;
  if (!v85)
  {
LABEL_615:
    v1781 = v50;
    v1821 = v80;
    v1539 = v55;
    v1575 = v84;
    v1658 = v52;
    v1696 = v82;
    v1373 = v59;
    v1423 = v57;
    v1261 = v61;
    v1152 = v63;
    v1933 = v74;
    v2010 = v72;
    v1889 = v76;
    v1457 = v86;
    v2221 = v25;
    v2346 = v27;
    v626 = v2592;
    v627 = v2495;
    v628 = v2589;
    v629 = v2494;
    v630 = v2493;
    v631 = v2492;
    v632 = v2417;
    v633 = a1;
    IPC::Decoder::markInvalid(a1);
    v1293 = 0;
    goto LABEL_616;
  }

  v88 = *v85;
  if (v88 < 2)
  {
    v2508 = 1;
    goto LABEL_231;
  }

  v1261 = v61;
  v1293 = *v85;
  v1423 = v57;
  v1457 = v86;
  v1575 = v84;
  v1658 = v52;
  v1696 = v82;
  v1781 = v50;
  v1821 = v80;
  v1889 = v76;
  v1933 = v74;
  v2010 = v72;
  v1152 = v63;
  v1373 = v59;
  v1539 = v55;
  v2221 = v25;
  v2346 = v27;
  v626 = v2592;
  v627 = v2495;
  v628 = v2589;
  v629 = v2494;
  v630 = v2493;
  v631 = v2492;
  v632 = v2417;
  v633 = a1;
LABEL_616:
  LOBYTE(v2592) = v626;
  v2492 = v631;
  v2493 = v630;
  v2589 = v628;
  v2494 = v629;
  v2495 = v627;
  v2417 = v632;
  IPC::Decoder::markInvalid(v633);
  a1 = v633;
  v2508 = 0;
  v78 = *(v633 + 1);
  v87 = *(v633 + 2);
  v77 = *v633;
  v25 = v2221;
  v27 = v2346;
  v50 = v1781;
  v80 = v1821;
  v55 = v1539;
  v84 = v1575;
  v52 = v1658;
  v82 = v1696;
  v59 = v1373;
  v57 = v1423;
  v61 = v1261;
  v88 = v1293;
  v63 = v1152;
  v74 = v1933;
  v72 = v2010;
  v76 = v1889;
  v86 = v1457;
LABEL_231:
  if (v78 <= &v87[-v77])
  {
    v2130 = a1;
    v2222 = v25;
    v2347 = v27;
    v634 = v50;
    v635 = v52;
    v636 = v63;
    v1934 = v74;
    v2011 = v72;
    v1822 = v80;
    v1697 = v82;
    v1576 = v84;
    v1458 = v86;
    v1294 = v88;
    IPC::Decoder::markInvalid(a1);
    v88 = v1294;
    v86 = v1458;
    v84 = v1576;
    v82 = v1697;
    v80 = v1822;
    v74 = v1934;
    v72 = v2011;
    v63 = v636;
    v52 = v635;
    v50 = v634;
    v25 = v2222;
    v27 = v2347;
    a1 = v2130;
    goto LABEL_618;
  }

  v89 = v87 + 1;
  *(a1 + 2) = v87 + 1;
  if (!v87)
  {
LABEL_618:
    v1782 = v50;
    v1823 = v80;
    v1540 = v55;
    v1577 = v84;
    v1659 = v52;
    v1698 = v82;
    v1374 = v59;
    v1424 = v57;
    v1262 = v61;
    v1295 = v88;
    v1153 = v63;
    v1935 = v74;
    v2012 = v72;
    v1890 = v76;
    v1459 = v86;
    v2223 = v25;
    v2348 = v27;
    v637 = v2592;
    v638 = v2495;
    v639 = v2589;
    v640 = v2494;
    v641 = v2493;
    v642 = v2492;
    v643 = v2417;
    v644 = a1;
    IPC::Decoder::markInvalid(a1);
    v1184 = 0;
    goto LABEL_619;
  }

  v90 = *v87;
  if (v90 < 2)
  {
    v2507 = 1;
    goto LABEL_235;
  }

  v1153 = v63;
  v1184 = *v87;
  v1262 = v61;
  v1295 = v88;
  v1424 = v57;
  v1459 = v86;
  v1577 = v84;
  v1659 = v52;
  v1698 = v82;
  v1782 = v50;
  v1823 = v80;
  v1890 = v76;
  v1935 = v74;
  v2012 = v72;
  v1374 = v59;
  v1540 = v55;
  v2223 = v25;
  v2348 = v27;
  v637 = v2592;
  v638 = v2495;
  v639 = v2589;
  v640 = v2494;
  v641 = v2493;
  v642 = v2492;
  v643 = v2417;
  v644 = a1;
LABEL_619:
  LOBYTE(v2592) = v637;
  v2492 = v642;
  v2493 = v641;
  v2589 = v639;
  v2494 = v640;
  v2495 = v638;
  v2417 = v643;
  IPC::Decoder::markInvalid(v644);
  a1 = v644;
  v2507 = 0;
  v78 = *(v644 + 1);
  v89 = *(v644 + 2);
  v77 = *v644;
  v25 = v2223;
  v27 = v2348;
  v50 = v1782;
  v80 = v1823;
  v55 = v1540;
  v84 = v1577;
  v52 = v1659;
  v82 = v1698;
  v59 = v1374;
  v57 = v1424;
  v61 = v1262;
  v88 = v1295;
  v63 = v1153;
  v90 = v1184;
  v74 = v1935;
  v72 = v2012;
  v76 = v1890;
  v86 = v1459;
LABEL_235:
  if (v78 <= &v89[-v77])
  {
    v2131 = a1;
    v2224 = v25;
    v2349 = v27;
    v645 = v50;
    v646 = v52;
    v647 = v63;
    v1936 = v74;
    v2013 = v72;
    v1824 = v80;
    v1699 = v82;
    v1578 = v84;
    v1460 = v86;
    v1296 = v88;
    v1185 = v90;
    IPC::Decoder::markInvalid(a1);
    v90 = v1185;
    v88 = v1296;
    v86 = v1460;
    v84 = v1578;
    v82 = v1699;
    v80 = v1824;
    v74 = v1936;
    v72 = v2013;
    v63 = v647;
    v52 = v646;
    v50 = v645;
    v25 = v2224;
    v27 = v2349;
    a1 = v2131;
    goto LABEL_621;
  }

  v91 = v89 + 1;
  *(a1 + 2) = v89 + 1;
  if (!v89)
  {
LABEL_621:
    v1783 = v50;
    v1825 = v80;
    v1541 = v55;
    v1579 = v84;
    v1660 = v52;
    v1700 = v82;
    v1375 = v59;
    v1425 = v57;
    v1263 = v61;
    v1297 = v88;
    v1154 = v63;
    v1186 = v90;
    v1937 = v74;
    v2014 = v72;
    v1891 = v76;
    v1461 = v86;
    v2225 = v25;
    v2350 = v27;
    v648 = v2592;
    v649 = v2495;
    v650 = v2589;
    v651 = v2494;
    v652 = v2493;
    v653 = v2492;
    v654 = v2417;
    v655 = a1;
    IPC::Decoder::markInvalid(a1);
    v1078 = 0;
    goto LABEL_622;
  }

  v92 = *v89;
  if (v92 < 2)
  {
    v2506 = 1;
    goto LABEL_239;
  }

  v1078 = *v89;
  v1154 = v63;
  v1186 = v90;
  v1263 = v61;
  v1297 = v88;
  v1375 = v59;
  v1425 = v57;
  v1461 = v86;
  v1579 = v84;
  v1660 = v52;
  v1700 = v82;
  v1783 = v50;
  v1825 = v80;
  v1891 = v76;
  v1937 = v74;
  v2014 = v72;
  v1541 = v55;
  v2225 = v25;
  v2350 = v27;
  v648 = v2592;
  v649 = v2495;
  v650 = v2589;
  v651 = v2494;
  v652 = v2493;
  v653 = v2492;
  v654 = v2417;
  v655 = a1;
LABEL_622:
  LOBYTE(v2592) = v648;
  v2492 = v653;
  v2493 = v652;
  v2589 = v650;
  v2494 = v651;
  v2495 = v649;
  v2417 = v654;
  IPC::Decoder::markInvalid(v655);
  a1 = v655;
  v2506 = 0;
  v78 = *(v655 + 1);
  v91 = *(v655 + 2);
  v77 = *v655;
  v25 = v2225;
  v27 = v2350;
  v50 = v1783;
  v80 = v1825;
  v55 = v1541;
  v84 = v1579;
  v52 = v1660;
  v82 = v1700;
  v59 = v1375;
  v57 = v1425;
  v61 = v1263;
  v88 = v1297;
  v63 = v1154;
  v90 = v1186;
  v74 = v1937;
  v72 = v2014;
  v76 = v1891;
  v86 = v1461;
  v92 = v1078;
LABEL_239:
  if (v78 <= &v91[-v77])
  {
    v2132 = a1;
    v2226 = v25;
    v2351 = v27;
    v656 = v50;
    v657 = v52;
    v658 = v63;
    v1938 = v74;
    v2015 = v72;
    v1826 = v80;
    v1701 = v82;
    v1580 = v84;
    v1462 = v86;
    v1298 = v88;
    v1187 = v90;
    v1079 = v92;
    IPC::Decoder::markInvalid(a1);
    v92 = v1079;
    v90 = v1187;
    v88 = v1298;
    v86 = v1462;
    v84 = v1580;
    v82 = v1701;
    v80 = v1826;
    v74 = v1938;
    v72 = v2015;
    v63 = v658;
    v52 = v657;
    v50 = v656;
    v25 = v2226;
    v27 = v2351;
    a1 = v2132;
    goto LABEL_624;
  }

  v93 = v91 + 1;
  *(a1 + 2) = v91 + 1;
  if (!v91)
  {
LABEL_624:
    v1784 = v50;
    v1827 = v80;
    v1542 = v55;
    v1581 = v84;
    v1661 = v52;
    v1702 = v82;
    v1376 = v59;
    v1426 = v57;
    v1264 = v61;
    v1299 = v88;
    v1155 = v63;
    v1188 = v90;
    v1939 = v74;
    v2016 = v72;
    v1892 = v76;
    v1463 = v86;
    v1080 = v92;
    v2227 = v25;
    v2352 = v27;
    v659 = v2592;
    v660 = v2495;
    v661 = v2589;
    v662 = v2494;
    v663 = v2493;
    v664 = v2492;
    v665 = v2417;
    v666 = a1;
    IPC::Decoder::markInvalid(a1);
    v1049 = 0;
    goto LABEL_625;
  }

  v94 = *v91;
  if (v94 < 2)
  {
    v95 = 1;
    goto LABEL_243;
  }

  v1049 = *v91;
  v1080 = v92;
  v1155 = v63;
  v1188 = v90;
  v1264 = v61;
  v1299 = v88;
  v1426 = v57;
  v1463 = v86;
  v1581 = v84;
  v1661 = v52;
  v1702 = v82;
  v1784 = v50;
  v1827 = v80;
  v1892 = v76;
  v1939 = v74;
  v2016 = v72;
  v1376 = v59;
  v1542 = v55;
  v2227 = v25;
  v2352 = v27;
  v659 = v2592;
  v660 = v2495;
  v661 = v2589;
  v662 = v2494;
  v663 = v2493;
  v664 = v2492;
  v665 = v2417;
  v666 = a1;
LABEL_625:
  LOBYTE(v2592) = v659;
  v2492 = v664;
  v2493 = v663;
  v2589 = v661;
  v2494 = v662;
  v2495 = v660;
  v2417 = v665;
  IPC::Decoder::markInvalid(v666);
  a1 = v666;
  v95 = 0;
  v78 = *(v666 + 1);
  v93 = *(v666 + 2);
  v77 = *v666;
  v25 = v2227;
  v27 = v2352;
  v50 = v1784;
  v80 = v1827;
  v55 = v1542;
  v84 = v1581;
  v52 = v1661;
  v82 = v1702;
  v59 = v1376;
  v57 = v1426;
  v61 = v1264;
  v88 = v1299;
  v63 = v1155;
  v90 = v1188;
  v74 = v1939;
  v72 = v2016;
  v76 = v1892;
  v86 = v1463;
  v94 = v1049;
  v92 = v1080;
LABEL_243:
  if (v78 <= &v93[-v77])
  {
    v2133 = a1;
    v2228 = v25;
    v2353 = v27;
    v667 = v50;
    v668 = v52;
    v669 = v63;
    v1940 = v74;
    v2017 = v72;
    v1828 = v80;
    v1703 = v82;
    v1582 = v84;
    v1464 = v86;
    v1300 = v88;
    v1189 = v90;
    v1081 = v92;
    IPC::Decoder::markInvalid(a1);
    v92 = v1081;
    v90 = v1189;
    v88 = v1300;
    v86 = v1464;
    v84 = v1582;
    v82 = v1703;
    v80 = v1828;
    v74 = v1940;
    v72 = v2017;
    v63 = v669;
    v52 = v668;
    v50 = v667;
    v25 = v2228;
    v27 = v2353;
    a1 = v2133;
    goto LABEL_627;
  }

  v96 = v93 + 1;
  *(a1 + 2) = v93 + 1;
  if (!v93)
  {
LABEL_627:
    v1021 = v95;
    v1050 = v94;
    v1785 = v50;
    v1829 = v80;
    v1543 = v55;
    v1583 = v84;
    v1662 = v52;
    v1704 = v82;
    v1377 = v59;
    v1427 = v57;
    v1265 = v61;
    v1301 = v88;
    v1156 = v63;
    v1190 = v90;
    v1941 = v74;
    v2018 = v72;
    v1893 = v76;
    v1465 = v86;
    v1082 = v92;
    v2229 = v25;
    v2354 = v27;
    v670 = v2592;
    v671 = v2495;
    v672 = v2589;
    v673 = v2494;
    v674 = v2493;
    v675 = v2492;
    v676 = v2417;
    v677 = a1;
    IPC::Decoder::markInvalid(a1);
    v966 = 0;
    goto LABEL_628;
  }

  v97 = *v93;
  if (v97 < 2)
  {
    v2505 = 1;
    goto LABEL_247;
  }

  v966 = *v93;
  v1021 = v95;
  v1050 = v94;
  v1082 = v92;
  v1156 = v63;
  v1190 = v90;
  v1265 = v61;
  v1301 = v88;
  v1427 = v57;
  v1465 = v86;
  v1583 = v84;
  v1662 = v52;
  v1704 = v82;
  v1785 = v50;
  v1829 = v80;
  v1893 = v76;
  v1941 = v74;
  v2018 = v72;
  v1377 = v59;
  v1543 = v55;
  v2229 = v25;
  v2354 = v27;
  v670 = v2592;
  v671 = v2495;
  v672 = v2589;
  v673 = v2494;
  v674 = v2493;
  v675 = v2492;
  v676 = v2417;
  v677 = a1;
LABEL_628:
  LOBYTE(v2592) = v670;
  v2492 = v675;
  v2493 = v674;
  v2589 = v672;
  v2494 = v673;
  v2495 = v671;
  v2417 = v676;
  IPC::Decoder::markInvalid(v677);
  a1 = v677;
  v2505 = 0;
  v78 = *(v677 + 1);
  v96 = *(v677 + 2);
  v77 = *v677;
  v25 = v2229;
  v27 = v2354;
  v50 = v1785;
  v80 = v1829;
  v55 = v1543;
  v84 = v1583;
  v52 = v1662;
  v82 = v1704;
  v59 = v1377;
  v57 = v1427;
  v61 = v1265;
  v88 = v1301;
  v63 = v1156;
  v90 = v1190;
  v74 = v1941;
  v72 = v2018;
  v76 = v1893;
  v86 = v1465;
  v94 = v1050;
  v92 = v1082;
  v97 = v966;
  v95 = v1021;
LABEL_247:
  if (v78 <= &v96[-v77])
  {
    v2134 = a1;
    v2230 = v25;
    v2355 = v27;
    v678 = v50;
    v679 = v52;
    v680 = v63;
    v1942 = v74;
    v2019 = v72;
    v1830 = v80;
    v1705 = v82;
    v1584 = v84;
    v1466 = v86;
    v1302 = v88;
    v1191 = v90;
    v1083 = v92;
    v967 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v967;
    v92 = v1083;
    v90 = v1191;
    v88 = v1302;
    v86 = v1466;
    v84 = v1584;
    v82 = v1705;
    v80 = v1830;
    v74 = v1942;
    v72 = v2019;
    v63 = v680;
    v52 = v679;
    v50 = v678;
    v25 = v2230;
    v27 = v2355;
    a1 = v2134;
    goto LABEL_630;
  }

  v98 = v96 + 1;
  *(a1 + 2) = v96 + 1;
  if (!v96)
  {
LABEL_630:
    v968 = v97;
    v1022 = v95;
    v1786 = v50;
    v1831 = v80;
    v1544 = v55;
    v1585 = v84;
    v1663 = v52;
    v1706 = v82;
    v1378 = v59;
    v1428 = v57;
    v1266 = v61;
    v1303 = v88;
    v1157 = v63;
    v1192 = v90;
    v1943 = v74;
    v2020 = v72;
    v1894 = v76;
    v1467 = v86;
    v1051 = v94;
    v1084 = v92;
    v2231 = v25;
    v2356 = v27;
    v681 = v2592;
    v682 = v2495;
    v683 = v2589;
    v684 = v2494;
    v685 = v2493;
    v686 = v2492;
    v687 = v2417;
    v688 = a1;
    IPC::Decoder::markInvalid(a1);
    v2457 = 0;
    goto LABEL_631;
  }

  v2457 = *v96;
  if (v2457 < 2)
  {
    v2504 = 1;
    goto LABEL_251;
  }

  v968 = v97;
  v1022 = v95;
  v1051 = v94;
  v1084 = v92;
  v1157 = v63;
  v1192 = v90;
  v1266 = v61;
  v1303 = v88;
  v1428 = v57;
  v1467 = v86;
  v1585 = v84;
  v1663 = v52;
  v1706 = v82;
  v1786 = v50;
  v1831 = v80;
  v1894 = v76;
  v1943 = v74;
  v2020 = v72;
  v1378 = v59;
  v1544 = v55;
  v2231 = v25;
  v2356 = v27;
  v681 = v2592;
  v682 = v2495;
  v683 = v2589;
  v684 = v2494;
  v685 = v2493;
  v686 = v2492;
  v687 = v2417;
  v688 = a1;
LABEL_631:
  LOBYTE(v2592) = v681;
  v2492 = v686;
  v2493 = v685;
  v2589 = v683;
  v2494 = v684;
  v2495 = v682;
  v2417 = v687;
  IPC::Decoder::markInvalid(v688);
  a1 = v688;
  v2504 = 0;
  v78 = *(v688 + 1);
  v98 = *(v688 + 2);
  v77 = *v688;
  v25 = v2231;
  v27 = v2356;
  v50 = v1786;
  v80 = v1831;
  v55 = v1544;
  v84 = v1585;
  v52 = v1663;
  v82 = v1706;
  v59 = v1378;
  v57 = v1428;
  v61 = v1266;
  v88 = v1303;
  v63 = v1157;
  v90 = v1192;
  v74 = v1943;
  v72 = v2020;
  v76 = v1894;
  v86 = v1467;
  v94 = v1051;
  v92 = v1084;
  v97 = v968;
  v95 = v1022;
LABEL_251:
  if (v78 <= &v98[-v77])
  {
    v2135 = a1;
    v2232 = v25;
    v2357 = v27;
    v689 = v50;
    v690 = v52;
    v691 = v63;
    v1944 = v74;
    v2021 = v72;
    v1832 = v80;
    v1707 = v82;
    v1586 = v84;
    v1468 = v86;
    v1304 = v88;
    v1193 = v90;
    v1085 = v92;
    v969 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v969;
    v92 = v1085;
    v90 = v1193;
    v88 = v1304;
    v86 = v1468;
    v84 = v1586;
    v82 = v1707;
    v80 = v1832;
    v74 = v1944;
    v72 = v2021;
    v63 = v691;
    v52 = v690;
    v50 = v689;
    v25 = v2232;
    v27 = v2357;
    a1 = v2135;
    goto LABEL_633;
  }

  v99 = v98 + 1;
  *(a1 + 2) = v98 + 1;
  if (!v98)
  {
LABEL_633:
    v970 = v97;
    v1023 = v95;
    v1787 = v50;
    v1833 = v80;
    v1545 = v55;
    v1587 = v84;
    v1664 = v52;
    v1708 = v82;
    v1379 = v59;
    v1429 = v57;
    v1267 = v61;
    v1305 = v88;
    v1158 = v63;
    v1194 = v90;
    v1945 = v74;
    v2022 = v72;
    v1895 = v76;
    v1469 = v86;
    v1052 = v94;
    v1086 = v92;
    v2233 = v25;
    v2358 = v27;
    v692 = v2592;
    v693 = v2495;
    v694 = v2589;
    v695 = v2494;
    v696 = v2493;
    v697 = v2492;
    v698 = v2417;
    v699 = a1;
    IPC::Decoder::markInvalid(a1);
    v2456 = 0;
    goto LABEL_634;
  }

  v2456 = *v98;
  if (v2456 < 2)
  {
    v2503 = 1;
    goto LABEL_255;
  }

  v970 = v97;
  v1023 = v95;
  v1052 = v94;
  v1086 = v92;
  v1158 = v63;
  v1194 = v90;
  v1267 = v61;
  v1305 = v88;
  v1429 = v57;
  v1469 = v86;
  v1587 = v84;
  v1664 = v52;
  v1708 = v82;
  v1787 = v50;
  v1833 = v80;
  v1895 = v76;
  v1945 = v74;
  v2022 = v72;
  v1379 = v59;
  v1545 = v55;
  v2233 = v25;
  v2358 = v27;
  v692 = v2592;
  v693 = v2495;
  v694 = v2589;
  v695 = v2494;
  v696 = v2493;
  v697 = v2492;
  v698 = v2417;
  v699 = a1;
LABEL_634:
  LOBYTE(v2592) = v692;
  v2492 = v697;
  v2493 = v696;
  v2589 = v694;
  v2494 = v695;
  v2495 = v693;
  v2417 = v698;
  IPC::Decoder::markInvalid(v699);
  a1 = v699;
  v2503 = 0;
  v78 = *(v699 + 1);
  v99 = *(v699 + 2);
  v77 = *v699;
  v25 = v2233;
  v27 = v2358;
  v50 = v1787;
  v80 = v1833;
  v55 = v1545;
  v84 = v1587;
  v52 = v1664;
  v82 = v1708;
  v59 = v1379;
  v57 = v1429;
  v61 = v1267;
  v88 = v1305;
  v63 = v1158;
  v90 = v1194;
  v74 = v1945;
  v72 = v2022;
  v76 = v1895;
  v86 = v1469;
  v94 = v1052;
  v92 = v1086;
  v97 = v970;
  v95 = v1023;
LABEL_255:
  if (v78 <= &v99[-v77])
  {
    v2136 = a1;
    v2234 = v25;
    v2359 = v27;
    v700 = v50;
    v701 = v52;
    v702 = v63;
    v1946 = v74;
    v2023 = v72;
    v1834 = v80;
    v1709 = v82;
    v1588 = v84;
    v1470 = v86;
    v1306 = v88;
    v1195 = v90;
    v1087 = v92;
    v971 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v971;
    v92 = v1087;
    v90 = v1195;
    v88 = v1306;
    v86 = v1470;
    v84 = v1588;
    v82 = v1709;
    v80 = v1834;
    v74 = v1946;
    v72 = v2023;
    v63 = v702;
    v52 = v701;
    v50 = v700;
    v25 = v2234;
    v27 = v2359;
    a1 = v2136;
    goto LABEL_636;
  }

  v100 = v99 + 1;
  *(a1 + 2) = v99 + 1;
  if (!v99)
  {
LABEL_636:
    v972 = v97;
    v1024 = v95;
    v1788 = v50;
    v1835 = v80;
    v1546 = v55;
    v1589 = v84;
    v1665 = v52;
    v1710 = v82;
    v1380 = v59;
    v1430 = v57;
    v1268 = v61;
    v1307 = v88;
    v1159 = v63;
    v1196 = v90;
    v1947 = v74;
    v2024 = v72;
    v1896 = v76;
    v1471 = v86;
    v1053 = v94;
    v1088 = v92;
    v2235 = v25;
    v2360 = v27;
    v703 = v2592;
    v704 = v2495;
    v705 = v2589;
    v706 = v2494;
    v707 = v2493;
    v708 = v2492;
    v709 = v2417;
    v710 = a1;
    IPC::Decoder::markInvalid(a1);
    v2455 = 0;
    goto LABEL_637;
  }

  v2455 = *v99;
  if (v2455 < 2)
  {
    v2502 = 1;
    goto LABEL_259;
  }

  v972 = v97;
  v1024 = v95;
  v1053 = v94;
  v1088 = v92;
  v1159 = v63;
  v1196 = v90;
  v1268 = v61;
  v1307 = v88;
  v1430 = v57;
  v1471 = v86;
  v1589 = v84;
  v1665 = v52;
  v1710 = v82;
  v1788 = v50;
  v1835 = v80;
  v1896 = v76;
  v1947 = v74;
  v2024 = v72;
  v1380 = v59;
  v1546 = v55;
  v2235 = v25;
  v2360 = v27;
  v703 = v2592;
  v704 = v2495;
  v705 = v2589;
  v706 = v2494;
  v707 = v2493;
  v708 = v2492;
  v709 = v2417;
  v710 = a1;
LABEL_637:
  LOBYTE(v2592) = v703;
  v2492 = v708;
  v2493 = v707;
  v2589 = v705;
  v2494 = v706;
  v2495 = v704;
  v2417 = v709;
  IPC::Decoder::markInvalid(v710);
  a1 = v710;
  v2502 = 0;
  v78 = *(v710 + 1);
  v100 = *(v710 + 2);
  v77 = *v710;
  v25 = v2235;
  v27 = v2360;
  v50 = v1788;
  v80 = v1835;
  v55 = v1546;
  v84 = v1589;
  v52 = v1665;
  v82 = v1710;
  v59 = v1380;
  v57 = v1430;
  v61 = v1268;
  v88 = v1307;
  v63 = v1159;
  v90 = v1196;
  v74 = v1947;
  v72 = v2024;
  v76 = v1896;
  v86 = v1471;
  v94 = v1053;
  v92 = v1088;
  v97 = v972;
  v95 = v1024;
LABEL_259:
  if (v78 <= &v100[-v77])
  {
    v2137 = a1;
    v2236 = v25;
    v2361 = v27;
    v711 = v50;
    v712 = v52;
    v713 = v63;
    v1948 = v74;
    v2025 = v72;
    v1836 = v80;
    v1711 = v82;
    v1590 = v84;
    v1472 = v86;
    v1308 = v88;
    v1197 = v90;
    v1089 = v92;
    v973 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v973;
    v92 = v1089;
    v90 = v1197;
    v88 = v1308;
    v86 = v1472;
    v84 = v1590;
    v82 = v1711;
    v80 = v1836;
    v74 = v1948;
    v72 = v2025;
    v63 = v713;
    v52 = v712;
    v50 = v711;
    v25 = v2236;
    v27 = v2361;
    a1 = v2137;
    goto LABEL_639;
  }

  v101 = v100 + 1;
  *(a1 + 2) = v100 + 1;
  if (!v100)
  {
LABEL_639:
    v974 = v97;
    v1025 = v95;
    v1789 = v50;
    v1837 = v80;
    v1547 = v55;
    v1591 = v84;
    v1666 = v52;
    v1712 = v82;
    v1381 = v59;
    v1431 = v57;
    v1269 = v61;
    v1309 = v88;
    v1160 = v63;
    v1198 = v90;
    v1949 = v74;
    v2026 = v72;
    v1897 = v76;
    v1473 = v86;
    v1054 = v94;
    v1090 = v92;
    v2237 = v25;
    v2362 = v27;
    v714 = v2592;
    v715 = v2495;
    v716 = v2589;
    v717 = v2494;
    v718 = v2493;
    v719 = v2492;
    v720 = v2417;
    v721 = a1;
    IPC::Decoder::markInvalid(a1);
    v2454 = 0;
    goto LABEL_640;
  }

  v2454 = *v100;
  if (v2454 < 2)
  {
    v2501 = 1;
    goto LABEL_263;
  }

  v974 = v97;
  v1025 = v95;
  v1054 = v94;
  v1090 = v92;
  v1160 = v63;
  v1198 = v90;
  v1269 = v61;
  v1309 = v88;
  v1431 = v57;
  v1473 = v86;
  v1591 = v84;
  v1666 = v52;
  v1712 = v82;
  v1789 = v50;
  v1837 = v80;
  v1897 = v76;
  v1949 = v74;
  v2026 = v72;
  v1381 = v59;
  v1547 = v55;
  v2237 = v25;
  v2362 = v27;
  v714 = v2592;
  v715 = v2495;
  v716 = v2589;
  v717 = v2494;
  v718 = v2493;
  v719 = v2492;
  v720 = v2417;
  v721 = a1;
LABEL_640:
  LOBYTE(v2592) = v714;
  v2492 = v719;
  v2493 = v718;
  v2589 = v716;
  v2494 = v717;
  v2495 = v715;
  v2417 = v720;
  IPC::Decoder::markInvalid(v721);
  a1 = v721;
  v2501 = 0;
  v78 = *(v721 + 1);
  v101 = *(v721 + 2);
  v77 = *v721;
  v25 = v2237;
  v27 = v2362;
  v50 = v1789;
  v80 = v1837;
  v55 = v1547;
  v84 = v1591;
  v52 = v1666;
  v82 = v1712;
  v59 = v1381;
  v57 = v1431;
  v61 = v1269;
  v88 = v1309;
  v63 = v1160;
  v90 = v1198;
  v74 = v1949;
  v72 = v2026;
  v76 = v1897;
  v86 = v1473;
  v94 = v1054;
  v92 = v1090;
  v97 = v974;
  v95 = v1025;
LABEL_263:
  if (v78 <= &v101[-v77])
  {
    v2138 = a1;
    v2238 = v25;
    v2363 = v27;
    v722 = v50;
    v723 = v52;
    v724 = v63;
    v1950 = v74;
    v2027 = v72;
    v1838 = v80;
    v1713 = v82;
    v1592 = v84;
    v1474 = v86;
    v1310 = v88;
    v1199 = v90;
    v1091 = v92;
    v975 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v975;
    v92 = v1091;
    v90 = v1199;
    v88 = v1310;
    v86 = v1474;
    v84 = v1592;
    v82 = v1713;
    v80 = v1838;
    v74 = v1950;
    v72 = v2027;
    v63 = v724;
    v52 = v723;
    v50 = v722;
    v25 = v2238;
    v27 = v2363;
    a1 = v2138;
    goto LABEL_642;
  }

  v102 = v101 + 1;
  *(a1 + 2) = v101 + 1;
  if (!v101)
  {
LABEL_642:
    v976 = v97;
    v1026 = v95;
    v1790 = v50;
    v1839 = v80;
    v1548 = v55;
    v1593 = v84;
    v1667 = v52;
    v1714 = v82;
    v1382 = v59;
    v1432 = v57;
    v1270 = v61;
    v1311 = v88;
    v1161 = v63;
    v1200 = v90;
    v1951 = v74;
    v2028 = v72;
    v1898 = v76;
    v1475 = v86;
    v1055 = v94;
    v1092 = v92;
    v2239 = v25;
    v2364 = v27;
    v725 = v2592;
    v726 = v2495;
    v727 = v2589;
    v728 = v2494;
    v729 = v2493;
    v730 = v2492;
    v731 = v2417;
    v732 = a1;
    IPC::Decoder::markInvalid(a1);
    v2453 = 0;
    goto LABEL_643;
  }

  v2453 = *v101;
  if (v2453 < 2)
  {
    v2500 = 1;
    goto LABEL_267;
  }

  v976 = v97;
  v1026 = v95;
  v1055 = v94;
  v1092 = v92;
  v1161 = v63;
  v1200 = v90;
  v1270 = v61;
  v1311 = v88;
  v1432 = v57;
  v1475 = v86;
  v1593 = v84;
  v1667 = v52;
  v1714 = v82;
  v1790 = v50;
  v1839 = v80;
  v1898 = v76;
  v1951 = v74;
  v2028 = v72;
  v1382 = v59;
  v1548 = v55;
  v2239 = v25;
  v2364 = v27;
  v725 = v2592;
  v726 = v2495;
  v727 = v2589;
  v728 = v2494;
  v729 = v2493;
  v730 = v2492;
  v731 = v2417;
  v732 = a1;
LABEL_643:
  LOBYTE(v2592) = v725;
  v2492 = v730;
  v2493 = v729;
  v2589 = v727;
  v2494 = v728;
  v2495 = v726;
  v2417 = v731;
  IPC::Decoder::markInvalid(v732);
  a1 = v732;
  v2500 = 0;
  v78 = *(v732 + 1);
  v102 = *(v732 + 2);
  v77 = *v732;
  v25 = v2239;
  v27 = v2364;
  v50 = v1790;
  v80 = v1839;
  v55 = v1548;
  v84 = v1593;
  v52 = v1667;
  v82 = v1714;
  v59 = v1382;
  v57 = v1432;
  v61 = v1270;
  v88 = v1311;
  v63 = v1161;
  v90 = v1200;
  v74 = v1951;
  v72 = v2028;
  v76 = v1898;
  v86 = v1475;
  v94 = v1055;
  v92 = v1092;
  v97 = v976;
  v95 = v1026;
LABEL_267:
  if (v78 <= &v102[-v77])
  {
    v2139 = a1;
    v2240 = v25;
    v2365 = v27;
    v733 = v50;
    v734 = v52;
    v735 = v63;
    v1952 = v74;
    v2029 = v72;
    v1840 = v80;
    v1715 = v82;
    v1594 = v84;
    v1476 = v86;
    v1312 = v88;
    v1201 = v90;
    v1093 = v92;
    v977 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v977;
    v92 = v1093;
    v90 = v1201;
    v88 = v1312;
    v86 = v1476;
    v84 = v1594;
    v82 = v1715;
    v80 = v1840;
    v74 = v1952;
    v72 = v2029;
    v63 = v735;
    v52 = v734;
    v50 = v733;
    v25 = v2240;
    v27 = v2365;
    a1 = v2139;
    goto LABEL_645;
  }

  v103 = v102 + 1;
  *(a1 + 2) = v102 + 1;
  if (!v102)
  {
LABEL_645:
    v978 = v97;
    v1027 = v95;
    v1791 = v50;
    v1841 = v80;
    v1549 = v55;
    v1595 = v84;
    v1668 = v52;
    v1716 = v82;
    v1383 = v59;
    v1433 = v57;
    v1271 = v61;
    v1313 = v88;
    v1162 = v63;
    v1202 = v90;
    v1953 = v74;
    v2030 = v72;
    v1899 = v76;
    v1477 = v86;
    v1056 = v94;
    v1094 = v92;
    v2241 = v25;
    v2366 = v27;
    v736 = v2495;
    v737 = v2589;
    v738 = v2494;
    v739 = v2493;
    v740 = v2492;
    v741 = v2417;
    v742 = a1;
    IPC::Decoder::markInvalid(a1);
    v104 = 0;
    goto LABEL_646;
  }

  v104 = *v102;
  if (v104 < 2)
  {
    v105 = 1;
    goto LABEL_271;
  }

  v978 = v97;
  v1027 = v95;
  v1056 = v94;
  v1094 = v92;
  v1162 = v63;
  v1202 = v90;
  v1271 = v61;
  v1313 = v88;
  v1433 = v57;
  v1477 = v86;
  v1595 = v84;
  v1668 = v52;
  v1716 = v82;
  v1791 = v50;
  v1841 = v80;
  v1899 = v76;
  v1953 = v74;
  v2030 = v72;
  v1383 = v59;
  v1549 = v55;
  v2241 = v25;
  v2366 = v27;
  v736 = v2495;
  v737 = v2589;
  v738 = v2494;
  v739 = v2493;
  v740 = v2492;
  v741 = v2417;
  v742 = a1;
LABEL_646:
  v2492 = v740;
  v2493 = v739;
  v2589 = v737;
  v2494 = v738;
  v2495 = v736;
  v2417 = v741;
  IPC::Decoder::markInvalid(v742);
  a1 = v742;
  v105 = 0;
  v78 = *(v742 + 1);
  v103 = *(v742 + 2);
  v77 = *v742;
  v25 = v2241;
  v27 = v2366;
  v50 = v1791;
  v80 = v1841;
  v55 = v1549;
  v84 = v1595;
  v52 = v1668;
  v82 = v1716;
  v59 = v1383;
  v57 = v1433;
  v61 = v1271;
  v88 = v1313;
  v63 = v1162;
  v90 = v1202;
  v74 = v1953;
  v72 = v2030;
  v76 = v1899;
  v86 = v1477;
  v94 = v1056;
  v92 = v1094;
  v97 = v978;
  v95 = v1027;
LABEL_271:
  v2590 = v105;
  if (!v104)
  {
    v105 = 0;
  }

  v2415 = v105;
  if (v78 <= &v103[-v77])
  {
    v2140 = a1;
    v2242 = v25;
    v2367 = v27;
    v743 = v50;
    v744 = v52;
    v745 = v63;
    v1954 = v74;
    v2031 = v72;
    v1842 = v80;
    v1717 = v82;
    v1596 = v84;
    v1478 = v86;
    v1314 = v88;
    v1203 = v90;
    v1095 = v92;
    v979 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v979;
    v92 = v1095;
    v90 = v1203;
    v88 = v1314;
    v86 = v1478;
    v84 = v1596;
    v82 = v1717;
    v80 = v1842;
    v74 = v1954;
    v72 = v2031;
    v63 = v745;
    v52 = v744;
    v50 = v743;
    v25 = v2242;
    v27 = v2367;
    a1 = v2140;
    goto LABEL_648;
  }

  v106 = v103 + 1;
  *(a1 + 2) = v103 + 1;
  if (!v103)
  {
LABEL_648:
    v980 = v97;
    v1028 = v95;
    v1792 = v50;
    v1843 = v80;
    v1550 = v55;
    v1597 = v84;
    v1669 = v52;
    v1718 = v82;
    v1384 = v59;
    v1434 = v57;
    v1272 = v61;
    v1315 = v88;
    v1163 = v63;
    v1204 = v90;
    v1955 = v74;
    v2032 = v72;
    v1900 = v76;
    v1479 = v86;
    v1057 = v94;
    v1096 = v92;
    v2243 = v25;
    v2368 = v27;
    v746 = v2592;
    v747 = v2495;
    v748 = v2589;
    v749 = v2494;
    v750 = v2493;
    v751 = v2492;
    v752 = v2417;
    v753 = a1;
    IPC::Decoder::markInvalid(a1);
    v2437 = 0;
    goto LABEL_649;
  }

  v2437 = *v103;
  if (v2437 < 2)
  {
    v2452 = 1;
    goto LABEL_277;
  }

  v980 = v97;
  v1028 = v95;
  v1057 = v94;
  v1096 = v92;
  v1163 = v63;
  v1204 = v90;
  v1272 = v61;
  v1315 = v88;
  v1434 = v57;
  v1479 = v86;
  v1597 = v84;
  v1669 = v52;
  v1718 = v82;
  v1792 = v50;
  v1843 = v80;
  v1900 = v76;
  v1955 = v74;
  v2032 = v72;
  v1384 = v59;
  v1550 = v55;
  v2243 = v25;
  v2368 = v27;
  v746 = v2592;
  v747 = v2495;
  v748 = v2589;
  v749 = v2494;
  v750 = v2493;
  v751 = v2492;
  v752 = v2417;
  v753 = a1;
LABEL_649:
  LOBYTE(v2592) = v746;
  v2492 = v751;
  v2493 = v750;
  v2589 = v748;
  v2494 = v749;
  v2495 = v747;
  v2417 = v752;
  IPC::Decoder::markInvalid(v753);
  a1 = v753;
  v2452 = 0;
  v78 = *(v753 + 1);
  v106 = *(v753 + 2);
  v77 = *v753;
  v25 = v2243;
  v27 = v2368;
  v50 = v1792;
  v80 = v1843;
  v55 = v1550;
  v84 = v1597;
  v52 = v1669;
  v82 = v1718;
  v59 = v1384;
  v57 = v1434;
  v61 = v1272;
  v88 = v1315;
  v63 = v1163;
  v90 = v1204;
  v74 = v1955;
  v72 = v2032;
  v76 = v1900;
  v86 = v1479;
  v94 = v1057;
  v92 = v1096;
  v97 = v980;
  v95 = v1028;
LABEL_277:
  if (v78 <= &v106[-v77])
  {
    v2141 = a1;
    v2244 = v25;
    v2369 = v27;
    v754 = v50;
    v755 = v52;
    v756 = v63;
    v1956 = v74;
    v2033 = v72;
    v1844 = v80;
    v1719 = v82;
    v1598 = v84;
    v1480 = v86;
    v1316 = v88;
    v1205 = v90;
    v1097 = v92;
    v981 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v981;
    v92 = v1097;
    v90 = v1205;
    v88 = v1316;
    v86 = v1480;
    v84 = v1598;
    v82 = v1719;
    v80 = v1844;
    v74 = v1956;
    v72 = v2033;
    v63 = v756;
    v52 = v755;
    v50 = v754;
    v25 = v2244;
    v27 = v2369;
    a1 = v2141;
    goto LABEL_651;
  }

  v107 = v106 + 1;
  *(a1 + 2) = v106 + 1;
  if (!v106)
  {
LABEL_651:
    v982 = v97;
    v1029 = v95;
    v1793 = v50;
    v1845 = v80;
    v1551 = v55;
    v1599 = v84;
    v1670 = v52;
    v1720 = v82;
    v1385 = v59;
    v1435 = v57;
    v1273 = v61;
    v1317 = v88;
    v1164 = v63;
    v1206 = v90;
    v1957 = v74;
    v2034 = v72;
    v1901 = v76;
    v1481 = v86;
    v1058 = v94;
    v1098 = v92;
    v2245 = v25;
    v2370 = v27;
    v757 = v2592;
    v758 = v2495;
    v759 = v2589;
    v760 = v2494;
    v761 = v2493;
    v762 = v2492;
    v763 = v2417;
    v764 = a1;
    IPC::Decoder::markInvalid(a1);
    v2436 = 0;
    goto LABEL_652;
  }

  v2436 = *v106;
  if (v2436 < 2)
  {
    v2451 = 1;
    goto LABEL_281;
  }

  v982 = v97;
  v1029 = v95;
  v1058 = v94;
  v1098 = v92;
  v1164 = v63;
  v1206 = v90;
  v1273 = v61;
  v1317 = v88;
  v1435 = v57;
  v1481 = v86;
  v1599 = v84;
  v1670 = v52;
  v1720 = v82;
  v1793 = v50;
  v1845 = v80;
  v1901 = v76;
  v1957 = v74;
  v2034 = v72;
  v1385 = v59;
  v1551 = v55;
  v2245 = v25;
  v2370 = v27;
  v757 = v2592;
  v758 = v2495;
  v759 = v2589;
  v760 = v2494;
  v761 = v2493;
  v762 = v2492;
  v763 = v2417;
  v764 = a1;
LABEL_652:
  LOBYTE(v2592) = v757;
  v2492 = v762;
  v2493 = v761;
  v2589 = v759;
  v2494 = v760;
  v2495 = v758;
  v2417 = v763;
  IPC::Decoder::markInvalid(v764);
  a1 = v764;
  v2451 = 0;
  v78 = *(v764 + 1);
  v107 = *(v764 + 2);
  v77 = *v764;
  v25 = v2245;
  v27 = v2370;
  v50 = v1793;
  v80 = v1845;
  v55 = v1551;
  v84 = v1599;
  v52 = v1670;
  v82 = v1720;
  v59 = v1385;
  v57 = v1435;
  v61 = v1273;
  v88 = v1317;
  v63 = v1164;
  v90 = v1206;
  v74 = v1957;
  v72 = v2034;
  v76 = v1901;
  v86 = v1481;
  v94 = v1058;
  v92 = v1098;
  v97 = v982;
  v95 = v1029;
LABEL_281:
  if (v78 <= &v107[-v77])
  {
    v2142 = a1;
    v2246 = v25;
    v2371 = v27;
    v765 = v50;
    v766 = v52;
    v767 = v63;
    v1958 = v74;
    v2035 = v72;
    v1846 = v80;
    v1721 = v82;
    v1600 = v84;
    v1482 = v86;
    v1318 = v88;
    v1207 = v90;
    v1099 = v92;
    v983 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v983;
    v92 = v1099;
    v90 = v1207;
    v88 = v1318;
    v86 = v1482;
    v84 = v1600;
    v82 = v1721;
    v80 = v1846;
    v74 = v1958;
    v72 = v2035;
    v63 = v767;
    v52 = v766;
    v50 = v765;
    v25 = v2246;
    v27 = v2371;
    a1 = v2142;
    goto LABEL_654;
  }

  v108 = v107 + 1;
  *(a1 + 2) = v107 + 1;
  if (!v107)
  {
LABEL_654:
    v984 = v97;
    v1030 = v95;
    v1794 = v50;
    v1847 = v80;
    v1552 = v55;
    v1601 = v84;
    v1671 = v52;
    v1722 = v82;
    v1386 = v59;
    v1436 = v57;
    v1274 = v61;
    v1319 = v88;
    v1165 = v63;
    v1208 = v90;
    v1959 = v74;
    v2036 = v72;
    v1902 = v76;
    v1483 = v86;
    v1059 = v94;
    v1100 = v92;
    v2247 = v25;
    v2372 = v27;
    v768 = v2592;
    v769 = v2495;
    v770 = v2589;
    v771 = v2494;
    v772 = v2493;
    v773 = v2492;
    v774 = v2417;
    v775 = a1;
    IPC::Decoder::markInvalid(a1);
    v2435 = 0;
    goto LABEL_655;
  }

  v2435 = *v107;
  if (v2435 < 2)
  {
    v2450 = 1;
    goto LABEL_285;
  }

  v984 = v97;
  v1030 = v95;
  v1059 = v94;
  v1100 = v92;
  v1165 = v63;
  v1208 = v90;
  v1274 = v61;
  v1319 = v88;
  v1436 = v57;
  v1483 = v86;
  v1601 = v84;
  v1671 = v52;
  v1722 = v82;
  v1794 = v50;
  v1847 = v80;
  v1902 = v76;
  v1959 = v74;
  v2036 = v72;
  v1386 = v59;
  v1552 = v55;
  v2247 = v25;
  v2372 = v27;
  v768 = v2592;
  v769 = v2495;
  v770 = v2589;
  v771 = v2494;
  v772 = v2493;
  v773 = v2492;
  v774 = v2417;
  v775 = a1;
LABEL_655:
  LOBYTE(v2592) = v768;
  v2492 = v773;
  v2493 = v772;
  v2589 = v770;
  v2494 = v771;
  v2495 = v769;
  v2417 = v774;
  IPC::Decoder::markInvalid(v775);
  a1 = v775;
  v2450 = 0;
  v78 = *(v775 + 1);
  v108 = *(v775 + 2);
  v77 = *v775;
  v25 = v2247;
  v27 = v2372;
  v50 = v1794;
  v80 = v1847;
  v55 = v1552;
  v84 = v1601;
  v52 = v1671;
  v82 = v1722;
  v59 = v1386;
  v57 = v1436;
  v61 = v1274;
  v88 = v1319;
  v63 = v1165;
  v90 = v1208;
  v74 = v1959;
  v72 = v2036;
  v76 = v1902;
  v86 = v1483;
  v94 = v1059;
  v92 = v1100;
  v97 = v984;
  v95 = v1030;
LABEL_285:
  if (v78 <= &v108[-v77])
  {
    v2143 = a1;
    v2248 = v25;
    v2373 = v27;
    v776 = v50;
    v777 = v52;
    v778 = v63;
    v1960 = v74;
    v2037 = v72;
    v1848 = v80;
    v1723 = v82;
    v1602 = v84;
    v1484 = v86;
    v1320 = v88;
    v1209 = v90;
    v1101 = v92;
    v985 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v985;
    v92 = v1101;
    v90 = v1209;
    v88 = v1320;
    v86 = v1484;
    v84 = v1602;
    v82 = v1723;
    v80 = v1848;
    v74 = v1960;
    v72 = v2037;
    v63 = v778;
    v52 = v777;
    v50 = v776;
    v25 = v2248;
    v27 = v2373;
    a1 = v2143;
    goto LABEL_657;
  }

  v109 = v108 + 1;
  *(a1 + 2) = v108 + 1;
  if (!v108)
  {
LABEL_657:
    v986 = v97;
    v1031 = v95;
    v1795 = v50;
    v1849 = v80;
    v1553 = v55;
    v1603 = v84;
    v1672 = v52;
    v1724 = v82;
    v1387 = v59;
    v1437 = v57;
    v1275 = v61;
    v1321 = v88;
    v1166 = v63;
    v1210 = v90;
    v1961 = v74;
    v2038 = v72;
    v1903 = v76;
    v1485 = v86;
    v1060 = v94;
    v1102 = v92;
    v2249 = v25;
    v2374 = v27;
    v779 = v2592;
    v780 = v2495;
    v781 = v2589;
    v782 = v2494;
    v783 = v2493;
    v784 = v2492;
    v785 = v2417;
    v786 = a1;
    IPC::Decoder::markInvalid(a1);
    v2434 = 0;
    goto LABEL_658;
  }

  v2434 = *v108;
  if (v2434 < 2)
  {
    v2449 = 1;
    goto LABEL_289;
  }

  v986 = v97;
  v1031 = v95;
  v1060 = v94;
  v1102 = v92;
  v1166 = v63;
  v1210 = v90;
  v1275 = v61;
  v1321 = v88;
  v1437 = v57;
  v1485 = v86;
  v1603 = v84;
  v1672 = v52;
  v1724 = v82;
  v1795 = v50;
  v1849 = v80;
  v1903 = v76;
  v1961 = v74;
  v2038 = v72;
  v1387 = v59;
  v1553 = v55;
  v2249 = v25;
  v2374 = v27;
  v779 = v2592;
  v780 = v2495;
  v781 = v2589;
  v782 = v2494;
  v783 = v2493;
  v784 = v2492;
  v785 = v2417;
  v786 = a1;
LABEL_658:
  LOBYTE(v2592) = v779;
  v2492 = v784;
  v2493 = v783;
  v2589 = v781;
  v2494 = v782;
  v2495 = v780;
  v2417 = v785;
  IPC::Decoder::markInvalid(v786);
  a1 = v786;
  v2449 = 0;
  v78 = *(v786 + 1);
  v109 = *(v786 + 2);
  v77 = *v786;
  v25 = v2249;
  v27 = v2374;
  v50 = v1795;
  v80 = v1849;
  v55 = v1553;
  v84 = v1603;
  v52 = v1672;
  v82 = v1724;
  v59 = v1387;
  v57 = v1437;
  v61 = v1275;
  v88 = v1321;
  v63 = v1166;
  v90 = v1210;
  v74 = v1961;
  v72 = v2038;
  v76 = v1903;
  v86 = v1485;
  v94 = v1060;
  v92 = v1102;
  v97 = v986;
  v95 = v1031;
LABEL_289:
  if (v78 <= &v109[-v77])
  {
    v2144 = a1;
    v2250 = v25;
    v2375 = v27;
    v787 = v50;
    v788 = v52;
    v789 = v63;
    v1962 = v74;
    v2039 = v72;
    v1850 = v80;
    v1725 = v82;
    v1604 = v84;
    v1486 = v86;
    v1322 = v88;
    v1211 = v90;
    v1103 = v92;
    v987 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v987;
    v92 = v1103;
    v90 = v1211;
    v88 = v1322;
    v86 = v1486;
    v84 = v1604;
    v82 = v1725;
    v80 = v1850;
    v74 = v1962;
    v72 = v2039;
    v63 = v789;
    v52 = v788;
    v50 = v787;
    v25 = v2250;
    v27 = v2375;
    a1 = v2144;
    goto LABEL_660;
  }

  v110 = v109 + 1;
  *(a1 + 2) = v109 + 1;
  if (!v109)
  {
LABEL_660:
    v988 = v97;
    v1032 = v95;
    v1796 = v50;
    v1851 = v80;
    v1554 = v55;
    v1605 = v84;
    v1673 = v52;
    v1726 = v82;
    v1388 = v59;
    v1438 = v57;
    v1276 = v61;
    v1323 = v88;
    v1167 = v63;
    v1212 = v90;
    v1963 = v74;
    v2040 = v72;
    v1904 = v76;
    v1487 = v86;
    v1061 = v94;
    v1104 = v92;
    v2251 = v25;
    v2376 = v27;
    v790 = v2592;
    v791 = v2495;
    v792 = v2589;
    v793 = v2494;
    v794 = v2493;
    v795 = v2492;
    v796 = v2417;
    v797 = a1;
    IPC::Decoder::markInvalid(a1);
    v2433 = 0;
    goto LABEL_661;
  }

  v2433 = *v109;
  if (v2433 < 2)
  {
    v2448 = 1;
    goto LABEL_293;
  }

  v988 = v97;
  v1032 = v95;
  v1061 = v94;
  v1104 = v92;
  v1167 = v63;
  v1212 = v90;
  v1276 = v61;
  v1323 = v88;
  v1438 = v57;
  v1487 = v86;
  v1605 = v84;
  v1673 = v52;
  v1726 = v82;
  v1796 = v50;
  v1851 = v80;
  v1904 = v76;
  v1963 = v74;
  v2040 = v72;
  v1388 = v59;
  v1554 = v55;
  v2251 = v25;
  v2376 = v27;
  v790 = v2592;
  v791 = v2495;
  v792 = v2589;
  v793 = v2494;
  v794 = v2493;
  v795 = v2492;
  v796 = v2417;
  v797 = a1;
LABEL_661:
  LOBYTE(v2592) = v790;
  v2492 = v795;
  v2493 = v794;
  v2589 = v792;
  v2494 = v793;
  v2495 = v791;
  v2417 = v796;
  IPC::Decoder::markInvalid(v797);
  a1 = v797;
  v2448 = 0;
  v78 = *(v797 + 1);
  v110 = *(v797 + 2);
  v77 = *v797;
  v25 = v2251;
  v27 = v2376;
  v50 = v1796;
  v80 = v1851;
  v55 = v1554;
  v84 = v1605;
  v52 = v1673;
  v82 = v1726;
  v59 = v1388;
  v57 = v1438;
  v61 = v1276;
  v88 = v1323;
  v63 = v1167;
  v90 = v1212;
  v74 = v1963;
  v72 = v2040;
  v76 = v1904;
  v86 = v1487;
  v94 = v1061;
  v92 = v1104;
  v97 = v988;
  v95 = v1032;
LABEL_293:
  if (v78 <= &v110[-v77])
  {
    v2145 = a1;
    v2252 = v25;
    v2377 = v27;
    v798 = v50;
    v799 = v52;
    v800 = v63;
    v1964 = v74;
    v2041 = v72;
    v1852 = v80;
    v1727 = v82;
    v1606 = v84;
    v1488 = v86;
    v1324 = v88;
    v1213 = v90;
    v1105 = v92;
    v989 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v989;
    v92 = v1105;
    v90 = v1213;
    v88 = v1324;
    v86 = v1488;
    v84 = v1606;
    v82 = v1727;
    v80 = v1852;
    v74 = v1964;
    v72 = v2041;
    v63 = v800;
    v52 = v799;
    v50 = v798;
    v25 = v2252;
    v27 = v2377;
    a1 = v2145;
    goto LABEL_663;
  }

  v111 = v110 + 1;
  *(a1 + 2) = v110 + 1;
  if (!v110)
  {
LABEL_663:
    v990 = v97;
    v1033 = v95;
    v1797 = v50;
    v1853 = v80;
    v1555 = v55;
    v1607 = v84;
    v1674 = v52;
    v1728 = v82;
    v1389 = v59;
    v1439 = v57;
    v1277 = v61;
    v1325 = v88;
    v1168 = v63;
    v1214 = v90;
    v1965 = v74;
    v2042 = v72;
    v1905 = v76;
    v1489 = v86;
    v1062 = v94;
    v1106 = v92;
    v2253 = v25;
    v2378 = v27;
    v801 = v2592;
    v802 = v2495;
    v803 = v2589;
    v804 = v2494;
    v805 = v2493;
    v806 = v2492;
    v807 = v2417;
    v808 = a1;
    IPC::Decoder::markInvalid(a1);
    v2432 = 0;
    goto LABEL_664;
  }

  v2432 = *v110;
  if (v2432 < 2)
  {
    v2447 = 1;
    goto LABEL_297;
  }

  v990 = v97;
  v1033 = v95;
  v1062 = v94;
  v1106 = v92;
  v1168 = v63;
  v1214 = v90;
  v1277 = v61;
  v1325 = v88;
  v1439 = v57;
  v1489 = v86;
  v1607 = v84;
  v1674 = v52;
  v1728 = v82;
  v1797 = v50;
  v1853 = v80;
  v1905 = v76;
  v1965 = v74;
  v2042 = v72;
  v1389 = v59;
  v1555 = v55;
  v2253 = v25;
  v2378 = v27;
  v801 = v2592;
  v802 = v2495;
  v803 = v2589;
  v804 = v2494;
  v805 = v2493;
  v806 = v2492;
  v807 = v2417;
  v808 = a1;
LABEL_664:
  LOBYTE(v2592) = v801;
  v2492 = v806;
  v2493 = v805;
  v2589 = v803;
  v2494 = v804;
  v2495 = v802;
  v2417 = v807;
  IPC::Decoder::markInvalid(v808);
  a1 = v808;
  v2447 = 0;
  v78 = *(v808 + 1);
  v111 = *(v808 + 2);
  v77 = *v808;
  v25 = v2253;
  v27 = v2378;
  v50 = v1797;
  v80 = v1853;
  v55 = v1555;
  v84 = v1607;
  v52 = v1674;
  v82 = v1728;
  v59 = v1389;
  v57 = v1439;
  v61 = v1277;
  v88 = v1325;
  v63 = v1168;
  v90 = v1214;
  v74 = v1965;
  v72 = v2042;
  v76 = v1905;
  v86 = v1489;
  v94 = v1062;
  v92 = v1106;
  v97 = v990;
  v95 = v1033;
LABEL_297:
  if (v78 <= &v111[-v77])
  {
    v2146 = a1;
    v2254 = v25;
    v2379 = v27;
    v809 = v50;
    v810 = v52;
    v811 = v63;
    v1966 = v74;
    v2043 = v72;
    v1854 = v80;
    v1729 = v82;
    v1608 = v84;
    v1490 = v86;
    v1326 = v88;
    v1215 = v90;
    v1107 = v92;
    v991 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v991;
    v92 = v1107;
    v90 = v1215;
    v88 = v1326;
    v86 = v1490;
    v84 = v1608;
    v82 = v1729;
    v80 = v1854;
    v74 = v1966;
    v72 = v2043;
    v63 = v811;
    v52 = v810;
    v50 = v809;
    v25 = v2254;
    v27 = v2379;
    a1 = v2146;
    goto LABEL_666;
  }

  v112 = v111 + 1;
  *(a1 + 2) = v111 + 1;
  if (!v111)
  {
LABEL_666:
    v992 = v97;
    v1034 = v95;
    v1798 = v50;
    v1855 = v80;
    v1556 = v55;
    v1609 = v84;
    v1675 = v52;
    v1730 = v82;
    v1390 = v59;
    v1440 = v57;
    v1278 = v61;
    v1327 = v88;
    v1169 = v63;
    v1216 = v90;
    v1967 = v74;
    v2044 = v72;
    v1906 = v76;
    v1491 = v86;
    v1063 = v94;
    v1108 = v92;
    v2255 = v25;
    v2380 = v27;
    v812 = v2592;
    v813 = v2495;
    v814 = v2589;
    v815 = v2494;
    v816 = v2493;
    v817 = v2492;
    v818 = v2417;
    v819 = a1;
    IPC::Decoder::markInvalid(a1);
    v2431 = 0;
    goto LABEL_667;
  }

  v2431 = *v111;
  if (v2431 < 2)
  {
    v2446 = 1;
    goto LABEL_301;
  }

  v992 = v97;
  v1034 = v95;
  v1063 = v94;
  v1108 = v92;
  v1169 = v63;
  v1216 = v90;
  v1278 = v61;
  v1327 = v88;
  v1440 = v57;
  v1491 = v86;
  v1609 = v84;
  v1675 = v52;
  v1730 = v82;
  v1798 = v50;
  v1855 = v80;
  v1906 = v76;
  v1967 = v74;
  v2044 = v72;
  v1390 = v59;
  v1556 = v55;
  v2255 = v25;
  v2380 = v27;
  v812 = v2592;
  v813 = v2495;
  v814 = v2589;
  v815 = v2494;
  v816 = v2493;
  v817 = v2492;
  v818 = v2417;
  v819 = a1;
LABEL_667:
  LOBYTE(v2592) = v812;
  v2492 = v817;
  v2493 = v816;
  v2589 = v814;
  v2494 = v815;
  v2495 = v813;
  v2417 = v818;
  IPC::Decoder::markInvalid(v819);
  a1 = v819;
  v2446 = 0;
  v78 = *(v819 + 1);
  v112 = *(v819 + 2);
  v77 = *v819;
  v25 = v2255;
  v27 = v2380;
  v50 = v1798;
  v80 = v1855;
  v55 = v1556;
  v84 = v1609;
  v52 = v1675;
  v82 = v1730;
  v59 = v1390;
  v57 = v1440;
  v61 = v1278;
  v88 = v1327;
  v63 = v1169;
  v90 = v1216;
  v74 = v1967;
  v72 = v2044;
  v76 = v1906;
  v86 = v1491;
  v94 = v1063;
  v92 = v1108;
  v97 = v992;
  v95 = v1034;
LABEL_301:
  if (v78 <= &v112[-v77])
  {
    v2147 = a1;
    v2256 = v25;
    v2381 = v27;
    v820 = v50;
    v821 = v52;
    v822 = v63;
    v1968 = v74;
    v2045 = v72;
    v1856 = v80;
    v1731 = v82;
    v1610 = v84;
    v1492 = v86;
    v1328 = v88;
    v1217 = v90;
    v1109 = v92;
    v993 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v993;
    v92 = v1109;
    v90 = v1217;
    v88 = v1328;
    v86 = v1492;
    v84 = v1610;
    v82 = v1731;
    v80 = v1856;
    v74 = v1968;
    v72 = v2045;
    v63 = v822;
    v52 = v821;
    v50 = v820;
    v25 = v2256;
    v27 = v2381;
    a1 = v2147;
    goto LABEL_669;
  }

  v113 = v112 + 1;
  *(a1 + 2) = v112 + 1;
  if (!v112)
  {
LABEL_669:
    v994 = v97;
    v1035 = v95;
    v1799 = v50;
    v1857 = v80;
    v1557 = v55;
    v1611 = v84;
    v1676 = v52;
    v1732 = v82;
    v1391 = v59;
    v1441 = v57;
    v1279 = v61;
    v1329 = v88;
    v1170 = v63;
    v1218 = v90;
    v1969 = v74;
    v2046 = v72;
    v1907 = v76;
    v1493 = v86;
    v1064 = v94;
    v1110 = v92;
    v2257 = v25;
    v2382 = v27;
    v823 = v2592;
    v824 = v2495;
    v825 = v2589;
    v826 = v2494;
    v827 = v2493;
    v828 = v2492;
    v829 = v2417;
    v830 = a1;
    IPC::Decoder::markInvalid(a1);
    v2430 = 0;
    goto LABEL_670;
  }

  v2430 = *v112;
  if (v2430 < 2)
  {
    v2445 = 1;
    goto LABEL_305;
  }

  v994 = v97;
  v1035 = v95;
  v1064 = v94;
  v1110 = v92;
  v1170 = v63;
  v1218 = v90;
  v1279 = v61;
  v1329 = v88;
  v1441 = v57;
  v1493 = v86;
  v1611 = v84;
  v1676 = v52;
  v1732 = v82;
  v1799 = v50;
  v1857 = v80;
  v1907 = v76;
  v1969 = v74;
  v2046 = v72;
  v1391 = v59;
  v1557 = v55;
  v2257 = v25;
  v2382 = v27;
  v823 = v2592;
  v824 = v2495;
  v825 = v2589;
  v826 = v2494;
  v827 = v2493;
  v828 = v2492;
  v829 = v2417;
  v830 = a1;
LABEL_670:
  LOBYTE(v2592) = v823;
  v2492 = v828;
  v2493 = v827;
  v2589 = v825;
  v2494 = v826;
  v2495 = v824;
  v2417 = v829;
  IPC::Decoder::markInvalid(v830);
  a1 = v830;
  v2445 = 0;
  v78 = *(v830 + 1);
  v113 = *(v830 + 2);
  v77 = *v830;
  v25 = v2257;
  v27 = v2382;
  v50 = v1799;
  v80 = v1857;
  v55 = v1557;
  v84 = v1611;
  v52 = v1676;
  v82 = v1732;
  v59 = v1391;
  v57 = v1441;
  v61 = v1279;
  v88 = v1329;
  v63 = v1170;
  v90 = v1218;
  v74 = v1969;
  v72 = v2046;
  v76 = v1907;
  v86 = v1493;
  v94 = v1064;
  v92 = v1110;
  v97 = v994;
  v95 = v1035;
LABEL_305:
  if (v78 <= &v113[-v77])
  {
    v2148 = a1;
    v2258 = v25;
    v2383 = v27;
    v831 = v50;
    v832 = v52;
    v833 = v63;
    v1970 = v74;
    v2047 = v72;
    v1858 = v80;
    v1733 = v82;
    v1612 = v84;
    v1494 = v86;
    v1330 = v88;
    v1219 = v90;
    v1111 = v92;
    v995 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v995;
    v92 = v1111;
    v90 = v1219;
    v88 = v1330;
    v86 = v1494;
    v84 = v1612;
    v82 = v1733;
    v80 = v1858;
    v74 = v1970;
    v72 = v2047;
    v63 = v833;
    v52 = v832;
    v50 = v831;
    v25 = v2258;
    v27 = v2383;
    a1 = v2148;
    goto LABEL_672;
  }

  v114 = v113 + 1;
  *(a1 + 2) = v113 + 1;
  if (!v113)
  {
LABEL_672:
    v996 = v97;
    v1036 = v95;
    v1800 = v50;
    v1859 = v80;
    v1558 = v55;
    v1613 = v84;
    v1677 = v52;
    v1734 = v82;
    v1392 = v59;
    v1442 = v57;
    v1280 = v61;
    v1331 = v88;
    v1171 = v63;
    v1220 = v90;
    v1971 = v74;
    v2048 = v72;
    v1908 = v76;
    v1495 = v86;
    v1065 = v94;
    v1112 = v92;
    v2259 = v25;
    v2384 = v27;
    v834 = v2592;
    v835 = v2495;
    v836 = v2589;
    v837 = v2494;
    v838 = v2493;
    v839 = v2492;
    v840 = v2417;
    v841 = a1;
    IPC::Decoder::markInvalid(a1);
    v2429 = 0;
    goto LABEL_673;
  }

  v2429 = *v113;
  if (v2429 < 2)
  {
    v2444 = 1;
    goto LABEL_309;
  }

  v996 = v97;
  v1036 = v95;
  v1065 = v94;
  v1112 = v92;
  v1171 = v63;
  v1220 = v90;
  v1280 = v61;
  v1331 = v88;
  v1442 = v57;
  v1495 = v86;
  v1613 = v84;
  v1677 = v52;
  v1734 = v82;
  v1800 = v50;
  v1859 = v80;
  v1908 = v76;
  v1971 = v74;
  v2048 = v72;
  v1392 = v59;
  v1558 = v55;
  v2259 = v25;
  v2384 = v27;
  v834 = v2592;
  v835 = v2495;
  v836 = v2589;
  v837 = v2494;
  v838 = v2493;
  v839 = v2492;
  v840 = v2417;
  v841 = a1;
LABEL_673:
  LOBYTE(v2592) = v834;
  v2492 = v839;
  v2493 = v838;
  v2589 = v836;
  v2494 = v837;
  v2495 = v835;
  v2417 = v840;
  IPC::Decoder::markInvalid(v841);
  a1 = v841;
  v2444 = 0;
  v78 = *(v841 + 1);
  v114 = *(v841 + 2);
  v77 = *v841;
  v25 = v2259;
  v27 = v2384;
  v50 = v1800;
  v80 = v1859;
  v55 = v1558;
  v84 = v1613;
  v52 = v1677;
  v82 = v1734;
  v59 = v1392;
  v57 = v1442;
  v61 = v1280;
  v88 = v1331;
  v63 = v1171;
  v90 = v1220;
  v74 = v1971;
  v72 = v2048;
  v76 = v1908;
  v86 = v1495;
  v94 = v1065;
  v92 = v1112;
  v97 = v996;
  v95 = v1036;
LABEL_309:
  if (v78 <= &v114[-v77])
  {
    v2149 = a1;
    v2260 = v25;
    v2385 = v27;
    v842 = v50;
    v843 = v52;
    v844 = v63;
    v1972 = v74;
    v2049 = v72;
    v1860 = v80;
    v1735 = v82;
    v1614 = v84;
    v1496 = v86;
    v1332 = v88;
    v1221 = v90;
    v1113 = v92;
    v997 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v997;
    v92 = v1113;
    v90 = v1221;
    v88 = v1332;
    v86 = v1496;
    v84 = v1614;
    v82 = v1735;
    v80 = v1860;
    v74 = v1972;
    v72 = v2049;
    v63 = v844;
    v52 = v843;
    v50 = v842;
    v25 = v2260;
    v27 = v2385;
    a1 = v2149;
    goto LABEL_675;
  }

  v115 = v114 + 1;
  *(a1 + 2) = v114 + 1;
  if (!v114)
  {
LABEL_675:
    v998 = v97;
    v1037 = v95;
    v1801 = v50;
    v1861 = v80;
    v1559 = v55;
    v1615 = v84;
    v1678 = v52;
    v1736 = v82;
    v1393 = v59;
    v1443 = v57;
    v1281 = v61;
    v1333 = v88;
    v1172 = v63;
    v1222 = v90;
    v1973 = v74;
    v2050 = v72;
    v1909 = v76;
    v1497 = v86;
    v1066 = v94;
    v1114 = v92;
    v2261 = v25;
    v2386 = v27;
    v845 = v2592;
    v846 = v2495;
    v847 = v2589;
    v848 = v2494;
    v849 = v2493;
    v850 = v2492;
    v851 = v2417;
    v852 = a1;
    IPC::Decoder::markInvalid(a1);
    v2428 = 0;
    goto LABEL_676;
  }

  v2428 = *v114;
  if (v2428 < 2)
  {
    v2443 = 1;
    goto LABEL_313;
  }

  v998 = v97;
  v1037 = v95;
  v1066 = v94;
  v1114 = v92;
  v1172 = v63;
  v1222 = v90;
  v1281 = v61;
  v1333 = v88;
  v1443 = v57;
  v1497 = v86;
  v1615 = v84;
  v1678 = v52;
  v1736 = v82;
  v1801 = v50;
  v1861 = v80;
  v1909 = v76;
  v1973 = v74;
  v2050 = v72;
  v1393 = v59;
  v1559 = v55;
  v2261 = v25;
  v2386 = v27;
  v845 = v2592;
  v846 = v2495;
  v847 = v2589;
  v848 = v2494;
  v849 = v2493;
  v850 = v2492;
  v851 = v2417;
  v852 = a1;
LABEL_676:
  LOBYTE(v2592) = v845;
  v2492 = v850;
  v2493 = v849;
  v2589 = v847;
  v2494 = v848;
  v2495 = v846;
  v2417 = v851;
  IPC::Decoder::markInvalid(v852);
  a1 = v852;
  v2443 = 0;
  v78 = *(v852 + 1);
  v115 = *(v852 + 2);
  v77 = *v852;
  v25 = v2261;
  v27 = v2386;
  v50 = v1801;
  v80 = v1861;
  v55 = v1559;
  v84 = v1615;
  v52 = v1678;
  v82 = v1736;
  v59 = v1393;
  v57 = v1443;
  v61 = v1281;
  v88 = v1333;
  v63 = v1172;
  v90 = v1222;
  v74 = v1973;
  v72 = v2050;
  v76 = v1909;
  v86 = v1497;
  v94 = v1066;
  v92 = v1114;
  v97 = v998;
  v95 = v1037;
LABEL_313:
  if (v78 <= &v115[-v77])
  {
    v2150 = a1;
    v2262 = v25;
    v2387 = v27;
    v853 = v50;
    v854 = v52;
    v855 = v63;
    v1974 = v74;
    v2051 = v72;
    v1862 = v80;
    v1737 = v82;
    v1616 = v84;
    v1498 = v86;
    v1334 = v88;
    v1223 = v90;
    v1115 = v92;
    v999 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v999;
    v92 = v1115;
    v90 = v1223;
    v88 = v1334;
    v86 = v1498;
    v84 = v1616;
    v82 = v1737;
    v80 = v1862;
    v74 = v1974;
    v72 = v2051;
    v63 = v855;
    v52 = v854;
    v50 = v853;
    v25 = v2262;
    v27 = v2387;
    a1 = v2150;
    goto LABEL_678;
  }

  v116 = v115 + 1;
  *(a1 + 2) = v115 + 1;
  if (!v115)
  {
LABEL_678:
    v1000 = v97;
    v1038 = v95;
    v1802 = v50;
    v1863 = v80;
    v1560 = v55;
    v1617 = v84;
    v1679 = v52;
    v1738 = v82;
    v1394 = v59;
    v1444 = v57;
    v1282 = v61;
    v1335 = v88;
    v1173 = v63;
    v1224 = v90;
    v1975 = v74;
    v2052 = v72;
    v1910 = v76;
    v1499 = v86;
    v1067 = v94;
    v1116 = v92;
    v2263 = v25;
    v2388 = v27;
    v856 = v2592;
    v857 = v2495;
    v858 = v2589;
    v859 = v2494;
    v860 = v2493;
    v861 = v2492;
    v862 = v2417;
    v863 = a1;
    IPC::Decoder::markInvalid(a1);
    v2427 = 0;
    goto LABEL_679;
  }

  v2427 = *v115;
  if (v2427 < 2)
  {
    v2442 = 1;
    goto LABEL_317;
  }

  v1000 = v97;
  v1038 = v95;
  v1067 = v94;
  v1116 = v92;
  v1173 = v63;
  v1224 = v90;
  v1282 = v61;
  v1335 = v88;
  v1444 = v57;
  v1499 = v86;
  v1617 = v84;
  v1679 = v52;
  v1738 = v82;
  v1802 = v50;
  v1863 = v80;
  v1910 = v76;
  v1975 = v74;
  v2052 = v72;
  v1394 = v59;
  v1560 = v55;
  v2263 = v25;
  v2388 = v27;
  v856 = v2592;
  v857 = v2495;
  v858 = v2589;
  v859 = v2494;
  v860 = v2493;
  v861 = v2492;
  v862 = v2417;
  v863 = a1;
LABEL_679:
  LOBYTE(v2592) = v856;
  v2492 = v861;
  v2493 = v860;
  v2589 = v858;
  v2494 = v859;
  v2495 = v857;
  v2417 = v862;
  IPC::Decoder::markInvalid(v863);
  a1 = v863;
  v2442 = 0;
  v78 = *(v863 + 1);
  v116 = *(v863 + 2);
  v77 = *v863;
  v25 = v2263;
  v27 = v2388;
  v50 = v1802;
  v80 = v1863;
  v55 = v1560;
  v84 = v1617;
  v52 = v1679;
  v82 = v1738;
  v59 = v1394;
  v57 = v1444;
  v61 = v1282;
  v88 = v1335;
  v63 = v1173;
  v90 = v1224;
  v74 = v1975;
  v72 = v2052;
  v76 = v1910;
  v86 = v1499;
  v94 = v1067;
  v92 = v1116;
  v97 = v1000;
  v95 = v1038;
LABEL_317:
  if (v78 <= &v116[-v77])
  {
    v2151 = a1;
    v2264 = v25;
    v2389 = v27;
    v864 = v50;
    v865 = v52;
    v866 = v63;
    v1976 = v74;
    v2053 = v72;
    v1864 = v80;
    v1739 = v82;
    v1618 = v84;
    v1500 = v86;
    v1336 = v88;
    v1225 = v90;
    v1117 = v92;
    v1001 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v1001;
    v92 = v1117;
    v90 = v1225;
    v88 = v1336;
    v86 = v1500;
    v84 = v1618;
    v82 = v1739;
    v80 = v1864;
    v74 = v1976;
    v72 = v2053;
    v63 = v866;
    v52 = v865;
    v50 = v864;
    v25 = v2264;
    v27 = v2389;
    a1 = v2151;
    goto LABEL_681;
  }

  v117 = v116 + 1;
  *(a1 + 2) = v116 + 1;
  if (!v116)
  {
LABEL_681:
    v1002 = v97;
    v1039 = v95;
    v1803 = v50;
    v1865 = v80;
    v1561 = v55;
    v1619 = v84;
    v1680 = v52;
    v1740 = v82;
    v1395 = v59;
    v1445 = v57;
    v1283 = v61;
    v1337 = v88;
    v1174 = v63;
    v1226 = v90;
    v1977 = v74;
    v2054 = v72;
    v1911 = v76;
    v1501 = v86;
    v1068 = v94;
    v1118 = v92;
    v2265 = v25;
    v2390 = v27;
    v867 = v2592;
    v868 = v2495;
    v869 = v2589;
    v870 = v2494;
    v871 = v2493;
    v872 = v2492;
    v873 = v2417;
    v874 = a1;
    IPC::Decoder::markInvalid(a1);
    v2426 = 0;
    goto LABEL_682;
  }

  v2426 = *v116;
  if (v2426 < 2)
  {
    v2441 = 1;
    goto LABEL_321;
  }

  v1002 = v97;
  v1039 = v95;
  v1068 = v94;
  v1118 = v92;
  v1174 = v63;
  v1226 = v90;
  v1283 = v61;
  v1337 = v88;
  v1445 = v57;
  v1501 = v86;
  v1619 = v84;
  v1680 = v52;
  v1740 = v82;
  v1803 = v50;
  v1865 = v80;
  v1911 = v76;
  v1977 = v74;
  v2054 = v72;
  v1395 = v59;
  v1561 = v55;
  v2265 = v25;
  v2390 = v27;
  v867 = v2592;
  v868 = v2495;
  v869 = v2589;
  v870 = v2494;
  v871 = v2493;
  v872 = v2492;
  v873 = v2417;
  v874 = a1;
LABEL_682:
  LOBYTE(v2592) = v867;
  v2492 = v872;
  v2493 = v871;
  v2589 = v869;
  v2494 = v870;
  v2495 = v868;
  v2417 = v873;
  IPC::Decoder::markInvalid(v874);
  a1 = v874;
  v2441 = 0;
  v78 = *(v874 + 1);
  v117 = *(v874 + 2);
  v77 = *v874;
  v25 = v2265;
  v27 = v2390;
  v50 = v1803;
  v80 = v1865;
  v55 = v1561;
  v84 = v1619;
  v52 = v1680;
  v82 = v1740;
  v59 = v1395;
  v57 = v1445;
  v61 = v1283;
  v88 = v1337;
  v63 = v1174;
  v90 = v1226;
  v74 = v1977;
  v72 = v2054;
  v76 = v1911;
  v86 = v1501;
  v94 = v1068;
  v92 = v1118;
  v97 = v1002;
  v95 = v1039;
LABEL_321:
  if (v78 <= &v117[-v77])
  {
    v2152 = a1;
    v2266 = v25;
    v2391 = v27;
    v875 = v50;
    v876 = v52;
    v877 = v63;
    v1978 = v74;
    v2055 = v72;
    v1866 = v80;
    v1741 = v82;
    v1620 = v84;
    v1502 = v86;
    v1338 = v88;
    v1227 = v90;
    v1119 = v92;
    v1003 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v1003;
    v92 = v1119;
    v90 = v1227;
    v88 = v1338;
    v86 = v1502;
    v84 = v1620;
    v82 = v1741;
    v80 = v1866;
    v74 = v1978;
    v72 = v2055;
    v63 = v877;
    v52 = v876;
    v50 = v875;
    v25 = v2266;
    v27 = v2391;
    a1 = v2152;
    goto LABEL_684;
  }

  v118 = v117 + 1;
  *(a1 + 2) = v117 + 1;
  if (!v117)
  {
LABEL_684:
    v1004 = v97;
    v1040 = v95;
    v1804 = v50;
    v1867 = v80;
    v1562 = v55;
    v1621 = v84;
    v1681 = v52;
    v1742 = v82;
    v1396 = v59;
    v1446 = v57;
    v1284 = v61;
    v1339 = v88;
    v1175 = v63;
    v1228 = v90;
    v1979 = v74;
    v2056 = v72;
    v1912 = v76;
    v1503 = v86;
    v1069 = v94;
    v1120 = v92;
    v2267 = v25;
    v2392 = v27;
    v878 = v2592;
    v879 = v2495;
    v880 = v2589;
    v881 = v2494;
    v882 = v2493;
    v883 = v2492;
    v884 = v2417;
    v885 = a1;
    IPC::Decoder::markInvalid(a1);
    v2425 = 0;
    goto LABEL_685;
  }

  v2425 = *v117;
  if (v2425 < 2)
  {
    v2440 = 1;
    goto LABEL_325;
  }

  v1004 = v97;
  v1040 = v95;
  v1069 = v94;
  v1120 = v92;
  v1175 = v63;
  v1228 = v90;
  v1284 = v61;
  v1339 = v88;
  v1446 = v57;
  v1503 = v86;
  v1621 = v84;
  v1681 = v52;
  v1742 = v82;
  v1804 = v50;
  v1867 = v80;
  v1912 = v76;
  v1979 = v74;
  v2056 = v72;
  v1396 = v59;
  v1562 = v55;
  v2267 = v25;
  v2392 = v27;
  v878 = v2592;
  v879 = v2495;
  v880 = v2589;
  v881 = v2494;
  v882 = v2493;
  v883 = v2492;
  v884 = v2417;
  v885 = a1;
LABEL_685:
  LOBYTE(v2592) = v878;
  v2492 = v883;
  v2493 = v882;
  v2589 = v880;
  v2494 = v881;
  v2495 = v879;
  v2417 = v884;
  IPC::Decoder::markInvalid(v885);
  a1 = v885;
  v2440 = 0;
  v78 = *(v885 + 1);
  v118 = *(v885 + 2);
  v77 = *v885;
  v25 = v2267;
  v27 = v2392;
  v50 = v1804;
  v80 = v1867;
  v55 = v1562;
  v84 = v1621;
  v52 = v1681;
  v82 = v1742;
  v59 = v1396;
  v57 = v1446;
  v61 = v1284;
  v88 = v1339;
  v63 = v1175;
  v90 = v1228;
  v74 = v1979;
  v72 = v2056;
  v76 = v1912;
  v86 = v1503;
  v94 = v1069;
  v92 = v1120;
  v97 = v1004;
  v95 = v1040;
LABEL_325:
  if (v78 <= &v118[-v77])
  {
    v2153 = a1;
    v2268 = v25;
    v2393 = v27;
    v886 = v50;
    v887 = v52;
    v888 = v63;
    v1980 = v74;
    v2057 = v72;
    v1868 = v80;
    v1743 = v82;
    v1622 = v84;
    v1504 = v86;
    v1340 = v88;
    v1229 = v90;
    v1121 = v92;
    v1005 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v1005;
    v92 = v1121;
    v90 = v1229;
    v88 = v1340;
    v86 = v1504;
    v84 = v1622;
    v82 = v1743;
    v80 = v1868;
    v74 = v1980;
    v72 = v2057;
    v63 = v888;
    v52 = v887;
    v50 = v886;
    v25 = v2268;
    v27 = v2393;
    a1 = v2153;
    goto LABEL_687;
  }

  v119 = v118 + 1;
  *(a1 + 2) = v118 + 1;
  if (!v118)
  {
LABEL_687:
    v1006 = v97;
    v1041 = v95;
    v1805 = v50;
    v1869 = v80;
    v1563 = v55;
    v1623 = v84;
    v1682 = v52;
    v1744 = v82;
    v1397 = v59;
    v1447 = v57;
    v1285 = v61;
    v1341 = v88;
    v1176 = v63;
    v1230 = v90;
    v1981 = v74;
    v2058 = v72;
    v1913 = v76;
    v1505 = v86;
    v1070 = v94;
    v1122 = v92;
    v2269 = v25;
    v2394 = v27;
    v889 = v2592;
    v890 = v2495;
    v891 = v2589;
    v892 = v2494;
    v893 = v2493;
    v894 = v2492;
    v895 = v2417;
    v896 = a1;
    IPC::Decoder::markInvalid(a1);
    v2424 = 0;
    goto LABEL_688;
  }

  v2424 = *v118;
  if (v2424 < 2)
  {
    v2439 = 1;
    goto LABEL_329;
  }

  v1006 = v97;
  v1041 = v95;
  v1070 = v94;
  v1122 = v92;
  v1176 = v63;
  v1230 = v90;
  v1285 = v61;
  v1341 = v88;
  v1447 = v57;
  v1505 = v86;
  v1623 = v84;
  v1682 = v52;
  v1744 = v82;
  v1805 = v50;
  v1869 = v80;
  v1913 = v76;
  v1981 = v74;
  v2058 = v72;
  v1397 = v59;
  v1563 = v55;
  v2269 = v25;
  v2394 = v27;
  v889 = v2592;
  v890 = v2495;
  v891 = v2589;
  v892 = v2494;
  v893 = v2493;
  v894 = v2492;
  v895 = v2417;
  v896 = a1;
LABEL_688:
  LOBYTE(v2592) = v889;
  v2492 = v894;
  v2493 = v893;
  v2589 = v891;
  v2494 = v892;
  v2495 = v890;
  v2417 = v895;
  IPC::Decoder::markInvalid(v896);
  a1 = v896;
  v2439 = 0;
  v78 = *(v896 + 1);
  v119 = *(v896 + 2);
  v77 = *v896;
  v25 = v2269;
  v27 = v2394;
  v50 = v1805;
  v80 = v1869;
  v55 = v1563;
  v84 = v1623;
  v52 = v1682;
  v82 = v1744;
  v59 = v1397;
  v57 = v1447;
  v61 = v1285;
  v88 = v1341;
  v63 = v1176;
  v90 = v1230;
  v74 = v1981;
  v72 = v2058;
  v76 = v1913;
  v86 = v1505;
  v94 = v1070;
  v92 = v1122;
  v97 = v1006;
  v95 = v1041;
LABEL_329:
  if (v78 <= &v119[-v77])
  {
    v2154 = a1;
    v2270 = v25;
    v2395 = v27;
    v897 = v50;
    v898 = v52;
    v899 = v63;
    v1982 = v74;
    v2059 = v72;
    v1870 = v80;
    v1745 = v82;
    v1624 = v84;
    v1506 = v86;
    v1342 = v88;
    v1231 = v90;
    v1123 = v92;
    v1007 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v1007;
    v92 = v1123;
    v90 = v1231;
    v88 = v1342;
    v86 = v1506;
    v84 = v1624;
    v82 = v1745;
    v80 = v1870;
    v74 = v1982;
    v72 = v2059;
    v63 = v899;
    v52 = v898;
    v50 = v897;
    v25 = v2270;
    v27 = v2395;
    a1 = v2154;
    goto LABEL_690;
  }

  v120 = v119 + 1;
  *(a1 + 2) = v119 + 1;
  if (!v119)
  {
LABEL_690:
    v1008 = v97;
    v1042 = v95;
    v1806 = v50;
    v1871 = v80;
    v1564 = v55;
    v1625 = v84;
    v1683 = v52;
    v1746 = v82;
    v1398 = v59;
    v1448 = v57;
    v1286 = v61;
    v1343 = v88;
    v1177 = v63;
    v1232 = v90;
    v1983 = v74;
    v2060 = v72;
    v1914 = v76;
    v1507 = v86;
    v1071 = v94;
    v1124 = v92;
    v2271 = v25;
    v2396 = v27;
    v900 = v2495;
    v901 = v2589;
    v902 = v2494;
    v903 = v2493;
    v904 = v2492;
    v905 = v2417;
    v906 = a1;
    IPC::Decoder::markInvalid(a1);
    v2422 = 0;
    goto LABEL_691;
  }

  v2422 = *v119;
  if (v2422 < 2)
  {
    v2438 = 1;
    goto LABEL_333;
  }

  v1008 = v97;
  v1042 = v95;
  v1071 = v94;
  v1124 = v92;
  v1177 = v63;
  v1232 = v90;
  v1286 = v61;
  v1343 = v88;
  v1448 = v57;
  v1507 = v86;
  v1625 = v84;
  v1683 = v52;
  v1746 = v82;
  v1806 = v50;
  v1871 = v80;
  v1914 = v76;
  v1983 = v74;
  v2060 = v72;
  v1398 = v59;
  v1564 = v55;
  v2271 = v25;
  v2396 = v27;
  v900 = v2495;
  v901 = v2589;
  v902 = v2494;
  v903 = v2493;
  v904 = v2492;
  v905 = v2417;
  v906 = a1;
LABEL_691:
  v2492 = v904;
  v2493 = v903;
  v2589 = v901;
  v2494 = v902;
  v2495 = v900;
  v2417 = v905;
  IPC::Decoder::markInvalid(v906);
  a1 = v906;
  v2438 = 0;
  v78 = *(v906 + 1);
  v120 = *(v906 + 2);
  v77 = *v906;
  v25 = v2271;
  v27 = v2396;
  v50 = v1806;
  v80 = v1871;
  v55 = v1564;
  v84 = v1625;
  v52 = v1683;
  v82 = v1746;
  v59 = v1398;
  v57 = v1448;
  v61 = v1286;
  v88 = v1343;
  v63 = v1177;
  v90 = v1232;
  v74 = v1983;
  v72 = v2060;
  v76 = v1914;
  v86 = v1507;
  v94 = v1071;
  v92 = v1124;
  v97 = v1008;
  v95 = v1042;
LABEL_333:
  if (v78 <= &v120[-v77])
  {
    v2155 = a1;
    v2272 = v25;
    v2397 = v27;
    v907 = v50;
    v908 = v52;
    v909 = v63;
    v1984 = v74;
    v2061 = v72;
    v1872 = v80;
    v1747 = v82;
    v1626 = v84;
    v1508 = v86;
    v1344 = v88;
    v1233 = v90;
    v1125 = v92;
    v1009 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v1009;
    v92 = v1125;
    v90 = v1233;
    v88 = v1344;
    v86 = v1508;
    v84 = v1626;
    v82 = v1747;
    v80 = v1872;
    v74 = v1984;
    v72 = v2061;
    v63 = v909;
    v52 = v908;
    v50 = v907;
    v25 = v2272;
    v27 = v2397;
    a1 = v2155;
    goto LABEL_693;
  }

  v121 = v120 + 1;
  *(a1 + 2) = v120 + 1;
  if (!v120)
  {
LABEL_693:
    v1010 = v97;
    v1043 = v95;
    v1807 = v50;
    v1873 = v80;
    v1565 = v55;
    v1627 = v84;
    v1684 = v52;
    v1748 = v82;
    v1399 = v59;
    v1449 = v57;
    v1287 = v61;
    v1345 = v88;
    v1178 = v63;
    v1234 = v90;
    v1985 = v74;
    v2062 = v72;
    v1915 = v76;
    v1509 = v86;
    v1072 = v94;
    v1126 = v92;
    v2273 = v25;
    v2398 = v27;
    v910 = v2589;
    v911 = v2494;
    v912 = v2493;
    v913 = v2492;
    v914 = v2417;
    v915 = a1;
    IPC::Decoder::markInvalid(a1);
    v122 = 0;
    goto LABEL_694;
  }

  v122 = *v120;
  if (v122 < 2)
  {
    v123 = 1;
    goto LABEL_337;
  }

  v1010 = v97;
  v1043 = v95;
  v1072 = v94;
  v1126 = v92;
  v1178 = v63;
  v1234 = v90;
  v1287 = v61;
  v1345 = v88;
  v1449 = v57;
  v1509 = v86;
  v1627 = v84;
  v1684 = v52;
  v1748 = v82;
  v1807 = v50;
  v1873 = v80;
  v1915 = v76;
  v1985 = v74;
  v2062 = v72;
  v1399 = v59;
  v1565 = v55;
  v2273 = v25;
  v2398 = v27;
  v910 = v2589;
  v911 = v2494;
  v912 = v2493;
  v913 = v2492;
  v914 = v2417;
  v915 = a1;
LABEL_694:
  v2492 = v913;
  v2493 = v912;
  v2589 = v910;
  v2494 = v911;
  v2417 = v914;
  IPC::Decoder::markInvalid(v915);
  a1 = v915;
  v123 = 0;
  v78 = *(v915 + 1);
  v121 = *(v915 + 2);
  v77 = *v915;
  v25 = v2273;
  v27 = v2398;
  v50 = v1807;
  v80 = v1873;
  v55 = v1565;
  v84 = v1627;
  v52 = v1684;
  v82 = v1748;
  v59 = v1399;
  v57 = v1449;
  v61 = v1287;
  v88 = v1345;
  v63 = v1178;
  v90 = v1234;
  v74 = v1985;
  v72 = v2062;
  v76 = v1915;
  v86 = v1509;
  v94 = v1072;
  v92 = v1126;
  v97 = v1010;
  v95 = v1043;
LABEL_337:
  v2423 = v123;
  if (!v122)
  {
    v123 = 0;
  }

  v2414 = v123;
  if (v78 <= &v121[-v77])
  {
    v2156 = a1;
    v2274 = v25;
    v2399 = v27;
    v916 = v50;
    v917 = v52;
    v918 = v63;
    v1986 = v74;
    v2063 = v72;
    v1874 = v80;
    v1749 = v82;
    v1628 = v84;
    v1510 = v86;
    v1346 = v88;
    v1235 = v90;
    v1127 = v92;
    v1011 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v1011;
    v92 = v1127;
    v90 = v1235;
    v88 = v1346;
    v86 = v1510;
    v84 = v1628;
    v82 = v1749;
    v80 = v1874;
    v74 = v1986;
    v72 = v2063;
    v63 = v918;
    v52 = v917;
    v50 = v916;
    v25 = v2274;
    v27 = v2399;
    a1 = v2156;
    goto LABEL_696;
  }

  v124 = v121 + 1;
  *(a1 + 2) = v121 + 1;
  if (!v121)
  {
LABEL_696:
    v1012 = v97;
    v1044 = v95;
    v1808 = v50;
    v1875 = v80;
    v1566 = v55;
    v1629 = v84;
    v1685 = v52;
    v1750 = v82;
    v1400 = v59;
    v1450 = v57;
    v1288 = v61;
    v1347 = v88;
    v1179 = v63;
    v1236 = v90;
    v1987 = v74;
    v2064 = v72;
    v1916 = v76;
    v1511 = v86;
    v1073 = v94;
    v1128 = v92;
    v2275 = v25;
    v2400 = v27;
    v919 = v2495;
    v920 = v2589;
    v921 = v2494;
    v922 = v2493;
    v923 = v2492;
    v924 = v2417;
    v925 = a1;
    IPC::Decoder::markInvalid(a1);
    v2413 = 0;
    goto LABEL_697;
  }

  v2413 = *v121;
  if (v2413 < 2)
  {
    v2421 = 1;
    goto LABEL_343;
  }

  v1012 = v97;
  v1044 = v95;
  v1073 = v94;
  v1128 = v92;
  v1179 = v63;
  v1236 = v90;
  v1288 = v61;
  v1347 = v88;
  v1450 = v57;
  v1511 = v86;
  v1629 = v84;
  v1685 = v52;
  v1750 = v82;
  v1808 = v50;
  v1875 = v80;
  v1916 = v76;
  v1987 = v74;
  v2064 = v72;
  v1400 = v59;
  v1566 = v55;
  v2275 = v25;
  v2400 = v27;
  v919 = v2495;
  v920 = v2589;
  v921 = v2494;
  v922 = v2493;
  v923 = v2492;
  v924 = v2417;
  v925 = a1;
LABEL_697:
  v2492 = v923;
  v2493 = v922;
  v2589 = v920;
  v2494 = v921;
  v2495 = v919;
  v2417 = v924;
  IPC::Decoder::markInvalid(v925);
  a1 = v925;
  v2421 = 0;
  v78 = *(v925 + 1);
  v124 = *(v925 + 2);
  v77 = *v925;
  v25 = v2275;
  v27 = v2400;
  v50 = v1808;
  v80 = v1875;
  v55 = v1566;
  v84 = v1629;
  v52 = v1685;
  v82 = v1750;
  v59 = v1400;
  v57 = v1450;
  v61 = v1288;
  v88 = v1347;
  v63 = v1179;
  v90 = v1236;
  v74 = v1987;
  v72 = v2064;
  v76 = v1916;
  v86 = v1511;
  v94 = v1073;
  v92 = v1128;
  v97 = v1012;
  v95 = v1044;
LABEL_343:
  if (v78 <= &v124[-v77])
  {
    v2157 = a1;
    v2276 = v25;
    v2401 = v27;
    v926 = v50;
    v927 = v52;
    v928 = v63;
    v1988 = v74;
    v2065 = v72;
    v1876 = v80;
    v1751 = v82;
    v1630 = v84;
    v1512 = v86;
    v1348 = v88;
    v1237 = v90;
    v1129 = v92;
    v1013 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v1013;
    v92 = v1129;
    v90 = v1237;
    v88 = v1348;
    v86 = v1512;
    v84 = v1630;
    v82 = v1751;
    v80 = v1876;
    v74 = v1988;
    v72 = v2065;
    v63 = v928;
    v52 = v927;
    v50 = v926;
    v25 = v2276;
    v27 = v2401;
    a1 = v2157;
    goto LABEL_699;
  }

  v125 = v124 + 1;
  *(a1 + 2) = v124 + 1;
  if (!v124)
  {
LABEL_699:
    v1014 = v97;
    v1045 = v95;
    v1809 = v50;
    v1877 = v80;
    v1567 = v55;
    v1631 = v84;
    v1686 = v52;
    v1752 = v82;
    v1401 = v59;
    v1451 = v57;
    v1289 = v61;
    v1349 = v88;
    v1180 = v63;
    v1238 = v90;
    v1989 = v74;
    v2066 = v72;
    v1917 = v76;
    v1513 = v86;
    v1074 = v94;
    v1130 = v92;
    v2277 = v25;
    v2402 = v27;
    v929 = v2495;
    v930 = v2589;
    v931 = v2494;
    v932 = v2493;
    v933 = v2492;
    v934 = v2417;
    v935 = a1;
    IPC::Decoder::markInvalid(a1);
    v2412 = 0;
    goto LABEL_700;
  }

  v2412 = *v124;
  if (v2412 < 2)
  {
    v2420 = 1;
    goto LABEL_347;
  }

  v1014 = v97;
  v1045 = v95;
  v1074 = v94;
  v1130 = v92;
  v1180 = v63;
  v1238 = v90;
  v1289 = v61;
  v1349 = v88;
  v1451 = v57;
  v1513 = v86;
  v1631 = v84;
  v1686 = v52;
  v1752 = v82;
  v1809 = v50;
  v1877 = v80;
  v1917 = v76;
  v1989 = v74;
  v2066 = v72;
  v1401 = v59;
  v1567 = v55;
  v2277 = v25;
  v2402 = v27;
  v929 = v2495;
  v930 = v2589;
  v931 = v2494;
  v932 = v2493;
  v933 = v2492;
  v934 = v2417;
  v935 = a1;
LABEL_700:
  v2492 = v933;
  v2493 = v932;
  v2589 = v930;
  v2494 = v931;
  v2495 = v929;
  v2417 = v934;
  IPC::Decoder::markInvalid(v935);
  a1 = v935;
  v2420 = 0;
  v78 = *(v935 + 1);
  v125 = *(v935 + 2);
  v77 = *v935;
  v25 = v2277;
  v27 = v2402;
  v50 = v1809;
  v80 = v1877;
  v55 = v1567;
  v84 = v1631;
  v52 = v1686;
  v82 = v1752;
  v59 = v1401;
  v57 = v1451;
  v61 = v1289;
  v88 = v1349;
  v63 = v1180;
  v90 = v1238;
  v74 = v1989;
  v72 = v2066;
  v76 = v1917;
  v86 = v1513;
  v94 = v1074;
  v92 = v1130;
  v97 = v1014;
  v95 = v1045;
LABEL_347:
  if (v78 <= &v125[-v77])
  {
    v2158 = a1;
    v2278 = v25;
    v2403 = v27;
    v936 = v50;
    v937 = v52;
    v938 = v63;
    v1990 = v74;
    v2067 = v72;
    v1878 = v80;
    v1753 = v82;
    v1632 = v84;
    v1514 = v86;
    v1350 = v88;
    v1239 = v90;
    v1131 = v92;
    v1015 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v1015;
    v92 = v1131;
    v90 = v1239;
    v88 = v1350;
    v86 = v1514;
    v84 = v1632;
    v82 = v1753;
    v80 = v1878;
    v74 = v1990;
    v72 = v2067;
    v63 = v938;
    v52 = v937;
    v50 = v936;
    v25 = v2278;
    v27 = v2403;
    a1 = v2158;
    goto LABEL_702;
  }

  v126 = v125 + 1;
  *(a1 + 2) = v125 + 1;
  if (!v125)
  {
LABEL_702:
    v1016 = v97;
    v1046 = v95;
    v1810 = v50;
    v1879 = v80;
    v1568 = v55;
    v1633 = v84;
    v1687 = v52;
    v1754 = v82;
    v1402 = v59;
    v1452 = v57;
    v1290 = v61;
    v1351 = v88;
    v1181 = v63;
    v1240 = v90;
    v1991 = v74;
    v2068 = v72;
    v1918 = v76;
    v1515 = v86;
    v1075 = v94;
    v1132 = v92;
    v2279 = v25;
    v2404 = v27;
    v939 = v2495;
    v940 = v2589;
    v941 = v2494;
    v942 = v2493;
    v943 = v2492;
    v944 = v2417;
    v945 = a1;
    IPC::Decoder::markInvalid(a1);
    v2411 = 0;
    goto LABEL_703;
  }

  v2411 = *v125;
  if (v2411 < 2)
  {
    v2419 = 1;
    goto LABEL_351;
  }

  v1016 = v97;
  v1046 = v95;
  v1075 = v94;
  v1132 = v92;
  v1181 = v63;
  v1240 = v90;
  v1290 = v61;
  v1351 = v88;
  v1452 = v57;
  v1515 = v86;
  v1633 = v84;
  v1687 = v52;
  v1754 = v82;
  v1810 = v50;
  v1879 = v80;
  v1918 = v76;
  v1991 = v74;
  v2068 = v72;
  v1402 = v59;
  v1568 = v55;
  v2279 = v25;
  v2404 = v27;
  v939 = v2495;
  v940 = v2589;
  v941 = v2494;
  v942 = v2493;
  v943 = v2492;
  v944 = v2417;
  v945 = a1;
LABEL_703:
  v2492 = v943;
  v2493 = v942;
  v2589 = v940;
  v2494 = v941;
  v2495 = v939;
  v2417 = v944;
  IPC::Decoder::markInvalid(v945);
  a1 = v945;
  v2419 = 0;
  v78 = *(v945 + 1);
  v126 = *(v945 + 2);
  v77 = *v945;
  v25 = v2279;
  v27 = v2404;
  v50 = v1810;
  v80 = v1879;
  v55 = v1568;
  v84 = v1633;
  v52 = v1687;
  v82 = v1754;
  v59 = v1402;
  v57 = v1452;
  v61 = v1290;
  v88 = v1351;
  v63 = v1181;
  v90 = v1240;
  v74 = v1991;
  v72 = v2068;
  v76 = v1918;
  v86 = v1515;
  v94 = v1075;
  v92 = v1132;
  v97 = v1016;
  v95 = v1046;
LABEL_351:
  if (v78 <= &v126[-v77])
  {
    v2159 = a1;
    v2280 = v25;
    v2405 = v27;
    v946 = v50;
    v947 = v52;
    v948 = v63;
    v1992 = v74;
    v2069 = v72;
    v1880 = v80;
    v1755 = v82;
    v1634 = v84;
    v1516 = v86;
    v1352 = v88;
    v1241 = v90;
    v1133 = v92;
    v1017 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v1017;
    v92 = v1133;
    v90 = v1241;
    v88 = v1352;
    v86 = v1516;
    v84 = v1634;
    v82 = v1755;
    v80 = v1880;
    v74 = v1992;
    v72 = v2069;
    v63 = v948;
    v52 = v947;
    v50 = v946;
    v25 = v2280;
    v27 = v2405;
    a1 = v2159;
    goto LABEL_705;
  }

  v127 = v126 + 1;
  *(a1 + 2) = v126 + 1;
  if (!v126)
  {
LABEL_705:
    v1018 = v97;
    v1047 = v95;
    v1811 = v50;
    v1881 = v80;
    v1569 = v55;
    v1635 = v84;
    v1688 = v52;
    v1756 = v82;
    v1403 = v59;
    v1453 = v57;
    v1291 = v61;
    v1353 = v88;
    v1182 = v63;
    v1242 = v90;
    v1993 = v74;
    v2070 = v72;
    v1919 = v76;
    v1517 = v86;
    v1076 = v94;
    v1134 = v92;
    v2281 = v25;
    v2406 = v27;
    v949 = v2495;
    v950 = v2589;
    v951 = v2494;
    v952 = v2493;
    v953 = v2492;
    v954 = v2417;
    v955 = a1;
    IPC::Decoder::markInvalid(a1);
    v2410 = 0;
    goto LABEL_706;
  }

  v2410 = *v126;
  if (v2410 < 2)
  {
    v2418 = 1;
    goto LABEL_355;
  }

  v1018 = v97;
  v1047 = v95;
  v1076 = v94;
  v1134 = v92;
  v1182 = v63;
  v1242 = v90;
  v1291 = v61;
  v1353 = v88;
  v1453 = v57;
  v1517 = v86;
  v1635 = v84;
  v1688 = v52;
  v1756 = v82;
  v1811 = v50;
  v1881 = v80;
  v1919 = v76;
  v1993 = v74;
  v2070 = v72;
  v1403 = v59;
  v1569 = v55;
  v2281 = v25;
  v2406 = v27;
  v949 = v2495;
  v950 = v2589;
  v951 = v2494;
  v952 = v2493;
  v953 = v2492;
  v954 = v2417;
  v955 = a1;
LABEL_706:
  v2492 = v953;
  v2493 = v952;
  v2589 = v950;
  v2494 = v951;
  v2495 = v949;
  v2417 = v954;
  IPC::Decoder::markInvalid(v955);
  a1 = v955;
  v2418 = 0;
  v78 = *(v955 + 1);
  v127 = *(v955 + 2);
  v77 = *v955;
  v25 = v2281;
  v27 = v2406;
  v50 = v1811;
  v80 = v1881;
  v55 = v1569;
  v84 = v1635;
  v52 = v1688;
  v82 = v1756;
  v59 = v1403;
  v57 = v1453;
  v61 = v1291;
  v88 = v1353;
  v63 = v1182;
  v90 = v1242;
  v74 = v1993;
  v72 = v2070;
  v76 = v1919;
  v86 = v1517;
  v94 = v1076;
  v92 = v1134;
  v97 = v1018;
  v95 = v1047;
LABEL_355:
  if (v78 <= &v127[-v77])
  {
    v2160 = a1;
    v2282 = v25;
    v2407 = v27;
    v956 = v50;
    v957 = v52;
    v958 = v63;
    v1994 = v74;
    v2071 = v72;
    v1882 = v80;
    v1757 = v82;
    v1636 = v84;
    v1518 = v86;
    v1354 = v88;
    v1243 = v90;
    v1135 = v92;
    v1019 = v97;
    IPC::Decoder::markInvalid(a1);
    v97 = v1019;
    v92 = v1135;
    v90 = v1243;
    v88 = v1354;
    v86 = v1518;
    v84 = v1636;
    v82 = v1757;
    v80 = v1882;
    v74 = v1994;
    v72 = v2071;
    v63 = v958;
    v52 = v957;
    v50 = v956;
    v25 = v2282;
    v27 = v2407;
    a1 = v2160;
    goto LABEL_708;
  }

  *(a1 + 2) = v127 + 1;
  if (!v127)
  {
LABEL_708:
    v1020 = v97;
    v1048 = v95;
    v1812 = v50;
    v1883 = v80;
    v1570 = v55;
    v1637 = v84;
    v1689 = v52;
    v1758 = v82;
    v1404 = v59;
    v1454 = v57;
    v1292 = v61;
    v1355 = v88;
    v1183 = v63;
    v1244 = v90;
    v1995 = v74;
    v2072 = v72;
    v1920 = v76;
    v1519 = v86;
    v1077 = v94;
    v1136 = v92;
    v2283 = v25;
    v2408 = v27;
    v959 = v2495;
    v960 = v2589;
    v961 = v2494;
    v962 = v2493;
    v963 = v2492;
    v964 = v2417;
    v965 = a1;
    IPC::Decoder::markInvalid(a1);
    v2409 = 0;
    goto LABEL_709;
  }

  v128 = *v127;
  v129 = v2590;
  if (v128 < 2)
  {
    result = 1;
    goto LABEL_359;
  }

  v2409 = *v127;
  v1020 = v97;
  v1048 = v95;
  v1077 = v94;
  v1136 = v92;
  v1183 = v63;
  v1244 = v90;
  v1292 = v61;
  v1355 = v88;
  v1454 = v57;
  v1519 = v86;
  v1637 = v84;
  v1689 = v52;
  v1758 = v82;
  v1812 = v50;
  v1883 = v80;
  v1920 = v76;
  v1995 = v74;
  v2072 = v72;
  v1404 = v59;
  v1570 = v55;
  v2283 = v25;
  v2408 = v27;
  v959 = v2495;
  v960 = v2589;
  v961 = v2494;
  v962 = v2493;
  v963 = v2492;
  v964 = v2417;
  v965 = a1;
LABEL_709:
  v2492 = v963;
  v2493 = v962;
  v2589 = v960;
  v2494 = v961;
  v2495 = v959;
  v2417 = v964;
  IPC::Decoder::markInvalid(v965);
  result = 0;
  v77 = *v965;
  v25 = v2283;
  v27 = v2408;
  v50 = v1812;
  v80 = v1883;
  v55 = v1570;
  v84 = v1637;
  v52 = v1689;
  v82 = v1758;
  v59 = v1404;
  v57 = v1454;
  v61 = v1292;
  v88 = v1355;
  v63 = v1183;
  v90 = v1244;
  v74 = v1995;
  v72 = v2072;
  v76 = v1920;
  v86 = v1519;
  v94 = v1077;
  v92 = v1136;
  v97 = v1020;
  v95 = v1048;
  v129 = v2590;
  v128 = v2409;
LABEL_359:
  if (!v77)
  {
LABEL_450:
    v138 = 0;
    *a2 = 0;
    goto LABEL_448;
  }

  if ((v2589 & 1) == 0 || (v2592 & 1) == 0 || (v2588 & 1) == 0 || (v2587 & 1) == 0 || (v2585 & 1) == 0 || (v2583 & 1) == 0 || (v2582 & 1) == 0 || (v2581 & 1) == 0 || (v2579 & 1) == 0 || (v2577 & 1) == 0 || (v2575 & 1) == 0 || (v2573 & 1) == 0 || (v2571 & 1) == 0 || (v2569 & 1) == 0 || (v2567 & 1) == 0 || (v2565 & 1) == 0 || (v2563 & 1) == 0 || (v2561 & 1) == 0 || (v2559 & 1) == 0 || (v2557 & 1) == 0 || (v2555 & 1) == 0 || (v2553 & 1) == 0 || (v2551 & 1) == 0 || (v2549 & 1) == 0 || (v2547 & 1) == 0 || (v2545 & 1) == 0 || (v2543 & 1) == 0 || (v2541 & 1) == 0 || (v2539 & 1) == 0 || (v2537 & 1) == 0 || (v2536 & 1) == 0 || (v2534 & 1) == 0 || (v2532 & 1) == 0 || (v50 & 1) == 0 || (v52 & 1) == 0 || (v2531 & 1) == 0 || (v2530 & 1) == 0 || (v2528 & 1) == 0 || (v2527 & 1) == 0 || (v2525 & 1) == 0 || (v2523 & 1) == 0 || (v2522 & 1) == 0 || (v2521 & 1) == 0 || (v2520 & 1) == 0 || (v2519 & 1) == 0 || (v2518 & 1) == 0 || (v2517 & 1) == 0 || (v2516 & 1) == 0 || (v2515 & 1) == 0 || (v2514 & 1) == 0 || (v2513 & 1) == 0 || (v2512 & 1) == 0 || (v2511 & 1) == 0 || (v2510 & 1) == 0 || (v2509 & 1) == 0 || (v2508 & 1) == 0 || (v2507 & 1) == 0 || (v2506 & 1) == 0 || (v95 & 1) == 0 || (v2505 & 1) == 0 || (v2504 & 1) == 0 || (v2503 & 1) == 0 || (v2502 & 1) == 0 || (v2501 & 1) == 0 || (v2500 & 1) == 0 || (v2593 = result, result = v2453 != 0, v2586 = v97 != 0, v131 = v72 != 0, v132 = v61 != 0, v133 = v59 != 0, v134 = v57 != 0, v135 = v55 != 0, (v129 & 1) == 0) || (v2452 & 1) == 0 || (v2451 & 1) == 0 || (v2450 & 1) == 0 || (v2449 & 1) == 0 || (v2448 & 1) == 0 || (v2447 & 1) == 0 || (v2446 & 1) == 0 || (v2445 & 1) == 0 || (v2444 & 1) == 0 || (v2443 & 1) == 0 || (v2442 & 1) == 0 || (v2441 & 1) == 0 || (v2440 & 1) == 0 || (v2439 & 1) == 0 || (v2438 & 1) == 0 || (result = v2593, (v2423 & 1) == 0) || (v2421 & 1) == 0 || (v2420 & 1) == 0 || (v2419 & 1) == 0 || (v2418 & 1) == 0 || (v2593 & 1) == 0)
  {
    __break(1u);
    goto LABEL_450;
  }

  result = v2422 != 0;
  v136 = v2416 | (2 * (v2492 != 0)) | (4 * (v2493 != 0)) | (8 * (v2494 != 0)) | (16 * (v2495 != 0)) | (32 * (v2496 != 0)) | ((v2497 != 0) << 6) | ((v2499 != 0) << 7) | ((v2498 != 0) << 8) | ((v2458 != 0) << 9);
  v2524 = v90 != 0;
  v2526 = v94 != 0;
  v2529 = v2467 != 0;
  v2533 = v2468 != 0;
  v2535 = v2469 != 0;
  v2538 = v2459 != 0;
  v2540 = v2470 != 0;
  v2542 = v2471 != 0;
  v2544 = v2460 != 0;
  v2546 = v25 != 0;
  v2548 = v2472 != 0;
  v2550 = v27 != 0;
  v2552 = v2473 != 0;
  v2554 = v2461 != 0;
  v2556 = v63 != 0;
  v2558 = v2485 != 0;
  v2560 = v2486 != 0;
  v2562 = v2487 != 0;
  v2564 = v2488 != 0;
  v2566 = v2489 != 0;
  v2568 = v2490 != 0;
  v2570 = v2491 != 0;
  v2572 = v74 != 0;
  v2574 = v76 != 0;
  v2576 = v80 != 0;
  v2578 = v82 != 0;
  v2580 = v84 != 0;
  v2584 = v92 != 0;
  v137 = v136 | (v2538 << 10) | (v2544 << 11) | (v2546 << 12) | (v2550 << 13) | (v2554 << 14) | ((v2462 != 0) << 15) | ((v2463 != 0) << 16) | ((v2464 != 0) << 17) | ((v2465 != 0) << 18) | ((v2466 != 0) << 19) | (v2529 << 20) | (v2533 << 21) | (v2535 << 22) | (v2540 << 23) | (v2542 << 24) | (v2548 << 25) | (v2552 << 26) | ((v2474 != 0) << 27) | ((v2475 != 0) << 28) | ((v2477 != 0) << 29) | ((v2479 != 0) << 30) | ((v2481 != 0) << 31) | ((v2482 != 0) << 32) | ((v2483 != 0) << 33) | ((v2484 != 0) << 34) | (v135 << 35) | (v134 << 36) | (v133 << 37) | (v132 << 38) | (v2556 << 39) | (v2558 << 40) | (v2560 << 41) | (v2562 << 42) | (v2564 << 43) | (v2566 << 44) | (v2568 << 45) | (v2570 << 46) | (v131 << 47) | (v2572 << 48) | (v2574 << 49) | (v2576 << 50) | (v2578 << 51) | (v2580 << 52) | ((v86 != 0) << 53) | ((v88 != 0) << 54) | (v2524 << 55) | (v2584 << 56) | (v2526 << 57) | (v2586 << 58);
  *a2 = v2417;
  *(a2 + 8) = v137 | ((v2457 != 0) << 59) | ((v2456 != 0) << 60) | ((v2455 != 0) << 61) | ((v2454 != 0) << 62) | ((v2453 != 0) << 63);
  *(a2 + 16) = (v2415 | (2 * (v2437 != 0)) | (4 * (v2436 != 0)) | (8 * (v2435 != 0)) | (16 * (v2434 != 0)) | (32 * (v2433 != 0)) | ((v2432 != 0) << 6) | ((v2431 != 0) << 7)) | ((v2430 != 0) << 8) | ((v2429 != 0) << 9) | ((v2428 != 0) << 10) | ((v2427 != 0) << 11) | ((v2426 != 0) << 12) | ((v2425 != 0) << 13) | ((v2424 != 0) << 14) | (result << 15);
  *(a2 + 18) = v2414 | (2 * (v2413 != 0)) | (4 * (v2412 != 0)) | (8 * (v2411 != 0)) | (16 * (v2410 != 0)) | (32 * (v128 != 0));
  v138 = 1;
LABEL_448:
  *(a2 + 24) = v138;
  return result;
}