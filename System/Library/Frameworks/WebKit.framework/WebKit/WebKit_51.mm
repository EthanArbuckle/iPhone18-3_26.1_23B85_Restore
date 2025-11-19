uint64_t IPC::ArgumentCoder<WebCore::VideoProjectionMetadataKind,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v9 = a1[3];
    if (v9)
    {
      if (v1)
      {
        (*(*v9 + 16))(v9);
        v3 = *v11;
        v1 = v11[1];
        goto LABEL_11;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_11;
  }

  a1[2] = (v2 + 1);
  if (v2)
  {
    v4 = *v2;
    v5 = 1;
    goto LABEL_4;
  }

  v11 = a1;
LABEL_11:
  *v11 = 0;
  v11[1] = 0;
  v10 = v11[3];
  if (v10 && v1)
  {
    (*(*v10 + 16))(v10, v3);
  }

  v4 = 0;
  v5 = 0;
LABEL_4:
  v6 = v4 < 7;
  v7 = v4 | 0x100;
  if ((v5 & v6) != 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

IPC::Decoder *IPC::ArgumentCoder<WTF::RefPtr<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,void>::decode<IPC::Decoder,WTF::JSONImpl::Value>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
LABEL_19:
    *v2 = 0;
    *(v2 + 1) = 0;
    v9 = *(v2 + 3);
    if (v9)
    {
      if (v4)
      {
        (*(*v9 + 16))(v9);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_21:
    *v2 = 0;
    *(v2 + 1) = 0;
    v10 = *(v2 + 3);
    if (v10)
    {
      if (v4)
      {
        (*(*v10 + 16))(v10);
        v6 = *v2;
        v4 = *(v2 + 1);
LABEL_24:
        *v2 = 0;
        *(v2 + 1) = 0;
        result = *(v2 + 3);
        if (result && v4)
        {
          result = (*(*result + 16))(result, v6);
        }

        *a2 = 0;
        a2[8] = 0;
        return result;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_24;
  }

  *(result + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_21;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_24;
  }

  if (!v7)
  {
    *a2 = 0;
    goto LABEL_15;
  }

  result = IPC::Decoder::decode<WTF::String>(result, &v13);
  if (!*v2)
  {
    LOBYTE(v11) = 0;
    v12 = 0;
    goto LABEL_8;
  }

  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  result = WTF::JSONImpl::Value::optionalParseJSON();
LABEL_8:
  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  *a2 = 0;
  a2[8] = 0;
  if (v12 == 1)
  {
    *a2 = v11;
LABEL_15:
    a2[8] = 1;
  }

  return result;
}

void sub_19D8255F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::SpatialVideoMetadata>,void>::encode<IPC::Encoder,std::optional<WebCore::SpatialVideoMetadata> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 20))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 20))
    {
      return IPC::ArgumentCoder<WebCore::SpatialVideoMetadata,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::VideoProjectionMetadata>,void>::encode<IPC::Encoder,std::optional<WebCore::VideoProjectionMetadata> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::VideoProjectionMetadata>,void>::encode<IPC::Encoder,std::optional<WebCore::VideoProjectionMetadata> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
      return IPC::ArgumentCoder<WTF::RefPtr<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,void>::encode<IPC::Encoder,WTF::JSONImpl::Value>(a1, (a2 + 8));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::SpatialVideoMetadata>,void>::decode<IPC::Decoder>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::SpatialVideoMetadata>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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
      result = IPC::ArgumentCoder<WebCore::SpatialVideoMetadata,void>::decode(result, &v13);
      if (v15)
      {
        *a2 = v13;
        *(a2 + 16) = v14;
        v8 = 1;
        *(a2 + 20) = 1;
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
      *(a2 + 20) = 0;
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

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::VideoProjectionMetadata>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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
      result = IPC::ArgumentCoder<WebCore::VideoProjectionMetadata,void>::decode(result, v13);
      if (v15)
      {
        *a2 = v13[0];
        *(a2 + 8) = v14;
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

uint64_t WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::ContentExtensions::ModifyHeadersAction>::destruct(*a1, (*a1 + 48 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t *WTF::VectorDestructor<true,WebCore::ContentExtensions::ModifyHeadersAction>::destruct(uint64_t *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction::ModifyHeaderInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 3, a2);
      result = WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction::ModifyHeaderInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 1, v4);
      v3 += 6;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t *WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction::ModifyHeaderInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t *a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 3);
  v4 = *a1;
  if (v3)
  {
    v5 = 24 * v3;
    while (*(v4 + 16) > 1u)
    {
      if (*(v4 + 16) == 2)
      {
        goto LABEL_8;
      }

LABEL_11:
      *(v4 + 16) = -1;
      v4 += 24;
      v5 -= 24;
      if (!v5)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }

    v6 = *(v4 + 8);
    *(v4 + 8) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

LABEL_8:
    v7 = *v4;
    *v4 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    goto LABEL_11;
  }

LABEL_13:
  if (v4)
  {
    *a1 = 0;
    *(a1 + 2) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 32 * v5;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<WebCore::ContentRuleListResults::Result,void>::encode(a1, (v6 + 8));
      v6 += 32;
    }

    while (v6 != v7);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v62);
  if (v63 != 1)
  {
    goto LABEL_57;
  }

  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (v5 <= &v6[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v37 = *(a2 + 3);
    if (v37)
    {
      if (v5)
      {
        (*(*v37 + 16))(v37);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_70:
    *a2 = 0;
    *(a2 + 1) = 0;
    v38 = *(a2 + 3);
    if (v38)
    {
      if (v5)
      {
        (*(*v38 + 16))(v38);
        v9 = 0;
        v7 = *a2;
        v5 = *(a2 + 1);
        goto LABEL_73;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    v9 = 0;
    goto LABEL_73;
  }

  v8 = v6 + 1;
  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_70;
  }

  v9 = *v6;
  if (v9 < 2)
  {
    v10 = 1;
    goto LABEL_6;
  }

LABEL_73:
  *a2 = 0;
  *(a2 + 1) = 0;
  v39 = *(a2 + 3);
  if (!v39 || !v5)
  {
    v57 = 0;
    v40 = 0;
    v7 = 0;
LABEL_75:
    *a2 = 0;
    *(a2 + 1) = 0;
    v41 = *(a2 + 3);
    if (v41 && v40)
    {
      (*(*v41 + 16))(v41, v7, v40);
      v13 = 0;
      v7 = *a2;
      v5 = *(a2 + 1);
    }

    else
    {
      v5 = 0;
      v7 = 0;
      v13 = 0;
    }

    goto LABEL_77;
  }

  (*(*v39 + 16))(v39, v7);
  v10 = 0;
  v7 = *a2;
  v5 = *(a2 + 1);
  v8 = *(a2 + 2);
LABEL_6:
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(v57) = v11;
  BYTE4(v57) = v10;
  if (v5 <= v8 - v7)
  {
    v40 = 0;
    v52 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v5 && v52)
    {
      (*(*v52 + 16))(v52);
      v7 = *a2;
      v40 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_75;
  }

  v12 = v8 + 1;
  *(a2 + 2) = v8 + 1;
  if (!v8)
  {
    v40 = v5;
    goto LABEL_75;
  }

  v13 = *v8;
  if (v13 < 2)
  {
    v14 = 1;
    goto LABEL_13;
  }

LABEL_77:
  *a2 = 0;
  *(a2 + 1) = 0;
  v42 = *(a2 + 3);
  if (!v42 || !v5)
  {
    v56 = 0;
    v14 = 0;
    v43 = 0;
    v7 = 0;
LABEL_79:
    *a2 = 0;
    *(a2 + 1) = 0;
    v44 = *(a2 + 3);
    if (v44 && v43)
    {
      (*(*v44 + 16))(v44, v7, v43);
      v17 = 0;
      v7 = *a2;
      v5 = *(a2 + 1);
    }

    else
    {
      v5 = 0;
      v7 = 0;
      v17 = 0;
    }

    goto LABEL_81;
  }

  (*(*v42 + 16))(v42, v7);
  v14 = 0;
  v7 = *a2;
  v5 = *(a2 + 1);
  v12 = *(a2 + 2);
LABEL_13:
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v56 = v15;
  if (v5 <= v12 - v7)
  {
    v43 = 0;
    v53 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v5 && v53)
    {
      (*(*v53 + 16))(v53);
      v7 = *a2;
      v43 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_79;
  }

  v16 = v12 + 1;
  *(a2 + 2) = v12 + 1;
  if (!v12)
  {
    v43 = v5;
    goto LABEL_79;
  }

  v17 = *v12;
  if (v17 < 2)
  {
    v18 = 1;
    goto LABEL_20;
  }

LABEL_81:
  *a2 = 0;
  *(a2 + 1) = 0;
  v45 = *(a2 + 3);
  if (!v45 || !v5)
  {
    v19 = 0;
    v18 = 0;
    v46 = 0;
    v7 = 0;
LABEL_83:
    *a2 = 0;
    *(a2 + 1) = 0;
    v47 = *(a2 + 3);
    if (v47 && v46)
    {
      (*(*v47 + 16))(v47, v7, v46);
      v21 = 0;
      v7 = *a2;
      v5 = *(a2 + 1);
    }

    else
    {
      v5 = 0;
      v7 = 0;
      v21 = 0;
    }

    goto LABEL_85;
  }

  (*(*v45 + 16))(v45, v7);
  v18 = 0;
  v7 = *a2;
  v5 = *(a2 + 1);
  v16 = *(a2 + 2);
LABEL_20:
  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v5 <= v16 - v7)
  {
    v46 = 0;
    v54 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v5 && v54)
    {
      (*(*v54 + 16))(v54);
      v7 = *a2;
      v46 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_83;
  }

  v20 = v16 + 1;
  *(a2 + 2) = v16 + 1;
  if (!v16)
  {
    v46 = v5;
    goto LABEL_83;
  }

  v21 = *v16;
  if (v21 < 2)
  {
    v22 = 1;
    goto LABEL_27;
  }

LABEL_85:
  *a2 = 0;
  *(a2 + 1) = 0;
  v48 = *(a2 + 3);
  if (!v48 || !v5)
  {
    v23 = 0;
    v22 = 0;
    v49 = 0;
    v7 = 0;
LABEL_87:
    *a2 = 0;
    *(a2 + 1) = 0;
    v50 = *(a2 + 3);
    if (v50 && v49)
    {
      (*(*v50 + 16))(v50, v7, v49);
      v24 = 0;
      v7 = *a2;
      v5 = *(a2 + 1);
    }

    else
    {
      v5 = 0;
      v7 = 0;
      v24 = 0;
    }

    goto LABEL_89;
  }

  (*(*v48 + 16))(v48, v7);
  v22 = 0;
  v7 = *a2;
  v5 = *(a2 + 1);
  v20 = *(a2 + 2);
LABEL_27:
  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v5 <= v20 - v7)
  {
    v49 = 0;
    v55 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v5 && v55)
    {
      (*(*v55 + 16))(v55);
      v7 = *a2;
      v49 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_87;
  }

  *(a2 + 2) = v20 + 1;
  if (!v20)
  {
    v49 = v5;
    goto LABEL_87;
  }

  v24 = *v20;
  if (v24 < 2)
  {
    v25 = 1;
    goto LABEL_34;
  }

LABEL_89:
  *a2 = 0;
  *(a2 + 1) = 0;
  v51 = *(a2 + 3);
  if (v51 && v5)
  {
    (*(*v51 + 16))(v51, v7);
  }

  v25 = 0;
LABEL_34:
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v67);
  v29 = *a2;
  if (*a2)
  {
    if ((v57 & 0x100000000) == 0 || (LOBYTE(v64) = v57, (v14 & 1) == 0) || (BYTE1(v64) = v56, (v18 & 1) == 0) || (BYTE2(v64) = v19, (v22 & 1) == 0) || (HIBYTE(v64) = v23, (v25 & 1) == 0) || (v65 = v26, (v68 & 1) == 0))
    {
LABEL_56:
      __break(1u);
LABEL_57:
      *a1 = 0;
      *(a1 + 32) = 0;
LABEL_58:
      v33 = *a2;
      v34 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (result)
      {
        v35 = v34 == 0;
      }

      else
      {
        v35 = 1;
      }

      if (!v35)
      {
        return (*(*result + 16))(result, v33);
      }

      return result;
    }

    *&v28 = 0;
    v2 = *(&v67 + 1);
    v26 = v67;
    v67 = v28;
    v58 = v64;
    v59 = v65;
    v66 = v28;
    v60[0] = v26;
    v61 = 1;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v66, v27);
  }

  else
  {
    LOBYTE(v58) = 0;
    v61 = 0;
  }

  if (v68 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67, v27);
  }

  if (v29)
  {
    if (v63)
    {
      v30 = v62;
      v62 = 0;
      *a1 = v30;
      *(a1 + 8) = v58;
      *(a1 + 12) = v59;
      v60[0] = 0;
      v60[1] = 0;
      *(a1 + 16) = v26;
      *(a1 + 24) = v2;
      *(a1 + 32) = 1;
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v60, v27);
      goto LABEL_50;
    }

    goto LABEL_56;
  }

  v32 = *a2;
  v36 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v36)
  {
    result = (*(*result + 16))(result, v32);
  }

  *a1 = 0;
  *(a1 + 32) = 0;
LABEL_50:
  if (v63)
  {
    result = v62;
    v62 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v32);
      }
    }
  }

  if (!v29)
  {
    goto LABEL_58;
  }

  return result;
}

void sub_19D826414(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16)
{
  if ((a16 & 1) != 0 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<WTF::String,WebCore::ContentRuleListResults::Result>::pair[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  LODWORD(v3) = *(a2 + 2);
  v4 = *(a2 + 12);
  *(a1 + 16) = 0;
  *(a1 + 12) = v4;
  *(a1 + 8) = v3;
  *(a1 + 24) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
  return a1;
}

void sub_19D8264F0(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
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

unint64_t WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * a1[3] <= a3)
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

    WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
      JUMPOUT(0x19D826694);
    }

    v3 = result;
    v4 = *result;
    v5 = (*result + 32 * *(result + 3));
    v6 = WTF::fastMalloc((32 * a2));
    *(v3 + 2) = v2;
    *v3 = v6;
    result = WTF::VectorMover<false,std::pair<WTF::String,WebCore::ContentRuleListResults::Result>>::move(v4, v5, v6);
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

  return result;
}

