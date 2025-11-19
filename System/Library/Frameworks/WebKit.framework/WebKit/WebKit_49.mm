mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 152) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WebCore::ResourceRequestPlatformData,void>::encode(result, a2);
  }

  return result;
}

uint64_t std::optional<WebCore::ResourceRequestBase::RequestData>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 152) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 128, a2);
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((a1 + 112), v3);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(a1 + 96, v4);
    v6 = *(a1 + 88);
    *(a1 + 88) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }

    v7 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = *a1;
    *a1 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }
  }

  return a1;
}

void IPC::ArgumentCoder<WTF::RetainPtr<NSError>,void>::decode<NSError,NSError*>(uint64_t a1, IPC::Decoder *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v9[0] = v4;
  if (v4)
  {
    v5 = v4;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v8, v9, 1);
  IPC::decodeRequiringAllowedClasses<NSError,NSError*>(a1, a2);
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

void sub_19D80E100(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void *a11)
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

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ResourceError::IPCData>,void>::encode<IPC::Encoder,std::optional<WebCore::ResourceError::IPCData>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 24))
    {
      return IPC::ArgumentCoder<WebCore::ResourceError::IPCData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::ResourceError::IPCData>,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::ArgumentCoder<std::optional<WebCore::ResourceError::IPCData>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<BOOL>(a2);
  if ((v4 & 0x100) != 0)
  {
    if (v4)
    {
      IPC::Decoder::decode<WebCore::ResourceError::IPCData>(v7, a2);
      if (v10 == 1)
      {
        v5 = v7[0];
        *(a1 + 8) = v8;
        *(a1 + 16) = v9;
        v6 = 1;
        *(a1 + 24) = 1;
      }

      else
      {
        v5 = 0;
        v6 = 0;
      }

      *a1 = v5;
      *(a1 + 32) = v6;
    }

    else
    {
      *a1 = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 1;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }
}

void IPC::Decoder::decode<WebCore::ResourceError::IPCData>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::ResourceError::IPCData,void>::decode(a1, a2);
  if ((*(a1 + 24) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<float>,void>::encode<IPC::Encoder,std::optional<float> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 4))
    {
      return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::GrammarDetail,void>::encode(a1, v6);
      v6 += 5;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::TextCheckingType>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v6 = a1;
    v5 = a1[3];
    if (v5)
    {
      if (v1)
      {
        (*(*v5 + 16))(v5);
        v3 = *v6;
        v1 = v6[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_8;
  }

  a1[2] = (v2 + 1);
  if (v2)
  {
    return *v2 | 0x100u;
  }

  v6 = a1;
LABEL_8:
  *v6 = 0;
  v6[1] = 0;
  result = v6[3];
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(WTF::StringImpl **a1@<X0>, char *a2@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = (v5 - *a1);
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v26 = a1[3];
    if (v26)
    {
      if (v4)
      {
        (*(*v26 + 16))(v26);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_41;
  }

  a1[2] = (v5 + 1);
  if (v5)
  {
    v11 = *v5;
    v33 = 0;
    v34 = 0;
    if (v11 >= 0x6666)
    {
      v12 = *a2;
      v13 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::GrammarDetail>(a1, &v27);
        v20 = v32;
        if (v32)
        {
          if (HIDWORD(v34) == v34)
          {
            WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::GrammarDetail>(&v33, &v27);
          }

          else
          {
            v21 = v33 + 40 * HIDWORD(v34);
            *v21 = v27;
            *(v21 + 16) = 0;
            *(v21 + 24) = 0;
            v22 = v28;
            v28 = 0;
            *(v21 + 16) = v22;
            LODWORD(v22) = v29;
            v29 = 0;
            *(v21 + 24) = v22;
            LODWORD(v22) = v30;
            v30 = 0;
            *(v21 + 28) = v22;
            v23 = v31;
            v31 = 0;
            *(v21 + 32) = v23;
            ++HIDWORD(v34);
          }
        }

        else
        {
          v13 = 0;
          v12 = 0;
        }

        if (v32 == 1)
        {
          v24 = v31;
          v31 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v6);
          }

          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v6);
        }

        if ((v20 & 1) == 0)
        {
          break;
        }

        if (!--v11)
        {
          *a2 = v12;
          a2[16] = v13;
          WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v33, HIDWORD(v34));
          goto LABEL_22;
        }
      }
    }

    else
    {
      if (!v11)
      {
LABEL_22:
        *a2 = v33;
        v19 = v34;
        v33 = 0;
        v34 = 0;
        *(a2 + 1) = v19;
        a2[16] = 1;
        return WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v6);
      }

      LODWORD(v34) = 40 * v11 / 0x28u;
      v33 = WTF::fastMalloc((40 * v11));
      v12 = *a2;
      v13 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::GrammarDetail>(a1, &v27);
        v14 = v32;
        if (v32)
        {
          if (HIDWORD(v34) == v34)
          {
            WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::GrammarDetail>(&v33, &v27);
          }

          else
          {
            v15 = v33 + 40 * HIDWORD(v34);
            *v15 = v27;
            *(v15 + 16) = 0;
            *(v15 + 24) = 0;
            v16 = v28;
            v28 = 0;
            *(v15 + 16) = v16;
            LODWORD(v16) = v29;
            v29 = 0;
            *(v15 + 24) = v16;
            LODWORD(v16) = v30;
            v30 = 0;
            *(v15 + 28) = v16;
            v17 = v31;
            v31 = 0;
            *(v15 + 32) = v17;
            ++HIDWORD(v34);
          }
        }

        else
        {
          v13 = 0;
          v12 = 0;
        }

        if (v32 == 1)
        {
          v18 = v31;
          v31 = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v6);
          }

          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v6);
        }

        if ((v14 & 1) == 0)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_22;
        }
      }
    }

    *a2 = v12;
    a2[16] = v13;
    return WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v6);
  }

LABEL_41:
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
  a2[16] = 0;
  return result;
}

void sub_19D80E78C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  *v18 = v21;
  v18[16] = v20;
  if (a14 == 1)
  {
    if (a13)
    {
      if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a13, a2);
      }
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19 + 16, a2);
  }

  WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a16, a2);
  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::GrammarDetail>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::GrammarDetail,void>::decode(a1, a2);
  if ((*(a2 + 40) & 1) == 0)
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

uint64_t WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::GrammarDetail>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 40 * *(a1 + 12);
  *v4 = *v3;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4 + 16, (v3 + 16));
  v5 = *(v3 + 32);
  *(v3 + 32) = 0;
  *(v4 + 32) = v5;
  ++*(a1 + 12);
  return 1;
}

void sub_19D80E908(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
    WTF::VectorMover<false,WebCore::GrammarDetail>::move(v3, v4, v6);
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

uint64_t WTF::VectorMover<false,WebCore::GrammarDetail>::move(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 16);
    v5 = result + 16;
    do
    {
      *(v4 - 1) = *(v5 - 16);
      *v4 = 0;
      v4[1] = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4, v5);
      v7 = *(v5 + 16);
      *(v5 + 16) = 0;
      v4[2] = v7;
      v8 = *(v5 + 16);
      *(v5 + 16) = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }
      }

      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v6);
      v4 += 5;
      v9 = v5 + 24;
      v5 += 40;
    }

    while (v9 != a2);
  }

  return result;
}

void sub_19D80EB34(_Unwind_Exception *exception_object, void *a2)
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

unsigned int *WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebCore::GrammarDetail>::destruct(*result + 40 * this, (*result + 40 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x6666667)
      {
        __break(0xC471u);
        JUMPOUT(0x19D80EC54);
      }

      v6 = (40 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x28;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::GrammarDetail>::move(v5, v5 + 40 * v4, result);
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

uint64_t WTF::VectorTypeOperations<WebCore::GrammarDetail>::destruct(uint64_t result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result + 16;
    do
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }

      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
      v5 = (v3 + 24);
      v3 += 40;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::GrammarDetail>::destruct(*a1, (*a1 + 40 * v3));
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

void sub_19D80ED18(_Unwind_Exception *exception_object, void *a2)
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

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 40))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *(a2 + 12);
    v5 = *a2;

    return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v5, v4);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 40) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(result, a2);
  }

  return result;
}

void IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<unsigned char>(a2);
  if ((v4 & 0x1FE) == 0x100)
  {

    IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,void>::decode<IPC::Decoder>(a1, a2, v4 & 1);
  }

  else
  {
    *a1 = 0;
    a1[48] = 0;
  }
}

void IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  if (a3)
  {

    IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,void>::decode<IPC::Decoder,0ul>(a1, a2);
  }

  else
  {
    IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v6);
    if (v8 == 1)
    {
      _ZNSt3__127__optional_copy_assign_baseIN5mpark7variantIJN3WTF6VectorIhLm0ENS3_15CrashOnOverflowELm16ENS3_10FastMallocEEENS3_3URLEEEELb0EECI2NS_24__optional_destruct_baseIS9_Lb0EEEIJRKNS1_16in_place_index_tILm0EEES7_EEENS_10in_place_tEDpOT_(a1, &v6);
      if (v8)
      {
        v5 = v6;
        if (v6)
        {
          v6 = 0;
          v7 = 0;
          WTF::fastFree(v5, v4);
        }
      }
    }

    else
    {
      *a1 = 0;
      a1[48] = 0;
    }
  }
}

void sub_19D80EEC0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
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

void IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,void>::decode<IPC::Decoder,0ul>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::URL>(a2, v5);
  if (v6 == 1)
  {
    WTF::URL::URL(a1, v5);
    a1[40] = 1;
    a1[48] = 1;
    if (v6)
    {
      v4 = v5[0];
      v5[0] = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v3);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[48] = 0;
  }
}

void sub_19D80EF7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__127__optional_copy_assign_baseIN5mpark7variantIJN3WTF6VectorIhLm0ENS3_15CrashOnOverflowELm16ENS3_10FastMallocEEENS3_3URLEEEELb0EECI2NS_24__optional_destruct_baseIS9_Lb0EEEIJRKNS1_16in_place_index_tILm0EEES7_EEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return a1;
}

void sub_19D80EFEC(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::ArgumentCoder<std::optional<WebCore::IntConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::IntConstraint> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 48))
    {
      return IPC::ArgumentCoder<WebCore::IntConstraint,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::DoubleConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::DoubleConstraint> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::DoubleConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::DoubleConstraint> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 80))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 80))
    {
      return IPC::ArgumentCoder<WebCore::DoubleConstraint,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::BooleanConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::BooleanConstraint> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::BooleanConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::BooleanConstraint> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[16])
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[16])
    {
      return IPC::ArgumentCoder<WebCore::BooleanConstraint,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::StringConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::StringConstraint> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

IPC::Encoder *IPC::ArgumentCoder<std::optional<WebCore::StringConstraint>,void>::encode<IPC::Encoder,std::optional<WebCore::StringConstraint> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 48))
    {
      return IPC::ArgumentCoder<WebCore::StringConstraint,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData> const&>(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData> const&>(a1, a2, v5);
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData> const&>(IPC::Encoder *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 40))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *(a2 + 12);
    v5 = *a2;

    return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v5, v4);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData> const&,0ul>(IPC::Encoder *this, uint64_t a2, uint64_t a3)
{
  v4 = this;
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      return this;
    }

    if (*(a2 + 40) == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(this, a2);
      v5 = *(a2 + 8);
      v6 = IPC::Encoder::grow(v4, 8uLL, 8);
      if (v7 <= 7 || (*v6 = v5, v8 = *(a2 + 16), v9 = IPC::Encoder::grow(v4, 8uLL, 8), v10 <= 7))
      {
        __break(0xC471u);
        JUMPOUT(0x19D80F380);
      }

      *v9 = v8;

      return IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(v4, a2 + 24);
    }

LABEL_14:
    mpark::throw_bad_variant_access(this);
  }

  if (*(a2 + 40) != 2)
  {
    goto LABEL_14;
  }

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(this, a2);
}

void IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<unsigned char>(a2);
  if ((v4 & 0x100) != 0 && v4 < 3u)
  {

    IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::decode<IPC::Decoder>(a1, a2, v4 & 3);
  }

  else
  {
    *a1 = 0;
    a1[48] = 0;
  }
}

void IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  if (a3)
  {

    IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::decode<IPC::Decoder,0ul>(a1, a2, a3);
  }

  else
  {
    IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v6);
    if (v8 == 1)
    {
      _ZNSt3__127__optional_copy_assign_baseIN5mpark7variantIJN3WTF6VectorIhLm0ENS3_15CrashOnOverflowELm16ENS3_10FastMallocEEEN7WebCore15FormDataElement15EncodedFileDataENS9_15EncodedBlobDataEEEELb0EECI2NS_24__optional_destruct_baseISC_Lb0EEEIJRKNS1_16in_place_index_tILm0EEES7_EEENS_10in_place_tEDpOT_(a1, &v6);
      if (v8)
      {
        v5 = v6;
        if (v6)
        {
          v6 = 0;
          v7 = 0;
          WTF::fastFree(v5, v4);
        }
      }
    }

    else
    {
      *a1 = 0;
      a1[48] = 0;
    }
  }
}

void sub_19D80F4B0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
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

void IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,void>::decode<IPC::Decoder,0ul>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    IPC::Decoder::decode<WTF::String>(a2, &v26);
    v5 = IPC::Decoder::decode<long long>(a2);
    v7 = v6;
    v8 = IPC::Decoder::decode<long long>(a2);
    v10 = v9;
    IPC::Decoder::decode<std::optional<WTF::WallTime>>(&v30, a2);
    v12 = v27;
    if (!*a2)
    {
      goto LABEL_17;
    }

    if (v27 & 1) != 0 && (v7 & 1) != 0 && (v10)
    {
      v12 = BYTE8(v31);
      if (BYTE8(v31))
      {
        v13 = v30;
        v14 = v31;
        *a1 = v26;
        *(a1 + 8) = v5;
        *(a1 + 16) = v8;
        *(a1 + 24) = v13;
        *(a1 + 32) = v14;
        v15 = 1;
        *(a1 + 40) = 1;
LABEL_8:
        *(a1 + 48) = v15;
        return;
      }
    }

LABEL_16:
    __break(1u);
LABEL_17:
    if (v12)
    {
      v18 = v26;
      v26 = 0;
      if (v18)
      {
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v11);
        }
      }
    }

    v19 = *a2;
    v20 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (v21)
    {
      if (v20)
      {
        (*(*v21 + 16))(v21, v19);
      }
    }

    v15 = 0;
    *a1 = 0;
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    goto LABEL_28;
  }

  IPC::Decoder::decode<WTF::URL>(a2, &v30);
  v12 = v33;
  if (!*a2)
  {
    if (v33)
    {
      v22 = v30;
      v30 = 0;
      if (v22)
      {
        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v11);
        }
      }
    }

    v23 = *a2;
    v24 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (v25 && v24)
    {
      (*(*v25 + 16))(v25, v23);
    }

LABEL_28:
    *a1 = 0;
    *(a1 + 48) = 0;
    return;
  }

  if ((v33 & 1) == 0)
  {
    goto LABEL_16;
  }

  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = 1;
  WTF::URL::URL(a1, &v26);
  *(a1 + 40) = 2;
  *(a1 + 48) = 1;
  if (v29)
  {
    v17 = v26;
    v26 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v16);
      }
    }
  }
}

void sub_19D80F70C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__127__optional_copy_assign_baseIN5mpark7variantIJN3WTF6VectorIhLm0ENS3_15CrashOnOverflowELm16ENS3_10FastMallocEEEN7WebCore15FormDataElement15EncodedFileDataENS9_15EncodedBlobDataEEEELb0EECI2NS_24__optional_destruct_baseISC_Lb0EEEIJRKNS1_16in_place_index_tILm0EEES7_EEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return a1;
}

void sub_19D80F790(_Unwind_Exception *exception_object, void *a2)
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

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::begin(_DWORD **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[18 * v2];
  if (!*(result - 3))
  {
    return &result[18 * v2];
  }

  if (v2)
  {
    v4 = 72 * v2;
    while ((*result + 1) <= 1)
    {
      result += 18;
      v4 -= 72;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

char *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_3;
  }

  v3 = *(v2 - 4);
  v4 = *(v2 - 12);
  if (!v3)
  {
LABEL_3:
    v5 = 8;
    goto LABEL_4;
  }

  v5 = v3 << (6 * v4 >= 2 * v3);
LABEL_4:
  result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::allocateTable(v5);
  *a1 = result;
  *(result - 2) = v5 - 1;
  *(result - 1) = v5;
  *(result - 4) = 0;
  *(result - 3) = v4;
  if (v3)
  {
    v8 = v3;
    v9 = v2;
    while (1)
    {
      if (*v9 != -1)
      {
        if (*v9)
        {
          WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::reinsert(*a1, v9);
          v10 = *(v9 + 40);
          *(v9 + 40) = 0;
          if (v10)
          {
LABEL_14:
            CFRelease(v10);
          }
        }

        else
        {
          v10 = *(v9 + 40);
          *(v9 + 40) = 0;
          if (v10)
          {
            goto LABEL_14;
          }
        }
      }

      v9 += 72;
      if (!--v8)
      {
        goto LABEL_16;
      }
    }
  }

  if (v2)
  {
LABEL_16:

    return WTF::fastFree((v2 - 16), v7);
  }

  return result;
}

double WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::initializeBucket(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v2 = *WebCore::DestinationColorSpace::SRGB(a1);
  *(a1 + 40) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 60) = result;
  *(a1 + 68) = 1065353216;
  return result;
}

char *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  LODWORD(v1) = a1;
  v2 = WTF::fastMalloc((72 * a1 + 16));
  v3 = v2;
  if (v1)
  {
    v1 = v1;
    v4 = v2 + 56;
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      *(v4 - 10) = 0;
      *(v4 - 2) = 0u;
      *(v4 - 1) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      v2 = *WebCore::DestinationColorSpace::SRGB(v2);
      *v4 = v2;
      if (v2)
      {
        v2 = CFRetain(v2);
      }

      *(v4 + 4) = 0;
      *(v4 + 1) = 0;
      *(v4 + 20) = _D8;
      *(v4 + 7) = 1065353216;
      v4 += 72;
      --v1;
    }

    while (v1);
  }

  return v3 + 16;
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
  v5 = 9 * ((*a2 + ~(*a2 << 15)) ^ ((*a2 + ~(*a2 << 15)) >> 10));
  v6 = (v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11);
  v7 = v6 ^ HIWORD(v6);
  do
  {
    v8 = v7 & v3;
    v9 = a1 + 72 * v8;
    v7 = ++v4 + v8;
  }

  while (*v9);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  *v9 = *a2;
  v11 = *(a2 + 8);
  *(v9 + 24) = *(a2 + 24);
  *(v9 + 8) = v11;
  v12 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v9 + 40) = v12;
  v13 = *(a2 + 48);
  *(v9 + 64) = *(a2 + 64);
  *(v9 + 48) = v13;
  return v9;
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::ContentsFormat>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
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
  v4 = v2 < 8;
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[4 * v5];
    do
    {
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, v6);
      result = IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, v6 + 2);
      v6 += 4;
    }

    while (v6 != v7);
  }

  return result;
}

WTF *IPC::VectorArgumentCoder<false,WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
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
      IPC::Decoder::decode<WebCore::PlatformTimeRanges::Range>(&v24, a1);
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
      IPC::Decoder::decode<WebCore::PlatformTimeRanges::Range>(&v24, a1);
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

void sub_19D80FE28(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16)
{
  if (a15)
  {
    WTF::fastFree(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::PlatformTimeRanges::Range>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::MediaTime>(a2, v12);
  result = IPC::Decoder::decode<WTF::MediaTime>(a2, v10);
  if (*a2)
  {
    if (v13)
    {
      *&v8 = v12[0];
      *(&v8 + 5) = *(v12 + 5);
      if (v11)
      {
        *&v9 = v10[0];
        *(&v9 + 5) = *(v10 + 5);
        *a1 = v8;
        *(a1 + 16) = v9;
        *(a1 + 32) = 1;
        return result;
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 32) = 0;
  v5 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

uint64_t WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[2 * v5];
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6 + 1);
      v6 += 2;
    }

    while (v6 != v7);
  }

  return result;
}

WTF::StringImpl *IPC::VectorArgumentCoder<false,WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(WTF::StringImpl **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = (v5 - *a1);
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v37 = a1[3];
    if (v37)
    {
      if (v4)
      {
        (*(*v37 + 16))(v37);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_48;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_48:
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
  v41 = 0;
  v42 = 0;
  if (v11 < 0x10000)
  {
    if (v11)
    {
      LODWORD(v42) = v11;
      v41 = WTF::fastMalloc((16 * v11));
      while (1)
      {
        IPC::Decoder::decode<WebCore::DataListSuggestion>(&v38, a1);
        if ((v40 & 1) == 0)
        {
          goto LABEL_44;
        }

        if (HIDWORD(v42) != v42)
        {
          break;
        }

        v12 = WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v41, HIDWORD(v42) + 1, &v38);
        v13 = HIDWORD(v42) + 1;
        v14 = (v41 + 16 * HIDWORD(v42));
        v15 = *v12;
        *v12 = 0;
        *v14 = v15;
        v16 = v12[1];
        v12[1] = 0;
        v14[1] = v16;
        HIDWORD(v42) = v13;
        if (v40)
        {
          goto LABEL_15;
        }

LABEL_21:
        if (!--v11)
        {
          goto LABEL_22;
        }
      }

      v17 = HIDWORD(v42) + 1;
      v18 = (v41 + 16 * HIDWORD(v42));
      v19 = v38;
      v38 = 0;
      *v18 = v19;
      v20 = v39;
      v39 = 0;
      v18[1] = v20;
      HIDWORD(v42) = v17;
LABEL_15:
      v21 = v39;
      v39 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v6);
      }

      v22 = v38;
      v38 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v6);
      }

      goto LABEL_21;
    }

