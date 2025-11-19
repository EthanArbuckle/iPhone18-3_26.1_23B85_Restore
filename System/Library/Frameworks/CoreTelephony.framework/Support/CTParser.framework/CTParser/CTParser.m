void CSIPhoneNumberSerialized::CSIPhoneNumberSerialized(CSIPhoneNumberSerialized *this)
{
  Serializable<CSIPhoneNumber>::Serializable(this);
}

{
  Serializable<CSIPhoneNumber>::Serializable(this);
}

void Serializable<CSIPhoneNumber>::Serializable(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54140;
  _ZNSt3__115allocate_sharedB8ne200100I14CSIPhoneNumberNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_2372E798C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *CSIPhoneNumberSerialized::CSIPhoneNumberSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Serializable<CSIPhoneNumber>::Serializable(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_284A540F8;
  return a1;
}

void *Serializable<CSIPhoneNumber>::Serializable(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54140;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(CSIPhoneNumberSerialized *this)
{
  *this = &unk_284A54140;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A54140;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A54140;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void *Serializable<CSIPhoneNumber>::~Serializable(void *a1)
{
  *a1 = &unk_284A54140;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Serializable<CSIPhoneNumber>::~Serializable(void *a1)
{
  *a1 = &unk_284A54140;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void *_ZNSt3__120__shared_ptr_emplaceI14CSIPhoneNumberNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54160;
  CSIPhoneNumber::CSIPhoneNumber((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<CSIPhoneNumber>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A54160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CA2A0);
}

void std::__shared_ptr_emplace<CSIPhoneNumber>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *CSIDateSerialized::CSIDateSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Serializable<CSIDate>::Serializable(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_284A541B0;
  return a1;
}

void *Serializable<CSIDate>::Serializable(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A541F8;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void CSIDateSerialized::CSIDateSerialized(CSIDateSerialized *this)
{
  Serializable<CSIDate>::Serializable(this);
}

{
  Serializable<CSIDate>::Serializable(this);
}

void Serializable<CSIDate>::Serializable(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A541F8;
  operator new();
}

void sub_2372E8068(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void CSIDateSerialized::~CSIDateSerialized(CSIDateSerialized *this)
{
  *this = &unk_284A541F8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A541F8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A541F8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void *Serializable<CSIDate>::~Serializable(void *a1)
{
  *a1 = &unk_284A541F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Serializable<CSIDate>::~Serializable(void *a1)
{
  *a1 = &unk_284A541F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void std::__shared_ptr_emplace<CSIDate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A54218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CA2A0);
}

void *SmsPduDecoderSerialized::SmsPduDecoderSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Serializable<SmsPduDecoder>::Serializable(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_284A54268;
  return a1;
}

void *Serializable<SmsPduDecoder>::Serializable(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A542B0;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void SmsPduDecoderSerialized::SmsPduDecoderSerialized(SmsPduDecoderSerialized *this)
{
  Serializable<SmsPduDecoder>::Serializable(this);
}

{
  Serializable<SmsPduDecoder>::Serializable(this);
}

void Serializable<SmsPduDecoder>::Serializable(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A542B0;
  _ZNSt3__115allocate_sharedB8ne200100I13SmsPduDecoderNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_2372E8488(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SmsPduDecoderSerialized::~SmsPduDecoderSerialized(SmsPduDecoderSerialized *this)
{
  *this = &unk_284A542B0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A542B0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A542B0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void *Serializable<SmsPduDecoder>::~Serializable(void *a1)
{
  *a1 = &unk_284A542B0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Serializable<SmsPduDecoder>::~Serializable(void *a1)
{
  *a1 = &unk_284A542B0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void *_ZNSt3__120__shared_ptr_emplaceI13SmsPduDecoderNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A542D0;
  MEMORY[0x2383CA040](a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<SmsPduDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A542D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CA2A0);
}

const char *CTParser::asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return (&off_278A2BA60)[a1];
  }
}

void CTParserXPCData::CTParserXPCData(CTParserXPCData *this)
{
  *this = &unk_284A54320;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *(this + 1) = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *(this + 1) = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CA450](v3) != MEMORY[0x277D86468])
  {
    v4 = xpc_null_create();
LABEL_8:
    *(this + 1) = v4;
    goto LABEL_9;
  }

  xpc_retain(v3);
LABEL_9:
  xpc_release(v3);
}

void *CTParserXPCData::CTParserXPCData(void *a1, void **a2)
{
  v3 = *a2;
  *a1 = &unk_284A54320;
  a1[1] = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    a1[1] = xpc_null_create();
  }

  return a1;
}

void CTParserXPCData::~CTParserXPCData(xpc_object_t *this)
{
  *this = &unk_284A54320;
  xpc_release(this[1]);
  this[1] = 0;
}

{
  CTParserXPCData::~CTParserXPCData(this);

  JUMPOUT(0x2383CA2A0);
}

void CTParserXPCData::prepareForSend(uint64_t a1, int64_t value, __int16 a3)
{
  object = xpc_int64_create(value);
  if (!object)
  {
    object = xpc_null_create();
  }

  v5 = a1 + 8;
  v8 = v5;
  v9 = CTParser::kRemoteServiceTypeKey;
  xpc::dict::object_proxy::operator=(&v8, &object, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(object);
  object = 0;
  if ((a3 & 0x100) != 0)
  {
    v6 = xpc_int64_create(a3);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v8 = v5;
    v9 = CTParser::kTransactionId;
    xpc::dict::object_proxy::operator=(&v8, &v6, &v7);
    xpc_release(v7);
    v7 = 0;
    xpc_release(v6);
  }
}

xpc_object_t xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

uint64_t CTParserXPCData::describe(CTParserXPCData *this)
{
  v28 = 0;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v24 = 0u;
  v25 = 0u;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v22 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v21);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "[ SERVICE:(", 11);
  v3 = this + 8;
  v19[0] = this + 8;
  v19[1] = CTParser::kRemoteServiceTypeKey;
  xpc::dict::object_proxy::operator xpc::object(v19, &v20);
  v4 = xpc::dyn_cast_or_default();
  if (v4 > 2)
  {
    v5 = "???";
  }

  else
  {
    v5 = (&off_278A2BA60)[v4 & 3];
  }

  v6 = strlen(v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 1);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " TRANSACTION:(", 14);
  v16[0] = v3;
  v16[1] = CTParser::kTransactionId;
  xpc::dict::object_proxy::operator xpc::object(v16, &object);
  v10 = xpc::dyn_cast_or_default();
  std::to_string(&v18, v10);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v18;
  }

  else
  {
    v11 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ") ]", 3);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  xpc_release(object);
  xpc_release(v20);
  std::stringbuf::str();
  *&v21 = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v22 = v14;
  *(&v22 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(*(&v24 + 1));
  }

  *(&v22 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CA260](v27);
}

void sub_2372E8DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, xpc_object_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, uint64_t a12, uint64_t a13, xpc_object_t object, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  xpc_release(object);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15, MEMORY[0x277D82818]);
  MEMORY[0x2383CA260](va);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_2372E90B4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x2383CA260](v1);
  _Unwind_Resume(a1);
}

xpc_object_t xpc::dict::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void CTParserXPCRequest::CTParserXPCRequest(CTParserXPCRequest *this)
{
  CTParserXPCData::CTParserXPCData(this);
  *v1 = &unk_284A54348;
}

{
  CTParserXPCData::CTParserXPCData(this);
  *v1 = &unk_284A54348;
}

void *CTParserXPCRequest::CTParserXPCRequest(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v5 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v5 = v3;
  }

  CTParserXPCData::CTParserXPCData(a1, &v5);
  xpc_release(v3);
  *a1 = &unk_284A54348;
  return a1;
}

void CTParserXPCRequest::~CTParserXPCRequest(xpc_object_t *this)
{
  CTParserXPCData::~CTParserXPCData(this);

  JUMPOUT(0x2383CA2A0);
}

BOOL CTParserXPCResponse::hasError(CTParserXPCResponse *this)
{
  CTParserXPCResponse::getError(this);
  if ((v5 & 0x80000000) == 0)
  {
    return v5 != 0;
  }

  v1 = v4 != 0;
  operator delete(v3);
  return v1;
}

void CTParserXPCResponse::getError(CTParserXPCResponse *this)
{
  v1[0] = this + 8;
  v1[1] = CTParser::kXPCErrorKey;
  xpc::dict::object_proxy::operator xpc::object(v1, &object);
  __p = 0;
  v4 = 0;
  v5 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
}

void sub_2372E9324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void CTParserXPCResponse::setError(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5 = xpc_string_create(v3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v4[0] = a1 + 8;
  v4[1] = CTParser::kXPCErrorKey;
  xpc::dict::object_proxy::operator=(v4, &v5, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
}

void CTParserXPCResponse::CTParserXPCResponse(CTParserXPCResponse *this)
{
  CTParserXPCData::CTParserXPCData(this);
  *v1 = &unk_284A54370;
}

{
  CTParserXPCData::CTParserXPCData(this);
  *v1 = &unk_284A54370;
}

void *CTParserXPCResponse::CTParserXPCResponse(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v5 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v5 = v3;
  }

  CTParserXPCData::CTParserXPCData(a1, &v5);
  xpc_release(v3);
  *a1 = &unk_284A54370;
  return a1;
}

void CTParserXPCResponse::~CTParserXPCResponse(xpc_object_t *this)
{
  CTParserXPCData::~CTParserXPCData(this);

  JUMPOUT(0x2383CA2A0);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2383CA210](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2372E9708(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  MEMORY[0x2383CA160](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2383CA170](v13);
  return a1;
}

void sub_2372E997C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2383CA170](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2372E995CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2372E9BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278A2BA58, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t CTParserClient::CallbackContext::CallbackContext(uint64_t a1, char a2, uint64_t a3)
{
  *a1 = a2;
  std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::__value_func[abi:ne200100](a1 + 8, a3);
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  *(a1 + 40) = std::chrono::system_clock::to_time_t(&__t);
  return a1;
}

uint64_t CTParserClient::CTParserClient(uint64_t a1, int a2)
{
  v4 = MEMORY[0x277CC44D0] + 16;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v4;
  ctu::OsLogLogger::OsLogLogger((a1 + 24), "com.apple.telephony", "parser.client");
  *a1 = &unk_284A543D8;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 850045863;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 121) = 0u;
  *(a1 + 144) = xpc_null_create();
  *(a1 + 152) = xpc_null_create();
  return a1;
}

void sub_2372E9DCC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  CTParserInterface::~CTParserInterface(v1);
  _Unwind_Resume(a1);
}

void CTParserClient::init(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = v3;
  if (v4)
  {

    dispatch_release(v4);
  }
}

void CTParserClient::sendXPCMessage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 72));
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v6 != v7)
  {
    while (1)
    {
      v8 = *v6;
      if (!*v6)
      {
        break;
      }

      __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (std::chrono::system_clock::to_time_t(&__t) - *(v8 + 40) > 3)
      {
        break;
      }

      v6 += 2;
      if (v6 == v7)
      {
        v6 = v7;
        goto LABEL_15;
      }
    }

    if (v6 != v7)
    {
      for (i = v6 + 2; i != v7; i += 2)
      {
        v10 = *i;
        if (*i)
        {
          __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          if (std::chrono::system_clock::to_time_t(&__t) - *(v10 + 40) <= 3)
          {
            v11 = *i;
            *i = 0;
            i[1] = 0;
            v12 = v6[1];
            *v6 = v11;
            if (v12)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

            v6 += 2;
          }
        }
      }
    }
  }