WTF::StringImpl *WTF::VectorMover<false,std::pair<WTF::String,WebCore::ContentRuleListResults::Result>>::move(WTF::StringImpl *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      std::pair<WTF::String,WebCore::ContentRuleListResults::Result>::pair[abi:sn200100](a3, v5);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v5 + 2), v6);
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v7);
        }
      }

      a3 += 32;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
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
    v36 = *(a1 + 3);
    if (v36)
    {
      if (v4)
      {
        (*(*v36 + 16))(v36);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_40;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_40:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v4)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v11 = *v5;
  v40 = 0;
  v41 = 0;
  if (v11 < 0x10000)
  {
    if (!v11)
    {
LABEL_22:
      *a2 = v40;
      v23 = v41;
      v40 = 0;
      v41 = 0;
      *(a2 + 8) = v23;
      *(a2 + 16) = 1;
      return WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v6);
    }

    LODWORD(v41) = v11;
    v40 = WTF::fastMalloc((16 * v11));
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,WTF::String>>(a1, &v37);
      if ((v39 & 1) == 0)
      {
        goto LABEL_36;
      }

      if (HIDWORD(v41) != v41)
      {
        break;
      }

      v12 = WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v40, HIDWORD(v41) + 1, &v37);
      v13 = HIDWORD(v41) + 1;
      v14 = (v40 + 16 * HIDWORD(v41));
      v15 = *v12;
      *v12 = 0;
      *v14 = v15;
      v16 = v12[1];
      v12[1] = 0;
      v14[1] = v16;
      HIDWORD(v41) = v13;
      if (v39)
      {
        goto LABEL_15;
      }

LABEL_21:
      if (!--v11)
      {
        goto LABEL_22;
      }
    }

    v17 = HIDWORD(v41) + 1;
    v18 = (v40 + 16 * HIDWORD(v41));
    v19 = v37;
    v37 = 0;
    *v18 = v19;
    v20 = v38;
    v38 = 0;
    v18[1] = v20;
    HIDWORD(v41) = v17;
LABEL_15:
    v21 = v38;
    v38 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v6);
    }

    v22 = v37;
    v37 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v6);
    }

    goto LABEL_21;
  }

  while (1)
  {
    IPC::Decoder::decode<std::pair<WTF::String,WTF::String>>(a1, &v37);
    if ((v39 & 1) == 0)
    {
      break;
    }

    if (HIDWORD(v41) != v41)
    {
      v29 = HIDWORD(v41) + 1;
      v30 = (v40 + 16 * HIDWORD(v41));
      v31 = v37;
      v37 = 0;
      *v30 = v31;
      v32 = v38;
      v38 = 0;
      v30[1] = v32;
      HIDWORD(v41) = v29;
LABEL_28:
      v33 = v38;
      v38 = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v6);
      }

      v34 = v37;
      v37 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v6);
      }

      goto LABEL_34;
    }

    v24 = WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v40, HIDWORD(v41) + 1, &v37);
    v25 = HIDWORD(v41) + 1;
    v26 = (v40 + 16 * HIDWORD(v41));
    v27 = *v24;
    *v24 = 0;
    *v26 = v27;
    v28 = v24[1];
    v24[1] = 0;
    v26[1] = v28;
    HIDWORD(v41) = v25;
    if (v39)
    {
      goto LABEL_28;
    }

LABEL_34:
    if (!--v11)
    {
      WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v40, HIDWORD(v41));
      goto LABEL_22;
    }
  }

LABEL_36:
  *a2 = 0;
  *(a2 + 16) = 0;
  return WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v6);
}

void sub_19D826A0C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12 == 1)
  {
    if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }

    if (a10)
    {
      if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a10, a2);
      }
    }
  }

  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<std::pair<WTF::String,WTF::String>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::pair<WTF::String,WTF::String>,void>::decode<IPC::Decoder>(a1, a2);
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

void sub_19D826AF0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
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
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<std::pair<WTF::String,WTF::String>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v9);
  if (v10 == 1)
  {
    result = IPC::Decoder::decode<WTF::String>(a1, &v7);
    if (v8)
    {
      if (v10)
      {
        v6 = v7;
        *a2 = v9;
        *(a2 + 8) = v6;
        *(a2 + 16) = 1;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      if (v10)
      {
        result = v9;
        v9 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v5);
          }
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_19D826BFC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 28))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    memcpy(v6, v4, 16 * v5);
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

unsigned int *WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > a2)
    {
      result = WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct((*result + 16 * a2), (*result + 16 * v4));
      v3[3] = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (v3[2])
      {
        v3[2] = a2;
        result = WTF::fastRealloc(v5, (16 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((16 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v5)
      {
        result = memcpy(result, v5, 16 * v4);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Region>(uint64_t a1, unint64_t a2)
{
  WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = WebCore::Region::Region();
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D827038);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::Region>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebCore::Region>::move(WebCore::Region *a1, WebCore::Region *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WebCore::Region::Region();
      WebCore::Region::~Region(v5);
      a3 += 24;
      v5 = (v5 + 24);
    }

    while (v5 != a2);
  }
}

void WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *a1, unint64_t this)
{
  if (a1[2] > this)
  {
    if (a1[3] > this)
    {
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, this);
    }

    v4 = *a1;
    if (this)
    {
      if (this >= 0xAAAAAAB)
      {
        __break(0xC471u);
        return;
      }

      v5 = a1[3];
      v6 = (24 * this);
      v7 = WTF::fastMalloc(v6);
      a1[2] = v6 / 0x18;
      *a1 = v7;
      if (v7 != v4)
      {
        WTF::VectorMover<false,WebCore::Region>::move(v4, (v4 + 24 * v5), v7);
      }
    }

    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        a1[2] = 0;
      }

      WTF::fastFree(v4, this);
    }
  }
}

unsigned int *WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, unint64_t a2)
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
      result = (*result + 24 * a2);
      v5 = 24 * v2 - 24 * a2;
      do
      {
        WebCore::Region::~Region(result);
        result = (v6 + 24);
        v5 -= 24;
      }

      while (v5);
    }

    v4[3] = v3;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 24 * v3;
    do
    {
      WebCore::Region::~Region(v6);
      v6 = (v8 + 24);
      v7 -= 24;
    }

    while (v7);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 48 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::MediaControlsContextMenuItem,void>::encode(a1, v6);
      v6 += 48;
      v7 -= 48;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, char *a2@<X8>)
{
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

    goto LABEL_46;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_46:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v4)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    a2[16] = 0;
    return result;
  }

  v11 = *v5;
  v39 = 0;
  v40 = 0;
  if (v11 >= 0x5555)
  {
    v12 = *a2;
    v13 = a2[16];
    do
    {
      IPC::Decoder::decode<WebCore::MediaControlsContextMenuItem>(a1, &v31);
      v21 = v38;
      if (v38)
      {
        if (HIDWORD(v40) == v40)
        {
          WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MediaControlsContextMenuItem>(&v39, &v31);
        }

        else
        {
          v22 = v39 + 48 * HIDWORD(v40);
          *v22 = v31;
          v23 = v32;
          v32 = 0;
          *(v22 + 8) = v23;
          v24 = v33;
          v33 = 0;
          *(v22 + 16) = v24;
          *(v22 + 24) = v34;
          *(v22 + 32) = 0;
          *(v22 + 40) = 0;
          v25 = v35;
          v35 = 0;
          *(v22 + 32) = v25;
          LODWORD(v25) = v36;
          v36 = 0;
          *(v22 + 40) = v25;
          LODWORD(v25) = v37;
          v37 = 0;
          *(v22 + 44) = v25;
          ++HIDWORD(v40);
        }
      }

      else
      {
        v13 = 0;
        v12 = 0;
      }

      if (v38 == 1)
      {
        WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v6);
        v26 = v33;
        v33 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v6);
        }

        v27 = v32;
        v32 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v6);
        }
      }

      if ((v21 & 1) == 0)
      {
LABEL_25:
        *a2 = v12;
        a2[16] = v13;
        return WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v6);
      }

      --v11;
    }

    while (v11);
    *a2 = v12;
    a2[16] = v13;
    WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v39, HIDWORD(v40));
  }

  else if (v11)
  {
    LODWORD(v40) = 48 * v11 / 0x30u;
    v39 = WTF::fastMalloc((48 * v11));
    v12 = *a2;
    v13 = a2[16];
    do
    {
      IPC::Decoder::decode<WebCore::MediaControlsContextMenuItem>(a1, &v31);
      v14 = v38;
      if (v38)
      {
        if (HIDWORD(v40) == v40)
        {
          WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MediaControlsContextMenuItem>(&v39, &v31);
        }

        else
        {
          v15 = v39 + 48 * HIDWORD(v40);
          *v15 = v31;
          v16 = v32;
          v32 = 0;
          *(v15 + 8) = v16;
          v17 = v33;
          v33 = 0;
          *(v15 + 16) = v17;
          *(v15 + 24) = v34;
          *(v15 + 32) = 0;
          *(v15 + 40) = 0;
          v18 = v35;
          v35 = 0;
          *(v15 + 32) = v18;
          LODWORD(v18) = v36;
          v36 = 0;
          *(v15 + 40) = v18;
          LODWORD(v18) = v37;
          v37 = 0;
          *(v15 + 44) = v18;
          ++HIDWORD(v40);
        }
      }

      else
      {
        v13 = 0;
        v12 = 0;
      }

      if (v38 != 1)
      {
        goto LABEL_21;
      }

      WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v6);
      v19 = v33;
      v33 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v6);
      }

      v20 = v32;
      v32 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v6);
        if ((v14 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
LABEL_21:
        if ((v14 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      --v11;
    }

    while (v11);
  }

  *a2 = v39;
  v28 = v40;
  v39 = 0;
  v40 = 0;
  *(a2 + 1) = v28;
  a2[16] = 1;
  return WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v6);
}

void sub_19D82766C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  *v20 = v23;
  v20[16] = v22;
  if (a16 == 1)
  {
    WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21 + 32, a2);
    if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }

    if (a11)
    {
      if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a11, a2);
      }
    }
  }

  WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a18, a2);
  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::MediaControlsContextMenuItem>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::MediaControlsContextMenuItem,void>::decode(a1, a2);
  if ((*(a2 + 48) & 1) == 0)
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

uint64_t WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MediaControlsContextMenuItem>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 48 * *(a1 + 12);
  v5 = *v3;
  v6 = *(v3 + 8);
  *(v3 + 8) = 0;
  *v4 = v5;
  *(v4 + 8) = v6;
  v7 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v4 + 16) = v7;
  *(v4 + 24) = *(v3 + 24);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 32, (v3 + 32));
  ++*(a1 + 12);
  return 1;
}

void sub_19D827810(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v3 + 16);
  *(v3 + 16) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x5555556)
  {
    v2 = result;
    v3 = *result;
    v4 = (*result + 48 * *(result + 12));
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(v2 + 8) = v5 / 0x30;
    *v2 = v6;
    WTF::VectorMover<false,WebCore::MediaControlsContextMenuItem>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::MediaControlsContextMenuItem>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = v5 + v6;
      v9 = *(v5 + v6);
      v10 = *(v5 + v6 + 8);
      *(v8 + 1) = 0;
      *v7 = v9;
      *(v7 + 8) = v10;
      v11 = *(v5 + v6 + 16);
      *(v8 + 2) = 0;
      *(v7 + 16) = v11;
      *(v7 + 24) = *(v5 + v6 + 24);
      v12 = (v5 + v6 + 32);
      *(v7 + 40) = 0;
      *(a3 + v6 + 32) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 32, v12);
      WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v13);
      v15 = *(v5 + v6 + 16);
      *(v5 + v6 + 16) = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }

      result = *(v5 + v6 + 8);
      *(v5 + v6 + 8) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v14);
        }
      }

      v6 += 48;
    }

    while (v12 + 4 != a2);
  }

  return result;
}

void sub_19D827AC4(_Unwind_Exception *exception_object, void *a2)
{
  v6 = v4[4];
  if (v6)
  {
    v4[4] = 0;
    *(v2 + v3 + 40) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = v4[2];
  v4[2] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = v4[1];
  v4[1] = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorDestructor<true,WebCore::MediaControlsContextMenuItem>::destruct((*result + 48 * this), (*result + 48 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x5555556)
      {
        __break(0xC471u);
        return result;
      }

      v6 = (48 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x30;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::MediaControlsContextMenuItem>::move(v5, (v5 + 48 * v4), result);
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

void IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerData> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 64))
    {
      IPC::ArgumentCoder<WebCore::ServiceWorkerData,void>::encode(a1, a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerData>,void>::decode<IPC::Decoder>(v4, v5);
    }
  }

  else
  {
    v7 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerData>,void>::decode<IPC::Decoder>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = a1;
    v9 = a1[3];
    if (v9)
    {
      if (v3)
      {
        (*(*v9 + 16))(v9);
        v5 = *v12;
        v3 = v12[1];
        goto LABEL_15;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_15:
    *v12 = 0;
    v12[1] = 0;
    v10 = v12[3];
    if (v10)
    {
      if (v3)
      {
        (*(*v10 + 16))(v10, v5);
        v5 = *v12;
        v3 = v12[1];
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_19:
    *v12 = 0;
    v12[1] = 0;
    v11 = v12[3];
    if (v11 && v3)
    {
      (*(*v11 + 16))(v11, v5);
    }

    goto LABEL_20;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v12 = a1;
    goto LABEL_15;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v12 = a1;
    goto LABEL_19;
  }

  if (!v6)
  {
    LOBYTE(v13) = 0;
    v16 = 0;
    std::__optional_move_base<WebCore::ServiceWorkerData,false>::__optional_move_base[abi:sn200100](a2, &v13);
    *(a2 + 72) = 1;
    if (v16 != 1)
    {
      return;
    }

    goto LABEL_9;
  }

  IPC::Decoder::decode<WebCore::ServiceWorkerData>(a1, &v13);
  if (v16 != 1)
  {
LABEL_20:
    *a2 = 0;
    *(a2 + 72) = 0;
    return;
  }

  *a2 = v13;
  WTF::URL::URL(a2 + 16, &v14);
  *(a2 + 56) = v15;
  *(a2 + 64) = 1;
  *(a2 + 72) = 1;
  if ((v16 & 1) == 0)
  {
    return;
  }

LABEL_9:
  v8 = v14;
  v14 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }
  }
}

void sub_19D827E80(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>>(mpark *a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {

    IPC::ArgumentCoder<mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 24))
    {
      mpark::throw_bad_variant_access(a1);
    }

    IPC::ArgumentCoder<WebCore::ShareableResourceHandle,void>::encode(a1, a2);
  }
}

void IPC::ArgumentCoder<mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 24) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    IPC::ArgumentCoder<WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,void>::encode<IPC::Encoder,WebCore::FragmentedSharedBuffer>(a1, a2);
  }
}

