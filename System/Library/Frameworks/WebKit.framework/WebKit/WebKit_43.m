uint64_t WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(WTF *this, WTF::StringImpl *a2)
{
  if (a2)
  {
    v3 = this + 48;
    v4 = a2;
    do
    {
      v5 = *(v3 + 5);
      *(v3 + 5) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *v3;
      *v3 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *(v3 - 1);
      *(v3 - 1) = 0;
      if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7 + 2);
        (*(*v7 + 8))(v7);
      }

      v8 = *(v3 - 6);
      *(v3 - 6) = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }

      v3 += 96;
      --v4;
    }

    while (v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebCore::ServiceWorkerContextData::ServiceWorkerContextData(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(a1 + 24, a2 + 24);
  *(a1 + 376) = *(a2 + 47);
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 384) = v5;
  v6 = *(a2 + 49);
  *(a2 + 49) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = v6;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 400, a2 + 100);
  v7 = *(a2 + 104);
  *(a1 + 420) = *(a2 + 420);
  *(a1 + 416) = v7;
  *(a1 + 424) = *(a2 + 212);
  v8 = *(a2 + 54);
  *(a2 + 54) = 0;
  *(a1 + 432) = v8;
  v9 = *(a2 + 55);
  *(a2 + 55) = 0;
  *(a1 + 440) = v9;
  v10 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 448) = v10;
  WTF::URL::URL(a1 + 456, a2 + 57);
  *(a1 + 496) = *(a2 + 124);
  *(a1 + 517) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  v11 = *(a2 + 63);
  *(a2 + 63) = 0;
  *(a1 + 504) = v11;
  LODWORD(v11) = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 512) = v11;
  LODWORD(v11) = *(a2 + 129);
  *(a2 + 129) = 0;
  *(a1 + 516) = v11;
  LODWORD(v11) = *(a2 + 130);
  *(a2 + 130) = 0;
  *(a1 + 520) = v11;
  LOBYTE(v11) = *(a2 + 524);
  *(a2 + 524) = 0;
  *(a1 + 524) = v11;
  v12 = a2[33];
  v13 = a2[35];
  *(a1 + 544) = a2[34];
  *(a1 + 560) = v13;
  *(a1 + 528) = v12;
  *(a1 + 576) = *(a2 + 576);
  v14 = *(a2 + 73);
  *(a2 + 73) = 0;
  *(a1 + 584) = v14;
  return a1;
}

void sub_19D7D2A74(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v4 = v2[56];
  v2[56] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = v2[55];
  v2[55] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = v2[54];
  v2[54] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 50), a2);
  v8 = v2[49];
  v2[49] = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v2[48];
  v2[48] = 0;
  if (v9)
  {
    if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9 + 2);
      (*(*v9 + 8))(v9);
    }
  }

  WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData((v2 + 3), v7);
  _Unwind_Resume(a1);
}

void WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(WebCore::ServiceWorkerContextData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 73);
  *(this + 73) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 63);
  if (v4)
  {
    WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v4, *(this + 128));
  }

  v5 = *(this + 57);
  *(this + 57) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 56);
  *(this + 56) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 55);
  *(this + 55) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 54);
  *(this + 54) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 400, a2);
  v10 = *(this + 49);
  *(this + 49) = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 48);
  *(this + 48) = 0;
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11 + 2);
    (*(*v11 + 8))(v11);
  }

  WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData((this + 24), v9);
}

_BYTE *std::__optional_move_base<WebCore::Path,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[64] = 0;
  if (*(a2 + 64) == 1)
  {
    mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::impl(a1, a2);
    a1[64] = 1;
  }

  return a1;
}

void sub_19D7D2CFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 64) == 1)
  {
    mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(v1);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::VectorBuffer<WebCore::Region::Span,16ul,WTF::FastMalloc>::adopt(void *result, _DWORD *a2)
{
  v3 = result + 2;
  v2 = *result;
  if (*result != result + 2)
  {
    v11 = result + 2;
    v12 = a2;
    v13 = result;
    if (v2)
    {
      *result = 0;
      *(result + 2) = 0;
      WTF::fastFree(v2, a2);
    }

    result = v13;
    v3 = v11;
    a2 = v12;
    *v13 = v11;
  }

  v4 = (a2 + 4);
  v5 = *a2;
  if (*a2 == a2 + 4)
  {
    v6 = a2[3];
    if (v6)
    {
      v7 = 16 * v6;
      do
      {
        v8 = *v4++;
        *v3++ = v8;
        v7 -= 16;
      }

      while (v7);
    }

    v9 = a2[2];
  }

  else
  {
    *a2 = v4;
    *result = v5;
    v9 = a2[2];
    a2[2] = 16;
  }

  *(result + 2) = v9;
  v10 = a2[3];
  a2[3] = 0;
  *(result + 3) = v10;
  return result;
}

void *WTF::Vector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  result = (a1 + 16);
  *a1 = result;
  *(a1 + 8) = 32;
  *(a1 + 12) = v4;
  if (v4 < 0x21)
  {
    goto LABEL_2;
  }

  if (!(v4 >> 30))
  {
    result = WTF::fastMalloc((4 * v4));
    *(a1 + 8) = v4;
    *a1 = result;
    LODWORD(v4) = *(a2 + 12);
LABEL_2:
    memcpy(result, *a2, 4 * v4);
    return a1;
  }

  __break(0xC471u);
  return result;
}

_OWORD *WTF::Vector<WebCore::Region::Span,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  result = (a1 + 16);
  *a1 = result;
  *(a1 + 8) = 16;
  *(a1 + 12) = v4;
  if (v4 >= 0x11)
  {
    if (v4 >> 28)
    {
      __break(0xC471u);
      return result;
    }

    result = WTF::fastMalloc((16 * v4));
    *(a1 + 8) = v4;
    *a1 = result;
    LODWORD(v4) = *(a2 + 12);
  }

  if (v4)
  {
    v6 = *a2;
    v7 = 16 * v4;
    do
    {
      v8 = *v6++;
      *result++ = v8;
      v7 -= 16;
    }

    while (v7);
  }

  return a1;
}

uint64_t *std::unique_ptr<WebCore::Region::Shape>::reset[abi:sn200100](uint64_t *result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = *(v2 + 144);
    if ((v2 + 160) != v3 && v3 != 0)
    {
      *(v2 + 144) = 0;
      *(v2 + 152) = 0;
      WTF::fastFree(v3, a2);
    }

    v5 = *v2;
    if (v2 + 16 != *v2 && v5 != 0)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

uint64_t std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::LocalConfiguration,false>::__optional_move_base[abi:sn200100](uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    *result = *a2;
    v2 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(result + 8) = v2;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(result + 16) = v3;
    v4 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(result + 24) = v4;
    v5 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(result + 32) = v5;
    *(result + 40) = 1;
  }

  return result;
}

uint64_t std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::HidConfiguration,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, (a2 + 16));
    v4 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v4;
    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_19D7D3040(_Unwind_Exception *a1, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v5, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  if (*(v2 + 64) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 16, v6);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, v7);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 8, (a2 + 8));
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_19D7D3110(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  if (*(v2 + 32) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7D3190(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(_BYTE *a1, _BYTE *a2)
{
  v4 = (a2 + 56);
  *a1 = *a2;
  v5 = (a1 + 56);
  std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::LocalConfiguration,false>::__optional_move_base[abi:sn200100]((a1 + 8), (a2 + 8));
  std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::HidConfiguration,false>::__optional_move_base[abi:sn200100](v5, v4);
  std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,false>::__optional_move_base[abi:sn200100]((a1 + 128), (a2 + 128));
  std::__optional_move_base<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration,false>::__optional_move_base[abi:sn200100]((a1 + 168), (a2 + 168));
  return a1;
}

void sub_19D7D3234(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 160) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 136, a2);
  }

  if (*(v2 + 120) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 72, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v5);
  }

  if (*(v2 + 48) == 1)
  {
    v6 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    v9 = *(v2 + 16);
    *(v2 + 16) = 0;
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

uint64_t WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::destruct(*a1, (*a1 + 24 * v3));
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

void sub_19D7D335C(_Unwind_Exception *exception_object, void *a2)
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

WTF::StringImpl *WTF::VectorTypeOperations<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::destruct(WTF::StringImpl *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v3 + 1), a2);
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

uint64_t WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::ISO18013DocumentRequest>::destruct(*a1, (*a1 + 24 * v3));
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

void sub_19D7D3438(_Unwind_Exception *exception_object, void *a2)
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::ISO18013DocumentRequest>::destruct(WTF::StringImpl *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v3 + 1), a2);
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

uint64_t WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 16 * v3;
    do
    {
      v4 = WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2) + 16;
      v5 -= 16;
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

uint64_t WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 24 * v3;
    v5 = *a1 + 8;
    do
    {
      v5 = WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, a2) + 24;
      v4 -= 24;
    }

    while (v4);
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

uint64_t WebCore::MockCameraProperties::MockCameraProperties(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
  *(a1 + 32) = 0;
  if (a1 != a2)
  {
    v5 = a2[4];
    a2[4] = 0;
    *(a1 + 32) = v5;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 40, a2 + 10);
  *(a1 + 56) = *(a2 + 28);
  return a1;
}

void sub_19D7D3608(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *(v3 + 32);
  if ((v7 & 0x8000000000000) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, a2);
    }
  }

  WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = -1;
  v4 = *(a2 + 64);
  if (v4 <= 1)
  {
    if (*(a2 + 64))
    {
      v6 = *a2;
      *a2 = 0;
      *a1 = v6;
      *(a1 + 8) = *(a2 + 8);
    }

    else
    {
      *a1 = *a2;
    }

    goto LABEL_11;
  }

  if (v4 == 2)
  {
    WebCore::MockCameraProperties::MockCameraProperties(a1, a2);
LABEL_11:
    *(a1 + 64) = *(a2 + 64);
    return a1;
  }

  if (v4 == 3)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    if (a1 != a2)
    {
      v5 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a1 + 8) = v5;
    }

    *(a1 + 16) = *(a2 + 16);
    goto LABEL_11;
  }

  return a1;
}

void sub_19D7D3734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (*(v13 + 64) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1> &>(&a13, v13);
  }

  *(v13 + 64) = -1;
  _Unwind_Resume(exception_object);
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1> &>(uint64_t a1, void *a2)
{
  v3 = *(a2 + 64);
  if (v3 == 255)
  {
    v3 = -1;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v5 = a2[5];
      if (v5)
      {
        a2[5] = 0;
        *(a2 + 12) = 0;
        WTF::fastFree(v5, a2);
      }

      v6 = a2[4];
      if ((v6 & 0x8000000000000) != 0)
      {
        v8 = (v6 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v8);
          WTF::fastFree(v8, a2);
        }
      }

      WTF::Vector<WebCore::VideoPresetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a2 + 2), a2);
    }

    else
    {
      v7 = a2[1];
      if ((v7 & 0x8000000000000) != 0)
      {
        v9 = (v7 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v9);

          WTF::fastFree(v9, a2);
        }
      }
    }
  }

  else if (v3)
  {
    v4 = *a2;
    *a2 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }
}

void WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(WebCore::AcceleratedEffectValues *this, void *a2)
{
  WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 232, a2);
  WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 216, v3);
  if (*(this + 204) == 11)
  {
    WebCore::Length::deref((this + 200));
  }

  if (*(this + 196) == 11)
  {
    WebCore::Length::deref((this + 192));
  }

  if (*(this + 188) == 11)
  {
    WebCore::Length::deref((this + 184));
  }

  if (*(this + 180) == 11)
  {
    WebCore::Length::deref((this + 176));
  }

  if (*(this + 172) == 11)
  {
    WebCore::Length::deref((this + 168));
  }

  v5 = *(this + 20);
  *(this + 20) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 19);
  *(this + 19) = 0;
  if (v6)
  {
    if (v6[2] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[2];
    }
  }

  v7 = *(this + 18);
  *(this + 18) = 0;
  if (v7)
  {
    if (v7[2] == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[2];
    }
  }

  v8 = *(this + 17);
  *(this + 17) = 0;
  if (v8)
  {
    if (v8[2] == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --v8[2];
    }
  }

  WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 120, v4);
  if (*(this + 108) == 11)
  {
    WebCore::Length::deref((this + 104));
  }

  if (*(this + 100) == 11)
  {
    WebCore::Length::deref((this + 96));
  }
}

uint64_t WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::AcceleratedEffect::Keyframe>::destruct(*a1, (*a1 + 280 * v3));
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

void sub_19D7D3AC4(_Unwind_Exception *exception_object, void *a2)
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

void WTF::VectorTypeOperations<WebCore::AcceleratedEffect::Keyframe>::destruct(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = v3[33];
      v3[33] = 0;
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

      WebCore::AcceleratedEffectValues::~AcceleratedEffectValues((v3 + 2), a2);
      v3 += 35;
    }

    while (v3 != a2);
  }
}

uint64_t std::__optional_move_base<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7D3BBC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 24 * v3;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        *v4 = 0;
        *(v4 + 2) = 0;
        WTF::fastFree(v6, a2);
      }

      v4 = (v4 + 24);
      v5 -= 24;
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

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 80) = -1;
  v4 = *(a2 + 80);
  if (v4 <= 1)
  {
    if (*(a2 + 80))
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
      v7 = *(a2 + 1);
      *(a1 + 32) = a2[4];
      *(a1 + 16) = v7;
      v8 = a2[5];
      a2[5] = 0;
      *(a1 + 40) = v8;
      *(a1 + 48) = 0;
      *(a1 + 72) = 0;
      if (*(a2 + 72) == 1)
      {
        v9 = a2[6];
        a2[6] = 0;
        *(a1 + 48) = v9;
        v10 = a2[7];
        a2[7] = 0;
        *(a1 + 56) = v10;
        *(a1 + 64) = *(a2 + 32);
        *(a1 + 72) = 1;
      }
    }

    else
    {
      *a1 = *a2;
    }

    goto LABEL_10;
  }

  if (v4 == 2)
  {
    *a1 = *a2;
    goto LABEL_10;
  }

  if (v4 == 3)
  {
    v5 = *a2;
    *a2 = 0;
    *a1 = v5;
    v6 = a2[1];
    a2[1] = 0;
    *(a1 + 8) = v6;
LABEL_10:
    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

void sub_19D7D3D68(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v15 = *v13;
  if (*v13)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    WTF::fastFree(v15, a2);
  }

  if (*(v13 + 80) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1> &>(&a13, v13);
  }

  *(v13 + 80) = -1;
  _Unwind_Resume(exception_object);
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1> &>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3 == 255)
  {
    v3 = -1;
  }

  if (v3 > 1)
  {
    if (v3 != 2)
    {
      v7 = *(a2 + 8);
      *(a2 + 8) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v8 = *a2;
      *a2 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        WTF::StringImpl::destroy(v8, a2);
      }
    }
  }

  else if (v3)
  {
    if (*(a2 + 72) == 1)
    {
      v4 = *(a2 + 56);
      *(a2 + 56) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = *(a2 + 48);
      *(a2 + 48) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }

    v6 = *(a2 + 40);
    *(a2 + 40) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a2, a2);
  }
}

uint64_t WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 120 * v3;
    v6 = v4 + 104;
    do
    {
      WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6);
      if (*(v6 - 24) != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1> &>(&v8, (v6 - 104));
      }

      *(v6 - 24) = -1;
      v6 += 120;
      v5 -= 120;
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

uint64_t std::__optional_move_base<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7D3FAC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel::Content>::destruct(*a1, (*a1 + 32 * v3));
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

void sub_19D7D4038(_Unwind_Exception *exception_object, void *a2)
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel::Content>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 3);
      if ((v4 & 0x8000000000000) != 0)
      {
        v6 = (v4 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v6);
          WTF::fastFree(v6, a2);
        }
      }

      v5 = *(v3 + 1);
      if ((v5 & 0x8000000000000) != 0)
      {
        v7 = (v5 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v7);
          WTF::fastFree(v7, a2);
        }
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

      v3 = (v3 + 32);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  if (a1 != a2)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
  }

  v5 = *(a2 + 1);
  v6 = *(a2 + 3);
  *(a1 + 40) = 0;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 48) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 40, a2 + 10);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 56, a2 + 14);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 72, a2 + 18);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 88, a2 + 22);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 104, a2 + 26);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 120, a2 + 30);
  return a1;
}