LABEL_22:
    *a2 = v41;
    v23 = v42;
    v41 = 0;
    v42 = 0;
    *(a2 + 8) = v23;
    *(a2 + 16) = 1;
    return WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v6);
  }

  do
  {
    IPC::Decoder::decode<WebCore::DataListSuggestion>(&v38, a1);
    if ((v40 & 1) == 0)
    {
LABEL_44:
      *a2 = 0;
      *(a2 + 16) = 0;
      return WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v6);
    }

    if (HIDWORD(v42) == v42)
    {
      result = WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v41, HIDWORD(v42) + 1, &v38);
      v25 = HIDWORD(v42) + 1;
      v26 = (v41 + 16 * HIDWORD(v42));
      v27 = *result;
      *result = 0;
      *v26 = v27;
      v28 = *(result + 1);
      *(result + 1) = 0;
      v26[1] = v28;
      HIDWORD(v42) = v25;
      if ((v40 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v29 = HIDWORD(v42) + 1;
      v30 = (v41 + 16 * HIDWORD(v42));
      v31 = v38;
      v38 = 0;
      *v30 = v31;
      v32 = v39;
      v39 = 0;
      v30[1] = v32;
      HIDWORD(v42) = v29;
    }

    v33 = v39;
    v39 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v6);
    }

    result = v38;
    v38 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v6);
    }

LABEL_34:
    --v11;
  }

  while (v11);
  v34 = HIDWORD(v42);
  if (v42 <= HIDWORD(v42))
  {
    goto LABEL_22;
  }

  v35 = v41;
  if (!HIDWORD(v42))
  {
LABEL_40:
    if (v35)
    {
      if (v41 == v35)
      {
        v41 = 0;
        LODWORD(v42) = 0;
      }

      WTF::fastFree(v35, v6);
    }

    goto LABEL_22;
  }

  if (!(HIDWORD(v42) >> 28))
  {
    v36 = WTF::fastMalloc((16 * HIDWORD(v42)));
    LODWORD(v42) = v34;
    v41 = v36;
    if (v36 != v35)
    {
      WTF::VectorTypeOperations<WebCore::DataListSuggestion>::move(v35, (v35 + 16 * v34), v36);
    }

    goto LABEL_40;
  }

  __break(0xC471u);
  return result;
}

void sub_19D8103D4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

  WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::DataListSuggestion>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v13);
  result = IPC::Decoder::decode<WTF::String>(a2, &v11);
  v6 = *a2;
  if (*a2)
  {
    if (v14)
    {
      v7 = v13;
      v13 = 0;
      if (v12)
      {
        v8 = v11;
        *a1 = v7;
        *(a1 + 8) = v8;
        *(a1 + 16) = 1;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v12)
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

LABEL_5:
  if (v14 == 1 && (result = v13, v13 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
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

void sub_19D810588(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D81071CLL);
    }

    v3 = result;
    v4 = *result;
    v5 = (*result + 16 * *(result + 3));
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 2) = v2;
    *v3 = v6;
    result = WTF::VectorTypeOperations<WebCore::DataListSuggestion>::move(v4, v5, v6);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::DataListSuggestion>::move(WTF::StringImpl *result, WTF::StringImpl *a2, WTF::StringImpl **a3)
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
      v8 = v5[1];
      v5[1] = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
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

      a3 += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ImageBufferPixelFormat,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
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
    IPC::Decoder::markInvalid(a1);
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 5)
  {
LABEL_8:
    v2 = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

uint64_t IPC::ArgumentCoder<WebCore::PixelFormat,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
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
    IPC::Decoder::markInvalid(a1);
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 6)
  {
LABEL_8:
    v2 = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

void IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 8))
    {
      mpark::throw_bad_variant_access(a1);
    }

    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  }
}

void IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>> const&,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 8) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(a1, v4);
  }
}

void IPC::VectorArgumentCoder<false,WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v4 = *(a2 + 12);
  if (v4)
  {
    v5 = *a2;
    v6 = 32 * v4;
    do
    {
      IPC::ArgumentCoder<WebCore::PasteboardCustomData::Entry,void>::encode(a1, v5);
      v5 += 32;
      v6 -= 32;
    }

    while (v6);
  }
}

void IPC::VectorArgumentCoder<false,WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(WTF::StringImpl **a1@<X0>, char *a2@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = (v5 - *a1);
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v26 = a1[3];
    if (v26)
    {
      if (v4)
      {
        (*(*v26 + 16))(v26);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_55;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_55:
    *a1 = 0;
    a1[1] = 0;
    v27 = a1[3];
    if (v27)
    {
      if (v4)
      {
        (*(*v27 + 16))(v27);
      }
    }

    *a2 = 0;
    a2[16] = 0;
    return;
  }

  v11 = *v5;
  v32 = 0;
  v33 = 0;
  if (v11 >= 0x8000)
  {
    v17 = *a2;
    v18 = a2[16];
    do
    {
      IPC::Decoder::decode<WebCore::PasteboardCustomData::Entry>(&v28, a1);
      v19 = v31;
      if (v31)
      {
        if (HIDWORD(v33) == v33)
        {
          WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PasteboardCustomData::Entry>(&v32, &v28);
        }

        else
        {
          WebCore::PasteboardCustomData::Entry::Entry();
          ++HIDWORD(v33);
        }
      }

      else
      {
        v18 = 0;
        v17 = 0;
      }

      if (v31 == 1)
      {
        mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::~variant(v30, v6);
        v20 = v29;
        v29 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v6);
        }

        v21 = v28;
        v28 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v6);
        }
      }

      if ((v19 & 1) == 0)
      {
        *a2 = v17;
        a2[16] = v18;
        goto LABEL_51;
      }

      --v11;
    }

    while (v11);
    *a2 = v17;
    a2[16] = v18;
    v22 = HIDWORD(v33);
    if (v33 <= HIDWORD(v33))
    {
      goto LABEL_50;
    }

    v23 = v32;
    if (HIDWORD(v33))
    {
      if (HIDWORD(v33) >> 27)
      {
        __break(0xC471u);
        return;
      }

      v24 = WTF::fastMalloc((32 * HIDWORD(v33)));
      LODWORD(v33) = v22;
      v32 = v24;
      if (v24 != v23)
      {
        WTF::VectorMover<false,WebCore::PasteboardCustomData::Entry>::move(v23, (v23 + 32 * v22), v24);
      }
    }

    if (v23)
    {
      if (v32 == v23)
      {
        v32 = 0;
        LODWORD(v33) = 0;
      }

      WTF::fastFree(v23, v6);
    }
  }

  else if (v11)
  {
    LODWORD(v33) = v11;
    v32 = WTF::fastMalloc((32 * v11));
    v12 = *a2;
    v13 = a2[16];
    do
    {
      IPC::Decoder::decode<WebCore::PasteboardCustomData::Entry>(&v28, a1);
      v14 = v31;
      if (v31)
      {
        if (HIDWORD(v33) == v33)
        {
          WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PasteboardCustomData::Entry>(&v32, &v28);
        }

        else
        {
          WebCore::PasteboardCustomData::Entry::Entry();
          ++HIDWORD(v33);
        }
      }

      else
      {
        v13 = 0;
        v12 = 0;
      }

      if (v31 != 1)
      {
        goto LABEL_21;
      }

      mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::~variant(v30, v6);
      v15 = v29;
      v29 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v6);
      }

      v16 = v28;
      v28 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v6);
        if ((v14 & 1) == 0)
        {
LABEL_25:
          *a2 = v12;
          a2[16] = v13;
          goto LABEL_51;
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

LABEL_50:
  *a2 = v32;
  v25 = v33;
  v32 = 0;
  v33 = 0;
  *(a2 + 1) = v25;
  a2[16] = 1;
LABEL_51:
  WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v6);
}

void sub_19D810CC0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  *v18 = v21;
  v18[16] = v20;
  if (a14 == 1)
  {
    mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::~variant(v19 + 16, a2);
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

  WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a16, a2);
  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::PasteboardCustomData::Entry>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v28);
  IPC::Decoder::decode<WTF::String>(a2, &v26);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v4 <= &v5[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10)
    {
      if (v4)
      {
        (*(*v10 + 16))(v10);
        v4 = *(a2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_12;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_12:
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11 && v4)
    {
      (*(*v11 + 16))(v11);
    }

    goto LABEL_13;
  }

  v6 = *v5;
  if (v6 < 2)
  {
    if (v6)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a2, &v20);
      if (v21 == 1)
      {
        v23 = v20;
        v24 = 1;
LABEL_9:
        v25 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      v7 = IPC::Decoder::decode<WTF::String>(a2, &v20);
      if (v21 == 1)
      {
        v23 = v20;
        v24 = 0;
        goto LABEL_9;
      }
    }
  }

LABEL_13:
  LOBYTE(v23) = 0;
  v25 = 0;
  v8 = *a2;
  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v7 = *(a2 + 3);
  if (v7)
  {
    goto LABEL_37;
  }

  while (1)
  {
LABEL_14:
    if (!*a2)
    {
      *a1 = 0;
      a1[32] = 0;
      goto LABEL_24;
    }

    if (v29 & 1) != 0 && (v27 & 1) != 0 && (v25)
    {
      break;
    }

    __break(1u);
LABEL_37:
    if (v9)
    {
      v7 = (*(*v7 + 16))(v7, v8);
    }
  }

  WebCore::PasteboardCustomData::Entry::Entry();
  WebCore::PasteboardCustomData::Entry::Entry();
  a1[32] = 1;
  mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::~variant(&v22, v12);
  v13 = v21;
  v21 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v8);
  }

LABEL_24:
  if (v25 == 1)
  {
    mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::~variant(&v23, v8);
  }

  if (v27 == 1)
  {
    v15 = v26;
    v26 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v8);
      }
    }
  }

  if (v29 == 1)
  {
    v16 = v28;
    v28 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v8);
      }
    }
  }

  if ((a1[32] & 1) == 0)
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

void sub_19D811054(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, WTF::StringImpl *a17, char a18)
{
  if (*(v18 + 32) == 1)
  {
    mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::~variant(v18 + 16, a2);
    v21 = *(v18 + 8);
    *(v18 + 8) = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }

    v22 = *v18;
    *v18 = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v20);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PasteboardCustomData::Entry>(unsigned int *a1, unint64_t a2)
{
  WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  result = WebCore::PasteboardCustomData::Entry::Entry();
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
      JUMPOUT(0x19D811324);
    }

    v3 = result;
    v4 = *result;
    v5 = (*result + 32 * *(result + 3));
    v6 = WTF::fastMalloc((32 * a2));
    *(v3 + 2) = v2;
    *v3 = v6;
    result = WTF::VectorMover<false,WebCore::PasteboardCustomData::Entry>::move(v4, v5, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::PasteboardCustomData::Entry>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      WebCore::PasteboardCustomData::Entry::Entry();
      mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::~variant((v5 + 2), v6);
      v8 = v5[1];
      v5[1] = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

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

uint64_t IPC::VectorArgumentCoder<false,WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 944 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::MediaTrackConstraintSetMap,void>::encode(a1, v6);
      v6 += 944;
      v7 -= 944;
    }

    while (v7);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MediaTrackConstraintSetMap>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(*a1 + 944 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 944 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x456C7A)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8115E4);
    }

    v3 = *a1;
    v4 = (*a1 + 944 * *(a1 + 12));
    v5 = 944 * a2;
    v6 = WTF::fastMalloc((944 * a2));
    *(a1 + 8) = v5 / 0x3B0;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::MediaTrackConstraintSetMap>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebCore::MediaTrackConstraintSetMap>::move(WebCore::MediaTrackConstraintSetMap *a1, WebCore::MediaTrackConstraintSetMap *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(a3, v5);
      WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v5, v6);
      a3 += 944;
      v5 = (v5 + 944);
    }

    while (v5 != a2);
  }
}

void WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *a1, unint64_t a2)
{
  if (a1[2] > a2)
  {
    if (a1[3] > a2)
    {
      WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, a2);
    }

    v4 = *a1;
    if (a2)
    {
      if (a2 >= 0x456C7A)
      {
        __break(0xC471u);
        return;
      }

      v5 = a1[3];
      v6 = (944 * a2);
      v7 = WTF::fastMalloc(v6);
      a1[2] = v6 / 0x3B0;
      *a1 = v7;
      if (v7 != v4)
      {
        WTF::VectorMover<false,WebCore::MediaTrackConstraintSetMap>::move(v4, (v4 + 944 * v5), v7);
      }
    }

    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        a1[2] = 0;
      }

      WTF::fastFree(v4, a2);
    }
  }
}

unsigned int *WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, unint64_t a2)
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
      result = (*result + 944 * a2);
      v5 = 944 * v2 - 944 * a2;
      do
      {
        WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(result, a2);
        result = (v6 + 944);
        v5 -= 944;
      }

      while (v5);
    }

    v4[3] = v3;
  }

  return result;
}

WebCore::Region *WTF::HashTable<WebCore::EventTrackingRegionsEventType,WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>>,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::HashMap<WebCore::EventTrackingRegionsEventType,WebCore::Region,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::HashTraits<WebCore::Region>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    v3 = 0;
    v4 = 0;
LABEL_3:
    v5 = 8;
    goto LABEL_4;
  }

  v3 = *(v2 - 4);
  v4 = *(v2 - 12);
  if (!v3)
  {
    goto LABEL_3;
  }

  v5 = v3 << (6 * v4 >= (2 * v3));
LABEL_4:
  v6 = v5;
  result = WTF::fastMalloc(((32 * v5) | 0x10));
  v9 = result;
  v10 = result + 16;
  if (v5)
  {
    result = (result + 24);
    do
    {
      *(result - 8) = -1;
      result = (WebCore::Region::Region(result) + 32);
      --v6;
    }

    while (v6);
  }

  *a1 = v10;
  *(v9 + 2) = v5 - 1;
  *(v9 + 3) = v5;
  *v9 = 0;
  *(v9 + 1) = v4;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v12 = (v2 + 32 * i);
      v13 = *v12;
      if (v13 != 254)
      {
        if (v13 == 255)
        {
          WebCore::Region::~Region((v12 + 8));
        }

        else
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

          v16 = 0;
          v17 = 9 * ((~(v13 << 15) + v13) ^ ((~(v13 << 15) + v13) >> 10));
          v18 = ((v17 ^ (v17 >> 6)) + ~((v17 ^ (v17 >> 6)) << 11)) ^ (((v17 ^ (v17 >> 6)) + ~((v17 ^ (v17 >> 6)) << 11)) >> 16);
          do
          {
            v19 = v18 & v15;
            v18 = ++v16 + v19;
          }

          while (*(v14 + 32 * v19) != 255);
          v20 = (v14 + 32 * v19);
          WebCore::Region::~Region((v20 + 8));
          *v20 = *v12;
          WebCore::Region::Region();
          WebCore::Region::~Region((v12 + 8));
        }
      }
    }
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::fastFree((v2 - 16), v8);
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 96 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::TextManipulationToken,void>::encode(a1, v6);
      v6 += 12;
      v7 -= 96;
    }

    while (v7);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::TextManipulationToken>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(a2);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_96;
  }

  while (1)
  {
    IPC::Decoder::decode<WTF::String>(a2, &v75);
    v7 = a2[1];
    v8 = a2[2];
    v9 = *a2;
    if (v7 <= &v8[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v55 = a2[3];
      if (v55)
      {
        if (v7)
        {
          (*(*v55 + 16))(v55);
          v7 = a2[1];
        }
      }

      else
      {
        v7 = 0;
      }

LABEL_123:
      *a2 = 0;
      a2[1] = 0;
      v56 = a2[3];
      if (v56)
      {
        if (v7)
        {
          (*(*v56 + 16))(v56);
          v9 = *a2;
          v7 = a2[1];
          goto LABEL_126;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = 0;
LABEL_126:
      *a2 = 0;
      a2[1] = 0;
      result = a2[3];
      if (result && v7)
      {
        result = (*(*result + 16))(result, v9);
      }

LABEL_111:
      LOBYTE(v70) = 0;
      v74 = 0;
      goto LABEL_52;
    }

    a2[2] = (v8 + 1);
    if (!v8)
    {
      goto LABEL_123;
    }

    v10 = *v8;
    if (v10 >= 2)
    {
      goto LABEL_126;
    }

    if (!v10)
    {
      LOBYTE(v62) = 0;
      v67 = 0;
      result = std::__optional_move_base<WebCore::TextManipulationTokenInfo,false>::__optional_move_base[abi:sn200100](&v70, &v62);
      v74 = 1;
      if (v67 != 1)
      {
        goto LABEL_52;
      }

LABEL_43:
      v28 = v64;
      v64 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v27);
      }

      v29 = v63;
      v63 = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v27);
      }

      result = v62;
      v62 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v27);
      }

      goto LABEL_52;
    }

    IPC::Decoder::decode<WTF::String>(a2, &v89);
    IPC::Decoder::decode<WTF::String>(a2, &v87);
    IPC::Decoder::decode<WTF::URL>(a2, &v83);
    v11 = a2[1];
    v12 = a2[2];
    v13 = *a2;
    if (v11 <= &v12[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v57 = a2[3];
      if (v57)
      {
        if (v11)
        {
          (*(*v57 + 16))(v57);
          v11 = a2[1];
        }
      }

      else
      {
        v11 = 0;
      }

LABEL_131:
      *a2 = 0;
      a2[1] = 0;
      v58 = a2[3];
      if (v58)
      {
        if (v11)
        {
          (*(*v58 + 16))(v58);
          v61 = 0;
          v13 = *a2;
          v11 = a2[1];
LABEL_135:
          *a2 = 0;
          a2[1] = 0;
          v59 = a2[3];
          if (!v59 || !v11)
          {
            goto LABEL_136;
          }

          (*(*v59 + 16))(v59, v13);
          v15 = 0;
          v13 = *a2;
          v14 = v61;
          goto LABEL_10;
        }
      }

      else
      {
        v11 = 0;
      }

      v13 = 0;
      v61 = 0;
      goto LABEL_135;
    }

    a2[2] = (v12 + 1);
    if (!v12)
    {
      goto LABEL_131;
    }

    v14 = *v12;
    if (v14 >= 2)
    {
      v61 = *v12;
      goto LABEL_135;
    }

    v15 = 1;
LABEL_10:
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (!v13)
    {
LABEL_136:
      LOBYTE(v62) = 0;
      v67 = 0;
      goto LABEL_27;
    }

    if ((v90 & 1) == 0)
    {
      goto LABEL_95;
    }

    v17 = v89;
    v89 = 0;
    v77 = v17;
    if ((v88 & 1) == 0)
    {
      goto LABEL_95;
    }

    v18 = v87;
    v87 = 0;
    v78 = v18;
    if ((v86 & 1) == 0)
    {
      goto LABEL_95;
    }

    v19 = v83;
    v83 = 0;
    v79 = v19;
    v80 = v84;
    v81 = v85;
    LODWORD(v84) = v84 & 0xFFFFFFFE;
    if ((v15 & 1) == 0)
    {
      goto LABEL_95;
    }

    v82 = v16;
    std::optional<WebCore::TextManipulationTokenInfo>::optional[abi:sn200100]<WebCore::TextManipulationTokenInfo,0>(&v62, &v77);
    v20 = v79;
    v79 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v13);
    }

    v21 = v78;
    v78 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v13);
    }

    v22 = v77;
    v77 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v13);
    }

LABEL_27:
    if (v86 == 1)
    {
      v23 = v83;
      v83 = 0;
      if (v23)
      {
        if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v13);
        }
      }
    }

    if (v88 == 1)
    {
      v24 = v87;
      v87 = 0;
      if (v24)
      {
        if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v13);
        }
      }
    }

    if (v90 == 1)
    {
      v25 = v89;
      v89 = 0;
      if (v25)
      {
        if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v13);
        }
      }
    }

    if ((v67 & 1) == 0)
    {
      v52 = *a2;
      v53 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      result = a2[3];
      if (!result)
      {
        goto LABEL_111;
      }

      if (!v53)
      {
        goto LABEL_111;
      }

      result = (*(*result + 16))(result, v52);
      if ((v67 & 1) == 0)
      {
        goto LABEL_111;
      }
    }

    result = std::optional<WebCore::TextManipulationTokenInfo>::optional[abi:sn200100]<WebCore::TextManipulationTokenInfo,0>(&v70, &v62);
    v74 = 1;
    if (v67)
    {
      goto LABEL_43;
    }