LABEL_15:
  std::vector<std::shared_ptr<CTParserClient::CallbackContext>>::erase(a1 + 48, v6, *(a1 + 56));
  if (*(a3 + 24))
  {
    if (MEMORY[0x2383CA450](*(a1 + 144)) != MEMORY[0x277D86450])
    {
      v13 = xpc_connection_create("com.apple.CTParserService", *(a1 + 32));
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      v14 = xpc_null_create();
      v15 = *(a1 + 144);
      *(a1 + 144) = v13;
      xpc_release(v15);
      xpc_release(v14);
      v16 = *(a1 + 144);
      v31 = v16;
      if (v16)
      {
        xpc_retain(v16);
      }

      else
      {
        v31 = xpc_null_create();
      }

      v25 = *(a1 + 32);
      object = v25;
      if (v25)
      {
        dispatch_retain(v25);
      }

      v26 = *(a1 + 16);
      v28 = *(a1 + 8);
      v29 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      ctu::XpcClientHelper::setServer<CTParserClient>((a1 + 152), &v31, &object, &v28);
      if (v29)
      {
        std::__shared_weak_count::__release_weak(v29);
      }

      if (object)
      {
        dispatch_release(object);
      }

      xpc_release(v31);
      v31 = 0;
    }

    CTParserXPCData::prepareForSend(*a2, *(a1 + 40), *(a1 + 136) | 0x100);
    std::allocate_shared[abi:ne200100]<CTParserClient::CallbackContext,std::allocator<CTParserClient::CallbackContext>,unsigned char &,std::function<void ()(std::shared_ptr<CTParserXPCResponse>)> &,0>();
  }

  v17 = *(a1 + 24);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    CTParserClient::sendXPCMessage(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  std::mutex::unlock((a1 + 72));
  v27 = *MEMORY[0x277D85DE8];
}

