WTF::StringImpl *WTF::VectorMover<false,std::pair<WTF::URL,WebCore::CharacterRange>>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      WTF::URL::URL(a3, v5);
      *(a3 + 40) = *(v5 + 40);
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v6);
        }
      }

      a3 += 56;
      v5 = (v5 + 56);
    }

    while (v5 != a2);
  }

  return result;
}

WTF::StringImpl *WTF::VectorDestructor<true,std::pair<WTF::URL,WebCore::CharacterRange>>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 7;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,std::pair<WTF::URL,WebCore::CharacterRange>>::destruct(*a1, (*a1 + 56 * v3));
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

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData> const&>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (a2[80])
    {
      mpark::throw_bad_variant_access(a1);
    }

    v5 = *a2;

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v5);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData> const&,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 80) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::TextExtraction::TextItemData,void>::encode(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData> const&,0ul,1ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData> const&,0ul,1ul>(mpark *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 80) != 2)
    {
      mpark::throw_bad_variant_access(this);
    }

    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(this, *a2);
    v5 = *(a2 + 4);

    return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(this, v5);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData> const&,0ul,1ul,2ul>(this, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData> const&,0ul,1ul,2ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (*(a2 + 80) != 3)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = result;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(result, a2);

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, (a2 + 8));
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = 120 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::TextExtraction::Item,void>::encode(a1, v6);
      v6 += 120;
      v7 -= 120;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::TextExtraction::Item>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebCore::TextExtraction::Item,void>::decode(a2);
  if ((*(a1 + 120) & 1) == 0)
  {
    v5 = *a2;
    v6 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
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

void sub_19D82F584(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (*(v13 + 120) == 1)
  {
    WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 + 104, a2);
    if (*(v13 + 80) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1> &>(&a13, v13);
    }

    *(v13 + 80) = -1;
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextExtraction::Item>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 120 * *(a1 + 12);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1>::move_constructor(v4, v3);
  *(v4 + 88) = *(v3 + 88);
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 104, (v3 + 104));
  ++*(a1 + 12);
  return result;
}

void sub_19D82F650(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v16 = *v14;
  if (*v14)
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
    WTF::fastFree(v16, a2);
  }

  if (*(v13 + 80) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1> &>(&a13, v13);
  }

  *(v13 + 80) = -1;
  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 120 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x2222223)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = *a1;
      v4 = *a1 + 120 * *(a1 + 12);
      v5 = 120 * a2;
      v6 = WTF::fastMalloc((120 * a2));
      *(a1 + 8) = v5 / 0x78;
      *a1 = v6;
      WTF::VectorMover<false,WebCore::TextExtraction::Item>::move(v3, v4, v6);
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
}

void WTF::VectorMover<false,WebCore::TextExtraction::Item>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1>::move_constructor(a3 + v6, (a1 + v6));
      v8 = *(a1 + v6 + 88);
      *(v7 + 104) = 0;
      v7 += 104;
      *(v7 - 16) = v8;
      *(v7 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v7, (a1 + v6 + 104));
      WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + v6 + 104, v9);
      if (*(a1 + v6 + 80) != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1> &>(&v10, a1 + v6);
      }

      *(a1 + v6 + 80) = -1;
      v6 += 120;
    }

    while (a1 + v6 != a2);
  }
}

void sub_19D82F8D4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  v16 = *(v13 + 104);
  if (v16)
  {
    *(v13 + 104) = 0;
    *(v12 + v14 + 112) = 0;
    WTF::fastFree(v16, a2);
  }

  v17 = v12 + v14;
  if (*(v17 + 80) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1> &>(&a12, v13);
  }

  *(v17 + 80) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::MediaConstraintType,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v10 = a1;
    v7 = a1[3];
    if (v7)
    {
      if (v1)
      {
        (*(*v7 + 16))(v7);
        v3 = *v10;
        v1 = v10[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    *v10 = 0;
    v10[1] = 0;
    v8 = v10[3];
    if (v8 && v1)
    {
      (*(*v8 + 16))(v8, v3);
    }

    goto LABEL_9;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v10 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if (v4 > 0x11)
  {
LABEL_9:
    v5 = 0;
    v6 = 0;
    return v5 | (v6 << 8);
  }

  v5 = byte_19E7030D8[v4];
  v6 = byte_19E7030EA[v4];
  return v5 | (v6 << 8);
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::MediaSettingsRange>,void>::encode<IPC::Encoder,std::optional<WebCore::MediaSettingsRange> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 48))
    {
      return IPC::ArgumentCoder<WebCore::MediaSettingsRange,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return std::optional<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t std::optional<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D82FAC4(_Unwind_Exception *exception_object, void *a2)
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

WebCore::Model *WTF::RefCounted<WebCore::Model>::deref(WebCore::Model *result)
{
  if (*result == 1)
  {
    WebCore::Model::~Model(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::InspectorOverlayLabel::Content,void>::encode(a1, v6);
      v6 += 32;
      v7 -= 32;
    }

    while (v7);
  }

  return result;
}

unsigned int *IPC::Decoder::decode<WebCore::InspectorOverlayLabel::Content>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v27);
  IPC::Decoder::decode<WebCore::Color>(a2, &v25);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *a2;
  if (v4 <= &v5[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      if (v4)
      {
        (*(*v22 + 16))(v22);
        v4 = *(a2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_40:
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23)
    {
      if (v4)
      {
        (*(*v23 + 16))(v23);
        v6 = *a2;
        v4 = *(a2 + 1);
LABEL_43:
        *a2 = 0;
        *(a2 + 1) = 0;
        v24 = *(a2 + 3);
        if (v24 && v4)
        {
          (*(*v24 + 16))(v24, v6);
        }

        LODWORD(v8) = 0;
        goto LABEL_5;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_43;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_40;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_43;
  }

  LODWORD(v8) = v7 | 0x100;
LABEL_5:
  result = IPC::Decoder::decode<WebCore::Color>(a2, &v29);
  v11 = *a2;
  if (!*a2)
  {
    goto LABEL_21;
  }

  if (v8 <= 0xFF || (v30 & 1) == 0)
  {
    goto LABEL_20;
  }

  v12 = v29;
  while (1)
  {
    if (v28)
    {
      v13 = v27;
      v27 = 0;
      if (v26)
      {
        v14 = v25;
        v25 = 0;
        if (v11)
        {
          *a1 = v13;
          *(a1 + 8) = v14;
          *(a1 + 16) = v8;
          *(a1 + 24) = v12;
          *(a1 + 32) = 1;
          v15 = (a1 + 32);
          goto LABEL_13;
        }
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    if ((v30 & 1) != 0 && (v29 & 0x8000000000000) != 0)
    {
      v16 = (v29 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v29 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        v21 = v11;
        WTF::fastFree(v16, v10);
        v11 = v21;
      }
    }

    v10 = *a2;
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result)
    {
      break;
    }

    if (!v17)
    {
      break;
    }

    v8 = v11;
    result = (*(*result + 16))(result, v10);
    v12 = *a2;
    if (!*a2)
    {
      break;
    }

    v11 = v8;
    LOBYTE(v8) = 0;
  }

  *a1 = 0;
  v18 = v26;
  *(a1 + 32) = 0;
  v15 = (a1 + 32);
  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_13:
  if ((v25 & 0x8000000000000) != 0)
  {
    result = (v25 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v25 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v10);
    }
  }

LABEL_14:
  if (v28 == 1)
  {
    result = v27;
    v27 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  if ((*v15 & 1) == 0)
  {
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v19)
      {
        v20 = *(*result + 16);

        return v20();
      }
    }
  }

  return result;
}

void sub_19D82FE74(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayLabel::Content>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1 + 32 * v4;
  v6 = *result;
  *result = 0;
  *v5 = v6;
  *(v5 + 8) = 0;
  if (v5 == result)
  {
    *(v5 + 16) = *(result + 16);
    *(v5 + 24) = 0;
  }

  else
  {
    v7 = *(result + 8);
    *(result + 8) = 0;
    *(v5 + 8) = v7;
    *(v5 + 16) = *(result + 16);
    *(v5 + 24) = 0;
    v8 = *(result + 24);
    *(result + 24) = 0;
    *(v5 + 24) = v8;
  }

  *(a1 + 12) = v4 + 1;
  return result;
}

unint64_t WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8300B8);
    }

    v4 = *a1;
    v5 = (*a1 + 32 * *(a1 + 12));
    v6 = WTF::fastMalloc((32 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::InspectorOverlayLabel::Content>::move(v4, v5, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::InspectorOverlayLabel::Content>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result + 16;
    do
    {
      v7 = (v5 - 16);
      v6 = *(v5 - 2);
      *(v5 - 2) = 0;
      *a3 = v6;
      *(a3 + 8) = 0;
      if (a3 == v5 - 16)
      {
        *(a3 + 16) = *v5;
        *(a3 + 24) = 0;
      }

      else
      {
        v8 = *(v5 - 1);
        *(v5 - 1) = 0;
        *(a3 + 8) = v8;
        *(a3 + 16) = *v5;
        *(a3 + 24) = 0;
        v9 = *(v5 + 1);
        *(v5 + 1) = 0;
        *(a3 + 24) = v9;
      }

      v10 = *(v5 + 1);
      if ((v10 & 0x8000000000000) != 0)
      {
        v12 = (v10 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v12);
          WTF::fastFree(v12, a2);
        }
      }

      v11 = *(v5 - 1);
      if ((v11 & 0x8000000000000) != 0)
      {
        v13 = (v11 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v13);
          WTF::fastFree(v13, a2);
        }
      }

      result = *v7;
      *v7 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 32;
      v5 += 32;
    }

    while (v7 + 4 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel::Content>::destruct((*result + 32 * a2), (*result + 32 * v4));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >> 27)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((32 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::InspectorOverlayLabel::Content>::move(v5, (v5 + 32 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(a1, v6);
      v6 += 8;
      v7 -= 32;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::InspectorOverlayLabel,void>::encode(a1, v6);
      v6 += 40;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

WTF *IPC::VectorArgumentCoder<false,WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
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

    goto LABEL_30;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_30:
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
  v27 = 0;
  v28 = 0;
  if (v11 >= 0x8000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::FloatQuad>(a1, &v24);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v18 = HIDWORD(v28);
      if (HIDWORD(v28) == v28)
      {
        v19 = WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v27, HIDWORD(v28) + 1, &v24);
        v18 = HIDWORD(v28);
        v20 = (v27 + 32 * HIDWORD(v28));
        v21 = v19[1];
        *v20 = *v19;
      }

      else
      {
        v20 = (v27 + 32 * HIDWORD(v28));
        v21 = v25;
        *v20 = v24;
      }

      v20[1] = v21;
      HIDWORD(v28) = v18 + 1;
      if (!--v11)
      {
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v27, (v18 + 1));
        v14 = v27;
        v17 = HIDWORD(v28);
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (!v11)
    {
      v17 = 0;
      v14 = 0;
LABEL_17:
      v27 = 0;
      *a2 = v14;
      HIDWORD(v28) = 0;
      *(a2 + 8) = v28;
      *(a2 + 12) = v17;
      *(a2 + 16) = 1;
      goto LABEL_24;
    }

    LODWORD(v28) = v11;
    v27 = WTF::fastMalloc((32 * v11));
    while (1)
    {
      IPC::Decoder::decode<WebCore::FloatQuad>(a1, &v24);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v12 = HIDWORD(v28);
      if (HIDWORD(v28) == v28)
      {
        v13 = WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v27, HIDWORD(v28) + 1, &v24);
        v12 = HIDWORD(v28);
        v14 = v27;
        v15 = (v27 + 32 * HIDWORD(v28));
        v16 = v13[1];
        *v15 = *v13;
      }

      else
      {
        v14 = v27;
        v15 = (v27 + 32 * HIDWORD(v28));
        v16 = v25;
        *v15 = v24;
      }

      v15[1] = v16;
      v17 = v12 + 1;
      HIDWORD(v28) = v17;
      if (!--v11)
      {
        goto LABEL_17;
      }
    }
  }

  *a2 = 0;
  *(a2 + 16) = 0;
LABEL_24:
  result = v27;
  if (v27)
  {
    v27 = 0;
    LODWORD(v28) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

void sub_19D8305B4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16)
{
  if (a15)
  {
    WTF::fastFree(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *IPC::Decoder::decode<WebCore::InspectorOverlayLabel>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 7)
  {
    *(a2 + 2) = v4 + 1;
    if (!v4)
    {
      goto LABEL_87;
    }

    v8 = *v4;
    v68 = 0;
    v69 = 0;
    if (v8 < 0x8000)
    {
      if (!v8)
      {
LABEL_52:
        v61[0] = v68;
        v28 = v69;
        v68 = 0;
        v69 = 0;
        v61[1] = v28;
        v62 = 1;
        WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v5);
        goto LABEL_53;
      }

      LODWORD(v69) = v8;
      v68 = WTF::fastMalloc((32 * v8));
      while (1)
      {
        IPC::Decoder::decode<WebCore::InspectorOverlayLabel::Content>(&v63, a2);
        if ((v67 & 1) == 0)
        {
          goto LABEL_48;
        }

        v9 = HIDWORD(v69);
        if (HIDWORD(v69) != v69)
        {
          break;
        }

        WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayLabel::Content>(&v68, &v63);
        if (v67)
        {
          goto LABEL_17;
        }

LABEL_22:
        if (!--v8)
        {
          goto LABEL_52;
        }
      }

      v10 = v63;
      v11 = v68 + 32 * HIDWORD(v69);
      v63 = 0;
      *v11 = v10;
      *(v11 + 8) = 0;
      if (v11 == &v63)
      {
        *(v11 + 16) = v65;
        *(v11 + 24) = 0;
      }

      else
      {
        v12 = v64;
        v64 = 0;
        *(v11 + 8) = v12;
        *(v11 + 16) = v65;
        *(v11 + 24) = 0;
        v13 = v66;
        v66 = 0;
        *(v11 + 24) = v13;
      }

      HIDWORD(v69) = v9 + 1;
LABEL_17:
      if ((v66 & 0x8000000000000) != 0)
      {
        v15 = (v66 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v66 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v15);
          WTF::fastFree(v15, v5);
        }
      }

      if ((v64 & 0x8000000000000) != 0)
      {
        v16 = (v64 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v64 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16);
          WTF::fastFree(v16, v5);
        }
      }

      v14 = v63;
      v63 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v5);
      }

      goto LABEL_22;
    }

    while (1)
    {
      IPC::Decoder::decode<WebCore::InspectorOverlayLabel::Content>(&v63, a2);
      if ((v67 & 1) == 0)
      {
LABEL_48:
        LOBYTE(v61[0]) = 0;
        v62 = 0;
        WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v5);
        goto LABEL_49;
      }

      v17 = HIDWORD(v69);
      if (HIDWORD(v69) != v69)
      {
        break;
      }

      WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayLabel::Content>(&v68, &v63);
      if (v67)
      {
        goto LABEL_36;
      }

LABEL_41:
      if (!--v8)
      {
        WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v68, HIDWORD(v69));
        goto LABEL_52;
      }
    }

    v18 = v63;
    v19 = v68 + 32 * HIDWORD(v69);
    v63 = 0;
    *v19 = v18;
    *(v19 + 8) = 0;
    if (v19 == &v63)
    {
      *(v19 + 16) = v65;
      *(v19 + 24) = 0;
    }

    else
    {
      v20 = v64;
      v64 = 0;
      *(v19 + 8) = v20;
      *(v19 + 16) = v65;
      *(v19 + 24) = 0;
      v21 = v66;
      v66 = 0;
      *(v19 + 24) = v21;
    }

    HIDWORD(v69) = v17 + 1;