LABEL_52:
    v30 = a2[1];
    if ((v74 & 1) == 0)
    {
      v46 = *a2;
      *a2 = 0;
      a2[1] = 0;
      v47 = a2[3];
      if (!v47 || !v30)
      {
        v32 = 0;
        v48 = 0;
        goto LABEL_103;
      }

      result = (*(*v47 + 16))(v47, v46);
      v30 = a2[1];
    }

    v31 = *a2;
    v32 = a2[2];
    if (v30 <= &v32[-*a2])
    {
      v32 = 0;
      v60 = a2[3];
      *a2 = 0;
      a2[1] = 0;
      v48 = 0;
      if (v60 && v30)
      {
        (*(*v60 + 16))(v60);
        v48 = *a2;
        v32 = a2[1];
      }

      goto LABEL_103;
    }

    a2[2] = (v32 + 1);
    if (!v32)
    {
      v32 = v30;
      v48 = v31;
LABEL_103:
      *a2 = 0;
      a2[1] = 0;
      v49 = a2[3];
      if (v49)
      {
        if (v32)
        {
          (*(*v49 + 16))(v49, v48, v32);
          LODWORD(v32) = 0;
          v31 = *a2;
          v30 = a2[1];
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }
      }

      else
      {
        v30 = 0;
        v31 = 0;
        LODWORD(v32) = 0;
      }

LABEL_105:
      *a2 = 0;
      a2[1] = 0;
      result = a2[3];
      if (!result || !v30)
      {
        goto LABEL_106;
      }

      v54 = v32;
      result = (*(*result + 16))(result, v31);
      v33 = 0;
      v31 = *a2;
      LODWORD(v32) = v54;
      goto LABEL_57;
    }

    LODWORD(v32) = *v32;
    if (v32 >= 2)
    {
      goto LABEL_105;
    }

    v33 = 1;
LABEL_57:
    if (v32)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    if (!v31)
    {
LABEL_106:
      *a1 = 0;
      *(a1 + 96) = 0;
      goto LABEL_78;
    }

    if (v6)
    {
      v62 = v4;
      if (v76)
      {
        v35 = v75;
        v75 = 0;
        v63 = v35;
        if (v74)
        {
          v4 = &v62;
          std::__optional_move_base<WebCore::TextManipulationTokenInfo,false>::__optional_move_base[abi:sn200100](&v64, &v70);
          if (v33)
          {
            break;
          }
        }
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    v42 = *a2;
    v43 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v44 = a2[3];
    if (v44)
    {
      v45 = v43 == 0;
    }

    else
    {
      v45 = 1;
    }

    if (!v45)
    {
      (*(*v44 + 16))(v44, v42);
    }
  }

  v69 = v34;
  v36 = v63;
  v63 = 0;
  *a1 = v62;
  *(a1 + 8) = v36;
  std::__optional_move_base<WebCore::TextManipulationTokenInfo,false>::__optional_move_base[abi:sn200100](a1 + 16, &v64);
  *(a1 + 88) = v69;
  *(a1 + 96) = 1;
  if (v68 == 1)
  {
    v37 = v66;
    v66 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v31);
    }

    v38 = v65;
    v65 = 0;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v31);
    }

    v39 = v64;
    v64 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v31);
    }
  }

  result = v63;
  v63 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v31);
  }

LABEL_78:
  if (v74 == 1 && v73 == 1)
  {
    v40 = v72;
    v72 = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v31);
    }

    v41 = v71;
    v71 = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v31);
    }

    result = v70;
    v70 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v31);
    }
  }

  if (v76 == 1)
  {
    result = v75;
    v75 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v31);
      }
    }
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v50 = *a2;
    v51 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v51)
      {
        return (*(*result + 16))(result, v50);
      }
    }
  }

  return result;
}

void sub_19D812300(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, WTF::StringImpl *a23, WTF::StringImpl *a24, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35, WTF::StringImpl *a36, char a37, WTF::StringImpl *a38, WTF::StringImpl *a39, WTF::StringImpl *a40)
{
  if (*(v40 - 104) == 1)
  {
    v42 = *(v40 - 144);
    *(v40 - 144) = 0;
    if (v42)
    {
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, a2);
      }
    }
  }

  if (*(v40 - 88) == 1)
  {
    v43 = *(v40 - 96);
    *(v40 - 96) = 0;
    if (v43)
    {
      if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, a2);
      }
    }
  }

  if (*(v40 - 72) == 1)
  {
    v44 = *(v40 - 80);
    *(v40 - 80) = 0;
    if (v44)
    {
      if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, a2);
      }
    }
  }

  if (a37 == 1 && a36 && atomic_fetch_add_explicit(a36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a36, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationToken>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 96 * *(a1 + 12);
  *v4 = *v3;
  v5 = *(v3 + 8);
  *(v3 + 8) = 0;
  *(v4 + 8) = v5;
  std::__optional_move_base<WebCore::TextManipulationTokenInfo,false>::__optional_move_base[abi:sn200100](v4 + 16, (v3 + 16));
  *(v4 + 88) = *(v3 + 88);
  ++*(a1 + 12);
  return 1;
}

void sub_19D8126E0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 96 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x2AAAAAB)
  {
    v2 = result;
    v3 = *result;
    v4 = (*result + 96 * *(result + 12));
    v5 = 96 * a2;
    v6 = WTF::fastMalloc((96 * a2));
    *(v2 + 8) = v5 / 0x60;
    *v2 = v6;
    WTF::VectorMover<false,WebCore::TextManipulationToken>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::TextManipulationToken>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = a3 + 16;
    v5 = result + 16;
    do
    {
      v6 = v5 - 16;
      *(v4 - 16) = *(v5 - 2);
      v7 = *(v5 - 1);
      *(v5 - 1) = 0;
      *(v4 - 8) = v7;
      std::__optional_move_base<WebCore::TextManipulationTokenInfo,false>::__optional_move_base[abi:sn200100](v4, v5);
      *(v4 + 72) = v5[72];
      if (v5[64] == 1)
      {
        v9 = *(v5 + 2);
        *(v5 + 2) = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }

        v10 = *(v5 + 1);
        *(v5 + 1) = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v8);
        }

        v11 = *v5;
        *v5 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v8);
        }
      }

      result = *(v5 - 1);
      *(v5 - 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }
      }

      v4 += 96;
      v5 += 96;
    }

    while (v6 + 96 != a2);
  }

  return result;
}

void sub_19D812980(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 8);
  *(v2 - 8) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::TextManipulationTokenInfo>,void>::encode<IPC::Encoder,std::optional<WebCore::TextManipulationTokenInfo> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 64))
    {
      return IPC::ArgumentCoder<WebCore::TextManipulationTokenInfo,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WTF::OptionSet<WebCore::DragOperation>,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::DragOperation>,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  v6 = v4 < 0x40;
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

uint64_t IPC::ArgumentCoder<std::optional<WebCore::KeyboardScroll>,void>::encode<IPC::Encoder,std::optional<WebCore::KeyboardScroll> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 28))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 28))
    {
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
      return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 25));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
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
      result = IPC::ArgumentCoder<WebCore::TransformOperation,void>::encode(a1, v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>>(uint64_t a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<WebCore::TransformOperation,void>::decode(a1, a2);
  if ((*(a1 + 8) & 1) == 0)
  {
    v5 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    result = *(a2 + 24);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

unsigned int *WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>>::destruct((*result + 8 * a2), (*result + 8 * v4));
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

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&>(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 28);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&>(a1, a2, v5);
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 28))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, a2);

    return IPC::Encoder::operator<<<WebCore::FloatPoint const&>(v4, (a2 + 8));
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (a3 == 2)
  {
    if (*(a2 + 28) == 2)
    {
      v6 = 8;
      v7 = 4;
      v5 = a2;
      goto LABEL_7;
    }

LABEL_11:
    mpark::throw_bad_variant_access(result);
  }

  if (a3 != 1)
  {
    return result;
  }

  if (*(a2 + 28) != 1)
  {
    goto LABEL_11;
  }

  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(result, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v4, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v4, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v4, *(a2 + 12));
  v5 = (a2 + 16);
  v6 = 24;
  v7 = 20;
LABEL_7:
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v4, *v5);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v4, *(a2 + v7));
  v8 = *(a2 + v6);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v4, v8);
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&>(mpark *a1, uint64_t a2)
{
  v2 = *(a2 + 28);
  if (!*(a1 + 1))
  {
    goto LABEL_6;
  }

  **a1 = v2;
  v3 = *(a1 + 1);
  if (!v3)
  {
    __break(1u);
LABEL_6:
    *a1 = 0;
    *(a1 + 1) = 0;
    return IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&>(a1, a2, v2);
  }

  ++*a1;
  *(a1 + 1) = v3 - 1;
  return IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&>(a1, a2, v2);
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&>(mpark *this, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&,0ul>(this, a2, a3);
  }

  else
  {
    if (*(a2 + 28))
    {
      mpark::throw_bad_variant_access(this);
    }

    IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(this, a2);

    return IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(this, (a2 + 8));
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 28) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::Gradient::RadialData,void>::encode(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&,0ul,1ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData> const&,0ul,1ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 28) != 2)
    {
      mpark::throw_bad_variant_access(result);
    }

    v4 = result;
    result = IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(result, a2);
    v5 = -*v4;
    v6 = v5 & 3 | 4;
    if (*(v4 + 1) < v6)
    {
      goto LABEL_8;
    }

    *(*v4 + (v5 & 3)) = *(a2 + 8);
    v7 = *(v4 + 1);
    v8 = v7 >= v6;
    v9 = v7 - v6;
    if (!v8)
    {
      __break(1u);
LABEL_8:
      *v4 = 0;
      *(v4 + 1) = 0;
      return result;
    }

    *v4 += v6;
    *(v4 + 1) = v9;
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 2);
  if (*(result + 1) <= &v2[-*result])
  {
    v4 = result;
    v5 = a2;
    IPC::Decoder::markInvalid(result);
    result = v4;
    a2 = v5;
    goto LABEL_8;
  }

  *(result + 2) = v2 + 1;
  if (!v2)
  {
LABEL_8:
    v6 = a2;
    result = IPC::Decoder::markInvalid(result);
    a2 = v6;
    goto LABEL_9;
  }

  v3 = *v2;
  if (v3 >= 3)
  {
LABEL_9:
    *a2 = 0;
    a2[32] = 0;
    return result;
  }

  return IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::decode<IPC::Decoder>(result, v3, a2);
}

unint64_t IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::decode<IPC::Decoder,0ul>(a1, a2, a3);
  }

  else
  {
    result = IPC::ArgumentCoder<WebCore::Gradient::LinearData,void>::decode(a1, &v8);
    if (v9)
    {
      *a3 = v8;
      v6 = (a3 + 28);
      v7 = 1;
    }

    else
    {
      result = IPC::Decoder::markInvalid(a1);
      v7 = 0;
      v6 = a3;
    }

    *v6 = 0;
    *(a3 + 32) = v7;
  }

  return result;
}

unint64_t IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::decode<IPC::Decoder,0ul>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    result = IPC::Decoder::decode<WebCore::Gradient::RadialData>(v6, a1);
    if (v7)
    {
      *a3 = *v6;
      *(a3 + 12) = *&v6[12];
      v5 = 1;
      *(a3 + 28) = 1;
    }

    else
    {
      v5 = 0;
      *a3 = 0;
    }

    *(a3 + 32) = v5;
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::decode<IPC::Decoder,0ul,1ul>(a3, a1, a2);
  }

  return result;
}

unint64_t IPC::Decoder::decode<WebCore::Gradient::RadialData>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::Gradient::RadialData,void>::decode(a1, a2);
  if ((*(a1 + 28) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<mpark::variant<WebCore::Gradient::LinearData,WebCore::Gradient::RadialData,WebCore::Gradient::ConicData>,void>::decode<IPC::Decoder,0ul,1ul>(uint64_t result, IPC::Decoder *a2, uint64_t a3)
{
  v3 = result;
  if (a3 != 2)
  {
LABEL_21:
    v15 = 0;
    *v3 = 0;
    goto LABEL_22;
  }

  result = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v6 = v5;
  v7 = *(a2 + 1);
  v8 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *a2;
  v10 = v8 - *a2;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (v11 && v12 > 3)
  {
    *(a2 + 2) = v8 + 1;
    if (!v8)
    {
      v18 = result;
      v19 = v6;
      goto LABEL_17;
    }

    v14 = *v8 | 0x100000000;
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_20:
    v17 = *(a2 + 1);
    result = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (result && v17)
    {
      result = (*(*result + 16))(result);
    }

    goto LABEL_21;
  }

  while (1)
  {
    v18 = result;
    v19 = v6;
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      if (v7)
      {
        (*(*v16 + 16))(v16);
        v9 = *a2;
        v7 = *(a2 + 1);
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
LABEL_17:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result || !v7)
    {
      goto LABEL_21;
    }

    (*(*result + 16))(result, v9);
    v14 = 0;
    result = v18;
    v6 = v19;
    if (!*a2)
    {
      goto LABEL_20;
    }

LABEL_9:
    if ((v6 & 1) != 0 && (v14 & 0x100000000) != 0)
    {
      break;
    }

    __break(1u);
  }

  *v3 = result;
  *(v3 + 8) = v14;
  *(v3 + 28) = 2;
  v15 = 1;
LABEL_22:
  *(v3 + 32) = v15;
  return result;
}

uint64_t IPC::ArgumentCoder<WTF::RefPtr<WebCore::ThreadSafeDataBufferImpl,WTF::RawPtrTraits<WebCore::ThreadSafeDataBufferImpl>,WTF::DefaultRefDerefTraits<WebCore::ThreadSafeDataBufferImpl>>,void>::encode<IPC::Encoder,WebCore::ThreadSafeDataBufferImpl>(IPC::Encoder *a1, uint64_t a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v3, *(*a2 + 8), *(*a2 + 20));
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= v4 - v5)
  {
    goto LABEL_36;
  }

  a2[2] = v4 + 1;
  if (!v4)
  {
    goto LABEL_39;
  }

  v7 = *v4;
  if (v7 <= 1)
  {
    v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = ((v4 & 0xFFFFFFFFFFFFFFFCLL) + 4);
    v15 = v6 >= v13 - v5 && v6 - (v13 - v5) > 3;
    if (v7)
    {
      if (v15)
      {
        a2[2] = v12 + 8;
        if (v13)
        {
          v16 = *v13 | 0x100000000;
          if (v5)
          {
LABEL_21:
            if ((v16 & 0x100000000) == 0)
            {
              goto LABEL_35;
            }

            v17 = v16 & 0x1FFFFFF00;
            goto LABEL_28;
          }

LABEL_52:
          v6 = a2[1];
          v20 = a2[3];
          *a2 = 0;
          a2[1] = 0;
          if (v20)
          {
            goto LABEL_53;
          }

          goto LABEL_4;
        }

        v21 = v6;
        v22 = v5;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        *a2 = 0;
        a2[1] = 0;
        v23 = a2[3];
        if (v23)
        {
          (*(*v23 + 16))(v23);
          v22 = *a2;
          v21 = a2[1];
        }
      }

      *a2 = 0;
      a2[1] = 0;
      v24 = a2[3];
      if (!v24 || !v21)
      {
        goto LABEL_4;
      }

      (*(*v24 + 16))(v24, v22, v21);
      v16 = 0;
      v5 = *a2;
      if (*a2)
      {
        goto LABEL_21;
      }

      goto LABEL_52;
    }

    if (v15)
    {
      a2[2] = v12 + 8;
      if (v13)
      {
        v16 = *v13 | 0x100000000;
        if (!v5)
        {
          goto LABEL_52;
        }

LABEL_26:
        if ((v16 & 0x100000000) == 0)
        {
          goto LABEL_35;
        }

        v17 = v16 & 0xFFFFFF00;
LABEL_28:
        if (HIDWORD(v17))
        {
          v18 = v17 & 0xFFFFFF00 | v16 | 0x1000000000000;
        }

        else
        {
          v18 = v17 & 0xFFFFFF00 | v16;
        }

        v29 = a1;
        result = _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(HIWORD(v18), v18, &v29);
        *(a1 + 8) = 1;
        return result;
      }

      v25 = v6;
      v26 = v5;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      *a2 = 0;
      a2[1] = 0;
      v27 = a2[3];
      if (v27)
      {
        (*(*v27 + 16))(v27);
        v26 = *a2;
        v25 = a2[1];
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v28 = a2[3];
    if (!v28 || !v25)
    {
      goto LABEL_4;
    }

    (*(*v28 + 16))(v28, v26, v25);
    v16 = 0;
    v5 = *a2;
    if (!*a2)
    {
      goto LABEL_52;
    }

    goto LABEL_26;
  }

  while (1)
  {
LABEL_4:
    v8 = *a2;
    v9 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (!result)
    {
      v9 = 0;
      goto LABEL_6;
    }

    if (!v9)
    {
      goto LABEL_6;
    }

    (*(*result + 16))(result, v8);
    if (!*a2)
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    *a2 = 0;
    a2[1] = 0;
    v19 = a2[3];
    if (v19)
    {
      if (v6)
      {
        (*(*v19 + 16))(v19);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_39;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_39:
    *a2 = 0;
    a2[1] = 0;
    v20 = a2[3];
    if (v20)
    {
LABEL_53:
      if (v6)
      {
        (*(*v20 + 16))(v20, v5);
      }
    }
  }

  v9 = a2[1];
  result = a2[3];
LABEL_6:
  *a1 = 0;
  *(a1 + 8) = 0;
  *a2 = 0;
  a2[1] = 0;
  if (result && v9)
  {
    v11 = *(*result + 16);

    return v11();
  }

  return result;
}

unint64_t _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEE14appendSlowCaseILNS_13FailureActionE0ES8_EEbOT0_(uint64_t a1, unint64_t a2)
{
  result = _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEE14expandCapacityILNS_13FailureActionE0EEEPS8_mSE_(a1, *(a1 + 12) + 1, a2);
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = *a1 + 16 * *(a1 + 12);
  do
  {
    v8 = v5;
    v9 = *(v4 + 8 * v6);
    if (v9 == -1)
    {
      *(v7 + 8 * v6) = -1;
    }

    else
    {
      v10 = (v7 + 8 * v6);
      result = _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v9), v9, &v10);
    }

    *(v4 + 8 * v6) = -1;
    v5 = 1;
    v6 = 1;
  }

  while ((v8 & 1) == 0);
  ++*(a1 + 12);
  return result;
}

void sub_19D8138C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if ((v12 & 1) == 0)
  {
    v14 = 8 * v11;
    v15 = v10 - 8;
    do
    {
      v16 = *(v15 + v14);
      if (v16 != -1 && (v16 & 0xFE000000000000) != 0)
      {
        a10 = v16 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }

      v14 -= 8;
    }

    while (v14);
  }

  _Unwind_Resume(exception_object);
}

unint64_t _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEE14expandCapacityILNS_13FailureActionE0EEEPS8_mSE_(uint64_t a1, unint64_t a2, unint64_t a3)
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

    _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEE15reserveCapacityILNS_13FailureActionE0EEEbm(a1, v12);
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

    _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEE15reserveCapacityILNS_13FailureActionE0EEEbm(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEE15reserveCapacityILNS_13FailureActionE0EEEbm(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = *a1;
      v5 = *a1 + 16 * *(a1 + 12);
      v6 = WTF::fastMalloc((16 * a2));
      *(a1 + 8) = v2;
      *a1 = v6;
      _ZN3WTF11VectorMoverILb0EN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEE4moveEPS8_SA_SA_(v4, v5, v6);
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
  }
}

void _ZN3WTF11VectorMoverILb0EN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEE4moveEPS8_SA_SA_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = v6;
        v9 = *(v5 + 8 * v7);
        if (v9 == -1)
        {
          *(a3 + 8 * v7) = -1;
        }

        else
        {
          v14 = (a3 + 8 * v7);
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v9), v9, &v14);
        }

        *(v5 + 8 * v7) = -1;
        v6 = 1;
        v7 = 1;
      }

      while ((v8 & 1) == 0);
      v10 = v5 + 16;
      for (i = 8; i != -8; i -= 8)
      {
        v12 = *(v5 + i);
        if (v12 != -1 && (v12 & 0xFE000000000000) != 0)
        {
          v15 = v12 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v15);
        }
      }

      a3 += 16;
      v5 += 16;
    }

    while (v10 != a2);
  }
}