void sub_2372EA23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object, xpc_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::shared_ptr<CTParserClient::CallbackContext>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<CTParserClient::CallbackContext> *,std::shared_ptr<CTParserClient::CallbackContext> *,std::shared_ptr<CTParserClient::CallbackContext> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void ctu::XpcClientHelper::setServer<CTParserClient>(_xpc_connection_s **a1, xpc_object_t *a2, dispatch_queue_t *a3, uint64_t *a4)
{
  v13 = *a2;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    v13 = xpc_null_create();
  }

  ctu::XpcClientHelper::setServer_internal();
  xpc_release(v13);
  v13 = 0;
  if (MEMORY[0x2383CA450](*a1) == MEMORY[0x277D86450])
  {
    v7 = *a1;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 1174405120;
    handler[2] = ___ZN3ctu15XpcClientHelper9setServerI14CTParserClientEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
    handler[3] = &__block_descriptor_tmp;
    v9 = *a4;
    v8 = a4[1];
    handler[4] = a1;
    handler[5] = v9;
    v11 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v7;
    xpc_connection_set_event_handler(v7, handler);
    xpc_connection_set_target_queue(v7, *a3);
    xpc_connection_resume(v7);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_2372EA46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

void CTParserClient::processResponse(uint64_t a1, uint64_t *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = CTParserXPCData::get<unsigned char>(*a2, CTParser::kTransactionId);
  if ((v4 & 0x100) == 0)
  {
    v5 = *(a1 + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CTParserClient::processResponse(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    goto LABEL_33;
  }

  v13 = v4;
  v14 = CTParserXPCData::get<CTParser::RemoteServiceType>(*a2, CTParser::kRemoteServiceTypeKey);
  if ((v14 & 0x100000000) == 0)
  {
    v15 = *(a1 + 24);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v16 = "(unknown)";
LABEL_13:
    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_error_impl(&dword_2372E7000, v15, OS_LOG_TYPE_ERROR, "Invalid XPC service: %s", buf, 0xCu);
    goto LABEL_33;
  }

  v17 = v14;
  if (*(a1 + 40) != v14)
  {
    v15 = *(a1 + 24);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v16 = CTParser::asString(v17);
    goto LABEL_13;
  }

  if (CTParserXPCResponse::hasError(*a2))
  {
    if (os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_ERROR))
    {
      CTParserClient::processResponse(a2);
    }
  }

  else
  {
    std::mutex::lock((a1 + 72));
    *buf = 0u;
    v34 = 0u;
    v19 = *(a1 + 48);
    v18 = *(a1 + 56);
    if (v19 >= v18)
    {
      goto LABEL_19;
    }

    v20 = *(a1 + 48);
    while (1)
    {
      v21 = *v20;
      if (*v20)
      {
        if (*v21 == v13)
        {
          break;
        }
      }

      v20 += 2;
      v19 += 16;
      if (v20 >= v18)
      {
        goto LABEL_19;
      }
    }

    std::function<void ()(std::shared_ptr<CTParserXPCResponse>)>::operator=(buf, (v21 + 8));
    v23 = *(&v34 + 1);
    if (*(&v34 + 1))
    {
      v24 = a2[1];
      v30 = *a2;
      v31 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v23 = *(&v34 + 1);
        if (!*(&v34 + 1))
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }
      }

      (*(*v23 + 48))(v23, &v30);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<CTParserClient::CallbackContext> *,std::shared_ptr<CTParserClient::CallbackContext> *,std::shared_ptr<CTParserClient::CallbackContext> *>(&v32, (v19 + 16), *(a1 + 56), v19);
      v26 = v25;
      for (i = *(a1 + 56); i != v26; i -= 16)
      {
        v28 = *(i - 8);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }
      }

      *(a1 + 56) = v26;
    }

    else
    {
LABEL_19:
      v22 = *(a1 + 24);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        CTParserClient::processResponse(v13, v22);
      }
    }

    std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::~__value_func[abi:ne200100](buf);
    std::mutex::unlock((a1 + 72));
  }