void sub_19D7D41F8(_Unwind_Exception *exception_object, void *a2)
{
  v10 = *v8;
  if (*v8)
  {
    v2[15] = 0;
    *(v2 + 32) = 0;
    WTF::fastFree(v10, a2);
  }

  v11 = *v7;
  if (*v7)
  {
    v2[13] = 0;
    *(v2 + 28) = 0;
    WTF::fastFree(v11, a2);
  }

  v12 = *v6;
  if (*v6)
  {
    v2[11] = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v12, a2);
  }

  v13 = *v5;
  if (*v5)
  {
    v2[9] = 0;
    *(v2 + 20) = 0;
    WTF::fastFree(v13, a2);
  }

  v14 = *v4;
  if (*v4)
  {
    v2[7] = 0;
    *(v2 + 16) = 0;
    WTF::fastFree(v14, a2);
  }

  v15 = *v3;
  if (*v3)
  {
    v2[5] = 0;
    *(v2 + 12) = 0;
    WTF::fastFree(v15, a2);
  }

  v16 = *v2;
  if ((*v2 & 0x8000000000000) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      WTF::fastFree(v17, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::~FlexHighlightOverlay(WebCore::InspectorOverlayHighlight::FlexHighlightOverlay *this, void *a2)
{
  WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 120, a2);
  v4 = *(this + 13);
  if (v4)
  {
    *(this + 13) = 0;
    *(this + 28) = 0;
    WTF::fastFree(v4, v3);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v5, v3);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v6, v3);
  }

  v7 = *(this + 7);
  if (v7)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v7, v3);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v8, v3);
  }

  v9 = *this;
  if ((*this & 0x8000000000000) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v3);
    }
  }
}

uint64_t WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel>::destruct(*a1, (*a1 + 40 * v3));
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

void sub_19D7D43D4(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel>::destruct(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 24);
      if ((v4 & 0x8000000000000) != 0)
      {
        v5 = (v4 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5);
          WTF::fastFree(v5, a2);
        }
      }

      result = WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
      v3 += 40;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t *WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  if (a1 != a2)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
  }

  a1[1] = 0;
  a1[2] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a1 + 1), a2 + 2);
  a1[3] = 0;
  a1[4] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a1 + 3), a2 + 6);
  a1[5] = 0;
  a1[6] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a1 + 5), a2 + 10);
  a1[7] = 0;
  a1[8] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a1 + 7), a2 + 14);
  return a1;
}

void sub_19D7D4510(_Unwind_Exception *a1, void *a2)
{
  v8 = *v6;
  if (*v6)
  {
    v2[7] = 0;
    *(v2 + 16) = 0;
    WTF::fastFree(v8, a2);
  }

  WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, a2);
  v10 = *v4;
  if (*v4)
  {
    v2[3] = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v10, v9);
  }

  v11 = *v3;
  if (*v3)
  {
    v2[1] = 0;
    *(v2 + 4) = 0;
    WTF::fastFree(v11, v9);
  }

  v12 = *v2;
  if ((*v2 & 0x8000000000000) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, v9);
    }
  }

  _Unwind_Resume(a1);
}

void WebCore::InspectorOverlayHighlight::~InspectorOverlayHighlight(WebCore::InspectorOverlayHighlight *this, void *a2)
{
  WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, a2);
  WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, v3);
  v5 = *(this + 6);
  if (v5)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v5, v4);
  }

  v6 = *(this + 4);
  if ((v6 & 0x8000000000000) != 0)
  {
    v11 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, v4);
    }
  }

  v7 = *(this + 3);
  if ((v7 & 0x8000000000000) != 0)
  {
    v12 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      WTF::fastFree(v12, v4);
    }
  }

  v8 = *(this + 2);
  if ((v8 & 0x8000000000000) != 0)
  {
    v13 = (v8 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, v4);
    }
  }

  v9 = *(this + 1);
  if ((v9 & 0x8000000000000) != 0)
  {
    v14 = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, v4);
    }
  }

  v10 = *this;
  if ((*this & 0x8000000000000) != 0)
  {
    v15 = (v10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15);
      WTF::fastFree(v15, v4);
    }
  }
}

uint64_t WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 136 * v3;
    do
    {
      WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::~FlexHighlightOverlay(v4, a2);
      v4 = (v6 + 136);
      v5 -= 136;
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

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v4, a2);
        v5 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void WebCore::NowPlayingMetadata::~NowPlayingMetadata(WebCore::NowPlayingMetadata *this, WTF::StringImpl *a2)
{
  if (*(this + 56) == 1)
  {
    v3 = *(this + 6);
    *(this + 6) = 0;
    if (v3)
    {
      if (v3[4] == 1)
      {
        (*(*v3 + 8))(v3);
      }

      else
      {
        --v3[4];
      }
    }

    v4 = *(this + 5);
    *(this + 5) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(this + 4);
    *(this + 4) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }
  }
}

void WebCore::UserScript::~UserScript(WebCore::UserScript *this, void *a2)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 48, v3);
  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }
}

uint64_t WebCore::DragItem::DragItem(uint64_t a1, uint64_t a2)
{
  v4 = WebCore::DragImage::DragImage();
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  *(v4 + 120) = *(a2 + 120);
  *(v4 + 104) = v6;
  *(v4 + 88) = v5;
  v7 = *(a2 + 128);
  *(a2 + 128) = 0;
  *(v4 + 128) = v7;
  WTF::URL::URL(v4 + 136, (a2 + 136));
  v8 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v8;
  v9 = *(a2 + 200);
  *(a2 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 200) = v9;
  *(a1 + 216) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 208, (a2 + 208));
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  if (*(a2 + 240) == 1)
  {
    *(a1 + 224) = *(a2 + 224);
    v10 = *(a2 + 232);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *(a1 + 232) = v10;
    *(a1 + 240) = 1;
  }

  *(a1 + 248) = 0;
  *(a1 + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    v11 = *(a2 + 248);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    *(a1 + 248) = v11;
    v12 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v12;
    v13 = *(a2 + 288);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    *(a1 + 288) = v13;
    *(a1 + 296) = 1;
  }

  *(a1 + 304) = 0;
  *(a1 + 384) = 0;
  if (*(a2 + 384) == 1)
  {
    v14 = *(a2 + 304);
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    }

    *(a1 + 304) = v14;
    *(a1 + 312) = *(a2 + 312);
    v15 = *(a2 + 320);
    if (v15)
    {
      atomic_fetch_add((v15 + 8), 1u);
    }

    *(a1 + 320) = v15;
    v16 = *(a2 + 328);
    if (v16)
    {
      atomic_fetch_add((v16 + 8), 1u);
    }

    *(a1 + 328) = v16;
    v17 = *(a2 + 336);
    if (v17)
    {
      atomic_fetch_add((v17 + 8), 1u);
    }

    *(a1 + 336) = v17;
    v18 = *(a2 + 344);
    if (v18)
    {
      atomic_fetch_add((v18 + 8), 1u);
    }

    *(a1 + 344) = v18;
    v19 = *(a2 + 352);
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    }

    *(a1 + 352) = v19;
    v20 = *(a2 + 360);
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    *(a1 + 360) = v20;
    WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 368, (a2 + 368));
    *(a1 + 384) = 1;
  }

  return a1;
}

void sub_19D7D4B50(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v5 = *(v2 + 360);
  *(v2 + 360) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(v2 + 352);
  *(v2 + 352) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v2 + 344);
  *(v2 + 344) = 0;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  v8 = *(v2 + 336);
  *(v2 + 336) = 0;
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 8))(v8);
  }

  v9 = *(v2 + 328);
  *(v2 + 328) = 0;
  if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9 + 2);
    (*(*v9 + 8))(v9);
  }

  v10 = *(v2 + 320);
  *(v2 + 320) = 0;
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

  v11 = *(v2 + 304);
  *(v2 + 304) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  if (*(v2 + 384) == 1)
  {
    MEMORY[0x19EB08D90](v2 + 304);
  }

  if (*(v2 + 296) == 1)
  {
    v12 = *(v2 + 288);
    *(v2 + 288) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }

    v13 = *(v2 + 248);
    *(v2 + 248) = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  if (*(v2 + 240) == 1)
  {
    v14 = *(v2 + 232);
    *(v2 + 232) = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
      }
    }
  }

  WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  v16 = *(v2 + 200);
  *(v2 + 200) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  v17 = *(v2 + 136);
  *(v2 + 136) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v15);
  }

  v18 = *(v2 + 128);
  *(v2 + 128) = 0;
  if (v18)
  {
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v15);
    }
  }

  MEMORY[0x19EB0FB20](v2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 28))
  {
    v5 = WTF::fastMalloc((16 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = *a2;
      v8 = *a2 + 16 * v6;
      do
      {
        v9 = *v7;
        if (*v7)
        {
          atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        }

        *v5 = v9;
        v10 = *(v7 + 8);
        if (v10)
        {
          atomic_fetch_add((v10 + 8), 1u);
        }

        v5[1] = v10;
        v5 += 2;
        v7 += 16;
      }

      while (v7 != v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::CompositionUnderline>::destruct(*a1, (*a1 + 32 * v3));
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

unsigned int *WTF::VectorDestructor<true,WebCore::CompositionUnderline>::destruct(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 2);
      if ((v4 & 0x8000000000000) != 0)
      {
        result = (v4 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }
      }

      v3 += 8;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::CompositionHighlight>::destruct(*a1, (*a1 + 40 * v3));
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

void sub_19D7D4FC8(_Unwind_Exception *exception_object, void *a2)
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

unsigned int *WTF::VectorTypeOperations<WebCore::CompositionHighlight>::destruct(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      if (*(v3 + 32) == 1)
      {
        v4 = *(v3 + 3);
        if ((v4 & 0x8000000000000) != 0)
        {
          result = (v4 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            result = WTF::fastFree(result, a2);
          }
        }
      }

      if (*(v3 + 16) == 1)
      {
        v5 = *(v3 + 1);
        if ((v5 & 0x8000000000000) != 0)
        {
          result = (v5 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            result = WTF::fastFree(result, a2);
          }
        }
      }

      v3 += 10;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>::destruct(*a1, (*a1 + 8 * v3));
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

unsigned int *WTF::VectorDestructor<true,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>::destruct(unsigned int *result, unsigned int **a2)
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
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::FilterFunction,WTF::RawPtrTraits<WebCore::FilterFunction>,WTF::DefaultRefDerefTraits<WebCore::FilterFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v4 = WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(v4, a2) + 1;
      v5 -= 8;
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

uint64_t WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      v6 = WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(v6, a2) + 1;
      v7 -= 8;
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

uint64_t WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct(*a1, (*a1 + 16 * v3));
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

uint64_t std::unique_ptr<WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100](uint64_t *a1, void *a2)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    v4 = WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

uint64_t WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 56 * v3;
    do
    {
      JSC::ArrayBufferContents::~ArrayBufferContents(v4);
      v4 = (v6 + 56);
      v5 -= 56;
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

void WebCore::SerializedScriptValue::Internals::~Internals(WebCore::SerializedScriptValue::Internals *this, void *a2)
{
  v3 = *(this + 67);
  if (v3)
  {
    v4 = *(this + 32);
    v5 = 72 * v3;
    do
    {
      v4 = MEMORY[0x19EB08880](v4) + 72;
      v5 -= 72;
    }

    while (v5);
  }

  v6 = *(this + 32);
  if (v6)
  {
    *(this + 32) = 0;
    *(this + 66) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 31);
  *(this + 31) = 0;
  if (v7)
  {
    v8 = *(v7 + 3);
    if (v8)
    {
      v9 = *v7;
      v10 = 8 * v8;
      do
      {
        v11 = *v9;
        *v9 = 0;
        if (v11)
        {
          WTF::ThreadSafeRefCounted<JSC::SharedArrayBufferContents,(WTF::DestructionThread)0>::deref(v11);
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }

    v12 = *v7;
    if (*v7)
    {
      *v7 = 0;
      *(v7 + 2) = 0;
      WTF::fastFree(v12, a2);
    }

    WTF::fastFree(v7, a2);
  }

  v13 = *(this + 30);
  *(this + 30) = 0;
  if (v13)
  {
    v14 = *(v13 + 3);
    if (v14)
    {
      v15 = *v13;
      v16 = 8 * v14;
      do
      {
        v17 = *v15;
        *v15 = 0;
        if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v17);
          v18 = MEMORY[0x19EB00430]();
          WTF::fastFree(v18, v19);
        }

        ++v15;
        v16 -= 8;
      }

      while (v16);
    }

    v20 = *v13;
    if (*v13)
    {
      *v13 = 0;
      *(v13 + 2) = 0;
      WTF::fastFree(v20, a2);
    }

    WTF::fastFree(v13, a2);
  }

  v21 = *(this + 59);
  if (v21)
  {
    v22 = *(this + 28);
    v23 = &v22[v21];
    do
    {
      v24 = *v22;
      *v22 = 0;
      if (!v24)
      {
        goto LABEL_45;
      }

      do
      {
        v25 = *(v24 + 56);
        if ((v25 & 1) == 0)
        {
          v29 = 0;
          v30 = *(v24 + 56);
          atomic_compare_exchange_strong_explicit(v30, &v29, 1u, memory_order_acquire, memory_order_acquire);
          if (v29)
          {
            MEMORY[0x19EB01E30](v30);
          }

          v31 = *(v30 + 8) - 1;
          *(v30 + 8) = v31;
          if (v31)
          {
            v32 = 0;
          }

          else
          {
            v32 = *(v30 + 24);
            ++*(v30 + 16);
            *(v30 + 24) = 0;
          }

          v33 = 1;
          atomic_compare_exchange_strong_explicit(v30, &v33, 0, memory_order_release, memory_order_relaxed);
          if (v33 == 1)
          {
            if (v31)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v68 = v31;
            WTF::Lock::unlockSlow(v30);
            if (v68)
            {
              goto LABEL_45;
            }
          }

          if (v32)
          {
            v34 = MEMORY[0x19EB03C20](v32);
            bmalloc::api::tzoneFree(v34, v35);
          }

          v36 = 0;
          atomic_compare_exchange_strong_explicit(v30, &v36, 1u, memory_order_acquire, memory_order_acquire);
          if (v36)
          {
            MEMORY[0x19EB01E30](v30);
          }

          v37 = *(v30 + 16) - 1;
          *(v30 + 16) = v37;
          v38 = 1;
          atomic_compare_exchange_strong_explicit(v30, &v38, 0, memory_order_release, memory_order_relaxed);
          if (v38 == 1)
          {
            if (v37)
            {
              goto LABEL_45;
            }
          }

          else
          {
            WTF::Lock::unlockSlow(v30);
            if (v37)
            {
              goto LABEL_45;
            }
          }

          WTF::fastFree(v30, a2);
          goto LABEL_45;
        }

        v26 = *(v24 + 56);
        atomic_compare_exchange_strong_explicit((v24 + 56), &v26, v25 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v26 != v25);
      if (v25 == 3)
      {
        v27 = MEMORY[0x19EB03C20]();
        bmalloc::api::tzoneFree(v27, v28);
      }

LABEL_45:
      ++v22;
    }

    while (v22 != v23);
  }

  v39 = *(this + 28);
  if (v39)
  {
    *(this + 28) = 0;
    *(this + 58) = 0;
    WTF::fastFree(v39, a2);
  }

  v40 = *(this + 55);
  if (v40)
  {
    v41 = *(this + 26);
    v42 = 8 * v40;
    do
    {
      v43 = *v41;
      *v41 = 0;
      if (v43)
      {
        if (*(v43 + 156) == 1)
        {
          v44 = MEMORY[0x19EB060E0]();
          bmalloc::api::tzoneFree(v44, v45);
        }

        else
        {
          --*(v43 + 156);
        }
      }

      ++v41;
      v42 -= 8;
    }

    while (v42);
  }

  v46 = *(this + 26);
  if (v46)
  {
    *(this + 26) = 0;
    *(this + 54) = 0;
    WTF::fastFree(v46, a2);
  }

  v47 = *(this + 51);
  v48 = *(this + 24);
  if (v47)
  {
    v49 = 8 * v47;
    do
    {
      v50 = *v48;
      *v48 = 0;
      if (v50)
      {
        WebCore::DetachedOffscreenCanvas::~DetachedOffscreenCanvas(v50);
        bmalloc::api::tzoneFree(v51, v52);
      }

      v48 = (v48 + 8);
      v49 -= 8;
    }

    while (v49);
    v48 = *(this + 24);
  }

  if (v48)
  {
    *(this + 24) = 0;
    *(this + 50) = 0;
    WTF::fastFree(v48, a2);
  }

  v53 = *(this + 47);
  v54 = *(this + 22);
  if (v53)
  {
    v55 = 24 * v53;
    do
    {
      if (*(v54 + 16) == 1)
      {
        WebCore::DetachedImageBitmap::~DetachedImageBitmap(v54);
      }

      v54 = (v54 + 24);
      v55 -= 24;
    }

    while (v55);
    v54 = *(this + 22);
  }

  if (v54)
  {
    *(this + 22) = 0;
    *(this + 46) = 0;
    WTF::fastFree(v54, a2);
  }

  std::unique_ptr<WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100](this + 21, a2);
  WTF::Vector<std::unique_ptr<WebCore::MediaStreamTrackDataHolder>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 152, v56);
  WTF::Vector<WTF::RefPtr<WebCore::MediaSourceHandle,WTF::RawPtrTraits<WebCore::MediaSourceHandle>,WTF::DefaultRefDerefTraits<WebCore::MediaSourceHandle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 136, v57);
  WTF::Vector<WTF::RefPtr<WebCore::RTCRtpTransformableFrame,WTF::RawPtrTraits<WebCore::RTCRtpTransformableFrame>,WTF::DefaultRefDerefTraits<WebCore::RTCRtpTransformableFrame>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 120, v58);
  WTF::Vector<WTF::RefPtr<WebCore::RTCRtpTransformableFrame,WTF::RawPtrTraits<WebCore::RTCRtpTransformableFrame>,WTF::DefaultRefDerefTraits<WebCore::RTCRtpTransformableFrame>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, v59);
  WTF::Vector<WebCore::WebCodecsAudioInternalData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 88, v60);
  WTF::Vector<WebCore::WebCodecsVideoFrameData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 72, v61);
  WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, v62);
  WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 40, v63);
  WTF::Vector<std::unique_ptr<WebCore::DetachedRTCDataChannel>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 24, v64);
  std::unique_ptr<WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100](this + 2, v65);
  v67 = *this;
  if (*this)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v67, v66);
  }
}