LABEL_36:
    if ((v66 & 0x8000000000000) != 0)
    {
      v23 = (v66 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v66 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23);
        WTF::fastFree(v23, v5);
      }
    }

    if ((v64 & 0x8000000000000) != 0)
    {
      v24 = (v64 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v64 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v24);
        WTF::fastFree(v24, v5);
      }
    }

    v22 = v63;
    v63 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v5);
    }

    goto LABEL_41;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v46 = *(a2 + 3);
  if (v46)
  {
    if (v6)
    {
      (*(*v46 + 16))(v46);
      v5 = *a2;
      v6 = *(a2 + 1);
      goto LABEL_87;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_87:
  *a2 = 0;
  *(a2 + 1) = 0;
  v47 = *(a2 + 3);
  if (v47 && v6)
  {
    (*(*v47 + 16))(v47, v5);
  }

  LOBYTE(v61[0]) = 0;
  v62 = 0;
LABEL_49:
  v25 = *a2;
  v26 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v27 = *(a2 + 3);
  if (v27 && v26)
  {
    (*(*v27 + 16))(v27, v25);
  }

LABEL_53:
  IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v30 = v29;
  IPC::Decoder::decode<WebCore::Color>(a2, &v68);
  v31 = *(a2 + 1);
  v32 = *(a2 + 2);
  v33 = *a2;
  if (v31 <= &v32[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v49 = *(a2 + 3);
    if (v49)
    {
      if (v31)
      {
        (*(*v49 + 16))(v49);
        v31 = *(a2 + 1);
      }
    }

    else
    {
      v31 = 0;
    }

LABEL_94:
    *a2 = 0;
    *(a2 + 1) = 0;
    v50 = *(a2 + 3);
    if (v50)
    {
      if (v31)
      {
        (*(*v50 + 16))(v50);
        v33 = *a2;
        v31 = *(a2 + 1);
        goto LABEL_97;
      }
    }

    else
    {
      v31 = 0;
    }

    v33 = 0;
    goto LABEL_97;
  }

  v34 = v32 + 1;
  *(a2 + 2) = v32 + 1;
  if (!v32)
  {
    goto LABEL_94;
  }

  v35 = *v32;
  if (v35 < 5)
  {
    v36 = v35 | 0x100;
    goto LABEL_57;
  }

LABEL_97:
  *a2 = 0;
  *(a2 + 1) = 0;
  v51 = *(a2 + 3);
  if (!v51 || !v31)
  {
    v36 = 0;
    v52 = 0;
    v33 = 0;
    goto LABEL_99;
  }

  (*(*v51 + 16))(v51, v33);
  v36 = 0;
  v33 = *a2;
  v31 = *(a2 + 1);
  v34 = *(a2 + 2);
LABEL_57:
  if (v31 <= v34 - v33)
  {
    v58 = v36;
    v52 = 0;
    v59 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v31 && v59)
    {
      (*(*v59 + 16))(v59);
      v33 = *a2;
      v52 = *(a2 + 1);
    }

    else
    {
      v33 = 0;
    }

    v36 = v58;
    goto LABEL_99;
  }

  *(a2 + 2) = v34 + 1;
  if (!v34)
  {
    v52 = v31;
LABEL_99:
    *a2 = 0;
    *(a2 + 1) = 0;
    v53 = *(a2 + 3);
    if (v53)
    {
      v57 = v36;
      if (v52)
      {
        (*(*v53 + 16))(v53, v33, v52);
        v33 = *a2;
        v31 = *(a2 + 1);
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      v36 = v57;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    goto LABEL_101;
  }

  v37 = *v34;
  if (v37 >= 4)
  {
LABEL_101:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result || !v31)
    {
      goto LABEL_102;
    }

    v54 = v36;
    (*(*result + 16))(result, v33);
    v38 = 0;
    v33 = *a2;
    v36 = v54;
    if (*a2)
    {
      goto LABEL_61;
    }

LABEL_105:
    v55 = *(a2 + 1);
    result = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (result)
    {
      if (v55)
      {
        v56 = v33;
        result = (*(*result + 16))(result);
        if (*a2)
        {
          v33 = v56;
          goto LABEL_63;
        }
      }
    }

LABEL_102:
    *a1 = 0;
    *(a1 + 40) = 0;
    goto LABEL_70;
  }

  v38 = v37 | 0x100;
  if (!v33)
  {
    goto LABEL_105;
  }

LABEL_61:
  if (v36 <= 0xFF || v38 <= 0xFF)
  {
    goto LABEL_76;
  }

LABEL_63:
  if ((v62 & 1) == 0 || (v30 & 1) == 0 || (v69 & 1) == 0 || (v39 = v68, v68 = 0, v60 = v39, !v33))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    v44 = *a2;
    v45 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v45)
      {
        return (*(*result + 16))(result, v44);
      }
    }

    return result;
  }

  WebCore::InspectorOverlayLabel::InspectorOverlayLabel();
  *a1 = v63;
  v41 = v64;
  v63 = 0;
  v64 = 0;
  *(a1 + 8) = v41;
  v42 = v66;
  *(a1 + 16) = v65;
  *(a1 + 24) = 0;
  if (&v63 == a1)
  {
    *(a1 + 32) = v67;
    *(a1 + 40) = 1;
    if ((v42 & 0x8000000000000) != 0)
    {
      v48 = (v42 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v42 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v48);
        WTF::fastFree(v48, v40);
      }
    }
  }

  else
  {
    v66 = 0;
    *(a1 + 24) = v42;
    *(a1 + 32) = v67;
    *(a1 + 40) = 1;
  }

  result = WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v40);
  if ((v60 & 0x8000000000000) != 0)
  {
    result = (v60 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v60 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v33);
    }
  }

LABEL_70:
  if (v69 == 1 && (v68 & 0x8000000000000) != 0)
  {
    result = (v68 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v68 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v33);
    }
  }

  if (v62 == 1)
  {
    result = WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v61, v33);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    goto LABEL_77;
  }

  return result;
}

void sub_19D830DD0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (*(v20 + 40) == 1)
  {
    v22 = *(v20 + 24);
    if ((v22 & 0x8000000000000) != 0)
    {
      v23 = (v22 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v22 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23);
        WTF::fastFree(v23, a2);
      }
    }

    WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayLabel>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 40 * *(a1 + 12);
  *v4 = 0;
  *(v4 + 8) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v3);
  *(v4 + 16) = *(v3 + 16);
  *(v4 + 24) = 0;
  if (v4 != v3)
  {
    v6 = *(v3 + 24);
    *(v3 + 24) = 0;
    *(v4 + 24) = v6;
  }

  *(v4 + 32) = *(v3 + 32);
  ++*(a1 + 12);
  return result;
}

void sub_19D830FC4(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x6666667)
  {
    v2 = result;
    v3 = *result;
    v4 = *result + 40 * *(result + 12);
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(v2 + 8) = v5 / 0x28;
    *v2 = v6;
    WTF::VectorMover<false,WebCore::InspectorOverlayLabel>::move(v3, v4, v6);
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

uint64_t WTF::VectorMover<false,WebCore::InspectorOverlayLabel>::move(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      v8 = v5 + v6;
      *v7 = 0;
      v7[1] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3 + v6, (v5 + v6));
      v7[2] = *(v5 + v6 + 16);
      v7[3] = 0;
      if (a3 + v6 != v5 + v6)
      {
        v10 = *(v5 + v6 + 24);
        *(v5 + v6 + 24) = 0;
        v7[3] = v10;
      }

      *(a3 + v6 + 32) = *(v8 + 32);
      v11 = *(v8 + 24);
      if ((v11 & 0x8000000000000) != 0)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v12);
          WTF::fastFree(v12, v9);
        }
      }

      result = WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6, v9);
      v6 += 40;
    }

    while (v8 + 40 != a2);
  }

  return result;
}

void sub_19D831230(_Unwind_Exception *exception_object, void *a2)
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

unsigned int *WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel>::destruct(*result + 40 * this, (*result + 40 * v4));
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
        result = WTF::VectorMover<false,WebCore::InspectorOverlayLabel>::move(v5, v5 + 40 * v4, result);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 20 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(a1, v6);
      v6 += 5;
      v7 -= 20;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::FloatLine>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v6 = v5;
  result = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  if (*a2)
  {
    if (v6 & 1) != 0 && (v8)
    {
      *a1 = v4;
      *(a1 + 8) = result;
      *(a1 + 16) = sqrtf(((*&v4 - *&result) * (*&v4 - *&result)) + ((*(&v4 + 1) - *(&result + 1)) * (*(&v4 + 1) - *(&result + 1))));
      *(a1 + 20) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 20) = 0;
  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
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
    v11 = *(*result + 16);

    return v11();
  }

  return result;
}

unint64_t WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 20 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0xCCCCCCD)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 20 * a2;
    v6 = WTF::fastMalloc((20 * a2));
    *(v2 + 8) = v5 / 0x14;
    *v2 = v6;
    if (v4)
    {
      v8 = 20 * v4;
      v9 = v3;
      do
      {
        v10 = *v9;
        *(v6 + 16) = *(v9 + 4);
        *v6 = v10;
        v6 += 20;
        v9 = (v9 + 20);
        v8 -= 20;
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

uint64_t WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
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
      if (a2 >= 0xCCCCCCD)
      {
        __break(0xC471u);
        return result;
      }

      v5 = 20 * a2;
      result = WTF::fastMalloc((20 * a2));
      *(v2 + 8) = v5 / 0x14;
      *v2 = result;
      if (v3 && result != v4)
      {
        v6 = 20 * v3;
        v7 = v4;
        do
        {
          v8 = *v7;
          *(result + 16) = *(v7 + 4);
          *result = v8;
          result += 20;
          v7 = (v7 + 20);
          v6 -= 20;
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

uint64_t IPC::Decoder::decode<WebCore::InspectorOverlayHighlight::GridHighlightOverlay::Area>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v13);
  result = IPC::Decoder::decode<WebCore::FloatQuad>(a2, v11);
  if (*a2)
  {
    if (v14 & 1) != 0 && (v12)
    {
      v6 = v13;
      v7 = v11[1];
      *(a1 + 8) = v11[0];
      *(a1 + 24) = v7;
      *a1 = v6;
      *(a1 + 40) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 40) = 0;
  if (v14)
  {
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v5);
      }
    }
  }

  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v9)
  {
    v10 = *(*result + 16);

    return v10();
  }

  return result;
}

void sub_19D831848(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
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

unsigned int *WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay::Area,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorDestructor<true,WebCore::TextRecognitionBlockData>::destruct((*result + 40 * this), (*result + 40 * v4));
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
        result = WTF::VectorTypeOperations<WebCore::TextRecognitionBlockData>::move(v5, (v5 + 40 * v4), result);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 72 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,void>::encode(a1, v6);
      v6 += 9;
      v7 -= 72;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 136 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,void>::encode(a1, v6);
      v6 += 34;
      v7 -= 136;
    }

    while (v7);
  }

  return result;
}

WTF *IPC::Decoder::decode<WebCore::InspectorOverlayHighlight::GridHighlightOverlay>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::Color>(a2, &v89);
  v4 = *(a2 + 1);
  v5 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a2;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v69 = *(a2 + 3);
    if (v69)
    {
      if (v4)
      {
        (*(*v69 + 16))(v69);
        v4 = *(a2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_112;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_112:
    *a2 = 0;
    *(a2 + 1) = 0;
    v70 = *(a2 + 3);
    if (v70 && v4)
    {
      (*(*v70 + 16))(v70);
    }

LABEL_26:
    v23 = *a2;
    v24 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (v25 && v24)
    {
      (*(*v25 + 16))(v25, v23);
    }

    v17 = 0;
    v14 = 0;
    goto LABEL_28;
  }

  v10 = *v5;
  v86 = 0;
  v87 = 0;
  if (v10 >= 0xCCCC)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::FloatLine>(v76, a2);
      if ((v76[20] & 1) == 0)
      {
        goto LABEL_24;
      }

      v18 = HIDWORD(v87);
      if (HIDWORD(v87) == v87)
      {
        v19 = WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v86, HIDWORD(v87) + 1, v76);
        v18 = HIDWORD(v87);
        v20 = v86 + 20 * HIDWORD(v87);
        v21 = *v19;
        *(v20 + 16) = *(v19 + 16);
      }

      else
      {
        v20 = v86 + 20 * HIDWORD(v87);
        v21 = *v76;
        *(v20 + 16) = *&v76[16];
      }

      *v20 = v21;
      HIDWORD(v87) = v18 + 1;
      if (!--v10)
      {
        WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v86, (v18 + 1));
        v14 = v86;
        v2 = HIDWORD(v87);
        goto LABEL_17;
      }
    }
  }

  if (v10)
  {
    LODWORD(v87) = 20 * v10 / 0x14u;
    v86 = WTF::fastMalloc((20 * v10));
    while (1)
    {
      IPC::Decoder::decode<WebCore::FloatLine>(v76, a2);
      if ((v76[20] & 1) == 0)
      {
        break;
      }

      v12 = HIDWORD(v87);
      if (HIDWORD(v87) == v87)
      {
        v13 = WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v86, HIDWORD(v87) + 1, v76);
        v12 = HIDWORD(v87);
        v14 = v86;
        v15 = v86 + 20 * HIDWORD(v87);
        v16 = *v13;
        *(v15 + 16) = *(v13 + 16);
      }

      else
      {
        v14 = v86;
        v15 = v86 + 20 * HIDWORD(v87);
        v16 = *v76;
        *(v15 + 16) = *&v76[16];
      }

      *v15 = v16;
      v2 = v12 + 1;
      HIDWORD(v87) = v12 + 1;
      if (!--v10)
      {
        goto LABEL_17;
      }
    }

LABEL_24:
    v22 = v86;
    if (v86)
    {
      v86 = 0;
      LODWORD(v87) = 0;
      WTF::fastFree(v22, v11);
    }

    goto LABEL_26;
  }

  v2 = 0;
  v14 = 0;
LABEL_17:
  v74 = v87;
  v17 = 1;
LABEL_28:
  IPC::Decoder::decode<WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v86, a2);
  v26 = *(a2 + 1);
  v27 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v28 = *a2;
  v29 = v27 - *a2;
  v7 = v26 >= v29;
  v30 = v26 - v29;
  if (!v7 || v30 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v71 = *(a2 + 3);
    if (v71)
    {
      if (v26)
      {
        (*(*v71 + 16))(v71);
        v26 = *(a2 + 1);
      }
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_117;
  }

  *(a2 + 2) = v27 + 1;
  if (!v27)
  {
LABEL_117:
    *a2 = 0;
    *(a2 + 1) = 0;
    v72 = *(a2 + 3);
    if (v72 && v26)
    {
      (*(*v72 + 16))(v72);
    }

    LOBYTE(v83) = 0;
    v85 = 0;
LABEL_51:
    v43 = a1;
LABEL_52:
    v44 = *a2;
    v45 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v46 = *(a2 + 3);
    if (v46 && v45)
    {
      (*(*v46 + 16))(v46, v44);
    }

    goto LABEL_68;
  }

  v32 = *v27;
  v80 = 0;
  v81 = 0;
  if (v32 >= 0x6666)
  {
    v73 = v85;
    v43 = a1;
    while (1)
    {
      IPC::Decoder::decode<WebCore::InspectorOverlayHighlight::GridHighlightOverlay::Area>(v76, a2);
      v48 = v78[0];
      if ((v78[0] & 1) == 0)
      {
        LOBYTE(v83) = 0;
        v85 = 0;
        WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v80, v47);
        goto LABEL_52;
      }

      v49 = HIDWORD(v81);
      if (HIDWORD(v81) == v81)
      {
        v50 = WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v80, HIDWORD(v81) + 1, v76);
        v49 = HIDWORD(v81);
        v51 = v80 + 40 * HIDWORD(v81);
        v52 = *v50;
        *v50 = 0;
        *v51 = v52;
        v53 = *(v50 + 8);
        *(v51 + 24) = *(v50 + 24);
      }

      else
      {
        v51 = v80 + 40 * HIDWORD(v81);
        v54 = *v76;
        *v76 = 0;
        *v51 = v54;
        v53 = *&v76[8];
        *(v51 + 24) = v77;
      }

      *(v51 + 8) = v53;
      HIDWORD(v81) = v49 + 1;
      if (v78[0])
      {
        v55 = *v76;
        *v76 = 0;
        if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v47);
        }

        if ((v48 & 1) == 0)
        {
          break;
        }
      }

      if (!--v32)
      {
        WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay::Area,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v80, HIDWORD(v81));
        goto LABEL_67;
      }
    }

    LOBYTE(v83) = 0;
    v85 = v73;
    WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v80, v47);
    if ((v73 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (v32)
    {
      v33 = WTF::fastMalloc((40 * v32));
      LODWORD(v81) = 40 * v32 / 0x28u;
      v80 = v33;
      v34 = v85;
      do
      {
        IPC::Decoder::decode<WebCore::InspectorOverlayHighlight::GridHighlightOverlay::Area>(v76, a2);
        v35 = v78[0];
        if ((v78[0] & 1) == 0)
        {
          LOBYTE(v83) = 0;
          v85 = 0;
          WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v80, v28);
          goto LABEL_51;
        }

        v36 = HIDWORD(v81);
        if (HIDWORD(v81) == v81)
        {
          v37 = WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v80, HIDWORD(v81) + 1, v76);
          v36 = HIDWORD(v81);
          v38 = v80 + 40 * HIDWORD(v81);
          v39 = *v37;
          *v37 = 0;
          *v38 = v39;
          v40 = *(v37 + 8);
          *(v38 + 24) = *(v37 + 24);
        }

        else
        {
          v38 = v80 + 40 * HIDWORD(v81);
          v41 = *v76;
          *v76 = 0;
          *v38 = v41;
          v40 = *&v76[8];
          *(v38 + 24) = v77;
        }

        *(v38 + 8) = v40;
        HIDWORD(v81) = v36 + 1;
        if (v78[0])
        {
          v42 = *v76;
          *v76 = 0;
          if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v28);
            if ((v35 & 1) == 0)
            {
LABEL_48:
              LOBYTE(v83) = 0;
              v85 = v34;
              WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v80, v28);
              v43 = a1;
              if (v34)
              {
                goto LABEL_68;
              }

              goto LABEL_52;
            }
          }

          else if ((v35 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        --v32;
      }

      while (v32);
    }

LABEL_67:
    v83 = v80;
    v56 = v81;
    v80 = 0;
    v81 = 0;
    v84 = v56;
    v85 = 1;
    WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v80, v28);
    v43 = a1;
  }