void IPC::ArgumentCoder<mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      if (v4)
      {
        (*(*v11 + 16))(v11);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_20;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_20:
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12 && v4)
    {
      (*(*v12 + 16))(v12);
    }

    goto LABEL_4;
  }

  v6 = *v5;
  if (v6 >= 2)
  {
LABEL_4:
    *a2 = 0;
    *(a2 + 32) = 0;
    return;
  }

  if (v6)
  {
    IPC::Decoder::decode<WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>(&v13, a1);
    if (v14)
    {
      *a2 = v13;
      v7 = 1;
      *(a2 + 24) = 1;
    }

    else
    {
      v7 = 0;
      *a2 = 0;
    }

    *(a2 + 32) = v7;
  }

  else
  {
    IPC::ArgumentCoder<WebCore::ShareableResourceHandle,void>::decode(a1, &v13);
    if ((v15 & 1) == 0)
    {
      v8 = *a1;
      v9 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v10 = *(a1 + 3);
      if (!v10)
      {
        goto LABEL_4;
      }

      if (!v9)
      {
        goto LABEL_4;
      }

      (*(*v10 + 16))(v10, v8);
      if ((v15 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    WTF::MachSendRight::MachSendRight();
    *(a2 + 8) = v14;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    if (v15)
    {
      WTF::MachSendRight::~MachSendRight(&v13);
    }
  }
}

void sub_19D8280D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerJobDataIdentifier> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  result = WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::begin(a2);
  v6 = *a2 + 96 * *(a2 + 8);
  if (v6 != result)
  {
    v7 = result;
    v8 = v5;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v7);
      result = IPC::ArgumentCoder<WebCore::ServiceWorkerImportedScript,void>::encode(a1, v7 + 5);
      do
      {
        v7 += 12;
        if (v7 == v8)
        {
          break;
        }

        result = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v7);
      }

      while (result);
    }

    while (v7 != v6);
  }

  return result;
}

WTF **WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::begin(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *a1 + 96 * v2;
  if (!*(a1 + 12))
  {
    return v3;
  }

  if (v2)
  {
    v4 = 96 * v2;
    while (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v1))
    {
      v1 += 12;
      v4 -= 96;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return v1;
}

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    result[1] = 0;
    v10 = result;
    v8 = result[3];
    if (v8)
    {
      if (v3)
      {
        (*(*v8 + 16))(v8);
        v5 = *v10;
        v3 = v10[1];
LABEL_14:
        *v10 = 0;
        v10[1] = 0;
        v9 = v10[3];
        if (v9)
        {
          if (v3)
          {
            (*(*v9 + 16))(v9, v5);
            v5 = *v10;
            v3 = v10[1];
            goto LABEL_18;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_14;
  }

  result[2] = (v4 + 1);
  if (!v4)
  {
    v10 = result;
    goto LABEL_14;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    if (v6)
    {
      result = IPC::Decoder::decode<WebCore::ServiceWorkerJobDataIdentifier>(result, &v11);
      if (v12)
      {
        *a2 = v11;
        v7 = 1;
        *(a2 + 16) = 1;
      }

      else
      {
        v7 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      v7 = 1;
    }

    *(a2 + 24) = v7;
    return result;
  }

  v10 = result;
LABEL_18:
  *v10 = 0;
  v10[1] = 0;
  result = v10[3];
  if (result && v3)
  {
    result = (*(*result + 16))(result, v5);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t WTF::HashMapTranslator<WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::URL>>::translate<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>>> WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::URL,WebCore::ServiceWorkerImportedScript>(WTF::URL &&,WebCore::ServiceWorkerImportedScript &&)::{lambda(void)#1}>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  WTF::URL::operator=(a1, a2);
  v5 = *a3;
  v6 = **a3;
  v7 = *a3;
  *v7 = 0;
  v17 = v6;
  v8 = WTF::URL::URL(v18, v7 + 1);
  v9 = v5[6];
  v5[6] = 0;
  v19 = v9;
  v10 = *(a1 + 40);
  *(a1 + 40) = v17;
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10, v8);
  }

  WTF::URL::operator=(a1 + 48, v18);
  v12 = v19;
  v19 = 0;
  v13 = *(a1 + 88);
  *(a1 + 88) = v12;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v19;
    v19 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }
  }

  v15 = v18[0];
  v18[0] = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v11);
  }

  return 0;
}

void sub_19D828578(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10 + 2);
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  v2 = WTF::fastMalloc((96 * a1));
  v3 = v2;
  if (a1)
  {
    v4 = a1;
    v5 = v2 + 48;
    do
    {
      WTF::URL::URL((v5 - 48));
      *(v5 + 40) = 0;
      *(v5 + 24) = 0u;
      *(v5 + 8) = 0u;
      *(v5 - 8) = 0u;
      WTF::URL::URL(v5);
      *(v5 + 40) = 0;
      v5 += 96;
      --v4;
    }

    while (v4);
  }

  return v3;
}

void sub_19D828698(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 8);
  *(v1 - 8) = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::GenericHashTraits<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>::assignToEmpty<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>(uint64_t a1, uint64_t a2)
{
  WTF::URL::operator=(a1, a2);
  v4 = *(a2 + 40);
  *(a2 + 40) = 0;
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  WTF::URL::operator=(a1 + 48, a2 + 48);
  v7 = *(a2 + 88);
  *(a2 + 88) = 0;
  result = *(a1 + 88);
  *(a1 + 88) = v7;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, v6);
  }

  return result;
}

WTF::StringImpl *std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>(uint64_t *a1, uint64_t a2)
{
  WTF::URL::URL(v20, a1);
  v4 = a1[5];
  a1[5] = 0;
  v21 = v4;
  WTF::URL::URL(v22, a1 + 6);
  v5 = a1[11];
  a1[11] = 0;
  v23 = v5;
  WTF::URL::operator=(a1, a2);
  v6 = *(a2 + 40);
  *(a2 + 40) = 0;
  v7 = a1[5];
  a1[5] = v6;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  WTF::URL::operator=((a1 + 6), a2 + 48);
  v9 = *(a2 + 88);
  *(a2 + 88) = 0;
  v10 = a1[11];
  a1[11] = v9;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  WTF::URL::operator=(a2, v20);
  v11 = v21;
  v21 = 0;
  v12 = *(a2 + 40);
  *(a2 + 40) = v11;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 8))(v12);
  }

  WTF::URL::operator=(a2 + 48, v22);
  v14 = v23;
  v23 = 0;
  v15 = *(a2 + 88);
  *(a2 + 88) = v14;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    v16 = v23;
    v23 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }
  }

  v17 = v22[0];
  v22[0] = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v13);
  }

  v18 = v21;
  v21 = 0;
  if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18 + 2);
    (*(*v18 + 8))(v18);
  }

  result = v20[0];
  v20[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_19D8289F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int *a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20)
{
  if (a14 && atomic_fetch_add(a14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a14 + 2);
    (*(*a14 + 8))(a14);
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

WTF *IPC::ArgumentCoder<std::optional<WebCore::Path>,void>::encode<IPC::Encoder,std::optional<WebCore::Path> const&>(IPC::Encoder *a1, WebCore::Path *a2)
{
  if (*(a2 + 64))
  {
    v8 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if (*(a2 + 64))
    {
      return IPC::ArgumentCoder<WebCore::Path,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v5, v6, v7);
    }
  }

  else
  {
    v9 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v9);
  }
}

uint64_t IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, const void *a2, uint64_t a3)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a3);
  if (a3)
  {
    v7 = IPC::Encoder::grow(a1, 4uLL, 4 * a3);
    if (v8 < 4 * a3)
    {
      result = 1067;
      __break(0xC471u);
    }

    else
    {

      return memcpy(v7, a2, 4 * a3);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = -*a1;
  v4 = v3 & 7 | 8;
  if (*(a1 + 8) >= v4)
  {
    *(*a1 + (v3 & 7)) = a3;
    v5 = *(a1 + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *a1 += v4;
      *(a1 + 8) = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
LABEL_5:
  if (a3)
  {
    return IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(a1, a2, a3);
  }

  return a1;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (*(result + 8) >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 3);
    v5 = *(result + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *result += v4;
      *(result + 8) = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 8) = 0;
LABEL_5:
  v8 = *(a2 + 3);
  if (v8)
  {
    v9 = *a2;
    v10 = *a2 + 16 * v8;
    do
    {
      IPC::StreamConnectionEncoder::operator<<<int const&>(v2, v9);
      result = IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(v2, (v9 + 8));
      v9 += 16;
    }

    while (v9 != v10);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::Region::Span>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::Region::Span,void>::decode(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t WTF::VectorBuffer<WebCore::Region::Span,16ul,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  v2 = result;
  if (a2 < 0x11)
  {
    *result = result + 16;
    *(result + 8) = 16;
  }

  else
  {
    v3 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      result = WTF::fastMalloc((16 * a2));
      *(v2 + 8) = v3;
      *v2 = result;
    }
  }

  return result;
}

__n128 WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Region::Span>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = *v3;
  *(*a1 + 16 * (*(a1 + 12))++) = *v3;
  return result;
}

unint64_t WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    result = WTF::VectorBuffer<WebCore::Region::Span,16ul,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(result, a2);
    if (v4)
    {
      v6 = *v2;
      v7 = 16 * v4;
      v8 = v3;
      do
      {
        v9 = *v8;
        v8 = (v8 + 16);
        *v6 = v9;
        v6 = (v6 + 16);
        v7 -= 16;
      }

      while (v7);
    }

    if ((v2 + 16) != v3 && v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      return WTF::fastFree(v3, v5);
    }
  }

  return result;
}

uint64_t WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, void *a2)
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
      result = WTF::VectorBuffer<WebCore::Region::Span,16ul,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(result, a2);
      if (v3)
      {
        v5 = *v2;
        if (*v2 != v4)
        {
          v6 = 16 * v3;
          v7 = v4;
          do
          {
            v8 = *v7;
            v7 = (v7 + 16);
            *v5 = v8;
            v5 = (v5 + 16);
            v6 -= 16;
          }

          while (v6);
        }
      }
    }

    if ((v2 + 16) != v4 && v4)
    {
      if (*v2 == v4)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      result = WTF::fastFree(v4, a2);
    }

    if (!*v2)
    {
      *v2 = v2 + 16;
      *(v2 + 8) = 16;
    }
  }

  return result;
}

void *IPC::ArgumentCoder<std::optional<WebCore::MockWebAuthenticationConfiguration::LocalConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::MockWebAuthenticationConfiguration::LocalConfiguration> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 40))
    {
      return IPC::ArgumentCoder<WebCore::MockWebAuthenticationConfiguration::LocalConfiguration,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::MockWebAuthenticationConfiguration::HidConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::MockWebAuthenticationConfiguration::HidConfiguration> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::MockWebAuthenticationConfiguration::HidConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::MockWebAuthenticationConfiguration::HidConfiguration> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 64))
    {
      return IPC::ArgumentCoder<WebCore::MockWebAuthenticationConfiguration::HidConfiguration,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

WTF::StringImpl *IPC::ArgumentCoder<std::optional<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[32])
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (a2[32])
    {
      return IPC::ArgumentCoder<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

WTF::StringImpl *IPC::Decoder::decode<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v39);
  if (v40 != 1)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_44;
  }

  v5 = *(a2 + 1);
  v6 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a2;
  v8 = v6 - *a2;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