uint64_t WebCore::PassthroughFilterOperation::clone@<X0>(void *a1@<X8>)
{
  result = WTF::fastMalloc(0x10);
  *(result + 8) = 1;
  *(result + 12) = 13;
  *result = &unk_1F10E8260;
  *a1 = result;
  return result;
}

void *WebCore::OrganizationStorageAccessPromptQuirk::OrganizationStorageAccessPromptQuirk(void *a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v5 = *a2;
  *a2 = 0;
  *a1 = v5;
  a1[1] = 0;
  v6 = *a3;
  *a3 = 0;
  a1[1] = v6;
  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 2, a4);
  return a1;
}

void sub_19D7D5804(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
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

void *WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D7D5870(_Unwind_Exception *exception_object, void *a2)
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

uint64_t _ZNSt3__127__optional_copy_assign_baseIN7WebCore36OrganizationStorageAccessPromptQuirkELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  *(a1 + 8) = 0;
  v4 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v4;
  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 16), a2 + 4);
  *(a1 + 32) = 1;
  return a1;
}

void sub_19D7D58E4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
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

void *WebCore::OrganizationStorageAccessPromptQuirk::OrganizationStorageAccessPromptQuirk(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  a1[1] = 0;
  v4 = a2[1];
  a2[1] = 0;
  a1[1] = v4;
  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 2, a2 + 4);
  return a1;
}

void sub_19D7D5968(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
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

void WebCore::MultiRepresentationHEICAttachmentData::~MultiRepresentationHEICAttachmentData(WebCore::MultiRepresentationHEICAttachmentData *this, void *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  WTF::Vector<WebCore::MultiRepresentationHEICAttachmentSingleImage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, a2);
  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }
  }
}

void *WebCore::TextRecognitionDataDetector::TextRecognitionDataDetector(void *a1, uint64_t *a2, _DWORD *a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  a1[1] = 0;
  a1[2] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a1 + 1), a3);
  return a1;
}

void sub_19D7D5AA8(_Unwind_Exception *exception_object, void *a2)
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
  }

  _Unwind_Resume(exception_object);
}

double WebCore::ShareableBitmapHandle::ShareableBitmapHandle(uint64_t a1, uint64_t a2)
{
  v3 = WTF::MachSendRight::MachSendRight();
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v4 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(v3 + 24) = v4;
    *(v3 + 32) = 1;
  }

  v5 = *(a2 + 44);
  *(v3 + 40) = *(a2 + 40);
  *(v3 + 44) = v5;
  *(v3 + 48) = 0;
  if (*(a2 + 48))
  {
    *(v3 + 48) = 1;
  }

  *(v3 + 52) = *(a2 + 52);
  *(v3 + 56) = 0;
  if (*(a2 + 56))
  {
    *(v3 + 56) = 1;
  }

  *(v3 + 60) = *(a2 + 60);
  *(v3 + 64) = 0;
  if (*(a2 + 64))
  {
    *(v3 + 64) = 1;
  }

  result = *(a2 + 68);
  *(v3 + 68) = result;
  return result;
}

void WebCore::ShareableBitmapHandle::~ShareableBitmapHandle(WebCore::ShareableBitmapHandle *this)
{
  if (*(this + 32) == 1)
  {
    v2 = *(this + 3);
    *(this + 3) = 0;
    if (v2)
    {
      CFRelease(v2);
    }
  }

  WTF::MachSendRight::~MachSendRight(this);
}

uint64_t std::__optional_move_base<WebCore::SerializedPlatformDataCueValue::Data,false>::__optional_move_base[abi:sn200100](uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    *(result + 8) = 0;
    v3 = a2[1];
    a2[1] = 0;
    *(result + 8) = v3;
    v4 = a2[2];
    a2[2] = 0;
    *(result + 16) = v4;
    v5 = a2[3];
    a2[3] = 0;
    *(result + 24) = v5;
    *(result + 32) = 0;
    *(result + 40) = -1;
    if (*(a2 + 40))
    {
      if (*(a2 + 40) == 255)
      {
LABEL_7:
        *(result + 48) = 1;
        return result;
      }

      v6 = a2[4];
      a2[4] = 0;
    }

    else
    {
      v6 = 0;
    }

    *(result + 32) = v6;
    *(result + 40) = *(a2 + 40);
    goto LABEL_7;
  }

  return result;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 > 2)
  {
    if (v2 != 3 && v2 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (!*(a1 + 8))
  {
    goto LABEL_8;
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
  }

LABEL_8:
  *(a1 + 8) = -1;
  return a1;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v2 = a1;
  v3 = *(a1 - 1);
  if (v3)
  {
    do
    {
      if (*a1 != -1)
      {
        a1 = WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(a1, a2);
      }

      a1 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((v2 - 2), a2);
}

WTF::StringImpl **WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(int a1, WTF **this)
{
  if (*(this + 24))
  {
    v2 = *this;
    if (*this)
    {
      *this = 0;
      *(this + 2) = 0;
      WTF::fastFree(v2, this);
    }
  }

  else if (*(this + 16) == 1)
  {
    WTF::MachSendRight::~MachSendRight(this);
  }
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(mpark *this, void *a2)
{
  v2 = this;
  v3 = *(this - 1);
  if (v3)
  {
    while (!*(this + 24))
    {
      if (*this != -1)
      {
        goto LABEL_4;
      }

LABEL_5:
      this = (this + 32);
      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    if (*(this + 24) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }

LABEL_4:
    this = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this);
    goto LABEL_5;
  }

LABEL_6:

  return WTF::fastFree((v2 - 16), a2);
}

uint64_t WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
    do
    {
      if (*(v4 - 16) != 254)
      {
        if (!*v4)
        {
          v5 = *(v4 - 1);
          if (v5)
          {
            WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v5, a2);
          }
        }

        *v4 = -1;
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t *WTF::HashTable<WebCore::PermissionsPolicy::Feature,WebCore::PermissionsPolicy::Feature,WTF::IdentityExtractor,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::HashTable(uint64_t *a1, unsigned __int8 **a2)
{
  *a1 = 0;
  v3 = *a2;
  if (!*a2)
  {
    return a1;
  }

  v4 = *(v3 - 3);
  if (!v4)
  {
    return a1;
  }

  v6 = WTF::HashTable<WebCore::PermissionsPolicy::Feature,WebCore::PermissionsPolicy::Feature,WTF::IdentityExtractor,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::computeBestTableSize(*(v3 - 3));
  v7 = WTF::fastMalloc((v6 + 16));
  v8 = v7;
  v9 = v7 + 16;
  if (v6)
  {
    memset((v7 + 16), 255, v6);
  }

  *a1 = v9;
  LODWORD(v10) = v6 - 1;
  v8[2] = v6 - 1;
  v8[3] = v6;
  *v8 = 0;
  v8[1] = v4;
  v11 = *a2;
  if (!*a2)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_28;
  }

  v12 = *(v11 - 1);
  v13 = &v11[v12];
  if (!*(v11 - 3))
  {
LABEL_28:
    v14 = v13;
    v13 = &v11[v12];
    goto LABEL_12;
  }

  if (!v12)
  {
    v15 = 0;
    v14 = *a2;
    goto LABEL_14;
  }

  v14 = *a2;
  while (*v14 >= 0xFEu)
  {
    ++v14;
    if (!--v12)
    {
      v14 = v13;
      break;
    }
  }

LABEL_12:
  if (!v11)
  {
    goto LABEL_15;
  }

  v15 = *(v11 - 1);
LABEL_14:
  v11 += v15;
LABEL_15:
  if (v14 != v11)
  {
    if (v9)
    {
      v10 = v10;
    }

    else
    {
      v10 = 0;
    }

    do
    {
      v16 = 0;
      v17 = *v14;
      v18 = 9 * ((~(v17 << 15) + v17) ^ ((~(v17 << 15) + v17) >> 10));
      v19 = ((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) ^ (((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) >> 16);
      do
      {
        v20 = v19 & v10;
        v21 = *(v9 + (v19 & v10));
        v19 = ++v16 + (v19 & v10);
      }

      while (v21 != 255);
      *(v9 + v20) = v17;
      if (++v14 != v13)
      {
        while (*v14 >= 0xFEu)
        {
          if (++v14 == v13)
          {
            v14 = v13;
            break;
          }
        }
      }
    }

    while (v14 != v11);
  }

  return a1;
}

uint64_t WTF::HashTable<WebCore::PermissionsPolicy::Feature,WebCore::PermissionsPolicy::Feature,WTF::IdentityExtractor,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::computeBestTableSize(uint64_t result)
{
  if (result > 1)
  {
    v4 = __clz(result - 1);
    if (!v4)
    {
      __break(1u);
      return result;
    }

    v2 = (1 << -v4);
    v1 = result;
    if (result > 0x400)
    {
      if (v2 > 2 * result)
      {
        goto LABEL_4;
      }

LABEL_14:
      LODWORD(v2) = 2 * v2;
      goto LABEL_4;
    }
  }

  else
  {
    v1 = result;
    v2 = 1;
  }

  if (3 * v2 <= 4 * v1)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v2 > 0x400)
  {
    v3 = 0.416666667;
  }

  else
  {
    v3 = 0.604166667;
  }

  if (v2 * v3 <= result)
  {
    LODWORD(v2) = 2 * v2;
  }

  if (v2 <= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t std::__optional_move_base<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7D6130(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7D61BC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::RsaOtherPrimesInfo>::destruct(*a1, (*a1 + 24 * v3));
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::RsaOtherPrimesInfo>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
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

uint64_t WebCore::JsonWebKey::JsonWebKey(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  std::__optional_move_base<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 16, (a2 + 2));
  *(a1 + 40) = *(a2 + 10);
  v6 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 28);
  v7 = a2[8];
  a2[8] = 0;
  *(a1 + 64) = v7;
  v8 = a2[9];
  a2[9] = 0;
  *(a1 + 72) = v8;
  v9 = a2[10];
  a2[10] = 0;
  *(a1 + 80) = v9;
  v10 = a2[11];
  a2[11] = 0;
  *(a1 + 88) = v10;
  v11 = a2[12];
  a2[12] = 0;
  *(a1 + 96) = v11;
  v12 = a2[13];
  a2[13] = 0;
  *(a1 + 104) = v12;
  v13 = a2[14];
  a2[14] = 0;
  *(a1 + 112) = v13;
  v14 = a2[15];
  a2[15] = 0;
  *(a1 + 120) = v14;
  v15 = a2[16];
  a2[16] = 0;
  *(a1 + 128) = v15;
  v16 = a2[17];
  a2[17] = 0;
  *(a1 + 136) = v16;
  v17 = a2[18];
  a2[18] = 0;
  *(a1 + 144) = v17;
  std::__optional_move_base<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 152, (a2 + 19));
  v18 = a2[22];
  a2[22] = 0;
  *(a1 + 176) = v18;
  return a1;
}

void sub_19D7D63E0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 144);
  *(v2 + 144) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(v2 + 136);
  *(v2 + 136) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(v2 + 128);
  *(v2 + 128) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v2 + 120);
  *(v2 + 120) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(v2 + 112);
  *(v2 + 112) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(v2 + 104);
  *(v2 + 104) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(v2 + 96);
  *(v2 + 96) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(v2 + 88);
  *(v2 + 88) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  v14 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  v15 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  if (*(v2 + 32) == 1)
  {
    v16 = *(v2 + 16);
    if (v16)
    {
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      WTF::fastFree(v16, a2);
    }
  }

  v17 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  v18 = *v2;
  *v2 = 0;
  if (v18)
  {
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::JsonWebKey::~JsonWebKey(WebCore::JsonWebKey *this, WTF::StringImpl *a2)
{
  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (*(this + 168) == 1)
  {
    WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 152, a2);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 17);
  *(this + 17) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 16);
  *(this + 16) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 14);
  *(this + 14) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 13);
  *(this + 13) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 12);
  *(this + 12) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(this + 11);
  *(this + 11) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(this + 10);
  *(this + 10) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(this + 9);
  *(this + 9) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  v14 = *(this + 8);
  *(this + 8) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  v15 = *(this + 6);
  *(this + 6) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  if (*(this + 32) == 1)
  {
    v16 = *(this + 2);
    if (v16)
    {
      *(this + 2) = 0;
      *(this + 6) = 0;
      WTF::fastFree(v16, a2);
    }
  }

  v17 = *(this + 1);
  *(this + 1) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  v18 = *this;
  *this = 0;
  if (v18)
  {
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, a2);
    }
  }
}

_BYTE *std::__optional_move_base<WebCore::JsonWebKey,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[184] = 0;
  if (*(a2 + 184) == 1)
  {
    WebCore::JsonWebKey::JsonWebKey(a1, a2);
    a1[184] = 1;
  }

  return a1;
}

void sub_19D7D6854(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 184) == 1)
  {
    WebCore::JsonWebKey::~JsonWebKey(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::RectEdges<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>::RectEdges(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 64; i += 16)
  {
    mpark::detail::copy_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::copy_constructor((a1 + i), (a2 + i));
  }

  return a1;
}

void sub_19D7D68C4(_Unwind_Exception *exception_object, void *a2)
{
  if (v3)
  {
    v5 = v2 - 16;
    v6 = -v3;
    do
    {
      v5 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v5, a2) - 16;
      v6 += 16;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *mpark::detail::copy_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::copy_constructor(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  result[8] = -1;
  v2 = a2[8];
  if (!a2[8])
  {
    *result = *a2;
LABEL_3:
    result[8] = v2;
    return result;
  }

  if (v2 != 255)
  {
    v3 = *a2;
    *result = *a2;
    if ((v3 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 1u);
      LOBYTE(v2) = a2[8];
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if (v2 != 255 && v2 != 0 && (*result & 0x8000000000000) != 0)
  {
    v4 = (*result & 0xFFFFFFFFFFFFLL);
    add = atomic_fetch_add(v4, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(1u, v4);
      v6 = result;
      WTF::fastFree(v4, a2);
      result = v6;
    }
  }

  *(result + 8) = -1;
  return result;
}

uint64_t WebKit::WebTouchEvent::WebTouchEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, char a7, char a8, float a9, float a10, char a11)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F10E83B8;
  v19 = *(a2 + 12);
  v20 = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 28) = v20;
  *(a1 + 12) = v19;
  *a1 = &unk_1F10E7D80;
  WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 48, a3);
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 64, a4);
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 80, a5);
  *(a1 + 96) = a6;
  *(a1 + 104) = a11;
  *(a1 + 105) = a7;
  *(a1 + 106) = a8;
  *(a1 + 108) = a9;
  *(a1 + 112) = a10;
  return a1;
}

