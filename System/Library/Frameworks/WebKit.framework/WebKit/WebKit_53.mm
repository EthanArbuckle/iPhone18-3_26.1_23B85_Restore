void sub_19D838E78(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>,0ul>(a1, a2, a3);
  }

  else
  {
    if (a2[24])
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *a2;

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v5);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 24) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<std::optional<WebCore::Cursor::CustomCursorIPCData>,void>::encode<IPC::Encoder,std::optional<WebCore::Cursor::CustomCursorIPCData>>(result, a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::Cursor::CustomCursorIPCData>,void>::encode<IPC::Encoder,std::optional<WebCore::Cursor::CustomCursorIPCData>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<WebCore::Cursor::CustomCursorIPCData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    *(result + 1) = 0;
    v15 = *(result + 3);
    if (v15)
    {
      if (!v4)
      {
        goto LABEL_25;
      }

LABEL_41:
      (*(*v15 + 16))(v15, v6);
LABEL_24:
      v4 = *(v2 + 1);
      goto LABEL_25;
    }

    goto LABEL_46;
  }

  v7 = v5 + 1;
  *(result + 2) = v5 + 1;
  if (!v5)
  {
LABEL_25:
    *v2 = 0;
    *(v2 + 1) = 0;
    result = *(v2 + 3);
    if (result && v4)
    {
      result = (*(*result + 16))(result);
    }

    goto LABEL_4;
  }

  if (*v5 < 2u)
  {
    if (*v5)
    {
      if (v4 <= &v7[-v6])
      {
        v21 = 0;
        v22 = 0;
        *result = 0;
        *(result + 1) = 0;
        v23 = *(result + 3);
        if (v23)
        {
          (*(*v23 + 16))(v23);
          v22 = *v2;
          v21 = *(v2 + 1);
        }
      }

      else
      {
        *(result + 2) = v5 + 2;
        if (v5 != -1)
        {
          if (*v7 >= 2u)
          {
LABEL_23:
            *v2 = 0;
            *(v2 + 1) = 0;
            v15 = *(v2 + 3);
            if (!v15 || !v4)
            {
              goto LABEL_24;
            }

            goto LABEL_41;
          }

          if (*v7)
          {
            IPC::ArgumentCoder<WebCore::Image,void>::decode(&v35, result);
            if ((v36 & 1) == 0)
            {
              v18 = *v2;
              v19 = *(v2 + 1);
              *v2 = 0;
              *(v2 + 1) = 0;
              v20 = *(v2 + 3);
              if (v20)
              {
                if (v19)
                {
                  (*(*v20 + 16))(v20, v18);
                }
              }
            }

            result = IPC::Decoder::decode<WebCore::IntPoint>(v2);
            v10 = v9;
            v33 = result;
            v34 = v9;
            v11 = v36;
            if (!*v2)
            {
LABEL_18:
              if ((v11 & 1) == 0)
              {
                goto LABEL_22;
              }

              result = v35;
              v35 = 0;
              if (!result)
              {
                goto LABEL_22;
              }

              if (*(result + 4) != 1)
              {
                --*(result + 4);
LABEL_22:
                v6 = *v2;
                v4 = *(v2 + 1);
                goto LABEL_23;
              }

LABEL_39:
              (*(*result + 8))(result);
              goto LABEL_22;
            }

            if ((v36 & 1) == 0)
            {
              goto LABEL_38;
            }

            v12 = (*(*v35 + 176))(v35, 0);
            v30 = 0;
            v31 = v12;
            v32 = v13;
            if ((v10 & 1) == 0)
            {
              goto LABEL_38;
            }

            WebCore::FloatPoint::FloatPoint(v29, &v33);
            result = WebCore::FloatRect::contains();
            if (*v2)
            {
              v14 = result;
            }

            else
            {
              v14 = 0;
            }

            v11 = v36;
            if ((v14 & 1) == 0)
            {
              goto LABEL_18;
            }

            if ((v36 & 1) == 0 || (v34 & 1) == 0)
            {
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v17 = v33;
            *a2 = v35;
            *(a2 + 8) = v17;
            v8 = 1;
            *(a2 + 16) = 1;
          }

          else
          {
            *a2 = 0;
            *(a2 + 16) = 0;
            v8 = 1;
          }

          *(a2 + 24) = 1;
          goto LABEL_37;
        }

        v21 = v4;
        v22 = v6;
      }

      *v2 = 0;
      *(v2 + 1) = 0;
      v24 = *(v2 + 3);
      if (!v24 || !v21)
      {
        v4 = 0;
        v6 = 0;
        goto LABEL_23;
      }

      (*(*v24 + 16))(v24, v22, v21);
      goto LABEL_22;
    }

    if (v4 <= &v7[-v6])
    {
      v25 = 0;
      v26 = 0;
      *result = 0;
      *(result + 1) = 0;
      v27 = *(result + 3);
      if (v27)
      {
        (*(*v27 + 16))(v27);
        v26 = *v2;
        v25 = *(v2 + 1);
      }
    }

    else
    {
      *(result + 2) = v5 + 2;
      if (v5 != -1)
      {
        v16 = *v7;
        if (v16 < 0x2D)
        {
          *a2 = v16;
          *(a2 + 24) = 0;
          v8 = 1;
          goto LABEL_37;
        }

        goto LABEL_25;
      }

      v25 = v4;
      v26 = v6;
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    v28 = *(v2 + 3);
    if (v28 && v25)
    {
      (*(*v28 + 16))(v28, v26, v25);
      goto LABEL_24;
    }

LABEL_46:
    v4 = 0;
    goto LABEL_25;
  }

LABEL_4:
  v8 = 0;
  *a2 = 0;
LABEL_37:
  *(a2 + 32) = v8;
  return result;
}

void sub_19D839364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, char a16)
{
  if (a16 == 1 && a15)
  {
    if (a15[4] == 1)
    {
      (*(*a15 + 8))(a15);
    }

    else
    {
      --a15[4];
    }
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::Length::AutoData,WebCore::Length::NormalData,WebCore::Length::RelativeData,WebCore::Length::PercentData,WebCore::Length::FixedData,WebCore::Length::IntrinsicData,WebCore::Length::MinIntrinsicData,WebCore::Length::MinContentData,WebCore::Length::MaxContentData,WebCore::Length::FillAvailableData,WebCore::Length::FitContentData,WebCore::Length::ContentData,WebCore::Length::UndefinedData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Length::AutoData,WebCore::Length::NormalData,WebCore::Length::RelativeData,WebCore::Length::PercentData,WebCore::Length::FixedData,WebCore::Length::IntrinsicData,WebCore::Length::MinIntrinsicData,WebCore::Length::MinContentData,WebCore::Length::MaxContentData,WebCore::Length::FillAvailableData,WebCore::Length::FitContentData,WebCore::Length::ContentData,WebCore::Length::UndefinedData>,0ul,1ul,2ul,3ul,4ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 12);
  if (a3 <= 7)
  {
    switch(a3)
    {
      case 5:
        if (v4 != 5)
        {
          goto LABEL_21;
        }

        break;
      case 6:
        if (v4 != 6)
        {
          goto LABEL_21;
        }

        break;
      case 7:
        if (v4 != 7)
        {
          goto LABEL_21;
        }

        break;
      default:
        goto LABEL_17;
    }
  }

  else
  {
    if (a3 <= 9)
    {
      if (a3 == 8)
      {
        if (v4 != 8)
        {
          goto LABEL_21;
        }
      }

      else if (v4 != 9)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    if (a3 != 10)
    {
      if (a3 == 11)
      {
        if (v4 == 11)
        {
          return result;
        }

        goto LABEL_21;
      }

LABEL_17:
      if (a3 != 12 || v4 == 12)
      {
        return result;
      }

LABEL_21:
      mpark::throw_bad_variant_access(result);
    }

    if (v4 != 10)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  v5 = IPC::Encoder::operator<<<mpark::variant<float,int> const&>(result, a2);

  return IPC::Encoder::operator<<<BOOL>(v5, (a2 + 8));
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<float,int>,void>::encode<IPC::Encoder,mpark::variant<float,int> const&>(IPC::Encoder *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (!*(a2 + 4))
    {
      v3 = *a2;

      return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(result, v3);
    }

LABEL_11:
    mpark::throw_bad_variant_access(result);
  }

  if (a3 != 1)
  {
    return result;
  }

  if (*(a2 + 4) != 1)
  {
    goto LABEL_11;
  }

  v4 = *a2;

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(result, v4);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v3 - 12))
  {
    return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::makeConstIterator(a1, v3, a3);
  }

  return v3 + 24 * *(v3 - 4);
}

{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v3 - 12))
  {
    return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::makeConstIterator(a1, v3, a3);
  }

  return v3 + 24 * *(v3 - 4);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::makeConstIterator(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
  }

  else
  {
    v6 = 0;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = a2;
  v8[1] = v5 + 24 * v6;
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v8, a2, a3);
  return v8[0];
}

uint64_t WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(uint64_t result, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *result;
  if (*result != *(result + 8))
  {
    v4 = result;
    do
    {
      result = WTF::equal(*v3, 0, a3);
      if ((result & 1) == 0 && *v3 != -1)
      {
        break;
      }

      v5 = v4[1];
      v3 = (*v4 + 24);
      *v4 = v3;
    }

    while (v3 != v5);
  }

  return result;
}

WTF::StringImpl **IPC::ArgumentCoder<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>@<X0>(WTF::StringImpl **this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this;
  v4 = this[1];
  v5 = ((this[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
LABEL_29:
    IPC::Decoder::markInvalid(v2);
    goto LABEL_30;
  }

  this[2] = (v5 + 4);
  if (!v5)
  {
LABEL_30:
    this = IPC::Decoder::markInvalid(v2);
    *a2 = 0;
    a2[8] = 0;
    return this;
  }

  v10 = 0;
  v11 = *v5;
  v21 = 0;
  if (v11)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::RegistrableDomain>(v2, &v19);
      if ((v20 & 1) == 0)
      {
        *a2 = 0;
        a2[8] = 0;
        goto LABEL_35;
      }

      IPC::Decoder::decode<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v17);
      v14 = v18;
      if ((v18 & 1) == 0)
      {
        goto LABEL_32;
      }

      if ((v20 & 1) == 0)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v19 == -1)
      {
        *a2 = 0;
        a2[8] = 0;
LABEL_33:
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v12);
        goto LABEL_34;
      }

      if (WTF::equal(v19, 0, v13))
      {
        break;
      }

      if ((v20 & 1) == 0 || (v18 & 1) == 0)
      {
        goto LABEL_28;
      }

      this = WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v21, &v19, v17, v16);
      v14 = v18;
      if ((v16[16] & 1) == 0)
      {
        goto LABEL_32;
      }

      if (v18)
      {
        this = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v12);
      }

      if (v20 == 1)
      {
        this = v19;
        v19 = 0;
        if (this)
        {
          if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            this = WTF::StringImpl::destroy(this, v12);
          }
        }
      }

      if (!--v11)
      {
        v10 = v21;
        goto LABEL_8;
      }
    }

    v14 = v18;
LABEL_32:
    *a2 = 0;
    a2[8] = 0;
    if (v14)
    {
      goto LABEL_33;
    }

LABEL_34:
    if (v20 == 1)
    {
      v15 = v19;
      v19 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v12);
        }
      }
    }

LABEL_35:
    this = v21;
    if (v21)
    {
      return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v21, v12);
    }
  }

  else
  {
LABEL_8:
    *a2 = v10;
    a2[8] = 1;
  }

  return this;
}

void sub_19D8397DC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, WTF::StringImpl *a16, char a17)
{
  if (a15 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, a2);
  }

  if (a17 == 1)
  {
    v20 = a16;
    a16 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, a2);
      }
    }
  }

  v19 = *(v17 - 40);
  if (v19)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v19, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D83988C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t *a1@<X0>, WTF **a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  WTF::checkHashTableKey<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashMapTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(a2, a2, a3);
  v8 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v7) & v9;
  v11 = (v8 + 24 * v10);
  if ((WTF::equal(*v11, 0, v12) & 1) == 0)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      if (*v11 == -1)
      {
        v14 = v11;
      }

      else
      {
        result = WTF::equalIgnoringASCIICase(*v11, *a2, v13);
        if (result)
        {
          v23 = *a1;
          if (*a1)
          {
            v24 = *(v23 - 4);
          }

          else
          {
            v24 = 0;
          }

          v22 = 0;
          v21 = v23 + 24 * v24;
          goto LABEL_15;
        }
      }

      v10 = (v10 + v15) & v9;
      v11 = (v8 + 24 * v10);
      ++v15;
    }

    while (!WTF::equal(*v11, 0, v13));
    if (v14)
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      --*(*a1 - 16);
      v11 = v14;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>::translate<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>> WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(WebCore::RegistrableDomain &&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(void)#1}>(v11, a2, &v25);
  v17 = *a1;
  if (*a1)
  {
    v18 = *(v17 - 12) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 12) = v18;
  v19 = (*(v17 - 16) + v18);
  v20 = *(v17 - 4);
  if (v20 > 0x400)
  {
    if (v20 > 2 * v19)
    {
      goto LABEL_14;
    }

LABEL_20:
    result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, v11);
    v11 = result;
    v17 = *a1;
    if (*a1)
    {
      LODWORD(v20) = *(v17 - 4);
    }

    else
    {
      LODWORD(v20) = 0;
    }

    goto LABEL_14;
  }

  if (3 * v20 <= 4 * v19)
  {
    goto LABEL_20;
  }

LABEL_14:
  v21 = v17 + 24 * v20;
  v22 = 1;
LABEL_15:
  *a4 = v11;
  *(a4 + 8) = v21;
  *(a4 + 16) = v22;
  return result;
}

unint64_t IPC::VectorArgumentCoder<false,WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  if ((v5 & 1) == 0)
  {
    *a2 = 0;
    a2[16] = 0;
    return result;
  }

  v6 = result;
  v16 = 0;
  v17 = 0;
  if (result >= 0x20000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::RegistrableDomain>(a1, &v14);
      if ((v15 & 1) == 0)
      {
LABEL_24:
        *a2 = 0;
        a2[16] = 0;
        return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v7);
      }

      v11 = HIDWORD(v17);
      if (HIDWORD(v17) != v17)
      {
        break;
      }

      WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain>(&v16, &v14);
      if (v15)
      {
        goto LABEL_17;
      }

LABEL_18:
      if (!--v6)
      {
        WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v16, HIDWORD(v17));
        goto LABEL_27;
      }
    }

    v12 = v14;
    v14 = 0;
    *(v16 + 8 * HIDWORD(v17)) = v12;
    HIDWORD(v17) = v11 + 1;
LABEL_17:
    v13 = v14;
    v14 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v7);
    }

    goto LABEL_18;
  }

  if (result)
  {
    LODWORD(v17) = result;
    v16 = WTF::fastMalloc((8 * result));
    while (1)
    {
      IPC::Decoder::decode<WebCore::RegistrableDomain>(a1, &v14);
      if ((v15 & 1) == 0)
      {
        goto LABEL_24;
      }

      v8 = HIDWORD(v17);
      if (HIDWORD(v17) != v17)
      {
        break;
      }

      WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain>(&v16, &v14);
      if (v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (!--v6)
      {
        goto LABEL_27;
      }
    }

    v9 = v14;
    v14 = 0;
    *(v16 + 8 * HIDWORD(v17)) = v9;
    HIDWORD(v17) = v8 + 1;
LABEL_8:
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }
    }

    goto LABEL_9;
  }

LABEL_27:
  std::optional<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a2, &v16);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v7);
}

void sub_19D839C0C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, a2);
  _Unwind_Resume(a1);
}

uint64_t std::optional<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D839C94(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  *v3 = 0;
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v4 + 1;
  return 1;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::RegistrableDomain>::move(WTF::StringImpl *result, WTF::StringImpl *a2, WTF::StringImpl **a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      ++a3;
      ++v5;
    }

    while (v5 != a2);
  }

  return result;
}