LABEL_68:
  result = IPC::Decoder::decode<WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v80, a2);
  if (!*a2)
  {
LABEL_97:
    *v43 = 0;
    *(v43 + 72) = 0;
    goto LABEL_80;
  }

  if ((v90 & 1) == 0 || (v59 = v89, v89 = 0, *v76 = v59, (v17 & 1) == 0) || (*&v76[8] = v14, *&v76[16] = v74, *&v76[20] = v2, (v88 & 1) == 0) || (*&v77 = v86, v60 = v87, v86 = 0, v87 = 0, *(&v77 + 1) = v60, (v85 & 1) == 0) || (v78[0] = v83, v61 = v84, v83 = 0, v84 = 0, v78[1] = v61, (v82 & 1) == 0))
  {
    __break(1u);
    goto LABEL_97;
  }

  v79[0] = v80;
  v62 = v81;
  v80 = 0;
  v81 = 0;
  v79[1] = v62;
  WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay(v43, v76);
  *(v43 + 72) = 1;
  WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v79, v63);
  WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v78, v64);
  v65 = v77;
  if (v77)
  {
    *&v77 = 0;
    DWORD2(v77) = 0;
    WTF::fastFree(v65, v58);
  }

  result = *&v76[8];
  if (*&v76[8])
  {
    *&v76[8] = 0;
    *&v76[16] = 0;
    result = WTF::fastFree(result, v58);
  }

  if ((*v76 & 0x8000000000000) != 0)
  {
    result = (*v76 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((*v76 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v58);
    }
  }

  v14 = 0;
LABEL_80:
  if (v82 == 1)
  {
    result = WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v80, v58);
  }

  if (v85 == 1)
  {
    result = WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83, v58);
  }

  if (v88 == 1)
  {
    result = v86;
    if (v86)
    {
      v86 = 0;
      LODWORD(v87) = 0;
      result = WTF::fastFree(result, v58);
    }
  }

  if (v14)
  {
    v66 = v17;
  }

  else
  {
    v66 = 0;
  }

  if (v66 == 1)
  {
    result = WTF::fastFree(v14, v58);
  }

  if (v90 == 1 && (v89 & 0x8000000000000) != 0)
  {
    result = (v89 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v89 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v58);
    }
  }

  if ((*(v43 + 72) & 1) == 0)
  {
    v67 = *a2;
    v68 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v68)
      {
        return (*(*result + 16))(result, v67);
      }
    }
  }

  return result;
}

void sub_19D832268(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, WTF::StringImpl *a12, WTF *a13, int a14, WTF *a15, int a16, int a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (*(v32 - 112) == 1)
  {
    v34 = *(v32 - 128);
    if (v34)
    {
      *(v32 - 128) = 0;
      *(v32 - 120) = 0;
      WTF::fastFree(v34, a2);
    }
  }

  if (v31)
  {
    v35 = v30;
  }

  else
  {
    v35 = 0;
  }

  if (v35 == 1)
  {
    WTF::fastFree(v31, a2);
  }

  if (*(v32 - 96) == 1)
  {
    v36 = *(v32 - 104);
    if ((v36 & 0x8000000000000) != 0)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v36 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v37);
        WTF::fastFree(v37, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayHighlight::GridHighlightOverlay>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay((*a1 + 72 * *(a1 + 12)), v3);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 72 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x38E38E4)
    {
      __break(0xC471u);
      JUMPOUT(0x19D83265CLL);
    }

    v3 = *a1;
    v4 = (*a1 + 72 * *(a1 + 12));
    v5 = 72 * a2;
    v6 = WTF::fastMalloc((72 * a2));
    *(a1 + 8) = v5 / 0x48;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::InspectorOverlayHighlight::GridHighlightOverlay>::move(v3, v4, v6);
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

WTF *WTF::VectorMover<false,WebCore::InspectorOverlayHighlight::GridHighlightOverlay>::move(WTF *result, WTF *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay((a3 + v6), (v5 + v6));
      WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6 + 56, v8);
      WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6 + 40, v9);
      v11 = *(v5 + v6 + 24);
      if (v11)
      {
        *(v7 + 3) = 0;
        *(v7 + 8) = 0;
        WTF::fastFree(v11, v10);
      }

      result = *(v7 + 1);
      if (result)
      {
        *(v7 + 1) = 0;
        *(v5 + v6 + 16) = 0;
        result = WTF::fastFree(result, v10);
      }

      v12 = *v7;
      if ((*v7 & 0x8000000000000) != 0)
      {
        result = (v12 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, v10);
        }
      }

      v6 += 72;
    }

    while ((v5 + v6) != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebCore::InspectorOverlayHighlight::GridHighlightOverlay>::destruct((*result + 72 * this), (*result + 72 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x38E38E4)
      {
        __break(0xC471u);
        JUMPOUT(0x19D83283CLL);
      }

      v6 = (72 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x48;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::InspectorOverlayHighlight::GridHighlightOverlay>::move(v5, (v5 + 72 * v4), result);
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

WTF *WTF::VectorTypeOperations<WebCore::InspectorOverlayHighlight::GridHighlightOverlay>::destruct(WTF *result, WTF *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 56, a2);
      WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 40, v4);
      v5 = *(v3 + 3);
      if (v5)
      {
        *(v3 + 3) = 0;
        *(v3 + 8) = 0;
        WTF::fastFree(v5, a2);
      }

      result = *(v3 + 1);
      if (result)
      {
        *(v3 + 1) = 0;
        *(v3 + 4) = 0;
        result = WTF::fastFree(result, a2);
      }

      v6 = *v3;
      if ((*v3 & 0x8000000000000) != 0)
      {
        result = (v6 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }
      }

      v3 = (v3 + 72);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::InspectorOverlayHighlight::GridHighlightOverlay>::destruct(*a1, (*a1 + 72 * v3));
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

void sub_19D83293C(_Unwind_Exception *exception_object, void *a2)
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

void IPC::Decoder::decode<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::Color>(a2, &v57);
  IPC::Decoder::decode<WebCore::FloatQuad>(a2, v55);
  IPC::Decoder::decode<WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v52, a2);
  IPC::Decoder::decode<WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v49, a2);
  IPC::Decoder::decode<WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v46, a2);
  IPC::Decoder::decode<WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v43, a2);
  IPC::Decoder::decode<WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v40, a2);
  IPC::Decoder::decode<WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v37, a2);
  if (*a2)
  {
    if (v58)
    {
      v5 = v57;
      v57 = 0;
      v22 = v5;
      if (v56)
      {
        v23 = v55[0];
        v24 = v55[1];
        if (v54)
        {
          v25 = v52;
          v6 = v53;
          v52 = 0;
          v53 = 0;
          v26 = v6;
          if (v51)
          {
            v27 = v49;
            v7 = v50;
            v49 = 0;
            v50 = 0;
            v28 = v7;
            if (v48)
            {
              v29 = v46;
              v8 = v47;
              v46 = 0;
              v47 = 0;
              v30 = v8;
              if (v45)
              {
                v31 = v43;
                v9 = v44;
                v43 = 0;
                v44 = 0;
                v32 = v9;
                if (v42)
                {
                  v33 = v40;
                  v10 = v41;
                  v40 = 0;
                  v41 = 0;
                  v34 = v10;
                  if (v39)
                  {
                    v35 = v37;
                    v11 = v38;
                    v37 = 0;
                    v38 = 0;
                    v36 = v11;
                    WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(a1, &v22);
                    a1[136] = 1;
                    WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::~FlexHighlightOverlay(&v22, v12);
                    goto LABEL_11;
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

  *a1 = 0;
  a1[136] = 0;
LABEL_11:
  if (v39 == 1)
  {
    WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v4);
  }

  if (v42 == 1)
  {
    v13 = v40;
    if (v40)
    {
      v40 = 0;
      LODWORD(v41) = 0;
      WTF::fastFree(v13, v4);
    }
  }

  if (v45 == 1)
  {
    v14 = v43;
    if (v43)
    {
      v43 = 0;
      LODWORD(v44) = 0;
      WTF::fastFree(v14, v4);
    }
  }

  if (v48 == 1)
  {
    v15 = v46;
    if (v46)
    {
      v46 = 0;
      LODWORD(v47) = 0;
      WTF::fastFree(v15, v4);
    }
  }

  if (v51 == 1)
  {
    v16 = v49;
    if (v49)
    {
      v49 = 0;
      LODWORD(v50) = 0;
      WTF::fastFree(v16, v4);
    }
  }

  if (v54 == 1)
  {
    v17 = v52;
    if (v52)
    {
      v52 = 0;
      LODWORD(v53) = 0;
      WTF::fastFree(v17, v4);
    }
  }

  if (v58 == 1 && (v57 & 0x8000000000000) != 0)
  {
    v21 = (v57 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v57 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v21);
      WTF::fastFree(v21, v4);
    }
  }

  if ((a1[136] & 1) == 0)
  {
    v18 = *a2;
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20)
    {
      if (v19)
      {
        (*(*v20 + 16))(v20, v18);
      }
    }
  }
}

void sub_19D832C24(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, WTF *a29, int a30, int a31, char a32, WTF *a33, int a34, int a35, char a36)
{
  if (*(v36 + 136) == 1)
  {
    WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::~FlexHighlightOverlay(v36, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayHighlight::FlexHighlightOverlay>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(*a1 + 136 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x1E1E1E2)
    {
      __break(0xC471u);
      JUMPOUT(0x19D832F34);
    }

    v3 = *a1;
    v4 = (*a1 + 136 * *(a1 + 12));
    v5 = 136 * a2;
    v6 = WTF::fastMalloc((136 * a2));
    *(a1 + 8) = v5 / 0x88;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::InspectorOverlayHighlight::FlexHighlightOverlay>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebCore::InspectorOverlayHighlight::FlexHighlightOverlay>::move(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(a3, v5);
      WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::~FlexHighlightOverlay(v5, v6);
      a3 += 136;
      v5 += 17;
    }

    while (v5 != a2);
  }
}

void WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *a1, unint64_t this)
{
  if (a1[2] > this)
  {
    if (a1[3] > this)
    {
      WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, this);
    }

    v4 = *a1;
    if (this)
    {
      if (this >= 0x1E1E1E2)
      {
        __break(0xC471u);
        return;
      }

      v5 = a1[3];
      v6 = (136 * this);
      v7 = WTF::fastMalloc(v6);
      a1[2] = v6 / 0x88;
      *a1 = v7;
      if (v7 != v4)
      {
        WTF::VectorMover<false,WebCore::InspectorOverlayHighlight::FlexHighlightOverlay>::move(v4, &v4[17 * v5], v7);
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

unsigned int *WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, unint64_t a2)
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
      result = (*result + 136 * a2);
      v5 = 136 * v2 - 136 * a2;
      do
      {
        WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::~FlexHighlightOverlay(result, a2);
        result = (v6 + 136);
        v5 -= 136;
      }

      while (v5);
    }

    v4[3] = v3;
  }

  return result;
}

char *IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, void **a2)
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
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = &(*a2)[3 * *(*a2 - 1)];
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
      v10 = v6[16];
      IPC::Encoder::operator<<<BOOL>(a1, &v10);
      result = IPC::ArgumentCoder<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double> const&>(a1, v6 + 8, v10);
      do
      {
        v6 += 24;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
    }

    while (v6 != v9);
  }

  return result;
}

void *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[3 * v2];
  if (!*(result - 3))
  {
    return &result[3 * v2];
  }

  if (v2)
  {
    v4 = 24 * v2;
    while ((*result + 1) <= 1)
    {
      result += 3;
      v4 -= 24;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double> const&>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double> const&,0ul>(a1, a2, a3);
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

mpark *IPC::ArgumentCoder<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double> const&,0ul>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (a2[8] != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double> const&,0ul,1ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double> const&,0ul,1ul>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (a2[8] != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;
    return IPC::Encoder::encodeObject<long long>(a1, &v4);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double> const&,0ul,1ul,2ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double> const&,0ul,1ul,2ul>(mpark *a1, char *a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (a2[8] != 3)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::Encoder::operator<<<BOOL>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double> const&,0ul,1ul,2ul,3ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double> const&,0ul,1ul,2ul,3ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 4)
  {
    if (*(a2 + 8) != 4)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(result, v4);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>@<X0>(WTF::StringImpl *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  v3 = *(result + 1);
  v4 = ((*(result + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = (v4 - *result);
  v6 = v3 >= v5;
  v7 = v3 - v5;
  if (!v6 || v7 <= 3)
  {
LABEL_117:
    *v2 = 0;
    *(v2 + 1) = 0;
    v38 = *(v2 + 3);
    if (v38)
    {
      if (v3)
      {
        (*(*v38 + 16))(v38);
        v3 = *(v2 + 1);
      }
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_119;
  }

  *(result + 2) = v4 + 1;
  if (!v4)
  {
LABEL_119:
    *v2 = 0;
    *(v2 + 1) = 0;
    result = *(v2 + 3);
    if (result)
    {
      if (v3)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    a2[8] = 0;
    return result;
  }

  v9 = *v4;
  v56 = 0;
  v50 = v9;
  if (!v9)
  {
    v37 = 0;
LABEL_114:
    *a2 = v37;
    a2[8] = 1;
    return result;
  }

  v10 = 0;
LABEL_9:
  IPC::Decoder::decode<WTF::String>(v2, &v54);
  if ((v55 & 1) == 0)
  {
    *a2 = 0;
    a2[8] = 0;
    goto LABEL_133;
  }

  v3 = *(v2 + 1);
  v12 = *(v2 + 2);
  v11 = *v2;
  if (v3 <= v12 - *v2)
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v41 = *(v2 + 3);
    if (v41 && v3)
    {
      goto LABEL_152;
    }

    goto LABEL_124;
  }

  v51 = v10;
  v13 = (v12 + 1);
  *(v2 + 2) = v12 + 1;
  if (!v12)
  {
    goto LABEL_138;
  }

  v14 = *v12;
  if (v14 > 4)
  {
    goto LABEL_127;
  }

  if (!*v12)
  {
    IPC::Decoder::decode<WTF::String>(v2, &v57);
    if (v58 != 1)
    {
      goto LABEL_127;
    }

    v17 = 0;
    LOBYTE(v49) = v57;
    v53 = v57;
    goto LABEL_32;
  }

  if (v14 != 1)
  {
    if (v14 == 2)
    {
      v18 = IPC::Decoder::decode<long long>(v2);
      if ((v11 & 1) == 0)
      {
        goto LABEL_127;
      }

      v53 = v18;
      v17 = 2;
LABEL_31:
      LOBYTE(v49) = v18;
LABEL_32:
      if ((v55 & 1) == 0)
      {
        __break(1u);
        goto LABEL_117;
      }

      if (v54 + 1 < 2)
      {
LABEL_109:
        *a2 = 0;
        a2[8] = 0;
        if (!v14 && v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v53, v11);
        }

        goto LABEL_129;
      }

      v19 = v56;
      if (v56 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v56), (v19 = v56) != 0))
      {
        v20 = *(v19 - 8);
      }

      else
      {
        v20 = 0;
      }

      v21 = *(v54 + 4);
      if (v21 < 0x100)
      {
        v22 = WTF::StringImpl::hashSlowCase(v54);
      }

      else
      {
        v22 = v21 >> 8;
      }

      v23 = 0;
      for (i = 1; ; ++i)
      {
        v25 = v22 & v20;
        v26 = v19 + 24 * (v22 & v20);
        v27 = *v26;
        if (*v26 == -1)
        {
          v23 = v19 + 24 * v25;
        }

        else
        {
          if (!v27)
          {
            if (v23)
            {
              *v23 = 0;
              *(v23 + 8) = 0;
              *(v23 + 16) = 0;
              --*(v19 - 16);
              v26 = v23;
            }

            v28 = v54;
            v54 = 0;
            result = *v26;
            *v26 = v28;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v11);
            }

            if (v17 <= 1)
            {
              if (!v17)
              {
                v29 = v53;
                v53 = 0;
                v30 = *(v26 + 16);
                v57 = 0;
                if (v30)
                {
                  *(v26 + 8) = v29;
                  *(v26 + 16) = 0;
                }

                else
                {
                  result = *(v26 + 8);
                  *(v26 + 8) = v29;
                  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    result = WTF::StringImpl::destroy(result, v11);
                  }
                }

                goto LABEL_91;
              }

              v31 = v53;
              v57 = v53;
              if (*(v26 + 16))
              {
                if (*(v26 + 16) == 1)
                {
                  goto LABEL_69;
                }
              }

              else
              {
                result = *(v26 + 8);
                *(v26 + 8) = 0;
                if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v11);
                }
              }

              *(v26 + 8) = v57;
              v32 = 1;
              goto LABEL_90;
            }

            if (v17 == 2)
            {
              v31 = v53;
              v57 = v53;
              if (*(v26 + 16))
              {
                if (*(v26 + 16) == 2)
                {
LABEL_69:
                  *(v26 + 8) = v31;
                  goto LABEL_91;
                }
              }

              else
              {
                result = *(v26 + 8);
                *(v26 + 8) = 0;
                if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v11);
                }
              }

              *(v26 + 8) = v57;
              v32 = 2;
              goto LABEL_90;
            }

            if (v17 != 3)
            {
              v57 = v53;
              if (*(v26 + 16))
              {
                if (*(v26 + 16) == 4)
                {
                  *(v26 + 8) = v53;
                  goto LABEL_91;
                }
              }

              else
              {
                result = *(v26 + 8);
                *(v26 + 8) = 0;
                if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v11);
                }
              }

              *(v26 + 8) = v57;
              v32 = 4;
              goto LABEL_90;
            }

            LOBYTE(v57) = v49;
            if (*(v26 + 16))
            {
              if (*(v26 + 16) == 3)
              {
                *(v26 + 8) = v49;
                goto LABEL_91;
              }
            }

            else
            {
              result = *(v26 + 8);
              *(v26 + 8) = 0;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v11);
              }
            }

            *(v26 + 8) = v49;
            v32 = 3;
LABEL_90:
            *(v26 + 16) = v32;
LABEL_91:
            v33 = v56;
            if (v56)
            {
              v34 = *(v56 - 3) + 1;
            }

            else
            {
              v34 = 1;
            }

            *(v56 - 3) = v34;
            v35 = (*(v33 - 16) + v34);
            v36 = *(v33 - 4);
            if (v36 > 0x400)
            {
              if (v36 <= 2 * v35)
              {
LABEL_96:
                result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v56);
              }
            }

            else if (3 * v36 <= 4 * v35)
            {
              goto LABEL_96;
            }

            if (!v14)
            {
              result = v53;
              if (v53)
              {
                if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(v53, v11);
                }
              }
            }

            if (v55 == 1)
            {
              result = v54;
              v54 = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v11);
                }
              }
            }

            v10 = v51 + 1;
            if (v51 + 1 == v50)
            {
              v37 = v56;
              goto LABEL_114;
            }

            goto LABEL_9;
          }

          if (WTF::equal(v27, v54, v3))
          {
            goto LABEL_109;
          }
        }

        v22 = i + v25;
      }
    }

    if (v14 != 3)
    {
      v18 = IPC::Decoder::decode<unsigned long long>(v2);
      if ((v11 & 1) == 0)
      {
        goto LABEL_127;
      }

      v53 = v18;
      v17 = 4;
      goto LABEL_31;
    }

    if (v3 <= v13 - v11)
    {
      v39 = 0;
      v46 = 0;
      *v2 = 0;
      *(v2 + 1) = 0;
      v47 = *(v2 + 3);
      if (v47)
      {
        (*(*v47 + 16))(v47);
        v46 = *v2;
        v39 = *(v2 + 1);
      }
    }

    else
    {
      *(v2 + 2) = v12 + 2;
      if (v12 != -1)
      {
        if (*v13 >= 2u)
        {
LABEL_138:
          v39 = v3;
          v40 = v11;
          goto LABEL_126;
        }

        LOBYTE(v49) = *v13;
        LOBYTE(v53) = *v13;
        v17 = 3;
        goto LABEL_32;
      }

      v39 = v3;
      v46 = v11;
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    v48 = *(v2 + 3);
    if (v48)
    {
      if (v39)
      {
        (*(*v48 + 16))(v48, v46, v39);
        goto LABEL_153;
      }

LABEL_125:
      v40 = 0;
      goto LABEL_126;
    }

LABEL_124:
    v39 = 0;
    goto LABEL_125;
  }

  v15 = v12 & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v3 >= v16 - v11 && v3 - (v16 - v11) > 7)
  {
    *(v2 + 2) = v15 + 16;
    if (!v16)
    {
      goto LABEL_138;
    }

    v53 = *v16;
    v17 = 1;
    v49 = *v16;
    goto LABEL_32;
  }

  v39 = 0;
  v40 = 0;
  *v2 = 0;
  *(v2 + 1) = 0;
  v41 = *(v2 + 3);
  if (!v41)
  {
    goto LABEL_126;
  }