void sub_19D7D6A88(_Unwind_Exception *a1, void *a2)
{
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 64, a2);
  v5 = *(v2 + 48);
  if (v5)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v5, v4);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0x3333334)
  {
    v5 = 80 * v3;
    v6 = WTF::fastMalloc((80 * v3));
    *(v2 + 8) = v5 / 0x50;
    *v2 = v6;
    v7 = *(a2 + 12);
    if (v7)
    {
      v8 = *a2;
      v9 = 80 * v7;
      do
      {
        *v6 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        v12 = v8[4];
        v6[3] = v8[3];
        v6[4] = v12;
        v6[1] = v10;
        v6[2] = v11;
        v6 += 5;
        v8 += 5;
        v9 -= 80;
      }

      while (v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 25))
  {
    v5 = WTF::fastMalloc((v3 << 7));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = v5;
      v8 = 0;
      v9 = *a2;
      v10 = v6 << 7;
      do
      {
        v11 = v7 + v8;
        *(v11 + 8) = 0;
        *v11 = &unk_1F10E83B8;
        v12 = *(v9 + v8 + 12);
        v13 = *(v9 + v8 + 28);
        *(v11 + 44) = *(v9 + v8 + 44);
        *(v11 + 28) = v13;
        *(v11 + 12) = v12;
        *v11 = &unk_1F10E7D80;
        WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v7 + v8 + 48, v9 + v8 + 48);
        WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v7 + v8 + 64, v9 + v8 + 64);
        v14 = v7 + v8;
        WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v7 + v8 + 80, v9 + v8 + 80);
        v15 = *(v9 + v8 + 96);
        *(v14 + 112) = *(v9 + v8 + 112);
        *(v14 + 96) = v15;
        v8 += 128;
      }

      while (v10 != v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19D7D6CA4(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0x199999A)
  {
    v5 = 160 * v3;
    v6 = WTF::fastMalloc((160 * v3));
    *(v2 + 8) = v5 / 0xA0;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = v6;
      v9 = 0;
      v10 = *a2;
      v11 = 160 * v7;
      do
      {
        v12 = v8 + v9;
        *(v12 + 8) = 0;
        *v12 = &unk_1F10E83B8;
        v13 = v10 + v9;
        v14 = *(v10 + v9 + 12);
        v15 = *(v10 + v9 + 28);
        *(v12 + 44) = *(v10 + v9 + 44);
        *(v12 + 28) = v15;
        *(v12 + 12) = v14;
        *v12 = &unk_1F10E8378;
        v16 = *(v10 + v9 + 48);
        v17 = *(v10 + v9 + 64);
        v18 = *(v10 + v9 + 96);
        *(v12 + 80) = *(v10 + v9 + 80);
        *(v12 + 96) = v18;
        *(v12 + 48) = v16;
        *(v12 + 64) = v17;
        v19 = *(v10 + v9 + 112);
        if (v19)
        {
          atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
        }

        *(v12 + 112) = v19;
        *(v12 + 120) = *(v13 + 120);
        WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v12 + 128, v13 + 128);
        WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v8 + v9 + 144, v10 + v9 + 144);
        v9 += 160;
      }

      while (v11 != v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19D7D6E58(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v6 = *(v3 + v4 + 112);
  *(v3 + v4 + 112) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebMouseEvent::WebMouseEvent(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F10E83B8;
  v4 = *(a2 + 12);
  v5 = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 28) = v5;
  *(a1 + 12) = v4;
  *a1 = &unk_1F10E8378;
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  v8 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = *(a2 + 112);
  *(a2 + 112) = 0;
  v10 = *(a2 + 120);
  *(a1 + 128) = 0;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  *(a1 + 136) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 128, (a2 + 128));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 144, (a2 + 144));
  return a1;
}

void sub_19D7D6FA0(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 144) = 0;
    *(v2 + 152) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  v8 = *(v2 + 112);
  *(v2 + 112) = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }
  }

  _Unwind_Resume(a1);
}

void WebKit::WebWheelEvent::~WebWheelEvent(WebKit::WebWheelEvent *this, void *a2)
{
  if (atomic_load(this + 2))
  {
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  else
  {
    bmalloc::api::tzoneFree(this, a2);
  }
}

uint64_t WebKit::WebNavigationDataStore::WebNavigationDataStore(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  WebCore::ResourceRequestBase::RequestData::RequestData(a1 + 16, (a2 + 2));
  v6 = a2[21];
  a2[21] = 0;
  *(a1 + 168) = v6;
  v7 = a2[22];
  a2[22] = 0;
  *(a1 + 176) = v7;
  v8 = a2[23];
  a2[23] = 0;
  *(a1 + 184) = v8;
  v9 = a2[24];
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v9;
  v10 = a2[26];
  a2[26] = 0;
  *(a1 + 208) = v10;
  WebCore::ResourceResponseBase::ResourceResponseBase(a1 + 216, (a2 + 27));
  v11 = a2[58];
  a2[58] = 0;
  *(a1 + 464) = v11;
  *(a1 + 472) = *(a2 + 472);
  return a1;
}

void sub_19D7D70D0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 208);
  *(v1 + 208) = 0;
  if (v3)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v1 + 16));
  v5 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *v1;
  *v1 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *std::__optional_move_base<WebCore::ApplicationManifest,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[272] = 0;
  if (*(a2 + 272) == 1)
  {
    WebCore::ApplicationManifest::ApplicationManifest(a1, a2);
    a1[272] = 1;
  }

  return a1;
}

void sub_19D7D7188(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 272) == 1)
  {
    WebCore::ApplicationManifest::~ApplicationManifest(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::UserContentControllerParameters::UserContentControllerParameters(void *a1, uint64_t a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 1), (a2 + 8));
  a1[3] = 0;
  a1[4] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 3), (a2 + 24));
  a1[5] = 0;
  a1[6] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 5), (a2 + 40));
  a1[7] = 0;
  a1[8] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 7), (a2 + 56));
  a1[9] = 0;
  a1[10] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 9), (a2 + 72));
  return a1;
}

void sub_19D7D7258(_Unwind_Exception *a1, void *a2)
{
  v9 = *v7;
  if (*v7)
  {
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    WTF::fastFree(v9, a2);
  }

  WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, a2);
  WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v10);
  WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v11);
  WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, v12);
  _Unwind_Resume(a1);
}

void sub_19D7D72FC(uint64_t a1, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7D72E4);
}

uint64_t std::__optional_move_base<WebKit::WebExtensionControllerParameters,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v4 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v4;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_19D7D738C(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v5, a2);
  }

  if (*(v2 + 32) == 1)
  {
    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>::__optional_move_base[abi:sn200100](uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 13) = 0;
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    LODWORD(v2) = *(a2 + 2);
    *(a2 + 2) = 0;
    *(result + 8) = v2;
    LODWORD(v2) = *(a2 + 3);
    *(a2 + 3) = 0;
    *(result + 12) = v2;
    LODWORD(v2) = *(a2 + 4);
    *(a2 + 4) = 0;
    *(result + 16) = v2;
    LOBYTE(v2) = *(a2 + 20);
    *(a2 + 20) = 0;
    *(result + 20) = v2;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **this, WTF::StringImpl *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = this;
    do
    {
      v5 = *v4;
      *v4 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree(this, a2);
}

_BYTE *std::__optional_move_base<WebKit::RemotePageParameters,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[224] = 0;
  if (*(a2 + 224) == 1)
  {
    WebKit::RemotePageParameters::RemotePageParameters(a1, a2);
    a1[224] = 1;
  }

  return a1;
}

uint64_t WebKit::RemotePageParameters::RemotePageParameters(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  v4 = *(a2 + 40);
  *(v5 + 56) = *(a2 + 56);
  *(v5 + 40) = v4;
  v6 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(v5 + 64) = v6;
  v7 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 72) = v7;
  *(v5 + 88) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v5 + 80, (a2 + 80));
  std::__optional_move_base<WebKit::WebsitePoliciesData,false>::__optional_move_base[abi:sn200100]((a1 + 96), a2 + 96);
  return a1;
}

void sub_19D7D7584(_Unwind_Exception *a1, void *a2)
{
  WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  v6 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v6)
  {
    WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v6, v5);
  }

  v7 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = *v2;
  *v2 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *std::__optional_move_base<WebCore::WindowFeatures,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[80] = 0;
  if (*(a2 + 80) == 1)
  {
    WebCore::WindowFeatures::WindowFeatures(a1, a2);
    a1[80] = 1;
  }

  return a1;
}

void sub_19D7D7654(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 80) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 64, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WebKit::WebPageCreationParameters::WebPageCreationParameters(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 29) = 0;
  v5 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v5;
  LODWORD(v5) = *(a2 + 6);
  *(a2 + 6) = 0;
  *(a1 + 24) = v5;
  LODWORD(v5) = *(a2 + 7);
  *(a2 + 7) = 0;
  *(a1 + 28) = v5;
  LODWORD(v5) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 32) = v5;
  LOBYTE(v5) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 36) = v5;
  *(a1 + 40) = 0;
  *(a1 + 53) = 0;
  *(a1 + 48) = 0;
  v6 = a2[5];
  a2[5] = 0;
  *(a1 + 40) = v6;
  LODWORD(v6) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(a1 + 48) = v6;
  LODWORD(v6) = *(a2 + 13);
  *(a2 + 13) = 0;
  *(a1 + 52) = v6;
  LODWORD(v6) = *(a2 + 14);
  *(a2 + 14) = 0;
  *(a1 + 56) = v6;
  LOBYTE(v6) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 60) = v6;
  v7 = *(a2 + 4);
  *(a1 + 80) = a2[10];
  *(a1 + 64) = v7;
  v8 = a2[11];
  a2[11] = 0;
  *(a1 + 88) = v8;
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = 0;
  if (a1 != a2)
  {
    v9 = a2[14];
    a2[14] = 0;
    *(a1 + 112) = v9;
  }

  v10 = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v10;
  v11 = *(a2 + 19);
  v12 = *(a2 + 21);
  v13 = *(a2 + 23);
  *(a1 + 200) = *(a2 + 25);
  *(a1 + 184) = v13;
  *(a1 + 168) = v12;
  *(a1 + 152) = v11;
  v14 = a2[27];
  a2[27] = 0;
  *(a1 + 216) = v14;
  v15 = *(a2 + 14);
  v16 = *(a2 + 16);
  *(a1 + 240) = *(a2 + 15);
  *(a1 + 256) = v16;
  *(a1 + 224) = v15;
  v17 = *(a2 + 17);
  v18 = *(a2 + 18);
  v19 = *(a2 + 19);
  *(a1 + 317) = *(a2 + 317);
  *(a1 + 288) = v18;
  *(a1 + 304) = v19;
  *(a1 + 272) = v17;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 328, a2 + 82);
  *(a1 + 344) = *(a2 + 43);
  v20 = *(a2 + 45);
  v21 = *(a2 + 47);
  v22 = *(a2 + 51);
  *(a1 + 392) = *(a2 + 49);
  *(a1 + 408) = v22;
  *(a1 + 360) = v20;
  *(a1 + 376) = v21;
  v23 = *(a2 + 53);
  v24 = *(a2 + 55);
  v25 = *(a2 + 57);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 440) = v24;
  *(a1 + 456) = v25;
  *(a1 + 424) = v23;
  *(a1 + 480) = 0;
  if (a1 != a2)
  {
    v26 = a2[60];
    a2[60] = 0;
    *(a1 + 480) = v26;
  }

  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 496, a2 + 124);
  *(a1 + 512) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 512, a2 + 128);
  *(a1 + 528) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 528, a2 + 132);
  *(a1 + 544) = *(a2 + 136);
  v27 = a2[69];
  a2[69] = 0;
  *(a1 + 552) = v27;
  *(a1 + 560) = *(a2 + 35);
  *(a1 + 576) = 0;
  v28 = a2[72];
  a2[72] = 0;
  *(a1 + 576) = v28;
  *(a1 + 584) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 584, a2 + 146);
  std::__optional_move_base<WebCore::ApplicationManifest,false>::__optional_move_base[abi:sn200100]((a1 + 600), (a2 + 75));
  *(a1 + 880) = *(a2 + 220);
  WebKit::UserContentControllerParameters::UserContentControllerParameters((a1 + 888), (a2 + 111));
  std::__optional_move_base<WebKit::WebExtensionControllerParameters,false>::__optional_move_base[abi:sn200100](a1 + 976, a2 + 122);
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 0;
  if (*(a2 + 1024) == 1)
  {
    *(a1 + 1016) = 0;
    if (a1 != a2)
    {
      v44 = a2[127];
      a2[127] = 0;
      *(a1 + 1016) = v44;
    }

    *(a1 + 1024) = 1;
  }

  *(a1 + 1032) = *(a2 + 129);
  v29 = a2[131];
  a2[131] = 0;
  *(a1 + 1048) = v29;
  *(a1 + 1056) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 1056, a2 + 264);
  *(a1 + 1072) = 0;
  v30 = a2[134];
  a2[134] = 0;
  *(a1 + 1072) = v30;
  *(a1 + 1080) = *(a2 + 1080);
  std::__optional_move_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>::__optional_move_base[abi:sn200100](a1 + 1088, a2 + 136);
  v31 = *(a2 + 280);
  *(a1 + 1123) = *(a2 + 1123);
  *(a1 + 1120) = v31;
  v32 = a2[141];
  a2[141] = 0;
  *(a1 + 1128) = v32;
  v33 = *(a2 + 71);
  *(a1 + 1152) = *(a2 + 288);
  *(a1 + 1136) = v33;
  std::__optional_move_base<WebKit::RemotePageParameters,false>::__optional_move_base[abi:sn200100]((a1 + 1160), (a2 + 145));
  *(a1 + 1392) = *(a2 + 87);
  v34 = *(a2 + 88);
  v35 = *(a2 + 89);
  v36 = *(a2 + 90);
  *(a1 + 1456) = a2[182];
  *(a1 + 1440) = v36;
  *(a1 + 1424) = v35;
  *(a1 + 1408) = v34;
  v37 = a2[183];
  a2[183] = 0;
  *(a1 + 1464) = v37;
  v38 = *(a2 + 92);
  *(a1 + 1488) = *(a2 + 744);
  *(a1 + 1472) = v38;
  std::__optional_move_base<WebCore::WindowFeatures,false>::__optional_move_base[abi:sn200100]((a1 + 1496), (a2 + 187));
  *(a1 + 1584) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 1584, a2 + 396);
  *(a1 + 1600) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 1600, a2 + 400);
  v39 = a2[202];
  a2[202] = 0;
  *(a1 + 1616) = v39;
  v40 = *(a2 + 203);
  v41 = *(a2 + 205);
  *(a1 + 1656) = *(a2 + 414);
  *(a1 + 1624) = v40;
  *(a1 + 1640) = v41;
  v42 = a2[208];
  a2[208] = 0;
  *(a1 + 1664) = v42;
  *(a1 + 1672) = *(a2 + 1672);
  return a1;
}

void sub_19D7D7B54(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = *v18;
  if (*v18)
  {
    *(v10 + 1600) = 0;
    *(v10 + 1608) = 0;
    WTF::fastFree(v20, a2);
  }

  WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, a2);
  if (*(v10 + 1576) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 1560, v21);
  }

  v22 = *(v10 + 1464);
  *(v10 + 1464) = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

  if (*(v10 + 1384) == 1)
  {
    if (*(v10 + 1376) == 1)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData((v10 + 1256), v21);
    }

    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 1240, v21);
    v23 = *(v10 + 1232);
    *(v10 + 1232) = 0;
    if (v23)
    {
      WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v23, v21);
    }

    v24 = *(v10 + 1224);
    *(v10 + 1224) = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v21);
    }

    v25 = *v16;
    *v16 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v21);
    }
  }

  v26 = *(v10 + 1128);
  *(v10 + 1128) = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v21);
  }

  if (*(v10 + 1112) == 1 && *v15)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*v15, *(v10 + 1096));
  }

  v27 = *(v10 + 1072);
  if (v27)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v27, v21);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v21);
  v29 = *(v10 + 1048);
  *(v10 + 1048) = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v28);
  }

  if (*(v10 + 1024) == 1)
  {
    v30 = *(v10 + 1016);
    if ((v30 & 0x8000000000000) != 0)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v30 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v31);
        WTF::fastFree(v31, v28);
      }
    }
  }

  if (*(v10 + 1008) == 1)
  {
    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 992, v28);
  }

  WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 960, v28);
  WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 944, v32);
  WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 928, v33);
  WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v10 + 912), v34);
  WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 896, v35);
  if (*(v10 + 872) == 1)
  {
    WebCore::ApplicationManifest::~ApplicationManifest((v10 + 600), v36);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v36);
  v38 = *(v10 + 576);
  if (v38)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v38, v37);
  }

  v39 = *(v10 + 552);
  *(v10 + 552) = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v37);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9, v37);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10, v40);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 496, v41);
  v43 = *(v10 + 480);
  if ((v43 & 0x8000000000000) != 0)
  {
    v49 = (v43 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v43 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v49);
      WTF::fastFree(v49, v42);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 328, v42);
  v45 = *(v10 + 216);
  *(v10 + 216) = 0;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v44);
  }

  v46 = *(v10 + 112);
  if ((v46 & 0x8000000000000) != 0)
  {
    v48 = (v46 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v46 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v48);
      WTF::fastFree(v48, v44);
    }
  }

  v47 = *(v10 + 88);
  *(v10 + 88) = 0;
  if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v47, v44);
  }

  if (*v12)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*v12, *(v10 + 48));
  }

  if (*v11)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*v11, *(v10 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_19D7D7EA8(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 584) = 0;
    *(v2 + 592) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7D7D7CLL);
}

void sub_19D7D7EC4(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 528) = 0;
    *(v2 + 536) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7D7DACLL);
}

void sub_19D7D7EE0(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 512) = 0;
    *(v2 + 520) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7D7DB4);
}