LABEL_52:
    *a2 = 0;
    *(a2 + 1) = 0;
    v35 = *(a2 + 3);
    if (v35)
    {
      if (v5)
      {
        (*(*v35 + 16))(v35);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_54;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_54:
    *a2 = 0;
    *(a2 + 1) = 0;
    v36 = *(a2 + 3);
    if (v36 && v5)
    {
      (*(*v36 + 16))(v36);
    }

    LOBYTE(v37[0]) = 0;
    goto LABEL_23;
  }

  v12 = *v6;
  v44 = 0;
  v45 = 0;
  if (v12 >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,WebCore::ISO18013ElementInfo>>(&v41, a2);
      v24 = v43;
      if ((v43 & 1) == 0)
      {
        break;
      }

      v25 = HIDWORD(v45);
      if (HIDWORD(v45) == v45)
      {
        v26 = WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v44, HIDWORD(v45) + 1, &v41);
        v25 = HIDWORD(v45);
        v27 = v44 + 16 * HIDWORD(v45);
        v28 = *v26;
        *v26 = 0;
        v29 = v26 + 1;
        *v27 = v28;
      }

      else
      {
        v30 = v41;
        v27 = v44 + 16 * HIDWORD(v45);
        v41 = 0;
        *v27 = v30;
        v29 = &v42;
      }

      *(v27 + 8) = *v29;
      HIDWORD(v45) = v25 + 1;
      if (v43)
      {
        v31 = v41;
        v41 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v7);
        }

        if ((v24 & 1) == 0)
        {
          break;
        }
      }

      if (!--v12)
      {
        WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v44, HIDWORD(v45));
        goto LABEL_37;
      }
    }
  }

  else
  {
    if (!v12)
    {
LABEL_37:
      v37[0] = v44;
      v32 = v45;
      v44 = 0;
      v45 = 0;
      v37[1] = v32;
      v38 = 1;
      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v7);
      if (v40)
      {
        result = std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100]<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, &v39, v37);
        *(a1 + 24) = 1;
        if (v38)
        {
          result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v22);
        }

        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_52;
    }

    v13 = WTF::fastMalloc((16 * v12));
    LODWORD(v45) = v12;
    v44 = v13;
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,WebCore::ISO18013ElementInfo>>(&v41, a2);
      v14 = v43;
      if ((v43 & 1) == 0)
      {
        break;
      }

      v15 = HIDWORD(v45);
      if (HIDWORD(v45) == v45)
      {
        v16 = WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v44, HIDWORD(v45) + 1, &v41);
        v15 = HIDWORD(v45);
        v17 = v44 + 16 * HIDWORD(v45);
        v18 = *v16;
        *v16 = 0;
        v19 = v16 + 1;
        *v17 = v18;
      }

      else
      {
        v20 = v41;
        v17 = v44 + 16 * HIDWORD(v45);
        v41 = 0;
        *v17 = v20;
        v19 = &v42;
      }

      *(v17 + 8) = *v19;
      HIDWORD(v45) = v15 + 1;
      if (v43)
      {
        v21 = v41;
        v41 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v7);
          if ((v14 & 1) == 0)
          {
            break;
          }
        }

        else if ((v14 & 1) == 0)
        {
          break;
        }
      }

      if (!--v12)
      {
        goto LABEL_37;
      }
    }
  }

  v38 = 0;
  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v7);
LABEL_23:
  v22 = *a2;
  v23 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v23)
  {
    result = (*(*result + 16))(result, v22);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
LABEL_40:
  if (v40)
  {
    result = v39;
    v39 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v22);
      }
    }
  }

LABEL_44:
  if ((*(a1 + 24) & 1) == 0)
  {
    v33 = *a2;
    v34 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v34)
      {
        return (*(*result + 16))(result, v33);
      }
    }
  }

  return result;
}

void sub_19D8294FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, char a11, WTF::StringImpl *a12, char a13, WTF::StringImpl *a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a13 == 1 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<std::pair<WTF::String,WebCore::ISO18013ElementInfo>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v17);
  if (v18 != 1)
  {
    *a1 = 0;
    a1[16] = 0;
    goto LABEL_22;
  }

  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (v5 <= &v6[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v9 = *(a2 + 3);
    if (v9)
    {
      if (v5)
      {
        (*(*v9 + 16))(v9);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_11;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_11:
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10)
    {
      goto LABEL_32;
    }

    v5 = 0;
    goto LABEL_13;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    while (1)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v11 = *(a2 + 3);
      if (!v11)
      {
        v5 = 0;
LABEL_16:
        v7 = 0;
        goto LABEL_17;
      }

      if (!v5)
      {
        goto LABEL_16;
      }

      v10 = (*(*v11 + 16))(v11, v7);
      if (!*a2)
      {
        break;
      }

      __break(1u);
LABEL_32:
      if (v5)
      {
        (*(*v10 + 16))(v10);
        v7 = *a2;
        v5 = *(a2 + 1);
      }

      else
      {
LABEL_13:
        v7 = 0;
      }
    }

    v7 = 0;
    v5 = *(a2 + 1);
  }

  else if (v7)
  {
    *a1 = v17;
    a1[8] = v8;
    a1[16] = 1;
    return result;
  }

LABEL_17:
  *a2 = 0;
  *(a2 + 1) = 0;
  v12 = *(a2 + 3);
  if (v12 && v5)
  {
    (*(*v12 + 16))(v12, v7);
  }

  *a1 = 0;
  a1[16] = 0;
  if (v18)
  {
    v13 = v17;
    v17 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }
    }
  }

LABEL_22:
  v14 = *a2;
  v15 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    return (*(*result + 16))(result, v14);
  }

  return result;
}

void sub_19D8297F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100]<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(void *a1, uint64_t *a2, _DWORD *a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  a1[1] = 0;
  a1[2] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a1 + 1), a3);
  return a1;
}

void sub_19D829874(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100]((*a1 + 24 * *(a1 + 12)), v3);
  ++*(a1 + 12);
  return 1;
}

void *std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100](void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  a1[1] = 0;
  a1[2] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a1 + 1), a2 + 2);
  return a1;
}

void sub_19D829954(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D829B08);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorMover<false,std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::move(WTF::StringImpl *result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100](a3, v5);
      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v5 + 1), v6);
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v7);
        }
      }

      a3 += 3;
      v5 += 3;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t this)
{
  if (*(result + 8) > this)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::destruct((*result + 24 * this), (*result + 24 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0xAAAAAAB)
      {
        __break(0xC471u);
        return result;
      }

      v6 = (24 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x18;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::move(v5, v5 + 3 * v4, result);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 24 * v5;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v6 + 20));
      v8 = *(v6 + 20);
      if (v8)
      {
        v9 = *(v6 + 8);
        v10 = v9 + 24 * v8;
        do
        {
          IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v9);
          result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v9 + 20));
          v11 = *(v9 + 20);
          if (v11)
          {
            v12 = *(v9 + 8);
            v13 = v12 + 16 * v11;
            do
            {
              IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v12);
              result = IPC::Encoder::operator<<<BOOL>(a1, (v12 + 8));
              v12 += 16;
            }

            while (v12 != v13);
          }

          v9 += 24;
        }

        while (v9 != v10);
      }

      v6 += 24;
    }

    while (v6 != v7);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ISO18013DocumentRequest>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v33);
  v5 = *(a2 + 1);
  v6 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a2;
  v8 = v6 - *a2;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v28 = *(a2 + 3);
    if (v28)
    {
      if (v5)
      {
        (*(*v28 + 16))(v28);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_57:
    *a2 = 0;
    *(a2 + 1) = 0;
    v29 = *(a2 + 3);
    if (v29 && v5)
    {
      (*(*v29 + 16))(v29);
    }

    while (1)
    {
      v15 = *a2;
      v16 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (result && v16)
      {
        result = (*(*result + 16))(result, v15);
      }

      if (!*a2)
      {
        break;
      }

LABEL_24:
      __break(1u);
      while (1)
      {
LABEL_25:
        IPC::Decoder::decode<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v35, a2);
        v18 = v37;
        if (v37)
        {
          if (HIDWORD(v39) == v39)
          {
            WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v38, &v35);
          }

          else
          {
            std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100]((v38 + 24 * HIDWORD(v39)), &v35);
            ++HIDWORD(v39);
          }
        }

        if (v37 == 1)
        {
          WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v7);
          v19 = v35;
          v35 = 0;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v7);
            }
          }
        }

        if ((v18 & 1) == 0)
        {
          break;
        }

        if (!--v2)
        {
          WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v38, HIDWORD(v39));
          goto LABEL_36;
        }
      }

LABEL_21:
      v32 = 0;
      WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v7);
    }

    v22 = 0;
    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_42;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_57;
  }

  v2 = *v6;
  v38 = 0;
  v39 = 0;
  if (v2 >= 0xAAAA)
  {
    goto LABEL_25;
  }

  if (v2)
  {
    v12 = WTF::fastMalloc((24 * v2));
    LODWORD(v39) = 24 * v2 / 0x18u;
    v38 = v12;
    do
    {
      IPC::Decoder::decode<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v35, a2);
      v13 = v37;
      if (v37)
      {
        if (HIDWORD(v39) == v39)
        {
          WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v38, &v35);
        }

        else
        {
          std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100]((v38 + 24 * HIDWORD(v39)), &v35);
          ++HIDWORD(v39);
        }
      }

      if (v37 == 1 && (WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v7), v14 = v35, v35 = 0, v14) && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v7);
        if ((v13 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }

      --v2;
    }

    while (v2);
  }

LABEL_36:
  v30 = v38;
  v2 = v39;
  v20 = HIDWORD(v39);
  v38 = 0;
  v39 = 0;
  v31 = __PAIR64__(v20, v2);
  v32 = 1;
  WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v7);
  v22 = *a2 != 0;
  if (*a2)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_24;
    }

    v23 = v33;
    v33 = 0;
    v24 = v30;
    v30 = 0;
    v31 = 0;
    v35 = 0;
    v36[0] = 0;
    *a1 = v23;
    *(a1 + 8) = v24;
    v36[1] = 0;
    *(a1 + 16) = v2;
    *(a1 + 20) = v20;
    *(a1 + 24) = 1;
    WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v21);
    v25 = v35;
    v35 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v21);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  result = WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v21);
LABEL_42:
  if (v34 == 1 && (result = v33, v33 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v15);
    if (v22)
    {
      return result;
    }
  }

  else if (v22)
  {
    return result;
  }

  v26 = *a2;
  v27 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v27)
    {
      return (*(*result + 16))(result, v26);
    }
  }

  return result;
}

void sub_19D82A16C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ISO18013DocumentRequest>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  *v3 = 0;
  v7 = (v5 + 24 * v4);
  *v7 = v6;
  v7[1] = 0;
  v7[2] = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v7 + 1), (v3 + 8));
  ++*(a1 + 12);
  return result;
}

void sub_19D82A274(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
    WTF::VectorMover<false,WebCore::ISO18013DocumentRequest>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::ISO18013DocumentRequest>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 8);
    v5 = (result + 8);
    do
    {
      v6 = *(v5 - 1);
      *(v5 - 1) = 0;
      *v4 = 0;
      v4[1] = 0;
      *(v4 - 1) = v6;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v5);
      WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v7);
      result = *(v5 - 1);
      *(v5 - 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }
      }

      v4 += 3;
      v9 = (v5 + 4);
      v5 += 6;
    }

    while (v9 != a2);
  }

  return result;
}

void sub_19D82A4B8(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(v2 - 8);
  *(v2 - 8) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebCore::ISO18013DocumentRequest>::destruct((*result + 24 * this), (*result + 24 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0xAAAAAAB)
      {
        __break(0xC471u);
        return result;
      }

      v6 = (24 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x18;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::ISO18013DocumentRequest>::move(v5, (v5 + 24 * v4), result);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      result = IPC::VectorArgumentCoder<false,WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v6);
      v6 += 2;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::ISO18013DocumentRequestSet>(uint64_t a1, IPC::Decoder *a2)
{
  v5 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v7 < v5 - v6 || v7 - (v5 - v6) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v30 = *(a2 + 3);
    if (v30)
    {
      if (v7)
      {
        (*(*v30 + 16))(v30);
        v6 = *a2;
        v7 = *(a2 + 1);
LABEL_49:
        *a2 = 0;
        *(a2 + 1) = 0;
        v31 = *(a2 + 3);
        if (v31 && v7)
        {
          (*(*v31 + 16))(v31, v6);
        }

        while (1)
        {
          v14 = *a2;
          v15 = *(a2 + 1);
          *a2 = 0;
          *(a2 + 1) = 0;
          v16 = *(a2 + 3);
          if (v16 && v15)
          {
            (*(*v16 + 16))(v16, v14);
          }

          if (!*a2)
          {
            break;
          }

          __break(1u);
          while (1)
          {
LABEL_25:
            IPC::Decoder::decode<WebCore::ISO18013DocumentRequest>(&v35, a2);
            v17 = v39;
            if (v39)
            {
              if (HIDWORD(v41) == v41)
              {
                WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ISO18013DocumentRequest>(&v40, &v35);
              }

              else
              {
                v18 = v40 + 24 * HIDWORD(v41);
                v19 = v35;
                v35 = 0;
                *(v18 + 8) = 0;
                *(v18 + 16) = 0;
                *v18 = v19;
                v20 = v36;
                v36 = 0;
                *(v18 + 8) = v20;
                LODWORD(v20) = v37;
                v37 = 0;
                *(v18 + 16) = v20;
                LODWORD(v20) = v38;
                v38 = 0;
                *(v18 + 20) = v20;
                ++HIDWORD(v41);
              }
            }

            if (v39 == 1)
            {
              WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v6);
              v21 = v35;
              v35 = 0;
              if (v21)
              {
                if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v21, v6);
                }
              }
            }

            if ((v17 & 1) == 0)
            {
              break;
            }

            if (!--v2)
            {
              WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v40, HIDWORD(v41));
              goto LABEL_36;
            }
          }

LABEL_21:
          v34 = 0;
          WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v6);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
    goto LABEL_49;
  }

  *(a2 + 2) = v5 + 8;
  if (!v5)
  {
    goto LABEL_49;
  }

  v2 = *v5;
  v40 = 0;
  v41 = 0;
  if (v2 >= 0xAAAA)
  {
    goto LABEL_25;
  }

  if (v2)
  {
    LODWORD(v41) = 24 * v2 / 0x18u;
    v40 = WTF::fastMalloc((24 * v2));
    do
    {
      IPC::Decoder::decode<WebCore::ISO18013DocumentRequest>(&v35, a2);
      v9 = v39;
      if (v39)
      {
        if (HIDWORD(v41) == v41)
        {
          WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ISO18013DocumentRequest>(&v40, &v35);
        }

        else
        {
          v10 = v40 + 24 * HIDWORD(v41);
          v11 = v35;
          v35 = 0;
          *(v10 + 8) = 0;
          *(v10 + 16) = 0;
          *v10 = v11;
          v12 = v36;
          v36 = 0;
          *(v10 + 8) = v12;
          LODWORD(v12) = v37;
          v37 = 0;
          *(v10 + 16) = v12;
          LODWORD(v12) = v38;
          v38 = 0;
          *(v10 + 20) = v12;
          ++HIDWORD(v41);
        }
      }

      if (v39 == 1 && (WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v6), v13 = v35, v35 = 0, v13) && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v6);
        if ((v9 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

      --v2;
    }

    while (v2);
  }

LABEL_36:
  v32 = v40;
  v22 = v41;
  v23 = HIDWORD(v41);
  v40 = 0;
  v41 = 0;
  v33 = __PAIR64__(v23, v22);
  v34 = 1;
  WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v6);
  if (*a2)
  {
    v25 = v32;
    v32 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    *a1 = v25;
    *(a1 + 8) = v22;
    *(a1 + 12) = v23;
    *(a1 + 16) = 1;
    WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v24);
    return WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v26);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v24);