LABEL_33:
  v29 = *MEMORY[0x277D85DE8];
}

void sub_2372EA734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::~__value_func[abi:ne200100](va);
  std::mutex::unlock((v5 + 72));
  _Unwind_Resume(a1);
}

uint64_t CTParserXPCData::get<unsigned char>(uint64_t a1, const char *a2)
{
  v3 = a1 + 8;
  if (xpc_dictionary_get_value(*(a1 + 8), a2))
  {
    v7[0] = v3;
    v7[1] = a2;
    xpc::dict::object_proxy::operator xpc::object(v7, &object);
    v4 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v4 | (v5 << 8);
}

xpc_object_t CTParserXPCData::get<CTParser::RemoteServiceType>(uint64_t a1, const char *a2)
{
  v3 = a1 + 8;
  result = xpc_dictionary_get_value(*(a1 + 8), a2);
  if (result)
  {
    v6[0] = v3;
    v6[1] = a2;
    xpc::dict::object_proxy::operator xpc::object(v6, &object);
    v5 = xpc::dyn_cast_or_default();
    xpc_release(object);
    return (v5 | 0x100000000);
  }

  return result;
}

void *std::function<void ()(std::shared_ptr<CTParserXPCResponse>)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void CTParserClient::handleMessage()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  std::allocate_shared[abi:ne200100]<CTParserXPCResponse,std::allocator<CTParserXPCResponse>,xpc::dict const&,0>();
}