LABEL_152:
  (*(*v41 + 16))(v41);
LABEL_153:
  v40 = *v2;
  v39 = *(v2 + 1);
LABEL_126:
  *v2 = 0;
  *(v2 + 1) = 0;
  v42 = *(v2 + 3);
  if (v42 && v39)
  {
    (*(*v42 + 16))(v42, v40, v39);
  }

LABEL_127:
  v11 = *v2;
  v43 = *(v2 + 1);
  *v2 = 0;
  *(v2 + 1) = 0;
  v44 = *(v2 + 3);
  if (v44 && v43)
  {
    (*(*v44 + 16))(v44, v11);
  }

  *a2 = 0;
  a2[8] = 0;
LABEL_129:
  if (v55 == 1)
  {
    v45 = v54;
    v54 = 0;
    if (v45)
    {
      if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, v11);
      }
    }
  }

LABEL_133:
  result = v56;
  if (v56)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v56, v11);
  }

  return result;
}

void sub_19D833B54(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, char a15, uint64_t a16)
{
  if (a15 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a16, a2);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= (2 * v3));
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  result = WTF::fastMalloc((24 * v5 + 16));
  if (v5)
  {
    v8 = v5;
    v9 = result + 4;
    do
    {
      *v9 = 0;
      *(v9 + 1) = 0;
      *(v9 + 16) = 0;
      v9 += 6;
      --v8;
    }

    while (v8);
  }

  *a1 = (result + 4);
  result[2] = v5 - 1;
  result[3] = v5;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v10 = 0;
    while (1)
    {
      v11 = v2 + 24 * v10;
      v12 = *v11;
      if (*v11 != -1)
      {
        if (v12)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = v12[4];
          if (v16 < 0x100)
          {
            v17 = WTF::StringImpl::hashSlowCase(v12);
          }

          else
          {
            v17 = v16 >> 8;
          }

          v18 = 0;
          do
          {
            v19 = v14 + 24 * (v17 & v15);
            v17 = ++v18 + (v17 & v15);
          }

          while (*v19);
          mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v19 + 8, v7);
          v21 = *v19;
          *v19 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v20);
          }

          v22 = *v11;
          *v11 = 0;
          *v19 = v22;
          mpark::detail::move_constructor<mpark::detail::traits<WTF::String,unsigned long long,long long,BOOL,double>,(mpark::detail::Trait)1>::move_constructor((v19 + 8), (v11 + 8));
          mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v11 + 8, v23);
          v13 = *v11;
          *v11 = 0;
          if (!v13 || atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_29;
          }
        }

        else
        {
          mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v11 + 8, v7);
          v13 = *v11;
          *v11 = 0;
          if (!v13 || atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_29;
          }
        }

        WTF::StringImpl::destroy(v13, v7);
      }

LABEL_29:
      if (++v10 == v3)
      {
        goto LABEL_33;
      }
    }
  }

  if (v2)
  {
LABEL_33:

    return WTF::fastFree((v2 - 16), v7);
  }

  return result;
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WTF::String,unsigned long long,long long,BOOL,double>,(mpark::detail::Trait)1>::move_constructor(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  result[8] = -1;
  v2 = a2[8];
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      *result = *a2;
    }

    else
    {
      if (v2 != 4)
      {
        return result;
      }

      *result = *a2;
    }
  }

  else
  {
    v3 = *a2;
    if (!a2[8])
    {
      *a2 = 0;
    }

    *result = v3;
  }

  result[8] = v2;
  return result;
}

WTF *IPC::ArgumentCoder<std::optional<WebCore::NowPlayingInfoArtwork>,void>::encode<IPC::Encoder,std::optional<WebCore::NowPlayingInfoArtwork> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 24))
    {
      return IPC::ArgumentCoder<WebCore::NowPlayingInfoArtwork,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    v6 = *a2;
    if (*a2)
    {

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }

    else
    {
      result = 157;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<char>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v8 = a1;
      if (v1)
      {
        (*(*v5 + 16))(v5);
        a1 = v8;
        v1 = v8[1];
      }
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    a1[2] = v2 + 1;
    if (v2)
    {
      v3 = *v2;
      v4 = 256;
      return v4 | v3;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v6 = a1[3];
  if (v6 && v1)
  {
    (*(*v6 + 16))(v6);
  }

  v3 = 0;
  v4 = 0;
  return v4 | v3;
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      result = IPC::ArgumentCoder<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,void>::encode<IPC::Encoder,std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType> const&>(a1, v6);
      v6 += 16;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,void>::encode<IPC::Encoder,std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType> const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  v5 = *(a2 + 8);
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

IPC::Decoder *IPC::Decoder::decode<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v18);
  if (v19 == 1)
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *a2;
    if (v5 <= &v6[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v12 = *(a2 + 3);
      if (v12)
      {
        if (v5)
        {
          (*(*v12 + 16))(v12);
          v5 = *(a2 + 1);
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v6 + 1;
      if (v6)
      {
        v8 = *v6;
        if (v8 < 2)
        {
          *a1 = v18;
          *(a1 + 8) = v8;
          *(a1 + 16) = 1;
          return result;
        }

        goto LABEL_18;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 3);
    if (v13)
    {
      if (v5)
      {
        (*(*v13 + 16))(v13);
        v7 = *a2;
        v5 = *(a2 + 1);
LABEL_18:
        *a2 = 0;
        *(a2 + 1) = 0;
        v14 = *(a2 + 3);
        if (v14)
        {
          if (v5)
          {
            (*(*v14 + 16))(v14, v7);
            v16 = *(a2 + 3);
            v7 = *a2;
            v17 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            if (v16)
            {
              if (v17)
              {
                (*(*v16 + 16))(v16, v7);
              }
            }
          }
        }

        *a1 = 0;
        *(a1 + 16) = 0;
        if (v19)
        {
          v15 = v18;
          v18 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v7);
            }
          }
        }

        goto LABEL_8;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    goto LABEL_18;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_8:
  v9 = *a2;
  v10 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    return (*(*result + 16))(result, v9);
  }

  return result;
}

void sub_19D8342D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = v4 + 1;
  v6 = *a1 + 16 * v4;
  v7 = *result;
  *result = 0;
  *v6 = v7;
  *(v6 + 8) = *(result + 8);
  *(a1 + 12) = v5;
  return result;
}

unsigned int *WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct((*result + 16 * a2), (*result + 16 * v4));
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::CompositionUnderline,void>::encode(a1, v6);
      v6 += 32;
      v7 -= 32;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::CompositionHighlight,void>::encode(a1, v6);
      v6 += 10;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
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
    v24 = *(a1 + 3);
    if (v24)
    {
      if (v4)
      {
        (*(*v24 + 16))(v24);
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
  v30 = 0;
  v31 = 0;
  if (v11 >= 0x8000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::CompositionUnderline>(a1, &v25);
      v17 = v29;
      if (v29)
      {
        if (HIDWORD(v31) == v31)
        {
          WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CompositionUnderline>(&v30, &v25);
        }

        else
        {
          v18 = v30 + 32 * HIDWORD(v31);
          v19 = v25;
          *(v18 + 8) = v26;
          *v18 = v19;
          *(v18 + 16) = 0;
          if (v18 != &v25)
          {
            v20 = v27;
            v27 = 0;
            *(v18 + 16) = v20;
          }

          *(v18 + 24) = v28;
          ++HIDWORD(v31);
        }
      }

      else
      {
        *a2 = 0;
        *(a2 + 16) = 0;
      }

      if (v29 == 1 && (v27 & 0x8000000000000) != 0)
      {
        v21 = (v27 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v27 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v21);
          WTF::fastFree(v21, v6);
        }
      }

      if ((v17 & 1) == 0)
      {
        break;
      }

      if (!--v11)
      {
        WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v30, HIDWORD(v31));
        goto LABEL_38;
      }
    }
  }

  else if (v11)
  {
    LODWORD(v31) = v11;
    v30 = WTF::fastMalloc((32 * v11));
    while (1)
    {
      IPC::Decoder::decode<WebCore::CompositionUnderline>(a1, &v25);
      v12 = v29;
      if (v29)
      {
        if (HIDWORD(v31) == v31)
        {
          WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CompositionUnderline>(&v30, &v25);
        }

        else
        {
          v13 = v30 + 32 * HIDWORD(v31);
          v14 = v25;
          *(v13 + 8) = v26;
          *v13 = v14;
          *(v13 + 16) = 0;
          if (v13 != &v25)
          {
            v15 = v27;
            v27 = 0;
            *(v13 + 16) = v15;
          }

          *(v13 + 24) = v28;
          ++HIDWORD(v31);
        }
      }

      else
      {
        *a2 = 0;
        *(a2 + 16) = 0;
      }

      if (v29 == 1 && (v27 & 0x8000000000000) != 0)
      {
        v16 = (v27 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v27 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16);
          WTF::fastFree(v16, v6);
        }
      }

      if ((v12 & 1) == 0)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    *a2 = v30;
    v22 = v31;
    v30 = 0;
    v31 = 0;
    *(a2 + 8) = v22;
    *(a2 + 16) = 1;
  }

  return WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v6);
}

void sub_19D834800(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, ...)
{
  va_start(va, a8);
  if (a8 == 1 && (a6 & 0x8000000000000) != 0)
  {
    v9 = (a6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, a2);
    }
  }

  WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

unsigned int *IPC::Decoder::decode<WebCore::CompositionUnderline>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::CompositionUnderline,void>::decode(a1, a2);
  if ((*(a2 + 32) & 1) == 0)
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

uint64_t WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CompositionUnderline>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 32 * *(a1 + 12);
  v5 = *v3;
  *(v4 + 8) = *(v3 + 8);
  *v4 = v5;
  *(v4 + 16) = 0;
  if (v4 != v3)
  {
    v6 = *(v3 + 16);
    *(v3 + 16) = 0;
    *(v4 + 16) = v6;
  }

  *(v4 + 24) = *(v3 + 24);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
      JUMPOUT(0x19D834AA0);
    }

    v4 = *a1;
    v5 = (*a1 + 32 * *(a1 + 12));
    v6 = WTF::fastMalloc((32 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::CompositionUnderline>::move(v4, v5, v6);
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

unsigned int *WTF::VectorMover<false,WebCore::CompositionUnderline>::move(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result + 4;
    do
    {
      v7 = v5 - 4;
      v6 = *(v5 - 2);
      *(a3 + 8) = *(v5 - 8);
      *a3 = v6;
      *(a3 + 16) = 0;
      if (a3 != v5 - 4)
      {
        v8 = *v5;
        *v5 = 0;
        *(a3 + 16) = v8;
      }

      *(a3 + 24) = *(v5 + 8);
      v9 = *v5;
      if ((*v5 & 0x8000000000000) != 0)
      {
        result = (v9 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }
      }

      a3 += 32;
      v5 += 8;
    }

    while (v7 + 8 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WebCore::CompositionUnderline>::destruct((*result + 32 * a2), (*result + 32 * v4));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >> 27)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((32 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::CompositionUnderline>::move(v5, &v5[8 * v4], result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
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

    goto LABEL_64;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_64:
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
  v33 = 0;
  v34 = 0;
  if (v11 >= 0x6666)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::CompositionHighlight>(a1, &v27);
      v18 = v32;
      if (v32)
      {
        if (HIDWORD(v34) == v34)
        {
          WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CompositionHighlight>(&v33, &v27);
        }

        else
        {
          v19 = v33 + 40 * HIDWORD(v34);
          *v19 = v27;
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          if (v29 == 1)
          {
            *(v19 + 8) = 0;
            if (v19 != &v27)
            {
              v20 = v28;
              v28 = 0;
              *(v19 + 8) = v20;
            }

            *(v19 + 16) = 1;
          }

          *(v19 + 24) = 0;
          *(v19 + 32) = 0;
          if (v31 == 1)
          {
            *(v19 + 24) = 0;
            if (v19 != &v27)
            {
              v21 = v30;
              v30 = 0;
              *(v19 + 24) = v21;
            }

            *(v19 + 32) = 1;
          }

          ++HIDWORD(v34);
        }
      }

      else
      {
        *a2 = 0;
        *(a2 + 16) = 0;
      }

      if (v32 == 1)
      {
        if (v31 == 1 && (v30 & 0x8000000000000) != 0)
        {
          v22 = (v30 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v30 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v6);
          }
        }

        if (v29 == 1 && (v28 & 0x8000000000000) != 0)
        {
          v23 = (v28 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v28 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v23);
            WTF::fastFree(v23, v6);
          }
        }
      }

      if ((v18 & 1) == 0)
      {
        break;
      }

      if (!--v11)
      {
        WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v33, HIDWORD(v34));
        goto LABEL_60;
      }
    }
  }

  else if (v11)
  {
    LODWORD(v34) = 40 * v11 / 0x28u;
    v33 = WTF::fastMalloc((40 * v11));
    while (1)
    {
      IPC::Decoder::decode<WebCore::CompositionHighlight>(a1, &v27);
      v12 = v32;
      if (v32)
      {
        if (HIDWORD(v34) == v34)
        {
          WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CompositionHighlight>(&v33, &v27);
        }

        else
        {
          v13 = v33 + 40 * HIDWORD(v34);
          *v13 = v27;
          *(v13 + 8) = 0;
          *(v13 + 16) = 0;
          if (v29 == 1)
          {
            *(v13 + 8) = 0;
            if (v13 != &v27)
            {
              v14 = v28;
              v28 = 0;
              *(v13 + 8) = v14;
            }

            *(v13 + 16) = 1;
          }

          *(v13 + 24) = 0;
          *(v13 + 32) = 0;
          if (v31 == 1)
          {
            *(v13 + 24) = 0;
            if (v13 != &v27)
            {
              v15 = v30;
              v30 = 0;
              *(v13 + 24) = v15;
            }

            *(v13 + 32) = 1;
          }

          ++HIDWORD(v34);
        }
      }

      else
      {
        *a2 = 0;
        *(a2 + 16) = 0;
      }

      if (v32 == 1)
      {
        if (v31 == 1 && (v30 & 0x8000000000000) != 0)
        {
          v16 = (v30 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v30 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v16);
            WTF::fastFree(v16, v6);
          }
        }

        if (v29 == 1 && (v28 & 0x8000000000000) != 0)
        {
          v17 = (v28 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v28 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v17);
            WTF::fastFree(v17, v6);
          }
        }
      }

      if ((v12 & 1) == 0)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
LABEL_60:
    *a2 = v33;
    v24 = v34;
    v33 = 0;
    v34 = 0;
    *(a2 + 8) = v24;
    *(a2 + 16) = 1;
  }

  return WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v6);
}