void *WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D839DB8(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::checkHashTableKey<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashMapTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(WTF **a1, uint64_t a2, const WTF::StringImpl *a3)
{
  result = WTF::equal(*a1, 0, a3);
  if (result || *a1 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D839E34);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::HashMapTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>::translate<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>> WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(WebCore::RegistrableDomain &&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(void)#1}>(WTF::StringImpl **a1, WTF::StringImpl *a2, _DWORD **a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v9, *a3);
  WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 1), v9);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v7);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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

  v9 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v12 = 0;
  if (v7)
  {
    v14 = v7;
    v15 = v6;
    do
    {
      if (*v15 != -1)
      {
        if (WTF::equal(*v15, 0, v11))
        {
          WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~KeyValuePair(v15, v16);
        }

        else
        {
          v17 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::reinsert(a1, v15);
          WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~KeyValuePair(v15, v18);
          if (v15 == a3)
          {
            v12 = v17;
          }
        }
      }

      v15 += 3;
      --v14;
    }

    while (v14);
    goto LABEL_14;
  }

  result = 0;
  if (v6)
  {
LABEL_14:
    WTF::fastFree((v6 - 16), v10);
    return v12;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::reinsert(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = WTF::ASCIICaseInsensitiveHash::hash(*a2, a2);
  v7 = 0;
  do
  {
    v8 = v5 & v4;
    v9 = v3 + 24 * (v5 & v4);
    v11 = WTF::equal(*v9, 0, v6);
    v5 = ++v7 + v8;
  }

  while (!v11);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9 + 8, v10);
  v13 = *v9;
  *v9 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *a2;
  *a2 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = v14;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v9 + 8, (a2 + 8));
  return v3 + 24 * v8;
}

void sub_19D83A0DC(_Unwind_Exception *exception_object, void *a2)
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

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*a1, (*a1 + 8 * v4));
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

unint64_t IPC::VectorArgumentCoder<false,WTF::URL,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  if (v5)
  {
    v6 = result;
    v14 = 0;
    v15 = 0;
    if (result >= 0x6666)
    {
      while (1)
      {
        IPC::Decoder::decode<WTF::URL>(a1, v12);
        v10 = v13;
        if (v13)
        {
          if (HIDWORD(v15) == v15)
          {
            WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::URL>(&v14, v12);
          }

          else
          {
            WTF::URL::URL(v14 + 40 * HIDWORD(v15), v12);
            ++HIDWORD(v15);
          }
        }

        else
        {
          *a2 = 0;
          *(a2 + 16) = 0;
        }

        if (v13 == 1)
        {
          v11 = v12[0];
          v12[0] = 0;
          if (v11)
          {
            if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v11, v7);
            }
          }
        }

        if ((v10 & 1) == 0)
        {
          break;
        }

        if (!--v6)
        {
          WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v14, HIDWORD(v15));
          WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a2, &v14);
          goto LABEL_17;
        }
      }
    }

    else if (result)
    {
      LODWORD(v15) = 40 * result / 0x28u;
      v14 = WTF::fastMalloc((40 * result));
      while (1)
      {
        IPC::Decoder::decode<WTF::URL>(a1, v12);
        v8 = v13;
        if (v13)
        {
          if (HIDWORD(v15) == v15)
          {
            WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::URL>(&v14, v12);
          }

          else
          {
            WTF::URL::URL(v14 + 40 * HIDWORD(v15), v12);
            ++HIDWORD(v15);
          }
        }

        else
        {
          *a2 = 0;
          *(a2 + 16) = 0;
        }

        if (v13 == 1)
        {
          v9 = v12[0];
          v12[0] = 0;
          if (v9)
          {
            if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v9, v7);
            }
          }
        }

        if ((v8 & 1) == 0)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a2, &v14);
LABEL_17:
      *(a2 + 16) = 1;
    }

    return WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v7);
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_19D83A374(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a16, a2);
  _Unwind_Resume(a1);
}

unsigned int *WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorDestructor<true,WTF::URL>::destruct((*result + 40 * this), (*result + 40 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x6666667)
      {
        __break(0xC471u);
        return result;
      }

      v6 = (40 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x28;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WTF::URL>::move(v5, v5 + 5 * v4, result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, this);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::MultiRepresentationHEICAttachmentSingleImage>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>>(a2, &v9);
  result = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  if (*a2)
  {
    if (v10 & 1) != 0 && (v5)
    {
      *a1 = v9;
      *(a1 + 8) = result;
      *(a1 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v10)
  {
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (v6[4] == 1)
      {
        (*(*v6 + 8))(v6);
      }

      else
      {
        --v6[4];
      }
    }
  }

  v7 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v7)
  {
    v8 = *(*result + 16);

    return v8();
  }

  return result;
}

void sub_19D83A5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9, char a10)
{
  if ((a10 & 1) != 0 && a9)
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

unint64_t WTF::Vector<WebCore::MultiRepresentationHEICAttachmentSingleImage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(_DWORD *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * a1[3] <= a3)
  {
    v10 = a1[2];
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

    WTF::Vector<WebCore::MultiRepresentationHEICAttachmentSingleImage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = a1[2];
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

    WTF::Vector<WebCore::MultiRepresentationHEICAttachmentSingleImage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

_DWORD *WTF::Vector<WebCore::MultiRepresentationHEICAttachmentSingleImage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(_DWORD *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D83A794);
    }

    v3 = result;
    v4 = *result;
    v5 = (*result + 16 * result[3]);
    v6 = WTF::fastMalloc((16 * a2));
    v3[2] = v2;
    *v3 = v6;
    result = WTF::VectorTypeOperations<WebCore::MultiRepresentationHEICAttachmentSingleImage>::move(v4, v5, v6);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v4, v7);
    }
  }

  return result;
}

_DWORD *WTF::VectorTypeOperations<WebCore::MultiRepresentationHEICAttachmentSingleImage>::move(_DWORD *result, void *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      a3[1] = v5[1];
      result = *v5;
      *v5 = 0;
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

      a3 += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return result;
}

void IPC::ArgumentCoder<WTF::RetainPtr<DDScannerResult>,void>::decode<DDScannerResult,DDScannerResult*>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = (*MEMORY[0x1E69E22C0])();
  v9[0] = v4;
  if (v4)
  {
    v5 = v4;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v8, v9, 1);
  IPC::decodeRequiringAllowedClasses<DDScannerResult,DDScannerResult*>(a1, a2);
  if (v8)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v8, v6);
  }

  v7 = v9[0];
  v9[0] = 0;
  if (v7)
  {
  }
}

void sub_19D83A8F0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void *a11)
{
  if (a10)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(a10, a2);
  }

  if (a11)
  {
  }

  _Unwind_Resume(exception_object);
}

void IPC::decodeRequiringAllowedClasses<DDScannerResult,DDScannerResult*>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::decodeObjectDirectlyRequiringAllowedClasses<DDScannerResult>(a1, &v6);
  if (v7 == 1)
  {
    v3 = v6;
    *a2 = v6;
    if (v3)
    {
      v5 = v3;
      v4 = v3;
      *(a2 + 8) = 1;
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
}

void IPC::ArgumentCoder<std::optional<WebCore::DestinationColorSpace>,void>::decode<IPC::Decoder>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_12;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_12:
    IPC::Decoder::markInvalid(this);
    goto LABEL_13;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_13:
    IPC::Decoder::markInvalid(this);
    *a2 = 0;
    a2[16] = 0;
    return;
  }

  if (v5)
  {
    IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(this, &v7);
    if (v8)
    {
      *a2 = v7;
      v6 = 1;
      a2[8] = 1;
    }

    else
    {
      IPC::Decoder::markInvalid(this);
      v6 = 0;
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
    v6 = 1;
  }

  a2[16] = v6;
}

void IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(IPC::Encoder *a1, unint64_t a2)
{
  if (*(a2 + 80))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 80))
    {
      IPC::ArgumentCoder<WebCore::ShareableBitmapHandle,void>::encode(a1, a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::decode<IPC::Decoder>(v4, v5);
    }
  }

  else
  {
    v7 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::decode<IPC::Decoder>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v8 = a1[3];
    if (v8)
    {
      if (v3)
      {
        (*(*v8 + 16))(v8);
        v5 = *v11;
        v3 = v11[1];
        goto LABEL_15;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_15:
    *v11 = 0;
    v11[1] = 0;
    v9 = v11[3];
    if (v9)
    {
      if (v3)
      {
        (*(*v9 + 16))(v9, v5);
        v5 = *v11;
        v3 = v11[1];
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_19:
    *v11 = 0;
    v11[1] = 0;
    v10 = v11[3];
    if (v10 && v3)
    {
      (*(*v10 + 16))(v10, v5);
    }

LABEL_20:
    *a2 = 0;
    a2[88] = 0;
    return;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v11 = a1;
    goto LABEL_15;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v11 = a1;
    goto LABEL_19;
  }

  if (!v6)
  {
    *a2 = 0;
    a2[80] = 0;
    a2[88] = 1;
    return;
  }

  IPC::Decoder::decode<WebCore::ShareableBitmapHandle>(v12, a1);
  if (v15 != 1)
  {
    goto LABEL_20;
  }

  WebCore::ShareableBitmapHandle::ShareableBitmapHandle(a2, v12);
  a2[80] = 1;
  a2[88] = 1;
  if (v15)
  {
    if (v14 == 1)
    {
      v7 = cf;
      cf = 0;
      if (v7)
      {
        CFRelease(v7);
      }
    }

    WTF::MachSendRight::~MachSendRight(v12);
  }
}

void sub_19D83ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, CFTypeRef cf, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a20 == 1)
  {
    if (a14 == 1)
    {
      v21 = cf;
      cf = 0;
      if (v21)
      {
        CFRelease(v21);
      }
    }

    WTF::MachSendRight::~MachSendRight(&a10);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebCore::ShareableBitmapHandle>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::ShareableBitmapHandle,void>::decode(a2, a1);
  if ((a1[80] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::optional<WebCore::SerializedPlatformDataCueValue::Data>,void>::encode<IPC::Encoder,std::optional<WebCore::SerializedPlatformDataCueValue::Data> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 48))
    {
      IPC::ArgumentCoder<WebCore::SerializedPlatformDataCueValue::Data,void>::encode(a1, a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v4, v5);
    }
  }

  else
  {
    v7 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t *IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, void **a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 3);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = &(*a2)[2 * *(*a2 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6 + 1);
      do
      {
        v6 += 2;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
    }

    while (v6 != v9);
  }

  return result;
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>> const&,0ul>(a1, a2, a3);
  }

  else if (*(a2 + 8))
  {
    mpark::throw_bad_variant_access(a1);
  }
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>> const&,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 8) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    IPC::encodeObjectDirectly<NSString>(a1, v4);
  }

  else
  {

    IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>> const&,0ul,1ul>(a1, a2, a3);
  }
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>> const&,0ul,1ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 8) != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    IPC::encodeObjectDirectly<NSDate>(a1, v4);
  }

  else
  {

    IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>> const&,0ul,1ul,2ul>(a1, a2, a3);
  }
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>> const&,0ul,1ul,2ul>(IPC::Encoder *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (*(a2 + 8) == 3)
    {
      v3 = *a2;

      IPC::encodeObjectDirectly<NSNumber>(a1, v3);
      return;
    }

LABEL_12:
    mpark::throw_bad_variant_access(a1);
  }

  if (a3 != 4)
  {
    return;
  }

  if (*(a2 + 8) != 4)
  {
    goto LABEL_12;
  }

  v4 = *a2;

  IPC::encodeObjectDirectly<NSData>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<float>(a1);
  if ((result & 0x100000000) != 0)
  {
    v5 = result;
    v6 = 0;
    v15 = 0;
    if (result)
    {
      while (1)
      {
        IPC::Decoder::decode<WTF::String>(a1, &v13);
        if ((v14 & 1) == 0)
        {
          *a2 = 0;
          a2[8] = 0;
          goto LABEL_26;
        }

        IPC::Decoder::decode<WTF::String>(a1, &v11);
        if ((v12 & 1) == 0)
        {
          *a2 = 0;
          a2[8] = 0;
          goto LABEL_24;
        }

        if ((v14 & 1) == 0)
        {
          break;
        }

        if (v13 + 1 <= 1)
        {
          *a2 = 0;
          a2[8] = 0;
          goto LABEL_23;
        }

        result = WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String>(&v15, &v13, &v11, v10);
        if ((v10[16] & 1) == 0)
        {
          goto LABEL_35;
        }

        if (v12 == 1)
        {
          result = v11;
          v11 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v7);
            }
          }
        }

        if (v14 == 1)
        {
          result = v13;
          v13 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v7);
            }
          }
        }

        if (!--v5)
        {
          v6 = v15;
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_35:
      *a2 = 0;
      a2[8] = 0;
      if ((v12 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      v8 = v11;
      v11 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

LABEL_24:
      if (v14 == 1)
      {
        v9 = v13;
        v13 = 0;
        if (v9)
        {
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v7);
          }
        }
      }

LABEL_26:
      result = v15;
      if (v15)
      {
        return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v7);
      }
    }

    else
    {
LABEL_3:
      *a2 = v6;
      a2[8] = 1;
    }
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }

  return result;
}

void sub_19D83B18C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, char a13, WTF::StringImpl *a14, char a15)
{
  if ((a13 & 1) != 0 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a15 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, WTF::StringImpl **a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D83B3D0);
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D83B3F0);
  }

  v7 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v7 = *a1) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*a2 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v10 = v9 >> 8;
  }

  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v8;
    v14 = (v7 + 16 * (v10 & v8));
    v15 = *v14;
    if (*v14 != -1)
    {
      break;
    }

    v11 = (v7 + 16 * v13);
LABEL_14:
    v10 = i + v13;
  }

  if (!v15)
  {
    if (v11)
    {
      *v11 = 0;
      v11[1] = 0;
      --*(*a1 - 16);
      v14 = v11;
    }

    result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,WTF::String>(WTF::String &&,WTF::String &&)::{lambda(void)#1}>(v14, a2, &v25);
    v17 = *a1;
    if (*a1)
    {
      v18 = *(v17 - 12) + 1;
    }

    else
    {
      v18 = 1;
    }

    *(v17 - 12) = v18;
    v23 = (*(v17 - 16) + v18);
    v24 = *(v17 - 4);
    if (v24 > 0x400)
    {
      if (v24 <= 2 * v23)
      {
LABEL_25:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v14);
        v14 = result;
        v17 = *a1;
        if (*a1)
        {
          v24 = *(v17 - 4);
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else if (3 * v24 <= 4 * v23)
    {
      goto LABEL_25;
    }

    v22 = v17 + 16 * v24;
    v21 = 1;
    goto LABEL_28;
  }

  result = WTF::equal(v15, *a2, a3);
  if (!result)
  {
    goto LABEL_14;
  }

  v19 = *a1;
  if (*a1)
  {
    v20 = *(v19 - 4);
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  v22 = v19 + 16 * v20;
LABEL_28:
  *a4 = v14;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

WTF::StringImpl *WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,WTF::String>(WTF::String &&,WTF::String &&)::{lambda(void)#1}>(WTF::StringImpl **a1, WTF::StringImpl *a2, WTF::StringImpl ***a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = **a3;
  **a3 = 0;
  result = a1[1];
  a1[1] = v7;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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
  v11 = 0;
  if (v7)
  {
    v13 = v7;
    v14 = v6;
    do
    {
      if (*v14 != -1)
      {
        if (*v14)
        {
          v15 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(a1, v14);
          WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(v14, v16);
          if (v14 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(v14, v10);
        }
      }

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(uint64_t *a1, uint64_t a2)
{
  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, a2);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = *v4;
  *v4 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v3);
  }

  v7 = *a2;
  *a2 = 0;
  *v4 = v7;
  v8 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v4 + 8) = v8;
  return v4;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, WTF::StringImpl **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*a2 + 4);
  if (v4 < 0x100)
  {
    v5 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = 0;
  do
  {
    v7 = v5 & v3;
    v5 = ++v6 + v7;
  }

  while (*(v2 + 16 * v7));
  return v2 + 16 * v7;
}

void IPC::Decoder::decode<WTF::RetainPtr<NSString>>(WTF::StringImpl *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RetainPtr<NSString>,void>::decode<NSString,NSString*>(a1, a2);
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

void sub_19D83B710(_Unwind_Exception *exception_object)
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

void IPC::ArgumentCoder<WTF::RetainPtr<NSString>,void>::decode<NSString,NSString*>(WTF::StringImpl *a1@<X0>, uint64_t a2@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v9[0] = v4;
  if (v4)
  {
    v5 = v4;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v8, v9, 1);
  IPC::decodeRequiringAllowedClasses<NSString,NSString*>(a1, a2);
  if (v8)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v8, v6);
  }

  v7 = v9[0];
  v9[0] = 0;
  if (v7)
  {
  }
}

void sub_19D83B7E4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void *a11)
{
  if (a10)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(a10, a2);
  }

  if (a11)
  {
  }

  _Unwind_Resume(exception_object);
}

void IPC::decodeRequiringAllowedClasses<NSString,NSString*>(WTF::StringImpl *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::decodeObjectDirectlyRequiringAllowedClasses<NSString>(a1, &v6);
  if (v7 == 1)
  {
    v3 = v6;
    *a2 = v6;
    if (v3)
    {
      v5 = v3;
      v4 = v3;
      *(a2 + 8) = 1;
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
}

void IPC::Decoder::decode<WTF::RetainPtr<NSNumber>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RetainPtr<NSNumber>,void>::decode<NSNumber,NSNumber*>(a1, a2);
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

void sub_19D83B92C(_Unwind_Exception *exception_object)
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

void IPC::ArgumentCoder<WTF::RetainPtr<NSNumber>,void>::decode<NSNumber,NSNumber*>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v9[0] = v4;
  if (v4)
  {
    v5 = v4;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v8, v9, 1);
  IPC::decodeRequiringAllowedClasses<NSNumber,NSNumber*>(a1, a2);
  if (v8)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v8, v6);
  }

  v7 = v9[0];
  v9[0] = 0;
  if (v7)
  {
  }
}