void sub_19D7D7EFC(uint64_t a1, void *a2)
{
  v3 = *(v2 + 496);
  if (v3)
  {
    *(v2 + 496) = 0;
    *(v2 + 504) = 0;
    WTF::fastFree(v3, a2);
  }

  JUMPOUT(0x19D7D7DBCLL);
}

void sub_19D7D7F18(uint64_t a1, void *a2)
{
  v3 = *(v2 + 328);
  if (v3)
  {
    *(v2 + 328) = 0;
    *(v2 + 336) = 0;
    WTF::fastFree(v3, a2);
  }

  JUMPOUT(0x19D7D7DCCLL);
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(WTF *this, WTF::StringImpl *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = this + 8;
    do
    {
      mpark::detail::copy_constructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1>::~copy_constructor(v4, a2);
      v5 = *(v4 - 1);
      *(v4 - 1) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>::~KeyValuePair(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  mpark::detail::copy_constructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1>::~copy_constructor((a1 + 1), a2);
  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  return a1;
}

uint64_t mpark::detail::copy_constructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1>::~copy_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (!*(a1 + 8))
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1> &>(uint64_t a1, WTF::StringImpl *a2)
{
  if (!*(a2 + 8))
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v2, a2);
      }
    }
  }
}

void *WebKit::ScriptTrackingPrivacyRules::ScriptTrackingPrivacyRules(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  a1[2] = 0;
  a1[3] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 2), a2 + 4);
  a1[4] = 0;
  a1[5] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 4), a2 + 8);
  a1[6] = 0;
  a1[7] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 6), a2 + 12);
  return a1;
}

void sub_19D7D8104(_Unwind_Exception *a1, void *a2)
{
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v7, a2);
  }

  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v8);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, v9);
  _Unwind_Resume(a1);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = v4[1];
        v4[1] = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 4;
    do
    {
      if (*(v4 - 4) || *v4 != 1 || (*(v4 + 1) & 1) == 0)
      {
        v5 = *(v4 + 4);
        if ((v5 & 0x8000000000000) != 0)
        {
          v6 = (v5 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v6);
            WTF::fastFree(v6, a2);
          }
        }
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,std::pair<WTF::String,unsigned long long>>::destruct(*a1, (*a1 + 16 * v3));
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

WTF::StringImpl *WTF::VectorDestructor<true,std::pair<WTF::String,unsigned long long>>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
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

      v3 += 2;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 - 1);
  if (v3)
  {
    do
    {
      if (*a1 != -1)
      {
        a1 = WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~KeyValuePair(a1, a2);
      }

      a1 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((v2 - 2), a2);
}

WTF::StringImpl **WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~KeyValuePair(WTF::StringImpl **a1, void *a2)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
        v5 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void std::__optional_storage_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>>(WTF::MachSendRight *a1, uint64_t a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {

      mpark::detail::assignment<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::generic_assign<mpark::detail::move_assignment<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>>(a1, a2);
    }
  }

  else if (*(a1 + 88))
  {
    *(mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(a1) + 88) = 0;
  }

  else
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::move_constructor(a1, a2)[88] = 1;
  }
}

void mpark::detail::assignment<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::generic_assign<mpark::detail::move_assignment<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>>(WTF::MachSendRight *this, uint64_t a2)
{
  v3 = *(this + 80);
  v4 = *(a2 + 80);
  if (v3 != 255 || v4 != 255)
  {
    if (v4 == 255)
    {
      if (v3 != 255)
      {
        if (!v3 && *(this + 32) == 1)
        {
          v5 = *(this + 3);
          *(this + 3) = 0;
          if (v5)
          {
            CFRelease(v5);
          }
        }

        WTF::MachSendRight::~MachSendRight(this);
      }

      *(this + 80) = -1;
    }

    else
    {
      v6 = this;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore21ShareableBitmapHandleEN3WTF13MachSendRightEEEEE14generic_assignINS0_15move_assignmentISA_LNS0_5TraitE1EEEEEvOT_EUlRSG_OT0_E_JRSB_SF_EEEDcmSH_DpOT0_(v4, &v6, this, a2);
    }
  }
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore21ShareableBitmapHandleEN3WTF13MachSendRightEEEEE14generic_assignINS0_15move_assignmentISA_LNS0_5TraitE1EEEEEvOT_EUlRSG_OT0_E_JRSB_SF_EEEDcmSH_DpOT0_(uint64_t a1, WTF::MachSendRight **a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *(*a2 + 80);
  if (a1)
  {
    if (v7 == 1)
    {

      WTF::MachSendRight::operator=();
    }

    else
    {
      if (v7 != 255)
      {
        if (!*(*a2 + 80) && *(v6 + 32) == 1)
        {
          v13 = *(v6 + 24);
          *(v6 + 24) = 0;
          if (v13)
          {
            CFRelease(v13);
          }
        }

        WTF::MachSendRight::~MachSendRight(v6);
      }

      *(v6 + 80) = -1;
      WTF::MachSendRight::MachSendRight();
      *(v6 + 80) = 1;
    }
  }

  else if (*(*a2 + 80))
  {
    if (v7 != 255)
    {
      WTF::MachSendRight::~MachSendRight(*a2);
    }

    *(v6 + 80) = -1;
    WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v6, a4);
    *(v6 + 80) = 0;
  }

  else
  {
    WTF::MachSendRight::operator=();
    *(a3 + 8) = *(a4 + 8);
    *(a3 + 16) = *(a4 + 16);
    std::__optional_storage_base<WebCore::DestinationColorSpace,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::DestinationColorSpace,false>>(a3 + 24, (a4 + 24));
    v8 = *(a4 + 44);
    *(a3 + 40) = *(a4 + 40);
    *(a3 + 44) = v8;
    v9 = *(a4 + 52);
    *(a3 + 48) = *(a4 + 48) != 0;
    *(a3 + 52) = v9;
    v10 = *(a4 + 60);
    *(a3 + 56) = *(a4 + 56) != 0;
    *(a3 + 60) = v10;
    v11 = *(a4 + 68);
    *(a3 + 64) = *(a4 + 64) != 0;
    v12 = *(a4 + 72);
    *(a3 + 68) = v11;
    *(a3 + 72) = v12;
  }
}

void std::__optional_storage_base<WebCore::DestinationColorSpace,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::DestinationColorSpace,false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a2;
      *a2 = 0;
      v4 = *a1;
      *a1 = v3;
      if (v4)
      {

        CFRelease(v4);
      }
    }
  }

  else if (*(a1 + 8))
  {
    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *a1 = v6;
    *(a1 + 8) = 1;
  }
}

WTF::MachSendRight *mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(WTF::MachSendRight *this)
{
  if (*(this + 80) != 255)
  {
    if (!*(this + 80) && *(this + 32) == 1)
    {
      v3 = *(this + 3);
      *(this + 3) = 0;
      if (v3)
      {
        CFRelease(v3);
      }
    }

    WTF::MachSendRight::~MachSendRight(this);
  }

  *(this + 80) = -1;
  return this;
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[80] = -1;
  if (!*(a2 + 80))
  {
    WebCore::ShareableBitmapHandle::ShareableBitmapHandle(a1, a2);
    goto LABEL_4;
  }

  if (*(a2 + 80) != 255)
  {
    WTF::MachSendRight::MachSendRight();
LABEL_4:
    a1[80] = *(a2 + 80);
  }

  return a1;
}

uint64_t std::__optional_storage_base<WebCore::FixedContainerEdges,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::FixedContainerEdges,false>>(uint64_t result, unsigned __int8 *a2)
{
  v2 = a2;
  v3 = result;
  if (*(result + 64) == a2[64])
  {
    if (*(result + 64))
    {
      v4 = 4;
      do
      {
        v5 = *(v3 + 8);
        result = v2[8];
        if (v5 != 255 || result != 255)
        {
          if (result == 255)
          {
            if (v5 != 255 && v5 != 0)
            {
              v7 = *v3;
              if ((*v3 & 0x8000000000000) != 0)
              {
                result = v7 & 0xFFFFFFFFFFFFLL;
                if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, result);
                  result = WTF::fastFree(result, a2);
                }
              }
            }

            *(v3 + 8) = -1;
          }

          else
          {
            v10 = v3;
            result = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore20PredominantColorTypeENS6_5ColorEEEEE14generic_assignIRKNS0_15copy_assignmentIS9_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSA_SG_EEEDcmSI_DpOT0_(result, &v10, v3, v2);
          }
        }

        v2 += 16;
        v3 += 16;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    if (*(result + 64))
    {
      result += 48;
      v8 = -64;
      do
      {
        result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(result, a2) - 16;
        v8 += 16;
      }

      while (v8);
      v9 = 0;
    }

    else
    {
      result = WebCore::RectEdges<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>::RectEdges(result, a2);
      v9 = 1;
    }

    *(v3 + 64) = v9;
  }

  return result;
}

unsigned int *_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore20PredominantColorTypeENS6_5ColorEEEEE14generic_assignIRKNS0_15copy_assignmentIS9_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSA_SG_EEEDcmSI_DpOT0_(unsigned int *result, uint64_t *a2, void *a3, void *a4)
{
  v4 = *a2;
  v5 = *(*a2 + 8);
  if (result)
  {
    if (v5 == 1)
    {
      v6 = *a3;
      if (*a3 != *a4)
      {
        if ((v6 & 0x8000000000000) != 0)
        {
          result = (v6 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            v14 = a3;
            v17 = a4;
            result = WTF::fastFree(result, a2);
            a3 = v14;
            a4 = v17;
          }
        }

        v7 = *a4;
        *a3 = *a4;
        if ((v7 & 0x8000000000000) != 0)
        {
          atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 1u);
        }
      }
    }

    else
    {
      if (v5 != 255 && v5 != 0)
      {
        v11 = *v4;
        if ((*v4 & 0x8000000000000) != 0)
        {
          result = (v11 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            v13 = v4;
            v16 = a4;
            result = WTF::fastFree(result, a2);
            v4 = v13;
            a4 = v16;
          }
        }
      }

      *(v4 + 8) = -1;
      v9 = *a4;
      *v4 = *a4;
      if ((v9 & 0x8000000000000) != 0)
      {
        atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 1u);
      }

      *(v4 + 8) = 1;
    }
  }

  else if (*(*a2 + 8))
  {
    if (v5 != 255)
    {
      v10 = *v4;
      if ((*v4 & 0x8000000000000) != 0)
      {
        result = (v10 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          v12 = v4;
          v15 = a4;
          result = WTF::fastFree(result, a2);
          v4 = v12;
          a4 = v15;
        }
      }
    }

    *v4 = *a4;
    *(v4 + 8) = 0;
  }

  else
  {
    *a3 = *a4;
  }

  return result;
}

void std::__optional_storage_base<WebKit::EditorState,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::EditorState,false>>(uint64_t a1, char *a2)
{
  if (*(a1 + 544) == a2[544])
  {
    if (*(a1 + 544))
    {
      v4 = *a2;
      *(a1 + 15) = *(a2 + 15);
      *a1 = v4;
      std::__optional_storage_base<WebKit::EditorState::PostLayoutData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::EditorState::PostLayoutData,false>>((a1 + 32), (a2 + 32));

      std::__optional_storage_base<WebKit::EditorState::VisualData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::EditorState::VisualData,false>>((a1 + 272), (a2 + 272));
    }
  }

  else if (*(a1 + 544))
  {
    if (*(a1 + 528) == 1)
    {
      v5 = *(a1 + 424);
      if (v5)
      {
        *(a1 + 424) = 0;
        *(a1 + 432) = 0;
        WTF::fastFree(v5, a2);
      }

      v6 = *(a1 + 352);
      if (v6)
      {
        *(a1 + 352) = 0;
        *(a1 + 360) = 0;
        WTF::fastFree(v6, a2);
      }

      v7 = *(a1 + 336);
      if (v7)
      {
        *(a1 + 336) = 0;
        *(a1 + 344) = 0;
        WTF::fastFree(v7, a2);
      }
    }

    if (*(a1 + 256) == 1)
    {
      WebKit::EditorState::PostLayoutData::~PostLayoutData((a1 + 32), a2);
    }

    *(a1 + 544) = 0;
  }

  else
  {

    std::__optional_storage_base<WebKit::EditorState,false>::__construct[abi:sn200100]<WebKit::EditorState>(a1, a2);
  }
}

_BYTE *std::__optional_storage_base<WebKit::EditorState,false>::__construct[abi:sn200100]<WebKit::EditorState>(_BYTE *result, __int128 *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *a2;
    *(result + 15) = *(a2 + 15);
    *result = v4;
    std::__optional_move_base<WebKit::EditorState::PostLayoutData,false>::__optional_move_base[abi:sn200100](result + 32, (a2 + 2));
    result = std::__optional_move_base<WebKit::EditorState::VisualData,false>::__optional_move_base[abi:sn200100](v3 + 272, (a2 + 17));
    v3[544] = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19D7D8C84(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 256) == 1)
  {
    WebKit::EditorState::PostLayoutData::~PostLayoutData((v2 + 32), a2);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<WebKit::EditorState::PostLayoutData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::EditorState::PostLayoutData,false>>(WebKit::EditorState::PostLayoutData *a1, uint64_t a2)
{
  if (*(a1 + 224) == *(a2 + 224))
  {
    if (*(a1 + 224))
    {

      WebKit::EditorState::PostLayoutData::operator=(a1, a2);
    }
  }

  else if (*(a1 + 224))
  {
    WebKit::EditorState::PostLayoutData::~PostLayoutData(a1, a2);
    *(v2 + 224) = 0;
  }

  else
  {
    *(WebKit::EditorState::PostLayoutData::PostLayoutData(a1, a2) + 224) = 1;
  }
}

uint64_t WebKit::EditorState::PostLayoutData::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  if (a1 != a2)
  {
    v5 = *(a1 + 24);
    if ((v5 & 0x8000000000000) != 0)
    {
      v22 = (v5 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v22);
        WTF::fastFree(v22, a2);
      }
    }

    v6 = *(a2 + 3);
    *(a2 + 3) = 0;
    *(a1 + 24) = v6;
  }

  *(a1 + 32) = *(a2 + 8);
  v7 = *(a2 + 5);
  *(a2 + 5) = 0;
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(a2 + 6);
  *(a2 + 6) = 0;
  v10 = *(a1 + 48);
  *(a1 + 48) = v9;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(a2 + 7);
  *(a1 + 64) = *(a2 + 16);
  *(a1 + 56) = v11;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 72, a2 + 18);
  v13 = *(a2 + 22);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = v13;
  if (a1 != a2)
  {
    v14 = *(a1 + 96);
    if ((v14 & 0x8000000000000) != 0)
    {
      v23 = (v14 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v14 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23);
        WTF::fastFree(v23, v12);
      }
    }

    v15 = *(a2 + 12);
    *(a2 + 12) = 0;
    *(a1 + 96) = v15;
  }

  v16 = *(a2 + 104);
  v17 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v17;
  *(a1 + 104) = v16;
  v18 = *(a2 + 152);
  v19 = *(a2 + 168);
  v20 = *(a2 + 184);
  *(a1 + 195) = *(a2 + 195);
  *(a1 + 184) = v20;
  *(a1 + 168) = v19;
  *(a1 + 152) = v18;
  return a1;
}

void std::__optional_storage_base<WebKit::EditorState::VisualData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::EditorState::VisualData,false>>(WebKit::EditorState::VisualData *a1, uint64_t a2)
{
  if (*(a1 + 256) == *(a2 + 256))
  {
    if (*(a1 + 256))
    {

      WebKit::EditorState::VisualData::operator=(a1, a2);
    }
  }

  else if (*(a1 + 256))
  {
    WebKit::EditorState::VisualData::~VisualData(a1, a2);
    *(v2 + 256) = 0;
  }

  else
  {
    *(WebKit::EditorState::VisualData::VisualData(a1, a2) + 256) = 1;
  }
}

uint64_t WebKit::EditorState::VisualData::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 80, a2 + 20);
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v8;
  *(a1 + 128) = v9;
  *(a1 + 96) = v7;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 152, a2 + 38);
  v10 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v10;
  v11 = *(a2 + 200);
  v12 = *(a2 + 216);
  v13 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v13;
  *(a1 + 216) = v12;
  *(a1 + 200) = v11;
  return a1;
}

uint64_t std::__optional_storage_base<WebKit::EditorState,false>::~__optional_storage_base(uint64_t a1, void *a2)
{
  if (*(a1 + 544) == 1)
  {
    if (*(a1 + 528) == 1)
    {
      v4 = *(a1 + 424);
      if (v4)
      {
        *(a1 + 424) = 0;
        *(a1 + 432) = 0;
        WTF::fastFree(v4, a2);
      }

      v5 = *(a1 + 352);
      if (v5)
      {
        *(a1 + 352) = 0;
        *(a1 + 360) = 0;
        WTF::fastFree(v5, a2);
      }

      v6 = *(a1 + 336);
      if (v6)
      {
        *(a1 + 336) = 0;
        *(a1 + 344) = 0;
        WTF::fastFree(v6, a2);
      }
    }

    if (*(a1 + 256) == 1)
    {
      WebKit::EditorState::PostLayoutData::~PostLayoutData((a1 + 32), a2);
    }
  }

  return a1;
}