void sub_19D835040(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, int a8, char a9, ...)
{
  va_start(va, a9);
  if (a9 == 1)
  {
    if (a7 == 1 && (a6 & 0x8000000000000) != 0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11);
        WTF::fastFree(v11, a2);
      }
    }

    if (a5 == 1 && (a4 & 0x8000000000000) != 0)
    {
      v10 = (a4 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, a2);
      }
    }
  }

  WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

unsigned int *IPC::Decoder::decode<WebCore::CompositionHighlight>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::CompositionHighlight,void>::decode(a1, a2);
  if ((a2[40] & 1) == 0)
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

uint64_t WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CompositionHighlight>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 40 * *(a1 + 12);
  *v4 = *v3;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  if (*(v3 + 16) == 1)
  {
    *(v4 + 8) = 0;
    if (v4 != v3)
    {
      v6 = *(v3 + 8);
      *(v3 + 8) = 0;
      *(v4 + 8) = v6;
    }

    *(v4 + 16) = 1;
  }

  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (*(v3 + 32) == 1)
  {
    *(v4 + 24) = 0;
    if (v4 != v3)
    {
      v7 = *(v3 + 24);
      *(v3 + 24) = 0;
      *(v4 + 24) = v7;
    }

    *(v4 + 32) = 1;
  }

  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19D835394);
    }

    v3 = *a1;
    v4 = (*a1 + 40 * *(a1 + 12));
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(a1 + 8) = v5 / 0x28;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::CompositionHighlight>::move(v3, v4, v6);
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