void sub_19D83BA04(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void *a11)
{
  if (a10)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(a10, a2);
  }

  if (a11)
  {
  }

  _Unwind_Resume(exception_object);
}

void IPC::decodeRequiringAllowedClasses<NSNumber,NSNumber*>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::decodeObjectDirectlyRequiringAllowedClasses<NSNumber>(a1, &v6);
  if (v7 == 1)
  {
    v3 = v6;
    *a2 = v6;
    if (v3)
    {
      v5 = v3;
      v4 = v3;
      *(a2 + 8) = 1;
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
}

mpark *IPC::ArgumentCoder<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(mpark *a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 24))
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::SharedMemoryHandle>>(a1, a2);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 24) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::VectorArgumentCoder<false,std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(result, a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 16 * v5;
    do
    {
      v8 = *v6;
      v9 = *(v6 + 8);
      v6 += 16;
      result = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v8, v9);
    }

    while (v6 != v7);
  }

  return result;
}

void IPC::ArgumentCoder<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<unsigned char>(a2);
  if ((v4 & 0x1FE) == 0x100)
  {

    IPC::ArgumentCoder<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2, v4 & 1);
  }

  else
  {
    *a1 = 0;
    a1[32] = 0;
  }
}

void IPC::ArgumentCoder<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  if (a3)
  {

    IPC::ArgumentCoder<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,0ul>(a1, a2);
  }

  else
  {
    IPC::Decoder::decode<std::optional<WebCore::SharedMemoryHandle>>(v4, a2);
    if (v5 == 1)
    {
      std::__optional_move_base<WebCore::SharedMemoryHandle,false>::__optional_move_base[abi:sn200100](a1, v4);
      a1[24] = 0;
      a1[32] = 1;
      if ((v5 & 1) != 0 && v4[16] == 1)
      {
        WTF::MachSendRight::~MachSendRight(v4);
      }
    }

    else
    {
      *a1 = 0;
      a1[32] = 0;
    }
  }
}

void sub_19D83BCB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a13 == 1 && a11 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a9);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::ArgumentCoder<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,0ul>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v5, a2);
  if (v7 == 1)
  {
    result = WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, &v5);
    *(a1 + 24) = 1;
    *(a1 + 32) = 1;
    if (v7)
    {
      result = v5;
      if (v5)
      {
        v5 = 0;
        v6 = 0;
        return WTF::fastFree(result, v4);
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

void sub_19D83BD60(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
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

unint64_t IPC::Decoder::decode<WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D83BDCC(_Unwind_Exception *exception_object, void *a2)
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

unint64_t IPC::VectorArgumentCoder<false,std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if ((v5 & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    return result;
  }

  v6 = result;
  v12 = 0;
  v13 = 0;
  if (result >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<std::span<unsigned char const,18446744073709551615ul>>(a2, &v10);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v9 = HIDWORD(v13);
      if (HIDWORD(v13) == v13)
      {
        WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::span<unsigned char const,18446744073709551615ul>>(&v12, &v10);
      }

      else
      {
        *(v12 + HIDWORD(v13)) = v10;
        HIDWORD(v13) = v9 + 1;
      }

      if (!--v6)
      {
        WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v12, HIDWORD(v13));
        WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, &v12);
        goto LABEL_10;
      }
    }
  }

  else
  {
    if (!result)
    {
LABEL_9:
      WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, &v12);
LABEL_10:
      *(a1 + 16) = 1;
      goto LABEL_11;
    }

    LODWORD(v13) = result;
    v12 = WTF::fastMalloc((16 * result));
    while (1)
    {
      IPC::Decoder::decode<std::span<unsigned char const,18446744073709551615ul>>(a2, &v10);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v8 = HIDWORD(v13);
      if (HIDWORD(v13) == v13)
      {
        WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::span<unsigned char const,18446744073709551615ul>>(&v12, &v10);
      }

      else
      {
        *(v12 + HIDWORD(v13)) = v10;
        HIDWORD(v13) = v8 + 1;
      }

      if (!--v6)
      {
        goto LABEL_9;
      }
    }
  }

  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_11:
  result = v12;
  if (v12)
  {
    return WTF::fastFree(v12, v7);
  }

  return result;
}

void sub_19D83BF54(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13)
{
  if (a13)
  {
    WTF::fastFree(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

__n128 WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::span<unsigned char const,18446744073709551615ul>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = *v3;
  *(*a1 + 16 * (*(a1 + 12))++) = *v3;
  return result;
}

unint64_t WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 12);
      result = WTF::fastMalloc((16 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v5)
      {
        v7 = 16 * v5;
        v8 = v4;
        do
        {
          v9 = *v8;
          v8 = (v8 + 16);
          *result = v9;
          result += 16;
          v7 -= 16;
        }

        while (v7);
      }

      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 8) = 0;
        }

        return WTF::fastFree(v4, v6);
      }
    }
  }

  return result;
}

void *WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D83C15C(_Unwind_Exception *exception_object, void *a2)
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

WebCore::SecurityOriginData *WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v1 - 3))
  {
    return WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::makeConstIterator(a1, v1);
  }

  return (v1 + 32 * *(v1 - 1));
}

WebCore::SecurityOriginData *WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::makeConstIterator(uint64_t *a1, WebCore::SecurityOriginData *a2)
{
  v2 = a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = (v3 + 32 * v4);
  if (v5 != a2)
  {
    while (WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v2))
    {
      v2 = (v2 + 32);
      if (v2 == v5)
      {
        return v5;
      }
    }
  }

  return v2;
}

BOOL WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(WebCore::SecurityOriginData *a1)
{
  isNull = WebCore::SecurityOriginData::isNull(a1);
  if (isNull)
  {
    return 1;
  }

  if (!*(a1 + 24))
  {
    return *a1 == -1;
  }

  if (*(a1 + 24) != 1)
  {
    mpark::throw_bad_variant_access(isNull);
  }

  return 0;
}

WebCore::SecurityOriginData *WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(WebCore::SecurityOriginData *this@<X1>, uint64_t *a2@<X0>, uint64_t a3@<X8>)
{
  v22 = this;
  isNull = WebCore::SecurityOriginData::isNull(this);
  if (isNull)
  {
    goto LABEL_39;
  }

  if (!*(this + 24))
  {
    if (*this != -1)
    {
      goto LABEL_4;
    }

LABEL_39:
    __break(0xC471u);
    JUMPOUT(0x19D83C498);
  }

  if (*(this + 24) != 1)
  {
LABEL_17:
    mpark::throw_bad_variant_access(isNull);
  }

LABEL_4:
  v7 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v23 = -1640531527;
  v24 = 0;
  v25 = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v23, this);
  v9 = WTF::SuperFastHash::hash(&v23) & v8;
  v10 = (v7 + 32 * v9);
  isNull = WebCore::SecurityOriginData::isNull(v10);
  if ((isNull & 1) == 0)
  {
    v11 = 0;
    v12 = 1;
    while (!*(v10 + 24))
    {
      if (*v10 != -1)
      {
        goto LABEL_11;
      }

      v11 = v10;
LABEL_14:
      v9 = (v9 + v12) & v8;
      v10 = (v7 + 32 * v9);
      isNull = WebCore::SecurityOriginData::isNull(v10);
      ++v12;
      if (isNull)
      {
        if (v11)
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          --*(*a2 - 16);
          v10 = v11;
        }

        goto LABEL_20;
      }
    }

    if (*(v10 + 24) != 1)
    {
      goto LABEL_17;
    }

LABEL_11:
    result = WebCore::operator==();
    if (result)
    {
      v18 = *a2;
      if (*a2)
      {
        v19 = *(v18 - 4);
      }

      else
      {
        v19 = 0;
      }

      v21 = 0;
      v20 = v18 + 32 * v19;
      goto LABEL_31;
    }

    goto LABEL_14;
  }

LABEL_20:
  result = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>::translate<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>,WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>>> WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WebCore::SecurityOriginData&&)::{lambda(void)#1}>(v10, this, &v22);
  v14 = *a2;
  if (*a2)
  {
    v15 = *(v14 - 12) + 1;
  }

  else
  {
    v15 = 1;
  }

  *(v14 - 12) = v15;
  v16 = (*(v14 - 16) + v15);
  v17 = *(v14 - 4);
  if (v17 > 0x400)
  {
    if (v17 <= 2 * v16)
    {
LABEL_25:
      result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(a2, v10);
      v10 = result;
      v14 = *a2;
      if (*a2)
      {
        v17 = *(v14 - 4);
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else if (3 * v17 <= 4 * v16)
  {
    goto LABEL_25;
  }

  v20 = v14 + 32 * v17;
  v21 = 1;
LABEL_31:
  *a3 = v10;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
  return result;
}

{
  v22 = this;
  isNull = WebCore::SecurityOriginData::isNull(this);
  if (isNull)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8C041CLL);
  }

  if (*(this + 24))
  {
    if (*(this + 24) != 1)
    {
LABEL_32:
      mpark::throw_bad_variant_access(isNull);
    }
  }

  else if (*this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8C043CLL);
  }

  v7 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v23 = -1640531527;
  v24 = 0;
  v25 = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v23, this);
  v9 = WTF::SuperFastHash::hash(&v23) & v8;
  v10 = (v7 + 32 * v9);
  isNull = WebCore::SecurityOriginData::isNull(v10);
  if ((isNull & 1) == 0)
  {
    v11 = 0;
    v12 = 1;
    while (!*(v10 + 24))
    {
      if (*v10 != -1)
      {
        goto LABEL_11;
      }

      v11 = v10;
LABEL_18:
      v9 = (v9 + v12) & v8;
      v10 = (v7 + 32 * v9);
      isNull = WebCore::SecurityOriginData::isNull(v10);
      ++v12;
      if (isNull)
      {
        if (v11)
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          --*(*a2 - 16);
          v10 = v11;
        }

        goto LABEL_21;
      }
    }

    if (*(v10 + 24) != 1)
    {
      goto LABEL_32;
    }

LABEL_11:
    result = WebCore::operator==();
    if (result)
    {
      v14 = *a2;
      if (*a2)
      {
        v15 = *(v14 - 4);
      }

      else
      {
        v15 = 0;
      }

      v16 = 0;
      v17 = v14 + 32 * v15;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_21:
  result = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>::translate<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>,WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>>> WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WebCore::SecurityOriginData const&)::{lambda(void)#1}>(v10, this, &v22);
  v18 = *a2;
  if (*a2)
  {
    v19 = *(v18 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v18 - 12) = v19;
  v20 = (*(v18 - 16) + v19);
  v21 = *(v18 - 4);
  if (v21 > 0x400)
  {
    if (v21 > 2 * v20)
    {
      goto LABEL_25;
    }

LABEL_28:
    result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(a2, v10);
    v10 = result;
    v18 = *a2;
    if (*a2)
    {
      v21 = *(v18 - 4);
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_25;
  }

  if (3 * v21 <= 4 * v20)
  {
    goto LABEL_28;
  }

LABEL_25:
  v17 = v18 + 32 * v21;
  v16 = 1;
LABEL_15:
  *a3 = v10;
  *(a3 + 8) = v17;
  *(a3 + 16) = v16;
  return result;
}

_BYTE *WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(uint64_t *a1, WebCore::SecurityOriginData *a2)
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

  return WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>::translate<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>,WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>>> WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WebCore::SecurityOriginData&&)::{lambda(void)#1}>(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  LOBYTE(v7) = 0;
  v9 = -1;
  v4 = *(v3 + 24);
  if (*(v3 + 24))
  {
    if (v4 == 255)
    {
      goto LABEL_4;
    }

    v7 = *v3;
  }

  else
  {
    v5 = *v3;
    *v3 = 0;
    *(v3 + 1) = 0;
    v7 = v5;
    v8 = *(v3 + 4);
  }

  v9 = v4;
LABEL_4:
  WebCore::SecurityOriginData::operator=(a1);
  return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v7);
}

_BYTE *WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WebCore::SecurityOriginData *a3)
{
  v6 = *a1;
  if (*a1)
  {
    LODWORD(v7) = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = 0;
  }

  v9 = WTF::fastMalloc(((32 * a2) | 0x10));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 32 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  v13 = 0;
  if (v7)
  {
    v7 = v7;
    v15 = v6;
    while (!*(v15 + 24))
    {
      if (*v15 != -1)
      {
        goto LABEL_12;
      }

LABEL_16:
      v15 = (v15 + 32);
      if (!--v7)
      {
        goto LABEL_17;
      }
    }

    if (*(v15 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v9);
    }

LABEL_12:
    if (WebCore::SecurityOriginData::isNull(v15))
    {
      v9 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v15);
    }

    else
    {
      v16 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::reinsert(a1, v15);
      v9 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v15);
      if (v15 == a3)
      {
        v13 = v16;
      }
    }

    goto LABEL_16;
  }

  result = 0;
  if (v6)
  {
LABEL_17:
    WTF::fastFree((v6 - 16), v10);
    return v13;
  }

  return result;
}

_BYTE *WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::reinsert(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v10 = -1640531527;
  v11 = 0;
  v12 = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v10, a2);
  v4 = WTF::SuperFastHash::hash(&v10);
  v5 = 0;
  do
  {
    v6 = v4 & v3;
    isNull = WebCore::SecurityOriginData::isNull((v2 + 32 * v6));
    v4 = ++v5 + v6;
  }

  while (!isNull);
  v8 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 32 * v6);
  return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor(v8);
}