void sub_2372EAA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void CTParserClient::handleServerError(os_log_t *a1, void *a2)
{
  v4 = MEMORY[0x2383CA450](*a2);
  v5 = *a2;
  if (v4 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (os_log_type_enabled(a1[3], OS_LOG_TYPE_ERROR))
      {
        CTParserClient::handleServerError();
      }
    }

    else if (v5 == MEMORY[0x277D863F8] && os_log_type_enabled(a1[3], OS_LOG_TYPE_ERROR))
    {
      CTParserClient::handleServerError();
    }
  }

  else
  {
    v6 = MEMORY[0x2383CA450](*a2);
    v7 = MEMORY[0x277D86468];
    v8 = a1[3];
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v6 != v7)
    {
      if (v9)
      {
        CTParserClient::handleServerError(a2);
      }

      __p[3] = 0;
      __p[4] = 0;
      _ZNSt3__115allocate_sharedB8ne200100I19CTParserXPCResponseNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    if (v9)
    {
      CTParserClient::handleServerError(v8, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = *a2;
    __p[0] = v17;
    if (v17 && MEMORY[0x2383CA450](v17) == v7)
    {
      xpc_retain(v17);
    }

    else
    {
      __p[0] = xpc_null_create();
    }

    ((*a1)[4].isa)(a1, __p);
    xpc_release(__p[0]);
  }
}

void CTParserClient::~CTParserClient(CTParserClient *this)
{
  CTParserClient::~CTParserClient(this);

  JUMPOUT(0x2383CA2A0);
}

{
  *this = &unk_284A543D8;
  MEMORY[0x2383CA0B0](this + 152);
  xpc_release(*(this + 18));
  *(this + 18) = 0;
  std::mutex::~mutex((this + 72));
  v4 = (this + 48);
  std::vector<std::shared_ptr<CTParserClient::CallbackContext>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  MEMORY[0x2383CA090](this + 24);
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  CTParserInterface::~CTParserInterface(this);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::vector<std::shared_ptr<CTParserClient::CallbackContext>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<CTParserClient::CallbackContext>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<CTParserClient::CallbackContext>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<CTParserClient::CallbackContext> *,std::shared_ptr<CTParserClient::CallbackContext> *,std::shared_ptr<CTParserClient::CallbackContext> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void ___ZN3ctu15XpcClientHelper9setServerI14CTParserClientEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[5];
      if (!v8)
      {
LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }

      v9 = MEMORY[0x2383CA450](a2);
      v10 = MEMORY[0x277D86468];
      if (v9 != MEMORY[0x277D86468])
      {
        if (v9 == MEMORY[0x277D86480] && *v5 == a1[7])
        {
          object = a2;
          if (a2)
          {
            xpc_retain(a2);
          }

          else
          {
            object = xpc_null_create();
          }

          (*(*v8 + 40))(v8, &object);
          xpc_release(object);
        }

        goto LABEL_18;
      }

      if (a2)
      {
        xpc_retain(a2);
        object = a2;
      }

      else
      {
        a2 = xpc_null_create();
        object = a2;
        if (!a2)
        {
          v11 = xpc_null_create();
          a2 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x2383CA450](a2) == v10)
      {
        xpc_retain(a2);
LABEL_17:
        (*(*v8 + 32))(v8, &object);
        xpc_release(object);
        object = 0;
        xpc_release(a2);
        goto LABEL_18;
      }

      v11 = xpc_null_create();
LABEL_16:
      object = v11;
      goto LABEL_17;
    }
  }
}