uint64_t WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = 112 * v3;
    v7 = *a1 + 64;
    do
    {
      v7 = mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::~variant(v7, a2) + 112;
      v6 -= 112;
    }

    while (v6);
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

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
    do
    {
      if (*(v4 - 1) != -1)
      {
        std::unique_ptr<WebKit::LayerProperties>::reset[abi:sn200100](v4, 0);
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WebKit::LayerProperties *std::unique_ptr<WebKit::LayerProperties>::reset[abi:sn200100](WebKit::LayerProperties **a1, WebKit::LayerProperties *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::LayerProperties::~LayerProperties(result);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

uint64_t std::__optional_move_base<WTF::MachSendRightAnnotated,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    WTF::MachSendRight::MachSendRight();
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 8) = v4;
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7D916C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4)
    {
      WTF::fastFree(v4, a2);
    }

    WTF::MachSendRight::~MachSendRight(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::~variant(uint64_t result, void *a2)
{
  v2 = *(result + 40);
  if (*(result + 40) && *(result + 40) != 255)
  {
    v5 = result;
    if (v2 == 1)
    {
      if (*(result + 24) == 1)
      {
        v4 = *(result + 16);
        *(result + 16) = 0;
        if (v4)
        {
          WTF::fastFree(v4, a2);
        }

        WTF::MachSendRight::~MachSendRight((v5 + 8));
        result = v5;
      }
    }

    else if (v2 == 2)
    {
      v3 = *result;
      *result = 0;
      if (v3)
      {
        WTF::RefCounted<WebCore::Model>::deref(v3);
        result = v5;
      }
    }
  }

  *(result + 40) = -1;
  return result;
}

uint64_t WebCore::AcceleratedEffectValues::AcceleratedEffectValues(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  *(a1 + 96) = 0;
  v8 = (a1 + 96);
  *(a1 + 101) = 0;
  *(a1 + 102) = 0;
  v9 = *(a2 + 100);
  *(a1 + 100) = v9;
  *(a1 + 101) = *(a2 + 101);
  *(a1 + 103) = *(a2 + 103);
  if (v9 <= 0xD)
  {
    v10 = 1 << v9;
    if ((v10 & 0x7FC) != 0)
    {
      v11 = *(a2 + 102);
      *(a1 + 102) = v11;
      if (v11 == 1)
      {
        *v8 = *(a2 + 96);
        goto LABEL_9;
      }

      v12 = *(a2 + 96);
    }

    else
    {
      if ((v10 & 0x3003) != 0)
      {
        *v8 = 0;
        goto LABEL_9;
      }

      v12 = *(a2 + 96);
      *(a2 + 96) = 0;
    }

    *v8 = v12;
  }

LABEL_9:
  *(a2 + 100) = 0;
  *(a1 + 104) = 0;
  v13 = (a1 + 104);
  *(a1 + 109) = 0;
  *(a1 + 110) = 0;
  v14 = *(a2 + 108);
  *(a1 + 108) = v14;
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 111) = *(a2 + 111);
  if (v14 > 0xD)
  {
    goto LABEL_17;
  }

  v15 = 1 << v14;
  if ((v15 & 0x7FC) != 0)
  {
    v16 = *(a2 + 110);
    *(a1 + 110) = v16;
    if (v16 == 1)
    {
      *v13 = *(a2 + 104);
      goto LABEL_17;
    }

    v17 = *(a2 + 104);
  }

  else
  {
    if ((v15 & 0x3003) != 0)
    {
      *v13 = 0;
      goto LABEL_17;
    }

    v17 = *(a2 + 104);
    *(a2 + 104) = 0;
  }

  *v13 = v17;
LABEL_17:
  *(a2 + 108) = 0;
  v18 = *(a2 + 112);
  *(a1 + 120) = 0;
  *(a1 + 112) = v18;
  *(a1 + 128) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 120, (a2 + 120));
  v19 = *(a2 + 136);
  *(a2 + 136) = 0;
  *(a1 + 136) = v19;
  v20 = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a1 + 144) = v20;
  v21 = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 152) = v21;
  v22 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  v23 = (a1 + 168);
  *(a1 + 160) = v22;
  *(a1 + 173) = 0;
  *(a1 + 174) = 0;
  v24 = *(a2 + 172);
  *(a1 + 172) = v24;
  *(a1 + 173) = *(a2 + 173);
  *(a1 + 175) = *(a2 + 175);
  if (v24 > 0xD)
  {
    goto LABEL_25;
  }

  v25 = 1 << v24;
  if ((v25 & 0x7FC) != 0)
  {
    v26 = *(a2 + 174);
    *(a1 + 174) = v26;
    if (v26 == 1)
    {
      *v23 = *(a2 + 168);
      goto LABEL_25;
    }

    v27 = *(a2 + 168);
  }

  else
  {
    if ((v25 & 0x3003) != 0)
    {
      *v23 = 0;
      goto LABEL_25;
    }

    v27 = *(a2 + 168);
    *(a2 + 168) = 0;
  }

  *v23 = v27;
LABEL_25:
  *(a2 + 172) = 0;
  *(a1 + 176) = 0;
  v28 = (a1 + 176);
  *(a1 + 181) = 0;
  *(a1 + 182) = 0;
  v29 = *(a2 + 180);
  *(a1 + 180) = v29;
  *(a1 + 181) = *(a2 + 181);
  *(a1 + 183) = *(a2 + 183);
  if (v29 > 0xD)
  {
    goto LABEL_33;
  }

  v30 = 1 << v29;
  if ((v30 & 0x7FC) != 0)
  {
    v31 = *(a2 + 182);
    *(a1 + 182) = v31;
    if (v31 == 1)
    {
      *v28 = *(a2 + 176);
      goto LABEL_33;
    }

    v32 = *(a2 + 176);
  }

  else
  {
    if ((v30 & 0x3003) != 0)
    {
      *v28 = 0;
      goto LABEL_33;
    }

    v32 = *(a2 + 176);
    *(a2 + 176) = 0;
  }

  *v28 = v32;
LABEL_33:
  *(a2 + 180) = 0;
  *(a1 + 184) = 0;
  v33 = (a1 + 184);
  *(a1 + 189) = 0;
  *(a1 + 190) = 0;
  v34 = *(a2 + 188);
  *(a1 + 188) = v34;
  *(a1 + 189) = *(a2 + 189);
  *(a1 + 191) = *(a2 + 191);
  if (v34 > 0xD)
  {
    goto LABEL_41;
  }

  v35 = 1 << v34;
  if ((v35 & 0x7FC) != 0)
  {
    v36 = *(a2 + 190);
    *(a1 + 190) = v36;
    if (v36 == 1)
    {
      *v33 = *(a2 + 184);
      goto LABEL_41;
    }

    v37 = *(a2 + 184);
  }

  else
  {
    if ((v35 & 0x3003) != 0)
    {
      *v33 = 0;
      goto LABEL_41;
    }

    v37 = *(a2 + 184);
    *(a2 + 184) = 0;
  }

  *v33 = v37;
LABEL_41:
  *(a2 + 188) = 0;
  *(a1 + 192) = 0;
  v38 = (a1 + 192);
  *(a1 + 197) = 0;
  *(a1 + 198) = 0;
  v39 = *(a2 + 196);
  *(a1 + 196) = v39;
  *(a1 + 197) = *(a2 + 197);
  *(a1 + 199) = *(a2 + 199);
  if (v39 > 0xD)
  {
    goto LABEL_49;
  }

  v40 = 1 << v39;
  if ((v40 & 0x7FC) != 0)
  {
    v41 = *(a2 + 198);
    *(a1 + 198) = v41;
    if (v41 == 1)
    {
      *v38 = *(a2 + 192);
      goto LABEL_49;
    }

    v42 = *(a2 + 192);
  }

  else
  {
    if ((v40 & 0x3003) != 0)
    {
      *v38 = 0;
      goto LABEL_49;
    }

    v42 = *(a2 + 192);
    *(a2 + 192) = 0;
  }

  *v38 = v42;
LABEL_49:
  *(a2 + 196) = 0;
  *(a1 + 200) = 0;
  v43 = (a1 + 200);
  *(a1 + 205) = 0;
  *(a1 + 206) = 0;
  v44 = *(a2 + 204);
  *(a1 + 204) = v44;
  *(a1 + 205) = *(a2 + 205);
  *(a1 + 207) = *(a2 + 207);
  if (v44 <= 0xD)
  {
    v45 = 1 << v44;
    if ((v45 & 0x7FC) != 0)
    {
      v46 = *(a2 + 206);
      *(a1 + 206) = v46;
      if (v46 == 1)
      {
        *v43 = *(a2 + 200);
        goto LABEL_57;
      }

      v47 = *(a2 + 200);
    }

    else
    {
      if ((v45 & 0x3003) != 0)
      {
        *v43 = 0;
        goto LABEL_57;
      }

      v47 = *(a2 + 200);
      *(a2 + 200) = 0;
    }

    *v43 = v47;
  }

LABEL_57:
  *(a2 + 204) = 0;
  v48 = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 208) = v48;
  *(a1 + 224) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 216, (a2 + 216));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 232, (a2 + 232));
  return a1;
}

void sub_19D7D9704(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Length *a9, uint64_t a10)
{
  v20 = *v12;
  if (*v12)
  {
    *(v11 + 232) = 0;
    *(v11 + 240) = 0;
    WTF::fastFree(v20, a2);
  }

  WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, a2);
  if (*(v11 + 204) == 11)
  {
    WebCore::Length::deref(v18);
  }

  if (*(v11 + 196) == 11)
  {
    WebCore::Length::deref(v17);
  }

  if (*(v11 + 188) == 11)
  {
    WebCore::Length::deref(v16);
  }

  if (*(v11 + 180) == 11)
  {
    WebCore::Length::deref(v15);
  }

  if (*(v11 + 172) == 11)
  {
    WebCore::Length::deref(v14);
  }

  v22 = *(v11 + 160);
  *(v11 + 160) = 0;
  if (v22)
  {
    if (v22[2] == 1)
    {
      (*(*v22 + 8))(v22);
    }

    else
    {
      --v22[2];
    }
  }

  v23 = *(v11 + 152);
  *(v11 + 152) = 0;
  if (v23)
  {
    if (v23[2] == 1)
    {
      (*(*v23 + 8))(v23);
    }

    else
    {
      --v23[2];
    }
  }

  v24 = *(v11 + 144);
  *(v11 + 144) = 0;
  if (v24)
  {
    if (v24[2] == 1)
    {
      (*(*v24 + 8))(v24);
    }

    else
    {
      --v24[2];
    }
  }

  v25 = *(v11 + 136);
  *(v11 + 136) = 0;
  if (v25)
  {
    if (v25[2] == 1)
    {
      (*(*v25 + 8))(v25);
    }

    else
    {
      --v25[2];
    }
  }

  WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10, v21);
  if (*(v11 + 108) == 11)
  {
    WebCore::Length::deref(v13);
  }

  if (*(v11 + 100) == 11)
  {
    WebCore::Length::deref(a9);
  }

  _Unwind_Resume(a1);
}

void *WebKit::LayerProperties::AnimationChanges::AnimationChanges(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  a1[2] = 0;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt((a1 + 3), (a2 + 24));
  WebCore::AcceleratedEffectValues::AcceleratedEffectValues((a1 + 5), a2 + 40);
  return a1;
}

void sub_19D7D99A8(_Unwind_Exception *a1, void *a2)
{
  WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  v6 = *(v2 + 16);
  if (v6)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v5);
  }

  WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, v5);
  _Unwind_Resume(a1);
}

WebKit::RemoteLayerBackingStoreProperties *std::unique_ptr<WebKit::RemoteLayerBackingStoreProperties>::reset[abi:sn200100](WebKit::RemoteLayerBackingStoreProperties **a1, WebKit::RemoteLayerBackingStoreProperties *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::RemoteLayerBackingStoreProperties::~RemoteLayerBackingStoreProperties(result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

WebKit::LayerProperties *WebKit::LayerProperties::LayerProperties(WebKit::LayerProperties *this)
{
  *(this + 4) = 0u;
  *(this + 26) = 1065353216;
  *(this + 12) = 0;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 108) = 0;
  *(this + 196) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 216) = 1;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 14) = 0u;
  *(this + 300) = 0u;
  *(this + 317) = 1;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 348) = 0u;
  *(this + 364) = 0x3F0000003F000000;
  *(this + 388) = 0;
  *(this + 99) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(this + 50) = _D1;
  *(this + 488) = 0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 51) = 0;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 66) = 0;
  *(this + 536) = xmmword_19E703030;
  *(this + 138) = 1065353216;
  *(this + 35) = xmmword_19E703040;
  *(this + 72) = 0x1010001000000;
  *(this + 584) = 1;
  *(this + 589) = 0;
  *(this + 585) = 0;
  *(this + 590) = 1;
  WebCore::EventRegion::EventRegion((this + 600));
  *(this + 720) = 1;
  *(this + 362) = 0;
  *(this + 726) = 0;
  *(this + 728) = 0;
  *(this + 776) = 0;
  return this;
}