void sub_19D813B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if ((v12 & 1) == 0)
  {
    v14 = 8 * v11;
    do
    {
      v15 = *(v10 + v14 - 8);
      if (v15 != -1 && (v15 & 0xFE000000000000) != 0)
      {
        a10 = v15 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }

      v14 -= 8;
    }

    while (v14);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>>(_BYTE *a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v54 = a2[3];
    if (v54)
    {
      if (v6)
      {
        (*(*v54 + 16))(v54);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_209;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_209:
    *a2 = 0;
    a2[1] = 0;
    v55 = a2[3];
    if (v55 && v6)
    {
      (*(*v55 + 16))(v55, v5);
    }

    goto LABEL_4;
  }

  v7 = v4 + 1;
  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_209;
  }

  v8 = *v4;
  if (v8 >= 8)
  {
LABEL_4:
    *a1 = 0;
    a1[88] = 0;
    goto LABEL_23;
  }

  if (!*v4)
  {
    IPC::Decoder::decode<mpark::variant<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>>(&v69, a2);
    if (!*a2)
    {
LABEL_158:
      LOBYTE(v64[0]) = 0;
      v66 = 0;
      goto LABEL_17;
    }

    if (v72)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(&v67, &v69);
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(v64, &v67);
      v66 = 1;
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(&v67);
LABEL_17:
      if (v72 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(&v69);
      }

      if ((v66 & 1) == 0)
      {
        v24 = *a2;
        v25 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        v26 = a2[3];
        if (!v26)
        {
          goto LABEL_4;
        }

        if (!v25)
        {
          goto LABEL_4;
        }

        (*(*v26 + 16))(v26, v24);
        if ((v66 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(a1, v64);
      a1[80] = 0;
      goto LABEL_21;
    }

    goto LABEL_157;
  }

  if (v8 != 1)
  {
    if (v8 == 2)
    {
      if (v6 <= &v7[-v5])
      {
        v56 = 0;
        v57 = 0;
        *a2 = 0;
        a2[1] = 0;
        v58 = a2[3];
        if (v58)
        {
          (*(*v58 + 16))(v58);
          v57 = *a2;
          v56 = a2[1];
        }
      }

      else
      {
        a2[2] = (v4 + 2);
        if (v4 != -1)
        {
          if (*v7 >= 2u)
          {
            goto LABEL_29;
          }

          if (*v7)
          {
            _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v67, a2);
            v15 = *a2;
            if (*a2)
            {
              if ((v68 & 1) == 0)
              {
                goto LABEL_157;
              }

              if (v67 == -1 || (v73 = &v78, _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v67), v67, &v73), v67 = -1, v78 == -1))
              {
                v76 = -1;
              }

              else
              {
                v73 = &v76;
                _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v78), v78, &v73);
              }

              v77 = 1;
            }

            else
            {
              LOBYTE(v76) = 0;
              v77 = 0;
            }

            if (v68 == 1 && v67 != -1 && (v67 & 0xFE000000000000) != 0)
            {
              v73 = v67 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v73);
              if (v77)
              {
                goto LABEL_60;
              }
            }

            else if (v15)
            {
              goto LABEL_60;
            }

            v36 = *a2;
            v37 = a2[1];
            *a2 = 0;
            a2[1] = 0;
            v38 = a2[3];
            if (v38)
            {
              if (v37)
              {
                (*(*v38 + 16))(v38, v36);
                if (v77)
                {
LABEL_60:
                  if (v76 == -1)
                  {
                    v69 = -1;
                  }

                  else
                  {
                    v67 = &v69;
                    _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v76), v76, &v67);
                  }

                  v70 = 1;
LABEL_109:
                  v71 = 1;
LABEL_110:
                  if (!*a2)
                  {
                    LOBYTE(v64[0]) = 0;
                    v65 = 0;
                    goto LABEL_113;
                  }

                  if (v71)
                  {
                    mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::move_constructor(&v67, &v69);
                    mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::move_constructor(v64, &v67);
                    v65 = 1;
                    mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::~move_constructor(&v67);
LABEL_113:
                    if (v71 == 1)
                    {
                      mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::~move_constructor(&v69);
                    }

                    if ((v65 & 1) == 0)
                    {
                      v30 = *a2;
                      v31 = a2[1];
                      *a2 = 0;
                      a2[1] = 0;
                      v32 = a2[3];
                      if (!v32)
                      {
                        goto LABEL_4;
                      }

                      if (!v31)
                      {
                        goto LABEL_4;
                      }

                      (*(*v32 + 16))(v32, v30);
                      if ((v65 & 1) == 0)
                      {
                        goto LABEL_4;
                      }
                    }

                    mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::move_constructor(a1, v64);
                    a1[80] = 2;
                    a1[88] = 1;
                    if ((v65 & 1) == 0)
                    {
                      goto LABEL_23;
                    }

LABEL_117:
                    mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::~move_constructor(v64);
                    goto LABEL_23;
                  }

LABEL_157:
                  __break(1u);
                  goto LABEL_158;
                }
              }
            }

LABEL_29:
            LOBYTE(v69) = 0;
            v71 = 0;
            v9 = *a2;
            v10 = a2[1];
            *a2 = 0;
            a2[1] = 0;
            v11 = a2[3];
            if (v11 && v10)
            {
              (*(*v11 + 16))(v11, v9);
            }

            goto LABEL_110;
          }

          _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v67, a2);
          v17 = *a2;
          if (*a2)
          {
            if ((v68 & 1) == 0)
            {
              goto LABEL_157;
            }

            if (v67 == -1 || (v79 = &v75, _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v67), v67, &v79), v67 = -1, v75 == -1))
            {
              v76 = -1;
            }

            else
            {
              v79 = &v76;
              _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v75), v75, &v79);
            }

            v77 = 1;
          }

          else
          {
            LOBYTE(v76) = 0;
            v77 = 0;
          }

          if (v68 == 1 && v67 != -1 && (v67 & 0xFE000000000000) != 0)
          {
            v79 = (v67 & 0xFF00FFFFFFFFFFFFLL);
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v79);
            if (v77)
            {
              goto LABEL_77;
            }
          }

          else if (v17)
          {
            goto LABEL_77;
          }

          v39 = *a2;
          v40 = a2[1];
          *a2 = 0;
          a2[1] = 0;
          v41 = a2[3];
          if (v41 && v40)
          {
            (*(*v41 + 16))(v41, v39);
          }

LABEL_77:
          v18 = *a2;
          if (*a2)
          {
            if ((v77 & 1) == 0)
            {
              goto LABEL_157;
            }

            if (v76 == -1 || (v67 = &v78, _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v76), v76, &v67), v76 = -1, v78 == -1))
            {
              v73 = -1;
            }

            else
            {
              v67 = &v73;
              _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v78), v78, &v67);
            }

            v74 = 1;
          }

          else
          {
            LOBYTE(v73) = 0;
            v74 = 0;
          }

          if (v77 == 1 && v76 != -1 && (v76 & 0xFE000000000000) != 0)
          {
            v67 = v76 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v67);
            if (v74)
            {
              goto LABEL_90;
            }
          }

          else if (v18)
          {
            goto LABEL_90;
          }

          v42 = *a2;
          v43 = a2[1];
          *a2 = 0;
          a2[1] = 0;
          v44 = a2[3];
          if (!v44)
          {
            goto LABEL_29;
          }

          if (!v43)
          {
            goto LABEL_29;
          }

          (*(*v44 + 16))(v44, v42);
          if ((v74 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_90:
          if (v73 == -1)
          {
            v69 = -1;
          }

          else
          {
            v67 = &v69;
            _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v73), v73, &v67);
          }

          v70 = 0;
          goto LABEL_109;
        }

        v56 = v6;
        v57 = v5;
      }

      *a2 = 0;
      a2[1] = 0;
      v59 = a2[3];
      if (v59 && v56)
      {
        (*(*v59 + 16))(v59, v57, v56);
      }

      goto LABEL_29;
    }

    if (v8 != 3)
    {
      IPC::ArgumentCoder<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,void>::decode<IPC::Decoder,0ul,1ul,2ul,3ul>(a1, a2, *v4);
      goto LABEL_23;
    }

    if (v6 <= &v7[-v5])
    {
      v60 = 0;
      v61 = 0;
      *a2 = 0;
      a2[1] = 0;
      v62 = a2[3];
      if (v62)
      {
        (*(*v62 + 16))(v62);
        v61 = *a2;
        v60 = a2[1];
      }
    }

    else
    {
      a2[2] = (v4 + 2);
      if (v4 != -1)
      {
        if (*v7 >= 2u)
        {
          goto LABEL_36;
        }

        if (*v7)
        {
          _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v67, a2);
          v16 = *a2;
          if (*a2)
          {
            if ((v68 & 1) == 0)
            {
              goto LABEL_157;
            }

            if (v67 == -1 || (v73 = &v78, _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v67), v67, &v73), v67 = -1, v78 == -1))
            {
              v76 = -1;
            }

            else
            {
              v73 = &v76;
              _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v78), v78, &v73);
            }

            v77 = 1;
          }

          else
          {
            LOBYTE(v76) = 0;
            v77 = 0;
          }

          if (v68 == 1 && v67 != -1 && (v67 & 0xFE000000000000) != 0)
          {
            v73 = v67 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v73);
            if (v77)
            {
              goto LABEL_100;
            }
          }

          else if (v16)
          {
            goto LABEL_100;
          }

          v45 = *a2;
          v46 = a2[1];
          *a2 = 0;
          a2[1] = 0;
          v47 = a2[3];
          if (v47)
          {
            if (v46)
            {
              (*(*v47 + 16))(v47, v45);
              if (v77)
              {
LABEL_100:
                if (v76 == -1)
                {
                  v69 = -1;
                }

                else
                {
                  v67 = &v69;
                  _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v76), v76, &v67);
                }

                v70 = 1;
LABEL_145:
                v71 = 1;
                goto LABEL_146;
              }
            }
          }

LABEL_36:
          LOBYTE(v69) = 0;
          v71 = 0;
          v12 = *a2;
          v13 = a2[1];
          *a2 = 0;
          a2[1] = 0;
          v14 = a2[3];
          if (v14 && v13)
          {
            (*(*v14 + 16))(v14, v12);
          }

LABEL_146:
          if (*a2)
          {
            if ((v71 & 1) == 0)
            {
              goto LABEL_157;
            }

            mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::VLineCommand::To,WebCore::Style::VLineCommand::By>,(mpark::detail::Trait)1>::move_constructor(&v67, &v69);
            mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::VLineCommand::To,WebCore::Style::VLineCommand::By>,(mpark::detail::Trait)1>::move_constructor(v64, &v67);
            v65 = 1;
            mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::~move_constructor(&v67);
          }

          else
          {
            LOBYTE(v64[0]) = 0;
            v65 = 0;
          }

          if (v71 == 1)
          {
            mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::~move_constructor(&v69);
          }

          if ((v65 & 1) == 0)
          {
            v33 = *a2;
            v34 = a2[1];
            *a2 = 0;
            a2[1] = 0;
            v35 = a2[3];
            if (!v35)
            {
              goto LABEL_4;
            }

            if (!v34)
            {
              goto LABEL_4;
            }

            (*(*v35 + 16))(v35, v33);
            if ((v65 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::VLineCommand::To,WebCore::Style::VLineCommand::By>,(mpark::detail::Trait)1>::move_constructor(a1, v64);
          a1[80] = 3;
          a1[88] = 1;
          if ((v65 & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_117;
        }

        _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v67, a2);
        v19 = *a2;
        if (*a2)
        {
          if ((v68 & 1) == 0)
          {
            goto LABEL_157;
          }

          if (v67 == -1 || (v79 = &v75, _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v67), v67, &v79), v67 = -1, v75 == -1))
          {
            v76 = -1;
          }

          else
          {
            v79 = &v76;
            _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v75), v75, &v79);
          }

          v77 = 1;
        }

        else
        {
          LOBYTE(v76) = 0;
          v77 = 0;
        }

        if (v68 == 1 && v67 != -1 && (v67 & 0xFE000000000000) != 0)
        {
          v79 = (v67 & 0xFF00FFFFFFFFFFFFLL);
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v79);
          if (v77)
          {
            goto LABEL_128;
          }
        }

        else if (v19)
        {
          goto LABEL_128;
        }

        v48 = *a2;
        v49 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        v50 = a2[3];
        if (v50 && v49)
        {
          (*(*v50 + 16))(v50, v48);
        }

LABEL_128:
        v20 = *a2;
        if (*a2)
        {
          if ((v77 & 1) == 0)
          {
            goto LABEL_157;
          }

          if (v76 == -1 || (v67 = &v78, _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v76), v76, &v67), v76 = -1, v78 == -1))
          {
            v73 = -1;
          }

          else
          {
            v67 = &v73;
            _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v78), v78, &v67);
          }

          v74 = 1;
        }

        else
        {
          LOBYTE(v73) = 0;
          v74 = 0;
        }

        if (v77 == 1 && v76 != -1 && (v76 & 0xFE000000000000) != 0)
        {
          v67 = v76 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v67);
          if (v74)
          {
            goto LABEL_141;
          }
        }

        else if (v20)
        {
          goto LABEL_141;
        }

        v51 = *a2;
        v52 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        v53 = a2[3];
        if (!v53)
        {
          goto LABEL_36;
        }

        if (!v52)
        {
          goto LABEL_36;
        }

        (*(*v53 + 16))(v53, v51);
        if ((v74 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_141:
        if (v73 == -1)
        {
          v69 = -1;
        }

        else
        {
          v67 = &v69;
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v73), v73, &v67);
        }

        v70 = 0;
        goto LABEL_145;
      }

      v60 = v6;
      v61 = v5;
    }

    *a2 = 0;
    a2[1] = 0;
    v63 = a2[3];
    if (v63 && v60)
    {
      (*(*v63 + 16))(v63, v61, v60);
    }

    goto LABEL_36;
  }

  IPC::Decoder::decode<mpark::variant<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>>(&v69, a2);
  if (!*a2)
  {
    LOBYTE(v64[0]) = 0;
    v66 = 0;
    goto LABEL_10;
  }

  if ((v72 & 1) == 0)
  {
    goto LABEL_157;
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(&v67, &v69);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(v64, &v67);
  v66 = 1;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(&v67);
LABEL_10:
  if (v72 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(&v69);
  }

  if ((v66 & 1) == 0)
  {
    v27 = *a2;
    v28 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v29 = a2[3];
    if (!v29)
    {
      goto LABEL_4;
    }

    if (!v28)
    {
      goto LABEL_4;
    }

    (*(*v29 + 16))(v29, v27);
    if ((v66 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(a1, v64);
  a1[80] = 1;
LABEL_21:
  a1[88] = 1;
  if (v66)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(v64);
  }

LABEL_23:
  if ((a1[88] & 1) == 0)
  {
    v21 = *a2;
    v22 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v23 = a2[3];
    if (v23)
    {
      if (v22)
      {
        (*(*v23 + 16))(v23, v21);
      }
    }
  }
}

void sub_19D814910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, unint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a27 == 1 && a26 != -1 && (a26 & 0xFE000000000000) != 0)
  {
    a16 = a26 & 0xFF00FFFFFFFFFFFFLL;
    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a16);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,void>::decode<IPC::Decoder,0ul,1ul,2ul,3ul>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  if (a3 != 4)
  {
    if (a3 == 5)
    {
      v11 = a2[1];
      v12 = a2[2];
      v13 = *a2;
      if (v11 <= &v12[-*v5])
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        v238 = v5;
        v239 = *(v5 + 24);
        if (v239)
        {
          if (v11)
          {
            (*(*v239 + 16))(v239);
            v13 = *v5;
            v11 = *(v5 + 8);
            goto LABEL_511;
          }
        }

        else
        {
          v11 = 0;
        }

        v13 = 0;
      }

      else
      {
        *(v5 + 16) = v12 + 1;
        if (v12)
        {
          v14 = *v12;
          if (v14 < 2)
          {
            v257 = v5;
            if (v14)
            {
              _ZN3IPC7Decoder6decodeIN7WebCore19SpaceSeparatedPointINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(&v291, v5);
              IPC::Decoder::decode<std::optional<WebCore::Style::RelativeControlPoint>>(&v300, v5);
              if (*v5)
              {
                if (v293 != 1)
                {
                  goto LABEL_437;
                }

                v70 = 0;
                v5 = &v291;
                v71 = v283;
                do
                {
                  v72 = v70;
                  v73 = *v5;
                  if (*v5 == -1)
                  {
                    *v71 = -1;
                  }

                  else
                  {
                    v304[0] = v71;
                    _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v73), v73, v304);
                  }

                  *v5 = -1;
                  v70 = 1;
                  v71 = &v284;
                  v5 = &v292;
                }

                while ((v72 & 1) == 0);
                if ((v303 & 1) == 0)
                {
                  goto LABEL_437;
                }

                std::__optional_move_base<WebCore::Style::RelativeControlPoint,false>::__optional_move_base[abi:sn200100](v285, &v300);
                v74 = 0;
                v75 = &v275;
                v76 = v283;
                do
                {
                  v77 = v74;
                  v78 = *v76;
                  if (*v76 == -1)
                  {
                    *v75 = -1;
                  }

                  else
                  {
                    v304[0] = v75;
                    _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v78), v78, v304);
                  }

                  *v76 = -1;
                  v74 = 1;
                  v76 = &v284;
                  v75 = &v276;
                }

                while ((v77 & 1) == 0);
                std::__optional_move_base<WebCore::Style::RelativeControlPoint,false>::__optional_move_base[abi:sn200100](&v277, v285);
                v280 = 1;
                v5 = v257;
                if (v289[0] == 1)
                {
                  for (i = 3; i != 1; --i)
                  {
                    v80 = v283[i];
                    if (v80 != -1 && (v80 & 0xFE000000000000) != 0)
                    {
                      v296 = (v80 & 0xFF00FFFFFFFFFFFFLL);
                      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v296);
                    }
                  }
                }

                for (j = 1; j != -1; --j)
                {
                  v83 = v283[j];
                  if (v83 != -1 && (v83 & 0xFE000000000000) != 0)
                  {
                    v296 = (v83 & 0xFF00FFFFFFFFFFFFLL);
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v296);
                  }
                }
              }

              else
              {
                LOBYTE(v275) = 0;
                v280 = 0;
              }

              if (v303 == 1 && v302 == 1)
              {
                for (k = 8; k != -8; k -= 8)
                {
                  v86 = *&v301[k - 8];
                  if (v86 != -1 && (v86 & 0xFE000000000000) != 0)
                  {
                    v283[0] = v86 & 0xFF00FFFFFFFFFFFFLL;
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
                  }
                }
              }

              if (v293 == 1)
              {
                for (m = 1; m != -1; --m)
                {
                  v89 = (&v291)[m];
                  if (v89 != -1 && (v89 & 0xFE000000000000) != 0)
                  {
                    v283[0] = v89 & 0xFF00FFFFFFFFFFFFLL;
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
                  }
                }
              }

              if (v280 != 1)
              {
                v225 = *v5;
                v226 = *(v5 + 8);
                *v5 = 0;
                *(v5 + 8) = 0;
                v227 = *(v5 + 24);
                if (!v227)
                {
                  goto LABEL_10;
                }

                if (!v226)
                {
                  goto LABEL_10;
                }

                (*(*v227 + 16))(v227, v225);
                if ((v280 & 1) == 0)
                {
                  goto LABEL_10;
                }
              }

              v91 = 0;
              v92 = v268;
              v93 = &v275;
              do
              {
                v94 = v91;
                v95 = *v93;
                if (*v93 == -1)
                {
                  *v92 = -1;
                }

                else
                {
                  v300 = v92;
                  _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v95), v95, &v300);
                }

                *v93 = -1;
                v91 = 1;
                v93 = &v276;
                v92 = &v269;
              }

              while ((v94 & 1) == 0);
              std::__optional_move_base<WebCore::Style::RelativeControlPoint,false>::__optional_move_base[abi:sn200100](v270, &v277);
              BYTE8(v271) = 1;
              v272 = 1;
              if (v280)
              {
                if (v279 == 1)
                {
                  for (n = 3; n != 1; --n)
                  {
                    v97 = (&v275)[n];
                    if (v97 != -1 && (v97 & 0xFE000000000000) != 0)
                    {
                      v283[0] = v97 & 0xFF00FFFFFFFFFFFFLL;
                      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
                    }
                  }
                }

                for (ii = 1; ii != -1; --ii)
                {
                  v100 = (&v275)[ii];
                  if (v100 != -1 && (v100 & 0xFE000000000000) != 0)
                  {
                    v283[0] = v100 & 0xFF00FFFFFFFFFFFFLL;
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
                  }
                }
              }
            }

            else
            {
              IPC::Decoder::decode<WebCore::Style::Position>(&v291, v5);
              IPC::Decoder::decode<std::optional<WebCore::Style::AbsoluteControlPoint>>(&v300, v5);
              if (*v5)
              {
                if (v293 != 1)
                {
                  goto LABEL_437;
                }

                v135 = 0;
                v5 = &v291;
                v136 = v283;
                do
                {
                  v137 = v135;
                  v138 = *v5;
                  if (*v5 == -1)
                  {
                    *v136 = -1;
                  }

                  else
                  {
                    v304[0] = v136;
                    _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v138), v138, v304);
                  }

                  *v5 = -1;
                  v135 = 1;
                  v136 = &v284;
                  v5 = &v292;
                }

                while ((v137 & 1) == 0);
                if ((v303 & 1) == 0)
                {
                  goto LABEL_437;
                }

                std::__optional_move_base<WebCore::Style::AbsoluteControlPoint,false>::__optional_move_base[abi:sn200100](v285, &v300);
                v139 = 0;
                v140 = &v275;
                v141 = v283;
                do
                {
                  v142 = v139;
                  v143 = *v141;
                  if (*v141 == -1)
                  {
                    *v140 = -1;
                  }

                  else
                  {
                    v304[0] = v140;
                    _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v143), v143, v304);
                  }

                  *v141 = -1;
                  v139 = 1;
                  v141 = &v284;
                  v140 = &v276;
                }

                while ((v142 & 1) == 0);
                std::__optional_move_base<WebCore::Style::AbsoluteControlPoint,false>::__optional_move_base[abi:sn200100](&v277, v285);
                v280 = 1;
                v5 = v257;
                if (v289[0] == 1)
                {
                  for (jj = 3; jj != 1; --jj)
                  {
                    v145 = v283[jj];
                    if (v145 != -1 && (v145 & 0xFE000000000000) != 0)
                    {
                      v296 = (v145 & 0xFF00FFFFFFFFFFFFLL);
                      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v296);
                    }
                  }
                }

                for (kk = 1; kk != -1; --kk)
                {
                  v148 = v283[kk];
                  if (v148 != -1 && (v148 & 0xFE000000000000) != 0)
                  {
                    v296 = (v148 & 0xFF00FFFFFFFFFFFFLL);
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v296);
                  }
                }
              }

              else
              {
                LOBYTE(v275) = 0;
                v280 = 0;
              }

              if (v303 == 1 && v302 == 1)
              {
                for (mm = 8; mm != -8; mm -= 8)
                {
                  v151 = *&v301[mm - 8];
                  if (v151 != -1 && (v151 & 0xFE000000000000) != 0)
                  {
                    v283[0] = v151 & 0xFF00FFFFFFFFFFFFLL;
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
                  }
                }
              }

              if (v293 == 1)
              {
                for (nn = 1; nn != -1; --nn)
                {
                  v154 = (&v291)[nn];
                  if (v154 != -1 && (v154 & 0xFE000000000000) != 0)
                  {
                    v283[0] = v154 & 0xFF00FFFFFFFFFFFFLL;
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
                  }
                }
              }

              if (v280 != 1)
              {
                v231 = *v5;
                v232 = *(v5 + 8);
                *v5 = 0;
                *(v5 + 8) = 0;
                v233 = *(v5 + 24);
                if (!v233)
                {
                  goto LABEL_10;
                }

                if (!v232)
                {
                  goto LABEL_10;
                }

                (*(*v233 + 16))(v233, v231);
                if ((v280 & 1) == 0)
                {
                  goto LABEL_10;
                }
              }

              v156 = 0;
              v157 = v268;
              v158 = &v275;
              do
              {
                v159 = v156;
                v160 = *v158;
                if (*v158 == -1)
                {
                  *v157 = -1;
                }

                else
                {
                  v300 = v157;
                  _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v160), v160, &v300);
                }

                *v158 = -1;
                v156 = 1;
                v158 = &v276;
                v157 = &v269;
              }

              while ((v159 & 1) == 0);
              std::__optional_move_base<WebCore::Style::AbsoluteControlPoint,false>::__optional_move_base[abi:sn200100](v270, &v277);
              BYTE8(v271) = 0;
              v272 = 1;
              if (v280)
              {
                if (v279 == 1)
                {
                  for (i1 = 3; i1 != 1; --i1)
                  {
                    v162 = (&v275)[i1];
                    if (v162 != -1 && (v162 & 0xFE000000000000) != 0)
                    {
                      v283[0] = v162 & 0xFF00FFFFFFFFFFFFLL;
                      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
                    }
                  }
                }

                for (i2 = 1; i2 != -1; --i2)
                {
                  v165 = (&v275)[i2];
                  if (v165 != -1 && (v165 & 0xFE000000000000) != 0)
                  {
                    v283[0] = v165 & 0xFF00FFFFFFFFFFFFLL;
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
                  }
                }
              }
            }