unsigned int *WTF::VectorMover<false,WebCore::CompositionHighlight>::move(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6 * 4;
      v8 = &v5[v6];
      *v7 = *&v5[v6];
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      if (LOBYTE(v5[v6 + 4]) == 1)
      {
        *(v7 + 8) = 0;
        if (v8 != v7)
        {
          v10 = *(v8 + 1);
          *(v8 + 1) = 0;
          *(v7 + 8) = v10;
        }

        *(v7 + 16) = 1;
      }

      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      if (*(v8 + 32) == 1)
      {
        *(v7 + 24) = 0;
        if (v8 != v7)
        {
          v11 = *(v8 + 3);
          *(v8 + 3) = 0;
          *(v7 + 24) = v11;
        }

        *(v7 + 32) = 1;
        if (v8[8])
        {
          v12 = *(v8 + 3);
          if ((v12 & 0x8000000000000) != 0)
          {
            result = (v12 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, result);
              result = WTF::fastFree(result, a2);
              v8 = &v5[v6];
            }
          }
        }
      }

      if (*(v8 + 16) == 1)
      {
        v9 = *(v8 + 1);
        if ((v9 & 0x8000000000000) != 0)
        {
          result = (v9 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            result = WTF::fastFree(result, a2);
          }
        }
      }

      v6 += 10;
    }

    while (&v5[v6] != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebCore::CompositionHighlight>::destruct((*result + 40 * this), (*result + 40 * v4));
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
        result = WTF::VectorMover<false,WebCore::CompositionHighlight>::move(v5, &v5[10 * v4], result);
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

uint64_t IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
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
      result = IPC::ArgumentCoder<WebCore::FilterOperation,void>::encode(a1, v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>(uint64_t result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v48 = *(a2 + 3);
    if (v48)
    {
      if (v6)
      {
        (*(*v48 + 16))(v48);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_109;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_109:
    *a2 = 0;
    *(a2 + 1) = 0;
    v49 = *(a2 + 3);
    if (v49)
    {
      if (v6)
      {
        (*(*v49 + 16))(v49, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_112;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_112:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result)
    {
      goto LABEL_44;
    }

    if (!v6)
    {
      goto LABEL_44;
    }

    result = (*(*result + 16))(result, v5);
    v8 = 0;
    if (!*a2)
    {
      goto LABEL_44;
    }

    goto LABEL_5;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_109;
  }

  v7 = *v4;
  if (v7 >= 6)
  {
    goto LABEL_112;
  }

  v8 = v7 | 0x100;
  if (!v5)
  {
    goto LABEL_44;
  }

LABEL_5:
  if (v8 >= 0x100 && v8 == 0)
  {
    v14 = IPC::Decoder::decode<unsigned long long>(a2);
    v16 = v15;
    result = IPC::Decoder::decode<WebCore::FilterOperation::Type>(a2);
    if (*a2)
    {
      if (result <= 0xFFu)
      {
        goto LABEL_91;
      }

      v17 = result;
      if (result - 1 <= 3)
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_91;
        }

        result = WTF::fastMalloc(0x18);
        *(result + 8) = 1;
        *(result + 12) = v17;
        v18 = MEMORY[0x1E69E2EA8] + 16;
LABEL_39:
        *result = v18;
        *(result + 16) = v14;
        goto LABEL_40;
      }
    }

LABEL_42:
    v22 = *(a2 + 1);
    goto LABEL_43;
  }

  if (v8 >= 0x100 && v8 == 1)
  {
    v14 = IPC::Decoder::decode<unsigned long long>(a2);
    v20 = v19;
    result = IPC::Decoder::decode<WebCore::FilterOperation::Type>(a2);
    if (*a2)
    {
      v21 = result;
      if (result <= 0xFFu)
      {
        goto LABEL_91;
      }

      if (result <= 9u && ((1 << result) & 0x3A0) != 0)
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_91;
        }

        result = WTF::fastMalloc(0x18);
        *(result + 8) = 1;
        *(result + 12) = v21;
        v18 = MEMORY[0x1E69E2EB8] + 16;
        goto LABEL_39;
      }
    }

    goto LABEL_42;
  }

  if (v8 >= 0x100 && v8 == 2)
  {
    result = IPC::Decoder::decode<WebCore::Length>(&v50, a2);
    v23 = *a2;
    if (!*a2)
    {
      result = 0;
      goto LABEL_66;
    }

    if ((v51 & 1) == 0)
    {
      goto LABEL_91;
    }

    v24 = BYTE4(v50);
    v25 = BYTE5(v50);
    v26 = HIBYTE(v50);
    v27 = BYTE4(v50) - 2;
    if (v27 >= 9)
    {
      if (BYTE4(v50) == 11)
      {
        v28 = 0;
        v29 = v50;
        LODWORD(v50) = 0;
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }
    }

    else
    {
      v28 = BYTE6(v50);
      v29 = v50;
    }

    BYTE4(v50) = 0;
    result = WTF::fastMalloc(0x18);
    if (v27 >= 9)
    {
      if (v24 == 11)
      {
        *(result + 8) = 1;
        *(result + 12) = 10;
        v40 = MEMORY[0x1E69E2E68] + 16;
        *(result + 16) = 0;
        v38 = (result + 16);
        *result = v40;
        *(result + 22) = 0;
        *(result + 20) = 11;
        *(result + 21) = v25;
        *(result + 23) = v26;
LABEL_65:
        *v38 = v29;
LABEL_66:
        if (v51 == 1 && BYTE4(v50) == 11)
        {
          v47 = result;
          WebCore::Length::deref(&v50);
          result = v47;
          if (v23)
          {
LABEL_69:
            if (!*a2)
            {
              *v3 = 0;
              v3[8] = 0;
              if (!result)
              {
                goto LABEL_72;
              }

LABEL_93:
              if (atomic_fetch_add((result + 8), 0xFFFFFFFF) != 1)
              {
                goto LABEL_72;
              }

LABEL_94:
              atomic_store(1u, (result + 8));
              result = (*(*result + 8))();
              goto LABEL_72;
            }

LABEL_70:
            *v3 = result;
            goto LABEL_71;
          }
        }

        else if (v23)
        {
          goto LABEL_69;
        }

LABEL_105:
        v22 = *(a2 + 1);
LABEL_43:
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (!result || !v22)
        {
          goto LABEL_44;
        }

        v43 = *(*result + 16);
        goto LABEL_90;
      }

      v28 = 0;
      v29 = 0;
    }

    *(result + 8) = 1;
    *(result + 12) = 10;
    v37 = MEMORY[0x1E69E2E68] + 16;
    *(result + 16) = 0;
    v38 = (result + 16);
    *result = v37;
    *(result + 22) = 0;
    *(result + 20) = v24;
    *(result + 21) = v25;
    *(result + 23) = v26;
    if (v27 >= 9)
    {
      if (v24 != 11)
      {
        goto LABEL_66;
      }
    }

    else
    {
      *(result + 22) = v28;
    }

    goto LABEL_65;
  }

  if (v8 < 0x100 || v8 != 3)
  {
    if (v8 < 0x100 || v8 != 4)
    {
      if (v8 >= 0x100 && v8 == 5)
      {
        result = WTF::fastMalloc(0x10);
        *(result + 8) = 1;
        *(result + 12) = 13;
        *result = &unk_1F10E8260;
        goto LABEL_40;
      }

      goto LABEL_44;
    }

    result = IPC::Decoder::decode<WebCore::FilterOperation::Type>(a2);
    if (*a2)
    {
      v39 = result;
      if (result > 0xFFu)
      {
        result = WTF::fastMalloc(0x10);
        *(result + 8) = 1;
        *(result + 12) = 14;
        *result = MEMORY[0x1E69E2E80] + 16;
        *(result + 13) = v39;
LABEL_40:
        if (*a2)
        {
          *v3 = result;
LABEL_71:
          v3[8] = 1;
          goto LABEL_72;
        }

        goto LABEL_92;
      }

LABEL_91:
      __break(1u);
LABEL_92:
      *v3 = 0;
      v3[8] = 0;
      goto LABEL_93;
    }

    v46 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result || !v46)
    {
LABEL_44:
      *v3 = 0;
      v3[8] = 0;
      goto LABEL_72;
    }

    v43 = *(*result + 16);
LABEL_90:
    result = v43();
    if (*a2)
    {
      goto LABEL_91;
    }

    goto LABEL_44;
  }

  v30 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  v32 = v31;
  v33 = IPC::Decoder::decode<float>(a2);
  result = IPC::Decoder::decode<WebCore::Color>(a2, &v50);
  v35 = *a2;
  if (*a2)
  {
    if ((v32 & 1) == 0 || (v33 & 0x100000000) == 0 || (v51 & 1) == 0)
    {
      goto LABEL_91;
    }

    result = WTF::fastMalloc(0x28);
    *(result + 8) = 1;
    *(result + 12) = 11;
    *(result + 16) = v30;
    *(result + 24) = v33;
    *result = MEMORY[0x1E69E2EA0] + 16;
    v36 = v50;
    *(result + 32) = v50;
    if ((v36 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v36 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  else
  {
    result = 0;
  }

  if (v51 == 1 && (v50 & 0x8000000000000) != 0)
  {
    v44 = (v50 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v50 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v44);
      v45 = result;
      WTF::fastFree(v44, v34);
      result = v45;
    }
  }

  if (!v35)
  {
    goto LABEL_105;
  }

  if (*a2)
  {
    goto LABEL_70;
  }

  *v3 = 0;
  v3[8] = 0;
  if (result && atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
  {
    goto LABEL_94;
  }

LABEL_72:
  if ((v3[8] & 1) == 0)
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

void sub_19D835D8C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
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

unsigned int *WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>::destruct((*result + 8 * a2), (*result + 8 * v4));
      v3[3] = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (v3[2])
      {
        v3[2] = a2;
        result = WTF::fastRealloc(v5, (8 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((8 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v5)
      {
        result = memcpy(result, v5, 8 * v4);
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

void IPC::Decoder::decode<WTF::Ref<WebCore::FilterFunction,WTF::RawPtrTraits<WebCore::FilterFunction>,WTF::DefaultRefDerefTraits<WebCore::FilterFunction>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v43 = *(a2 + 3);
    if (v43)
    {
      if (v6)
      {
        (*(*v43 + 16))(v43);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_168;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_168:
    *a2 = 0;
    *(a2 + 1) = 0;
    v44 = *(a2 + 3);
    if (v44)
    {
      if (v6)
      {
        (*(*v44 + 16))(v44, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_171;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_171:
    *a2 = 0;
    *(a2 + 1) = 0;
    v45 = *(a2 + 3);
    if (v45)
    {
      if (v6)
      {
        (*(*v45 + 16))(v45, v5);
        LODWORD(v8) = 0;
        if (*a2)
        {
          goto LABEL_5;
        }
      }
    }

LABEL_172:
    *a1 = 0;
    a1[8] = 0;
    goto LABEL_51;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_168;
  }

  v7 = *v4;
  if (v7 >= 0x14)
  {
    goto LABEL_171;
  }

  LODWORD(v8) = v7 | 0x100;
  if (!v5)
  {
    goto LABEL_172;
  }

LABEL_5:
  if (v8 >= 0x100 && v8 == 0)
  {
    IPC::ArgumentCoder<WebCore::SVGFilter,void>::decode(a2, &v46);
    if (v47)
    {
      v17 = *a2;
      if (*a2)
      {
        v17 = v46;
        v46 = 0;
        *a1 = v17;
        LOBYTE(v17) = 1;
      }

      else
      {
        *a1 = 0;
      }

      a1[8] = v17;
      WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v46, v16);
      goto LABEL_51;
    }

    v27 = *a2;
    v28 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v29 = *(a2 + 3);
    if (v29)
    {
      if (v28)
      {
        (*(*v29 + 16))(v29, v27);
        v8 = *a2;
        if (*a2)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_172;
  }

  if (v8 >= 0x100 && v8 == 1)
  {
    IPC::Decoder::decode<WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>>(&v46, a2);
    if (*a2)
    {
      LODWORD(v8) = v47;
      if ((v47 & 1) == 0)
      {
        goto LABEL_76;
      }

      v18 = v46;
      v46 = 0;
      *a1 = v18;
      a1[8] = 1;
    }

    else
    {
      *a1 = 0;
      a1[8] = 0;
      if ((v47 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_50;
  }

  if (v8 >= 0x100 && v8 == 2)
  {
    IPC::Decoder::decode<WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>>(&v46, a2);
    if (*a2)
    {
      LODWORD(v8) = v47;
      if ((v47 & 1) == 0)
      {
        goto LABEL_76;
      }

      v20 = v46;
      v46 = 0;
      *a1 = v20;
      a1[8] = 1;
    }

    else
    {
      *a1 = 0;
      a1[8] = 0;
      if ((v47 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

LABEL_148:
    WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v46, v19);
  }

  else
  {
    if (v8 >= 0x100 && v8 == 3)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::FEComponentTransfer,WTF::RawPtrTraits<WebCore::FEComponentTransfer>,WTF::DefaultRefDerefTraits<WebCore::FEComponentTransfer>>>(&v46, a2);
      if (*a2)
      {
        LODWORD(v8) = v47;
        if ((v47 & 1) == 0)
        {
          goto LABEL_76;
        }

        v21 = v46;
        v46 = 0;
        *a1 = v21;
        a1[8] = 1;
      }

      else
      {
        *a1 = 0;
        a1[8] = 0;
        if ((v47 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_50;
    }

    if (v8 >= 0x100 && v8 == 4)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::FEComposite,WTF::RawPtrTraits<WebCore::FEComposite>,WTF::DefaultRefDerefTraits<WebCore::FEComposite>>>(&v46, a2);
      if (*a2)
      {
        LODWORD(v8) = v47;
        if ((v47 & 1) == 0)
        {
          goto LABEL_76;
        }

        v22 = v46;
        v46 = 0;
        *a1 = v22;
        a1[8] = 1;
      }

      else
      {
        *a1 = 0;
        a1[8] = 0;
        if ((v47 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_50;
    }

    if (v8 < 0x100 || v8 != 5)
    {
      if (v8 >= 0x100 && v8 == 6)
      {
        IPC::Decoder::decode<WTF::Ref<WebCore::FEDiffuseLighting,WTF::RawPtrTraits<WebCore::FEDiffuseLighting>,WTF::DefaultRefDerefTraits<WebCore::FEDiffuseLighting>>>(&v46, a2);
        if (*a2)
        {
          LODWORD(v8) = v47;
          if ((v47 & 1) == 0)
          {
            goto LABEL_76;
          }

          v23 = v46;
          v46 = 0;
          *a1 = v23;
          a1[8] = 1;
        }

        else
        {
          *a1 = 0;
          a1[8] = 0;
          if ((v47 & 1) == 0)
          {
            goto LABEL_51;
          }
        }
      }

      else if (v8 >= 0x100 && v8 == 7)
      {
        IPC::Decoder::decode<WTF::Ref<WebCore::FEDisplacementMap,WTF::RawPtrTraits<WebCore::FEDisplacementMap>,WTF::DefaultRefDerefTraits<WebCore::FEDisplacementMap>>>(&v46, a2);
        if (*a2)
        {
          LODWORD(v8) = v47;
          if ((v47 & 1) == 0)
          {
            goto LABEL_76;
          }

          v24 = v46;
          v46 = 0;
          *a1 = v24;
          a1[8] = 1;
        }

        else
        {
          *a1 = 0;
          a1[8] = 0;
          if ((v47 & 1) == 0)
          {
            goto LABEL_51;
          }
        }
      }

      else if (v8 >= 0x100 && v8 == 8)
      {
        IPC::Decoder::decode<WTF::Ref<WebCore::FEDropShadow,WTF::RawPtrTraits<WebCore::FEDropShadow>,WTF::DefaultRefDerefTraits<WebCore::FEDropShadow>>>(&v46, a2);
        if (*a2)
        {
          LODWORD(v8) = v47;
          if ((v47 & 1) == 0)
          {
            goto LABEL_76;
          }

          v25 = v46;
          v46 = 0;
          *a1 = v25;
          a1[8] = 1;
        }

        else
        {
          *a1 = 0;
          a1[8] = 0;
          if ((v47 & 1) == 0)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        if (v8 < 0x100 || v8 != 9)
        {
          goto LABEL_77;
        }

        IPC::Decoder::decode<WTF::Ref<WebCore::FEFlood,WTF::RawPtrTraits<WebCore::FEFlood>,WTF::DefaultRefDerefTraits<WebCore::FEFlood>>>(&v46, a2);
        if (*a2)
        {
          LODWORD(v8) = v47;
          if ((v47 & 1) == 0)
          {
            goto LABEL_76;
          }

          v26 = v46;
          v46 = 0;
          *a1 = v26;
          a1[8] = 1;
        }

        else
        {
          *a1 = 0;
          a1[8] = 0;
          if ((v47 & 1) == 0)
          {
            goto LABEL_51;
          }
        }
      }

      goto LABEL_50;
    }

    IPC::Decoder::decode<WTF::Ref<WebCore::FEConvolveMatrix,WTF::RawPtrTraits<WebCore::FEConvolveMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEConvolveMatrix>>>(&v46, a2);
    if (!*a2)
    {
      *a1 = 0;
      a1[8] = 0;
      if ((v47 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    LODWORD(v8) = v47;
    if (v47)
    {
      v15 = v46;
      v46 = 0;
      *a1 = v15;
      a1[8] = 1;
LABEL_50:
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v46, v14);
      goto LABEL_51;
    }

    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    while (1)
                    {
LABEL_76:
                      while (1)
                      {
                        __break(1u);
LABEL_77:
                        if (v8 < 0x100 || v8 != 10)
                        {
                          break;
                        }

                        IPC::Decoder::decode<WTF::Ref<WebCore::FEGaussianBlur,WTF::RawPtrTraits<WebCore::FEGaussianBlur>,WTF::DefaultRefDerefTraits<WebCore::FEGaussianBlur>>>(&v46, a2);
                        if (!*a2)
                        {
                          *a1 = 0;
                          a1[8] = 0;
                          if (v47)
                          {
                            goto LABEL_148;
                          }

                          goto LABEL_51;
                        }

                        LODWORD(v8) = v47;
                        if (v47)
                        {
                          v30 = v46;
                          v46 = 0;
                          *a1 = v30;
                          a1[8] = 1;
                          goto LABEL_148;
                        }
                      }

                      if (v8 < 0x100 || v8 != 11)
                      {
                        break;
                      }

                      IPC::Decoder::decode<WTF::Ref<WebCore::FEImage,WTF::RawPtrTraits<WebCore::FEImage>,WTF::DefaultRefDerefTraits<WebCore::FEImage>>>(&v46, a2);
                      if (!*a2)
                      {
                        *a1 = 0;
                        a1[8] = 0;
                        if ((v47 & 1) == 0)
                        {
                          goto LABEL_51;
                        }

                        goto LABEL_50;
                      }

                      LODWORD(v8) = v47;
                      if (v47)
                      {
                        v34 = v46;
                        v46 = 0;
                        *a1 = v34;
                        a1[8] = 1;
                        goto LABEL_50;
                      }
                    }

                    if (v8 < 0x100 || v8 != 12)
                    {
                      break;
                    }

                    IPC::Decoder::decode<WTF::Ref<WebCore::FEMerge,WTF::RawPtrTraits<WebCore::FEMerge>,WTF::DefaultRefDerefTraits<WebCore::FEMerge>>>(&v46, a2);
                    if (!*a2)
                    {
                      *a1 = 0;
                      a1[8] = 0;
                      if ((v47 & 1) == 0)
                      {
                        goto LABEL_51;
                      }

                      goto LABEL_50;
                    }

                    LODWORD(v8) = v47;
                    if (v47)
                    {
                      v35 = v46;
                      v46 = 0;
                      *a1 = v35;
                      a1[8] = 1;
                      goto LABEL_50;
                    }
                  }

                  if (v8 < 0x100 || v8 != 13)
                  {
                    break;
                  }

                  IPC::Decoder::decode<WTF::Ref<WebCore::FEMorphology,WTF::RawPtrTraits<WebCore::FEMorphology>,WTF::DefaultRefDerefTraits<WebCore::FEMorphology>>>(&v46, a2);
                  if (!*a2)
                  {
                    *a1 = 0;
                    a1[8] = 0;
                    if ((v47 & 1) == 0)
                    {
                      goto LABEL_51;
                    }

                    goto LABEL_50;
                  }

                  LODWORD(v8) = v47;
                  if (v47)
                  {
                    v36 = v46;
                    v46 = 0;
                    *a1 = v36;
                    a1[8] = 1;
                    goto LABEL_50;
                  }
                }

                if (v8 < 0x100 || v8 != 14)
                {
                  break;
                }

                IPC::Decoder::decode<WTF::Ref<WebCore::FEOffset,WTF::RawPtrTraits<WebCore::FEOffset>,WTF::DefaultRefDerefTraits<WebCore::FEOffset>>>(&v46, a2);
                if (!*a2)
                {
                  *a1 = 0;
                  a1[8] = 0;
                  if (v47)
                  {
                    goto LABEL_148;
                  }

                  goto LABEL_51;
                }

                LODWORD(v8) = v47;
                if (v47)
                {
                  v37 = v46;
                  v46 = 0;
                  *a1 = v37;
                  a1[8] = 1;
                  goto LABEL_148;
                }
              }

              if (v8 < 0x100 || v8 != 15)
              {
                break;
              }

              IPC::Decoder::decode<WTF::Ref<WebCore::FESpecularLighting,WTF::RawPtrTraits<WebCore::FESpecularLighting>,WTF::DefaultRefDerefTraits<WebCore::FESpecularLighting>>>(&v46, a2);
              if (!*a2)
              {
                *a1 = 0;
                a1[8] = 0;
                if ((v47 & 1) == 0)
                {
                  goto LABEL_51;
                }

                goto LABEL_50;
              }

              LODWORD(v8) = v47;
              if (v47)
              {
                v38 = v46;
                v46 = 0;
                *a1 = v38;
                a1[8] = 1;
                goto LABEL_50;
              }
            }

            if (v8 < 0x100 || v8 != 16)
            {
              break;
            }

            IPC::Decoder::decode<WTF::Ref<WebCore::FETile,WTF::RawPtrTraits<WebCore::FETile>,WTF::DefaultRefDerefTraits<WebCore::FETile>>>(&v46, a2);
            if (!*a2)
            {
              *a1 = 0;
              a1[8] = 0;
              if ((v47 & 1) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_50;
            }

            LODWORD(v8) = v47;
            if (v47)
            {
              v39 = v46;
              v46 = 0;
              *a1 = v39;
              a1[8] = 1;
              goto LABEL_50;
            }
          }

          if (v8 < 0x100 || v8 != 17)
          {
            break;
          }

          IPC::Decoder::decode<WTF::Ref<WebCore::FETurbulence,WTF::RawPtrTraits<WebCore::FETurbulence>,WTF::DefaultRefDerefTraits<WebCore::FETurbulence>>>(&v46, a2);
          if (!*a2)
          {
            *a1 = 0;
            a1[8] = 0;
            if ((v47 & 1) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }

          LODWORD(v8) = v47;
          if (v47)
          {
            v40 = v46;
            v46 = 0;
            *a1 = v40;
            a1[8] = 1;
            goto LABEL_50;
          }
        }

        if (v8 < 0x100 || v8 != 18)
        {
          break;
        }

        IPC::Decoder::decode<WTF::Ref<WebCore::SourceAlpha,WTF::RawPtrTraits<WebCore::SourceAlpha>,WTF::DefaultRefDerefTraits<WebCore::SourceAlpha>>>(&v46, a2);
        if (!*a2)
        {
          *a1 = 0;
          a1[8] = 0;
          if (v47)
          {
            goto LABEL_148;
          }

          goto LABEL_51;
        }

        LODWORD(v8) = v47;
        if (v47)
        {
          v41 = v46;
          v46 = 0;
          *a1 = v41;
          a1[8] = 1;
          goto LABEL_148;
        }
      }

      if (v8 < 0x100 || v8 != 19)
      {
        goto LABEL_172;
      }

      IPC::Decoder::decode<WTF::Ref<WebCore::SourceGraphic,WTF::RawPtrTraits<WebCore::SourceGraphic>,WTF::DefaultRefDerefTraits<WebCore::SourceGraphic>>>(&v46, a2);
      if (!*a2)
      {
        break;
      }

      LODWORD(v8) = v47;
      if (v47)
      {
        v42 = v46;
        v46 = 0;
        *a1 = v42;
        a1[8] = 1;
        goto LABEL_148;
      }
    }

    *a1 = 0;
    a1[8] = 0;
    if (v47)
    {
      goto LABEL_148;
    }
  }

LABEL_51:
  if ((a1[8] & 1) == 0)
  {
    v31 = *a2;
    v32 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v33 = *(a2 + 3);
    if (v33)
    {
      if (v32)
      {
        (*(*v33 + 16))(v33, v31);
      }
    }
  }
}

void sub_19D836868(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 8) == 1)
  {
    WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::SVGFilterExpressionTerm,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SVGFilterExpressionTerm,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::SVGFilterExpressionTerm,void>::encode(a1, v6);
      v6 += 8;
      v7 -= 32;
    }

    while (v7);
  }

  return result;
}

void IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
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
      IPC::ArgumentCoder<WebCore::FilterEffect,void>::encode(a1, v7);
      v6 -= 8;
    }

    while (v6);
  }
}

uint64_t IPC::Decoder::decode<WebCore::SVGFilterExpressionTerm>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::SVGFilterExpressionTerm,void>::decode(a1, a2);
  if ((*(a1 + 32) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

__n128 WTF::Vector<WebCore::SVGFilterExpressionTerm,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SVGFilterExpressionTerm>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 32 * *(a1 + 12));
  result = *v3;
  v6 = *(v3 + 16);
  *v4 = *v3;
  v4[1] = v6;
  ++*(a1 + 12);
  return result;
}

uint64_t WTF::Vector<WebCore::SVGFilterExpressionTerm,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      *(result + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *result;
    if (a2)
    {
      if (a2 >> 27)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((32 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v4 && result != v5)
      {
        v6 = 32 * v4;
        v7 = v5;
        do
        {
          v8 = *v7;
          v9 = *(v7 + 1);
          v7 = (v7 + 32);
          *result = v8;
          *(result + 16) = v9;
          result += 32;
          v6 -= 32;
        }

        while (v6);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>>(uint64_t a1, IPC::Decoder *this)
{
  v4 = *(this + 2);
  v5 = *this;
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_171;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_171:
    IPC::Decoder::markInvalid(this);
    goto LABEL_172;
  }

  v6 = *v4;
  if (v6 < 0x13)
  {
    v7 = 1;
    goto LABEL_5;
  }

LABEL_172:
  IPC::Decoder::markInvalid(this);
  v7 = 0;
  v6 = 0;
  v5 = *this;
LABEL_5:
  if (!v5)
  {
    goto LABEL_93;
  }

  v8 = v7 ^ 1;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 ^ 1;
  }

  if (v9)
  {
    if (v6 != 1)
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      IPC::ArgumentCoder<WebCore::FEColorMatrix,void>::decode(&v45, this);
      if (v46 == 1)
      {
        v27 = *this;
        if (*this)
        {
          v27 = v45;
          v45 = 0;
          *a1 = v27;
          LOBYTE(v27) = 1;
        }

        else
        {
          *a1 = 0;
        }

        goto LABEL_87;
      }

      goto LABEL_91;
    }

    v10 = v7 ^ 1;
    if (v6 == 2)
    {
      v11 = v7 ^ 1;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6 != 3)
      {
        v10 = 1;
      }

      if (v10)
      {
        v12 = v7 ^ 1;
        if (v6 == 4)
        {
          v13 = v7 ^ 1;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          if (v6 != 5)
          {
            v12 = 1;
          }

          if (v12)
          {
            v14 = v7 ^ 1;
            if (v6 == 6)
            {
              v15 = v7 ^ 1;
            }

            else
            {
              v15 = 1;
            }

            if (v15)
            {
              if (v6 != 7)
              {
                v14 = 1;
              }

              if (v14)
              {
                v16 = v7 ^ 1;
                if (v6 == 8)
                {
                  v17 = v7 ^ 1;
                }

                else
                {
                  v17 = 1;
                }

                if (v17)
                {
                  if (v6 != 9)
                  {
                    v16 = 1;
                  }

                  if ((v16 & 1) == 0)
                  {
                    IPC::ArgumentCoder<WebCore::FEGaussianBlur,void>::decode(&v45, this);
                    if (v46 == 1)
                    {
                      v27 = *this;
                      if (*this)
                      {
                        v27 = v45;
                        v45 = 0;
                        *a1 = v27;
                        LOBYTE(v27) = 1;
                      }

                      else
                      {
                        *a1 = 0;
                      }

                      goto LABEL_87;
                    }

                    goto LABEL_91;
                  }

                  v18 = v7 ^ 1;
                  if (v6 == 10)
                  {
                    v19 = v7 ^ 1;
                  }

                  else
                  {
                    v19 = 1;
                  }

                  if (v19)
                  {
                    if (v6 != 11)
                    {
                      v18 = 1;
                    }

                    if (v18)
                    {
                      v20 = v7 ^ 1;
                      if (v6 == 12)
                      {
                        v21 = v7 ^ 1;
                      }

                      else
                      {
                        v21 = 1;
                      }

                      if (v21)
                      {
                        if (v6 != 13)
                        {
                          v20 = 1;
                        }

                        if ((v20 & 1) == 0)
                        {
                          IPC::ArgumentCoder<WebCore::FEOffset,void>::decode(&v45, this);
                          if (v46 == 1)
                          {
                            v27 = *this;
                            if (*this)
                            {
                              v27 = v45;
                              v45 = 0;
                              *a1 = v27;
                              LOBYTE(v27) = 1;
                            }

                            else
                            {
                              *a1 = 0;
                            }

                            goto LABEL_87;
                          }

                          goto LABEL_91;
                        }

                        v22 = v7 ^ 1;
                        if (v6 == 14)
                        {
                          v23 = v7 ^ 1;
                        }

                        else
                        {
                          v23 = 1;
                        }

                        if (v23)
                        {
                          if (v6 != 15)
                          {
                            v22 = 1;
                          }

                          if (v22)
                          {
                            v24 = v7 ^ 1;
                            if (v6 == 16)
                            {
                              v25 = v7 ^ 1;
                            }

                            else
                            {
                              v25 = 1;
                            }

                            if (v25)
                            {
                              if (v6 != 17)
                              {
                                v24 = 1;
                              }

                              if (v24)
                              {
                                v28 = v6 == 18;
                                v29 = v7 ^ 1;
                                if (!v28)
                                {
                                  v29 = 1;
                                }

                                if (v29)
                                {
                                  goto LABEL_93;
                                }

                                IPC::ArgumentCoder<WebCore::SourceGraphic,void>::decode(&v45, this);
                                if (v46 == 1)
                                {
                                  v27 = *this;
                                  if (*this)
                                  {
                                    v27 = v45;
                                    v45 = 0;
                                    *a1 = v27;
                                    LOBYTE(v27) = 1;
                                  }

                                  else
                                  {
                                    *a1 = 0;
                                  }

                                  goto LABEL_87;
                                }
                              }

                              else
                              {
                                IPC::ArgumentCoder<WebCore::SourceAlpha,void>::decode(&v45, this);
                                if (v46 == 1)
                                {
                                  v27 = *this;
                                  if (*this)
                                  {
                                    v27 = v45;
                                    v45 = 0;
                                    *a1 = v27;
                                    LOBYTE(v27) = 1;
                                  }

                                  else
                                  {
                                    *a1 = 0;
                                  }

LABEL_87:
                                  *(a1 + 8) = v27;
                                  WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v45, v26);
                                  goto LABEL_88;
                                }
                              }

LABEL_91:
                              IPC::Decoder::markInvalid(this);
                              if (*this)
                              {
LABEL_92:
                                __break(1u);
                              }

LABEL_93:
                              *a1 = 0;
                              *(a1 + 8) = 0;
                              goto LABEL_88;
                            }

                            IPC::Decoder::decode<WTF::Ref<WebCore::FETurbulence,WTF::RawPtrTraits<WebCore::FETurbulence>,WTF::DefaultRefDerefTraits<WebCore::FETurbulence>>>(&v45, this);
                            if (*this)
                            {
                              if ((v46 & 1) == 0)
                              {
                                goto LABEL_92;
                              }

                              v44 = v45;
                              v45 = 0;
                              *a1 = v44;
                              *(a1 + 8) = 1;
                              goto LABEL_138;
                            }

                            *a1 = 0;
                            *(a1 + 8) = 0;
                            if (v46)
                            {
LABEL_138:
                              WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v45, v30);
                            }
                          }

                          else
                          {
                            IPC::Decoder::decode<WTF::Ref<WebCore::FESpecularLighting,WTF::RawPtrTraits<WebCore::FESpecularLighting>,WTF::DefaultRefDerefTraits<WebCore::FESpecularLighting>>>(&v45, this);
                            if (*this)
                            {
                              if ((v46 & 1) == 0)
                              {
                                goto LABEL_92;
                              }

                              v43 = v45;
                              v45 = 0;
                              *a1 = v43;
                              *(a1 + 8) = 1;
                              goto LABEL_138;
                            }

                            *a1 = 0;
                            *(a1 + 8) = 0;
                            if (v46)
                            {
                              goto LABEL_138;
                            }
                          }
                        }

                        else
                        {
                          IPC::Decoder::decode<WTF::Ref<WebCore::FETile,WTF::RawPtrTraits<WebCore::FETile>,WTF::DefaultRefDerefTraits<WebCore::FETile>>>(&v45, this);
                          if (*this)
                          {
                            if ((v46 & 1) == 0)
                            {
                              goto LABEL_92;
                            }

                            v42 = v45;
                            v45 = 0;
                            *a1 = v42;
                            *(a1 + 8) = 1;
                            goto LABEL_138;
                          }

                          *a1 = 0;
                          *(a1 + 8) = 0;
                          if (v46)
                          {
                            goto LABEL_138;
                          }
                        }
                      }

                      else
                      {
                        IPC::Decoder::decode<WTF::Ref<WebCore::FEMorphology,WTF::RawPtrTraits<WebCore::FEMorphology>,WTF::DefaultRefDerefTraits<WebCore::FEMorphology>>>(&v45, this);
                        if (*this)
                        {
                          if ((v46 & 1) == 0)
                          {
                            goto LABEL_92;
                          }

                          v41 = v45;
                          v45 = 0;
                          *a1 = v41;
                          *(a1 + 8) = 1;
                          goto LABEL_138;
                        }

                        *a1 = 0;
                        *(a1 + 8) = 0;
                        if (v46)
                        {
                          goto LABEL_138;
                        }
                      }
                    }

                    else
                    {
                      IPC::Decoder::decode<WTF::Ref<WebCore::FEMerge,WTF::RawPtrTraits<WebCore::FEMerge>,WTF::DefaultRefDerefTraits<WebCore::FEMerge>>>(&v45, this);
                      if (*this)
                      {
                        if ((v46 & 1) == 0)
                        {
                          goto LABEL_92;
                        }

                        v40 = v45;
                        v45 = 0;
                        *a1 = v40;
                        *(a1 + 8) = 1;
                        goto LABEL_138;
                      }

                      *a1 = 0;
                      *(a1 + 8) = 0;
                      if (v46)
                      {
                        goto LABEL_138;
                      }
                    }
                  }

                  else
                  {
                    IPC::Decoder::decode<WTF::Ref<WebCore::FEImage,WTF::RawPtrTraits<WebCore::FEImage>,WTF::DefaultRefDerefTraits<WebCore::FEImage>>>(&v45, this);
                    if (*this)
                    {
                      if ((v46 & 1) == 0)
                      {
                        goto LABEL_92;
                      }

                      v39 = v45;
                      v45 = 0;
                      *a1 = v39;
                      *(a1 + 8) = 1;
                      goto LABEL_138;
                    }

                    *a1 = 0;
                    *(a1 + 8) = 0;
                    if (v46)
                    {
                      goto LABEL_138;
                    }
                  }
                }

                else
                {
                  IPC::Decoder::decode<WTF::Ref<WebCore::FEFlood,WTF::RawPtrTraits<WebCore::FEFlood>,WTF::DefaultRefDerefTraits<WebCore::FEFlood>>>(&v45, this);
                  if (*this)
                  {
                    if ((v46 & 1) == 0)
                    {
                      goto LABEL_92;
                    }

                    v38 = v45;
                    v45 = 0;
                    *a1 = v38;
                    *(a1 + 8) = 1;
                    goto LABEL_138;
                  }

                  *a1 = 0;
                  *(a1 + 8) = 0;
                  if (v46)
                  {
                    goto LABEL_138;
                  }
                }
              }

              else
              {
                IPC::Decoder::decode<WTF::Ref<WebCore::FEDropShadow,WTF::RawPtrTraits<WebCore::FEDropShadow>,WTF::DefaultRefDerefTraits<WebCore::FEDropShadow>>>(&v45, this);
                if (*this)
                {
                  if ((v46 & 1) == 0)
                  {
                    goto LABEL_92;
                  }

                  v37 = v45;
                  v45 = 0;
                  *a1 = v37;
                  *(a1 + 8) = 1;
                  goto LABEL_138;
                }

                *a1 = 0;
                *(a1 + 8) = 0;
                if (v46)
                {
                  goto LABEL_138;
                }
              }
            }

            else
            {
              IPC::Decoder::decode<WTF::Ref<WebCore::FEDisplacementMap,WTF::RawPtrTraits<WebCore::FEDisplacementMap>,WTF::DefaultRefDerefTraits<WebCore::FEDisplacementMap>>>(&v45, this);
              if (*this)
              {
                if ((v46 & 1) == 0)
                {
                  goto LABEL_92;
                }

                v36 = v45;
                v45 = 0;
                *a1 = v36;
                *(a1 + 8) = 1;
                goto LABEL_138;
              }

              *a1 = 0;
              *(a1 + 8) = 0;
              if (v46)
              {
                goto LABEL_138;
              }
            }
          }

          else
          {
            IPC::Decoder::decode<WTF::Ref<WebCore::FEDiffuseLighting,WTF::RawPtrTraits<WebCore::FEDiffuseLighting>,WTF::DefaultRefDerefTraits<WebCore::FEDiffuseLighting>>>(&v45, this);
            if (*this)
            {
              if ((v46 & 1) == 0)
              {
                goto LABEL_92;
              }

              v35 = v45;
              v45 = 0;
              *a1 = v35;
              *(a1 + 8) = 1;
              goto LABEL_138;
            }

            *a1 = 0;
            *(a1 + 8) = 0;
            if (v46)
            {
              goto LABEL_138;
            }
          }
        }

        else
        {
          IPC::Decoder::decode<WTF::Ref<WebCore::FEConvolveMatrix,WTF::RawPtrTraits<WebCore::FEConvolveMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEConvolveMatrix>>>(&v45, this);
          if (*this)
          {
            if ((v46 & 1) == 0)
            {
              goto LABEL_92;
            }

            v34 = v45;
            v45 = 0;
            *a1 = v34;
            *(a1 + 8) = 1;
            goto LABEL_138;
          }

          *a1 = 0;
          *(a1 + 8) = 0;
          if (v46)
          {
            goto LABEL_138;
          }
        }
      }

      else
      {
        IPC::Decoder::decode<WTF::Ref<WebCore::FEComposite,WTF::RawPtrTraits<WebCore::FEComposite>,WTF::DefaultRefDerefTraits<WebCore::FEComposite>>>(&v45, this);
        if (*this)
        {
          if ((v46 & 1) == 0)
          {
            goto LABEL_92;
          }

          v33 = v45;
          v45 = 0;
          *a1 = v33;
          *(a1 + 8) = 1;
          goto LABEL_138;
        }

        *a1 = 0;
        *(a1 + 8) = 0;
        if (v46)
        {
          goto LABEL_138;
        }
      }
    }

    else
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::FEComponentTransfer,WTF::RawPtrTraits<WebCore::FEComponentTransfer>,WTF::DefaultRefDerefTraits<WebCore::FEComponentTransfer>>>(&v45, this);
      if (*this)
      {
        if ((v46 & 1) == 0)
        {
          goto LABEL_92;
        }

        v32 = v45;
        v45 = 0;
        *a1 = v32;
        *(a1 + 8) = 1;
        goto LABEL_138;
      }

      *a1 = 0;
      *(a1 + 8) = 0;
      if (v46)
      {
        goto LABEL_138;
      }
    }
  }

  else
  {
    IPC::Decoder::decode<WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>>(&v45, this);
    if (*this)
    {
      if ((v46 & 1) == 0)
      {
        goto LABEL_92;
      }

      v31 = v45;
      v45 = 0;
      *a1 = v31;
      *(a1 + 8) = 1;
      goto LABEL_138;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    if (v46)
    {
      goto LABEL_138;
    }
  }

LABEL_88:
  if ((*(a1 + 8) & 1) == 0)
  {
    IPC::Decoder::markInvalid(this);
  }
}

void sub_19D837240(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 8) == 1)
  {
    WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *result;
  *result = 0;
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v4 + 1;
  return result;
}

unint64_t WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void **WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(void **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 3);
      v6 = WTF::fastMalloc((8 * a2));
      *(v3 + 2) = v2;
      *v3 = v6;
      result = memcpy(v6, v4, 8 * v5);
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
  }

  return result;
}

atomic_uchar ***WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(atomic_uchar ***result, unint64_t a2)
{
  if (*(result + 2) > a2)
  {
    v3 = result;
    v4 = *(result + 3);
    if (v4 > a2)
    {
      result = &(*result)[a2];
      v5 = 8 * v4 - 8 * a2;
      do
      {
        result = WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(result, a2) + 1;
        v5 -= 8;
      }

      while (v5);
      *(v3 + 3) = a2;
      LODWORD(v4) = a2;
    }

    v6 = *v3;
    if (a2)
    {
      if (*(v3 + 2))
      {
        *(v3 + 2) = a2;
        result = WTF::fastRealloc(v6, (8 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((8 * a2));
      *(v3 + 2) = a2;
      *v3 = result;
      if (result != v6)
      {
        result = memcpy(result, v6, 8 * v4);
      }
    }

    if (v6)
    {
      if (*v3 == v6)
      {
        *v3 = 0;
        *(v3 + 2) = 0;
      }

      return WTF::fastFree(v6, a2);
    }
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 1);
  v2 = *(result + 2);
  v4 = *result;
  if (v3 <= v2 - *result)
  {
    goto LABEL_18;
  }

  *(result + 2) = v2 + 1;
  if (!v2)
  {
LABEL_19:
    v14 = result;
    v18 = a2;
    IPC::Decoder::markInvalid(result);
    result = v14;
    a2 = v18;
    goto LABEL_20;
  }

  if (*v2 >= 2u)
  {
LABEL_20:
    v19 = a2;
    result = IPC::Decoder::markInvalid(result);
    a2 = v19;
    v10 = 0;
    *v19 = 0;
    goto LABEL_14;
  }

  if (*v2)
  {
    v5 = v2 & 0xFFFFFFFFFFFFFFF8;
    v6 = ((v2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v7 = v3 >= v6 - v4;
    v8 = v3 - (v6 - v4);
    if (!v7 || v8 <= 7)
    {
      v11 = result;
      v15 = a2;
      IPC::Decoder::markInvalid(result);
      result = v11;
      a2 = v15;
      goto LABEL_16;
    }

    *(result + 2) = v5 + 16;
    if (!v6)
    {
LABEL_16:
      v12 = result;
      v16 = a2;
      IPC::Decoder::markInvalid(result);
      result = v12;
      a2 = v16;
      if (*v12)
      {
        __break(1u);
LABEL_18:
        v13 = result;
        v17 = a2;
        IPC::Decoder::markInvalid(result);
        result = v13;
        a2 = v17;
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (!v4 || (*v6 - 1) >= 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_20;
    }

    *a2 = *v6;
    v10 = 1;
    a2[8] = 1;
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
    v10 = 1;
  }

LABEL_14:
  a2[16] = v10;
  return result;
}

void *IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(void *result, const void *a2, size_t __n)
{
  v4 = result;
  v5 = -*result;
  v6 = v5 & 7 | 8;
  if (result[1] < v6)
  {
    result = 0;
    v9 = 0;
    *v4 = 0;
    v4[1] = 0;
  }

  else
  {
    *(*result + (v5 & 7)) = __n;
    v7 = result[1];
    v8 = v7 >= v6;
    v9 = v7 - v6;
    if (!v8)
    {
      goto LABEL_11;
    }

    result = (*result + v6);
    *v4 = result;
    v4[1] = v9;
  }

  if (__n)
  {
    if (v9 < __n)
    {
LABEL_12:
      *v4 = 0;
      v4[1] = 0;
      return result;
    }

    result = memcpy(result, a2, __n);
    v10 = v4[1];
    v8 = v10 >= __n;
    v11 = v10 - __n;
    if (!v8)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    *v4 += __n;
    v4[1] = v11;
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::pair<WTF::AtomString,WTF::AtomString>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::AtomString>(a2, &v13);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::AtomString>(a2, &v11);
    if (v12)
    {
      if (v14)
      {
        v6 = v11;
        *a1 = v13;
        *(a1 + 8) = v6;
        *(a1 + 16) = 1;
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    *a1 = 0;
    *(a1 + 16) = 0;
    if (v14)
    {
      v7 = v13;
      v13 = 0;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v5);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  v8 = *a2;
  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
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
    return (*(*result + 16))(result, v8);
  }

  return result;
}

void sub_19D8377A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<std::unique_ptr<WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::unique_ptr<WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t **a2)
{
  if (*a2)
  {
    v6 = 1;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::VectorArgumentCoder<false,JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v4, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::VectorArgumentCoder<false,JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = *a2 + 56 * v5;
    v8 = v6 + 16;
    v9 = MEMORY[0x1E696EBF0];
    v10 = MEMORY[0x1E696EBE8];
    do
    {
      v12 = v8 - 16;
      v11 = *(v8 - 16);
      if (v11)
      {
        v13 = *(v9 + 56);
        if (v13)
        {
          if ((*(v9 + 34) & 1) != 0 || (*v10 & 1) == 0)
          {
            v11 = (v11 & 0x3FFFFFFFFLL) + v13;
          }
        }
      }

      if (*(v8 + 32) == 1 && *v8)
      {
        v14 = atomic_load((*v8 + 32));
      }

      else
      {
        v14 = *(v8 + 16);
      }

      result = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v11, v14);
      v8 += 56;
    }

    while (v12 + 56 != v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,std::unique_ptr<WebCore::DetachedRTCDataChannel>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::unique_ptr<WebCore::DetachedRTCDataChannel>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = IPC::ArgumentCoder<std::unique_ptr<WebCore::DetachedRTCDataChannel>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::DetachedRTCDataChannel> const&>(a1, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::unique_ptr<WebCore::DetachedRTCDataChannel>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::DetachedRTCDataChannel> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v7 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
    v4 = *a2;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v3, *v4);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v3, *(v4 + 8));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v3, (v4 + 16));
    IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(v3, (v4 + 24));
    IPC::ArgumentCoder<std::optional<unsigned short>,void>::encode<IPC::Encoder,std::optional<unsigned short> const&>(v3, v4 + 26);
    IPC::ArgumentCoder<std::optional<unsigned short>,void>::encode<IPC::Encoder,std::optional<unsigned short> const&>(v3, v4 + 30);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v3, (v4 + 40));
    IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(v3, (v4 + 48));
    IPC::ArgumentCoder<std::optional<unsigned short>,void>::encode<IPC::Encoder,std::optional<unsigned short> const&>(v3, v4 + 50);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, *(v4 + 54));
    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, *(v4 + 56));
  }

  else
  {
    v6 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v6);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = IPC::ArgumentCoder<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,void>::encode<IPC::Encoder,WebCore::WebCodecsEncodedVideoChunkStorage>(a1, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,void>::encode<IPC::Encoder,WebCore::WebCodecsEncodedVideoChunkStorage>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v10 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v10);
    v4 = *a2;
    v11 = *(v4 + 8);
    IPC::Encoder::operator<<<BOOL>(v3, &v11);
    v5 = *(v4 + 16);
    v6 = IPC::Encoder::grow(v3, 8uLL, 8);
    if (v7 <= 7)
    {
      result = 1067;
      __break(0xC471u);
    }

    else
    {
      *v6 = v5;
      IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v3, v4 + 24);
      return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v3, *(v4 + 40), *(v4 + 52));
    }
  }

  else
  {
    v9 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v9);
  }

  return result;
}

uint64_t IPC::Decoder::decode<JSC::ArrayBufferContents>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a2, &v11);
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    if (!*a2)
    {
      *a1 = 0;
      a1[56] = 0;
      goto LABEL_7;
    }

    if (v12)
    {
      break;
    }

    __break(1u);
LABEL_11:
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

  result = JSC::ArrayBufferContents::fromSpan();
  if (a1[56])
  {
    return result;
  }

LABEL_7:
  v5 = *a2;
  v6 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v6)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D837C4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    JSC::ArrayBufferContents::~ArrayBufferContents(v1);
  }

  _Unwind_Resume(exception_object);
}

void WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,JSC::ArrayBufferContents>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  JSC::ArrayBufferContents::ArrayBufferContents(*a1 + 56 * *(a1 + 12), v3);
  ++*(a1 + 12);
}

double JSC::ArrayBufferContents::ArrayBufferContents(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(a1 + 24);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  v7 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

unint64_t WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 56 * *(a1 + 12) <= a3)
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

    WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x4924925)
    {
      __break(0xC471u);
      JUMPOUT(0x19D837EB4);
    }

    v3 = *a1;
    v4 = (*a1 + 56 * *(a1 + 12));
    v5 = 56 * a2;
    v6 = WTF::fastMalloc((56 * a2));
    *(a1 + 8) = v5 / 0x38;
    *a1 = v6;
    WTF::VectorMover<false,JSC::ArrayBufferContents>::move(v3, v4, v6);
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

void WTF::VectorMover<false,JSC::ArrayBufferContents>::move(JSC::ArrayBufferContents *a1, JSC::ArrayBufferContents *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      JSC::ArrayBufferContents::ArrayBufferContents(a3, v5);
      JSC::ArrayBufferContents::~ArrayBufferContents(v5);
      a3 += 56;
      v5 = (v5 + 56);
    }

    while (v5 != a2);
  }
}