unsigned int *WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(mpark *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v7 = a1;
  if (v2 == 255)
  {
    v3 = -1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 & 0x7FFF800 ^ ((*a1 + v3) << 16) ^ (*a1 + v3);
  v5 = (v3 >> 37) & 0x7FFF800 ^ ((v4 + WORD2(v3) + (v4 >> 11)) << 16) ^ (v4 + WORD2(v3) + (v4 >> 11));
  *a1 = v5 + (v5 >> 11);
  if (v2 == 255)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v8 = &v7;
  if (v2)
  {
    return _ZN5mpark3lib5cpp176invokeINS_6detail10visitation7variant13value_visitorIZN3WTF3addIJN7WebCore18SecurityOriginData5TupleENS9_16ProcessQualifiedINS7_23ObjectIdentifierGenericINS9_26OpaqueOriginIdentifierTypeENS7_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEvRNS7_6HasherERKNS_7variantIJDpT_EEEEUlRT_E_EEJRKNS3_3altILm1ESI_EEEEEDTclsr6detailE6invokeclsr3libE7forwardISR_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOSR_DpOSZ_(&v8, a2);
  }

  else
  {
    return WTF::add<WTF::String,WTF::String,std::optional<unsigned short>>(a1, a2, (a2 + 8), (a2 + 16));
  }
}

unsigned int *WTF::add<WTF::String,WTF::String,std::optional<unsigned short>>(unsigned int *result, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 4);
  v6 = v5 & 0xFFFFFFFE;
  if ((v5 & 0xFFFFFFFE) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    v16 = 1;
    goto LABEL_13;
  }

  v7 = 0;
  v8 = *result;
  do
  {
    v9 = *(v4 + 4);
    if (v7 >= v9)
    {
      v11 = 0;
    }

    else
    {
      v10 = *(v4 + 8);
      if ((*(v4 + 16) & 4) != 0)
      {
        v11 = *(v10 + v7);
      }

      else
      {
        v11 = *(v10 + 2 * v7);
      }
    }

    v12 = v7 + 1;
    if (v7 + 1 >= v9)
    {
      v14 = 0;
    }

    else
    {
      v13 = *(v4 + 8);
      if ((*(v4 + 16) & 4) != 0)
      {
        v14 = *(v13 + v7 + 1);
      }

      else
      {
        v14 = *(v13 + 2 * v7 + 2);
      }
    }

    v15 = (v11 << 11) ^ ((v8 + v14) << 16) ^ (v8 + v14);
    v8 = v15 + (v15 >> 11);
    *result = v8;
    v7 = v12 + 1;
  }

  while (v12 + 1 < v6);
  if (v5)
  {
    v16 = *(v4 + 4);
LABEL_13:
    if (v16 <= v6)
    {
      v18 = 0;
    }

    else
    {
      v17 = *(v4 + 8);
      if ((*(v4 + 16) & 4) != 0)
      {
        v18 = *(v17 + v6);
      }

      else
      {
        v18 = *(v17 + 2 * v6);
      }
    }

    *result = ((*result + v18) ^ ((*result + v18) << 16)) + (((*result + v18) ^ ((*result + v18) << 16)) >> 11);
  }

LABEL_17:
  v19 = *a3;
  if (!*a3)
  {
    goto LABEL_33;
  }

  v20 = *(v19 + 4);
  v21 = v20 & 0xFFFFFFFE;
  if ((v20 & 0xFFFFFFFE) == 0)
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_33;
    }

    v31 = 1;
    goto LABEL_29;
  }

  v22 = 0;
  v23 = *result;
  do
  {
    v24 = *(v19 + 4);
    if (v22 >= v24)
    {
      v26 = 0;
    }

    else
    {
      v25 = *(v19 + 8);
      if ((*(v19 + 16) & 4) != 0)
      {
        v26 = *(v25 + v22);
      }

      else
      {
        v26 = *(v25 + 2 * v22);
      }
    }

    v27 = v22 + 1;
    if (v22 + 1 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v28 = *(v19 + 8);
      if ((*(v19 + 16) & 4) != 0)
      {
        v29 = *(v28 + v22 + 1);
      }

      else
      {
        v29 = *(v28 + 2 * v22 + 2);
      }
    }

    v30 = (v26 << 11) ^ ((v23 + v29) << 16) ^ (v23 + v29);
    v23 = v30 + (v30 >> 11);
    *result = v23;
    v22 = v27 + 1;
  }

  while (v27 + 1 < v21);
  if (v20)
  {
    v31 = *(v19 + 4);
LABEL_29:
    if (v31 <= v21)
    {
      v33 = 0;
    }

    else
    {
      v32 = *(v19 + 8);
      if ((*(v19 + 16) & 4) != 0)
      {
        v33 = *(v32 + v21);
      }

      else
      {
        v33 = *(v32 + 2 * v21);
      }
    }

    *result = ((*result + v33) ^ ((*result + v33) << 16)) + (((*result + v33) ^ ((*result + v33) << 16)) >> 11);
  }

LABEL_33:
  v34 = *(a4 + 2);
  v35 = (*result + v34) ^ ((*result + v34) << 16);
  v36 = v35 + (v35 >> 11);
  *result = v36;
  if (v34 == 1)
  {
    *result = ((v36 + *a4) ^ ((v36 + *a4) << 16)) + (((v36 + *a4) ^ ((v36 + *a4) << 16)) >> 11);
  }

  return result;
}

unsigned int *WTF::add(unsigned int *result, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return result;
  }

  v3 = *(v2 + 4);
  v4 = v3 & 0xFFFFFFFE;
  if ((v3 & 0xFFFFFFFE) == 0)
  {
    if ((v3 & 1) == 0)
    {
      return result;
    }

    v14 = 1;
    goto LABEL_13;
  }

  v5 = 0;
  v6 = *result;
  do
  {
    v7 = *(v2 + 4);
    if (v5 >= v7)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(v2 + 8);
      if ((*(v2 + 16) & 4) != 0)
      {
        v9 = *(v8 + v5);
      }

      else
      {
        v9 = *(v8 + 2 * v5);
      }
    }

    v10 = v5 + 1;
    if (v5 + 1 >= v7)
    {
      v12 = 0;
    }

    else
    {
      v11 = *(v2 + 8);
      if ((*(v2 + 16) & 4) != 0)
      {
        v12 = *(v11 + v5 + 1);
      }

      else
      {
        v12 = *(v11 + 2 * v5 + 2);
      }
    }

    v13 = (v9 << 11) ^ ((v6 + v12) << 16) ^ (v6 + v12);
    v6 = v13 + (v13 >> 11);
    *result = v6;
    v5 = v10 + 1;
  }

  while (v10 + 1 < v4);
  if (v3)
  {
    v14 = *(v2 + 4);
LABEL_13:
    if (v14 <= v4)
    {
      v16 = 0;
    }

    else
    {
      v15 = *(v2 + 8);
      if ((*(v2 + 16) & 4) != 0)
      {
        v16 = *(v15 + v4);
      }

      else
      {
        v16 = *(v15 + 2 * v4);
      }
    }

    *result = ((*result + v16) ^ ((*result + v16) << 16)) + (((*result + v16) ^ ((*result + v16) << 16)) >> 11);
  }

  return result;
}

unsigned int ***_ZN5mpark3lib5cpp176invokeINS_6detail10visitation7variant13value_visitorIZN3WTF3addIJN7WebCore18SecurityOriginData5TupleENS9_16ProcessQualifiedINS7_23ObjectIdentifierGenericINS9_26OpaqueOriginIdentifierTypeENS7_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEvRNS7_6HasherERKNS_7variantIJDpT_EEEEUlRT_E_EEJRKNS3_3altILm1ESI_EEEEEDTclsr6detailE6invokeclsr3libE7forwardISR_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOSR_DpOSZ_(unsigned int ***result, void *a2)
{
  v2 = **result;
  v3 = *v2 + *a2;
  v4 = (*a2 >> 5) & 0x7FFF800 ^ (v3 << 16) ^ v3;
  v5 = v4 + WORD2(*a2) + (v4 >> 11);
  v6 = (*a2 >> 37) & 0x7FFF800 ^ (v5 << 16) ^ v5;
  v7 = v6 + (v6 >> 11);
  *v2 = v7;
  v8 = a2[1];
  v9 = (v8 >> 5) & 0x7FFF800 ^ ((v7 + v8) << 16) ^ (v7 + v8);
  v10 = v9 + WORD2(v8) + (v9 >> 11);
  LODWORD(v8) = (v8 >> 37) & 0x7FFF800 ^ (v10 << 16);
  *v2 = (v8 ^ v10) + ((v8 ^ v10) >> 11);
  return result;
}

IPC::Encoder *IPC::Encoder::operator<<<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist> const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  v15 = *(a2 + 16);
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v15);
  if (v15)
  {
    if (v15 == 1 && *(a2 + 16) != 1)
    {
LABEL_20:
      mpark::throw_bad_variant_access(v4);
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      goto LABEL_20;
    }

    v6 = *(a2 + 8);
    if (v6)
    {
      v7 = *(v6 - 12);
    }

    else
    {
      v7 = 0;
    }

    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v7);
    v8 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin((a2 + 8));
    v9 = v8;
    v11 = v10;
    v12 = *(a2 + 8);
    if (v12)
    {
      v13 = (v12 + 32 * *(v12 - 4));
    }

    else
    {
      v13 = 0;
    }

    if (v13 != v8)
    {
      do
      {
        v16 = *(v9 + 24);
        IPC::Encoder::operator<<<BOOL>(a1, &v16);
        IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, v9, v16);
        do
        {
          v9 = (v9 + 32);
        }

        while (v9 != v11 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v9));
      }

      while (v9 != v13);
    }
  }

  return a1;
}

unsigned __int8 *WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::begin(unsigned __int8 **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v3 = *(result - 1);
  v4 = &result[24 * v3];
  if (!*(result - 3))
  {
    return &result[24 * v3];
  }

  if (v3)
  {
    v5 = 24 * v3;
    while (*result >= 0xFEu)
    {
      result += 24;
      v5 -= 24;
      if (!v5)
      {
        return v4;
      }
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::PermissionsPolicy::Feature>(IPC::Decoder *a1)
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
  if (v2 >= 0x12)
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

mpark *IPC::Decoder::decode<WebCore::Allowlist>(mpark *result, IPC::Decoder *a2)
{
  v4 = result;
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 2);
  v6 = *a2;
  v7 = *(a2 + 1);
  LODWORD(v8) = v5 - v6;
  if (v7 <= v5 - v6)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26)
    {
      if (v7)
      {
        (*(*v26 + 16))();
        v7 = *(a2 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_68:
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27 && v7)
    {
      v25 = *(*v27 + 16);
      goto LABEL_65;
    }

    goto LABEL_4;
  }

  LODWORD(v8) = v5 + 1;
  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_68;
  }

  LODWORD(v8) = *v5;
  if (v8 <= 1)
  {
    if (*v5)
    {
      if (!v6)
      {
        goto LABEL_63;
      }

      v10 = 0;
      LODWORD(v8) = 1;
      LOBYTE(v2) = 1;
      goto LABEL_37;
    }

    v11 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = ((v5 & 0xFFFFFFFFFFFFFFFCLL) + 4);
    v2 = v7 - (v12 - v6);
    if (v7 >= v12 - v6 && v2 > 3)
    {
      *(a2 + 2) = v11 + 8;
      if (v12)
      {
        v14 = *v12;
        v33 = 0;
        if (!v14)
        {
          result = 0;
          goto LABEL_36;
        }

        while (1)
        {
          v15 = IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a2, v34);
          if ((v37 & 1) == 0)
          {
            v6 = *a2;
            v16 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            v17 = *(a2 + 3);
            if (!v17 || v16 == 0)
            {
              goto LABEL_46;
            }

            v15 = (*(*v17 + 16))(v17, v6);
            if ((v37 & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          if (v36)
          {
            if (v36 != 1)
            {
              mpark::throw_bad_variant_access(v15);
            }
          }

          else if (v34[0] == -1 || !v34[0] && !v34[1] && (v35 & 1) == 0)
          {
            goto LABEL_45;
          }

          WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v34, &v33, &v31);
          LODWORD(v8) = v32;
          if ((v32 & 1) == 0)
          {
            break;
          }

          if (v37)
          {
            mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v34);
          }

          if (!--v14)
          {
            result = v33;
LABEL_36:
            v10 = 0;
            LODWORD(v8) = 0;
            LOBYTE(v2) = 0;
            goto LABEL_37;
          }
        }

        if (v37)
        {
LABEL_45:
          mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v34);
        }

LABEL_46:
        if (v33)
        {
          WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v33, v6);
        }

LABEL_48:
        v19 = *a2;
        v20 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v21 = *(a2 + 3);
        if (v21 && v20)
        {
          (*(*v21 + 16))(v21, v19);
        }

        goto LABEL_4;
      }

      v28 = v7;
      v8 = v6;
    }

    else
    {
      v28 = 0;
      v8 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v29 = *(a2 + 3);
      if (v29)
      {
        (*(*v29 + 16))(v29);
        v8 = *a2;
        v28 = *(a2 + 1);
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v30 = *(a2 + 3);
    if (v30 && v28)
    {
      (*(*v30 + 16))(v30, v8, v28);
    }

    goto LABEL_48;
  }

  while (1)
  {
LABEL_4:
    v6 = *a2;
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v9)
      {
        (*(*result + 16))(result, v6);
      }

      result = 0;
    }

    v10 = 1;
LABEL_37:
    if (!*a2)
    {
      break;
    }

    if (!v10)
    {
      if (v8)
      {
        *v4 = 0;
        *(v4 + 8) = v2;
      }

      else
      {
        *v4 = result;
        *(v4 + 8) = 0;
      }

      *(v4 + 16) = 1;
      return result;
    }

    __break(1u);
LABEL_63:
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    if (v24)
    {
      v25 = *(*v24 + 16);
LABEL_65:
      v25();
    }
  }

  *v4 = 0;
  *(v4 + 16) = 0;
  if (((v10 | v8) & 1) != 0 || !result || (result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(result, v6), (*(v4 + 16) & 1) == 0))
  {
    v22 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v22)
      {
        v23 = *(*result + 16);

        return v23();
      }
    }
  }

  return result;
}