LABEL_40:
  v28 = *a2;
  v29 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v29)
    {
      return (*(*result + 16))(result, v28);
    }
  }

  return result;
}

void sub_19D82AA20(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a16 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20 + 8, a2);
    if (a13)
    {
      if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a13, a2);
      }
    }
  }

  WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a18, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ISO18013DocumentRequestSet>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 16 * *(a1 + 12));
  *v4 = 0;
  v4[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v3);
  ++*(a1 + 12);
  return 1;
}

void sub_19D82AAD8(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 28))
  {
    v3 = result;
    v4 = *result;
    v5 = (*result + 16 * *(result + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    WTF::VectorMover<false,WebCore::ISO18013DocumentRequestSet>::move(v4, v5, v6);
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

uint64_t WTF::VectorMover<false,WebCore::ISO18013DocumentRequestSet>::move(uint64_t result, _DWORD *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3, v5);
      result = WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v6);
      a3 += 2;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return result;
}

void sub_19D82ACA4(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = *result + 16 * a2;
      v5 = 16 * v4 - 16 * a2;
      do
      {
        result = WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2) + 16;
        v5 -= 16;
      }

      while (v5);
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v6 = *v3;
    if (a2)
    {
      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((16 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v6)
      {
        result = WTF::VectorMover<false,WebCore::ISO18013DocumentRequestSet>::move(v6, v6 + 4 * v4, result);
      }
    }

    if (v6)
    {
      if (*v3 == v6)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v6, a2);
    }
  }

  return result;
}

void IPC::VectorArgumentCoder<false,WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v4 = *(a2 + 12);
  if (v4)
  {
    v5 = *a2;
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      IPC::ArgumentCoder<__SecTrust *,void>::encode(a1, v7);
      v6 -= 8;
    }

    while (v6);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[24 * v5];
    do
    {
      IPC::Encoder::operator<<<BOOL>(a1, v6);
      result = IPC::VectorArgumentCoder<false,WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (v6 + 8));
      v6 += 24;
    }

    while (v6 != v7);
  }

  return result;
}

unint64_t WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
        *v8 = v11;
        v12 = *v10;
        *v10 = 0;
        if (v12)
        {
          CFRelease(v12);
        }

        ++v8;
        v10 = (v10 + 8);
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

void WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) > a2)
  {
    if (*(a1 + 12) > a2)
    {
      WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, a2);
    }

    v4 = *a1;
    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        return;
      }

      v5 = *(a1 + 12);
      v6 = WTF::fastMalloc((8 * a2));
      *(a1 + 8) = a2;
      *a1 = v6;
      if (v6 != v4 && v5)
      {
        v7 = v6;
        v8 = 8 * v5;
        v9 = v4;
        do
        {
          v10 = *v9;
          *v9 = 0;
          *v7 = v10;
          v11 = *v9;
          *v9 = 0;
          if (v11)
          {
            CFRelease(v11);
          }

          ++v7;
          v9 = (v9 + 8);
          v8 -= 8;
        }

        while (v8);
      }
    }

    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v4, a2);
    }
  }
}

void WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    if (v2 != a2)
    {
      v5 = (*a1 + 8 * a2);
      v6 = 8 * v2 - 8 * a2;
      do
      {
        v7 = *v5;
        *v5 = 0;
        if (v7)
        {
          CFRelease(v7);
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    *(a1 + 12) = v3;
  }
}

uint64_t WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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
        CFRelease(v6);
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

uint64_t IPC::Decoder::decode<WebCore::ISO18013PresentmentRequest>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31)
    {
      if (v6)
      {
        (*(*v31 + 16))(v31);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_58:
        *a2 = 0;
        *(a2 + 1) = 0;
        v32 = *(a2 + 3);
        if (v32)
        {
          if (v6)
          {
            (*(*v32 + 16))(v32, v5);
            v7 = 0;
            v5 = *a2;
            v6 = *(a2 + 1);
            goto LABEL_61;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        v7 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_58;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_58;
  }

  v7 = *v4;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

LABEL_61:
  *a2 = 0;
  *(a2 + 1) = 0;
  v33 = *(a2 + 3);
  if (!v33)
  {
    v6 = 0;
LABEL_63:
    v5 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  (*(*v33 + 16))(v33, v5);
  v8 = 0;
  v5 = *a2;
  v6 = *(a2 + 1);
LABEL_5:
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v6 < v10 - v5 || v6 - (v10 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v29 = *(a2 + 3);
    if (v29)
    {
      if (v6)
      {
        (*(*v29 + 16))(v29);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_52;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_52:
    *a2 = 0;
    *(a2 + 1) = 0;
    v30 = *(a2 + 3);
    if (v30 && v6)
    {
      (*(*v30 + 16))(v30, v5);
    }

    goto LABEL_39;
  }

  *(a2 + 2) = v10 + 8;
  if (!v10)
  {
    goto LABEL_52;
  }

  v12 = *v10;
  v40 = 0;
  v41 = 0;
  if (v12 >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::ISO18013DocumentRequestSet>(&v37, a2);
      v22 = v39;
      if (v39)
      {
        if (HIDWORD(v41) == v41)
        {
          WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ISO18013DocumentRequestSet>(&v40, &v37);
        }

        else
        {
          v23 = v40 + 16 * HIDWORD(v41);
          *v23 = 0;
          *(v23 + 8) = 0;
          v24 = v37;
          v37 = 0;
          *v23 = v24;
          LODWORD(v24) = v38;
          LODWORD(v38) = 0;
          *(v23 + 8) = v24;
          LODWORD(v24) = HIDWORD(v38);
          HIDWORD(v38) = 0;
          *(v23 + 12) = v24;
          ++HIDWORD(v41);
        }
      }

      if (v39 == 1)
      {
        WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v5);
      }

      if ((v22 & 1) == 0)
      {
        break;
      }

      if (!--v12)
      {
        WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v40, HIDWORD(v41));
        goto LABEL_25;
      }
    }
  }

  else
  {
    if (!v12)
    {
LABEL_25:
      v34 = v40;
      v16 = v41;
      v17 = HIDWORD(v41);
      v40 = 0;
      v41 = 0;
      v35 = __PAIR64__(v17, v16);
      v36 = 1;
      WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v5);
      if (!*a2)
      {
LABEL_42:
        *a1 = 0;
        *(a1 + 24) = 0;
        WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v18);
        goto LABEL_43;
      }

      if (v8)
      {
        LOBYTE(v37) = v9;
        v19 = v34;
        v34 = 0;
        v35 = 0;
        *a1 = v9;
        v38 = 0;
        v39 = 0;
        *(a1 + 8) = v19;
        *(a1 + 16) = v16;
        *(a1 + 20) = v17;
        *(a1 + 24) = 1;
        WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v18);
        return WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v20);
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    LODWORD(v41) = v12;
    v40 = WTF::fastMalloc((16 * v12));
    while (1)
    {
      IPC::Decoder::decode<WebCore::ISO18013DocumentRequestSet>(&v37, a2);
      v13 = v39;
      if (v39)
      {
        if (HIDWORD(v41) == v41)
        {
          WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ISO18013DocumentRequestSet>(&v40, &v37);
        }

        else
        {
          v14 = v40 + 16 * HIDWORD(v41);
          *v14 = 0;
          *(v14 + 8) = 0;
          v15 = v37;
          v37 = 0;
          *v14 = v15;
          LODWORD(v15) = v38;
          LODWORD(v38) = 0;
          *(v14 + 8) = v15;
          LODWORD(v15) = HIDWORD(v38);
          HIDWORD(v38) = 0;
          *(v14 + 12) = v15;
          ++HIDWORD(v41);
        }
      }

      if (v39 == 1)
      {
        WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v5);
      }

      if ((v13 & 1) == 0)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_25;
      }
    }
  }

  v36 = 0;
  WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v5);
LABEL_39:
  v18 = *a2;
  v25 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v26 = *(a2 + 3);
  if (v26 && v25)
  {
    (*(*v26 + 16))(v26, v18);
  }

  if (*a2)
  {
    goto LABEL_41;
  }

  *a1 = 0;
  *(a1 + 24) = 0;
LABEL_43:
  v27 = *a2;
  v28 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v28)
    {
      return (*(*result + 16))(result, v27);
    }
  }

  return result;
}

void sub_19D82B64C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  if (v9 == 1)
  {
    WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  }

  WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, a2);
  _Unwind_Resume(a1);
}

WTF *WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ISO18013PresentmentRequest>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 24 * *(a1 + 12);
  *v4 = *v3;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 8, (v3 + 8));
  ++*(a1 + 12);
  return result;
}

void sub_19D82B6FC(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
    WTF::VectorMover<false,WebCore::ISO18013PresentmentRequest>::move(v3, v4, v6);
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

uint64_t WTF::VectorMover<false,WebCore::ISO18013PresentmentRequest>::move(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 8);
    v5 = (result + 8);
    do
    {
      *(v4 - 8) = *(v5 - 8);
      *v4 = 0;
      v4[1] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v5);
      result = WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v6);
      v4 += 3;
      v7 = v5 + 4;
      v5 += 6;
    }

    while (v7 != a2);
  }

  return result;
}

void sub_19D82B8FC(_Unwind_Exception *exception_object, void *a2)
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

unsigned int *WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    if (result[3] > this)
    {
      result = WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, this);
    }

    v4 = *v3;
    if (this)
    {
      if (this >= 0xAAAAAAB)
      {
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 12);
      v6 = (24 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x18;
      *v3 = result;
      if (result != v4)
      {
        result = WTF::VectorMover<false,WebCore::ISO18013PresentmentRequest>::move(v4, v4 + 6 * v5, result);
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

uint64_t WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t result, unint64_t a2)
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
      v5 = 24 * v2 - 24 * a2;
      result = *result + 24 * a2 + 8;
      do
      {
        result = WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2) + 24;
        v5 -= 24;
      }

      while (v5);
    }

    *(v4 + 12) = v3;
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      v8 = *(v6 + 32);
      IPC::Encoder::operator<<<BOOL>(a1, &v8);
      result = IPC::ArgumentCoder<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest> const&>(a1, v6, v8);
      v6 += 40;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest> const&>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a3 != 1 || *(a2 + 32) == 1)
    {
      return result;
    }

LABEL_9:
    mpark::throw_bad_variant_access(result);
  }

  if (*(a2 + 32))
  {
    goto LABEL_9;
  }

  v4 = result;
  IPC::VectorArgumentCoder<false,WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(result, a2);

  return IPC::VectorArgumentCoder<false,WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v4, a2 + 16);
}

_BYTE *IPC::Decoder::decode<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>>(_BYTE *result, IPC::Decoder *a2, double a3, double a4, __n128 a5)
{
  v11 = result;
  v12 = *(a2 + 2);
  v13 = *a2;
  v14 = *(a2 + 1);
  if (v14 <= v12 - v13)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v68 = *(a2 + 3);
    if (!v68)
    {
      v14 = 0;
      goto LABEL_111;
    }

    if (!v14)
    {
      goto LABEL_111;
    }

    (*(*v68 + 16))(v68);
    goto LABEL_110;
  }

  *(a2 + 2) = v12 + 1;
  if (v12)
  {
    if (*v12 >= 2u)
    {
      goto LABEL_4;
    }

    if (*v12)
    {
      if (v13)
      {
        result[32] = 1;
LABEL_84:
        v11[40] = 1;
        return result;
      }

      *a2 = 0;
      *(a2 + 1) = 0;
      v39 = *(a2 + 3);
      if (v39)
      {
        v40 = *(*v39 + 16);
LABEL_114:
        v40();
        goto LABEL_4;
      }

      goto LABEL_4;
    }

    v17 = v12 & 0xFFFFFFFFFFFFFFF8;
    v18 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v14 < v18 - v13 || v14 - (v18 - v13) <= 7)
    {
      v62 = 0;
      v63 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v64 = *(a2 + 3);
      if (v64)
      {
        (*(*v64 + 16))(v64);
        v63 = *a2;
        v62 = *(a2 + 1);
      }

LABEL_92:
      *a2 = 0;
      *(a2 + 1) = 0;
      v65 = *(a2 + 3);
      if (v65 && v62)
      {
        (*(*v65 + 16))(v65, v63, v62);
      }

      LOBYTE(v76) = 0;
      v78 = 0;
LABEL_38:
      v36 = *a2;
      v37 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v38 = *(a2 + 3);
      if (v38 && v37)
      {
        (*(*v38 + 16))(v38, v36);
      }

LABEL_44:
      v42 = *(a2 + 1);
      v43 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v44 = *a2;
      v45 = v43 - *a2;
      v46 = v42 >= v45;
      v47 = v42 - v45;
      if (v46 && v47 > 7)
      {
        *(a2 + 2) = v43 + 1;
        if (v43)
        {
          v6 = *v43;
          v81 = 0;
          v82 = 0;
          if (v6 >= 0xAAAA)
          {
            goto LABEL_67;
          }

          if (v6)
          {
            v49 = WTF::fastMalloc((24 * v6));
            LODWORD(v82) = 24 * v6 / 0x18u;
            v81 = v49;
            v5 = &v79;
            v7 = 24;
            do
            {
              IPC::Decoder::decode<WebCore::ISO18013PresentmentRequest>(&v79, a2);
              v8 = BYTE8(v80);
              if (BYTE8(v80))
              {
                if (HIDWORD(v82) == v82)
                {
                  WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ISO18013PresentmentRequest>(&v81, &v79);
                }

                else
                {
                  v50 = &v81[24 * HIDWORD(v82)];
                  *v50 = v79;
                  *(v50 + 1) = 0;
                  *(v50 + 2) = 0;
                  v51 = *(&v79 + 1);
                  *(&v79 + 1) = 0;
                  *(v50 + 1) = v51;
                  LODWORD(v51) = v80;
                  LODWORD(v80) = 0;
                  *(v50 + 4) = v51;
                  LODWORD(v51) = DWORD1(v80);
                  DWORD1(v80) = 0;
                  *(v50 + 5) = v51;
                  ++HIDWORD(v82);
                }
              }

              if (BYTE8(v80) == 1)
              {
                WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79 + 8, v44);
              }

              if ((v8 & 1) == 0)
              {
                goto LABEL_77;
              }

              --v6;
            }

            while (v6);
          }

LABEL_61:
          cf = v81;
          LODWORD(v5) = v82;
          v6 = HIDWORD(v82);
          v81 = 0;
          v82 = 0;
          v74 = __PAIR64__(v6, v5);
          v8 = 1;
          v75 = 1;
          WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v81, v44);
          if (*a2)
          {
            goto LABEL_62;
          }

          v55 = 0;
          LOBYTE(v70) = 0;
          v72 = 0;
LABEL_65:
          WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&cf, v52);
          goto LABEL_80;
        }
      }

      else
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        v66 = *(a2 + 3);
        if (v66)
        {
          if (v42)
          {
            (*(*v66 + 16))(v66);
            v42 = *(a2 + 1);
          }
        }

        else
        {
          v42 = 0;
        }
      }

      *a2 = 0;
      *(a2 + 1) = 0;
      v67 = *(a2 + 3);
      if (v67 && v42)
      {
        (*(*v67 + 16))(v67);
      }

      LOBYTE(cf) = 0;
      v75 = 0;
      while (1)
      {
        v52 = *a2;
        v59 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v60 = *(a2 + 3);
        if (!v60)
        {
          break;
        }

        if (!v59)
        {
          break;
        }

        (*(*v60 + 16))(v60, v52);
        if (!*a2)
        {
          break;
        }

        LOBYTE(v8) = 0;
LABEL_62:
        if (v78)
        {
          v54 = v76;
          v9 = v77;
          v7 = HIDWORD(v77);
          v76 = 0;
          v77 = 0;
          if (v8)
          {
            *&v53 = 0;
            v8 = cf;
            cf = 0;
            v74 = 0;
            *&v70 = v54;
            *(&v70 + 1) = __PAIR64__(v7, v9);
            v79 = v53;
            v80 = v53;
            v71.n128_u64[0] = v8;
            v71.n128_u64[1] = __PAIR64__(v6, v5);
            v55 = 1;
            v72 = 1;
            WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v80, v52);
            WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79, v56);
            goto LABEL_65;
          }
        }

        __break(1u);