WTF::StringImpl **IPC::Decoder::decode<std::unique_ptr<WebCore::DetachedRTCDataChannel>>(WTF::StringImpl **result, uint64_t *a2)
{
  v5 = result;
  v64 = *MEMORY[0x1E69E9840];
  v6 = a2[2];
  v7 = *a2;
  v8 = a2[1];
  if (v8 <= &v6[-v7])
  {
    *a2 = 0;
    a2[1] = 0;
    v36 = a2[3];
    if (v36)
    {
      if (v8)
      {
        (*(*v36 + 16))(v36);
        v7 = *a2;
        v8 = a2[1];
        goto LABEL_61;
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = 0;
  }

  else
  {
    a2[2] = (v6 + 1);
    if (v6)
    {
      v9 = *v6;
      if (v9 < 2)
      {
        if (!v9)
        {
          *result = 0;
          *(result + 8) = 1;
          return result;
        }

        IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a2, &v58);
        v10 = v59;
        if ((v59 & 1) == 0)
        {
          v27 = *a2;
          v28 = a2[1];
          *a2 = 0;
          a2[1] = 0;
          v29 = a2[3];
          if (v29)
          {
            if (v28)
            {
              (*(*v29 + 16))(v29, v27);
            }
          }
        }

        IPC::Decoder::decode<WTF::String>(a2, &v56);
        v11 = IPC::Decoder::decode<std::optional<BOOL>>(a2);
        v12 = IPC::Decoder::decode<std::optional<unsigned short>>(a2);
        v13 = IPC::Decoder::decode<std::optional<unsigned short>>(a2);
        IPC::Decoder::decode<WTF::String>(a2, v51);
        v14 = IPC::Decoder::decode<std::optional<BOOL>>(a2);
        v15 = IPC::Decoder::decode<std::optional<unsigned short>>(a2);
        v16 = a2[1];
        v17 = a2[2];
        v18 = *a2;
        if (v16 <= &v17[-*a2])
        {
          *a2 = 0;
          a2[1] = 0;
          v39 = a2[3];
          if (v39)
          {
            if (v16)
            {
              (*(*v39 + 16))(v39);
              v16 = a2[1];
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          a2[2] = (v17 + 1);
          if (v17)
          {
            v19 = *v17;
            if (v19 < 4)
            {
              v3 = v19 | 0x100;
              if (v18)
              {
LABEL_10:
                if ((v11 & 0x10000) == 0 || !WORD2(v12) || !WORD2(v13) || (v51[1] & 1) == 0 || (v14 & 0x10000) == 0 || !WORD2(v15) || v3 <= 0xFF)
                {
                  goto LABEL_40;
                }

                v2 = v14;
                v14 = (v13 << 8);
                v47 = v51[0];
                LODWORD(v13) = v11 >> 8;
                v49 = 1;
LABEL_18:
                v20 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a2);
                v46 = v20;
                v48 = *a2;
                if (!*a2)
                {
                  v30 = v49;
                  if (!v47)
                  {
                    v30 = 0;
                  }

                  if (v30)
                  {
                    v2 = v63;
                    if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v47, v21);
                    }

                    LOBYTE(v12) = 0;
                  }

                  else
                  {
                    LOBYTE(v12) = 0;
                    v2 = v63;
                  }

                  goto LABEL_30;
                }

                if ((v10 & 1) != 0 && (v57 & 1) != 0 && (v49 & 1) != 0 && (v20 & 0x100) != 0)
                {
                  *v51 = v58;
                  WTF::String::isolatedCopy();
                  *v53 = v11 | (v13 << 8);
                  *&v53[2] = v12;
                  v53[4] = BYTE2(v12);
                  *&v53[5] = v14;
                  v54 = v47;
                  *v55 = v2;
                  *&v55[2] = v15;
                  v55[4] = BYTE2(v15);
                  v55[6] = v3;
                  WTF::String::isolatedCopy();
                  v22 = v60;
                  v60 = 0;
                  v23 = v54;
                  v54 = v22;
                  v2 = v63;
                  if (v23)
                  {
                    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v23, v21);
                    }

                    v24 = v60;
                    v60 = 0;
                    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v24, v21);
                    }
                  }

                  LOBYTE(v12) = v51[0];
                  *v63 = *(v51 + 1);
                  v11 = v52;
                  *&v63[7] = v51[1];
                  v61 = *v53;
                  v62 = v53[8];
                  v14 = v54;
                  *v50 = *v55;
                  *&v50[3] = *&v55[3];
LABEL_30:
                  if (v57 == 1)
                  {
                    v25 = v56;
                    v56 = 0;
                    if (v25)
                    {
                      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v25, v21);
                      }
                    }
                  }

                  if (v48)
                  {
                    if (*MEMORY[0x1E69E2678])
                    {
                      NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2678], v21);
LABEL_37:
                      *NonCompact = v12;
                      *(NonCompact + 1) = *v63;
                      *(NonCompact + 8) = *(v2 + 7);
                      *(NonCompact + 16) = v11;
                      *(NonCompact + 24) = v61;
                      *(NonCompact + 32) = v62;
                      *(NonCompact + 40) = v14;
                      *(NonCompact + 48) = *v50;
                      *(NonCompact + 51) = *&v50[3];
                      *(NonCompact + 56) = v46;
                      v51[0] = 0;
                      *v5 = NonCompact;
                      *(v5 + 8) = 1;
                      return std::unique_ptr<WebCore::DetachedRTCDataChannel>::reset[abi:sn200100](v51, 0);
                    }

LABEL_41:
                    NonCompact = WebCore::DetachedRTCDataChannel::operatorNewSlow(0x40);
                    goto LABEL_37;
                  }

                  v31 = *a2;
                  v32 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v33 = a2[3];
                  if (v33 && v32)
                  {
                    (*(*v33 + 16))(v33, v31);
                  }

                  goto LABEL_52;
                }