mpark *WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebCore::Allowlist>(mpark *result, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v4 = *a3;
  if (v4 == 254)
  {
    __break(0xC471u);
    JUMPOUT(0x19D83D48CLL);
  }

  if (v4 == 255)
  {
    __break(0xC471u);
    JUMPOUT(0x19D83D4ACLL);
  }

  v8 = result;
  v9 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = 9 * ((~(v4 << 15) + v4) ^ ((~(v4 << 15) + v4) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v9 + 24 * v13);
  v15 = *v14;
  if (v15 != 255)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v23 = 0;
        v24 = v9 + 24 * *(v9 - 4);
        goto LABEL_47;
      }

      if (v15 == 254)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (v9 + 24 * v13);
      v15 = *v14;
      ++v17;
    }

    while (v15 != 255);
    if (v16)
    {
      *v16 = -1;
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
      --*(*a2 - 16);
      LOBYTE(v4) = *a3;
      v14 = v16;
    }
  }

  *v14 = v4;
  v18 = (v14 + 8);
  LOBYTE(v29) = 0;
  v30 = -1;
  v19 = *(a4 + 8);
  if (v19 != 255)
  {
    if (!*(a4 + 8))
    {
      v20 = *a4;
      *a4 = 0;
      v29 = v20;
    }

    v30 = v19;
  }

  v21 = v14[16];
  if (v21 == 255)
  {
    if (v19)
    {
      if (v19 == 255)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (v19)
    {
      if (v19 == 255)
      {
        if (!v14[16])
        {
          result = *v18;
          if (*v18)
          {
            result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(result, a2);
          }
        }

        v22 = -1;
        goto LABEL_37;
      }

      if (v21 == 1)
      {
        goto LABEL_40;
      }

      if (!v14[16])
      {
        result = *v18;
        if (*v18)
        {
          result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(result, a2);
        }
      }

LABEL_36:
      v22 = 1;
LABEL_37:
      v14[16] = v22;
      goto LABEL_40;
    }

    if (!v14[16])
    {
      result = *v18;
      *v18 = v29;
      if (!result)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  v31[0] = v14 + 8;
  v31[1] = &v29;
  result = mpark::detail::assignment<mpark::detail::traits<WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WebCore::Allowlist::AllowAllOrigins>>::assign_alt<0ul,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(mpark::detail::alt<0ul,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> &,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)::{unnamed type#1}::operator()(v31, a2);
  if (v30)
  {
    goto LABEL_40;
  }

  result = v29;
  if (!v29)
  {
    goto LABEL_40;
  }

LABEL_39:
  result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(result, a2);
LABEL_40:
  v25 = *a2;
  if (*a2)
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
    if (v28 <= 2 * v27)
    {
LABEL_44:
      result = WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::expand(a2, v14);
      v14 = result;
      v25 = *a2;
      if (*a2)
      {
        LODWORD(v28) = *(v25 - 4);
      }

      else
      {
        LODWORD(v28) = 0;
      }
    }
  }

  else if (3 * v28 <= 4 * v27)
  {
    goto LABEL_44;
  }

  v24 = v25 + 24 * v28;
  v23 = 1;
LABEL_47:
  *v8 = v14;
  *(v8 + 1) = v24;
  *(v8 + 16) = v23;
  return result;
}

void sub_19D83D4B8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, mpark *a9, char a10)
{
  if (!a10)
  {
    if (a9)
    {
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::expand(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  if (!*a1)
  {
    v4 = 0;
    v5 = 0;
LABEL_3:
    v6 = 8;
    goto LABEL_4;
  }

  v4 = *(v3 - 4);
  v5 = *(v3 - 12);
  if (!v4)
  {
    goto LABEL_3;
  }

  v6 = v4 << (6 * v5 >= 2 * v4);
LABEL_4:
  Table = WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::allocateTable(v6);
  *a1 = Table;
  *(Table - 8) = v6 - 1;
  *(Table - 4) = v6;
  *(Table - 16) = 0;
  *(Table - 12) = v5;
  if (v4)
  {
    v9 = 0;
    v10 = 0;
    v11 = v4;
    do
    {
      v12 = (v3 + 24 * v9);
      v13 = *v12;
      if (v13 != 254)
      {
        if (v13 == 255)
        {
          if (!v12[16])
          {
            v14 = *(v12 + 1);
            if (v14)
            {
              WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v14, v8);
            }
          }

          v12[16] = -1;
        }

        else
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = 0;
          v18 = 9 * ((~(v13 << 15) + v13) ^ ((~(v13 << 15) + v13) >> 10));
          v19 = ((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) ^ (((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) >> 16);
          do
          {
            v20 = v19 & v16;
            v21 = (v15 + 24 * v20);
            v19 = ++v17 + v20;
          }

          while (*v21 != 255);
          if (!v21[16])
          {
            v22 = *(v21 + 1);
            if (v22)
            {
              WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v22, v8);
              LOBYTE(v13) = *v12;
            }
          }

          *v21 = v13;
          v21[8] = 0;
          v21[16] = -1;
          v23 = v12[16];
          if (v23 != 255)
          {
            if (!v12[16])
            {
              *(v21 + 1) = 0;
              v24 = *(v12 + 1);
              *(v12 + 1) = 0;
              *(v21 + 1) = v24;
            }

            v21[16] = v23;
            if (!v12[16])
            {
              v25 = *(v12 + 1);
              if (v25)
              {
                WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v25, v8);
              }
            }
          }

          v12[16] = -1;
          if (v12 == a2)
          {
            v10 = v21;
          }
        }
      }

      ++v9;
    }

    while (v9 != v11);
  }

  else
  {
    v10 = 0;
    result = 0;
    if (!v3)
    {
      return result;
    }
  }

  WTF::fastFree((v3 - 16), v8);
  return v10;
}

uint64_t WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  v2 = WTF::fastMalloc((24 * a1 + 16));
  if (a1)
  {
    v3 = a1;
    v4 = (v2 + 24);
    do
    {
      *(v4 - 8) = -1;
      *v4 = 0;
      v4[1] = 0;
      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return v2 + 16;
}

mpark *mpark::detail::assignment<mpark::detail::traits<WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WebCore::Allowlist::AllowAllOrigins>>::assign_alt<0ul,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(mpark::detail::alt<0ul,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> &,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)::{unnamed type#1}::operator()(mpark *result, void *a2)
{
  v2 = *result;
  v3 = *(result + 1);
  if (!*(*result + 8))
  {
    result = *v2;
    if (*v2)
    {
      result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(result, a2);
    }
  }

  *v2 = 0;
  v4 = *v3;
  *v3 = 0;
  *v2 = v4;
  *(v2 + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return std::optional<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t std::optional<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D83D7F0(_Unwind_Exception *exception_object, void *a2)
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

WTF::StringImpl *IPC::Decoder::decode<WebCore::RsaOtherPrimesInfo>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v16);
  IPC::Decoder::decode<WTF::String>(a2, &v14);
  result = IPC::Decoder::decode<WTF::String>(a2, &v12);
  v6 = *a2;
  if (*a2)
  {
    if (v17)
    {
      v7 = v16;
      v16 = 0;
      if (v15)
      {
        v8 = v14;
        v14 = 0;
        if (v13)
        {
          v9 = v12;
          *a1 = v7;
          *(a1 + 8) = v8;
          *(a1 + 16) = v9;
          *(a1 + 24) = 1;
          goto LABEL_6;
        }
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (v13)
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

LABEL_6:
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

  if (v17 == 1 && (result = v16, v16 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
    if (v6)
    {
      return result;
    }
  }

  else if (v6)
  {
    return result;
  }

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

void sub_19D83D99C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
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

uint64_t std::optional<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D83DA38(_Unwind_Exception *exception_object, void *a2)
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

uint64_t *WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RsaOtherPrimesInfo>(unsigned int *a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = a1[3];
  v5 = v4 + 1;
  v6 = (*a1 + 24 * v4);
  v7 = *result;
  *result = 0;
  *v6 = v7;
  v8 = result[1];
  result[1] = 0;
  v6[1] = v8;
  v9 = result[2];
  result[2] = 0;
  v6[2] = v9;
  a1[3] = v5;
  return result;
}

unint64_t WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * a1[3] <= a3)
  {
    v10 = a1[2];
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

    WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = a1[2];
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

    WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D83DC4CLL);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 24 * *(result + 3));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(v2 + 2) = v5 / 0x18;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::RsaOtherPrimesInfo>::move(v3, v4, v6);
    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 2) = 0;
      }

      return WTF::fastFree(v3, v7);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::RsaOtherPrimesInfo>::move(WTF::StringImpl *result, WTF::StringImpl *a2, WTF::StringImpl **a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      v7 = v5[1];
      v5[1] = 0;
      a3[1] = v7;
      v8 = v5[2];
      v5[2] = 0;
      a3[2] = v8;
      v9 = v5[2];
      v5[2] = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }

      v10 = v5[1];
      v5[1] = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 3;
      v5 += 3;
    }

    while (v5 != a2);
  }

  return result;
}

mpark *IPC::ArgumentCoder<std::optional<WebCore::JsonWebKey>,void>::encode<IPC::Encoder,std::optional<WebCore::JsonWebKey> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 184))
  {
    v8 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if (*(a2 + 184))
    {
      return IPC::ArgumentCoder<WebCore::JsonWebKey,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&>(v5, v6, v7);
    }
  }

  else
  {
    v9 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v9);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&>(mpark *a1, WebCore::Color *a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 8))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&,0ul>(mpark *result, WebCore::Color *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 8) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WebCore::Color,void>::encode(result, a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 80 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebPlatformTouchPoint,void>::encode(a1, v6);
      v6 += 80;
      v7 -= 80;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v5 << 7;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebTouchEvent,void>::encode(a1, v6);
      v6 += 128;
      v7 -= 128;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::WebPlatformTouchPoint>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 3)
  {
    *(a2 + 2) = v4 + 1;
    if (!v4)
    {
      goto LABEL_33;
    }

    v53 = *v4 | 0x100000000;
    goto LABEL_8;
  }

  while (1)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v34 = *(a2 + 3);
    if (!v34)
    {
      v6 = 0;
LABEL_32:
      v5 = 0;
      goto LABEL_33;
    }

    if (!v6)
    {
      goto LABEL_32;
    }

    (*(*v34 + 16))(v34);
    v5 = *a2;
    v6 = *(a2 + 1);
LABEL_33:
    *a2 = 0;
    *(a2 + 1) = 0;
    v35 = *(a2 + 3);
    if (v35 && v6)
    {
      (*(*v35 + 16))(v35, v5);
    }

    v53 = 0;
LABEL_8:
    v50 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
    v52 = v8;
    v49 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
    v51 = v9;
    v10 = *(a2 + 1);
    v11 = *(a2 + 2);
    v12 = *a2;
    if (v10 <= &v11[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v36 = *(a2 + 3);
      if (v36)
      {
        if (v10)
        {
          (*(*v36 + 16))(v36);
          v10 = *(a2 + 1);
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v11 + 1;
      if (v11)
      {
        v13 = *v11;
        if (v13 < 5)
        {
          v14 = v13 | 0x100;
          goto LABEL_12;
        }

        goto LABEL_40;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v37 = *(a2 + 3);
    if (!v37)
    {
      v10 = 0;
LABEL_39:
      v12 = 0;
      goto LABEL_40;
    }

    if (!v10)
    {
      goto LABEL_39;
    }

    (*(*v37 + 16))(v37);
    v12 = *a2;
    v10 = *(a2 + 1);
LABEL_40:
    *a2 = 0;
    *(a2 + 1) = 0;
    v38 = *(a2 + 3);
    if (v38 && v10)
    {
      (*(*v38 + 16))(v38, v12);
    }

    v14 = 0;
LABEL_12:
    v48 = IPC::Decoder::decode<unsigned long long>(a2);
    v16 = v15;
    v47 = IPC::Decoder::decode<unsigned long long>(a2);
    v18 = v17;
    v46 = IPC::Decoder::decode<unsigned long long>(a2);
    v20 = v19;
    v45 = IPC::Decoder::decode<unsigned long long>(a2);
    v22 = v21;
    v44 = IPC::Decoder::decode<unsigned long long>(a2);
    v24 = v23;
    result = IPC::Decoder::decode<unsigned long long>(a2);
    v26 = result;
    v28 = v27;
    v6 = *(a2 + 1);
    v29 = *(a2 + 2);
    v30 = *a2;
    if (v6 <= &v29[-*a2])
    {
      break;
    }

    *(a2 + 2) = v29 + 1;
    if (!v29)
    {
      goto LABEL_46;
    }

    v31 = *v29;
    if (v31 >= 2)
    {
      goto LABEL_49;
    }

    v32 = 0;
    v33 = v31 != 0;
    if (!v30)
    {
      goto LABEL_60;
    }

LABEL_16:
    if ((v53 & 0x100000000) != 0 && (v52 & 1) != 0 && (v51 & 1) != 0 && v14 > 0xFF && (v16 & 1) != 0 && (v18 & 1) != 0 && (v20 & 1) != 0 && (v22 & 1) != 0 && (v24 & 1) != 0 && (v28 & 1) != 0 && !v32)
    {
      *a1 = v53;
      *(a1 + 4) = v50;
      *(a1 + 12) = v49;
      *(a1 + 20) = v14;
      *(a1 + 24) = v48;
      *(a1 + 32) = v47;
      *(a1 + 40) = v46;
      *(a1 + 48) = v45;
      *(a1 + 56) = v44;
      *(a1 + 64) = v26;
      *(a1 + 72) = v33;
      *(a1 + 80) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v39 = *(a2 + 3);
  if (v39)
  {
    if (v6)
    {
      (*(*v39 + 16))(v39);
      v6 = *(a2 + 1);
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_46:
  *a2 = 0;
  *(a2 + 1) = 0;
  v40 = *(a2 + 3);
  if (!v40)
  {
    v6 = 0;
    goto LABEL_48;
  }

  if (v6)
  {
    (*(*v40 + 16))(v40);
    v30 = *a2;
    v6 = *(a2 + 1);
  }

  else
  {
LABEL_48:
    v30 = 0;
  }

LABEL_49:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (!result)
  {
    v6 = 0;
    goto LABEL_61;
  }

  if (!v6)
  {
    goto LABEL_61;
  }

  (*(*result + 16))(result, v30);
  v6 = 0;
  result = *(a2 + 3);
  v41 = *a2;
  v42 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  if (!result || !v42)
  {
    goto LABEL_61;
  }

  result = (*(*result + 16))(result, v41, v42);
  v33 = 0;
  v32 = 1;
  if (*a2)
  {
    goto LABEL_16;
  }

LABEL_60:
  v6 = *(a2 + 1);
  result = *(a2 + 3);
LABEL_61:
  *a1 = 0;
  *(a1 + 80) = 0;
  *a2 = 0;
  *(a2 + 1) = 0;
  if (result && v6)
  {
    v43 = *(*result + 16);

    return v43();
  }

  return result;
}

unint64_t WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x3333334)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 80 * a2;
    v6 = WTF::fastMalloc((80 * a2));
    *(v2 + 8) = v5 / 0x50;
    *v2 = v6;
    if (v4)
    {
      v8 = 80 * v4;
      v9 = v3;
      do
      {
        *v6 = *v9;
        v10 = *(v9 + 1);
        v11 = *(v9 + 2);
        v12 = *(v9 + 4);
        v6[3] = *(v9 + 3);
        v6[4] = v12;
        v6[1] = v10;
        v6[2] = v11;
        v6 += 5;
        v9 = (v9 + 80);
        v8 -= 80;
      }

      while (v8);
    }

    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v2 = result;
    v3 = *(result + 12);
    if (v3 > a2)
    {
      *(result + 12) = a2;
      LODWORD(v3) = a2;
    }

    v4 = *result;
    if (a2)
    {
      if (a2 >= 0x3333334)
      {
        __break(0xC471u);
        return result;
      }

      v5 = 80 * a2;
      result = WTF::fastMalloc((80 * a2));
      *(v2 + 8) = v5 / 0x50;
      *v2 = result;
      if (v3 && result != v4)
      {
        v6 = 80 * v3;
        v7 = v4;
        do
        {
          *result = *v7;
          v8 = *(v7 + 1);
          v9 = *(v7 + 2);
          v10 = *(v7 + 4);
          *(result + 48) = *(v7 + 3);
          *(result + 64) = v10;
          *(result + 16) = v8;
          *(result + 32) = v9;
          result += 80;
          v7 = (v7 + 80);
          v6 -= 80;
        }

        while (v6);
      }
    }

    if (v4)
    {
      if (*v2 == v4)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebTouchEvent>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = WebKit::WebTouchEvent::WebTouchEvent(*a1 + (*(a1 + 12) << 7), v3);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + (*(a1 + 12) << 7) <= a3)
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

    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 25)
    {
      __break(0xC471u);
      JUMPOUT(0x19D83E7C4);
    }

    v4 = *a1;
    v5 = (*a1 + (*(a1 + 12) << 7));
    v6 = WTF::fastMalloc((a2 << 7));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::WebTouchEvent>::move(v4, v5, v6);
    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }
  }

  return 1;
}

uint64_t WTF::VectorMover<false,WebKit::WebTouchEvent>::move(uint64_t result, uint64_t (***a2)(uint64_t), uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    v7 = result;
    do
    {
      WebKit::WebTouchEvent::WebTouchEvent(a3, v5);
      v8 = *v7;
      v7 += 16;
      result = (*v8)(v5);
      a3 += 128;
      v6 += 128;
      v5 = v7;
    }

    while (v7 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      v5 = *result + (a2 << 7);
      v6 = (v4 << 7) - (a2 << 7);
      result = v5;
      v7 = (*v3 + (a2 << 7));
      do
      {
        v8 = *v7;
        v7 += 16;
        (*v8)(result);
        v5 += 128;
        result = v7;
        v6 -= 128;
      }

      while (v6);
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v9 = *v3;
    if (a2)
    {
      if (a2 >> 25)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((a2 << 7));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v9)
      {
        result = WTF::VectorMover<false,WebKit::WebTouchEvent>::move(v9, v9 + 16 * v4, result);
      }
    }

    if (v9)
    {
      if (*v3 == v9)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v9, a2);
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = 160 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebMouseEvent,void>::encode(a1, v6);
      v6 += 160;
      v7 -= 160;
    }

    while (v7);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::WebMouseEvent>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::WebMouseEvent,void>::decode(a1, a2);
  if ((a2[160] & 1) == 0)
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

void sub_19D83EA50(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 160) == 1)
  {
    *v2 = &unk_1F10E8378;
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 144, a2);
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 128, v4);
    v6 = *(v2 + 112);
    *(v2 + 112) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebMouseEvent>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = WebKit::WebMouseEvent::WebMouseEvent(*a1 + 160 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 160 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x199999A)
    {
      __break(0xC471u);
      JUMPOUT(0x19D83EC78);
    }

    v3 = *a1;
    v4 = (*a1 + 160 * *(a1 + 12));
    v5 = 160 * a2;
    v6 = WTF::fastMalloc((160 * a2));
    *(a1 + 8) = v5 / 0xA0;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::WebMouseEvent>::move(v3, v4, v6);
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