void sub_19D7D9B7C(_Unwind_Exception *a1, void *a2)
{
  v6 = *(v2 + 568);
  if ((v6 & 0x8000000000000) != 0)
  {
    v18 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      WTF::fastFree(v18, a2);
    }
  }

  v7 = *(v2 + 560);
  if ((v7 & 0x8000000000000) != 0)
  {
    v19 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19);
      WTF::fastFree(v19, a2);
    }
  }

  mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(v2 + 432);
  std::unique_ptr<WebCore::FilterOperations>::reset[abi:sn200100]((v2 + 424), 0);
  WebKit::RemoteLayerBackingStoreOrProperties::~RemoteLayerBackingStoreOrProperties((v2 + 408));
  WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(v4, v8);
  WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 88, v9);
  v11 = *(v2 + 80);
  if (v11)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, v10);
  }

  WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v10);
  v13 = *(v2 + 48);
  if (v13)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v13, v12);
  }

  v14 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v14)
  {
    bmalloc::api::tzoneFree(v14, v12);
  }

  v15 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v15)
  {
    bmalloc::api::tzoneFree(v15, v12);
  }

  v16 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v16)
  {
    bmalloc::api::tzoneFree(v16, v12);
  }

  v17 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<WebCore::FilterOperations>::reset[abi:sn200100](uint64_t *a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v5 = WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WebCore::AcceleratedEffectValues::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  if (a1 != a2)
  {
    v8 = (a1 + 96);
    if (*(a1 + 100) == 11)
    {
      WebCore::Length::deref((a1 + 96));
    }

    v9 = *(a2 + 100);
    *(a1 + 100) = v9;
    *(a1 + 101) = *(a2 + 101);
    *(a1 + 103) = *(a2 + 103);
    if (v9 <= 0xD)
    {
      v10 = 1 << v9;
      if ((v10 & 0x7FC) != 0)
      {
        v11 = *(a2 + 102);
        *(a1 + 102) = v11;
        if (v11 == 1)
        {
          *v8 = *(a2 + 96);
          goto LABEL_12;
        }

        v12 = *(a2 + 96);
      }

      else
      {
        if ((v10 & 0x3003) != 0)
        {
          *v8 = 0;
          goto LABEL_12;
        }

        v12 = *(a2 + 96);
        *(a2 + 96) = 0;
      }

      *v8 = v12;
    }

LABEL_12:
    *(a2 + 100) = 0;
    v13 = (a1 + 104);
    if (*(a1 + 108) == 11)
    {
      WebCore::Length::deref((a1 + 104));
    }

    v14 = *(a2 + 108);
    *(a1 + 108) = v14;
    *(a1 + 109) = *(a2 + 109);
    *(a1 + 111) = *(a2 + 111);
    if (v14 > 0xD)
    {
      goto LABEL_22;
    }

    v15 = 1 << v14;
    if ((v15 & 0x7FC) != 0)
    {
      v16 = *(a2 + 110);
      *(a1 + 110) = v16;
      if (v16 == 1)
      {
        *v13 = *(a2 + 104);
LABEL_22:
        *(a2 + 108) = 0;
        goto LABEL_23;
      }

      v17 = *(a2 + 104);
    }

    else
    {
      if ((v15 & 0x3003) != 0)
      {
        *v13 = 0;
        goto LABEL_22;
      }

      v17 = *(a2 + 104);
      *(a2 + 104) = 0;
    }

    *v13 = v17;
    goto LABEL_22;
  }

LABEL_23:
  *(a1 + 112) = *(a2 + 112);
  v18 = *(a1 + 132);
  if (v18)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>>::destruct(*(a1 + 120), (*(a1 + 120) + 8 * v18));
  }

  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 120, (a2 + 120));
  v19 = *(a2 + 136);
  *(a2 + 136) = 0;
  v20 = *(a1 + 136);
  *(a1 + 136) = v19;
  if (v20)
  {
    if (v20[2] == 1)
    {
      (*(*v20 + 8))(v20);
    }

    else
    {
      --v20[2];
    }
  }

  v21 = *(a2 + 144);
  *(a2 + 144) = 0;
  v22 = *(a1 + 144);
  *(a1 + 144) = v21;
  if (v22)
  {
    if (v22[2] == 1)
    {
      (*(*v22 + 8))(v22);
    }

    else
    {
      --v22[2];
    }
  }

  v23 = *(a2 + 152);
  *(a2 + 152) = 0;
  v24 = *(a1 + 152);
  *(a1 + 152) = v23;
  if (v24)
  {
    if (v24[2] == 1)
    {
      (*(*v24 + 8))(v24);
    }

    else
    {
      --v24[2];
    }
  }

  v25 = *(a2 + 160);
  *(a2 + 160) = 0;
  v26 = *(a1 + 160);
  *(a1 + 160) = v25;
  if (v26)
  {
    if (v26[2] == 1)
    {
      (*(*v26 + 8))(v26);
    }

    else
    {
      --v26[2];
    }
  }

  if (a1 != a2)
  {
    v27 = (a1 + 168);
    if (*(a1 + 172) == 11)
    {
      WebCore::Length::deref((a1 + 168));
    }

    v28 = *(a2 + 172);
    *(a1 + 172) = v28;
    *(a1 + 173) = *(a2 + 173);
    *(a1 + 175) = *(a2 + 175);
    if (v28 <= 0xD)
    {
      v29 = 1 << v28;
      if ((v29 & 0x7FC) != 0)
      {
        v30 = *(a2 + 174);
        *(a1 + 174) = v30;
        if (v30 == 1)
        {
          *v27 = *(a2 + 168);
          goto LABEL_40;
        }

        v31 = *(a2 + 168);
      }

      else
      {
        if ((v29 & 0x3003) != 0)
        {
          *v27 = 0;
          goto LABEL_40;
        }

        v31 = *(a2 + 168);
        *(a2 + 168) = 0;
      }

      *v27 = v31;
    }

LABEL_40:
    *(a2 + 172) = 0;
    v32 = (a1 + 176);
    if (*(a1 + 180) == 11)
    {
      WebCore::Length::deref((a1 + 176));
    }

    v33 = *(a2 + 180);
    *(a1 + 180) = v33;
    *(a1 + 181) = *(a2 + 181);
    *(a1 + 183) = *(a2 + 183);
    if (v33 <= 0xD)
    {
      v34 = 1 << v33;
      if ((v34 & 0x7FC) != 0)
      {
        v35 = *(a2 + 182);
        *(a1 + 182) = v35;
        if (v35 == 1)
        {
          *v32 = *(a2 + 176);
          goto LABEL_50;
        }

        v36 = *(a2 + 176);
      }

      else
      {
        if ((v34 & 0x3003) != 0)
        {
          *v32 = 0;
          goto LABEL_50;
        }

        v36 = *(a2 + 176);
        *(a2 + 176) = 0;
      }

      *v32 = v36;
    }

LABEL_50:
    *(a2 + 180) = 0;
    v37 = (a1 + 184);
    if (*(a1 + 188) == 11)
    {
      WebCore::Length::deref((a1 + 184));
    }

    v38 = *(a2 + 188);
    *(a1 + 188) = v38;
    *(a1 + 189) = *(a2 + 189);
    *(a1 + 191) = *(a2 + 191);
    if (v38 <= 0xD)
    {
      v39 = 1 << v38;
      if ((v39 & 0x7FC) != 0)
      {
        v40 = *(a2 + 190);
        *(a1 + 190) = v40;
        if (v40 == 1)
        {
          *v37 = *(a2 + 184);
          goto LABEL_60;
        }

        v41 = *(a2 + 184);
      }

      else
      {
        if ((v39 & 0x3003) != 0)
        {
          *v37 = 0;
          goto LABEL_60;
        }

        v41 = *(a2 + 184);
        *(a2 + 184) = 0;
      }

      *v37 = v41;
    }

LABEL_60:
    *(a2 + 188) = 0;
    v42 = (a1 + 192);
    if (*(a1 + 196) == 11)
    {
      WebCore::Length::deref((a1 + 192));
    }

    v43 = *(a2 + 196);
    *(a1 + 196) = v43;
    *(a1 + 197) = *(a2 + 197);
    *(a1 + 199) = *(a2 + 199);
    if (v43 <= 0xD)
    {
      v44 = 1 << v43;
      if ((v44 & 0x7FC) != 0)
      {
        v45 = *(a2 + 198);
        *(a1 + 198) = v45;
        if (v45 == 1)
        {
          *v42 = *(a2 + 192);
          goto LABEL_70;
        }

        v46 = *(a2 + 192);
      }

      else
      {
        if ((v44 & 0x3003) != 0)
        {
          *v42 = 0;
          goto LABEL_70;
        }

        v46 = *(a2 + 192);
        *(a2 + 192) = 0;
      }

      *v42 = v46;
    }

LABEL_70:
    *(a2 + 196) = 0;
    v47 = (a1 + 200);
    if (*(a1 + 204) == 11)
    {
      WebCore::Length::deref((a1 + 200));
    }

    v48 = *(a2 + 204);
    *(a1 + 204) = v48;
    *(a1 + 205) = *(a2 + 205);
    *(a1 + 207) = *(a2 + 207);
    if (v48 > 0xD)
    {
      goto LABEL_80;
    }

    v49 = 1 << v48;
    if ((v49 & 0x7FC) != 0)
    {
      v50 = *(a2 + 206);
      *(a1 + 206) = v50;
      if (v50 == 1)
      {
        *v47 = *(a2 + 200);
LABEL_80:
        *(a2 + 204) = 0;
        goto LABEL_81;
      }

      v51 = *(a2 + 200);
    }

    else
    {
      if ((v49 & 0x3003) != 0)
      {
        *v47 = 0;
        goto LABEL_80;
      }

      v51 = *(a2 + 200);
      *(a2 + 200) = 0;
    }

    *v47 = v51;
    goto LABEL_80;
  }

LABEL_81:
  v52 = *(a2 + 208);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 208) = v52;
  v53 = *(a1 + 228);
  if (v53)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>::destruct(*(a1 + 216), (*(a1 + 216) + 8 * v53));
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 216, (a2 + 216));
  v54 = *(a1 + 244);
  if (v54)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>::destruct(*(a1 + 232), (*(a1 + 232) + 8 * v54));
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 232, (a2 + 232));
  return a1;
}

uint64_t std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>::~pair(uint64_t a1, void *a2)
{
  WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 128, a2);
  WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 112, v3);
  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    WTF::fastFree(v5, v4);
  }

  WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, v4);
  v7 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v7)
  {
    if (v7[2] == 1)
    {
      (*(*v7 + 16))(v7);
    }

    else
    {
      --v7[2];
    }
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  return a1;
}

_DWORD *WTF::VectorDestructor<true,WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>>::destruct(_DWORD *result, _DWORD **a2)
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
        if (result[4] == 1)
        {
          result = (*(*result + 56))(result);
        }

        else
        {
          --result[4];
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

unsigned int *mpark::detail::assignment<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>>::assign_alt<0ul,std::monostate,std::monostate>(mpark::detail::alt<0ul,std::monostate> &,std::monostate &&)::{unnamed type#1}::operator()(unsigned int *result)
{
  v1 = *result;
  v2 = *(*result + 56);
  if (v2 >= 2 && v2 != 255)
  {
    result = *v1;
    *v1 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        result = (*(*result + 8))(result);
      }
    }
  }

  *(v1 + 56) = 0;
  return result;
}

__n128 mpark::detail::assignment<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>>::assign_alt<1ul,WebCore::PathSegment,WebCore::PathSegment>(mpark::detail::alt<1ul,WebCore::PathSegment> &,WebCore::PathSegment &&)::{unnamed type#1}::operator()(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 56);
  if (v3 >= 2 && v3 != 255)
  {
    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4 + 2);
        (*(*v4 + 8))(v4);
      }
    }
  }

  *(v1 + 56) = -1;
  result = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  *(v1 + 48) = *(v2 + 48);
  *(v1 + 16) = v6;
  *(v1 + 32) = v7;
  *v1 = result;
  *(v1 + 56) = 1;
  return result;
}

uint64_t WebKit::LayerProperties::LayerProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0u;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 32) = v5;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, (a2 + 48));
  WebKit::LayerProperties::AnimationChanges::AnimationChanges((a1 + 64), a2 + 64);
  v6 = *(a2 + 352);
  v7 = *(a2 + 368);
  v8 = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 368) = v7;
  *(a1 + 384) = v8;
  *(a1 + 352) = v6;
  v9 = *(a2 + 408);
  v10 = *(a2 + 416);
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(a1 + 408) = v9;
  *(a2 + 424) = 0;
  *(a1 + 416) = v10;
  mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::impl(a1 + 432, (a2 + 432));
  v11 = *(a2 + 496);
  v12 = *(a2 + 512);
  v13 = *(a2 + 528);
  *(a1 + 540) = *(a2 + 540);
  *(a1 + 512) = v12;
  *(a1 + 528) = v13;
  *(a1 + 496) = v11;
  *(a1 + 560) = 0;
  if (a1 == a2)
  {
    *(a1 + 568) = 0;
  }

  else
  {
    v14 = *(a2 + 560);
    *(a2 + 560) = 0;
    *(a1 + 560) = v14;
    *(a1 + 568) = 0;
    v15 = *(a2 + 568);
    *(a2 + 568) = 0;
    *(a1 + 568) = v15;
  }

  v16 = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 576) = v16;
  WebCore::EventRegion::EventRegion(a1 + 600, a2 + 600);
  v17 = *(a2 + 720);
  v18 = *(a2 + 736);
  v19 = *(a2 + 752);
  *(a1 + 764) = *(a2 + 764);
  *(a1 + 736) = v18;
  *(a1 + 752) = v19;
  *(a1 + 720) = v17;
  return a1;
}

void sub_19D7DA6A0(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if ((*v4 & 0x8000000000000) != 0)
  {
    v8 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, a2);
    }
  }

  v7 = *(v2 + 560);
  if ((v7 & 0x8000000000000) != 0)
  {
    v9 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, a2);
    }
  }

  mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(v2 + 432);
  std::unique_ptr<WebCore::FilterOperations>::reset[abi:sn200100]((v2 + 424), 0);
  WebKit::RemoteLayerBackingStoreOrProperties::~RemoteLayerBackingStoreOrProperties((v2 + 408));
  WebCore::AcceleratedEffectValues::~AcceleratedEffectValues((v2 + 104), v10);
  WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 88, v11);
  v13 = *(v2 + 80);
  if (v13)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13, v12);
  }

  WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 64, v12);
  v15 = *v3;
  if (*v3)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v15, v14);
  }

  v16 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v16)
  {
    bmalloc::api::tzoneFree(v16, v14);
  }

  v17 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v17)
  {
    bmalloc::api::tzoneFree(v17, v14);
  }

  v18 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v18)
  {
    bmalloc::api::tzoneFree(v18, v14);
  }

  v19 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v19)
  {
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v14);
    }
  }

  _Unwind_Resume(a1);
}

void WebKit::LayerProperties::~LayerProperties(WebKit::LayerProperties *this)
{
  if (*(this + 712) == 1)
  {
    WebCore::Region::~Region((this + 688));
  }

  WebCore::Region::~Region((this + 664));
  WebCore::Region::~Region((this + 640));
  WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 624, v2);
  WebCore::Region::~Region((this + 600));
  v4 = *(this + 71);
  if ((v4 & 0x8000000000000) != 0)
  {
    v16 = (v4 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, v3);
    }
  }

  v5 = *(this + 70);
  if ((v5 & 0x8000000000000) != 0)
  {
    v17 = (v5 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      WTF::fastFree(v17, v3);
    }
  }

  mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(this + 432);
  std::unique_ptr<WebCore::FilterOperations>::reset[abi:sn200100](this + 53, 0);
  WebKit::RemoteLayerBackingStoreOrProperties::~RemoteLayerBackingStoreOrProperties(this + 51);
  WebCore::AcceleratedEffectValues::~AcceleratedEffectValues((this + 104), v6);
  WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 88, v7);
  v9 = *(this + 10);
  if (v9)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, v8);
  }

  WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, v8);
  v11 = *(this + 6);
  if (v11)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v11, v10);
  }

  v12 = *(this + 5);
  *(this + 5) = 0;
  if (v12)
  {
    bmalloc::api::tzoneFree(v12, v10);
  }

  v13 = *(this + 4);
  *(this + 4) = 0;
  if (v13)
  {
    bmalloc::api::tzoneFree(v13, v10);
  }

  v14 = *(this + 3);
  *(this + 3) = 0;
  if (v14)
  {
    bmalloc::api::tzoneFree(v14, v10);
  }

  v15 = *(this + 2);
  *(this + 2) = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }
  }
}

_BYTE *std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[88] = 0;
  if (*(a2 + 88) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
    a1[88] = 1;
  }

  return a1;
}

void sub_19D7DA970(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v1);
  }

  _Unwind_Resume(exception_object);
}

double WebCore::ScrollingStateTree::operator delete()
{
  v0 = MEMORY[0x19EB08010]();
  if (*v0)
  {
    *(v0 + 64) = 0;
    result = 0.0;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v0, v1);
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref((v6 + 8), a2);
      }

      v4 = (v4 + 8);
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

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 1))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    v4 = v10;
    result = v11;
  }

  if (!v4)
  {
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v7 = 0;
    v8 = 1;
    atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      result = MEMORY[0x19EB01E30](this);
      v8 = 1;
    }

    v9 = *(this + 2) - 1;
    *(this + 2) = v9;
    atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != 1)
    {
      v12 = v9;
      result = WTF::Lock::unlockSlow(this);
      v9 = v12;
    }

    if (!v9)
    {

      return WTF::fastFree(this, a2);
    }
  }

  return result;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  if (*(a2 + 16) <= 1u)
  {
    if (*(a2 + 16))
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
      goto LABEL_8;
    }

    v4 = 0;
LABEL_6:
    *a1 = v4;
LABEL_8:
    *(a1 + 16) = *(a2 + 16);
    return a1;
  }

  if (*(a2 + 16) == 2)
  {
    v4 = *a2;
    *a2 = 0;
    goto LABEL_6;
  }

  return a1;
}

void sub_19D7DAC4C(_Unwind_Exception *a1, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, void *a2)
{
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) == 2)
    {
      v3 = *a1;
      *a1 = 0;
      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  else if (*(a1 + 16))
  {
    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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

uint64_t WebKit::WebsiteDataStoreParameters::WebsiteDataStoreParameters(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v4;
  WebKit::NetworkSessionCreationParameters::NetworkSessionCreationParameters(a1 + 32, a2 + 32);
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  if (*(a2 + 696) == 1)
  {
    v6 = *(a2 + 688);
    *(a2 + 688) = 0;
    *(a1 + 688) = v6;
    *(a1 + 696) = 1;
  }

  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  if (*(a2 + 712) == 1)
  {
    v7 = *(a2 + 704);
    *(a2 + 704) = 0;
    *(a1 + 704) = v7;
    *(a1 + 712) = 1;
  }

  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  if (*(a2 + 728) == 1)
  {
    v8 = *(a2 + 720);
    *(a2 + 720) = 0;
    *(a1 + 720) = v8;
    *(a1 + 728) = 1;
  }

  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  if (*(a2 + 744) == 1)
  {
    v9 = *(a2 + 736);
    *(a2 + 736) = 0;
    *(a1 + 736) = v9;
    *(a1 + 744) = 1;
  }

  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  if (*(a2 + 760) == 1)
  {
    v10 = *(a2 + 752);
    *(a2 + 752) = 0;
    *(a1 + 752) = v10;
    *(a1 + 760) = 1;
  }

  return a1;
}

void sub_19D7DAE70(_Unwind_Exception *a1)
{
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v2);
  v5 = *v1;
  if (*v1)
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    WTF::fastFree(v5, v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__optional_move_base<WebKit::SharedVideoFrame,false>::__optional_move_base[abi:sn200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 4);
    *a1 = v3;
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,(mpark::detail::Trait)1>::move_constructor((a1 + 24), a2 + 24);
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_19D7DAEFC(_Unwind_Exception *exception_object)
{
  if (v1[48] == 1)
  {
    if (v1[40] == 2)
    {
      WTF::MachSendRight::~MachSendRight((v1 + 24));
    }

    v1[40] = -1;
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebGPU::FragmentState::FragmentState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 8) = v4;
    *(a1 + 16) = 1;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 24, (a2 + 24));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 40, (a2 + 40));
  return a1;
}

void sub_19D7DAFB8(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  if (*(v2 + 16) == 1)
  {
    v8 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *std::__optional_move_base<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  if (*(a2 + 24) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
    a1[24] = 1;
  }

  return a1;
}

void sub_19D7DB070(_Unwind_Exception *exception_object, void *a2)
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

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  if (*(a2 + 16) != 255)
  {
    if (*(a2 + 16))
    {
      *a1 = *a2;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
    }

    *(a1 + 16) = *(a2 + 16);
  }

  return a1;
}

void sub_19D7DB118(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (!*(v2 + 16))
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  *(v2 + 16) = -1;
  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_move_base<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  if (*(a2 + 24) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
    a1[24] = 1;
  }

  return a1;
}

void sub_19D7DB1AC(_Unwind_Exception *exception_object, void *a2)
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

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  if (*(a2 + 16) != 255)
  {
    if (*(a2 + 16))
    {
      v4 = *a2;
      *(a1 + 8) = *(a2 + 2);
      *a1 = v4;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
    }

    *(a1 + 16) = *(a2 + 16);
  }

  return a1;
}