LABEL_365:
            if ((v272 & 1) == 0)
            {
              v203 = *v5;
              v204 = *(v5 + 8);
              *v5 = 0;
              *(v5 + 8) = 0;
              v205 = *(v5 + 24);
              if (v205)
              {
                if (v204)
                {
                  (*(*v205 + 16))(v205, v203);
                }
              }
            }

            if (*v5)
            {
              if ((v272 & 1) == 0)
              {
                goto LABEL_437;
              }

              mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::SmoothCommand::To,WebCore::Style::SmoothCommand::By>,(mpark::detail::Trait)1>::move_constructor(&v275, v268);
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::SmoothCommand::To,WebCore::Style::SmoothCommand::By>,(mpark::detail::Trait)1>::move_constructor(v259, &v275);
              v265 = 1;
              if (v280 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::SmoothCommand::To,WebCore::Style::SmoothCommand::By>,(mpark::detail::Trait)1> &>(&v275);
              }
            }

            else
            {
              LOBYTE(v259[0]) = 0;
              v265 = 0;
            }

            if (v272 == 1 && BYTE8(v271) != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::SmoothCommand::To,WebCore::Style::SmoothCommand::By>,(mpark::detail::Trait)1> &>(v268);
            }

            if (v265 & 1) != 0 || (v206 = *v5, v207 = *(v5 + 8), *v5 = 0, *(v5 + 8) = 0, (v208 = *(v5 + 24)) != 0) && v207 && ((*(*v208 + 16))(v208, v206), (v265))
            {
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::SmoothCommand::To,WebCore::Style::SmoothCommand::By>,(mpark::detail::Trait)1>::move_constructor(v6, v259);
              *(v6 + 80) = 5;
              *(v6 + 88) = 1;
              if ((v265 & 1) != 0 && BYTE8(v264) != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::SmoothCommand::To,WebCore::Style::SmoothCommand::By>,(mpark::detail::Trait)1> &>(v259);
              }

              return;
            }

            goto LABEL_467;
          }

LABEL_10:
          v268[0] = 0;
          v272 = 0;
          goto LABEL_365;
        }

        v238 = v5;
      }

LABEL_511:
      v5 = v238;
      *v238 = 0;
      v238[1] = 0;
      v240 = v238[3];
      if (v240 && v11)
      {
        (*(*v240 + 16))(v240, v13);
      }

      goto LABEL_10;
    }

    if (a3 != 6)
    {
      if (*a2)
      {
        *(a1 + 80) = 7;
        v69 = 1;
      }

      else
      {
        v212 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        v213 = a2[3];
        if (v213 && v212)
        {
          (*(*v213 + 16))(v213, 0);
        }

        v69 = 0;
        *v6 = 0;
      }

      *(v6 + 88) = v69;
      return;
    }

    IPC::Decoder::decode<mpark::variant<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>>(&v275, a2);
    _ZN3IPC7Decoder6decodeIN7WebCore19SpaceSeparatedArrayINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEELm2EEEEENSt3__18optionalIT_EEv(v259, v5);
    if (*v5)
    {
      if (v261 != 1)
      {
        goto LABEL_437;
      }

      v15 = 0;
      v4 = v259;
      v16 = &v300;
      do
      {
        v17 = v15;
        v18 = *v4;
        if (*v4 == -1)
        {
          *v16 = -1;
        }

        else
        {
          v296 = v16;
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v18), v18, &v296);
        }

        *v4 = -1;
        v15 = 1;
        v16 = v301;
        v4 = &v260;
      }

      while ((v17 & 1) == 0);
      v19 = 0;
      v20 = v283;
      v21 = &v300;
      do
      {
        v22 = v19;
        v23 = *v21;
        if (*v21 == -1)
        {
          *v20 = -1;
        }

        else
        {
          v296 = v20;
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v23), v23, &v296);
        }

        *v21 = -1;
        v19 = 1;
        v21 = v301;
        v20 = &v284;
      }

      while ((v22 & 1) == 0);
      v285[0] = 1;
      v24 = 8;
      v3 = &v300;
      do
      {
        v25 = *&v301[v24 - 8];
        if (v25 != -1 && (v25 & 0xFE000000000000) != 0)
        {
          v291 = (v25 & 0xFF00FFFFFFFFFFFFLL);
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v291);
        }

        v24 -= 8;
      }

      while (v24 != -8);
    }

    else
    {
      LOBYTE(v283[0]) = 0;
      v285[0] = 0;
    }

    if (v261 == 1)
    {
      v27 = 1;
      v3 = v259;
      do
      {
        v28 = v259[v27];
        if (v28 != -1 && (v28 & 0xFE000000000000) != 0)
        {
          v300 = (v28 & 0xFF00FFFFFFFFFFFFLL);
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v300);
        }

        --v27;
      }

      while (v27 != -1);
    }

    if ((v285[0] & 1) == 0)
    {
      v214 = *v5;
      v215 = *(v5 + 8);
      *v5 = 0;
      *(v5 + 8) = 0;
      v216 = *(v5 + 24);
      if (v216)
      {
        if (v215)
        {
          (*(*v216 + 16))(v216, v214);
        }
      }
    }

    v30 = *(v5 + 8);
    v31 = *(v5 + 16);
    v32 = *v5;
    if (v30 <= &v31[-*v5])
    {
      *v5 = 0;
      *(v5 + 8) = 0;
      v241 = v5;
      v242 = *(v5 + 24);
      if (v242)
      {
        if (v30)
        {
          (*(*v242 + 16))(v242);
          v32 = *v5;
          v30 = *(v5 + 8);
          goto LABEL_517;
        }
      }

      else
      {
        v30 = 0;
      }

      v32 = 0;
    }

    else
    {
      v33 = v31 + 1;
      *(v5 + 16) = v31 + 1;
      if (v31)
      {
        v34 = *v31;
        if (v34 <= 1)
        {
          if (v34)
          {
            if (v32)
            {
              v35 = 0;
              v253 = 0;
              LOWORD(v3) = 1;
              goto LABEL_379;
            }

            *v5 = 0;
            *(v5 + 8) = 0;
            v223 = v5;
            v224 = *(v5 + 24);
            if (v224)
            {
              (*(*v224 + 16))(v224, 0);
              LOWORD(v3) = 1;
              goto LABEL_520;
            }

            LOWORD(v3) = 1;
          }

          else
          {
            if (v32)
            {
              v35 = 0;
              v253 = 0;
              LOWORD(v3) = 0;
              goto LABEL_379;
            }

            *v5 = 0;
            *(v5 + 8) = 0;
            v223 = v5;
            v230 = *(v5 + 24);
            if (v230)
            {
              (*(*v230 + 16))(v230, 0);
              LOWORD(v3) = 0;
              goto LABEL_520;
            }

            LOWORD(v3) = 0;
          }

          v5 = v223;
        }

LABEL_520:
        v244 = *v5;
        v30 = *(v5 + 8);
        *v5 = 0;
        *(v5 + 8) = 0;
        v245 = *(v5 + 24);
        if (!v245)
        {
          v30 = 0;
LABEL_522:
          v32 = 0;
          v252 = v3 << 8;
          v253 = 1;
          goto LABEL_523;
        }

        if (!v30)
        {
          goto LABEL_522;
        }

        (*(*v245 + 16))(v245, v244);
        v32 = *v5;
        v30 = *(v5 + 8);
        v33 = *(v5 + 16);
        v35 = *v5 == 0;
        v253 = 1;
LABEL_379:
        v252 = v3 << 8;
        if (v30 <= &v33[-v32])
        {
          v250 = *(v5 + 24);
          *v5 = 0;
          *(v5 + 8) = 0;
          if (v250)
          {
            if (v30)
            {
              (*(*v250 + 16))(v250);
              v32 = *v5;
              v30 = *(v5 + 8);
              goto LABEL_523;
            }
          }

          else
          {
            v30 = 0;
          }

          v32 = 0;
        }

        else
        {
          *(v5 + 16) = v33 + 1;
          if (v33)
          {
            v167 = *v33;
            if (v167 > 1)
            {
              goto LABEL_524;
            }

            if (v167)
            {
              if (!v35)
              {
                v168 = 0;
                LOWORD(v4) = 1;
                goto LABEL_387;
              }

              *v5 = 0;
              *(v5 + 8) = 0;
              v228 = v5;
              v229 = *(v5 + 24);
              if (!v229)
              {
                LOWORD(v4) = 1;
LABEL_492:
                v5 = v228;
                goto LABEL_524;
              }

              (*(*v229 + 16))(v229, 0);
              LOWORD(v4) = 1;
            }

            else
            {
              if (!v35)
              {
                v168 = 0;
                LOWORD(v4) = 0;
                goto LABEL_387;
              }

              *v5 = 0;
              *(v5 + 8) = 0;
              v228 = v5;
              v234 = *(v5 + 24);
              if (!v234)
              {
                LOWORD(v4) = 0;
                goto LABEL_492;
              }

              (*(*v234 + 16))(v234, 0);
              LOWORD(v4) = 0;
            }

LABEL_524:
            v247 = *v5;
            v248 = *(v5 + 8);
            *v5 = 0;
            *(v5 + 8) = 0;
            v249 = *(v5 + 24);
            if (v249 && v248)
            {
              (*(*v249 + 16))(v249, v247);
            }

            v168 = 1;
LABEL_387:
            v169 = _ZN3IPC7Decoder6decodeIN7WebCore5Style5AngleIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEdEEEENSt3__18optionalIT_EEv(v5);
            v258 = v5;
            if (*v5)
            {
              if ((v278 & 1) == 0)
              {
                goto LABEL_437;
              }

              v171 = v169;
              v172 = v170;
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(v259, &v275);
              v251 = v168;
              v255 = v6;
              if (v285[0] != 1)
              {
                goto LABEL_437;
              }

              v173 = 0;
              v5 = &v262;
              v174 = v4 << 8;
              v175 = v283;
              v176 = 3;
              v177 = &v262;
              do
              {
                v178 = v173;
                v179 = *v175;
                if (*v175 == -1)
                {
                  v259[v176] = -1;
                }

                else
                {
                  v291 = v177;
                  _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v179), v179, &v291);
                }

                v6 = 0;
                *v175 = -1;
                v173 = 1;
                v175 = &v284;
                v177 = &v263;
                v176 = 4;
              }

              while ((v178 & 1) == 0);
              if (v253)
              {
                goto LABEL_437;
              }

              LOWORD(v264) = v252;
              v6 = v255;
              if (v251)
              {
                goto LABEL_437;
              }

              WORD1(v264) = v174;
              if ((v172 & 1) == 0)
              {
                goto LABEL_437;
              }

              *(&v264 + 1) = v171;
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(v268, v259);
              v180 = 0;
              v181 = 0;
              do
              {
                v182 = v180;
                v183 = *(&v262 + v181);
                if (v183 == -1)
                {
                  *&v270[8 * v181 + 8] = -1;
                }

                else
                {
                  v291 = &v270[8 * v181 + 8];
                  _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v183), v183, &v291);
                }

                *(&v262 + v181) = -1;
                v180 = 1;
                v181 = 1;
              }

              while ((v182 & 1) == 0);
              v271 = v264;
              v272 = 1;
              for (i3 = 4; i3 != 2; --i3)
              {
                v185 = v259[i3];
                if (v185 != -1 && (v185 & 0xFE000000000000) != 0)
                {
                  v300 = (v185 & 0xFF00FFFFFFFFFFFFLL);
                  WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v300);
                }
              }

              mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(v259);
            }

            else
            {
              v268[0] = 0;
              v272 = 0;
            }

            if (v285[0] == 1)
            {
              for (i4 = 1; i4 != -1; --i4)
              {
                v188 = v283[i4];
                if (v188 != -1 && (v188 & 0xFE000000000000) != 0)
                {
                  v259[0] = v188 & 0xFF00FFFFFFFFFFFFLL;
                  WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v259);
                }
              }
            }

            if (v278 == 1)
            {
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(&v275);
            }

            if (v272 & 1) != 0 || (v217 = *v258, v218 = v258[1], *v258 = 0, v258[1] = 0, (v219 = v258[3]) != 0) && v218 && ((*(*v219 + 16))(v219, v217), (v272))
            {
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(v6, v268);
              v190 = 0;
              v191 = 0;
              do
              {
                v192 = v190;
                v193 = *&v270[8 * v191 + 8];
                if (v193 == -1)
                {
                  v6[v191 + 3] = -1;
                }

                else
                {
                  v275 = &v6[v191 + 3];
                  _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v193), v193, &v275);
                }

                *&v270[8 * v191 + 8] = -1;
                v190 = 1;
                v191 = 1;
              }

              while ((v192 & 1) == 0);
              *(v6 + 5) = v271;
              *(v6 + 80) = 6;
              *(v6 + 88) = 1;
              if (v272)
              {
                for (i5 = 32; i5 != 16; i5 -= 8)
                {
                  v195 = *&v268[i5];
                  if (v195 != -1 && (v195 & 0xFE000000000000) != 0)
                  {
                    v259[0] = v195 & 0xFF00FFFFFFFFFFFFLL;
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v259);
                  }
                }

                mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(v268);
              }

              return;
            }

LABEL_467:
            *v6 = 0;
            *(v6 + 88) = 0;
            return;
          }
        }

LABEL_523:
        *v5 = 0;
        *(v5 + 8) = 0;
        v246 = *(v5 + 24);
        if (v246 && v30)
        {
          (*(*v246 + 16))(v246, v32);
        }

        goto LABEL_524;
      }

      v241 = v5;
    }