LABEL_67:
        v5 = &v79;
        v7 = 24;
        while (1)
        {
          IPC::Decoder::decode<WebCore::ISO18013PresentmentRequest>(&v79, a2);
          v8 = BYTE8(v80);
          if (BYTE8(v80))
          {
            if (HIDWORD(v82) == v82)
            {
              WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ISO18013PresentmentRequest>(&v81, &v79);
            }

            else
            {
              v57 = &v81[24 * HIDWORD(v82)];
              *v57 = v79;
              *(v57 + 1) = 0;
              *(v57 + 2) = 0;
              v58 = *(&v79 + 1);
              *(&v79 + 1) = 0;
              *(v57 + 1) = v58;
              LODWORD(v58) = v80;
              LODWORD(v80) = 0;
              *(v57 + 4) = v58;
              LODWORD(v58) = DWORD1(v80);
              DWORD1(v80) = 0;
              *(v57 + 5) = v58;
              ++HIDWORD(v82);
            }
          }

          if (BYTE8(v80) == 1)
          {
            WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79 + 8, v44);
          }

          if ((v8 & 1) == 0)
          {
            break;
          }

          if (!--v6)
          {
            WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v81, HIDWORD(v82));
            goto LABEL_61;
          }
        }

LABEL_77:
        LOBYTE(cf) = 0;
        v75 = 0;
        WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v81, v44);
      }

      v55 = 0;
      LOBYTE(v70) = 0;
      v72 = 0;
LABEL_80:
      if (v78 == 1)
      {
        WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v76, v52);
      }

      if (v55)
      {
        a5.n128_u64[0] = 0;
        *v11 = v70;
        *(v11 + 2) = v9;
        *(v11 + 3) = v7;
        v70 = 0u;
        v71 = a5;
        *(v11 + 2) = v8;
        *(v11 + 6) = v5;
        *(v11 + 7) = v6;
        v11[32] = 0;
        WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, v52);
        result = WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v61);
        goto LABEL_84;
      }

LABEL_110:
      v14 = *(a2 + 1);
      goto LABEL_111;
    }

    *(a2 + 2) = v17 + 16;
    if (!v18)
    {
      v62 = v14;
      v63 = v13;
      goto LABEL_92;
    }

    v5 = *v18;
    v79 = 0uLL;
    if (v5 < 0x20000)
    {
      if (!v5)
      {
LABEL_43:
        v41 = *(&v79 + 1);
        v76 = v79;
        v79 = 0uLL;
        v77 = v41;
        v78 = 1;
        WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79, v13);
        goto LABEL_44;
      }

      DWORD2(v79) = v5;
      *&v79 = WTF::fastMalloc((8 * v5));
      while (1)
      {
        IPC::Decoder::decode<WebCore::CertificateInfo>(&cf, a2);
        if ((v74 & 1) == 0)
        {
          goto LABEL_37;
        }

        v20 = HIDWORD(v79);
        if (HIDWORD(v79) != DWORD2(v79))
        {
          break;
        }

        v21 = WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v79, HIDWORD(v79) + 1, &cf);
        v22 = HIDWORD(v79);
        v23 = HIDWORD(v79) + 1;
        v24 = v79;
        v25 = *v21;
        *v21 = 0;
        *(v24 + 8 * v22) = v25;
        HIDWORD(v79) = v23;
        if (v74)
        {
          goto LABEL_24;
        }

LABEL_26:
        if (!--v5)
        {
          goto LABEL_43;
        }
      }

      v26 = cf;
      cf = 0;
      *(v79 + 8 * HIDWORD(v79)) = v26;
      HIDWORD(v79) = v20 + 1;
LABEL_24:
      v27 = cf;
      cf = 0;
      if (v27)
      {
        CFRelease(v27);
      }

      goto LABEL_26;
    }

    while (1)
    {
      IPC::Decoder::decode<WebCore::CertificateInfo>(&cf, a2);
      if ((v74 & 1) == 0)
      {
LABEL_37:
        LOBYTE(v76) = 0;
        v78 = 0;
        WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79, v13);
        goto LABEL_38;
      }

      v28 = HIDWORD(v79);
      if (HIDWORD(v79) != DWORD2(v79))
      {
        break;
      }

      v29 = WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v79, HIDWORD(v79) + 1, &cf);
      v30 = HIDWORD(v79);
      v31 = HIDWORD(v79) + 1;
      v32 = v79;
      v33 = *v29;
      *v29 = 0;
      *(v32 + 8 * v30) = v33;
      HIDWORD(v79) = v31;
      if (v74)
      {
        goto LABEL_32;
      }

LABEL_34:
      if (!--v5)
      {
        WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v79, HIDWORD(v79));
        goto LABEL_43;
      }
    }

    v34 = cf;
    cf = 0;
    *(v79 + 8 * HIDWORD(v79)) = v34;
    HIDWORD(v79) = v28 + 1;
LABEL_32:
    v35 = cf;
    cf = 0;
    if (v35)
    {
      CFRelease(v35);
    }

    goto LABEL_34;
  }

LABEL_111:
  *a2 = 0;
  *(a2 + 1) = 0;
  v69 = *(a2 + 3);
  if (v69 && v14)
  {
    v40 = *(*v69 + 16);
    goto LABEL_114;
  }

LABEL_4:
  *v11 = 0;
  v11[40] = 0;
  v15 = *a2;
  v16 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v16)
    {
      return (*(*result + 16))(result, v15);
    }
  }

  return result;
}

void sub_19D82C314(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CFTypeRef cf, char a16, uint64_t a17, char a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a20)
  {
    WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a18, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::move_constructor(*a1 + 40 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return 1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  v3 = *(a2 + 32);
  if (v3 != 255)
  {
    if (!*(a2 + 32))
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 16, (a2 + 16));
      LOBYTE(v3) = *(a2 + 32);
    }

    *(a1 + 32) = v3;
  }

  return a1;
}

void sub_19D82C474(_Unwind_Exception *a1, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v5, a2);
  }

  WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::~move_constructor(v2, v6);
  _Unwind_Resume(a1);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, void *a2)
{
  if (!*(a1 + 32))
  {
    WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
    WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, v3);
  }

  *(a1 + 32) = -1;
  return a1;
}

unint64_t WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * *(a1 + 12) <= a3)
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

    WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19D82C674);
    }

    v3 = *a1;
    v4 = *a1 + 40 * *(a1 + 12);
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(a1 + 8) = v5 / 0x28;
    *a1 = v6;
    WTF::VectorMover<false,mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>>::move(v3, v4, v6);
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

uint64_t WTF::VectorMover<false,mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>>::move(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::move_constructor(a3, v5);
      result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::~move_constructor(v5, v6);
      a3 += 40;
      v5 += 40;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::~move_constructor(v4, a2) + 40;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 48 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::VideoPresetData,void>::encode(a1, v6);
      v6 += 48;
      v7 -= 48;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::VideoPresetData>(uint64_t a1, IPC::Decoder *a2)
{
  v6 = IPC::Decoder::decode<WebCore::IntSize>(a2);
  v8 = v7;
  v9 = *(a2 + 1);
  v10 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 - *a2;
  v12 = v9 >= v11;
  v13 = v9 - v11;
  v14 = v12 && v13 > 7;
  v48 = v6;
  if (!v14)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v38 = *(a2 + 3);
    if (v38)
    {
      if (v9)
      {
        (*(*v38 + 16))(v38);
        v9 = *(a2 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_58;
  }

  *(a2 + 2) = v10 + 1;
  if (v10)
  {
    v15 = *v10;
    v51 = 0;
    v52 = 0;
    if (v15 >= 0x10000)
    {
      v22 = 0;
      LODWORD(v2) = 0;
      do
      {
        result = IPC::Decoder::decode<WebCore::LinearTimingFunction::Point>(&v49, a2);
        if ((v50 & 1) == 0)
        {
          goto LABEL_32;
        }

        if (v2 == v52)
        {
          result = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v51, v2 + 1, &v49);
          v24 = HIDWORD(v52);
          v22 = v51;
          *(v51 + HIDWORD(v52)) = *result;
        }

        else
        {
          *(v22 + v2) = v49;
          v24 = HIDWORD(v52);
        }

        v2 = (v24 + 1);
        HIDWORD(v52) = v24 + 1;
        --v15;
      }

      while (v15);
      if (v52 > v2)
      {
        if (v24 == -1)
        {
          goto LABEL_54;
        }

        if (v2 >> 28)
        {
          __break(0xC471u);
          return result;
        }

        v25 = WTF::fastMalloc((16 * v2));
        LODWORD(v52) = v2;
        v51 = v25;
        if (v25 == v22)
        {
LABEL_54:
          v51 = 0;
          LODWORD(v52) = 0;
        }

        else
        {
          v26 = 0;
          do
          {
            *(v25 + v26) = *(v22 + v26);
            v26 += 16;
          }

          while (16 * v2 != v26);
          if (!v22)
          {
            goto LABEL_17;
          }
        }

        WTF::fastFree(v22, v17);
        LODWORD(v2) = HIDWORD(v52);
      }
    }

    else
    {
      if (v15)
      {
        v16 = WTF::fastMalloc((16 * v15));
        LODWORD(v2) = 0;
        LODWORD(v52) = v15;
        v51 = v16;
        while (1)
        {
          IPC::Decoder::decode<WebCore::LinearTimingFunction::Point>(&v49, a2);
          if ((v50 & 1) == 0)
          {
            break;
          }

          if (v2 == v52)
          {
            v18 = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v51, v2 + 1, &v49);
            v19 = HIDWORD(v52);
            v16 = v51;
            *(v51 + HIDWORD(v52)) = *v18;
          }

          else
          {
            *(v16 + v2) = v49;
            v19 = HIDWORD(v52);
          }

          LODWORD(v2) = v19 + 1;
          HIDWORD(v52) = v19 + 1;
          if (!--v15)
          {
            goto LABEL_17;
          }
        }

LABEL_32:
        if (v51)
        {
          WTF::fastFree(v51, v17);
        }

        goto LABEL_34;
      }

      LODWORD(v2) = 0;
    }

LABEL_17:
    v20 = v51;
    v3 = v52;
    v21 = 1;
    goto LABEL_36;
  }

LABEL_58:
  *a2 = 0;
  *(a2 + 1) = 0;
  v39 = *(a2 + 3);
  if (v39 && v9)
  {
    (*(*v39 + 16))(v39);
  }

LABEL_34:
  v27 = *a2;
  v28 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v21 = 0;
    v20 = 0;
LABEL_36:
    v29 = IPC::Decoder::decode<unsigned long long>(a2);
    v31 = v30;
    result = IPC::Decoder::decode<unsigned long long>(a2);
    v33 = v32;
    v28 = *(a2 + 1);
    v34 = *(a2 + 2);
    v27 = *a2;
    if (v28 <= &v34[-*a2])
    {
      v46 = result;
      v47 = v33;
      *a2 = 0;
      *(a2 + 1) = 0;
      v40 = *(a2 + 3);
      if (v40)
      {
        if (v28)
        {
          (*(*v40 + 16))(v40);
          v27 = *a2;
          v28 = *(a2 + 1);
          goto LABEL_64;
        }
      }

      else
      {
        v28 = 0;
      }

      v27 = 0;
    }

    else
    {
      *(a2 + 2) = v34 + 1;
      if (v34)
      {
        v35 = *v34;
        if (v35 < 2)
        {
          v36 = 1;
          goto LABEL_40;
        }

        v46 = result;
        v47 = v33;
        goto LABEL_68;
      }

      v46 = result;
      v47 = v33;
    }

LABEL_64:
    *a2 = 0;
    *(a2 + 1) = 0;
    v41 = *(a2 + 3);
    if (!v41)
    {
      v28 = 0;
LABEL_66:
      v27 = 0;
      v35 = 0;
      goto LABEL_68;
    }

    if (!v28)
    {
      goto LABEL_66;
    }

    (*(*v41 + 16))(v41, v27);
    v35 = 0;
    v27 = *a2;
    v28 = *(a2 + 1);
LABEL_68:
    *a2 = 0;
    *(a2 + 1) = 0;
    v42 = *(a2 + 3);
    if (!v42 || !v28)
    {
      break;
    }

    (*(*v42 + 16))(v42, v27);
    v36 = 0;
    v27 = *a2;
    result = v46;
    v33 = v47;
LABEL_40:
    v37 = v35 ? v36 : 0;
    if (!v27)
    {
      break;
    }

    if (v8 & 1) != 0 && (v21 & 1) != 0 && (v31 & 1) != 0 && (v33 & 1) != 0 && (v36)
    {
      *a1 = v48;
      *(a1 + 8) = v20;
      *(a1 + 16) = v3;
      *(a1 + 20) = v2;
      *(a1 + 24) = v29;
      *(a1 + 32) = result;
      *(a1 + 40) = v37;
      *(a1 + 48) = 1;
      return result;
    }

    __break(1u);
LABEL_52:
    if (v28)
    {
      (*(*result + 16))(result, v27);
    }
  }

  *a1 = 0;
  *(a1 + 48) = 0;
  if (v20)
  {
    v43 = v21;
  }

  else
  {
    v43 = 0;
  }

  if (v43 == 1)
  {
    WTF::fastFree(v20, v27);
  }

  v44 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v44)
  {
    v45 = *(*result + 16);

    return v45();
  }

  return result;
}