void sub_19D7DB25C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (!*(v2 + 16))
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  *(v2 + 16) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7DB2F4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<std::optional<WebKit::WebGPU::RenderPassColorAttachment>>::destruct(*a1, (*a1 + 96 * v3));
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

WTF *WTF::VectorTypeOperations<std::optional<WebKit::WebGPU::RenderPassColorAttachment>>::destruct(WTF *result, WTF *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      if (*(v3 + 88) == 1 && *(v3 + 72) == 1)
      {
        if (!*(v3 + 64))
        {
          result = *(v3 + 4);
          if (result)
          {
            *(v3 + 4) = 0;
            *(v3 + 10) = 0;
            result = WTF::fastFree(result, a2);
          }
        }

        *(v3 + 64) = -1;
      }

      v3 = (v3 + 96);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WebKit::WebGPU::VertexState::VertexState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 8) = v4;
    *(a1 + 16) = 1;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 24, (a2 + 24));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 40, (a2 + 40));
  return a1;
}

void sub_19D7DB48C(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  if (*(v2 + 16) == 1)
  {
    v8 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *std::__optional_move_base<WebKit::WebGPU::FragmentState,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[56] = 0;
  if (*(a2 + 56) == 1)
  {
    WebKit::WebGPU::FragmentState::FragmentState(a1, a2);
    a1[56] = 1;
  }

  return a1;
}

void sub_19D7DB544(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 56) == 1)
  {
    v4 = *(v2 + 40);
    if (v4)
    {
      *(v2 + 40) = 0;
      *(v2 + 48) = 0;
      WTF::fastFree(v4, a2);
    }

    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 24, a2);
    if (*(v2 + 16) == 1)
    {
      v6 = *(v2 + 8);
      *(v2 + 8) = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,std::optional<WebKit::WebGPU::VertexBufferLayout>>::destruct(*a1, (*a1 + 40 * v3));
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

WTF *WTF::VectorDestructor<true,std::optional<WebKit::WebGPU::VertexBufferLayout>>::destruct(WTF *result, WTF *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      if (*(v3 + 32) == 1)
      {
        result = *(v3 + 2);
        if (result)
        {
          *(v3 + 2) = 0;
          *(v3 + 6) = 0;
          result = WTF::fastFree(result, a2);
        }
      }

      v3 = (v3 + 40);
    }

    while (v3 != a2);
  }

  return result;
}

void WebKit::WebGPU::RenderPipelineDescriptor::~RenderPipelineDescriptor(WebKit::WebGPU::RenderPipelineDescriptor *this, void *a2)
{
  if (*(this + 200) == 1)
  {
    v3 = *(this + 23);
    if (v3)
    {
      *(this + 23) = 0;
      *(this + 48) = 0;
      WTF::fastFree(v3, a2);
    }

    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 168, a2);
    if (*(this + 160) == 1)
    {
      v4 = *(this + 19);
      *(this + 19) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }
    }
  }

  WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, a2);
  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 40, v5);
  if (*(this + 32) == 1)
  {
    v7 = *(this + 3);
    *(this + 3) = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }
  }
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  if (*(a2 + 16) != 255)
  {
    if (*(a2 + 16))
    {
      v4 = *a2;
      *(a1 + 8) = *(a2 + 2);
      *a1 = v4;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
    }

    *(a1 + 16) = *(a2 + 16);
  }

  return a1;
}

void sub_19D7DB794(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (!*(v2 + 16))
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  *(v2 + 16) = -1;
  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_move_base<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = 0;
  if (*(a2 + 40) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
    a1[40] = 1;
  }

  return a1;
}

void sub_19D7DB828(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 40) == 1)
  {
    if (!*(v2 + 32))
    {
      v4 = *v2;
      if (*v2)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
        WTF::fastFree(v4, a2);
      }
    }

    *(v2 + 32) = -1;
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  if (*(a2 + 32) != 255)
  {
    if (*(a2 + 32))
    {
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    }

    *(a1 + 32) = *(a2 + 32);
  }

  return a1;
}

void sub_19D7DB8CC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (!*(v2 + 32))
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  *(v2 + 32) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t WebCore::UserScript::UserScript(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  WTF::URL::URL(a1 + 8, a2 + 1);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 12);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 80) = v5;
  return a1;
}

void sub_19D7DB998(_Unwind_Exception *a1, void *a2)
{
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v7, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
  v9 = *v3;
  *v3 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *v2;
  *v2 = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WebCore::UserStyleSheet::UserStyleSheet(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  WTF::URL::URL(a1 + 8, a2 + 1);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 12);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
  v5 = *(a2 + 5);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v5;
  return a1;
}

void sub_19D7DBAAC(_Unwind_Exception *a1, void *a2)
{
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v7, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
  v9 = *v3;
  *v3 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *v2;
  *v2 = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t std::__optional_move_base<WebCore::PlatformTimeRanges,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7DBB84(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[16] = -1;
  v4 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(a2 + 16))
    {
      *a1 = *a2;
    }

    else
    {
      *a1 = 0;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    WTF::MachSendRight::MachSendRight();
    goto LABEL_9;
  }

  if (v4 == 3)
  {
    *a1 = *a2;
LABEL_9:
    a1[16] = *(a2 + 16);
  }

  return a1;
}

void sub_19D7DBC4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 16) == 2)
  {
    WTF::MachSendRight::~MachSendRight(v1);
  }

  *(v1 + 16) = -1;
  _Unwind_Resume(exception_object);
}

void *WebKit::MediaDeviceSandboxExtensions::MediaDeviceSandboxExtensions(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  a1[2] = 0;
  a1[3] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 2), (a2 + 16));
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  a1[4] = v4;
  return a1;
}

void sub_19D7DBCCC(_Unwind_Exception *a1, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v5, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::PlatformCAAnimationRemoteProperties::PlatformCAAnimationRemoteProperties(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = *(a2 + 1);
  v6 = *(a2 + 3);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 24) = v6;
  *(a1 + 8) = v5;
  v7 = a2[7];
  a2[7] = 0;
  *(a1 + 56) = v7;
  LODWORD(v7) = *(a2 + 16);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = v7;
  WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 72), a2 + 18);
  WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 88), a2 + 22);
  WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 104), a2 + 26);
  WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 120), a2 + 30);
  return a1;
}

void sub_19D7DBDAC(_Unwind_Exception *a1, void *a2)
{
  WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 104, a2);
  v5 = *(v2 + 88);
  if (v5)
  {
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    WTF::fastFree(v5, v4);
  }

  WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 72, v4);
  v7 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v7)
  {
    if (v7[2] == 1)
    {
      (*(*v7 + 16))(v7);
    }

    else
    {
      --v7[2];
    }
  }

  v8 = *v2;
  *v2 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v6 = 136 * v3;
    do
    {
      WebKit::PlatformCAAnimationRemoteProperties::~PlatformCAAnimationRemoteProperties(v4);
      v4 = (v7 + 136);
      v6 -= 136;
    }

    while (v6);
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

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = -1;
  LODWORD(v4) = *(a2 + 40);
  if (v4 <= 4)
  {
    if (*(a2 + 40) <= 1u)
    {
      if (*(a2 + 40))
      {
        *a1 = *a2;
        LOBYTE(v4) = 1;
      }

      else
      {
        *a1 = *a2;
      }
    }

    else if (v4 == 2)
    {
      *a1 = *a2;
      LOBYTE(v4) = 2;
    }

    else if (v4 == 3)
    {
      *a1 = *a2;
      LOBYTE(v4) = 3;
    }

    else
    {
      WTF::URL::URL(a1, a2);
      LOBYTE(v4) = *(a2 + 40);
    }

    goto LABEL_21;
  }

  if (*(a2 + 40) <= 7u)
  {
    if (v4 == 5)
    {
      v4 = *a2;
      *a2 = 0;
      *a1 = v4;
      LOBYTE(v4) = 5;
    }

    else if (v4 == 6)
    {
      *a1 = *a2;
      LOBYTE(v4) = 6;
    }

    else
    {
      *a1 = *a2;
      LOBYTE(v4) = 7;
    }

    goto LABEL_21;
  }

  if (v4 == 8)
  {
    *a1 = *a2;
    LOBYTE(v4) = 8;
    goto LABEL_21;
  }

  if (v4 == 9)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    LOBYTE(v4) = 9;
LABEL_21:
    a1[40] = v4;
  }

  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 40);
  if (v3 > 5)
  {
    if (v3 - 6 < 3 || v3 != 9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v3 < 4)
    {
      goto LABEL_14;
    }

    if (v3 == 4)
    {
      v4 = *a1;
      *a1 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      goto LABEL_14;
    }
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v6, a2);
  }

LABEL_14:
  *(a1 + 40) = -1;
  return a1;
}

uint64_t WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(uint64_t result, WTF::StringImpl *a2)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = result;
    atomic_store(add, result);
    v5 = *(result + 48);
    *(v4 + 6) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(v4 + 5);
    *(v4 + 5) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v4 + 8);

    return WTF::fastFree(v4, v7);
  }

  return result;
}

uint64_t WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(uint64_t this, void *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 8);
    *(v2 + 1) = 0;
    if (v3 && (WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v3, a2), *v2 != 1))
    {
      this = 191;
      __break(0xC471u);
    }

    else
    {

      return bmalloc::api::tzoneFree(v2, a2);
    }
  }

  else
  {
    --*this;
  }

  return this;
}

uint64_t WTF::ThreadSafeRefCounted<WebCore::WebCodecsEncodedAudioChunkStorage,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    v5 = *(this + 40);
    if (v5)
    {
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      WTF::fastFree(v5, a2);
    }

    return WTF::fastFree(v4, a2);
  }

  return this;
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    WebCore::SerializedScriptValue::~SerializedScriptValue(result);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

uint64_t WTF::Vector<std::unique_ptr<WebCore::DetachedRTCDataChannel>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      std::unique_ptr<WebCore::DetachedRTCDataChannel>::reset[abi:sn200100](v4++, 0);
      v5 -= 8;
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

WTF::StringImpl **std::unique_ptr<WebCore::DetachedRTCDataChannel>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 5);
    *(v2 + 5) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(v2 + 2);
    *(v2 + 2) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

uint64_t WTF::Vector<WTF::RefPtr<WebCore::RTCRtpTransformableFrame,WTF::RawPtrTraits<WebCore::RTCRtpTransformableFrame>,WTF::DefaultRefDerefTraits<WebCore::RTCRtpTransformableFrame>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::RefPtr<WebCore::RTCRtpTransformableFrame,WTF::RawPtrTraits<WebCore::RTCRtpTransformableFrame>,WTF::DefaultRefDerefTraits<WebCore::RTCRtpTransformableFrame>>>::destruct(*a1, (*a1 + 8 * v3));
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

unsigned int *WTF::VectorDestructor<true,WTF::RefPtr<WebCore::RTCRtpTransformableFrame,WTF::RawPtrTraits<WebCore::RTCRtpTransformableFrame>,WTF::DefaultRefDerefTraits<WebCore::RTCRtpTransformableFrame>>>::destruct(unsigned int *result, unsigned int **a2)
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
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WTF::RefPtr<WebCore::MediaSourceHandle,WTF::RawPtrTraits<WebCore::MediaSourceHandle>,WTF::DefaultRefDerefTraits<WebCore::MediaSourceHandle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::RefPtr<WebCore::MediaSourceHandle,WTF::RawPtrTraits<WebCore::MediaSourceHandle>,WTF::DefaultRefDerefTraits<WebCore::MediaSourceHandle>>>::destruct(*a1, (*a1 + 8 * v3));
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

_DWORD *WTF::VectorDestructor<true,WTF::RefPtr<WebCore::MediaSourceHandle,WTF::RawPtrTraits<WebCore::MediaSourceHandle>,WTF::DefaultRefDerefTraits<WebCore::MediaSourceHandle>>>::destruct(_DWORD *result, _DWORD **a2)
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
        if (result[2] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[2];
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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
        WTF::ThreadSafeRefCounted<WebCore::WebCodecsEncodedAudioChunkStorage,(WTF::DestructionThread)0>::deref(v6, a2);
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

uint64_t WTF::Vector<WebCore::WebCodecsVideoFrameData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::WebCodecsVideoFrameData>::destruct(*a1, (*a1 + 104 * v3));
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

unsigned int *WTF::VectorDestructor<true,WebCore::WebCodecsVideoFrameData>::destruct(unsigned int *result, unsigned int **a2)
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
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }

      v3 += 13;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::WebCodecsAudioInternalData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::WebCodecsAudioInternalData>::destruct(*a1, (*a1 + 8 * v3));
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

unsigned int *WTF::VectorDestructor<true,WebCore::WebCodecsAudioInternalData>::destruct(unsigned int *result, unsigned int **a2)
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
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<std::unique_ptr<WebCore::MediaStreamTrackDataHolder>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      std::unique_ptr<WebCore::MediaStreamTrackDataHolder>::reset[abi:sn200100](v4++, 0);
      v5 -= 8;
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

uint64_t std::unique_ptr<WebCore::MediaStreamTrackDataHolder>::reset[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = MEMORY[0x19EB0C0C0]();

    return WTF::fastFree(v4, v5);
  }

  return result;
}

uint64_t WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::AtomString>::destruct(*a1, (*a1 + 8 * v3));
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

WTF::StringImpl *WTF::VectorDestructor<true,WTF::AtomString>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
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

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    if (*(this + 96) == 1)
    {
      WTF::MachSendRight::~MachSendRight((this + 80));
    }

    v5 = *(v4 + 72);
    *(v4 + 72) = 0;
    if (v5)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v5);
    }

    if (*(v4 + 24) == 1)
    {
      v6 = *(v4 + 16);
      *(v4 + 16) = 0;
      if (v6)
      {
        CFRelease(v6);
      }
    }

    return WTF::fastFree(v4, a2);
  }

  return this;
}

WebCore::TextIndicator *WTF::RefCounted<WebCore::TextIndicator>::deref(WebCore::TextIndicator *result)
{
  if (*result == 1)
  {
    WebCore::TextIndicator::~TextIndicator(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 136 * v3;
    do
    {
      v6 = mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::~move_constructor(v6, a2) + 136;
      v7 -= 136;
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

uint64_t mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, void *a2)
{
  v3 = *(a1 + 128);
  if (v3 > 3)
  {
    if (v3 != 255)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v8 + 2);
          (*(*v8 + 8))(v8);
        }
      }
    }
  }

  else if (v3 - 2 >= 2 && v3 != 0)
  {
    v5 = *a1;
    if ((*a1 & 0x8000000000000) != 0)
    {
      v6 = (v5 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, a2);
      }
    }
  }

  *(a1 + 128) = -1;
  return a1;
}

uint64_t mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1> &>(uint64_t result, void *a2)
{
  v2 = *(result + 128);
  if (v2 == 255)
  {
    v2 = -1;
  }

  if (v2 <= 1)
  {
    if (v2)
    {
      v4 = *result;
      if ((*result & 0x8000000000000) != 0)
      {
        result = v4 & 0xFFFFFFFFFFFFLL;
        if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          return WTF::fastFree(result, a2);
        }
      }
    }
  }

  else if ((v2 - 2) >= 2)
  {
    v3 = *result;
    *result = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 2);
        return (*(*v3 + 8))(v3);
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      v6 = (WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>::~Ref(v6) + 1);
      v7 -= 8;
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

_DWORD **WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>::~Ref(_DWORD **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v2[2] == 1)
    {
      (*(*v2 + 16))(v2);
    }

    else
    {
      --v2[2];
    }
  }

  return a1;
}

uint64_t WTF::VectorDestructor<true,WebCore::CustomHeaderFields>::destruct(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 16, a2);
      result = WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v4);
      v3 += 32;
    }

    while (v3 != a2);
  }

  return result;
}