LABEL_517:
    v5 = v241;
    *v241 = 0;
    v241[1] = 0;
    v243 = v241[3];
    if (v243 && v30)
    {
      (*(*v243 + 16))(v243, v32);
    }

    goto LABEL_520;
  }

  v7 = a2[1];
  v8 = a2[2];
  v9 = *a2;
  if (v7 <= &v8[-*v5])
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    v235 = v5;
    v236 = *(v5 + 24);
    if (v236)
    {
      if (v7)
      {
        (*(*v236 + 16))(v236);
        v9 = *v5;
        v7 = *(v5 + 8);
        goto LABEL_505;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
LABEL_505:
    v5 = v235;
    *v235 = 0;
    v235[1] = 0;
    v237 = v235[3];
    if (v237 && v7)
    {
      (*(*v237 + 16))(v237, v9);
    }

    goto LABEL_5;
  }

  *(v5 + 16) = v8 + 1;
  if (!v8)
  {
    v235 = v5;
    goto LABEL_505;
  }

  v10 = *v8;
  if (v10 < 2)
  {
    v256 = v5;
    if (v10)
    {
      _ZN3IPC7Decoder6decodeIN7WebCore19SpaceSeparatedPointINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(&v296, v5);
      IPC::Decoder::decode<WebCore::Style::RelativeControlPoint>(&v291, v5);
      IPC::Decoder::decode<std::optional<WebCore::Style::RelativeControlPoint>>(&v300, v5);
      if (*v5)
      {
        if (v298 != 1)
        {
          goto LABEL_437;
        }

        v36 = 0;
        v37 = v285;
        v6 = &v296;
        v38 = v283;
        v5 = -1;
        do
        {
          v39 = v36;
          v40 = *v6;
          if (*v6 == -1)
          {
            *v38 = -1;
          }

          else
          {
            v299 = v38;
            _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v40), v40, &v299);
          }

          *v6 = -1;
          v36 = 1;
          v38 = &v284;
          v6 = &v297;
        }

        while ((v39 & 1) == 0);
        if (v295 != 1)
        {
          goto LABEL_437;
        }

        v41 = 0;
        v5 = &v291;
        v42 = 2;
        do
        {
          v6 = v41;
          v43 = *v5;
          if (*v5 == -1)
          {
            v283[v42] = -1;
          }

          else
          {
            v299 = v37;
            _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v43), v43, &v299);
          }

          *v5 = -1;
          v41 = 1;
          v5 = &v292;
          v37 = &v286;
          v42 = 3;
        }

        while ((v6 & 1) == 0);
        v287 = v293;
        v288 = v294;
        if ((v303 & 1) == 0)
        {
          goto LABEL_437;
        }

        std::__optional_move_base<WebCore::Style::RelativeControlPoint,false>::__optional_move_base[abi:sn200100](v289, &v300);
        v6 = a1;
        v5 = v256;
        WebCore::Style::CurveCommand::By::By(&v275, v283);
        v282 = 1;
        if (v290 == 1)
        {
          for (i6 = 6; i6 != 4; --i6)
          {
            v45 = v283[i6];
            if (v45 != -1 && (v45 & 0xFE000000000000) != 0)
            {
              v304[0] = (v45 & 0xFF00FFFFFFFFFFFFLL);
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v304);
            }
          }
        }

        for (i7 = 3; i7 != 1; --i7)
        {
          v48 = v283[i7];
          if (v48 != -1 && (v48 & 0xFE000000000000) != 0)
          {
            v304[0] = (v48 & 0xFF00FFFFFFFFFFFFLL);
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v304);
          }
        }

        do
        {
          v50 = v283[i7];
          if (v50 != -1 && (v50 & 0xFE000000000000) != 0)
          {
            v304[0] = (v50 & 0xFF00FFFFFFFFFFFFLL);
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v304);
          }

          --i7;
        }

        while (i7 != -1);
      }

      else
      {
        LOBYTE(v275) = 0;
        v282 = 0;
      }

      if (v303 == 1 && v302 == 1)
      {
        for (i8 = 8; i8 != -8; i8 -= 8)
        {
          v53 = *&v301[i8 - 8];
          if (v53 != -1 && (v53 & 0xFE000000000000) != 0)
          {
            v283[0] = v53 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
          }
        }
      }

      if (v295 == 1)
      {
        for (i9 = 1; i9 != -1; --i9)
        {
          v56 = (&v291)[i9];
          if (v56 != -1 && (v56 & 0xFE000000000000) != 0)
          {
            v283[0] = v56 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
          }
        }
      }

      if (v298 == 1)
      {
        for (i10 = 1; i10 != -1; --i10)
        {
          v59 = (&v296)[i10];
          if (v59 != -1 && (v59 & 0xFE000000000000) != 0)
          {
            v283[0] = v59 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
          }
        }
      }

      if (v282 & 1) != 0 || (v209 = *v5, v210 = *(v5 + 8), *v5 = 0, *(v5 + 8) = 0, (v211 = *(v5 + 24)) != 0) && v210 && ((*(*v211 + 16))(v211, v209), (v282))
      {
        WebCore::Style::CurveCommand::By::By(v268, &v275);
        v273 = 1;
        v274 = 1;
        if (v282)
        {
          if (v281 == 1)
          {
            for (i11 = 6; i11 != 4; --i11)
            {
              v62 = (&v275)[i11];
              if (v62 != -1 && (v62 & 0xFE000000000000) != 0)
              {
                v283[0] = v62 & 0xFF00FFFFFFFFFFFFLL;
                WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
              }
            }
          }

          for (i12 = 3; i12 != 1; --i12)
          {
            v65 = (&v275)[i12];
            if (v65 != -1 && (v65 & 0xFE000000000000) != 0)
            {
              v283[0] = v65 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
            }
          }

          do
          {
            v67 = (&v275)[i12];
            if (v67 != -1 && (v67 & 0xFE000000000000) != 0)
            {
              v283[0] = v67 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
            }

            --i12;
          }

          while (i12 != -1);
        }

        goto LABEL_286;
      }
    }

    else
    {
      IPC::Decoder::decode<WebCore::Style::Position>(&v296, v5);
      IPC::Decoder::decode<WebCore::Style::AbsoluteControlPoint>(&v291, v5);
      IPC::Decoder::decode<std::optional<WebCore::Style::AbsoluteControlPoint>>(&v300, v5);
      if (*v5)
      {
        if (v298 != 1)
        {
          goto LABEL_437;
        }

        v102 = 0;
        v103 = v285;
        v6 = &v296;
        v104 = v283;
        v5 = -1;
        do
        {
          v105 = v102;
          v106 = *v6;
          if (*v6 == -1)
          {
            *v104 = -1;
          }

          else
          {
            v299 = v104;
            _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v106), v106, &v299);
          }

          *v6 = -1;
          v102 = 1;
          v104 = &v284;
          v6 = &v297;
        }

        while ((v105 & 1) == 0);
        if (v295 != 1)
        {
          goto LABEL_437;
        }

        v107 = 0;
        v5 = &v291;
        v108 = 2;
        do
        {
          v6 = v107;
          v109 = *v5;
          if (*v5 == -1)
          {
            v283[v108] = -1;
          }

          else
          {
            v299 = v103;
            _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v109), v109, &v299);
          }

          *v5 = -1;
          v107 = 1;
          v5 = &v292;
          v103 = &v286;
          v108 = 3;
        }

        while ((v6 & 1) == 0);
        v287 = v293;
        v288 = v294;
        if ((v303 & 1) == 0)
        {
          goto LABEL_437;
        }

        std::__optional_move_base<WebCore::Style::AbsoluteControlPoint,false>::__optional_move_base[abi:sn200100](v289, &v300);
        v6 = a1;
        v5 = v256;
        WebCore::Style::CurveCommand::To::To(&v275, v283);
        v282 = 1;
        if (v290 == 1)
        {
          for (i13 = 6; i13 != 4; --i13)
          {
            v111 = v283[i13];
            if (v111 != -1 && (v111 & 0xFE000000000000) != 0)
            {
              v304[0] = (v111 & 0xFF00FFFFFFFFFFFFLL);
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v304);
            }
          }
        }

        for (i14 = 3; i14 != 1; --i14)
        {
          v114 = v283[i14];
          if (v114 != -1 && (v114 & 0xFE000000000000) != 0)
          {
            v304[0] = (v114 & 0xFF00FFFFFFFFFFFFLL);
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v304);
          }
        }

        do
        {
          v116 = v283[i14];
          if (v116 != -1 && (v116 & 0xFE000000000000) != 0)
          {
            v304[0] = (v116 & 0xFF00FFFFFFFFFFFFLL);
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v304);
          }

          --i14;
        }

        while (i14 != -1);
      }

      else
      {
        LOBYTE(v275) = 0;
        v282 = 0;
      }

      if (v303 == 1 && v302 == 1)
      {
        for (i15 = 8; i15 != -8; i15 -= 8)
        {
          v119 = *&v301[i15 - 8];
          if (v119 != -1 && (v119 & 0xFE000000000000) != 0)
          {
            v283[0] = v119 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
          }
        }
      }

      if (v295 == 1)
      {
        for (i16 = 1; i16 != -1; --i16)
        {
          v122 = (&v291)[i16];
          if (v122 != -1 && (v122 & 0xFE000000000000) != 0)
          {
            v283[0] = v122 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
          }
        }
      }

      if (v298 == 1)
      {
        for (i17 = 1; i17 != -1; --i17)
        {
          v125 = (&v296)[i17];
          if (v125 != -1 && (v125 & 0xFE000000000000) != 0)
          {
            v283[0] = v125 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
          }
        }
      }

      if (v282 & 1) != 0 || (v220 = *v5, v221 = *(v5 + 8), *v5 = 0, *(v5 + 8) = 0, (v222 = *(v5 + 24)) != 0) && v221 && ((*(*v222 + 16))(v222, v220), (v282))
      {
        WebCore::Style::CurveCommand::To::To(v268, &v275);
        v273 = 0;
        v274 = 1;
        if (v282)
        {
          if (v281 == 1)
          {
            for (i18 = 6; i18 != 4; --i18)
            {
              v128 = (&v275)[i18];
              if (v128 != -1 && (v128 & 0xFE000000000000) != 0)
              {
                v283[0] = v128 & 0xFF00FFFFFFFFFFFFLL;
                WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
              }
            }
          }

          for (i19 = 3; i19 != 1; --i19)
          {
            v131 = (&v275)[i19];
            if (v131 != -1 && (v131 & 0xFE000000000000) != 0)
            {
              v283[0] = v131 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
            }
          }

          do
          {
            v133 = (&v275)[i19];
            if (v133 != -1 && (v133 & 0xFE000000000000) != 0)
            {
              v283[0] = v133 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v283);
            }

            --i19;
          }

          while (i19 != -1);
        }

        goto LABEL_286;
      }
    }
  }

LABEL_5:
  v268[0] = 0;
  v274 = 0;
LABEL_286:
  if ((v274 & 1) == 0)
  {
    goto LABEL_438;
  }

  while (1)
  {
    if (!*v5)
    {
      LOBYTE(v259[0]) = 0;
      v267 = 0;
      goto LABEL_291;
    }

    if (v274)
    {
      break;
    }

LABEL_437:
    __break(1u);
LABEL_438:
    v197 = *v5;
    v198 = *(v5 + 8);
    *v5 = 0;
    *(v5 + 8) = 0;
    v199 = *(v5 + 24);
    if (v199 && v198)
    {
      (*(*v199 + 16))(v199, v197);
    }
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::CurveCommand::To,WebCore::Style::CurveCommand::By>,(mpark::detail::Trait)1>::move_constructor(&v275, v268);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::CurveCommand::To,WebCore::Style::CurveCommand::By>,(mpark::detail::Trait)1>::move_constructor(v259, &v275);
  v267 = 1;
  if (v282 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::CurveCommand::To,WebCore::Style::CurveCommand::By>,(mpark::detail::Trait)1> &>(&v275);
  }

LABEL_291:
  if (v274 == 1 && v273 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::CurveCommand::To,WebCore::Style::CurveCommand::By>,(mpark::detail::Trait)1> &>(v268);
  }

  if ((v267 & 1) == 0)
  {
    v200 = *v5;
    v201 = *(v5 + 8);
    *v5 = 0;
    *(v5 + 8) = 0;
    v202 = *(v5 + 24);
    if (!v202)
    {
      goto LABEL_467;
    }

    if (!v201)
    {
      goto LABEL_467;
    }

    (*(*v202 + 16))(v202, v200);
    if ((v267 & 1) == 0)
    {
      goto LABEL_467;
    }
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::CurveCommand::To,WebCore::Style::CurveCommand::By>,(mpark::detail::Trait)1>::move_constructor(v6, v259);
  *(v6 + 80) = 4;
  *(v6 + 88) = 1;
  if ((v267 & 1) != 0 && v266 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::CurveCommand::To,WebCore::Style::CurveCommand::By>,(mpark::detail::Trait)1> &>(v259);
  }
}

void sub_19D816874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int16 a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, int a43, __int16 a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a44 == 1)
  {
    if (a42 == 1)
    {
      for (i = 24; i != 8; i -= 8)
      {
        v50 = *(&a37 + i);
        if (v50 != -1 && (v50 & 0xFE000000000000) != 0)
        {
          a48 = v50 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a48);
        }
      }
    }

    for (j = 8; j != -8; j -= 8)
    {
      v53 = *(&a37 + j);
      if (v53 != -1 && (v53 & 0xFE000000000000) != 0)
      {
        a48 = v53 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a48);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,(mpark::detail::Trait)1>::move_constructor(*a1 + 88 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return result;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = -1;
  v4 = *(a2 + 80);
  if (v4 > 4)
  {
    if (*(a2 + 80) > 6u)
    {
      if (v4 != 7)
      {
        return a1;
      }
    }

    else if (v4 == 5)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::SmoothCommand::To,WebCore::Style::SmoothCommand::By>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
    }

    else
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
      v5 = 0;
      v6 = 0;
      v7 = a2 + 24;
      do
      {
        v8 = v5;
        v9 = *(v7 + 8 * v6);
        if (v9 == -1)
        {
          *(a1 + 8 * v6 + 24) = -1;
        }

        else
        {
          v11 = (a1 + 8 * v6 + 24);
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v9), v9, &v11);
        }

        *(v7 + 8 * v6) = -1;
        v5 = 1;
        v6 = 1;
      }

      while ((v8 & 1) == 0);
      *(a1 + 40) = *(a2 + 40);
    }
  }

  else if (*(a2 + 80) > 2u)
  {
    if (v4 == 3)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::VLineCommand::To,WebCore::Style::VLineCommand::By>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
    }

    else
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::CurveCommand::To,WebCore::Style::CurveCommand::By>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
    }
  }

  else if (v4 >= 2)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
  }

  else
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void sub_19D817DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 80) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,(mpark::detail::Trait)1> &>(v10);
  }

  *(v10 + 80) = -1;
  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 88 * *(a1 + 12) <= a3)
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

    WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x2E8BA2F)
    {
      __break(0xC471u);
      JUMPOUT(0x19D817FD4);
    }

    v3 = *a1;
    v4 = *a1 + 88 * *(a1 + 12);
    v5 = 88 * a2;
    v6 = WTF::fastMalloc((88 * a2));
    *(a1 + 8) = v5 / 0x58;
    *a1 = v6;
    WTF::VectorMover<false,mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>>::move(v3, v4, v6);
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

void WTF::VectorMover<false,mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,(mpark::detail::Trait)1>::move_constructor(a3, v5);
      if (*(v5 + 80) != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,(mpark::detail::Trait)1> &>(v5);
      }

      *(v5 + 80) = -1;
      a3 += 88;
      v5 += 88;
    }

    while (v5 != a2);
  }
}

IPC::Encoder *_ZN3IPC13ArgumentCoderIN5mpark7variantIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS2_IJNS3_8ConstantILNS3_10CSSValueIDE711EEENS9_ILSA_710EEENS9_ILSA_713EEENS9_ILSA_712EEEEEEEEEvE6encodeINS_7EncoderERKSG_JEEEvRT_OT0_NSt3__116integer_sequenceImJXspT1_EEEEm(IPC::Encoder *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 8) == 1)
    {
      v6 = *(a2 + 1);
      result = IPC::Encoder::operator<<<BOOL>(result, &v6);
      v5 = *(a2 + 1);
      if (v6 == 2)
      {
        if (v5 == 2)
        {
          return result;
        }
      }

      else if (v6 == 1)
      {
        if (v5 == 1)
        {
          return result;
        }
      }

      else if (v6)
      {
        if (v6 != 3 || v5 == 3)
        {
          return result;
        }
      }

      else if (!*(a2 + 1))
      {
        return result;
      }
    }

LABEL_20:
    mpark::throw_bad_variant_access(result);
  }

  if (a3)
  {
    return result;
  }

  if (*(a2 + 8))
  {
    goto LABEL_20;
  }

  v4 = *a2;

  return _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(result, v4);
}

mpark *IPC::ArgumentCoder<std::optional<WebCore::Style::Position>,void>::encode<IPC::Encoder,std::optional<WebCore::Style::Position> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16) == 1)
    {
      for (i = 0; i != 16; i += 8)
      {
        result = _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(a1, *(a2 + i));
      }
    }

    else
    {
      v6 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WebCore::Constant<(WebCore::CSSValueID)711>>(v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::Constant<(WebCore::CSSValueID)711>>(void *a1)
{
  if (*a1)
  {
    return 256;
  }

  v2 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    if (v2)
    {
      (*(*result + 16))(result, 0);
    }

    return 0;
  }

  return result;
}

mpark *IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 2))
  {
    v5 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v5);
    if ((*(a2 + 2) & 1) == 0)
    {
      result = std::__throw_bad_optional_access[abi:sn200100]();
      goto LABEL_11;
    }

    v7 = *(a2 + 1);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (v7)
    {
      if (v7 == 1 && *(a2 + 1) != 1)
      {
LABEL_11:
        mpark::throw_bad_variant_access(result);
      }
    }

    else if (*(a2 + 1))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v6);
  }

  return result;
}

mpark *IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)502>,WebCore::Constant<(WebCore::CSSValueID)503>,WebCore::Constant<(WebCore::CSSValueID)812>>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)502>,WebCore::Constant<(WebCore::CSSValueID)503>,WebCore::Constant<(WebCore::CSSValueID)812>>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if ((*(a2 + 2) & 1) == 0)
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }

  v6 = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  if ((*(a2 + 2) & 1) == 0)
  {
    result = std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_14;
  }

  v8 = *(a2 + 1);
  result = IPC::Encoder::operator<<<BOOL>(a1, &v8);
  v5 = *(a2 + 1);
  if (v8 == 1)
  {
    if (v5 == 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 != 2 || v5 == 2)
    {
      return result;
    }

LABEL_14:
    mpark::throw_bad_variant_access(result);
  }

  if (*(a2 + 1))
  {
    goto LABEL_14;
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair> const&>(mpark *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    if (!*(a2 + 16))
    {
      for (i = 0; i != 16; i += 8)
      {
        result = _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v4, *(a2 + i));
      }

      return result;
    }

LABEL_11:
    mpark::throw_bad_variant_access(result);
  }

  if (*(a2 + 16) != 1)
  {
    goto LABEL_11;
  }

  for (j = 0; j != 16; j += 8)
  {
    result = _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v4, *(a2 + j));
  }

  return result;
}