void sub_19D82CC70(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15)
{
  if (v15)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    WTF::fastFree(v15, a2);
  }

  _Unwind_Resume(exception_object);
}

__n128 WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::VideoPresetData>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 48 * a1[3];
  *v4 = *v3;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 8, (v3 + 8));
  result = *(v3 + 24);
  *(v4 + 40) = *(v3 + 40);
  *(v4 + 24) = result;
  ++a1[3];
  return result;
}

void sub_19D82CD3C(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * a1[3] <= a3)
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

    WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF *WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = (*result + 48 * *(result + 3));
      v5 = 48 * a2;
      v6 = WTF::fastMalloc((48 * a2));
      *(v2 + 2) = v5 / 0x30;
      *v2 = v6;
      result = WTF::VectorMover<false,WebCore::VideoPresetData>::move(v3, v4, v6);
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
  }

  return result;
}

WTF *WTF::VectorMover<false,WebCore::VideoPresetData>::move(WTF *result, WTF *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = (v5 + v6 + 8);
      v8 = a3 + v6;
      *v8 = *(v5 + v6);
      *(v8 + 16) = 0;
      *(a3 + v6 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 8, v7);
      v10 = *(v5 + v6 + 24);
      *(v8 + 40) = *(v5 + v6 + 40);
      *(v8 + 24) = v10;
      result = *v7;
      if (*v7)
      {
        *v7 = 0;
        *(v5 + v6 + 16) = 0;
        result = WTF::fastFree(result, v9);
      }

      v6 += 48;
    }

    while ((v5 + v6) != a2);
  }

  return result;
}

void sub_19D82CF94(_Unwind_Exception *exception_object, void *a2)
{
  v6 = *(v4 + 8);
  if (v6)
  {
    *(v4 + 8) = 0;
    *(v2 + v3 + 16) = 0;
    WTF::fastFree(v6, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 48 * v3;
    v6 = v4 + 8;
    do
    {
      v7 = *v6;
      if (*v6)
      {
        *v6 = 0;
        *(v6 + 2) = 0;
        WTF::fastFree(v7, a2);
      }

      v6 += 48;
      v5 -= 48;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,void>::encode<IPC::Encoder,mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties> const&>(mpark *this, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,void>::encode<IPC::Encoder,mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties> const&,0ul>(this, a2, a3);
  }

  else
  {
    if (*(a2 + 64))
    {
      mpark::throw_bad_variant_access(this);
    }

    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(this, *a2);

    return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(this, (a2 + 4));
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,void>::encode<IPC::Encoder,mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties> const&,0ul>(mpark *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 64) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }

    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(this, a2);
    v5 = *(a2 + 8);

    return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(this, v5);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,void>::encode<IPC::Encoder,mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties> const&,0ul,1ul>(this, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,void>::encode<IPC::Encoder,mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties> const&,0ul,1ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 64) != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::MockCameraProperties,void>::encode(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,void>::encode<IPC::Encoder,mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties> const&,0ul,1ul,2ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,void>::encode<IPC::Encoder,mpark::variant<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties> const&,0ul,1ul,2ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (*(a2 + 64) != 3)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WebCore::MockDisplayProperties,void>::encode(result, a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::Constant<(WebCore::CSSValueID)394>>,void>::encode<IPC::Encoder,std::optional<WebCore::Constant<(WebCore::CSSValueID)394>>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 1))
  {
    v5 = 1;
    result = IPC::Encoder::operator<<<BOOL>(a1, &v5);
    if ((*(a2 + 1) & 1) == 0)
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::TransformOperationData>,void>::encode<IPC::Encoder,std::optional<WebCore::TransformOperationData> const&>(v4);
    }
  }

  else
  {
    v6 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v6);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::TransformOperationData>,void>::encode<IPC::Encoder,std::optional<WebCore::TransformOperationData> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 88))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 88))
    {
      return IPC::ArgumentCoder<WebCore::TransformOperationData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WTF::RefPtr<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,void>::encode<IPC::Encoder,WebCore::TransformOperation>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

IPC::Encoder *IPC::ArgumentCoder<WTF::RefPtr<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,void>::encode<IPC::Encoder,WebCore::TransformOperation>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v6 = 1;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::TransformOperation,void>::encode(v4, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

mpark *IPC::ArgumentCoder<WTF::RefPtr<WebCore::PathOperation,WTF::RawPtrTraits<WebCore::PathOperation>,WTF::DefaultRefDerefTraits<WebCore::PathOperation>>,void>::encode<IPC::Encoder,WebCore::PathOperation>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v6 = 1;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::PathOperation,void>::encode(v4, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::ArgumentCoder<WTF::RefPtr<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,void>::encode<IPC::Encoder,WebCore::TimingFunction>(IPC::Encoder *a1, double **a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::TimingFunction,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::WebAnimationTime>,void>::encode<IPC::Encoder,std::optional<WebCore::WebAnimationTime>>(IPC::Encoder *a1, WebCore::WebAnimationTime *a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<WebCore::WebAnimationTime,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WebCore::AcceleratedEffect::Keyframe>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::Decoder::decode<WebCore::AcceleratedEffect::Keyframe>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<unsigned long long>(a2);
  v5 = v4;
  IPC::Decoder::decode<WebCore::AcceleratedEffectValues>(v34, a2);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>>(&v32, a2);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *a2;
  if (v6 <= &v7[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20)
    {
      if (v6)
      {
        (*(*v20 + 16))(v20);
        v6 = *(a2 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_34:
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (v21)
    {
      if (v6)
      {
        (*(*v21 + 16))(v21);
        v8 = *a2;
        v6 = *(a2 + 1);
LABEL_37:
        *a2 = 0;
        *(a2 + 1) = 0;
        v22 = *(a2 + 3);
        if (v22 && v6)
        {
          (*(*v22 + 16))(v22, v8);
        }

        v12 = 0;
        v11 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_37;
  }

  *(a2 + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_34;
  }

  v9 = *v7;
  if (v9 >= 2)
  {
    goto LABEL_37;
  }

  if (!v9)
  {
    v12 = 0;
    v11 = 0;
    v13 = 0x10000;
    goto LABEL_11;
  }

  v10 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2);
  if ((v10 & 0xFF00) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = 256;
  if (v10 > 0xFFu)
  {
    v13 = (v10 << 8) & 0xFF0000;
    goto LABEL_11;
  }

LABEL_39:
  v23 = *a2;
  v24 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v25 = *(a2 + 3);
  if (v25 && v24)
  {
    (*(*v25 + 16))(v25, v23);
  }

  v13 = 0;
LABEL_11:
  v14 = IPC::Decoder::decode<WTF::OptionSet<WebCore::AcceleratedEffectProperty>>(a2);
  v30 = v14;
  v31 = BYTE2(v14);
  if (*a2)
  {
    if ((v5 & 1) == 0 || (v35 & 1) == 0 || (v33 & 1) == 0 || !((v11 | v12 | v13) >> 16) || !(v14 >> 16))
    {
      __break(1u);
LABEL_27:
      (*(*v14 + 16))(v14);
      goto LABEL_22;
    }

    WebCore::AcceleratedEffect::Keyframe::Keyframe();
    *a1 = MEMORY[0x1E69E2E58] + 16;
    *(a1 + 8) = v26;
    WebCore::AcceleratedEffectValues::AcceleratedEffectValues(a1 + 16, v27);
    *(a1 + 264) = v28;
    *(a1 + 272) = v29;
    *(a1 + 280) = 1;
    v28 = 0;
    WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(v27, v16);
  }

  else
  {
    *a1 = 0;
    *(a1 + 280) = 0;
  }

  if (v33 == 1)
  {
    v14 = v32;
    v32 = 0;
    if (v14)
    {
      if (v14[2] != 1)
      {
        --v14[2];
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

LABEL_22:
  if (v35 == 1)
  {
    WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(v34, v15);
  }

  if ((*(a1 + 280) & 1) == 0)
  {
    v17 = *a2;
    v18 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19)
    {
      if (v18)
      {
        (*(*v19 + 16))(v19, v17);
      }
    }
  }
}

void sub_19D82D748(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 280) == 1)
  {
    v4 = *(v2 + 264);
    *(v2 + 264) = 0;
    if (v4)
    {
      if (v4[2] == 1)
      {
        (*(*v4 + 16))(v4);
      }

      else
      {
        --v4[2];
      }
    }

    WebCore::AcceleratedEffectValues::~AcceleratedEffectValues((v2 + 16), a2);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::AcceleratedEffect::Keyframe>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 280 * *(a1 + 12);
  *v4 = MEMORY[0x1E69E2E58] + 16;
  *(v4 + 8) = *(v3 + 8);
  result = WebCore::AcceleratedEffectValues::AcceleratedEffectValues(v4 + 16, v3 + 16);
  v6 = *(v3 + 264);
  *(v3 + 264) = 0;
  *(v4 + 264) = v6;
  *(v4 + 272) = *(v3 + 272);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 280 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xEA0EA1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D82DA98);
    }

    v3 = *a1;
    v4 = *a1 + 280 * *(a1 + 12);
    v5 = 280 * a2;
    v6 = WTF::fastMalloc((280 * a2));
    *(a1 + 8) = v5 / 0x118;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::AcceleratedEffect::Keyframe>::move(v3, v4, v6);
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
}

void WTF::VectorMover<false,WebCore::AcceleratedEffect::Keyframe>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      *v7 = MEMORY[0x1E69E2E58] + 16;
      v8 = a1 + v6;
      *(v7 + 8) = *(a1 + v6 + 8);
      WebCore::AcceleratedEffectValues::AcceleratedEffectValues(a3 + v6 + 16, a1 + v6 + 16);
      v10 = *(a1 + v6 + 264);
      *(v8 + 264) = 0;
      *(v7 + 264) = v10;
      *(v7 + 272) = *(a1 + v6 + 272);
      v11 = *(a1 + v6 + 264);
      *(v8 + 264) = 0;
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

      WebCore::AcceleratedEffectValues::~AcceleratedEffectValues((v8 + 16), v9);
      v6 += 280;
    }

    while (a1 + v6 != a2);
  }
}

void IPC::ArgumentCoder<std::optional<WebCore::ProtectionSpace::PlatformData>,void>::encode<IPC::Encoder,std::optional<WebCore::ProtectionSpace::PlatformData>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v5 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v5);
    if (*(a2 + 8))
    {
      IPC::encodeObjectDirectly<NSURLProtectionSpace>(a1, *a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      IPC::ArgumentCoder<WebCore::ProtectionSpaceBaseServerType,void>::decode<IPC::Decoder>(v4);
    }
  }

  else
  {
    v6 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
  }
}

uint64_t IPC::ArgumentCoder<WebCore::ProtectionSpaceBaseServerType,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v9 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v9;
        v1 = v9[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    *v9 = 0;
    v9[1] = 0;
    v7 = v9[3];
    if (v7 && v1)
    {
      (*(*v7 + 16))(v7, v3);
    }

    goto LABEL_9;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v9 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if ((v4 - 1) >= 8)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  v5 = 1;
  return v4 | (v5 << 8);
}

uint64_t IPC::ArgumentCoder<WebCore::ProtectionSpaceBaseAuthenticationScheme,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v9 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v9;
        v1 = v9[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    *v9 = 0;
    v9[1] = 0;
    v7 = v9[3];
    if (v7 && v1)
    {
      (*(*v7 + 16))(v7, v3);
    }

    goto LABEL_9;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v9 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if ((v4 - 1) >= 0xC)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  v5 = 1;
  return v4 | (v5 << 8);
}

void IPC::ArgumentCoder<mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    IPC::ArgumentCoder<mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 24))
    {
      mpark::throw_bad_variant_access(a1);
    }

    IPC::ArgumentCoder<WebCore::CredentialBase::NonPlatformData,void>::encode(a1, a2);
  }
}

void IPC::ArgumentCoder<mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 24) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    IPC::encodeObjectDirectly<NSURLCredential>(a1, v4);
  }
}