LABEL_40:
                __break(1u);
                goto LABEL_41;
              }

LABEL_73:
              if (v51[1])
              {
                v42 = v51[0];
                v51[0] = 0;
                if (v42)
                {
                  if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v42, v18);
                  }
                }
              }

              v43 = *a2;
              v44 = a2[1];
              *a2 = 0;
              a2[1] = 0;
              v45 = a2[3];
              if (v45 && v44)
              {
                (*(*v45 + 16))(v45, v43);
              }

              v49 = 0;
              v11 = 0;
              goto LABEL_18;
            }

            goto LABEL_72;
          }
        }

        *a2 = 0;
        a2[1] = 0;
        v40 = a2[3];
        if (v40)
        {
          if (v16)
          {
            (*(*v40 + 16))(v40);
            v18 = *a2;
            v16 = a2[1];
            goto LABEL_72;
          }
        }

        else
        {
          v16 = 0;
        }

        v18 = 0;
LABEL_72:
        *a2 = 0;
        a2[1] = 0;
        v41 = a2[3];
        if (v41)
        {
          if (v16)
          {
            (*(*v41 + 16))(v41, v18);
            v3 = 0;
            v18 = *a2;
            if (*a2)
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_73;
      }

      goto LABEL_64;
    }
  }

LABEL_61:
  *a2 = 0;
  a2[1] = 0;
  v37 = a2[3];
  if (v37)
  {
    if (v8)
    {
      (*(*v37 + 16))(v37, v7);
      v7 = *a2;
      v8 = a2[1];
      goto LABEL_64;
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = 0;
LABEL_64:
  *a2 = 0;
  a2[1] = 0;
  v38 = a2[3];
  if (v38 && v8)
  {
    (*(*v38 + 16))(v38, v7);
  }

LABEL_52:
  *v5 = 0;
  *(v5 + 8) = 0;
  v34 = *a2;
  v35 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    if (v35)
    {
      return (*(*result + 2))(result, v34);
    }
  }

  return result;
}

void sub_19D838580(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, WTF::StringImpl *a16, char a17, WTF::StringImpl *a18, uint64_t a19, uint64_t a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, WTF::StringImpl *a24, char a25)
{
  if (a17 == 1 && a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a25 == 1 && a24 && atomic_fetch_add_explicit(a24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a24, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>>(uint64_t result, IPC::Decoder *this)
{
  v3 = result;
  v4 = *(this + 2);
  v5 = *this;
  v6 = *(this + 1);
  if (v6 > &v4[-v5])
  {
    v7 = v4 + 1;
    *(this + 2) = v4 + 1;
    if (!v4)
    {
      goto LABEL_31;
    }

    if (*v4 >= 2u)
    {
      goto LABEL_34;
    }

    if (!*v4)
    {
      *result = 0;
      goto LABEL_16;
    }

    if (v6 <= &v7[-v5])
    {
      v24 = 0;
      v25 = 0;
      *this = 0;
      *(this + 1) = 0;
      v26 = *(this + 3);
      if (v26)
      {
        (*(*v26 + 16))(v26);
        v25 = *this;
        v24 = *(this + 1);
      }
    }

    else
    {
      *(this + 2) = v4 + 2;
      if (v4 != -1)
      {
        v8 = *v7;
        if (v8 < 2)
        {
          v9 = 0;
          v10 = v8 != 0;
LABEL_9:
          v11 = IPC::Decoder::decode<long long>(this);
          v13 = v12;
          IPC::Decoder::decode<std::optional<unsigned long long>>(this, &v37);
          IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(this, &v34);
          if (*this)
          {
            if (!v9 && (v13 & 1) != 0 && (v39 & 1) != 0 && (v36 & 1) != 0)
            {
              v14 = v34;
              v15 = v35;
              v32 = v37;
              v33 = v38;
              result = WTF::fastMalloc(0x38);
              *result = 1;
              *(result + 8) = v10;
              *(result + 16) = v11;
              *(result + 24) = v32;
              *(result + 32) = v33;
              *(result + 40) = v14;
              *(result + 48) = v15;
              *v3 = result;
LABEL_16:
              *(v3 + 8) = 1;
              return result;
            }
          }

          else
          {
            if (v36)
            {
              v16 = v34;
              if (v34)
              {
                v34 = 0;
                LODWORD(v35) = 0;
                WTF::fastFree(v16, 0);
              }
            }

            v17 = *(this + 1);
            *this = 0;
            *(this + 1) = 0;
            v18 = *(this + 3);
            if (!v18)
            {
              goto LABEL_22;
            }

            if (!v17)
            {
              goto LABEL_22;
            }

            (*(*v18 + 16))(v18);
            if (!*this)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

LABEL_41:
        *this = 0;
        *(this + 1) = 0;
        v28 = *(this + 3);
        if (v28 && v6)
        {
          (*(*v28 + 16))(v28, v5);
          v10 = 0;
          v29 = *(this + 3);
          v30 = *this;
          v31 = *(this + 1);
          v9 = 1;
          *this = 0;
          *(this + 1) = 0;
          if (v29 && v31)
          {
            (*(*v29 + 16))(v29, v30);
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
          v9 = 1;
        }

        goto LABEL_9;
      }

      v24 = v6;
      v25 = v5;
    }

    *this = 0;
    *(this + 1) = 0;
    v27 = *(this + 3);
    if (v27 && v24)
    {
      (*(*v27 + 16))(v27, v25, v24);
      v5 = *this;
      v6 = *(this + 1);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    goto LABEL_41;
  }

LABEL_28:
  *this = 0;
  *(this + 1) = 0;
  v21 = *(this + 3);
  if (v21)
  {
    if (v6)
    {
      (*(*v21 + 16))(v21);
      v5 = *this;
      v6 = *(this + 1);
      goto LABEL_31;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_31:
  *this = 0;
  *(this + 1) = 0;
  v22 = *(this + 3);
  if (v22)
  {
    if (v6)
    {
      (*(*v22 + 16))(v22, v5);
      v5 = *this;
      v6 = *(this + 1);
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_34:
  *this = 0;
  *(this + 1) = 0;
  v23 = *(this + 3);
  if (v23 && v6)
  {
    (*(*v23 + 16))(v23, v5);
  }

LABEL_22:
  *v3 = 0;
  *(v3 + 8) = 0;
  v19 = *this;
  v20 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  result = *(this + 3);
  if (result)
  {
    if (v20)
    {
      return (*(*result + 16))(result, v19);
    }
  }

  return result;
}

void sub_19D838A90(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::RefPtr<WebCore::WebCodecsEncodedAudioChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedAudioChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedAudioChunkStorage>>>(uint64_t result, IPC::Decoder *this)
{
  v3 = result;
  v4 = *(this + 2);
  v5 = *this;
  v6 = *(this + 1);
  if (v6 > &v4[-v5])
  {
    v7 = v4 + 1;
    *(this + 2) = v4 + 1;
    if (!v4)
    {
      goto LABEL_31;
    }

    if (*v4 >= 2u)
    {
      goto LABEL_34;
    }

    if (!*v4)
    {
      *result = 0;
      goto LABEL_16;
    }

    if (v6 <= &v7[-v5])
    {
      v24 = 0;
      v25 = 0;
      *this = 0;
      *(this + 1) = 0;
      v26 = *(this + 3);
      if (v26)
      {
        (*(*v26 + 16))(v26);
        v25 = *this;
        v24 = *(this + 1);
      }
    }

    else
    {
      *(this + 2) = v4 + 2;
      if (v4 != -1)
      {
        v8 = *v7;
        if (v8 < 2)
        {
          v9 = 0;
          v10 = v8 != 0;
LABEL_9:
          v11 = IPC::Decoder::decode<long long>(this);
          v13 = v12;
          IPC::Decoder::decode<std::optional<unsigned long long>>(this, &v37);
          IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(this, &v34);
          if (*this)
          {
            if (!v9 && (v13 & 1) != 0 && (v39 & 1) != 0 && (v36 & 1) != 0)
            {
              v14 = v34;
              v15 = v35;
              v32 = v37;
              v33 = v38;
              result = WTF::fastMalloc(0x38);
              *result = 1;
              *(result + 8) = v10;
              *(result + 16) = v11;
              *(result + 24) = v32;
              *(result + 32) = v33;
              *(result + 40) = v14;
              *(result + 48) = v15;
              *v3 = result;
LABEL_16:
              *(v3 + 8) = 1;
              return result;
            }
          }

          else
          {
            if (v36)
            {
              v16 = v34;
              if (v34)
              {
                v34 = 0;
                LODWORD(v35) = 0;
                WTF::fastFree(v16, 0);
              }
            }

            v17 = *(this + 1);
            *this = 0;
            *(this + 1) = 0;
            v18 = *(this + 3);
            if (!v18)
            {
              goto LABEL_22;
            }

            if (!v17)
            {
              goto LABEL_22;
            }

            (*(*v18 + 16))(v18);
            if (!*this)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

LABEL_41:
        *this = 0;
        *(this + 1) = 0;
        v28 = *(this + 3);
        if (v28 && v6)
        {
          (*(*v28 + 16))(v28, v5);
          v10 = 0;
          v29 = *(this + 3);
          v30 = *this;
          v31 = *(this + 1);
          v9 = 1;
          *this = 0;
          *(this + 1) = 0;
          if (v29 && v31)
          {
            (*(*v29 + 16))(v29, v30);
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
          v9 = 1;
        }

        goto LABEL_9;
      }

      v24 = v6;
      v25 = v5;
    }

    *this = 0;
    *(this + 1) = 0;
    v27 = *(this + 3);
    if (v27 && v24)
    {
      (*(*v27 + 16))(v27, v25, v24);
      v5 = *this;
      v6 = *(this + 1);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    goto LABEL_41;
  }

LABEL_28:
  *this = 0;
  *(this + 1) = 0;
  v21 = *(this + 3);
  if (v21)
  {
    if (v6)
    {
      (*(*v21 + 16))(v21);
      v5 = *this;
      v6 = *(this + 1);
      goto LABEL_31;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_31:
  *this = 0;
  *(this + 1) = 0;
  v22 = *(this + 3);
  if (v22)
  {
    if (v6)
    {
      (*(*v22 + 16))(v22, v5);
      v5 = *this;
      v6 = *(this + 1);
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_34:
  *this = 0;
  *(this + 1) = 0;
  v23 = *(this + 3);
  if (v23 && v6)
  {
    (*(*v23 + 16))(v23, v5);
  }

LABEL_22:
  *v3 = 0;
  *(v3 + 8) = 0;
  v19 = *this;
  v20 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  result = *(this + 3);
  if (result)
  {
    if (v20)
    {
      return (*(*result + 16))(result, v19);
    }
  }

  return result;
}