void sub_2372EB228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrI14CTParserClientEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrI14CTParserClientEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__shared_ptr_emplace<CTParserClient::CallbackContext>::__shared_ptr_emplace[abi:ne200100]<unsigned char &,std::function<void ()(std::shared_ptr<CTParserXPCResponse>)> &,std::allocator<CTParserClient::CallbackContext>,0>(void *a1, char *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A544B0;
  v5 = 0;
  std::allocator<CTParserClient::CallbackContext>::construct[abi:ne200100]<CTParserClient::CallbackContext,unsigned char &,std::function<void ()(std::shared_ptr<CTParserXPCResponse>)> &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<CTParserClient::CallbackContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A544B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CA2A0);
}

uint64_t std::allocator<CTParserClient::CallbackContext>::construct[abi:ne200100]<CTParserClient::CallbackContext,unsigned char &,std::function<void ()(std::shared_ptr<CTParserXPCResponse>)> &>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::__value_func[abi:ne200100](v8, a4);
  CTParserClient::CallbackContext::CallbackContext(a2, v5, v8);
  result = std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2372EB49C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<CTParserClient::CallbackContext>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<CTParserClient::CallbackContext>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<CTParserClient::CallbackContext>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<CTParserClient::CallbackContext>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *std::__function::__value_func<void ()(std::shared_ptr<CTParserXPCResponse>)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v6, 0, 24);
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2372EB800(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void *std::__shared_ptr_emplace<CTParserXPCResponse>::__shared_ptr_emplace[abi:ne200100]<xpc::dict const&,std::allocator<CTParserXPCResponse>,0>(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54500;
  v4 = 0;
  std::allocator<CTParserXPCResponse>::construct[abi:ne200100]<CTParserXPCResponse,xpc::dict const&>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<CTParserXPCResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A54500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CA2A0);
}