uint64_t WTF::VectorMover<false,WebKit::WebMouseEvent>::move(uint64_t result, uint64_t (***a2)(uint64_t), uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    v7 = result;
    do
    {
      WebKit::WebMouseEvent::WebMouseEvent(a3, v5);
      v8 = *v7;
      v7 += 20;
      result = (*v8)(v5);
      a3 += 160;
      v6 += 160;
      v5 = v7;
    }

    while (v7 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t this)
{
  if (*(result + 8) > this)
  {
    v3 = result;
    if (*(result + 12) > this)
    {
      result = WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, this);
    }

    v4 = *v3;
    if (this)
    {
      if (this >= 0x199999A)
      {
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 12);
      v6 = (160 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0xA0;
      *v3 = result;
      if (result != v4)
      {
        result = WTF::VectorMover<false,WebKit::WebMouseEvent>::move(v4, v4 + 20 * v5, result);
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

void (***WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(void (***result)(void), unint64_t a2))(void)
{
  v2 = *(result + 3);
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
      v5 = &(*result)[20 * a2];
      v6 = 160 * v2 - 160 * a2;
      result = v5;
      v7 = &(*v4)[20 * a2];
      do
      {
        v8 = *v7;
        v7 += 20;
        (*v8)(result);
        v5 += 160;
        result = v7;
        v6 -= 160;
      }

      while (v6);
    }

    *(v4 + 3) = v3;
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::optional<WebCore::FloatSize>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v8 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v8;
    goto LABEL_11;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_11:
    v9 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v9;
    goto LABEL_12;
  }

  v2 = *v1;
  if (v2 >= 2)
  {
LABEL_12:
    IPC::Decoder::markInvalid(a1);
    v3 = 0;
    v4 = 0;
    return v4 | v3;
  }

  if (v2)
  {
    v6 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
    v4 = v6 & 0xFFFFFFFFFFFFFF00;
    v3 = v6;
    if ((v7 & 1) == 0)
    {
      v3 = 0;
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::WebFoundTextRange::DOMData,WebKit::WebFoundTextRange::PDFData>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebFoundTextRange::DOMData,WebKit::WebFoundTextRange::PDFData> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebKit::WebFoundTextRange::DOMData,WebKit::WebFoundTextRange::PDFData>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebFoundTextRange::DOMData,WebKit::WebFoundTextRange::PDFData> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 32))
    {
      mpark::throw_bad_variant_access(a1);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
    v6 = *(a2 + 8);

    return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebKit::WebFoundTextRange::DOMData,WebKit::WebFoundTextRange::PDFData>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebFoundTextRange::DOMData,WebKit::WebFoundTextRange::PDFData> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 32) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WebKit::WebFoundTextRange::PDFData,void>::encode(result, a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::RemoteUserInputEventData>,void>::encode<IPC::Encoder,std::optional<WebCore::RemoteUserInputEventData> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<WebCore::RemoteUserInputEventData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::ResourceResponse>,void>::encode<IPC::Encoder,std::optional<WebCore::ResourceResponse> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::ArgumentCoder<std::optional<WebCore::ResourceResponse>,void>::encode<IPC::Encoder,std::optional<WebCore::ResourceResponse> const&>(IPC::Encoder *a1, WebCore::ResourceResponseBase *a2)
{
  if (*(a2 + 264))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 264))
    {
      IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a1, a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      IPC::ArgumentCoder<std::optional<WebCore::RemoteUserInputEventData>,void>::decode<IPC::Decoder>(v4, v5);
    }
  }

  else
  {
    v7 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::RemoteUserInputEventData>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = result[1];
  v5 = result[2];
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    result[1] = 0;
    v11 = result[3];
    if (v11)
    {
      if (v4)
      {
        (*(*v11 + 16))(v11);
        v4 = v2[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_15:
    *v2 = 0;
    v2[1] = 0;
    v12 = v2[3];
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
        v6 = *v2;
        v4 = v2[1];
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_18;
  }

  result[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    if (v7)
    {
      result = IPC::ArgumentCoder<WebCore::RemoteUserInputEventData,void>::decode(result, &v13);
      if (v14)
      {
        *a2 = v13;
        v8 = 1;
        *(a2 + 16) = 1;
      }

      else
      {
        v9 = *v2;
        v10 = v2[1];
        *v2 = 0;
        v2[1] = 0;
        result = v2[3];
        if (result)
        {
          if (v10)
          {
            result = (*(*result + 16))(result, v9);
          }
        }

        v8 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      v8 = 1;
    }

    *(a2 + 24) = v8;
    return result;
  }

LABEL_18:
  *v2 = 0;
  v2[1] = 0;
  result = v2[3];
  if (result && v4)
  {
    result = (*(*result + 16))(result, v6);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::ActivityState>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v3 = v2 - *a1;
  v4 = v1 >= v3;
  v5 = v1 - v3;
  if (!v4 || v5 <= 1)
  {
    v12 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v12;
LABEL_10:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_11;
  }

  *(a1 + 2) = v2 + 1;
  if (!v2)
  {
    goto LABEL_10;
  }

  v7 = *v2;
  if (v7 > 0x3FF)
  {
LABEL_11:
    v10 = 0;
    v9 = 0;
    v8 = 0;
    return v9 | v10 | v8;
  }

  v8 = v7 & 0x300;
  v9 = v7;
  v10 = 0x10000;
  return v9 | v10 | v8;
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<WebCore::FloatRect>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 2);
  if (*(result + 1) <= &v3[-*result])
  {
    v6 = result;
    IPC::Decoder::markInvalid(result);
    result = v6;
    goto LABEL_12;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
LABEL_12:
    v7 = result;
    IPC::Decoder::markInvalid(result);
    result = v7;
    goto LABEL_13;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_13:
    result = IPC::Decoder::markInvalid(result);
    *a2 = 0;
    a2[20] = 0;
    return result;
  }

  if (v4)
  {
    result = IPC::Decoder::decode<WebCore::FloatRect>(result, &v8);
    if (v9)
    {
      *a2 = v8;
      v5 = 1;
      a2[16] = 1;
    }

    else
    {
      v5 = 0;
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
    a2[16] = 0;
    v5 = 1;
  }

  a2[20] = v5;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PaginationMode,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
  }

  else
  {
    *(a1 + 2) = v1 + 1;
    if (v1)
    {
      v2 = *v1;
      v3 = 1;
      goto LABEL_4;
    }
  }

  IPC::Decoder::markInvalid(a1);
  v2 = 0;
  v3 = 0;
LABEL_4:
  v4 = v2 < 5;
  v5 = v2 | 0x100;
  if ((v3 & v4) != 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::MediaProducerMutedState>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
  }

  else
  {
    *(a1 + 2) = v1 + 1;
    if (v1)
    {
      v2 = *v1;
      v3 = 1;
      goto LABEL_4;
    }
  }

  IPC::Decoder::markInvalid(a1);
  v2 = 0;
  v3 = 0;
LABEL_4:
  v4 = v2 < 0x40;
  v5 = v2 | 0x100;
  if ((v3 & v4) != 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ScrollbarOverlayStyle>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v8 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_9:
    v9 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v9;
    goto LABEL_10;
  }

  v2 = *v1;
  if (v2 >= 2)
  {
LABEL_10:
    IPC::Decoder::markInvalid(a1);
    v5 = 0;
    v3 = 0;
    v4 = 0;
    return v3 | v4 | v5;
  }

  if (v2)
  {
    v7 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
    v5 = (v7 & 0x100) << 8;
    v3 = (v7 & ((v7 << 7) >> 15));
    v4 = 256;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0x10000;
  }

  return v3 | v4 | v5;
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<WebCore::ViewportArguments>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 2);
  if (*(result + 1) <= &v3[-*result])
  {
    v7 = result;
    IPC::Decoder::markInvalid(result);
    result = v7;
    goto LABEL_12;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
LABEL_12:
    v8 = result;
    IPC::Decoder::markInvalid(result);
    result = v8;
    goto LABEL_13;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_13:
    result = IPC::Decoder::markInvalid(result);
    *a2 = 0;
    *(a2 + 44) = 0;
    return result;
  }

  if (v4)
  {
    result = IPC::Decoder::decode<WebCore::ViewportArguments>(result, v9);
    if (v11)
    {
      v6 = v9[1];
      *a2 = v9[0];
      *(a2 + 16) = v6;
      *(a2 + 32) = v10;
      v5 = 1;
      *(a2 + 40) = 1;
    }

    else
    {
      v5 = 0;
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 40) = 0;
    v5 = 1;
  }

  *(a2 + 44) = v5;
  return result;
}

void *IPC::Decoder::decode<WebCore::ViewportArguments>@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::ViewportArguments,void>::decode(a1, a2);
  if ((*(a2 + 40) & 1) == 0)
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

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::LayoutMilestone>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v3 = v2 - *a1;
  v4 = v1 >= v3;
  v5 = v1 - v3;
  if (!v4 || v5 <= 1)
  {
    v13 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v13;
LABEL_13:
    IPC::Decoder::markInvalid(a1);
    v11 = 0;
    v10 = 0;
    v9 = 0;
    return v10 | v11 | v9;
  }

  *(a1 + 2) = v2 + 1;
  if (!v2)
  {
    goto LABEL_13;
  }

  v7 = *v2;
  v8 = (v7 & 0xFE08) == 0;
  v9 = v7 & 0x100;
  v10 = v7 & 0xF7;
  if ((v7 & 0xFE08) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x10000;
  }

  if (!v8)
  {
    v10 = 0;
    v9 = 0;
  }

  return v10 | v11 | v9;
}

uint64_t WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v26 = a4;
  WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(*a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a3 + 16);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a3);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = (v8 + 16 * (v11 & v9));
    v16 = *v15;
    if (!*v15)
    {
      if (v12)
      {
        *v12 = 0;
        v12[1] = 0;
        --*(*a2 - 16);
        v15 = v12;
      }

      result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(WTF::String &&,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&)::{lambda(void)#1}>( v15,  a3,  &v26);
      v18 = *a2;
      if (*a2)
      {
        v19 = *(v18 - 12) + 1;
      }

      else
      {
        v19 = 1;
      }

      *(v18 - 12) = v19;
      v20 = (*(v18 - 16) + v19);
      v21 = *(v18 - 4);
      if (v21 > 0x400)
      {
        if (v21 > 2 * v20)
        {
          goto LABEL_14;
        }
      }

      else if (3 * v21 > 4 * v20)
      {
LABEL_14:
        v22 = v18 + 16 * v21;
        v23 = 1;
        goto LABEL_15;
      }

      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, v15);
      v15 = result;
      v18 = *a2;
      if (*a2)
      {
        v21 = *(v18 - 4);
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_14;
    }

    if (v16 == -1)
    {
      v12 = (v8 + 16 * v14);
      goto LABEL_25;
    }

    result = WTF::equal(v16, *a3, v7);
    if (result)
    {
      break;
    }

LABEL_25:
    v11 = i + v14;
  }

  v24 = *a2;
  if (*a2)
  {
    v25 = *(v24 - 4);
  }

  else
  {
    v25 = 0;
  }

  v23 = 0;
  v22 = v24 + 16 * v25;
LABEL_15:
  *a1 = v15;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23;
  return result;
}

uint64_t WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19D83F950);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

WTF::StringImpl *WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(WTF::String &&,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&)::{lambda(void)#1}>(uint64_t a1, WTF::StringImpl *a2, void **a3)
{
  v5 = *a2;
  *a2 = 0;
  result = *a1;
  *a1 = v5;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  *(a1 + 8) = **a3;
  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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
  v11 = 0;
  if (v7)
  {
    v13 = v6;
    v14 = v7;
    do
    {
      if (*v13 != -1)
      {
        if (*v13)
        {
          v15 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(a1, v13);
          v16 = *v13;
          *v13 = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v10);
          }

          if (v13 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          *v13 = 0;
        }
      }

      v13 += 2;
      --v14;
    }

    while (v14);
    goto LABEL_15;
  }

  result = 0;
  if (v6)
  {
LABEL_15:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(uint64_t *a1, uint64_t a2)
{
  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, a2);
  v5 = *v4;
  *v4 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = *a2;
  *a2 = 0;
  *v4 = v6;
  *(v4 + 8) = *(a2 + 8);
  return v4;
}

void IPC::ArgumentCoder<std::optional<WebCore::ApplicationManifest>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 2);
  if (*(a1 + 1) <= &v3[-*a1])
  {
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v6;
    goto LABEL_11;
  }

  *(a1 + 2) = v3 + 1;
  if (!v3)
  {
LABEL_11:
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
    goto LABEL_12;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_12:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_13;
  }

  if (!v4)
  {
    LOBYTE(v8[0]) = 0;
    v9 = 0;
    std::__optional_move_base<WebCore::ApplicationManifest,false>::__optional_move_base[abi:sn200100](a2, v8);
    a2[280] = 1;
    if (v9 != 1)
    {
      return;
    }

LABEL_9:
    WebCore::ApplicationManifest::~ApplicationManifest(v8, v5);
    return;
  }

  IPC::Decoder::decode<WebCore::ApplicationManifest>(a1, v8);
  if (v9 != 1)
  {
LABEL_13:
    *a2 = 0;
    a2[280] = 0;
    return;
  }

  WebCore::ApplicationManifest::ApplicationManifest(a2, v8);
  a2[272] = 1;
  a2[280] = 1;
  if (v9)
  {
    goto LABEL_9;
  }
}

void sub_19D83FC54(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a44 == 1)
  {
    WebCore::ApplicationManifest::~ApplicationManifest(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebCore::ApplicationManifest>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ApplicationManifest,void>::decode(a1, a2);
  if ((a2[272] & 1) == 0)
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

void sub_19D83FCEC(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 272) == 1)
  {
    WebCore::ApplicationManifest::~ApplicationManifest(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebKit::WebExtensionControllerParameters>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::WebExtensionControllerParameters,void>::decode(a1, a2);
  if ((a1[32] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D83FD4C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 32) == 1)
  {
    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 16, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::StringImpl *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 3)
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
LABEL_35:
        *a2 = 0;
        *(a2 + 1) = 0;
        v19 = *(a2 + 3);
        if (v19 && v6)
        {
          (*(*v19 + 16))(v19, v5);
        }

        *v3 = 0;
        *(v3 + 24) = 0;
LABEL_26:
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

        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_35;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_35;
  }

  v8 = *v4;
  memset(v23, 0, 21);
  if (v8)
  {
    while (1)
    {
      IPC::Decoder::decode<WTF::String>(a2, &v21);
      if ((v22 & 1) == 0)
      {
        *v3 = 0;
        *(v3 + 24) = 0;
        goto LABEL_24;
      }

      v11 = v21;
      if (v21 + 1 <= 1)
      {
        *v3 = 0;
        *(v3 + 24) = 0;
        goto LABEL_20;
      }

      result = WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v23, &v21, v10, v20);
      if ((v20[16] & 1) == 0)
      {
        break;
      }

      if (v22 == 1)
      {
        result = v21;
        v21 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v9);
          }
        }
      }

      if (!--v8)
      {
        v12 = v23[0];
        v13 = v23[1];
        v14 = v23[2];
        v15 = BYTE4(v23[2]);
        goto LABEL_18;
      }
    }

    *v3 = 0;
    *(v3 + 24) = 0;
    if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }

    v11 = v21;
LABEL_20:
    v21 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

LABEL_24:
    if (v23[0])
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v23[0], LODWORD(v23[1]));
    }

    goto LABEL_26;
  }

  v15 = 0;
  v14 = 0;
  v12 = 0;
  v13 = 0;
LABEL_18:
  *v3 = v12;
  *(v3 + 1) = v13;
  *(v3 + 4) = v14;
  *(v3 + 20) = v15;
  *(v3 + 24) = 1;
  return result;
}

void sub_19D83FFB4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, char a13, WTF::StringImpl **a14, unsigned int a15)
{
  if ((a13 & 1) != 0 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(a14, a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t a1@<X0>, WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (20 * v7 >= 19 * v8 || v8 <= 2 * v7 && (*(a1 + 20) & 1) != 0)
  {
    if (v8)
    {
      v9 = 2 * v8;
    }

    else
    {
      v9 = 8;
    }

    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(a1, v9);
    v8 = *(a1 + 8);
  }

  v10 = v8 - 1;
  v11 = *(a1 + 16);
  v12 = *(*a2 + 4);
  if (v12 < 0x100)
  {
    v13 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v13 = v12 >> 8;
  }

  v14 = (v13 ^ v11) & v10;
  v15 = (*a1 + 8 * v14);
  v16 = *v15;
  if (*v15)
  {
    v35 = a4;
    v17 = 0;
    while (1)
    {
      v18 = *(v16 + 4);
      v19 = v18 < 0x100 ? WTF::StringImpl::hashSlowCase(v16) : v18 >> 8;
      v20 = (v14 + v8 - ((v19 ^ v11) & v10)) & v10;
      if (v17 > v20)
      {
        break;
      }

      if (v19 == v13)
      {
        result = WTF::equal(*v15, *a2, a3);
        v22 = *a1;
        if (result)
        {
          v34 = 0;
          a4 = v35;
          goto LABEL_43;
        }
      }

      else
      {
        v22 = *a1;
      }

      v14 = (v14 + 1) & v10;
      ++v17;
      v15 = (v22 + 8 * v14);
      v16 = *v15;
      if (!*v15)
      {
        if (v17 >= 0x80)
        {
          *(a1 + 20) = 1;
        }

        a4 = v35;
        goto LABEL_39;
      }
    }

    if (v17 >= 0x80)
    {
      *(a1 + 20) = 1;
    }

    v23 = *v15;
    *v15 = 0;
    v24 = *a2;
    *a2 = 0;
    v25 = *v15;
    *v15 = v24;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, a2);
    }

    for (i = v14 + 1; ; i = v27 + 1)
    {
      v27 = i & v10;
      v28 = (*a1 + 8 * (i & v10));
      result = *v28;
      if (!*v28)
      {
        break;
      }

      v29 = *(result + 16);
      if (v29 < 0x100)
      {
        v30 = WTF::StringImpl::hashSlowCase(result);
      }

      else
      {
        v30 = v29 >> 8;
      }

      if (++v20 > ((v27 + v8 - ((v30 ^ v11) & v10)) & v10))
      {
        v31 = *v28;
        *v28 = v23;
        v23 = v31;
        v20 = (v27 + v8 - ((v30 ^ v11) & v10)) & v10;
      }
    }

    *v28 = v23;
    a4 = v35;
  }

  else
  {
LABEL_39:
    v32 = *a2;
    *a2 = 0;
    result = *v15;
    *v15 = v32;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }
  }

  ++*(a1 + 12);
  v22 = *a1;
  v34 = 1;