mpark *IPC::ArgumentCoder<std::optional<WebCore::Style::AbsoluteControlPoint>,void>::encode<IPC::Encoder,std::optional<WebCore::Style::AbsoluteControlPoint> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 24))
    {
      return IPC::ArgumentCoder<WebCore::Style::RelativeControlPoint,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<mpark::variant<WebCore::FunctionNotation<(WebCore::CSSValueID)273,WebCore::Style::Circle>,WebCore::FunctionNotation<(WebCore::CSSValueID)709,WebCore::Style::Ellipse>,WebCore::FunctionNotation<(WebCore::CSSValueID)8,WebCore::Style::Inset>,WebCore::FunctionNotation<(WebCore::CSSValueID)904,WebCore::Style::Path>,WebCore::FunctionNotation<(WebCore::CSSValueID)799,WebCore::Style::Polygon>,WebCore::FunctionNotation<(WebCore::CSSValueID)800,WebCore::Style::Shape>>,void>::decode<IPC::Decoder,0ul,1ul>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::ArgumentCoder<mpark::variant<WebCore::FunctionNotation<(WebCore::CSSValueID)273,WebCore::Style::Circle>,WebCore::FunctionNotation<(WebCore::CSSValueID)709,WebCore::Style::Ellipse>,WebCore::FunctionNotation<(WebCore::CSSValueID)8,WebCore::Style::Inset>,WebCore::FunctionNotation<(WebCore::CSSValueID)904,WebCore::Style::Path>,WebCore::FunctionNotation<(WebCore::CSSValueID)799,WebCore::Style::Polygon>,WebCore::FunctionNotation<(WebCore::CSSValueID)800,WebCore::Style::Shape>>,void>::decode<IPC::Decoder,0ul,1ul>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = a2;
  v7 = a1;
  v381 = *MEMORY[0x1E69E9840];
  if (a3 != 2)
  {
    if (a3 == 3)
    {
      v8 = IPC::Decoder::decode<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>>>(a2);
      IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v6, &v332);
      v10 = *v6;
      if (*v6)
      {
        if ((v334 & 1) == 0)
        {
          goto LABEL_588;
        }

        v370 = 0;
        v11 = WTF::fastMalloc(0x58);
        v4 = v11;
        *v11 = 1;
        *(v11 + 8) = v332;
        v12 = v333;
        v332 = 0;
        v333 = 0;
        *(v11 + 16) = v12;
        *(v11 + 80) = 0;
        v342 = 0;
        if (_MergedGlobals_48)
        {
          v13 = dword_1ED641AB8[0] + 1;
        }

        else
        {
          qword_1ED641B08 = 0;
          unk_1ED641AF8 = 0u;
          unk_1ED641AE8 = 0u;
          unk_1ED641AD8 = 0u;
          unk_1ED641AC8 = 0u;
          *dword_1ED641AB8 = 0u;
          v13 = 2;
          _MergedGlobals_48 = 1;
        }

        dword_1ED641AB8[0] = v13;
        v343 = v11;
        v344 = 1;
        v371 = 0;
        WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(dword_1ED641AB8);
        WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(&v370, v14);
      }

      else
      {
        LOBYTE(v342) = 0;
        v344 = 0;
      }

      if (v334 == 1)
      {
        v253 = v332;
        if (v332)
        {
          v332 = 0;
          LODWORD(v333) = 0;
          WTF::fastFree(v253, v9);
        }
      }

      if (v10)
      {
        if (*v6)
        {
          v332 = 0;
          if (_MergedGlobals_48)
          {
            v15 = dword_1ED641AB8[0] + 2;
          }

          else
          {
            qword_1ED641B08 = 0;
            unk_1ED641AF8 = 0u;
            unk_1ED641AE8 = 0u;
            unk_1ED641AD8 = 0u;
            unk_1ED641AC8 = 0u;
            *dword_1ED641AB8 = 0u;
            v15 = 3;
            _MergedGlobals_48 = 1;
          }

          dword_1ED641AB8[0] = v15;
          v347 = 0;
          v348 = v4;
          v349 = 1;
          v333 = 0;
          WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(dword_1ED641AB8);
          WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(&v332, v16);
          v343 = 0;
          WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(dword_1ED641AB8);
          WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(&v342, v17);
          goto LABEL_18;
        }

        LOBYTE(v347) = 0;
        v349 = 0;
        v343 = 0;
        if (v4)
        {
          WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(v4);
        }

        WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(&v342, v9);
        v269 = *v6;
      }

      else
      {
        v266 = *v6;
        v267 = *(v6 + 1);
        *v6 = 0;
        *(v6 + 1) = 0;
        v268 = *(v6 + 3);
        if (v268)
        {
          if (v267)
          {
            (*(*v268 + 16))(v268, v266);
            v269 = *a2;
            if (*a2)
            {
              goto LABEL_588;
            }
          }

          else
          {
            v269 = 0;
          }

          v7 = a1;
          v6 = a2;
        }

        else
        {
          v269 = 0;
        }

        LOBYTE(v347) = 0;
        v349 = 0;
      }

      v270 = *(v6 + 1);
      *v6 = 0;
      *(v6 + 1) = 0;
      v271 = *(v6 + 3);
      if (v271 && v270)
      {
        (*(*v271 + 16))(v271, v269);
      }

LABEL_18:
      v18 = *(v6 + 1);
      v19 = ((*(v6 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v20 = *v6;
      v21 = v19 - *v6;
      v22 = v18 >= v21;
      v23 = v18 - v21;
      if (v22 && v23 > 3)
      {
        *(v6 + 2) = v19 + 1;
        if (v19)
        {
          v10 = *v19 | 0x100000000;
          if (v20)
          {
            goto LABEL_23;
          }

          goto LABEL_614;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 1) = 0;
        v318 = *(v6 + 3);
        if (v318)
        {
          if (v18)
          {
            (*(*v318 + 16))(v318);
            v20 = *a2;
            v18 = *(a2 + 1);
            goto LABEL_613;
          }
        }

        else
        {
          v18 = 0;
        }

        v20 = 0;
      }

LABEL_613:
      v7 = a1;
      v6 = a2;
      *a2 = 0;
      *(a2 + 1) = 0;
      v319 = *(a2 + 3);
      if (v319)
      {
        if (v18)
        {
          (*(*v319 + 16))(v319);
          v10 = 0;
          v7 = a1;
          v6 = a2;
          v20 = *a2;
          if (*a2)
          {
LABEL_23:
            if ((v8 & 0xFFFF000000) == 0)
            {
              goto LABEL_588;
            }

            LOWORD(v332) = v8;
            BYTE2(v332) = BYTE2(v8);
            if ((v349 & 1) == 0)
            {
              goto LABEL_588;
            }

            v333 = 0;
            if (_MergedGlobals_48)
            {
              v24 = dword_1ED641AB8[0] + 1;
            }

            else
            {
              qword_1ED641B08 = 0;
              unk_1ED641AF8 = 0u;
              unk_1ED641AE8 = 0u;
              unk_1ED641AD8 = 0u;
              unk_1ED641AC8 = 0u;
              *dword_1ED641AB8 = 0u;
              v24 = 2;
              _MergedGlobals_48 = 1;
            }

            dword_1ED641AB8[0] = v24;
            v8 = v348;
            v348 = dword_1ED641AB8;
            if ((v10 & 0x100000000) == 0)
            {
              goto LABEL_588;
            }

            LODWORD(v335) = v10;
            LOWORD(v373) = v332;
            BYTE2(v373) = BYTE2(v332);
            v374 = 0;
            dword_1ED641AB8[0] = v24 + 1;
            LODWORD(v376) = v10;
            v25 = 1;
            LOBYTE(v377) = 1;
            v334 = 0;
            WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(dword_1ED641AB8);
            WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(&v333, v26);
LABEL_29:
            if (v349 == 1)
            {
              v27 = v348;
              v348 = 0;
              if (v27)
              {
                WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(v27);
              }

              WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(&v347, v20);
            }

            if (v25)
            {
              if (*v6)
              {
                LOWORD(v332) = v373;
                BYTE2(v332) = BYTE2(v373);
                v333 = 0;
                if (_MergedGlobals_48)
                {
                  v28 = dword_1ED641AB8[0] + 2;
                }

                else
                {
                  qword_1ED641B08 = 0;
                  unk_1ED641AF8 = 0u;
                  unk_1ED641AE8 = 0u;
                  unk_1ED641AD8 = 0u;
                  unk_1ED641AC8 = 0u;
                  *dword_1ED641AB8 = 0u;
                  v28 = 3;
                  _MergedGlobals_48 = 1;
                }

                LODWORD(v335) = v10;
                LOWORD(v324) = v373;
                BYTE2(v324) = BYTE2(v373);
                dword_1ED641AB8[0] = v28;
                v325 = 0;
                v326 = v8;
                LODWORD(v327) = v10;
                LOBYTE(v328) = 1;
                v334 = 0;
                WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(dword_1ED641AB8);
                WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(&v333, v29);
                v375 = 0;
                WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(dword_1ED641AB8);
                WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(&v374, v30);
                *v7 = v324;
                *(v7 + 2) = BYTE2(v324);
                *(v7 + 8) = 0;
                if (_MergedGlobals_48)
                {
                  v31 = dword_1ED641AB8[0] + 1;
                }

                else
                {
                  qword_1ED641B08 = 0;
                  unk_1ED641AF8 = 0u;
                  unk_1ED641AE8 = 0u;
                  unk_1ED641AD8 = 0u;
                  unk_1ED641AC8 = 0u;
                  *dword_1ED641AB8 = 0u;
                  v31 = 2;
                  _MergedGlobals_48 = 1;
                }

                dword_1ED641AB8[0] = v31;
                *(v7 + 16) = v326;
                *(v7 + 24) = v327;
                *(v7 + 96) = 3;
                *(v7 + 104) = 1;
                v326 = 0;
                WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(dword_1ED641AB8);
                WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(&v325, v32);
                return;
              }

              v375 = 0;
              if (v8)
              {
                WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(v8);
              }

              WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(&v374, v20);
              v275 = *v6;
            }

            else
            {
              v272 = *v6;
              v273 = *(v6 + 1);
              *v6 = 0;
              *(v6 + 1) = 0;
              v274 = *(v6 + 3);
              if (v274)
              {
                if (v273)
                {
                  (*(*v274 + 16))(v274, v272);
                  v275 = *a2;
                  if (*a2)
                  {
                    goto LABEL_588;
                  }
                }

                else
                {
                  v275 = 0;
                }

                v7 = a1;
                v6 = a2;
              }

              else
              {
                v275 = 0;
              }
            }

            v276 = *(v6 + 1);
            *v6 = 0;
            *(v6 + 1) = 0;
            v277 = *(v6 + 3);
            if (!v277 || !v276)
            {
LABEL_536:
              *v7 = 0;
              *(v7 + 104) = 0;
              return;
            }

LABEL_498:
            (*(*v277 + 16))(v277, v275);
            goto LABEL_536;
          }
        }
      }

LABEL_614:
      v25 = 0;
      LOBYTE(v373) = 0;
      LOBYTE(v377) = 0;
      goto LABEL_29;
    }

    if (a3 == 4)
    {
      v33 = IPC::Decoder::decode<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>>>(a2);
      v34 = *(v6 + 1);
      v35 = ((*(v6 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v36 = *v6;
      v37 = v35 - *v6;
      v22 = v34 >= v37;
      v38 = v34 - v37;
      v39 = v22 && v38 > 7;
      v322 = v33;
      if (v39)
      {
        *(v6 + 2) = v35 + 1;
        if (v35)
        {
          v40 = *v35;
          v3 = &v333;
          v370 = 0;
          v371 = 0;
          v323 = v40;
          if (v40 >= 0x10000)
          {
            v278 = 0;
            v5 = -1;
            do
            {
              _ZN3IPC7Decoder6decodeIN7WebCore19SpaceSeparatedPointINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(&v332, v6);
              v279 = v334;
              if (v334)
              {
                if (HIDWORD(v371) == v371)
                {
                  _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEE14appendSlowCaseILNS_13FailureActionE0ES8_EEbOT0_(&v370, &v332);
                }

                else
                {
                  v280 = 0;
                  v281 = 0;
                  v282 = (v370 + 16 * HIDWORD(v371));
                  v283 = &v332;
                  do
                  {
                    v284 = v280;
                    v36 = *v283;
                    if (*v283 == -1)
                    {
                      *&v282[8 * v281] = -1;
                    }

                    else
                    {
                      v362 = &v282[8 * v281];
                      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v36), v36, &v362);
                    }

                    *v283 = -1;
                    v280 = 1;
                    v283 = &v333;
                    v281 = 1;
                  }

                  while ((v284 & 1) == 0);
                  ++HIDWORD(v371);
                  v7 = a1;
                  v6 = a2;
                  v40 = v323;
                }
              }

              if (v334 == 1)
              {
                for (i = 8; i != -8; i -= 8)
                {
                  v286 = *(&v332 + i);
                  if (v286 != -1 && (v286 & 0xFE000000000000) != 0)
                  {
                    v365 = (v286 & 0xFF00FFFFFFFFFFFFLL);
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v365);
                  }
                }
              }

              if ((v279 & 1) == 0)
              {
                goto LABEL_528;
              }

              ++v278;
            }

            while (v278 != v40);
            v288 = HIDWORD(v371);
            if (v371 > HIDWORD(v371))
            {
              v289 = v370;
              if (HIDWORD(v371))
              {
                if (HIDWORD(v371) >> 28)
                {
                  __break(0xC471u);
                  JUMPOUT(0x19D81A8FCLL);
                }

                v7 = a1;
                v6 = a2;
                v290 = WTF::fastMalloc((16 * HIDWORD(v371)));
                LODWORD(v371) = v288;
                v370 = v290;
                if (v290 != v289)
                {
                  _ZN3WTF11VectorMoverILb0EN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEE4moveEPS8_SA_SA_(v289, v289 + 16 * v288, v290);
                }
              }

              if (v289)
              {
                if (v370 == v289)
                {
                  v370 = 0;
                  LODWORD(v371) = 0;
                }

                WTF::fastFree(v289, v36);
                v7 = a1;
                v6 = a2;
              }
            }
          }

          else if (v40)
          {
            v41 = WTF::fastMalloc((16 * v40));
            v42 = 0;
            LODWORD(v371) = v40;
            v370 = v41;
            v5 = -1;
            while (1)
            {
              _ZN3IPC7Decoder6decodeIN7WebCore19SpaceSeparatedPointINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(&v332, v6);
              v43 = v334;
              if (v334)
              {
                if (HIDWORD(v371) == v371)
                {
                  _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEE14appendSlowCaseILNS_13FailureActionE0ES8_EEbOT0_(&v370, &v332);
                }

                else
                {
                  v44 = 0;
                  v45 = 0;
                  v46 = (v370 + 16 * HIDWORD(v371));
                  v47 = &v332;
                  do
                  {
                    v48 = v44;
                    v36 = *v47;
                    if (*v47 == -1)
                    {
                      *&v46[8 * v45] = -1;
                    }

                    else
                    {
                      v362 = &v46[8 * v45];
                      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v36), v36, &v362);
                    }

                    *v47 = -1;
                    v44 = 1;
                    v47 = &v333;
                    v45 = 1;
                  }

                  while ((v48 & 1) == 0);
                  ++HIDWORD(v371);
                  v7 = a1;
                  v6 = a2;
                  v40 = v323;
                }
              }

              if (v334 == 1)
              {
                for (j = 8; j != -8; j -= 8)
                {
                  v50 = *(&v332 + j);
                  if (v50 != -1 && (v50 & 0xFE000000000000) != 0)
                  {
                    v365 = (v50 & 0xFF00FFFFFFFFFFFFLL);
                    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v365);
                  }
                }
              }

              if ((v43 & 1) == 0)
              {
                break;
              }

              if (++v42 == v40)
              {
                goto LABEL_69;
              }
            }

LABEL_528:
            v344 = 0;
            _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v370, v36);
LABEL_529:
            v291 = *v6;
            v292 = *(v6 + 1);
            *v6 = 0;
            *(v6 + 1) = 0;
            v293 = *(v6 + 3);
            if (v293)
            {
              if (v292)
              {
                (*(*v293 + 16))(v293, v291);
                v294 = *a2;
                if (*a2)
                {
                  goto LABEL_588;
                }
              }

              else
              {
                v294 = 0;
              }

              v7 = a1;
              v6 = a2;
            }

            else
            {
              v294 = 0;
            }

            goto LABEL_531;
          }

LABEL_69:
          v52 = v370;
          v342 = v370;
          v53 = v371;
          v54 = HIDWORD(v371);
          v370 = 0;
          v371 = 0;
          v343 = __PAIR64__(v54, v53);
          v3 = 1;
          v344 = 1;
          _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v370, v36);
          if (*v6)
          {
            v342 = 0;
            v343 = 0;
            v332 = 0;
            v333 = 0;
            v347 = v52;
            v348 = __PAIR64__(v54, v53);
            v349 = 1;
            _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v332, v55);
            _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v342, v56);
            if (*v6)
            {
              if (!(v322 >> 24))
              {
                goto LABEL_588;
              }

              LOWORD(v332) = v322;
              BYTE2(v332) = BYTE2(v322);
              v347 = 0;
              v348 = 0;
              LOWORD(v373) = v322;
              BYTE2(v373) = BYTE2(v322);
              v333 = 0;
              v334 = 0;
              v374 = v52;
              v375 = __PAIR64__(v54, v53);
              LOBYTE(v376) = 1;
              _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v333, v57);
              _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v347, v58);
              if (*v6)
              {
                LOWORD(v332) = v373;
                BYTE2(v332) = BYTE2(v373);
                v374 = 0;
                v375 = 0;
                LOWORD(v324) = v373;
                BYTE2(v324) = BYTE2(v373);
                v333 = 0;
                v334 = 0;
                _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v333, v59);
                LOBYTE(v327) = 1;
                _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v374, v60);
                *v7 = v324;
                *(v7 + 2) = BYTE2(v324);
                v325 = 0;
                v326 = 0;
                *(v7 + 8) = v52;
                *(v7 + 16) = v53;
                *(v7 + 20) = v54;
                *(v7 + 96) = 4;
                *(v7 + 104) = 1;
                _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v325, v61);
                return;
              }

              _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v374, v59);
              v275 = *v6;
              goto LABEL_535;
            }

            _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v347, v57);
            v297 = *v6;
            goto LABEL_533;
          }

          _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(&v342, v55);
          v294 = *v6;
LABEL_531:
          v295 = *(v6 + 1);
          *v6 = 0;
          *(v6 + 1) = 0;
          v296 = *(v6 + 3);
          if (!v296)
          {
            v297 = 0;
            goto LABEL_533;
          }

          if (v295)
          {
            v306 = (*(*v296 + 16))(v296, v294);
            v297 = *a2;
            if (*a2)
            {
              __break(1u);
              goto LABEL_583;
            }
          }

          else
          {
            v297 = 0;
          }

          v7 = a1;
          v6 = a2;
LABEL_533:
          v298 = *(v6 + 1);
          *v6 = 0;
          *(v6 + 1) = 0;
          v299 = *(v6 + 3);
          if (v299)
          {
            if (v298)
            {
              (*(*v299 + 16))(v299, v297);
              v275 = *a2;
              if (*a2)
              {
                goto LABEL_588;
              }
            }

            else
            {
              v275 = 0;
            }

            v7 = a1;
            v6 = a2;
          }

          else
          {
            v275 = 0;
          }

LABEL_535:
          v300 = *(v6 + 1);
          *v6 = 0;
          *(v6 + 1) = 0;
          v277 = *(v6 + 3);
          if (!v277 || !v300)
          {
            goto LABEL_536;
          }

          goto LABEL_498;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 1) = 0;
        v314 = *(v6 + 3);
        if (v314)
        {
          if (v34)
          {
            (*(*v314 + 16))(v314);
            v34 = *(a2 + 1);
          }
        }

        else
        {
          v34 = 0;
        }
      }

      v7 = a1;
      v6 = a2;
      *a2 = 0;
      *(a2 + 1) = 0;
      v315 = *(a2 + 3);
      if (v315 && v34)
      {
        (*(*v315 + 16))(v315);
      }

      goto LABEL_529;
    }

    v3 = IPC::Decoder::decode<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>>>(a2);
    v5 = &v347;
    IPC::Decoder::decode<WebCore::Style::Position>(&v347, v6);
    v194 = *(v6 + 1);
    v195 = ((*(v6 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v196 = *v6;
    v197 = v195 - *v6;
    v22 = v194 >= v197;
    v198 = v194 - v197;
    if (v22 && v198 > 7)
    {
      *(v6 + 2) = v195 + 1;
      if (v195)
      {
        v200 = *v195;
        v366 = 0;
        v365 = 0;
        if (v200 >= 0x2E8B)
        {
          do
          {
            IPC::Decoder::decode<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>>(&v373, v6);
            v301 = v379;
            if (v379)
            {
              if (HIDWORD(v366) == v366)
              {
                WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>>(&v365, &v373);
              }

              else
              {
                mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,(mpark::detail::Trait)1>::move_constructor(v365 + 88 * HIDWORD(v366), &v373);
                ++HIDWORD(v366);
              }
            }

            if (v379 == 1 && v378 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,(mpark::detail::Trait)1> &>(&v373);
            }

            if ((v301 & 1) == 0)
            {
              goto LABEL_555;
            }

            --v200;
          }

          while (v200);
          v302 = HIDWORD(v366);
          if (v366 > HIDWORD(v366))
          {
            v303 = v365;
            if (HIDWORD(v366))
            {
              if (HIDWORD(v366) >= 0x2E8BA2F)
              {
                __break(0xC471u);
                JUMPOUT(0x19D81A904);
              }

              v7 = a1;
              v6 = a2;
              v304 = WTF::fastMalloc((88 * HIDWORD(v366)));
              LODWORD(v366) = 88 * v302 / 0x58;
              v365 = v304;
              if (v304 != v303)
              {
                WTF::VectorMover<false,mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>>::move(v303, v303 + 88 * v302, v304);
              }
            }

            if (v303)
            {
              if (v365 == v303)
              {
                v365 = 0;
                LODWORD(v366) = 0;
              }

              WTF::fastFree(v303, v196);
              v7 = a1;
              v6 = a2;
            }
          }
        }

        else if (v200)
        {
          v201 = WTF::fastMalloc((88 * v200));
          LODWORD(v366) = 88 * v200 / 0x58u;
          v365 = v201;
          while (1)
          {
            IPC::Decoder::decode<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>>(&v373, v6);
            v202 = v379;
            if (v379)
            {
              if (HIDWORD(v366) == v366)
              {
                WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>>(&v365, &v373);
              }

              else
              {
                mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,(mpark::detail::Trait)1>::move_constructor(v365 + 88 * HIDWORD(v366), &v373);
                ++HIDWORD(v366);
              }
            }

            if (v379 == 1 && v378 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,(mpark::detail::Trait)1> &>(&v373);
            }

            if ((v202 & 1) == 0)
            {
              break;
            }

            if (!--v200)
            {
              goto LABEL_386;
            }
          }

LABEL_555:
          v344 = 0;
          WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v365, v196);
LABEL_556:
          v297 = *v6;
          v305 = *(v6 + 1);
          *v6 = 0;
          *(v6 + 1) = 0;
          v306 = *(v6 + 3);
          if (!v306)
          {
            v209 = 0;
LABEL_558:
            LOBYTE(v370) = 0;
            v372 = 0;
            goto LABEL_559;
          }

LABEL_583:
          if (v305)
          {
            (*(*v306 + 16))(v306, v297);
            v209 = *a2;
            if (*a2)
            {
              goto LABEL_588;
            }
          }

          else
          {
            v209 = 0;
          }

          v7 = a1;
          v6 = a2;
          goto LABEL_558;
        }

LABEL_386:
        v203 = v365;
        v365 = 0;
        v342 = v203;
        v204 = v366;
        v205 = HIDWORD(v366);
        v366 = 0;
        v343 = __PAIR64__(v205, v204);
        v344 = 1;
        WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v365, v196);
        if (*v6)
        {
          v207 = v342;
          v342 = 0;
          v343 = 0;
          v373 = 0;
          v374 = 0;
          v370 = v207;
          v371 = __PAIR64__(v205, v204);
          v372 = 1;
          WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v373, v206);
          WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v342, v208);
          goto LABEL_388;
        }

        LOBYTE(v370) = 0;
        v372 = 0;
        WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v342, v206);
        v209 = *v6;
LABEL_559:
        v307 = *(v6 + 1);
        *v6 = 0;
        *(v6 + 1) = 0;
        v308 = *(v6 + 3);
        if (v308 && v307)
        {
          (*(*v308 + 16))(v308, v209);
        }