void std::allocator<CTParserXPCResponse>::construct[abi:ne200100]<CTParserXPCResponse,xpc::dict const&>(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  CTParserXPCResponse::CTParserXPCResponse(a2, &object);
  xpc_release(object);
}

void *_ZNSt3__120__shared_ptr_emplaceI19CTParserXPCResponseNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54500;
  CTParserXPCResponse::CTParserXPCResponse((a1 + 3));
  return a1;
}

void OUTLINED_FUNCTION_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

_BYTE *OUTLINED_FUNCTION_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return std::string::basic_string[abi:ne200100]<0>(&a10, v10);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void C2KSmsPduDecoderSerialized::C2KSmsPduDecoderSerialized(C2KSmsPduDecoderSerialized *this)
{
  Serializable<C2KSmsPduDecoder>::Serializable(this);
}

{
  Serializable<C2KSmsPduDecoder>::Serializable(this);
}

void Serializable<C2KSmsPduDecoder>::Serializable(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54628;
  _ZNSt3__115allocate_sharedB8ne200100I16C2KSmsPduDecoderNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_2372EBC38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *C2KSmsPduDecoderSerialized::C2KSmsPduDecoderSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Serializable<C2KSmsPduDecoder>::Serializable(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_284A54550;
  return a1;
}

void *Serializable<C2KSmsPduDecoder>::Serializable(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54628;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void C2KSmsPduDecoderSerialized::~C2KSmsPduDecoderSerialized(C2KSmsPduDecoderSerialized *this)
{
  *this = &unk_284A54628;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A54628;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A54628;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void C2KVmnInfoSerialized::C2KVmnInfoSerialized(C2KVmnInfoSerialized *this)
{
  Serializable<C2KVmnInfo>::Serializable(this);
}

{
  Serializable<C2KVmnInfo>::Serializable(this);
}

void Serializable<C2KVmnInfo>::Serializable(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54698;
  _ZNSt3__115allocate_sharedB8ne200100I10C2KVmnInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_2372EBF24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *C2KVmnInfoSerialized::C2KVmnInfoSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Serializable<C2KVmnInfo>::Serializable(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_284A54570;
  return a1;
}

void *Serializable<C2KVmnInfo>::Serializable(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54698;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void C2KVmnInfoSerialized::~C2KVmnInfoSerialized(C2KVmnInfoSerialized *this)
{
  *this = &unk_284A54698;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A54698;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A54698;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void C2KVmnAckInfoSerialized::C2KVmnAckInfoSerialized(C2KVmnAckInfoSerialized *this)
{
  Serializable<C2KVmnAckInfo>::Serializable(this);
}

{
  Serializable<C2KVmnAckInfo>::Serializable(this);
}

void Serializable<C2KVmnAckInfo>::Serializable(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54708;
  _ZNSt3__115allocate_sharedB8ne200100I13C2KVmnAckInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_2372EC210(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *C2KVmnAckInfoSerialized::C2KVmnAckInfoSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Serializable<C2KVmnAckInfo>::Serializable(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_284A54590;
  return a1;
}

void *Serializable<C2KVmnAckInfo>::Serializable(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54708;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void C2KVmnAckInfoSerialized::~C2KVmnAckInfoSerialized(C2KVmnAckInfoSerialized *this)
{
  *this = &unk_284A54708;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A54708;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A54708;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void *Serializable<C2KSmsPduDecoder>::~Serializable(void *a1)
{
  *a1 = &unk_284A54628;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Serializable<C2KSmsPduDecoder>::~Serializable(void *a1)
{
  *a1 = &unk_284A54628;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void *_ZNSt3__120__shared_ptr_emplaceI16C2KSmsPduDecoderNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54648;
  MEMORY[0x2383CA060](a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<C2KSmsPduDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A54648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CA2A0);
}

void *Serializable<C2KVmnInfo>::~Serializable(void *a1)
{
  *a1 = &unk_284A54698;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Serializable<C2KVmnInfo>::~Serializable(void *a1)
{
  *a1 = &unk_284A54698;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void *_ZNSt3__120__shared_ptr_emplaceI10C2KVmnInfoNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A546B8;
  MEMORY[0x2383CA020](a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<C2KVmnInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A546B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CA2A0);
}

void *Serializable<C2KVmnAckInfo>::~Serializable(void *a1)
{
  *a1 = &unk_284A54708;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Serializable<C2KVmnAckInfo>::~Serializable(void *a1)
{
  *a1 = &unk_284A54708;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void *_ZNSt3__120__shared_ptr_emplaceI13C2KVmnAckInfoNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A54728;
  MEMORY[0x2383CA030](a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<C2KVmnAckInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A54728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CA2A0);
}

void *MTSmsDetailsSerialized::MTSmsDetailsSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Serializable<sms::MTSmsDetails>::Serializable(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_284A54778;
  return a1;
}

void *Serializable<sms::MTSmsDetails>::Serializable(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A547C0;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void MTSmsDetailsSerialized::MTSmsDetailsSerialized(MTSmsDetailsSerialized *this)
{
  Serializable<sms::MTSmsDetails>::Serializable(this);
}

{
  Serializable<sms::MTSmsDetails>::Serializable(this);
}

void Serializable<sms::MTSmsDetails>::Serializable(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284A547C0;
  operator new();
}

void sub_2372ECC34(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void MTSmsDetailsSerialized::~MTSmsDetailsSerialized(MTSmsDetailsSerialized *this)
{
  *this = &unk_284A547C0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A547C0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_284A547C0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void *Serializable<sms::MTSmsDetails>::~Serializable(void *a1)
{
  *a1 = &unk_284A547C0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Serializable<sms::MTSmsDetails>::~Serializable(void *a1)
{
  *a1 = &unk_284A547C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CA2A0);
}

void std::__shared_ptr_emplace<sms::MTSmsDetails>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A547E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CA2A0);
}

void CTParserClient::processResponse(unsigned __int8 a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_2372E7000, a2, OS_LOG_TYPE_ERROR, "Failed to find callback for transaction ID: %u", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void CTParserClient::processResponse(CTParserXPCResponse **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  CTParserXPCResponse::getError(*a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(&dword_2372E7000, v1, v2, "XPC error: %s", v3, v4, v5, v6, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void CTParserClient::handleMessage(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_error_impl(&dword_2372E7000, log, OS_LOG_TYPE_ERROR, "XPC Error recieved: %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void CTParserClient::handleServerError(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  MEMORY[0x2383CA410](*a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(v2, v3, v4, v5, v6, v7, v8, v9, v17, __p);
  free(v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(&dword_2372E7000, v10, v11, "XPC send failed: [%s]", v12, v13, v14, v15, v18, __pb, v22, v23, v25);
  if (v24 < 0)
  {
    operator delete(__pa);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void CTParserClient::handleServerError()
{
  v25 = *MEMORY[0x277D85DE8];
  MEMORY[0x2383CA410]();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(v1, v2, v3, v4, v5, v6, v7, v8, v16, __p);
  free(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(&dword_2372E7000, v9, v10, "XPC connection closed...: %s", v11, v12, v13, v14, v17, __pb, v21, v22, v24);
  if (v23 < 0)
  {
    operator delete(__pa);
  }

  v15 = *MEMORY[0x277D85DE8];
}

{
  v25 = *MEMORY[0x277D85DE8];
  MEMORY[0x2383CA410]();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(v1, v2, v3, v4, v5, v6, v7, v8, v16, __p);
  free(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(&dword_2372E7000, v9, v10, "XPC connection interrupted...: %s", v11, v12, v13, v14, v17, __pb, v21, v22, v24);
  if (v23 < 0)
  {
    operator delete(__pa);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2821F6A60]();
}

{
  return MEMORY[0x2821F6A80]();
}

{
  return MEMORY[0x2821F6A98]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}