LABEL_43:
  v33 = v22 + 8 * *(a1 + 8);
  *a4 = v15;
  *(a4 + 8) = v33;
  *(a4 + 16) = v34;
  return result;
}

void sub_19D840274(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  result = WTF::fastZeroedMalloc((8 * a2));
  *a1 = result;
  *(a1 + 8) = a2;
  v8 = (~(result << 32) + result) ^ ((~(result << 32) + result) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  *(a1 + 16) = (v10 >> 31) ^ v10;
  *(a1 + 20) = 0;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v12 = *(v5 + i);
      if (v12)
      {
        v13 = *(a1 + 8);
        v14 = *(a1 + 16);
        v15 = *(v12 + 4);
        if (v15 < 0x100)
        {
          v16 = WTF::StringImpl::hashSlowCase(v12);
        }

        else
        {
          v16 = v15 >> 8;
        }

        v17 = v13 - 1;
        v18 = (v16 ^ v14) & (v13 - 1);
        v19 = (*a1 + 8 * v18);
        v20 = *v19;
        if (*v19)
        {
          v21 = 0;
          do
          {
            v22 = *(v20 + 4);
            if (v22 < 0x100)
            {
              v23 = WTF::StringImpl::hashSlowCase(v20);
            }

            else
            {
              v23 = v22 >> 8;
            }

            if (v21 > ((v18 + v13 - ((v23 ^ v14) & v17)) & v17))
            {
              v24 = *(v5 + i);
              *(v5 + i) = *v19;
              *v19 = v24;
              v21 = (v18 + v13 - ((v23 ^ v14) & v17)) & v17;
            }

            v18 = (v18 + 1) & v17;
            ++v21;
            v19 = (*a1 + 8 * v18);
            v20 = *v19;
          }

          while (*v19);
        }

        v25 = *(v5 + i);
        *(v5 + i) = 0;
        v26 = *v19;
        *v19 = v25;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v7);
        }

        v27 = *(v5 + i);
        *(v5 + i) = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v7);
        }
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  return WTF::fastFree(v5, v7);
}

uint64_t IPC::Decoder::decode<std::pair<unsigned short,unsigned short>>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = ((a1[2] + 1) & 0xFFFFFFFFFFFFFFFELL);
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 1)
  {
    a1[2] = (v3 + 1);
    if (v3)
    {
      v9 = *v3;
      v10 = ((v3 + 3) & 0xFFFFFFFFFFFFFFFELL);
      v1 = v2 - (v10 - v4);
      if (v2 < v10 - v4 || v2 - (v10 - v4) <= 1)
      {
        goto LABEL_15;
      }

      v1 = v10 + 2;
      a1[2] = (v10 + 1);
      if (v10)
      {
        v1 = (v9 | (*v10 << 16)) >> 8;
        v12 = 1;
        return v9 | ((*&v1 & 0xFFFFFFLL) << 8) | (v12 << 32);
      }
    }

    v19 = a1;
    goto LABEL_18;
  }

LABEL_15:
  *a1 = 0;
  a1[1] = 0;
  v19 = a1;
  v14 = a1[3];
  if (!v14)
  {
    v2 = 0;
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  if (!v2)
  {
    goto LABEL_17;
  }

  (*(*v14 + 16))(v14);
  v4 = *v19;
  v2 = v19[1];
LABEL_18:
  *v19 = 0;
  v19[1] = 0;
  v15 = v19[3];
  if (v15 && v2)
  {
    (*(*v15 + 16))(v15, v4);
  }

  v16 = *v19;
  v17 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  v18 = v19[3];
  if (v18 && v17)
  {
    (*(*v18 + 16))(v18, v16);
  }

  v12 = 0;
  LOBYTE(v9) = 0;
  return v9 | ((*&v1 & 0xFFFFFFLL) << 8) | (v12 << 32);
}

uint64_t IPC::ArgumentCoder<WebCore::HighlightVisibility,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v6;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 2)
  {
LABEL_8:
    IPC::Decoder::markInvalid(a1);
    v3 = 0;
    v4 = 0;
    return v4 | v3;
  }

  v3 = v2 != 0;
  v4 = 256;
  return v4 | v3;
}

void IPC::Decoder::decode<WebKit::RemotePageParameters>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::URL>(a2, &v33);
  IPC::Decoder::decode<WebKit::FrameTreeCreationParameters>(&v27, a2);
  IPC::Decoder::decode<std::optional<WebKit::WebsitePoliciesData>>(v25, a2);
  if (!*a2)
  {
    goto LABEL_31;
  }

  if ((v36 & 1) == 0 || (v5 = v33, v33 = 0, v17 = v5, v18 = v34, v19 = v35, LODWORD(v34) = v34 & 0xFFFFFFFE, (v32 & 1) == 0) || (v20 = v27, v21 = v28, v6 = v29, v29 = 0uLL, *v22 = v6, v23[0] = v30, *&v6 = v31, v30 = 0, v31 = 0, v23[1] = v6, (v26 & 1) == 0))
  {
    __break(1u);
LABEL_31:
    *a1 = 0;
    a1[224] = 0;
    goto LABEL_15;
  }

  std::__optional_move_base<WebKit::WebsitePoliciesData,false>::__optional_move_base[abi:sn200100](v24, v25);
  WebKit::RemotePageParameters::RemotePageParameters(a1, &v17);
  a1[224] = 1;
  if (v24[120] == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v24, v7);
  }

  WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23, v7);
  v8 = v22[1];
  v22[1] = 0;
  if (v8)
  {
    WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v8, v4);
  }

  v9 = v22[0];
  v22[0] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  v10 = v17;
  v17 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

LABEL_15:
  if (v26 == 1 && v25[120] == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v25, v4);
  }

  if (v32 == 1)
  {
    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v4);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = 0;
    if (v11)
    {
      WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v11, v4);
    }

    v12 = v29;
    *&v29 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v4);
    }
  }

  if (v36 == 1)
  {
    v13 = v33;
    v33 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v4);
      }
    }
  }

  if ((a1[224] & 1) == 0)
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
        (*(*v16 + 16))(v16, v14);
      }
    }
  }
}

void sub_19D8408B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18, bmalloc::api *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, int a57, __int16 a58, char a59, char a60)
{
  if (*(v60 + 224) == 1)
  {
    if (*(v60 + 216) == 1)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData((v60 + 96), a2);
    }

    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v60 + 80, a2);
    v63 = *(v60 + 72);
    *(v60 + 72) = 0;
    if (v63)
    {
      WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v63, v62);
    }

    v64 = *(v60 + 64);
    *(v60 + 64) = 0;
    if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v64, v62);
    }

    v65 = *v60;
    *v60 = 0;
    if (v65)
    {
      if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v62);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WebKit::ProvisionalFrameCreationParameters>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::ProvisionalFrameCreationParameters,void>::decode(a2, a1);
  if ((*(a1 + 56) & 1) == 0)
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

uint64_t IPC::Decoder::decode<WebCore::WindowFeatures>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::WindowFeatures,void>::decode(a2, a1);
  if ((a1[80] & 1) == 0)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
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

void sub_19D840B50(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 80) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 64, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 1);
  v6 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 - *this;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8 || v9 <= 7)
  {
    IPC::Decoder::markInvalid(this);
LABEL_36:
    result = IPC::Decoder::markInvalid(this);
    *a3 = 0;
    *(a3 + 16) = 0;
    return result;
  }

  *(this + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_36;
  }

  v11 = *v6;
  v32 = 0;
  v33 = 0;
  if (v11 < 0xAAAA)
  {
    if (!v11)
    {
LABEL_29:
      *a3 = v32;
      v26 = v33;
      v32 = 0;
      v33 = 0;
      *(a3 + 8) = v26;
      *(a3 + 16) = 1;
      return WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, a2);
    }

    LODWORD(v33) = 24 * v11 / 0x18u;
    v32 = WTF::fastMalloc((24 * v11));
    while (1)
    {
      IPC::Decoder::decode<WebCore::LinkDecorationFilteringData>(this, &v28);
      if ((v31 & 1) == 0)
      {
        *a3 = 0;
        *(a3 + 16) = 0;
        return WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, a2);
      }

      if (HIDWORD(v33) != v33)
      {
        break;
      }

      WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::LinkDecorationFilteringData>(&v32, &v28);
      if (v31)
      {
        goto LABEL_13;
      }

LABEL_16:
      if (!--v11)
      {
        goto LABEL_29;
      }
    }

    v12 = HIDWORD(v33) + 1;
    v13 = (v32 + 24 * HIDWORD(v33));
    v14 = v28;
    v28 = 0;
    *v13 = v14;
    v15 = v29;
    v29 = 0;
    v13[1] = v15;
    v16 = v30;
    v30 = 0;
    v13[2] = v16;
    HIDWORD(v33) = v12;
LABEL_13:
    v17 = v30;
    v30 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, a2);
    }

    v18 = v29;
    v29 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, a2);
    }

    v19 = v28;
    v28 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, a2);
      }
    }

    goto LABEL_16;
  }

  while (1)
  {
    IPC::Decoder::decode<WebCore::LinkDecorationFilteringData>(this, &v28);
    if ((v31 & 1) == 0)
    {
      break;
    }

    if (HIDWORD(v33) == v33)
    {
      WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::LinkDecorationFilteringData>(&v32, &v28);
    }

    else
    {
      v21 = HIDWORD(v33) + 1;
      v22 = (v32 + 24 * HIDWORD(v33));
      v23 = v28;
      v28 = 0;
      *v22 = v23;
      v24 = v29;
      v29 = 0;
      v22[1] = v24;
      v25 = v30;
      v30 = 0;
      v22[2] = v25;
      HIDWORD(v33) = v21;
    }

    std::optional<WebCore::LinkDecorationFilteringData>::~optional(&v28, v20);
    if (!--v11)
    {
      WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v32, HIDWORD(v33));
      goto LABEL_29;
    }
  }

  *a3 = 0;
  *(a3 + 16) = 0;
  std::optional<WebCore::LinkDecorationFilteringData>::~optional(&v28, v20);
  return WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, a2);
}

void sub_19D840DE4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::optional<WebCore::LinkDecorationFilteringData>::~optional(&a9, a2);
  WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, v14);
  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::LinkDecorationFilteringData>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::LinkDecorationFilteringData,void>::decode(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t std::optional<WebCore::LinkDecorationFilteringData>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::LinkDecorationFilteringData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = v4 + 1;
  v6 = (*a1 + 24 * v4);
  v7 = *v3;
  *v3 = 0;
  *v6 = v7;
  v8 = v3[1];
  v3[1] = 0;
  v6[1] = v8;
  v9 = v3[2];
  v3[2] = 0;
  v6[2] = v9;
  *(a1 + 12) = v5;
  return 1;
}