void IPC::ArgumentCoder<mpark::variant<WebCore::CredentialBase::NonPlatformData,WTF::RetainPtr<NSURLCredential>>,void>::decode<IPC::Decoder>(WTF::StringImpl *a1@<X0>, uint64_t a2@<X8>)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  if (v6 <= &v7[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = *(a1 + 3);
    if (v31)
    {
      if (v6)
      {
        (*(*v31 + 16))(v31);
        v6 = *(a1 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_44;
  }

  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_44:
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32 && v6)
    {
      (*(*v32 + 16))(v32);
    }

    goto LABEL_4;
  }

  v8 = *v7;
  if (v8 < 2)
  {
    if (v8)
    {
      v10 = objc_opt_class();
      v41[0] = v10;
      if (v10)
      {
        v11 = v10;
      }

      WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v37, v41, 1);
      IPC::decodeObjectDirectlyRequiringAllowedClasses<NSURLCredential>(a1, &v39);
      v13 = v40;
      if (v40 == 1)
      {
        v14 = v39;
        if (v39)
        {
          v15 = v39;
        }
      }

      else
      {
        v14 = 0;
      }

      if (v37)
      {
        WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v37, v12);
      }

      v24 = v41[0];
      v41[0] = 0;
      if (v24)
      {

        if (v13)
        {
          goto LABEL_31;
        }
      }

      else if (v13)
      {
LABEL_31:
        *a2 = v14;
        v9 = 1;
        *(a2 + 24) = 1;
        goto LABEL_32;
      }

      v25 = *a1;
      v26 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v27 = *(a1 + 3);
      if (v27 && v26)
      {
        (*(*v27 + 16))(v27, v25);
      }

      goto LABEL_4;
    }

    IPC::Decoder::decode<WTF::String>(a1, &v39);
    IPC::Decoder::decode<WTF::String>(a1, &v37);
    v16 = *(a1 + 1);
    v17 = *(a1 + 2);
    v18 = *a1;
    if (v16 <= &v17[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v33 = *(a1 + 3);
      if (v33)
      {
        if (v16)
        {
          (*(*v33 + 16))(v33);
          v16 = *(a1 + 1);
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v17 + 1;
      if (v17)
      {
        v19 = *v17;
        if (v19 < 3)
        {
          v2 = v19 | 0x100;
          if (v18)
          {
LABEL_15:
            if ((v40 & 1) == 0 || (v20 = v39, v39 = 0, (v38 & 1) == 0) || v2 <= 0xFF)
            {
              __break(1u);
              goto LABEL_38;
            }

            v21 = 1;
            v3 = v37;
LABEL_19:
            if (v40 == 1)
            {
              v22 = v39;
              v39 = 0;
              if (v22)
              {
                if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v18);
                }
              }
            }

            if (v21)
            {
              *a2 = v20;
              *(a2 + 8) = v3;
              v23 = (a2 + 24);
              v9 = 1;
              *(a2 + 16) = v2;
LABEL_25:
              *v23 = 0;
              goto LABEL_32;
            }

LABEL_38:
            v28 = *a1;
            v29 = *(a1 + 1);
            *a1 = 0;
            *(a1 + 1) = 0;
            v30 = *(a1 + 3);
            if (v30 && v29)
            {
              (*(*v30 + 16))(v30, v28);
            }

            v9 = 0;
            v23 = a2;
            goto LABEL_25;
          }

LABEL_53:
          if (v38)
          {
            v36 = v37;
            v37 = 0;
            if (v36)
            {
              if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v36, v18);
              }
            }
          }

          v21 = 0;
          v20 = 0;
          goto LABEL_19;
        }

        goto LABEL_52;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34)
    {
      if (v16)
      {
        (*(*v34 + 16))(v34);
        v18 = *a1;
        v16 = *(a1 + 1);
        goto LABEL_52;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = 0;
LABEL_52:
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35)
    {
      if (v16)
      {
        (*(*v35 + 16))(v35, v18);
        v2 = 0;
        v18 = *a1;
        if (*a1)
        {
          goto LABEL_15;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_4:
  v9 = 0;
  *a2 = 0;
LABEL_32:
  *(a2 + 32) = v9;
}

void sub_19D82E24C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, WTF::StringImpl *a11, char a12, uint64_t a13)
{
  if ((a10 & 1) != 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void *IPC::VectorArgumentCoder<false,WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(void *result, uint64_t a2)
{
  v2 = -*result;
  v3 = v2 & 7 | 8;
  if (result[1] >= v3)
  {
    *(*result + (v2 & 7)) = *(a2 + 12);
    v4 = result[1];
    v5 = v4 >= v3;
    v6 = v4 - v3;
    if (v5)
    {
      v7 = (*result + v3);
      *result = v7;
      result[1] = v6;
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
  }

  v7 = 0;
  v6 = 0;
  *result = 0;
  result[1] = 0;
LABEL_5:
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    do
    {
      if (v6)
      {
        *v7 = *v9;
        v10 = result[1];
        if (!v10)
        {
          goto LABEL_14;
        }

        v6 = v10 - 1;
        v7 = (*result + 1);
        *result = v7;
        result[1] = v6;
      }

      else
      {
        v7 = 0;
        *result = 0;
        result[1] = 0;
      }

      ++v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

WTF *IPC::VectorArgumentCoder<false,WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
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

    goto LABEL_30;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_30:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      if (v4)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v11 = *v5;
  v23 = 0;
  v24 = 0;
  if (v11 >= 0x100000)
  {
    while (1)
    {
      v19 = IPC::Decoder::decode<WebCore::ShapeDetection::BarcodeFormat>(a1);
      v22 = v19;
      if ((v19 & 0x100) == 0)
      {
        break;
      }

      v17 = HIDWORD(v24);
      if (HIDWORD(v24) == v24)
      {
        v18 = WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v23, HIDWORD(v24) + 1, &v22);
        v17 = HIDWORD(v24);
        *(v23 + HIDWORD(v24)) = *v18;
      }

      else
      {
        *(v23 + HIDWORD(v24)) = v19;
      }

      HIDWORD(v24) = v17 + 1;
      v11 = (v11 - 1);
      if (!v11)
      {
        WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v23, (v17 + 1));
        v15 = HIDWORD(v24);
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (!v11)
    {
      v15 = 0;
LABEL_17:
      v16 = v23;
      v23 = 0;
      *a2 = v16;
      HIDWORD(v24) = 0;
      *(a2 + 8) = v24;
      *(a2 + 12) = v15;
      *(a2 + 16) = 1;
      goto LABEL_24;
    }

    LODWORD(v24) = v11;
    v23 = WTF::fastMalloc(v11);
    while (1)
    {
      v12 = IPC::Decoder::decode<WebCore::ShapeDetection::BarcodeFormat>(a1);
      v22 = v12;
      if ((v12 & 0x100) == 0)
      {
        break;
      }

      v13 = HIDWORD(v24);
      if (HIDWORD(v24) == v24)
      {
        v14 = WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v23, HIDWORD(v24) + 1, &v22);
        v13 = HIDWORD(v24);
        *(v23 + HIDWORD(v24)) = *v14;
      }

      else
      {
        *(v23 + HIDWORD(v24)) = v12;
      }

      v15 = v13 + 1;
      HIDWORD(v24) = v15;
      v11 = (v11 - 1);
      if (!v11)
      {
        goto LABEL_17;
      }
    }
  }

  *a2 = 0;
  *(a2 + 16) = 0;
LABEL_24:
  result = v23;
  if (v23)
  {
    v23 = 0;
    LODWORD(v24) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

void sub_19D82E5AC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[2 * v5];
    do
    {
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *v6);
      result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v6[1]);
      v6 += 2;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ShapeDetection::BarcodeFormat,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v9 = a1[3];
    if (v9)
    {
      if (v1)
      {
        (*(*v9 + 16))(v9);
        v3 = *v11;
        v1 = v11[1];
        goto LABEL_11;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_11;
  }

  a1[2] = (v2 + 1);
  if (v2)
  {
    v4 = *v2;
    v5 = 1;
    goto LABEL_4;
  }

  v11 = a1;
LABEL_11:
  *v11 = 0;
  v11[1] = 0;
  v10 = v11[3];
  if (v10 && v1)
  {
    (*(*v10 + 16))(v10, v3);
  }

  v4 = 0;
  v5 = 0;
LABEL_4:
  v6 = v4 < 0xE;
  v7 = v4 | 0x100;
  if ((v5 & v6) != 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 24 * v5;
    do
    {
      IPC::VectorArgumentCoder<false,WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v6);
      result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(v6 + 16));
      v6 += 24;
    }

    while (v6 != v7);
  }

  return result;
}

WTF *IPC::Decoder::decode<WebCore::ShapeDetection::Landmark>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::Vector<WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v15, a2);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (v5 <= &v6[-*a2])
  {
    goto LABEL_10;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = *v6;
  if (v8 >= 3)
  {
    goto LABEL_15;
  }

  v9 = v8 | 0x100;
  if (v7)
  {
    while (1)
    {
      if ((v16 & 1) != 0 && v9 > 0xFF)
      {
        *a1 = v15[0];
        *(a1 + 8) = v15[1];
        *(a1 + 16) = v9;
        *(a1 + 24) = 1;
        return result;
      }

      __break(1u);
LABEL_10:
      *a2 = 0;
      *(a2 + 1) = 0;
      v10 = *(a2 + 3);
      if (v10)
      {
        if (v5)
        {
          (*(*v10 + 16))(v10);
          v5 = *(a2 + 1);
        }
      }

      else
      {
        v5 = 0;
      }

LABEL_12:
      *a2 = 0;
      *(a2 + 1) = 0;
      v11 = *(a2 + 3);
      if (!v11)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_14;
      }

      (*(*v11 + 16))(v11);
      v7 = *a2;
      v5 = *(a2 + 1);
LABEL_15:
      *a2 = 0;
      *(a2 + 1) = 0;
      v12 = *(a2 + 3);
      if (v12)
      {
        if (v5)
        {
          result = (*(*v12 + 16))(v12, v7);
          v9 = 0;
          v7 = *a2;
          if (*a2)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }

    v5 = 0;
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

LABEL_16:
  *a1 = 0;
  *(a1 + 24) = 0;
  if ((v16 & 1) != 0 && v15[0])
  {
    WTF::fastFree(v15[0], v7);
  }

  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

void sub_19D82E9E4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, uint64_t a11, char a12)
{
  if (a12)
  {
    if (a10)
    {
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D82EA38(_Unwind_Exception *exception_object, void *a2)
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

WTF *WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::Landmark>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 24 * a1[3];
  *v4 = 0;
  *(v4 + 8) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v3);
  *(v4 + 16) = *(v3 + 16);
  ++a1[3];
  return result;
}

void sub_19D82EAC8(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF *WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = (*result + 24 * *(result + 3));
      v5 = 24 * a2;
      v6 = WTF::fastMalloc((24 * a2));
      *(v2 + 2) = v5 / 0x18;
      *v2 = v6;
      result = WTF::VectorMover<false,WebCore::ShapeDetection::Landmark>::move(v3, v4, v6);
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
  }

  return result;
}

WTF *WTF::VectorMover<false,WebCore::ShapeDetection::Landmark>::move(WTF *result, WTF *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      *v7 = 0;
      *(v7 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3 + v6, (v5 + v6));
      *(v7 + 16) = *(v5 + v6 + 16);
      result = *(v5 + v6);
      if (result)
      {
        v9 = v5 + v6;
        *v9 = 0;
        *(v9 + 2) = 0;
        result = WTF::fastFree(result, v8);
      }

      v6 += 24;
    }

    while ((v5 + v6) != a2);
  }

  return result;
}

void sub_19D82ED00(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *(v2 + v3);
  if (v5)
  {
    v6 = v2 + v3;
    *v6 = 0;
    *(v6 + 8) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::StreamConnectionEncoder::encodeSpan<unsigned short const,18446744073709551615ul>(void *a1, const void *a2, uint64_t a3)
{
  v4 = 2 * a3;
  v5 = a1[1];
  v6 = v4 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  if (v5 < v6)
  {
    goto LABEL_9;
  }

  if (v5 < (*a1 & 1uLL))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    *a1 = 0;
    a1[1] = 0;
    return v5 >= v6;
  }

  if (v5 - (*a1 & 1) >= v4)
  {
    memcpy((*a1 + (*a1 & 1)), a2, v4);
    v7 = a1[1];
    v8 = v7 >= v6;
    v9 = v7 - v6;
    if (v8)
    {
      *a1 += v6;
      a1[1] = v9;
      return v5 >= v6;
    }

    goto LABEL_8;
  }

  result = 1067;
  __break(0xC471u);
  return result;
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[7 * v5];
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6[5]);
      result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6[6]);
      v6 += 7;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::TextExtraction::Editable>,void>::encode<IPC::Encoder,std::optional<WebCore::TextExtraction::Editable> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 24))
    {
      return IPC::ArgumentCoder<WebCore::TextExtraction::Editable,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<std::pair<WTF::URL,WebCore::CharacterRange>>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::Decoder::decode<std::pair<WTF::URL,WebCore::CharacterRange>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::URL>(a2, v12);
  if (v13 == 1)
  {
    IPC::Decoder::decode<WebCore::CharacterRange>(a2, &v10);
    if (v11)
    {
      if ((v13 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WTF::URL::URL(a1, v12);
      *(a1 + 40) = v10;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      *a1 = 0;
    }

    *(a1 + 56) = v5;
    if (v13)
    {
      v6 = v12[0];
      v12[0] = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 56) = 0;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v9 = *(a2 + 3);
    if (v9)
    {
      if (v8)
      {
        (*(*v9 + 16))(v9, v7);
      }
    }
  }
}

void sub_19D82EFBC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (*(v18 + 56) == 1)
  {
    v20 = *v18;
    *v18 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::URL,WebCore::CharacterRange>>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  WTF::URL::URL(*a1 + 56 * a1[3], v3);
  result = *(v3 + 40);
  *(v5 + 40) = result;
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 56 * a1[3] <= a3)
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

    WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x4924925)
    {
      __break(0xC471u);
      JUMPOUT(0x19D82F1FCLL);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 56 * *(result + 3));
    v5 = 56 * a2;
    v6 = WTF::fastMalloc((56 * a2));
    *(v2 + 2) = v5 / 0x38;
    *v2 = v6;
    result = WTF::VectorMover<false,std::pair<WTF::URL,WebCore::CharacterRange>>::move(v3, v4, v6);
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