LABEL_388:
        if (*v6)
        {
          if ((v3 & 0xFFFF000000) == 0)
          {
            goto LABEL_588;
          }

          LOWORD(v373) = v3;
          BYTE2(v373) = BYTE2(v3);
          if (v349 != 1)
          {
            goto LABEL_588;
          }

          v210 = 0;
          v211 = (v5 + 8);
          v212 = &v347;
          v213 = 8;
          v214 = &v374;
          do
          {
            v215 = v210;
            v216 = *v212;
            if (*v212 == -1)
            {
              *(&v373 + v213) = -1;
            }

            else
            {
              v365 = v214;
              _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v216), v216, &v365);
            }

            *v212 = -1;
            v210 = 1;
            v212 = v211;
            v214 = &v375;
            v213 = 16;
          }

          while ((v215 & 1) == 0);
          if ((v372 & 1) == 0)
          {
            goto LABEL_588;
          }

          v217 = 0;
          v218 = 0;
          v376 = v370;
          v219 = v371;
          v370 = 0;
          v371 = 0;
          LOWORD(v324) = v373;
          BYTE2(v324) = BYTE2(v373);
          v377 = v219;
          do
          {
            v220 = v217;
            v221 = *(&v374 + v218);
            if (v221 == -1)
            {
              (&v324)[v218 + 1] = -1;
            }

            else
            {
              v365 = &(&v324)[v218 + 1];
              _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v221), v221, &v365);
            }

            *(&v374 + v218) = -1;
            v217 = 1;
            v218 = 1;
          }

          while ((v220 & 1) == 0);
          v327 = v376;
          v222 = v377;
          v376 = 0;
          v377 = 0;
          v328 = v222;
          v329 = 1;
          WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v376, v221);
          v223 = 16;
          v6 = a2;
          do
          {
            v224 = *(&v373 + v223);
            if (v224 != -1 && (v224 & 0xFE000000000000) != 0)
            {
              v342 = v224 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v342);
            }

            v223 -= 8;
          }

          while (v223);
        }

        else
        {
          LOBYTE(v324) = 0;
          v329 = 0;
        }

        if (v372 == 1)
        {
          WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v370, v209);
        }

        if (v349 == 1)
        {
          for (k = 1; k != -1; --k)
          {
            v227 = (&v347)[k];
            if (v227 != -1 && (v227 & 0xFE000000000000) != 0)
            {
              v373 = v227 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v373);
            }
          }
        }

        if ((v329 & 1) == 0)
        {
          v209 = *v6;
          v309 = *(v6 + 1);
          *v6 = 0;
          *(v6 + 1) = 0;
          v310 = *(v6 + 3);
          if (v310)
          {
            if (v309)
            {
              (*(*v310 + 16))(v310, v209);
            }
          }
        }

        if (*v6)
        {
          if ((v329 & 1) == 0)
          {
            goto LABEL_588;
          }

          v229 = 0;
          v230 = 0;
          LOWORD(v373) = v324;
          BYTE2(v373) = BYTE2(v324);
          do
          {
            v231 = v229;
            v232 = *(&v325 + v230);
            if (v232 == -1)
            {
              *(&v373 + v230 + 1) = -1;
            }

            else
            {
              v347 = (&v373 + v230 + 1);
              _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v232), v232, &v347);
            }

            *(&v325 + v230) = -1;
            v229 = 1;
            v230 = 1;
          }

          while ((v231 & 1) == 0);
          v233 = 0;
          v234 = 0;
          v376 = v327;
          v235 = v328;
          v327 = 0;
          v328 = 0;
          LOWORD(v332) = v373;
          BYTE2(v332) = BYTE2(v373);
          v377 = v235;
          do
          {
            v236 = v233;
            v237 = *(&v374 + v234);
            if (v237 == -1)
            {
              *(&v332 + v234 + 1) = -1;
            }

            else
            {
              v347 = &v332 + v234 + 1;
              _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v237), v237, &v347);
            }

            *(&v374 + v234) = -1;
            v233 = 1;
            v234 = 1;
          }

          while ((v236 & 1) == 0);
          v335 = v376;
          v238 = v377;
          v376 = 0;
          v377 = 0;
          v336 = v238;
          v337 = 1;
          WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v376, v237);
          v239 = 16;
          do
          {
            v240 = *(&v373 + v239);
            if (v240 != -1 && (v240 & 0xFE000000000000) != 0)
            {
              v342 = v240 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v342);
            }

            v239 -= 8;
          }

          while (v239);
        }

        else
        {
          LOBYTE(v332) = 0;
          v337 = 0;
        }

        if (v329 == 1)
        {
          WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v327, v209);
          v242 = 2;
          do
          {
            v243 = (&v324)[v242];
            if (v243 != -1 && (v243 & 0xFE000000000000) != 0)
            {
              v373 = v243 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v373);
            }

            --v242;
          }

          while (v242 * 8);
        }

        if ((v337 & 1) == 0)
        {
          v311 = *v6;
          v312 = *(v6 + 1);
          *v6 = 0;
          *(v6 + 1) = 0;
          v313 = *(v6 + 3);
          if (!v313)
          {
            goto LABEL_536;
          }

          if (!v312)
          {
            goto LABEL_536;
          }

          (*(*v313 + 16))(v313, v311);
          v7 = a1;
          if ((v337 & 1) == 0)
          {
            goto LABEL_536;
          }
        }

        v245 = 0;
        v246 = 0;
        *v7 = v332;
        *(v7 + 2) = BYTE2(v332);
        do
        {
          v247 = v245;
          v248 = *(&v333 + v246);
          if (v248 == -1)
          {
            *(v7 + 8 * v246 + 8) = -1;
          }

          else
          {
            v324 = (v7 + 8 * v246 + 8);
            _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v248), v248, &v324);
          }

          *(&v333 + v246) = -1;
          v245 = 1;
          v246 = 1;
        }

        while ((v247 & 1) == 0);
        *(v7 + 24) = v335;
        v249 = v336;
        v335 = 0;
        v336 = 0;
        *(v7 + 32) = v249;
        *(v7 + 96) = 5;
        *(v7 + 104) = 1;
        if (v337)
        {
          WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v335, v248);
          v250 = 16;
          do
          {
            v251 = *(&v332 + v250);
            if (v251 != -1 && (v251 & 0xFE000000000000) != 0)
            {
              v373 = v251 & 0xFF00FFFFFFFFFFFFLL;
              WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v373);
            }

            v250 -= 8;
          }

          while (v250);
        }

        return;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 1) = 0;
      v316 = *(v6 + 3);
      if (v316)
      {
        if (v194)
        {
          (*(*v316 + 16))(v316);
          v194 = *(a2 + 1);
        }
      }

      else
      {
        v194 = 0;
      }
    }

    v7 = a1;
    v6 = a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v317 = *(a2 + 3);
    if (v317 && v194)
    {
      (*(*v317 + 16))(v317);
    }

    goto LABEL_556;
  }

  _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v342, a2);
  _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v370, v6);
  _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v365, v6);
  _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v362, v6);
  if (*v6)
  {
    if ((v343 & 1) == 0)
    {
      goto LABEL_588;
    }

    if (v342 == -1)
    {
      v353[0] = -1;
    }

    else
    {
      v359 = v353;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v342), v342, &v359);
    }

    v342 = -1;
    if ((v371 & 1) == 0)
    {
      goto LABEL_588;
    }

    if (v370 == -1)
    {
      v351[0] = -1;
    }

    else
    {
      v359 = v351;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v370), v370, &v359);
    }

    v370 = -1;
    if ((v366 & 1) == 0)
    {
      goto LABEL_588;
    }

    if (v365 == -1)
    {
      v369 = -1;
    }

    else
    {
      v359 = &v369;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v365), v365, &v359);
    }

    v365 = -1;
    if ((v363 & 1) == 0)
    {
      goto LABEL_588;
    }

    if (v362 == -1)
    {
      v368 = -1;
    }

    else
    {
      v359 = &v368;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v362), v362, &v359);
    }

    v362 = -1;
    if (v353[0] == -1)
    {
      v332 = -1;
    }

    else
    {
      v359 = &v332;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v353[0]), v353[0], &v359);
    }

    v353[0] = -1;
    if (v351[0] == -1)
    {
      v333 = -1;
    }

    else
    {
      v357 = &v333;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v351[0]), v351[0], &v357);
    }

    v351[0] = -1;
    if (v369 == -1)
    {
      v334 = -1;
    }

    else
    {
      v357 = &v334;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v369), v369, &v357);
    }

    v369 = -1;
    if (v368 == -1)
    {
      v335 = -1;
    }

    else
    {
      v357 = &v335;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v368), v368, &v357);
    }

    v62 = 0;
    v368 = -1;
    do
    {
      v63 = *(&v332 + v62 * 8);
      if (v63 == -1)
      {
        (&v347)[v62] = -1;
      }

      else
      {
        v357 = &(&v347)[v62];
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4copyERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v63), v63, &v357);
      }

      ++v62;
    }

    while (v62 != 4);
    v350 = 1;
    for (m = 24; m != -8; m -= 8)
    {
      v65 = *(&v332 + m);
      if (v65 != -1 && (v65 & 0xFE000000000000) != 0)
      {
        v359 = (v65 & 0xFF00FFFFFFFFFFFFLL);
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v359);
      }
    }

    if (v368 != -1 && (v368 & 0xFE000000000000) != 0)
    {
      v359 = (v368 & 0xFF00FFFFFFFFFFFFLL);
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v359);
    }

    if (v369 != -1 && (v369 & 0xFE000000000000) != 0)
    {
      v359 = (v369 & 0xFF00FFFFFFFFFFFFLL);
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v359);
    }

    if (v351[0] != -1 && (v351[0] & 0xFE000000000000) != 0)
    {
      v359 = (v351[0] & 0xFF00FFFFFFFFFFFFLL);
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v359);
    }

    if (v353[0] != -1 && (v353[0] & 0xFE000000000000) != 0)
    {
      v359 = (v353[0] & 0xFF00FFFFFFFFFFFFLL);
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v359);
    }
  }

  else
  {
    LOBYTE(v347) = 0;
    v350 = 0;
  }

  if (v363 == 1 && v362 != -1 && (v362 & 0xFE000000000000) != 0)
  {
    v332 = (v362 & 0xFF00FFFFFFFFFFFFLL);
    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
  }

  if (v366 == 1 && v365 != -1 && (v365 & 0xFE000000000000) != 0)
  {
    v332 = (v365 & 0xFF00FFFFFFFFFFFFLL);
    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
  }

  if (v371 == 1 && v370 != -1 && (v370 & 0xFE000000000000) != 0)
  {
    v332 = (v370 & 0xFF00FFFFFFFFFFFFLL);
    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
  }

  if (v343 == 1 && v342 != -1 && (v342 & 0xFE000000000000) != 0)
  {
    v332 = (v342 & 0xFF00FFFFFFFFFFFFLL);
    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
  }

  if ((v350 & 1) == 0)
  {
    v254 = *v6;
    v255 = *(v6 + 1);
    *v6 = 0;
    *(v6 + 1) = 0;
    v256 = *(v6 + 3);
    if (v256)
    {
      if (v255)
      {
        (*(*v256 + 16))(v256, v254);
      }
    }
  }

  v68 = &v370;
  _ZN3IPC7Decoder6decodeIN7WebCore38MinimallySerializingSpaceSeparatedSizeINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(&v370, v6);
  _ZN3IPC7Decoder6decodeIN7WebCore38MinimallySerializingSpaceSeparatedSizeINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(&v365, v6);
  _ZN3IPC7Decoder6decodeIN7WebCore38MinimallySerializingSpaceSeparatedSizeINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(&v362, v6);
  _ZN3IPC7Decoder6decodeIN7WebCore38MinimallySerializingSpaceSeparatedSizeINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(&v359, v6);
  if (*v6)
  {
    if (v372 != 1)
    {
      goto LABEL_588;
    }

    v69 = 0;
    v70 = &v339;
    v71 = &v357;
    do
    {
      v72 = v69;
      v73 = *v68;
      if (*v68 == -1)
      {
        *v71 = -1;
      }

      else
      {
        v368 = v71;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v73), v73, &v368);
      }

      *v68 = -1;
      v69 = 1;
      v71 = &v358;
      v68 = &v371;
    }

    while ((v72 & 1) == 0);
    if (v367 != 1)
    {
      goto LABEL_588;
    }

    v74 = 0;
    v75 = &v365;
    v76 = v355;
    do
    {
      v77 = v74;
      v78 = *v75;
      if (*v75 == -1)
      {
        *v76 = -1;
      }

      else
      {
        v368 = v76;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v78), v78, &v368);
      }

      *v75 = -1;
      v74 = 1;
      v76 = &v356;
      v75 = &v366;
    }

    while ((v77 & 1) == 0);
    if (v364 != 1)
    {
      goto LABEL_588;
    }

    v79 = 0;
    v80 = &v362;
    v81 = v353;
    do
    {
      v82 = v79;
      v83 = *v80;
      if (*v80 == -1)
      {
        *v81 = -1;
      }

      else
      {
        v368 = v81;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v83), v83, &v368);
      }

      *v80 = -1;
      v79 = 1;
      v81 = &v354;
      v80 = &v363;
    }

    while ((v82 & 1) == 0);
    if (v361 != 1)
    {
      goto LABEL_588;
    }

    v84 = 0;
    v85 = &v359;
    v86 = v351;
    do
    {
      v87 = v84;
      v88 = *v85;
      if (*v85 == -1)
      {
        *v86 = -1;
      }

      else
      {
        v368 = v86;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v88), v88, &v368);
      }

      *v85 = -1;
      v84 = 1;
      v86 = &v352;
      v85 = &v360;
    }

    while ((v87 & 1) == 0);
    v89 = 0;
    v90 = &v332;
    v91 = &v357;
    do
    {
      v92 = v89;
      v93 = *v91;
      if (*v91 == -1)
      {
        *v90 = -1;
      }

      else
      {
        v368 = v90;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v93), v93, &v368);
      }

      *v91 = -1;
      v89 = 1;
      v91 = &v358;
      v90 = &v333;
    }

    while ((v92 & 1) == 0);
    v94 = 0;
    v95 = v355;
    v96 = 16;
    v97 = &v334;
    do
    {
      v98 = v94;
      v99 = *v95;
      if (*v95 == -1)
      {
        *(&v332 + v96) = -1;
      }

      else
      {
        v368 = v97;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v99), v99, &v368);
      }

      *v95 = -1;
      v94 = 1;
      v95 = &v356;
      v97 = &v335;
      v96 = 24;
    }

    while ((v98 & 1) == 0);
    v100 = 0;
    v101 = v353;
    v102 = 32;
    v103 = &v336;
    do
    {
      v104 = v100;
      v105 = *v101;
      if (*v101 == -1)
      {
        *(&v332 + v102) = -1;
      }

      else
      {
        v368 = v103;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v105), v105, &v368);
      }

      *v101 = -1;
      v100 = 1;
      v101 = &v354;
      v103 = &v337;
      v102 = 40;
    }

    while ((v104 & 1) == 0);
    v106 = 0;
    v107 = v351;
    v108 = &v338;
    do
    {
      v109 = v106;
      v110 = *v107;
      if (*v107 == -1)
      {
        *v108 = -1;
      }

      else
      {
        v368 = v108;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v110), v110, &v368);
      }

      *v107 = -1;
      v106 = 1;
      v107 = &v352;
      v108 = &v339;
    }

    while ((v109 & 1) == 0);
    v111 = 0;
    v112 = &v341;
    do
    {
      v113 = 0;
      v114 = 0;
      do
      {
        v115 = v113;
        v116 = *(&v332 + 2 * v111 + v114);
        if (v116 == -1)
        {
          *(&v342 + 2 * v111 + v114) = -1;
        }

        else
        {
          v368 = (&v342 + 2 * v111 + v114);
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4copyERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v116), v116, &v368);
        }

        v113 = 1;
        v114 = 1;
      }

      while ((v115 & 1) == 0);
      ++v111;
      v112 += 2;
    }

    while (v111 != 4);
    v346 = 1;
    v117 = &v340;
    v7 = a1;
    v6 = a2;
    do
    {
      for (n = 0; n != -2; --n)
      {
        v119 = v70[n];
        if (v119 != -1 && (v119 & 0xFE000000000000) != 0)
        {
          v369 = v119 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v369);
        }
      }

      v117 -= 2;
      v70 -= 2;
    }

    while (v117 != &v332);
    for (ii = 1; ii != -1; --ii)
    {
      v122 = v351[ii];
      if (v122 != -1 && (v122 & 0xFE000000000000) != 0)
      {
        v369 = v122 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v369);
      }
    }

    for (jj = 1; jj != -1; --jj)
    {
      v125 = v353[jj];
      if (v125 != -1 && (v125 & 0xFE000000000000) != 0)
      {
        v369 = v125 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v369);
      }
    }

    for (kk = 8; kk != -8; kk -= 8)
    {
      v128 = *&v355[kk];
      if (v128 != -1 && (v128 & 0xFE000000000000) != 0)
      {
        v369 = v128 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v369);
      }
    }

    for (mm = 1; mm != -1; --mm)
    {
      v131 = (&v357)[mm];
      if (v131 != -1 && (v131 & 0xFE000000000000) != 0)
      {
        v369 = v131 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v369);
      }
    }
  }

  else
  {
    LOBYTE(v342) = 0;
    v346 = 0;
  }

  if (v361 == 1)
  {
    for (nn = 1; nn != -1; --nn)
    {
      v134 = (&v359)[nn];
      if (v134 != -1 && (v134 & 0xFE000000000000) != 0)
      {
        v332 = (v134 & 0xFF00FFFFFFFFFFFFLL);
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
      }
    }
  }

  if (v364 == 1)
  {
    for (i1 = 8; i1 != -8; i1 -= 8)
    {
      v137 = *(&v362 + i1);
      if (v137 != -1 && (v137 & 0xFE000000000000) != 0)
      {
        v332 = (v137 & 0xFF00FFFFFFFFFFFFLL);
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
      }
    }
  }

  if (v367 == 1)
  {
    for (i2 = 8; i2 != -8; i2 -= 8)
    {
      v140 = *(&v365 + i2);
      if (v140 != -1 && (v140 & 0xFE000000000000) != 0)
      {
        v332 = (v140 & 0xFF00FFFFFFFFFFFFLL);
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
      }
    }
  }

  if (v372 == 1)
  {
    for (i3 = 8; i3 != -8; i3 -= 8)
    {
      v143 = *(&v370 + i3);
      if (v143 != -1 && (v143 & 0xFE000000000000) != 0)
      {
        v332 = (v143 & 0xFF00FFFFFFFFFFFFLL);
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
      }
    }
  }

  v145 = &v346;
  if ((v346 & 1) == 0)
  {
    v257 = *v6;
    v258 = *(v6 + 1);
    *v6 = 0;
    *(v6 + 1) = 0;
    v259 = *(v6 + 3);
    if (v259)
    {
      if (v258)
      {
        (*(*v259 + 16))(v259, v257);
      }
    }
  }

  if (*v6)
  {
    if (v350 != 1)
    {
      goto LABEL_588;
    }

    for (i4 = 0; i4 != 4; ++i4)
    {
      v147 = (&v347)[i4];
      if (v147 == -1)
      {
        *(&v332 + i4 * 8) = -1;
      }

      else
      {
        v365 = (&v332 + i4 * 8);
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4copyERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v147), v147, &v365);
      }
    }

    if (v346 != 1)
    {
      goto LABEL_588;
    }

    v148 = 0;
    v149 = &v332;
    do
    {
      v150 = 0;
      v151 = 0;
      do
      {
        v153 = v150;
        v152 = &v332 + 2 * v148 + 4;
        v154 = *(&v342 + 2 * v148 + v151);
        if (v154 == -1)
        {
          v152[v151] = -1;
        }

        else
        {
          v365 = &v152[v151];
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4copyERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v154), v154, &v365);
        }

        v150 = 1;
        v151 = 1;
      }

      while ((v153 & 1) == 0);
      ++v148;
      v149 += 2;
    }

    while (v148 != 4);
    WebCore::Style::Inset::Inset(&v373, &v332);
    v380 = 1;
    v155 = &v341;
    v156 = 96;
    v7 = a1;
    v6 = a2;
    do
    {
      for (i5 = 0; i5 != -2; --i5)
      {
        v158 = v155[i5];
        if (v158 != -1 && (v158 & 0xFE000000000000) != 0)
        {
          v370 = v158 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v370);
        }
      }

      v156 -= 16;
      v155 -= 2;
    }

    while (v156 != 32);
    for (i6 = 24; i6 != -8; i6 -= 8)
    {
      v161 = *(&v332 + i6);
      if (v161 != -1 && (v161 & 0xFE000000000000) != 0)
      {
        v370 = v161 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v370);
      }
    }
  }

  else
  {
    LOBYTE(v373) = 0;
    v380 = 0;
  }

  if (v346 == 1)
  {
    v163 = &v345;
    do
    {
      for (i7 = 0; i7 != -2; --i7)
      {
        v165 = v163[i7];
        if (v165 != -1 && (v165 & 0xFE000000000000) != 0)
        {
          v332 = (v165 & 0xFF00FFFFFFFFFFFFLL);
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
        }
      }

      v145 -= 2;
      v163 -= 2;
    }

    while (v145 != &v342);
  }

  if (v350 == 1)
  {
    for (i8 = 3; i8 != -1; --i8)
    {
      v168 = (&v347)[i8];
      if (v168 != -1 && (v168 & 0xFE000000000000) != 0)
      {
        v332 = (v168 & 0xFF00FFFFFFFFFFFFLL);
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
      }
    }
  }

  if ((v380 & 1) == 0)
  {
    v260 = *v6;
    v261 = *(v6 + 1);
    *v6 = 0;
    *(v6 + 1) = 0;
    v262 = *(v6 + 3);
    if (v262)
    {
      if (v261)
      {
        (*(*v262 + 16))(v262, v260);
      }
    }
  }

  if (*v6)
  {
    if (v380)
    {
      WebCore::Style::Inset::Inset(&v332, &v373);
      WebCore::Style::Inset::Inset(&v324, &v332);
      v331 = 1;
      v170 = &v341;
      for (i9 = 96; i9 != 32; i9 -= 16)
      {
        for (i10 = 0; i10 != -2; --i10)
        {
          v173 = v170[i10];
          if (v173 != -1 && (v173 & 0xFE000000000000) != 0)
          {
            v342 = v173 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v342);
          }
        }

        v170 -= 2;
      }

      for (i11 = 24; i11 != -8; i11 -= 8)
      {
        v176 = *(&v332 + i11);
        if (v176 != -1 && (v176 & 0xFE000000000000) != 0)
        {
          v342 = v176 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v342);
        }
      }

      goto LABEL_332;
    }

LABEL_588:
    __break(1u);
  }

  LOBYTE(v324) = 0;
  v331 = 0;
LABEL_332:
  if (v380 == 1)
  {
    v178 = &v379;
    for (i12 = 96; i12 != 32; i12 -= 16)
    {
      for (i13 = 0; i13 != -16; i13 -= 8)
      {
        v181 = *&v178[i13];
        if (v181 != -1 && (v181 & 0xFE000000000000) != 0)
        {
          v332 = (v181 & 0xFF00FFFFFFFFFFFFLL);
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
        }
      }

      v178 -= 16;
    }

    for (i14 = 24; i14 != -8; i14 -= 8)
    {
      v184 = *(&v373 + i14);
      if (v184 != -1 && (v184 & 0xFE000000000000) != 0)
      {
        v332 = (v184 & 0xFF00FFFFFFFFFFFFLL);
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v332);
      }
    }
  }

  if ((v331 & 1) == 0)
  {
    v263 = *v6;
    v264 = *(v6 + 1);
    *v6 = 0;
    *(v6 + 1) = 0;
    v265 = *(v6 + 3);
    if (!v265)
    {
      goto LABEL_536;
    }

    if (!v264)
    {
      goto LABEL_536;
    }

    (*(*v265 + 16))(v265, v263);
    v7 = a1;
    if ((v331 & 1) == 0)
    {
      goto LABEL_536;
    }
  }

  WebCore::Style::Inset::Inset(v7, &v324);
  *(v7 + 96) = 2;
  *(v7 + 104) = 1;
  if (v331)
  {
    v186 = &v330;
    for (i15 = 96; i15 != 32; i15 -= 16)
    {
      for (i16 = 0; i16 != -2; --i16)
      {
        v189 = v186[i16];
        if (v189 != -1 && (v189 & 0xFE000000000000) != 0)
        {
          v373 = v189 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v373);
        }
      }

      v186 -= 2;
    }

    for (i17 = 3; i17 != -1; --i17)
    {
      v192 = (&v324)[i17];
      if (v192 != -1 && (v192 & 0xFE000000000000) != 0)
      {
        v373 = v192 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v373);
      }
    }
  }
}