unint64_t WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0xAAAAAAB)
  {
    v2 = result;
    v3 = *result;
    v4 = (*result + 24 * *(result + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(v2 + 8) = v5 / 0x18;
    *v2 = v6;
    WTF::VectorMover<false,WebCore::RsaOtherPrimesInfo>::move(v3, v4, v6);
    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t this)
{
  if (*(result + 8) > this)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebCore::LinkDecorationFilteringData>::destruct((*result + 24 * this), (*result + 24 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0xAAAAAAB)
      {
        __break(0xC471u);
        JUMPOUT(0x19D8411DCLL);
      }

      v6 = (24 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x18;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::RsaOtherPrimesInfo>::move(v5, (v5 + 24 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, this);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::LinkDecorationFilteringData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[2];
      v3[2] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = v3[1];
      v3[1] = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  if (*(a2 + 3))
  {
    v5 = *a2;
    v6 = *(a2 + 2);
    if (v6)
    {
      v7 = 24 * v6;
      for (i = *a2; !*i; i += 24)
      {
        v7 -= 24;
        if (!v7)
        {
          return result;
        }
      }
    }

    else
    {
      i = *a2;
    }

    v9 = v5 + 24 * v6;
LABEL_9:
    if (i != v9)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, i);
      v10 = *(i + 16);
      IPC::Encoder::operator<<<BOOL>(a1, &v10);
      result = IPC::ArgumentCoder<mpark::variant<WTF::String,BOOL,unsigned int,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,BOOL,unsigned int,double> const&>(a1, (i + 8), v10);
      while (1)
      {
        i += 24;
        if (i == v9)
        {
          break;
        }

        if (*i)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::String,BOOL,unsigned int,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,BOOL,unsigned int,double> const&>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::String,BOOL,unsigned int,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,BOOL,unsigned int,double> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (a2[8])
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::String,BOOL,unsigned int,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,BOOL,unsigned int,double> const&,0ul>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (a2[8] != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::Encoder::operator<<<BOOL>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::String,BOOL,unsigned int,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,BOOL,unsigned int,double> const&,0ul,1ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::String,BOOL,unsigned int,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,BOOL,unsigned int,double> const&,0ul,1ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 8) != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::String,BOOL,unsigned int,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,BOOL,unsigned int,double> const&,0ul,1ul,2ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::String,BOOL,unsigned int,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,BOOL,unsigned int,double> const&,0ul,1ul,2ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (*(a2 + 8) != 3)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(result, v4);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<mpark::variant<WTF::String,BOOL,unsigned int,double>,void>::decode<IPC::Decoder,0ul,1ul>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  if (a3 == 2)
  {
    result = IPC::Decoder::decode<float>(a2);
    if ((result & 0x100000000) != 0)
    {
      *a1 = result;
      v6 = 2;
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    *a1 = 0;
    goto LABEL_5;
  }

  result = IPC::Decoder::decode<unsigned long long>(a2);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  *a1 = result;
  v6 = 3;
LABEL_4:
  *(a1 + 8) = v6;
  v7 = 1;
LABEL_5:
  *(a1 + 16) = v7;
  return result;
}

WTF::StringImpl *WTF::HashMapTranslator<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>(WTF::String &&,mpark::variant<WTF::String,BOOL,unsigned int,double> &&)::{lambda(void)#1}>(uint64_t a1, WTF::StringImpl *a2, _BYTE **a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1>::move_constructor(&v9, *a3);
  result = mpark::variant<WTF::String,BOOL,unsigned int,double>::operator=((a1 + 8), &v9);
  if (!v10)
  {
    result = v9;
    v9 = 0;
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

void sub_19D841560(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (!a10 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(uint64_t a1, unsigned int a2)
{
  v29 = *(a1 + 8);
  v4 = *a1;
  result = WTF::fastMalloc((24 * a2));
  if (a2)
  {
    v7 = a2;
    v8 = result;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      v8 += 24;
      --v7;
    }

    while (v7);
  }

  *a1 = result;
  *(a1 + 8) = a2;
  v9 = (~(result << 32) + result) ^ ((~(result << 32) + result) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  *(a1 + 16) = (v11 >> 31) ^ v11;
  *(a1 + 20) = 0;
  if (v29)
  {
    v12 = 0;
    v28 = v4;
    do
    {
      v13 = (v4 + 24 * v12);
      v14 = *v13;
      if (*v13)
      {
        v15 = *(a1 + 8);
        v16 = *(a1 + 16);
        v17 = *(v14 + 4);
        if (v17 < 0x100)
        {
          v18 = WTF::StringImpl::hashSlowCase(v14);
        }

        else
        {
          v18 = v17 >> 8;
        }

        v19 = v15 - 1;
        v20 = (v18 ^ v16) & (v15 - 1);
        v21 = (*a1 + 24 * v20);
        v22 = *v21;
        if (*v21)
        {
          v24 = 0;
          do
          {
            v25 = *(v22 + 4);
            if (v25 < 0x100)
            {
              v26 = WTF::StringImpl::hashSlowCase(v22);
            }

            else
            {
              v26 = v25 >> 8;
            }

            v27 = (v20 + v15 - ((v26 ^ v16) & v19)) & v19;
            if (v24 > v27)
            {
              std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>(v13, v21);
              v24 = v27;
            }

            v20 = (v20 + 1) & v19;
            ++v24;
            v21 = (*a1 + 24 * v20);
            v22 = *v21;
            v4 = v28;
          }

          while (*v21);
        }

        WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>(v21, v13);
      }

      mpark::detail::copy_constructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1>::~copy_constructor(v13 + 8, v6);
      v23 = *v13;
      *v13 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v6);
      }

      ++v12;
    }

    while (v12 != v29);
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree(v4, v6);
}

unsigned __int8 *WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return mpark::variant<WTF::String,BOOL,unsigned int,double>::operator=((a1 + 8), a2 + 8);
}

uint64_t std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v13 = v4;
  mpark::detail::move_constructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1>::move_constructor(&v14, (a1 + 8));
  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  mpark::variant<WTF::String,BOOL,unsigned int,double>::operator=((a1 + 8), (a2 + 8));
  v9 = *a2;
  *a2 = v13;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  mpark::variant<WTF::String,BOOL,unsigned int,double>::operator=((a2 + 8), &v14);
  if (!v15)
  {
    v11 = v14;
    v14 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }
    }
  }

  v15 = -1;
  return 0;
}

void sub_19D841940(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>::~KeyValuePair(va, a2);
  _Unwind_Resume(a1);
}

unsigned __int8 *mpark::variant<WTF::String,BOOL,unsigned int,double>::operator=(unsigned __int8 *a1, _BYTE *a2)
{
  v3 = a1[8];
  v4 = a2[8];
  if (v3 == 255)
  {
    if (v4 == 255)
    {
      return a1;
    }
  }

  else if (v4 == 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1> &>(&v7, a1);
    a1[8] = -1;
    return a1;
  }

  v6 = a1;
  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6StringEbjdEEEE14generic_assignINS0_15move_assignmentIS8_LNS0_5TraitE1EEEEEvOT_EUlRSE_OT0_E_JRS9_SD_EEEDcmSF_DpOT0_(v4, &v6, a1, a2);
  return a1;
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6StringEbjdEEEE14generic_assignINS0_15move_assignmentIS8_LNS0_5TraitE1EEEEEvOT_EUlRSE_OT0_E_JRS9_SD_EEEDcmSF_DpOT0_(uint64_t a1, WTF::StringImpl *a2, _BYTE *a3, _BYTE *a4)
{
  v4 = *(*a2 + 8);
  if (a1 == 1)
  {
    if (v4 == 1)
    {
      *a3 = *a4;
    }

    else
    {
      v7 = *a2;
      v8 = a4;
      mpark::detail::assignment<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>>::assign_alt<1ul,BOOL,BOOL>(mpark::detail::alt<1ul,BOOL> &,BOOL &&)::{unnamed type#1}::operator()(&v7, a2);
    }
  }

  else if (a1)
  {
    if (a1 == 2)
    {
      if (v4 == 2)
      {
        *a3 = *a4;
      }

      else
      {
        v7 = *a2;
        v8 = a4;
        mpark::detail::assignment<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>>::assign_alt<2ul,unsigned int,unsigned int>(mpark::detail::alt<2ul,unsigned int> &,unsigned int &&)::{unnamed type#1}::operator()(&v7, a2);
      }
    }

    else if (v4 == 3)
    {
      *a3 = *a4;
    }

    else
    {
      v7 = *a2;
      v8 = a4;
      mpark::detail::assignment<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>>::assign_alt<3ul,double,double>(mpark::detail::alt<3ul,double> &,double &&)::{unnamed type#1}::operator()(&v7, a2);
    }
  }

  else if (*(*a2 + 8))
  {
    v7 = *a2;
    v8 = a4;
    mpark::detail::assignment<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>>::assign_alt<0ul,WTF::String,WTF::String>(mpark::detail::alt<0ul,WTF::String> &,WTF::String &&)::{unnamed type#1}::operator()(&v7, a2);
  }

  else
  {
    v5 = *a4;
    *a4 = 0;
    v6 = *a3;
    *a3 = v5;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      WTF::StringImpl::destroy(v6, a2);
    }
  }
}

WTF::StringImpl *mpark::detail::assignment<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>>::assign_alt<0ul,WTF::String,WTF::String>(mpark::detail::alt<0ul,WTF::String> &,WTF::String &&)::{unnamed type#1}::operator()(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  v2 = *result;
  v3 = *(result + 1);
  if (!*(*result + 8))
  {
    result = *v2;
    *v2 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }
  }

  v4 = *v3;
  *v3 = 0;
  *v2 = v4;
  *(v2 + 8) = 0;
  return result;
}

WTF::StringImpl *mpark::detail::assignment<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>>::assign_alt<1ul,BOOL,BOOL>(mpark::detail::alt<1ul,BOOL> &,BOOL &&)::{unnamed type#1}::operator()(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  v2 = *result;
  v3 = *(result + 1);
  if (!*(*result + 8))
  {
    result = *v2;
    *v2 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }
  }

  *v2 = *v3;
  *(v2 + 8) = 1;
  return result;
}

WTF::StringImpl *mpark::detail::assignment<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>>::assign_alt<2ul,unsigned int,unsigned int>(mpark::detail::alt<2ul,unsigned int> &,unsigned int &&)::{unnamed type#1}::operator()(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  v2 = *result;
  v3 = *(result + 1);
  if (!*(*result + 8))
  {
    result = *v2;
    *v2 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }
  }

  *v2 = *v3;
  *(v2 + 8) = 2;
  return result;
}

double mpark::detail::assignment<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>>::assign_alt<3ul,double,double>(mpark::detail::alt<3ul,double> &,double &&)::{unnamed type#1}::operator()(void *a1, WTF::StringImpl *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (!*(*a1 + 8))
  {
    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  result = *v3;
  *v2 = *v3;
  *(v2 + 8) = 3;
  return result;
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1>::move_constructor(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  result[8] = -1;
  v2 = a2[8];
  if (v2 == 1)
  {
    *result = *a2;
LABEL_3:
    result[8] = v2;
    return result;
  }

  if (a2[8] <= 1u)
  {
    v3 = *a2;
    *a2 = 0;
    *result = v3;
    goto LABEL_3;
  }

  if (v2 == 2)
  {
    *result = *a2;
    goto LABEL_3;
  }

  if (v2 == 3)
  {
    *result = *a2;
    goto LABEL_3;
  }

  return result;
}

void *WTF::HashTableConstIterator<WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>,WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>>::skipEmptyBuckets(void *result)
{
  v1 = result[1];
  if (*result != v1)
  {
    v2 = (*result + 5);
    do
    {
      v3 = *(v2 - 5);
      v4 = *(v2 - 1);
      if (v3)
      {
        v5 = 0;
      }

      else
      {
        v5 = v4 == 0;
      }

      if (v5)
      {
        if (*v2)
        {
          return result;
        }
      }

      else if (v3 || (v4 & 1) == 0 || (*v2 & 1) == 0)
      {
        return result;
      }

      v6 = v2 + 11;
      *result = v2 + 11;
      v2 += 16;
    }

    while (v6 != v1);
  }

  return result;
}

uint64_t WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(uint64_t result, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *result;
  if (*result != *(result + 8))
  {
    v4 = result;
    do
    {
      result = WTF::equal(*v3, 0, a3);
      if ((result & 1) == 0 && *v3 != -1)
      {
        break;
      }

      v5 = v4[1];
      v3 = (*v4 + 16);
      *v4 = v3;
    }

    while (v3 != v5);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebKit::TextCheckerState>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
  }

  else
  {
    *(a1 + 2) = v1 + 1;
    if (v1)
    {
      v2 = *v1;
      v3 = 1;
      goto LABEL_4;
    }
  }

  IPC::Decoder::markInvalid(a1);
  v2 = 0;
  v3 = 0;
LABEL_4:
  v4 = v2 < 4;
  v5 = v2 | 0x100;
  if ((v3 & v4) != 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

WTF::StringImpl *WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<BOOL>(uint64_t a1, uint64_t *a2, WTF::StringImpl **a3, _BYTE *a4)
{
  if (*a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D841FA0);
  }

  if (!*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D841FC0);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a3 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a3);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = v8 + 16 * (v11 & v9);
    v16 = *v15;
    if (*v15 != -1)
    {
      break;
    }

    v12 = (v8 + 16 * v14);
LABEL_14:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*a2 - 16);
      v15 = v12;
    }

    v18 = *a3;
    *a3 = 0;
    result = *v15;
    *v15 = v18;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }

    *(v15 + 8) = *a4;
    v19 = *a2;
    if (*a2)
    {
      v20 = *(v19 - 12) + 1;
    }

    else
    {
      v20 = 1;
    }

    *(v19 - 12) = v20;
    v21 = (*(v19 - 16) + v20);
    v22 = *(v19 - 4);
    if (v22 > 0x400)
    {
      if (v22 <= 2 * v21)
      {
LABEL_24:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, v15);
        v15 = result;
        v19 = *a2;
        if (*a2)
        {
          v22 = *(v19 - 4);
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else if (3 * v22 <= 4 * v21)
    {
      goto LABEL_24;
    }

    v23 = v19 + 16 * v22;
    v24 = 1;
    goto LABEL_30;
  }

  result = WTF::equal(v16, *a3, a3);
  if (!result)
  {
    goto LABEL_14;
  }

  v25 = *a2;
  if (*a2)
  {
    v26 = *(v25 - 4);
  }

  else
  {
    v26 = 0;
  }

  v24 = 0;
  v23 = v25 + 16 * v26;
LABEL_30:
  *a1 = v15;
  *(a1 + 8) = v23;
  *(a1 + 16) = v24;
  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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
  v11 = 0;
  if (v7)
  {
    v12 = v6;
    v13 = v7;
    do
    {
      if (*v12 != -1)
      {
        if (*v12)
        {
          v14 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, v12);
          v15 = *v14;
          *v14 = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v10);
          }

          v16 = *v12;
          *v12 = 0;
          *v14 = v16;
          *(v14 + 8) = *(v12 + 8);
          v17 = *v12;
          *v12 = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v10);
          }

          if (v12 == a3)
          {
            v11 = v14;
          }
        }

        else
        {
          *v12 = 0;
        }
      }

      v12 += 16;
      --v13;
    }

    while (v13);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

void IPC::Decoder::decode<WebKit::WebProcessDataStoreParameters>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::WebProcessDataStoreParameters,void>::decode(a1, a2);
  if ((*(a2 + 96) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a1);
  }
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<float>(a2);
  if ((result & 0x100000000) == 0)
  {
    *a1 = 0;
    a1[8] = 0;
    return result;
  }

  v6 = result;
  v47 = 0;
  if (!result)
  {
    v43 = 0;
LABEL_70:
    *a1 = v43;
    a1[8] = 1;
    return result;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(a2 + 1);
    v9 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v10 = *a2;
    v11 = v9 - *a2;
    v12 = v8 >= v11;
    v13 = v8 - v11;
    if (v12 && v13 > 3)
    {
      v15 = (v9 + 1);
      *(a2 + 2) = v9 + 1;
      if (v9)
      {
        v16 = *v9 | 0x100000000;
        goto LABEL_11;
      }
    }

    else
    {
      IPC::Decoder::markInvalid(a2);
    }

    IPC::Decoder::markInvalid(a2);
    v16 = 0;
    v8 = *(a2 + 1);
    v15 = *(a2 + 2);
    v10 = *a2;
LABEL_11:
    if (v8 <= &v15[-v10])
    {
      IPC::Decoder::markInvalid(a2);
LABEL_90:
      IPC::Decoder::markInvalid(a2);
      v18 = 0;
      goto LABEL_91;
    }

    v17 = v15 + 1;
    *(a2 + 2) = v15 + 1;
    if (!v15)
    {
      goto LABEL_90;
    }

    v18 = *v15;
    if (v18 < 2)
    {
      v19 = 1;
      goto LABEL_15;
    }

LABEL_91:
    IPC::Decoder::markInvalid(a2);
    v19 = 0;
    v8 = *(a2 + 1);
    v17 = *(a2 + 2);
    v10 = *a2;
LABEL_15:
    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v8 <= &v17[-v10])
    {
      IPC::Decoder::markInvalid(a2);
LABEL_93:
      IPC::Decoder::markInvalid(a2);
      v21 = 0;
      goto LABEL_94;
    }

    *(a2 + 2) = v17 + 1;
    if (!v17)
    {
      goto LABEL_93;
    }

    v21 = *v17;
    if (v21 < 2)
    {
      v22 = 1;
      goto LABEL_22;
    }

LABEL_94:
    IPC::Decoder::markInvalid(a2);
    v22 = 0;
    v10 = *a2;
LABEL_22:
    if (!v10)
    {
      IPC::Decoder::markInvalid(a2);
      *a1 = 0;
      a1[8] = 0;
      goto LABEL_84;
    }

    if ((v16 & 0x100000000) == 0 || (v19 & 1) == 0 || (v22 & 1) == 0)
    {
      __break(1u);
LABEL_73:
      result = v10 & 0xFFFFFFFFFFFFLL;
      if (atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, v5);
      }

      goto LABEL_60;
    }

    v23 = v21 != 0;
    v24 = v20 ? 0x100000000 : 0;
    result = IPC::Decoder::decode<WebCore::Color>(a2, &v45);
    if ((v46 & 1) == 0)
    {
      break;
    }

    if (v16)
    {
      v25 = HIDWORD(v24);
    }

    else if (v20)
    {
      if (v21)
      {
        break;
      }

      LODWORD(v25) = 1;
    }

    else
    {
      if (!v21)
      {
        break;
      }

      LODWORD(v25) = 0;
    }

    v26 = v47;
    if (v47 || (result = WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>::expand(&v47), (v26 = v47) != 0))
    {
      v27 = *(v26 - 8);
    }

    else
    {
      v27 = 0;
    }

    v5 = 0;
    v28 = v24 & 0xFFFFFEFF00000000 | v16 | ((v21 != 0) << 40);
    v29 = 1;
    v30 = v16;
    while (1)
    {
      v31 = v30 & v27;
      v32 = v26 + 16 * v31;
      v33 = *v32;
      v34 = *(v32 + 4);
      v35 = !*v32 && v34 == 0;
      if (v35 && !*(v32 + 5))
      {
        break;
      }

      v36 = v33 == v16 && v34 == v25;
      if (v36 && *(v32 + 5) == (v23 & 0xFFFFFF))
      {
        goto LABEL_83;
      }

      if (!v33 && (v34 & 1) != 0)
      {
        if (*(v32 + 5))
        {
          v5 = (v26 + 16 * v31);
        }
      }

      v30 = v29 + v31;
      ++v29;
    }

    if (v5)
    {
      *v5 = xmmword_19E703050;
      --*(v47 - 16);
      *v5 = v28;
      v38 = v45;
      v45 = 0;
    }

    else
    {
      v37 = *(v32 + 8);
      *v32 = v28;
      v38 = v45;
      v45 = 0;
      if ((v37 & 0x8000000000000) != 0)
      {
        result = v37 & 0xFFFFFFFFFFFFLL;
        if (atomic_fetch_add((v37 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, 0);
        }
      }

      v5 = v32;
    }

    v5[1] = v38;
    v39 = v47;
    if (v47)
    {
      v40 = *(v47 - 12) + 1;
    }

    else
    {
      v40 = 1;
    }

    *(v47 - 12) = v40;
    v41 = (*(v39 - 16) + v40);
    v42 = *(v39 - 4);
    if (v42 > 0x400)
    {
      if (v42 <= 2 * v41)
      {
LABEL_63:
        result = WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>::expand(&v47);
      }
    }

    else if (3 * v42 <= 4 * v41)
    {
      goto LABEL_63;
    }

    if (v46 == 1)
    {
      v10 = v45;
      if ((v45 & 0x8000000000000) != 0)
      {
        goto LABEL_73;
      }
    }

LABEL_60:
    if (++v7 == v6)
    {
      v43 = v47;
      goto LABEL_70;
    }
  }

LABEL_83:
  *a1 = 0;
  a1[8] = 0;
  std::optional<WebCore::Color>::~optional(&v45, v5);
LABEL_84:
  result = v47;
  if (v47)
  {
    return WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>::deallocateTable(v47, v44);
  }

  return result;
}