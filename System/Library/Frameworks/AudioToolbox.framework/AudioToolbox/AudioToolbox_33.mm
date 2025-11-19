float *AUTweakaLeakIR::CalcPeakingShelfCoeffs(float *this, float a2, float a3, float a4)
{
  v4 = this;
  if (a2 == 0.0)
  {
    v5 = *(this + 114);
    *v5 = DspLib::Biquad::kBypassSection;
    *(v5 + 16) = 0;
  }

  else
  {
    v9 = __exp10f(a2 / 20.0);
    v10 = 1.0;
    v11 = 1.0 / a4;
    v12 = v9 * (1.0 / a4);
    v13 = (1.0 / a4) * sqrtf(v9);
    if (a2 <= 0.0)
    {
      v10 = v9;
      v11 = v13;
    }

    else
    {
      v12 = v13;
    }

    v14 = *(v4 + 912);
    *v14 = v9;
    v14[1] = v12;
    v14[2] = v10;
    v14[3] = v11;
    v14[4] = v10;
    HIDWORD(v15) = 1074340347;
    LODWORD(v15) = *(v4 + 544);
    v16 = a3 * 3.14159265 / v15;
    v17 = tanf(v16);
    this = DspLib::Biquad::Design::bilinearTransformStoZUnwarped(v14, v17 * 0.5);
    v18 = *(v4 + 912);
    *(v18 + 4) = -*(v18 + 4);
    *(v18 + 12) = -*(v18 + 12);
  }

  return this;
}

void AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>::Buffer::Write(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 664);
  v5 = (a1 + 728);
  explicit = atomic_load_explicit((a1 + 728), memory_order_acquire);
  v7 = v4 >= explicit;
  v8 = v4 - explicit;
  v9 = 256;
  if (!v7)
  {
    v9 = -1;
  }

  if (v8 == v9)
  {
    AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>::Buffer::Flush(a1);
  }

  v10 = *(a1 + 664);
  v11 = 256;
  if ((v10 + 1) < 0x100)
  {
    v11 = v10 + 1;
  }

  v12 = (v10 - v11 + 257) % 0x101uLL - (257 - v11) + 1;
  if (v12 == atomic_load_explicit(v5, memory_order_acquire))
  {
    goto LABEL_19;
  }

  v13 = a1 + 24 * v10;
  v14 = *a2;
  *(v13 + 752) = *(a2 + 2);
  *(v13 + 736) = v14;
  atomic_store(v12, (a1 + 664));
  v15 = *(a1 + 664);
  v16 = atomic_load_explicit((a1 + 728), memory_order_acquire);
  v17 = v16 + ~v15;
  v7 = v15 >= v16;
  v18 = 257;
  if (!v7)
  {
    v18 = 0;
  }

  if (v17 + v18 <= 0x7F)
  {
    v19 = *(a1 + 648);
    v20 = *a1;
    v21 = *(a1 + 8);
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v24 = v20;
      v22 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v22 + 16) = 0;
      *(v22 + 24) = v24;
      *v22 = &unk_1F5923CA0;
      *(v22 + 8) = 0;

      caulk::concurrent::messenger::enqueue(v19, v22);
      return;
    }

    __break(1u);
LABEL_19:
    v23 = CAAssertRtn();
    AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>::Buffer::Flush(v23);
  }
}

void AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>::Buffer::Flush(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  explicit = atomic_load_explicit((a1 + 664), memory_order_acquire);
  v3 = *(a1 + 728);
  v4 = explicit - v3;
  if (explicit >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 257;
  }

  v6 = v5 + v4;
  if (v5 + v4)
  {
    v7 = (a1 + 736);
    v8 = v5 + explicit;
    if (v5 + explicit < 0x102)
    {
      v13 = &v7[6 * v3];
      v14 = 24 * v8 - 24 * v3;
      do
      {
        AUTweakaLeakIR::Log((a1 + 80), v13);
        v13 += 6;
        v14 -= 24;
      }

      while (v14);
      if (v8 == 257)
      {
        v12 = 0;
      }

      else
      {
        v12 = v5 + explicit;
      }
    }

    else
    {
      if (v3 != 257)
      {
        v9 = 6168 - 24 * v3;
        v10 = (a1 + 24 * v3 + 736);
        do
        {
          AUTweakaLeakIR::Log((a1 + 80), v10);
          v10 += 6;
          v9 -= 24;
        }

        while (v9);
      }

      if (&v7[6 * v3 - 1542 + 6 * v6] != v7)
      {
        v11 = 24 * (v5 + explicit) - 6168;
        do
        {
          AUTweakaLeakIR::Log((a1 + 80), v7);
          v7 += 6;
          v11 -= 24;
        }

        while (v11);
      }

      v12 = v8 - 257;
    }

    atomic_store(v12, (a1 + 728));
  }

  std::ostream::flush();

  std::mutex::unlock((a1 + 16));
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN14AUTweakaLeakIR18AURealTimeDebugLogINS3_14TaLIRInternalsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEE7performEv(caulk::concurrent::message *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 3);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v3)
      {
        AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>::Buffer::Flush(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_weak(v2);
    v6 = *(a1 + 4);
    *a1 = &unk_1F5923CC8;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a1 = &unk_1F5923CC8;
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details12message_callIZN14AUTweakaLeakIR18AURealTimeDebugLogINS3_14TaLIRInternalsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEE7performEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>::Buffer::Flush(v2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZN5caulk10concurrent7details12message_callIZN14AUTweakaLeakIR18AURealTimeDebugLogINS3_14TaLIRInternalsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F5923CC8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

void _ZN5caulk10concurrent7details12message_callIZN14AUTweakaLeakIR18AURealTimeDebugLogINS3_14TaLIRInternalsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F5923CC8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN14AUTweakaLeakIR18AURealTimeDebugLogINS3_14TaLIRInternalsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F5923CC8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN14AUTweakaLeakIR18AURealTimeDebugLogINS3_14TaLIRInternalsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F5923CC8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void AUTweakaLeakIR::Log(void *a1, float *a2)
{
  AUTweakaLeakIRLogCSV<float>(a1, a2, ", ");
  AUTweakaLeakIRLogCSV<float>(a1, a2 + 1, ", ");
  AUTweakaLeakIRLogCSV<float>(a1, a2 + 2, ", ");
  AUTweakaLeakIRLogCSV<float>(a1, a2 + 3, ", ");
  AUTweakaLeakIRLogCSV<float>(a1, a2 + 4, ", ");
  AUTweakaLeakIRLogCSV<float>(a1, a2 + 5, "\n");
}

void AUTweakaLeakIRLogCSV<float>(void *a1, float *a2, const char *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&v12, 0, sizeof(v12));
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::lexical_istream_limited_src(&v13);
  v6 = boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::shl_real<float>(&v13, *a2);
  v7 = v6;
  if (v6)
  {
    std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&v12, v16, v17, v17 - v16);
  }

  std::ostream::~ostream();
  v13.__vftable = (MEMORY[0x1E69E5548] + 16);
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13.__vftable = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v14);
  if (!v7)
  {
    std::bad_cast::bad_cast(&v13);
    v13.__vftable = &unk_1F5938F98;
    boost::throw_exception<boost::bad_lexical_cast>();
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v12;
  }

  else
  {
    v8 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v8, size);
  v11 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a3, v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1DDDD0A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::exception a15)
{
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::~lexical_istream_limited_src(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::lexical_istream_limited_src(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::stringbuf::basic_stringbuf[abi:ne200100](a1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F5938E28;
  *(a1 + 160) = 0;
  *(a1 + 104) = MEMORY[0x1E69E5520] + 24;
  *(a1 + 112) = MEMORY[0x1E69E5520] + 64;
  std::ios_base::init((a1 + 112), a1);
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  *(a1 + 288) = a1 + 264;
  *(a1 + 296) = a1 + 285;
  return a1;
}

BOOL boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::shl_real<float>(uint64_t a1, float a2)
{
  v3 = (a1 + 264);
  if (fabsf(a2) == INFINITY)
  {
    if ((LODWORD(a2) & 0x80000000) != 0)
    {
      *(a1 + 264) = 45;
      v3 = (a1 + 265);
    }

    v3[2] = 102;
    *v3 = 28265;
    *(a1 + 296) = v3 + 3;
    return 1;
  }

  else
  {
    v5 = *(a1 + 288);
    v6 = v5 + sprintf(v3, "%.*g", 9, a2);
    *(a1 + 296) = v6;
    return v6 > *(a1 + 288);
  }
}

void std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::~lexical_istream_limited_src(uint64_t a1)
{
  std::ostream::~ostream();
  *a1 = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void boost::throw_exception<boost::bad_lexical_cast>()
{
  exception = __cxa_allocate_exception(0x38uLL);
  exception[4] = 0;
  exception[5] = 0;
  *(exception + 12) = -1;
  *exception = &unk_1F5938F20;
  exception[1] = &unk_1F5938F50;
  exception[2] = &unk_1F5938F78;
  exception[3] = 0;
}

uint64_t boost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F593A5A0;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception((a1 + 8));
  return a1;
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F593A5A0;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F593A5A0;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 8) = &unk_1F593A5A0;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));
  std::exception::~exception(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *(a1 + 8) = &unk_1F593A5A0;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));

  std::exception::~exception(a1);
}

void boost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F593A5A0;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x1E12BD160);
}

void boost::wrapexcept<boost::bad_lexical_cast>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F593A570;
  *(a1 + 8) = &unk_1F5938F98;
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_1F593A5A0;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_1F5938F20;
  *(a1 + 8) = &unk_1F5938F50;
  *(a1 + 16) = &unk_1F5938F78;
  return a1;
}

void sub_1DDDD1474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::bad_lexical_cast::~bad_lexical_cast(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E12BCF50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1DDDD1648(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

double boost::detail::basic_pointerbuf<char,std::stringbuf>::seekpos@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

double boost::detail::basic_pointerbuf<char,std::stringbuf>::seekoff@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

void *boost::detail::basic_pointerbuf<char,std::stringbuf>::setbuf(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

void boost::detail::basic_unlockedbuf<std::stringbuf,char>::~basic_unlockedbuf(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x1E12BD160);
}

uint64_t boost::detail::basic_unlockedbuf<std::stringbuf,char>::~basic_unlockedbuf(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t **std::unique_ptr<AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>::Buffer::Flush(*v2);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>::Buffer::Flush(v3);
      explicit = atomic_load_explicit((v3 + 664), memory_order_acquire);
      v5 = *(v3 + 728);
      v6 = v5 - explicit;
      v9 = v5 > explicit;
      v7 = 257;
      if (!v9)
      {
        v7 = 0;
      }

      if (v7 != v6)
      {
        v8 = v7 + explicit;
        v10 = v8 - 257;
        v9 = v8 > 0x101;
        if (v8 == 257)
        {
          v8 = 0;
        }

        if (v9)
        {
          v8 = v10;
        }

        atomic_store(v8, (v3 + 728));
      }

      v11 = *(v3 + 656);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v12 = MEMORY[0x1E69E54D0];
      v13 = *MEMORY[0x1E69E54D0];
      *(v3 + 80) = *MEMORY[0x1E69E54D0];
      *(v3 + 80 + *(v13 - 24)) = *(v12 + 24);
      MEMORY[0x1E12BCB20](v3 + 88);
      std::ostream::~ostream();
      MEMORY[0x1E12BD050](v3 + 496);
      std::mutex::~mutex((v3 + 16));
      v14 = *(v3 + 8);
      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      MEMORY[0x1E12BD160](v3, 0x10F0C4077E18DA5);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

os_log_t ___ZN14AUTweakaLeakIR9getAUSLogEv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUTweakaLeakIR");
  AUTweakaLeakIR::getAUSLog(void)::gLog = result;
  return result;
}

uint64_t AUTweakaLeakIR::SetParameter(AUTweakaLeakIR *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a2 > 0x1D || a3)
  {

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }

  else
  {
    if (a2 - 28 <= 0xFFFFFFFB)
    {
      *(this + a2 + 857) = 1;
    }

    v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v8 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v7, a2, a5);
    return 0;
  }
}

uint64_t AUTweakaLeakIR::SetProperty(AUTweakaLeakIR *this, int a2, int a3, unsigned int a4, _DWORD *__src, size_t __n)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 3900)
  {
    if (a2 == 21)
    {
      if (__n >= 4)
      {
        result = 0;
        *(this + 856) = *__src != 0;
        return result;
      }
    }

    else
    {
      if (a2 != 3900)
      {
        return result;
      }

      v8 = *(this + 138);
      if (*(this + 139) - v8 >= __n)
      {
        memcpy(v8, __src, __n);
        result = 0;
        *(this + 1128) = 1;
        return result;
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 3901:
        if (__n == 8)
        {
          if ((*(this + 17) & 1) == 0)
          {
            result = 0;
            *(this + 132) = *__src;
            return result;
          }

          return 4294956431;
        }

        break;
      case 3902:
        if (__n == 4)
        {
          if ((*(this + 17) & 1) == 0)
          {
            result = 0;
            *(this + 283) = *__src;
            return result;
          }

          return 4294956431;
        }

        break;
      case 8900:
        if (__n == 8)
        {
          CACFDictionary::operator=(this + 1040, *__src);
          return 0;
        }

        return 4294956445;
      default:
        return result;
    }
  }

  return 4294956445;
}

uint64_t CACFDictionary::operator=(uint64_t a1, const void *a2)
{
  if (*(a1 + 8))
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
      v5 = *(a1 + 8);
    }

    else
    {
      v5 = 1;
    }

    *a1 = a2;
    *(a1 + 9) = 0;
    if (a2 && (v5 & 1) != 0)
    {
      CFRetain(a2);
    }
  }

  else
  {
    *a1 = a2;
    *(a1 + 9) = 0;
  }

  return a1;
}

uint64_t AUTweakaLeakIR::GetProperty(const void **this, int a2, int a3, unsigned int a4, void *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 3899)
  {
    if (a2 == 21)
    {
      result = 0;
      v7 = *(this + 856);
      goto LABEL_15;
    }

    if (a2 == 3700)
    {
      result = 0;
      v7 = *(this + 376);
      goto LABEL_15;
    }
  }

  else
  {
    switch(a2)
    {
      case 3900:
        memcpy(__dst, this[138], this[139] - this[138]);
        return 0;
      case 3901:
        result = 0;
        *__dst = this[132];
        break;
      case 3902:
        result = 0;
        v7 = *(this + 283);
LABEL_15:
        *__dst = v7;
        break;
    }
  }

  return result;
}

uint64_t AUTweakaLeakIR::GetPropertyInfo(AUTweakaLeakIR *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 3900)
  {
    if (a2 != 21)
    {
      if (a2 != 3700)
      {
        if (a2 != 3900)
        {
          return result;
        }

        *a6 = 1;
        v8 = (*(this + 278) - *(this + 276)) & 0xFFFFFFFC;
        goto LABEL_19;
      }

      *a6 = 0;
      goto LABEL_18;
    }

    v10 = 1;
LABEL_17:
    *a6 = v10;
LABEL_18:
    v8 = 4;
    goto LABEL_19;
  }

  switch(a2)
  {
    case 3901:
      v9 = *(this + 17) ^ 1;
      break;
    case 3902:
      v10 = *(this + 17) ^ 1;
      goto LABEL_17;
    case 8900:
      v9 = 1;
      break;
    default:
      return result;
  }

  *a6 = v9;
  v8 = 8;
LABEL_19:
  result = 0;
  *a5 = v8;
  return result;
}

uint64_t AUTweakaLeakIR::Reset(AUTweakaLeakIR *this)
{
  *(this + 193) = *(this + 185);
  *(this + 194) = 0;
  *(this + 195) = *(this + 178);
  *(this + 904) = 0;
  if (*(this + 17) == 1)
  {
    DspLib::Biquad::SetupWrapper::reset((this + 984));
  }

  return 0;
}

uint64_t AUTweakaLeakIR::Initialize(AUTweakaLeakIR *this)
{
  v75 = *MEMORY[0x1E69E9840];
  *(this + 99) = *(this + 98);
  std::unique_ptr<AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>>::reset[abi:ne200100](this + 66, 0);
  *(this + 376) = 1;
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v3 != 2)
  {
    return 4294956428;
  }

  v4 = *(this + 21);
  if (v4)
  {
    LODWORD(v5) = (*(*v4 + 24))(v4);
  }

  else
  {
    v5 = (*(this + 19) - *(this + 18)) >> 3;
  }

  if (v5 != 1)
  {
    return 4294956428;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_100;
  }

  v7 = *(Element + 80);
  v8 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v8)
  {
    goto LABEL_100;
  }

  if (v7 != *(v8 + 80))
  {
    return 4294956428;
  }

  *(this + 135) = *(this + 84);
  v11 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v11)
  {
LABEL_100:
    ausdk::Throw(0xFFFFD583);
  }

  *(this + 136) = *(v11 + 80);
  *(this + 268) = 0;
  *(this + 538) = 0;
  *(this + 548) = 0xC000000200;
  *(this + 680) = xmmword_1DE09C750;
  *(this + 87) = 0x800000004;
  *(this + 176) = 5;
  *(this + 708) = xmmword_1DE09C760;
  *(this + 724) = xmmword_1DE09CFF0;
  *(this + 193) = 0;
  *(this + 97) = 0;
  *(this + 740) = xmmword_1DE09C780;
  *(this + 140) = 1065353216;
  *(this + 887) = 0;
  *(this + 888) = xmmword_1DE09C790;
  *(this + 904) = 0;
  data_low = AUTweakaLeakIR::InitializeFFTWindowInternals(this);
  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v13 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v12, 0x1Bu), *(this + 227) = Parameter, *(this + 884) = 0, DspLib::Biquad::Filter::initialize((this + 936), 1uLL, Parameter), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v16 & 1) == 0))
  {
    abort();
  }

  *(this + 191) = ausdk::AUElement::GetParameter(v15, 0x1Cu);
  *(this + 885) = 0;
  AUTweakaLeakIR::ApplyDymamicTLIRParams(this);
  *(this + 194) = 0;
  *(this + 195) = *(this + 178);
  *(this + 193) = *(this + 185);
  v17 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Biquads_%u", *(this + 136));
  key = v17;
  if (v17)
  {
    v18 = CFGetTypeID(v17);
    if (v18 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v55 = 257;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v53 = 257;
  CACFDictionary::GetCACFArray(this + 130, @"Anchors", &Mutable);
  if (CFDictionaryContainsKey(*(this + 130), key))
  {
    CACFDictionary::GetCACFArray(this + 130, key, &theArray);
  }

  else if (CFDictionaryContainsKey(*(this + 130), @"Biquads"))
  {
    CACFDictionary::GetCACFArray(this + 130, @"Biquads", &theArray);
  }

  if (theArray && CFArrayGetCount(theArray) && Mutable && CFArrayGetCount(Mutable))
  {
    CFHelper::extractVector<float>(&v64, &Mutable);
    CFHelper::extractVectorOfVectors<float>(&v70, &theArray);
    v19 = (v64.__pn_.__r_.__value_.__l.__size_ - v64.__pn_.__r_.__value_.__r.__words[0]) >> 2;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v70.__pn_.__r_.__value_.__l.__size_ - v70.__pn_.__r_.__value_.__r.__words[0]) >> 3);
    v21 = v19 == v20;
    if (v70.__pn_.__r_.__value_.__l.__size_ != v70.__pn_.__r_.__value_.__r.__words[0])
    {
      v22 = 0;
      v23 = 0;
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v24 = (v70.__pn_.__r_.__value_.__r.__words[0] + 8);
      do
      {
        v25 = *(v24 - 1);
        v26 = (*v24 - v25) >> 2;
        v28 = *v24 != v25 && 0xCCCCCCCCCCCCCCCDLL * v26 < 0x3333333333333334;
        v21 &= v28;
        if (v22)
        {
          v21 &= v26 == v23;
        }

        else
        {
          v23 = v26;
        }

        ++v22;
        v24 += 3;
      }

      while (v20 != v22);
    }

    if (v21)
    {
      __p = 0;
      v50 = 0;
      v51 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v64.__pn_.__r_.__value_.__l.__data_, v64.__pn_.__r_.__value_.__l.__size_, v19);
      memset(v48, 0, sizeof(v48));
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v48, v70.__pn_.__r_.__value_.__l.__data_, v70.__pn_.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v70.__pn_.__r_.__value_.__l.__size_ - v70.__pn_.__r_.__value_.__r.__words[0]) >> 3));
      AUTweakaLeakIR::SetCorrectiveBQsAndAnchorGains(this, &__p, v48);
      *v65 = v48;
      std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](v65);
      if (__p)
      {
        v50 = __p;
        operator delete(__p);
      }
    }

    *v65 = &v70;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](v65);
    if (v64.__pn_.__r_.__value_.__r.__words[0])
    {
      v64.__pn_.__r_.__value_.__l.__size_ = v64.__pn_.__r_.__value_.__r.__words[0];
      operator delete(v64.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 132) <= 0.0)
  {
    if (*(this + 1072) == 1)
    {
      AudioSampleRateConverterDispose();
      *(this + 1072) = 0;
    }
  }

  else
  {
    CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(&v64, 0);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v64.__pn_.__r_.__value_.__l.__size_, *MEMORY[0x1E698D978], *(this + 132));
    LODWORD(v29) = *(this + 136);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v64.__pn_.__r_.__value_.__l.__size_, *MEMORY[0x1E698D988], v29);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v64.__pn_.__r_.__value_.__l.__size_, *MEMORY[0x1E698D990], 2);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v64.__pn_.__r_.__value_.__l.__size_, *MEMORY[0x1E698D998], 32);
    CA::AudioSampleRateConverterBuilder::Build(&v70);
    if (v70.__pn_.__r_.__value_.__s.__data_[8] != 1)
    {
      data_low = LODWORD(v70.__pn_.__r_.__value_.__l.__data_);
      CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(&v64);
      goto LABEL_98;
    }

    if (*(this + 1072) == 1)
    {
      v30 = *(this + 133);
      *(this + 133) = v70.__pn_.__r_.__value_.__r.__words[0];
      v70.__pn_.__r_.__value_.__r.__words[0] = v30;
    }

    else
    {
      v31 = v70.__pn_.__r_.__value_.__r.__words[0];
      v70.__pn_.__r_.__value_.__r.__words[0] = 0;
      *(this + 133) = v31;
      *(this + 1072) = 1;
    }

    AudioSampleRateConverterDispose();
    CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(&v64);
  }

  std::vector<float>::resize(this + 138, *(this + 283));
  std::vector<float>::resize(this + 135, *(this + 84));
  (*(*this + 72))(this, 0, 0);
  v32 = CFPreferencesCopyAppValue(@"AUTweakIRInternalLogs", @"com.apple.coreaudio");
  v33 = v32;
  if (v32)
  {
    v34 = CFGetTypeID(v32);
    if (v34 == CFBooleanGetTypeID())
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(v33))
      {
        if (!CFBooleanGetValue(v33))
        {
LABEL_64:
          v38 = 0;
LABEL_65:
          CFRelease(v33);
          if (v38)
          {
            if (!*(this + 142))
            {
              LODWORD(v70.__pn_.__r_.__value_.__l.__data_) = 0;
              caulk::concurrent::messenger::shared_logging_priority(v39);
              std::allocate_shared[abi:ne200100]<caulk::concurrent::messenger,std::allocator<caulk::concurrent::messenger>,caulk::concurrent::messenger::thread_strategy,caulk::thread::attributes &,0>();
            }

            std::__fs::filesystem::__temp_directory_path(&v64, 0);
            std::__fs::filesystem::path::path[abi:ne200100]<char [15],void>(&v70.__pn_);
            std::__fs::filesystem::operator/[abi:ne200100](&v59, &v64, &v70);
            if (SHIBYTE(v70.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v70.__pn_.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v64.__pn_.__r_.__value_.__l.__data_);
            }

            if (AUTweakaLeakIR::getAUSLog(void)::onceToken != -1)
            {
              dispatch_once(&AUTweakaLeakIR::getAUSLog(void)::onceToken, &__block_literal_global_9095);
            }

            v40 = AUTweakaLeakIR::getAUSLog(void)::gLog;
            if (os_log_type_enabled(AUTweakaLeakIR::getAUSLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
            {
              v41 = &v59;
              if ((v59.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v41 = v59.__pn_.__r_.__value_.__r.__words[0];
              }

              LODWORD(v64.__pn_.__r_.__value_.__l.__data_) = 136315138;
              *(v64.__pn_.__r_.__value_.__r.__words + 4) = v41;
              _os_log_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_DEFAULT, "set up logs in %s", &v64, 0xCu);
            }

            std::__fs::filesystem::__status(&v59, 0);
            if (v64.__pn_.__r_.__value_.__s.__data_[0] == 255 || !v64.__pn_.__r_.__value_.__s.__data_[0])
            {
              std::__fs::filesystem::__create_directory(&v59, 0);
            }

            v67 = 0u;
            v68 = 0u;
            *v65 = 0u;
            v66 = 0u;
            __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
            v57 = std::chrono::system_clock::to_time_t(&__t);
            rep = __t.__d_.__rep_;
            v43 = localtime(&v57);
            v44 = strftime(v65, 0x40uLL, "%T", v43);
            snprintf(&v65[v44], 64 - v44, ":%03lld", rep / 1000 % 1000);
            if (AUTweakaLeakIR::getAUSLog(void)::onceToken != -1)
            {
              dispatch_once(&AUTweakaLeakIR::getAUSLog(void)::onceToken, &__block_literal_global_9095);
            }

            v45 = AUTweakaLeakIR::getAUSLog(void)::gLog;
            if (os_log_type_enabled(AUTweakaLeakIR::getAUSLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v64.__pn_.__r_.__value_.__l.__data_) = 136315138;
              *(v64.__pn_.__r_.__value_.__r.__words + 4) = v65;
              _os_log_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_DEFAULT, "set up logs with time stamp %s", &v64, 0xCu);
            }

            v69[1] = 63;
            v69[0] = v65;
            v69[4] = 397;
            v69[2] = "TalIRInternals";
            v70.__pn_.__r_.__value_.__r.__words[0] = v73;
            *&v70.__pn_.__r_.__value_.__r.__words[1] = xmmword_1DE09C120;
            v71 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
            v72 = 0;
            __src = v73;
            v63[0] = 2;
            v63[1] = v69;
            v63[2] = 397;
            std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v70, "log.{}.{}.csv", 13, v63);
            v46 = v70.__pn_.__r_.__value_.__r.__words[2];
            if (v70.__pn_.__r_.__value_.__r.__words[2] < 0x7FFFFFFFFFFFFFF8)
            {
              if (v70.__pn_.__r_.__value_.__r.__words[2] < 0x17)
              {
                *(&__dst.__pn_.__r_.__value_.__s + 23) = v70.__pn_.__r_.__value_.__s.__data_[16];
                if (v70.__pn_.__r_.__value_.__r.__words[2])
                {
                  memmove(&__dst, __src, v70.__pn_.__r_.__value_.__r.__words[2]);
                }

                __dst.__pn_.__r_.__value_.__s.__data_[v46] = 0;
                if (__src != v73)
                {
                  operator delete(__src);
                }

                v61 = __dst;
                std::__fs::filesystem::operator/[abi:ne200100](&v62, &v59, &v61);
                std::ofstream::basic_ofstream(&v64);
                if (SHIBYTE(v62.__pn_.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v62.__pn_.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v61.__pn_.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v61.__pn_.__r_.__value_.__l.__data_);
                }

                operator new();
              }

              operator new();
            }

            std::string::__throw_length_error[abi:ne200100]();
          }

          goto LABEL_98;
        }
      }

      else
      {
        v36 = CFNumberGetTypeID();
        if (v36 != CFGetTypeID(v33))
        {
          goto LABEL_64;
        }

        v37 = applesauce::CF::details::number_convert_as<BOOL>(v33);
        if (v37 < 0x100u || (v37 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      v38 = 1;
      goto LABEL_65;
    }

    CFRelease(v33);
  }

LABEL_98:
  CACFArray::~CACFArray(&Mutable);
  CACFArray::~CACFArray(&theArray);
  if (key)
  {
    CFRelease(key);
  }

  return data_low;
}

void sub_1DDDD2BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  STACK[0x350] = v44;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x350]);
  if (__p)
  {
    operator delete(__p);
  }

  STACK[0x350] = &STACK[0x3C0];
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x350]);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  CACFArray::~CACFArray(&a20);
  CACFArray::~CACFArray(&a22);
  applesauce::CF::StringRef::~StringRef(&a24);
  _Unwind_Resume(a1);
}

uint64_t AUTweakaLeakIR::SetCorrectiveBQsAndAnchorGains(uint64_t result, void *a2, void *a3)
{
  if (!*(result + 1008) && a2[1] != *a2 && a3[1] != *a3)
  {
    *(result + 908) = ((*(*a3 + 8) - **a3) >> 2) / 5uLL;
    operator new();
  }

  return result;
}

uint64_t CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(uint64_t a1, int a2)
{
  *a1 = a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    *(a1 + 8) = Mutable;
    return a1;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<double>(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CA::AudioSampleRateConverterBuilder::Build(CA::AudioSampleRateConverterBuilder *this)
{
  result = AudioSampleRateConverterCreate();
  if (result)
  {
    *this = result;
    *(this + 8) = 0;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t caulk::__expected_detail::base<CA::AudioSampleRateConverter,int>::~base(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  return a1;
}

void CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(CA::AudioSampleRateConverterBuilder *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CACFArray::~CACFArray(CACFArray *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [15],void>(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append[abi:ne200100]<char const*,0>(a1, "AUTweakaLeakIR", "");
  return a1;
}

void sub_1DDDD32C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100](std::__fs::filesystem::path *a1, uint64_t a2, std::__fs::filesystem::path *this)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a1->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a1->__pn_.__r_.__value_.__l.__data_ = *a2;
    a1->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a1, this);
}

void sub_1DDDD3338(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDDD34D0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ofstream::~ofstream(void *a1)
{
  v1 = MEMORY[0x1E69E54D0];
  v2 = *MEMORY[0x1E69E54D0];
  *a1 = *MEMORY[0x1E69E54D0];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x1E12BCB20](a1 + 1);

  return std::ostream::~ostream();
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

uint64_t *std::unique_ptr<BiquadInterpolator>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v4 = (v2 + 24);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    return MEMORY[0x1E12BD160](v2, 0xA0C40C7E57C1ALL);
  }

  return result;
}

void AUTweakaLeakIR::~AUTweakaLeakIR(AUTweakaLeakIR *this)
{
  AUTweakaLeakIR::~AUTweakaLeakIR(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5923A30;
  *(this + 99) = *(this + 98);
  std::unique_ptr<AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>>::reset[abi:ne200100](this + 66, 0);
  dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_23);
  v2 = *(this + 143);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 138);
  if (v3)
  {
    *(this + 139) = v3;
    operator delete(v3);
  }

  v4 = *(this + 135);
  if (v4)
  {
    *(this + 136) = v4;
    operator delete(v4);
  }

  if (*(this + 1072) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  CACFDictionary::~CACFDictionary((this + 1040));
  v5 = *(this + 127);
  if (v5)
  {
    *(this + 128) = v5;
    operator delete(v5);
  }

  std::unique_ptr<BiquadInterpolator>::reset[abi:ne200100](this + 126, 0);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 984));
  v6 = *(this + 120);
  if (v6)
  {
    *(this + 121) = v6;
    operator delete(v6);
  }

  v7 = *(this + 114);
  if (v7)
  {
    *(this + 115) = v7;
    operator delete(v7);
  }

  v8 = *(this + 106);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 98);
  if (v9)
  {
    *(this + 99) = v9;
    operator delete(v9);
  }

  std::unique_ptr<AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>>::reset[abi:ne200100](this + 66, 0);

  ausdk::AUBase::~AUBase(this);
}

void CACFDictionary::~CACFDictionary(CACFDictionary *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void ___ZN14AUTweakaLeakIR15DeleteEmptyLogsEv_block_invoke()
{
  std::__fs::filesystem::__temp_directory_path(&v4, 0);
  std::__fs::filesystem::path::path[abi:ne200100]<char [15],void>(&__p);
  std::__fs::filesystem::operator/[abi:ne200100](&v5, &v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__pn_.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::__status(&v5, 0);
  if (v4.__pn_.__r_.__value_.__s.__data_[0] && v4.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    MEMORY[0x1E12BCE00](&v4, &v5, 0, 0);
    v0 = *&v4.__pn_.__r_.__value_.__l.__data_;
    if (v4.__pn_.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v4.__pn_.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      size = v4.__pn_.__r_.__value_.__l.__size_;
      *&__p.__r_.__value_.__l.__data_ = v0;
      if (v4.__pn_.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v4.__pn_.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](size);
      }
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = v4.__pn_.__r_.__value_.__r.__words[0];
    }

    while (__p.__r_.__value_.__r.__words[0])
    {
      v2 = std::__fs::filesystem::directory_iterator::__dereference(&__p);
      if (!std::__fs::filesystem::__file_size(&v2->__p_, 0))
      {
        std::__fs::filesystem::__remove(&v2->__p_, 0);
      }

      std::__fs::filesystem::directory_iterator::__increment(&__p, 0);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    if (v4.__pn_.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4.__pn_.__r_.__value_.__l.__size_);
    }
  }

  if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1DDDD3998(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  if (AUTweakaLeakIR::getAUSLog(void)::onceToken != -1)
  {
    dispatch_once(&AUTweakaLeakIR::getAUSLog(void)::onceToken, &__block_literal_global_9095);
  }

  v27 = AUTweakaLeakIR::getAUSLog(void)::gLog;
  if (os_log_type_enabled(AUTweakaLeakIR::getAUSLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_ERROR, "failed to delete empty logs due to exception", &__p, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DDDD3988);
}

uint64_t std::optional<CA::AudioSampleRateConverter>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  return a1;
}

{
  if (*(a1 + 8) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  return a1;
}

uint64_t AUSM::InputGeometry::getCurrentSoundStagePostProcReverbOverride(AUSM::InputGeometry *this)
{
  if ((*(*(*(this + 1) + 232) + 3112) & 1) != 0 || (v1 = *(this + 2), v2 = *(v1 + 168), v3 = *(v1 + 176), v4 = v3 - v2, v3 == v2))
  {
LABEL_6:
    v9 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = *(v1 + 404);
    v8 = 0xD37A6F4DE9BD37A7 * (v4 >> 3);
    while (*(v2 + 184 * v5 + 24) != v7)
    {
      v5 = ++v6;
      if (v8 <= v6)
      {
        goto LABEL_6;
      }
    }

    v9 = *(v2 + 184 * v6 + 168);
  }

  return v9 & 1;
}

uint64_t AUSM::InputGeometry::update(AUSM::InputGeometry *this, int a2)
{
  v4 = atomic_load(this + 273);
  v5 = atomic_load(this + 274);
  v6 = v5 | a2;
  if ((v5 | a2))
  {
    _X24 = 0;
    _X25 = 0;
    atomic_store(0, this + 274);
    __dmb(0xBu);
    __asm { CASPAL          X24, X25, X24, X25, [X8] }

    v14 = *(this + 50);
    if (v14 != *&_X24)
    {
      v15 = 0.0;
      if (*&_X24 >= 0.0)
      {
        v14 = *&_X24;
      }

      else
      {
        v14 = 0.0;
      }

      *(this + 50) = v14;
      if (v14 >= 0.001)
      {
        v16 = *(this + 51);
        if ((v16 - v14) >= 0.001)
        {
          v17 = log10f(*(this + 52));
          v15 = v17 / log10f(v16 / v14);
        }
      }

      *(this + 53) = v15;
    }

    v18 = *(this + 51);
    if (v18 != *(&_X24 + 1))
    {
      v19 = 0.0;
      if (*(&_X24 + 1) >= 0.0)
      {
        v18 = *(&_X24 + 1);
      }

      else
      {
        v18 = 0.0;
      }

      *(this + 51) = v18;
      if (v14 >= 0.001 && (v18 - v14) >= 0.001)
      {
        v20 = log10f(*(this + 52));
        v19 = v20 / log10f(v18 / v14);
      }

      *(this + 53) = v19;
    }

    v21 = __exp10f(0.0 * -0.05);
    if (*(this + 52) != v21)
    {
      if (v21 < 0.000001)
      {
        v21 = 0.000001;
      }

      *(this + 52) = v21;
      v22 = 0.0;
      if (v14 >= 0.001 && (v18 - v14) >= 0.001)
      {
        v23 = log10f(v21);
        v22 = v23 / log10f(v18 / v14);
      }

      *(this + 53) = v22;
    }

    v24 = atomic_load((*(this + 1) + 112));
    *(this + 49) = v24;
    v25 = atomic_load((*(this + 1) + 76));
    v26 = (v25 >> 2) & 1;
    v27 = atomic_load((*(this + 1) + 212));
    v28 = atomic_load((*(this + 1) + 72));
    v29 = atomic_load((*(*(this + 1) + 232) + 88));
    v30 = v28 | (v29 << 32);
    atomic_load((*(*(this + 1) + 232) + 2556));
    v31 = *(*(this + 1) + 232);
    if ((*(v31 + 3053) & 1) == 0)
    {
      atomic_load((v31 + 3054));
    }

    if (v27 > 3)
    {
      v32 = v26;
    }

    else
    {
      v32 = 0;
    }

    if (v30 == 0x100000007)
    {
      LOBYTE(v26) = v32;
    }

    *(this + 188) = v26;
  }

  v33 = *(*(this + 2) + 1080);
  v34 = (v33 != *(this + 70)) | v4 | a2;
  if ((v33 != *(this + 70)) | (v4 | a2) & 1)
  {
    *(this + 70) = v33;
    __dmb(0xBu);
    Parameter = ausdk::AUElement::GetParameter(*this, 0x23u);
    *(this + 46) = (Parameter * 0.01) + (*(*(this + 2) + 440) * (0.5 - (Parameter * 0.01)));
    v36 = ausdk::AUElement::GetParameter(*this, 0x27u);
    v37 = atomic_load((*(this + 1) + 212));
    _ZF = v37 == 0;
    v39 = *(this + 1);
    v38 = *(this + 2);
    v40 = *(v38 + 1048);
    v41 = 1.0;
    if (_ZF)
    {
      v36 = 1.0;
    }

    *(this + 21) = v40 + ((1.0 - v40) * (v36 * *(v38 + 432)));
    v42 = atomic_load((v39 + 80));
    if (v42 != 1 && (v42 || *(*this + 108) <= 1u))
    {
      v43 = atomic_load((*(this + 1) + 72));
      if (v43 != 5)
      {
        v44 = ausdk::AUElement::GetParameter(*this, 0x1Fu);
        v41 = 0.0;
        if (v44 >= 0.5)
        {
          v41 = *(*(this + 2) + 428);
        }
      }
    }

    v45 = v40 + ((1.0 - v40) * v41);
    v46 = atomic_load((*(this + 1) + 212));
    v47 = *(this + 21);
    v48 = atomic_load((*(this + 1) + 72));
    v49 = atomic_load((*(*(this + 1) + 232) + 88));
    v50 = v48 | (v49 << 32);
    atomic_load((*(*(this + 1) + 232) + 2556));
    v51 = *(*(this + 1) + 232);
    if ((*(v51 + 3053) & 1) == 0)
    {
      atomic_load((v51 + 3054));
    }

    v52 = 1.0;
    if (v47 <= 1.0)
    {
      v53 = *(this + 21);
    }

    else
    {
      v53 = 1.0;
    }

    if (v47 < 0.0)
    {
      v53 = 0.0;
    }

    if (v47 <= 1.0)
    {
      v54 = *(this + 21);
    }

    else
    {
      v54 = 1.0;
    }

    if (v47 >= 0.0)
    {
      v55 = v54;
    }

    else
    {
      v55 = 0.0;
    }

    if (v46)
    {
      v55 = v53;
    }

    if (v46 - 1 < 3)
    {
      v55 = 0.0;
    }

    if (v50 != 0x100000007)
    {
      v55 = 0.0;
    }

    v56 = 1.0 - v55;
    if (v45 <= 1.0)
    {
      v52 = v45;
    }

    if (v45 >= 0.0)
    {
      v57 = v52;
    }

    else
    {
      v57 = 0.0;
    }

    *(this + 19) = v55 + (v56 * v57);
    *(this + 20) = v56 + (v55 * v57);
    ++*(this + 69);
  }

  if ((v4 & 1) != 0 || a2)
  {
    atomic_store(0, this + 273);
    __dmb(0xBu);
    *(this + 176) = ausdk::AUElement::GetParameter(*this, 0x20u) >= 0.5;
    v58 = atomic_load((*(this + 1) + 72));
    if (v58 == 6)
    {
      goto LABEL_71;
    }

    v59 = atomic_load((*(this + 1) + 72));
    if (v59 == 2)
    {
      goto LABEL_71;
    }

    v100 = atomic_load((*(this + 1) + 72));
    if (v100 != 7)
    {
      v60 = 0;
      goto LABEL_72;
    }

    v101 = atomic_load((*(*(this + 1) + 232) + 88));
    if (v101 == 1)
    {
LABEL_71:
      v60 = 1;
    }

    else
    {
      v102 = atomic_load((*(*(this + 1) + 232) + 88));
      v60 = v102 == 2;
    }

LABEL_72:
    *(this + 177) = *(this + 176) & v60;
    if (caulk::pooled_semaphore_mutex::try_lock((this + 40)))
    {
      v61 = atomic_load(this + 44);
      if (v61)
      {
        *(this + 24) = vextq_s8(*(this + 24), *(this + 24), 8uLL);
        atomic_store(0, this + 44);
      }

      caulk::pooled_semaphore_mutex::_unlock((this + 40));
    }

    v62 = atomic_load((*(this + 1) + 201));
    if (v62)
    {
      if (caulk::pooled_semaphore_mutex::try_lock((this + 40)))
      {
        v63 = atomic_load(this + 44);
        if (v63)
        {
          *(this + 24) = vextq_s8(*(this + 24), *(this + 24), 8uLL);
          atomic_store(0, this + 44);
        }

        caulk::pooled_semaphore_mutex::_unlock((this + 40));
      }

      v64 = *(*(this + 4) + 8) != **(this + 4) && v60;
    }

    else
    {
      v64 = 0;
    }

    *(this + 178) = v64;
    SnappedCoordinates = ausdk::AUElement::GetParameter(*this, 0);
    v66 = ausdk::AUElement::GetParameter(*this, 1u);
    *&v67 = ausdk::AUElement::GetParameter(*this, 0x1Bu);
    v150 = v67;
    v148 = ausdk::AUElement::GetParameter(*this, 0x19u);
    v68 = ausdk::AUElement::GetParameter(*this, 0x1Au);
    v69 = v150;
    *(&v69 + 1) = v148;
    *(&v69 + 2) = v68;
    *(this + 3) = v69;
    v70 = atomic_load((*(this + 1) + 80));
    if (v70 != 3)
    {
      if (*(this + 177))
      {
        SnappedCoordinates = AUSM::SnapCoordinates::getSnappedCoordinates(this + 216, 0, 0, SnappedCoordinates, v66);
        v66 = v71;
      }

      if (*(this + 178))
      {
        if (caulk::pooled_semaphore_mutex::try_lock((this + 40)))
        {
          v73 = atomic_load(this + 44);
          if (v73)
          {
            *(this + 24) = vextq_s8(*(this + 24), *(this + 24), 8uLL);
            atomic_store(0, this + 44);
          }

          caulk::pooled_semaphore_mutex::_unlock((this + 40));
        }

        SnappedCoordinates = AUSM::SnapCoordinates::getExcludedCoordinates(this + 216, *(this + 4), v72, SnappedCoordinates, v66);
        v66 = v74;
      }
    }

    v75 = __sincosf_stret((SnappedCoordinates * 0.017453) * 0.5);
    v76 = __sincosf_stret((v66 * 0.017453) * 0.5);
    *&v77 = -((v75.__sinval * v76.__sinval) - ((v75.__cosval * v76.__cosval) * 0.0));
    *(&v77 + 1) = (v75.__sinval * (v76.__cosval * 0.0)) + (v76.__sinval * v75.__cosval);
    *(&v77 + 1) = __PAIR64__((v75.__cosval * v76.__cosval) + ((v75.__sinval * v76.__sinval) * 0.0), (v75.__cosval * (v76.__sinval * -0.0)) + (v76.__cosval * v75.__sinval));
    *(this + 6) = v77;
    if (atomic_load((*(this + 1) + 220)))
    {
      *(this + 112) = 1;
    }

    else
    {
      AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&cf, *(this + 1) + 128);
      v79 = cf;
      *(this + 112) = cf != 0;
      if (v79)
      {
        CFRelease(v79);
      }
    }

    v80 = ausdk::AUElement::GetParameter(*this, 0x16u);
    v81 = ausdk::AUElement::GetParameter(*this, 0x17u);
    v82 = ausdk::AUElement::GetParameter(*this, 0x18u);
    v83 = __sincosf_stret((v80 * 0.017453) * 0.5);
    v85 = __sincosf_stret((v81 * 0.017453) * 0.5);
    *v84.i32 = v85.__cosval;
    v147 = v84;
    v86 = __sincosf_stret((v82 * 0.017453) * 0.5);
    v87 = v147;
    v87.i32[1] = LODWORD(v86.__cosval);
    v88 = v87;
    v88.i32[2] = LODWORD(v85.__sinval);
    v89 = vzip2q_s32(v88, vuzp1q_s32(v88, v88));
    v88.i32[3] = LODWORD(v83.__cosval);
    v90 = vrev64q_s32(v88);
    v91.i64[1] = v88.i64[1];
    v91.i64[0] = __PAIR64__(LODWORD(v86.__sinval), LODWORD(v83.__sinval));
    v92 = vzip2q_s32(v88, vextq_s8(v91, v91, 8uLL));
    v88.i32[2] = v147.i32[0];
    v91.i32[3] = LODWORD(v83.__sinval);
    v89.f32[2] = -v86.__sinval;
    v93 = vmulq_f32(v91, v89);
    v94 = vtrn2q_s32(v92, v87);
    v95 = vrev64q_s32(v92);
    v92.f32[0] = -v86.__cosval;
    *(this + 8) = vmlaq_f32(vmulq_f32(v93, v92), vextq_s8(v95, v94, 8uLL), vmulq_f32(vextq_s8(v90, v90, 8uLL), v88));
    v96 = atomic_load((*(this + 1) + 72));
    v97 = atomic_load((*(*(this + 1) + 232) + 88));
    atomic_load((*(*(this + 1) + 232) + 2556));
    v98 = *(*(this + 1) + 232);
    if ((*(v98 + 3053) & 1) == 0)
    {
      atomic_load((v98 + 3054));
    }

    v99 = 4;
    if (v96 == 7 && v97 <= 4)
    {
      if ((2u >> v97))
      {
        v99 = atomic_load((*(this + 1) + 212));
      }

      else
      {
        v99 = 4;
      }
    }

    *(this + 16) = v99;
    v103 = atomic_load((*(this + 1) + 72));
    if (v103 == 7 && (v104 = atomic_load((*(*(this + 1) + 232) + 88)), v104 == 2))
    {
      v105 = *(this + 2);
      *(this + 180) = *(v105 + 561);
      v106 = *(v105 + 560);
    }

    else
    {
      v106 = 0;
      *(this + 180) = 0;
    }

    *(this + 179) = v106 & 1;
  }

  v107 = *(this + 37);
  if ((*(this + 144) & 1) == 0 && v107 != 3)
  {
    goto LABEL_131;
  }

  v108 = *(this + 2);
  if ((v4 & 1) == 0)
  {
    v109 = v108[67].i32[1];
    if (*(this + 71) != v109)
    {
      goto LABEL_117;
    }

    v109 = *(this + 71);
    if (((*(this + 72) == v108[66].i32[3]) & ~v34) == 0)
    {
      goto LABEL_117;
    }

LABEL_131:
    v133 = 0;
    goto LABEL_132;
  }

  v109 = v108[67].i32[1];
LABEL_117:
  *(this + 71) = v109;
  *(this + 72) = v108[66].i32[3];
  if (v107 == 3)
  {
    v110 = 1.0;
  }

  else
  {
    v110 = v108[27].f32[3];
  }

  if (v110 <= 0.001)
  {
    v132 = xmmword_1DE097CE0;
  }

  else
  {
    v111 = *(this + 8);
    v112 = vnegq_f32(v111);
    v113 = vtrn2q_s32(v111, vtrn1q_s32(v111, v112));
    v114 = vrev64q_s32(v111);
    v114.i32[0] = v112.i32[1];
    v114.i32[3] = v112.i32[2];
    v115 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v111, *(this + 6), 3), v114, *(this + 6), 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v111, v112, 8uLL), *(this + 96), 1), vextq_s8(v113, v113, 8uLL), COERCE_FLOAT(*(this + 6))));
    v116 = *(this + 19);
    v117 = _PromotedConst_36212;
    if (v116 < 0.999 || v107 == 3)
    {
      v118 = v108[33];
      v119 = v108[30];
      v120 = vnegq_f32(v119);
      v121 = vtrn2q_s32(v119, vtrn1q_s32(v119, v120));
      v122 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v119, v120, 8uLL), *v118.f32, 1), vextq_s8(v121, v121, 8uLL), v118.f32[0]);
      v123 = vrev64q_s32(v119);
      v123.i32[0] = v120.i32[1];
      v123.i32[3] = v120.i32[2];
      v124 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v119, v118, 3), v123, v118, 2), v122);
      if (v116 > 0.001 && v107 != 3)
      {
        v125 = vmulq_f32(v124, xmmword_1DE097CE0);
        v126 = vextq_s8(v125, v125, 8uLL);
        *v125.f32 = vadd_f32(*v125.f32, *v126.f32);
        v125.f32[0] = vaddv_f32(*v125.f32);
        v126.i64[0] = 0;
        v149 = v115;
        _simd_slerp_internal(v124, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v125, v126)), 0), _PromotedConst, _PromotedConst_36212), v108[26].f32[3]);
        v115 = v149;
        v117 = _PromotedConst_36212;
      }

      v127 = vnegq_f32(v115);
      v128 = vtrn2q_s32(v115, vtrn1q_s32(v115, v127));
      v129 = vrev64q_s32(v115);
      v129.i32[0] = v127.i32[1];
      v129.i32[3] = v127.i32[2];
      v115 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v115, v127, 8uLL), *v124.f32, 1), vextq_s8(v128, v128, 8uLL), v124.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v115, v124, 3), v129, v124, 2));
    }

    v130 = vmulq_f32(v115, xmmword_1DE097CE0);
    v131 = vextq_s8(v130, v130, 8uLL);
    *v130.f32 = vadd_f32(*v130.f32, *v131.f32);
    v130.f32[0] = vaddv_f32(*v130.f32);
    v131.i64[0] = 0;
    _simd_slerp_internal(v117, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v130, v131)), 0), vnegq_f32(v115), v115), v110);
  }

  if (vminv_u16(vmovn_s32(vceqq_f32(v132, *(this + 10)))))
  {
    goto LABEL_131;
  }

  *(this + 10) = v132;
  v133 = 1;
LABEL_132:
  if ((v6 | v4) & 1) != 0 || (v134 = atomic_load(this + 275), (v134))
  {
    atomic_store(0, this + 275);
    __dmb(0xBu);
    v135 = ausdk::AUElement::GetParameter(*this, 6u);
    v136 = ausdk::AUElement::GetParameter(*this, 7u);
    v137 = ausdk::AUElement::GetParameter(*this, 3u);
    v138 = __exp10f(v137 / 20.0);
    if (v138 < v135)
    {
      v138 = v135;
    }

    if (v136 < v138)
    {
      v138 = v136;
    }

    *(this + 17) = v138;
    v139 = atomic_load((*(this + 1) + 80));
    v140 = 1.0;
    if (v139 != 1 && (v139 || *(*this + 108) <= 1u))
    {
      v141 = atomic_load((*(this + 1) + 72));
      if (v141 != 5)
      {
        v142 = atomic_load((*(this + 1) + 80));
        if (v142 != 3)
        {
          v143 = ausdk::AUElement::GetParameter(*this, 2u);
          v144 = ausdk::AUElement::GetParameter(*this, 0x22u);
          v145 = AUSM::DistanceGain::calculateDistanceGain((this + 188), v143 * v144);
          AUSM::InputGeometry::clampDistanceGain(this, v145, *(this + 17));
        }
      }
    }

    *(this + 18) = v140;
    ++*(this + 69);
  }

  return v133;
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

void AU::SoundIsolation::CreateGraphModel(void *a1, uint64_t a2, double *a3)
{
  v177 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v163 = v4;
  [v4 setName:@"AUSoundIsolation_processing"];
  if (*a3 != 1)
  {
    if (*a3 != *(a2 + 28))
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_9146);
      }

      v26 = getAUSoundIsolationLog(void)::gLog;
      if (!os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v150 = *(a2 + 28);
      v151 = *a3;
      *buf = 136315906;
      *&buf[4] = "AUSoundIsolation_v2_GraphAdapter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 166;
      *&buf[18] = 1024;
      *&buf[20] = v150;
      *&buf[24] = 1024;
      *&buf[26] = v151;
      v7 = "%s:%i cannot process %u I/O channels with %u channel DSP";
      v8 = v26;
      v9 = 30;
      goto LABEL_100;
    }

    if (*(a3 + 5) != 1)
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_9146);
      }

      v10 = getAUSoundIsolationLog(void)::gLog;
      if (!os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v11 = *(a2 + 28);
      v12 = *a3;
      v13 = *(a3 + 5);
      *buf = 136316162;
      *&buf[4] = "AUSoundIsolation_v2_GraphAdapter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 170;
      *&buf[18] = 1024;
      *&buf[20] = v11;
      *&buf[24] = 1024;
      *&buf[26] = v12;
      *&buf[30] = 1024;
      LODWORD(v176) = v13;
      v7 = "%s:%i cannot process %u I/O channels with %u channel DSP and batch size %u";
      v8 = v10;
      v9 = 36;
      goto LABEL_100;
    }
  }

  if (*(a3 + 4) == 1)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_9146);
    }

    v5 = getAUSoundIsolationLog(void)::gLog;
    if (!os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v6 = *(a3 + 4);
    *buf = 136315650;
    *&buf[4] = "AUSoundIsolation_v2_GraphAdapter.mm";
    *&buf[12] = 1024;
    *&buf[14] = 175;
    *&buf[18] = 1024;
    *&buf[20] = v6;
    v7 = "%s:%i cannot process with DSP block size %u";
    v8 = v5;
    v9 = 24;
LABEL_100:
    _os_log_error_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
LABEL_24:
    *a1 = 0;
    goto LABEL_98;
  }

  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_9146);
  }

  v14 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a2 + 28);
    v16 = *a3;
    v17 = *(a3 + 5);
    *buf = 136316162;
    *&buf[4] = "AUSoundIsolation_v2_GraphAdapter.mm";
    *&buf[12] = 1024;
    *&buf[14] = 181;
    *&buf[18] = 1024;
    *&buf[20] = v15;
    *&buf[24] = 1024;
    *&buf[26] = v16;
    *&buf[30] = 1024;
    LODWORD(v176) = v17;
    _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, "%s:%i use %u I/O channels with %u channel DSP and batch size %u", buf, 0x24u);
  }

  v153 = AU::SoundIsolation::AddInput(v4, @"Input");
  v156 = objc_opt_new();
  [v156 setName:@"ProcessingInput"];
  [v4 addJack:v156];
  v18 = [v153 name];
  v19 = *(a2 + 16);
  *buf = *a2;
  *&buf[16] = v19;
  v176 = *(a2 + 32);
  v162 = a3;
  if ((buf[12] & 0x20) == 0)
  {
    v20 = AU::SoundIsolation::AddBox(v4, @"InputConverter", @"srlconverter", 1u, 1u);
    v21 = [v20 name];
    v22 = AU::SoundIsolation::AddWire(v4, v18, v21, buf, 1u);

    v23 = [v20 name];

    if ((buf[12] & 0x20) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = *&buf[28];
      if (!*&buf[28])
      {
        v25 = (v176 + 7) >> 3;
LABEL_27:
        *&buf[20] = 1;
        *&buf[24] = v25;
        *&buf[12] |= 0x20u;
        *&buf[16] = v25;

        v18 = v23;
        a3 = v162;
        v4 = v163;
        goto LABEL_28;
      }
    }

    v25 = *&buf[24] / v24;
    goto LABEL_27;
  }

LABEL_28:
  v27 = *buf;
  if (*buf == a3[1])
  {
    if (*(a3 + 4) == 1)
    {
      v33 = 1;
      goto LABEL_34;
    }

    v28 = AU::SoundIsolation::AddBox(v4, @"InputReblocker", @"reblocker", 1u, 1u);
    v34 = [v28 name];
    v35 = AU::SoundIsolation::AddWire(v163, v18, v34, buf, 1u);

    v36 = [v28 name];

    v18 = v36;
    v32 = v162;
  }

  else
  {
    v28 = AU::SoundIsolation::AddBox(v4, @"InputSRC", @"src", 1u, 1u);
    v29 = [v28 name];
    v30 = AU::SoundIsolation::AddWire(v163, v18, v29, buf, 1u);

    v31 = [v28 name];

    v32 = v162;
    *buf = v162[1];
    v18 = v31;
  }

  v33 = *(v32 + 4);

  v4 = v163;
LABEL_34:
  v37 = [v156 name];
  v38 = AU::SoundIsolation::AddWire(v4, v18, v37, buf, v33);

  v39 = v163;
  v152 = AU::SoundIsolation::AddOutput(v163);
  v155 = objc_opt_new();
  [v155 setName:@"ProcessingOutput"];
  v40 = v162;
  [v163 addJack:v155];
  v41 = [v152 name];
  v42 = *(a2 + 16);
  *buf = *a2;
  *&buf[16] = v42;
  v176 = *(a2 + 32);
  if ((buf[12] & 0x20) != 0)
  {
    goto LABEL_41;
  }

  v43 = AU::SoundIsolation::AddBox(v163, @"OutputConverter", @"srlconverter", 1u, 1u);
  v44 = [v43 name];
  v45 = AU::SoundIsolation::AddWire(v163, v44, v41, buf, 1u);

  v46 = [v43 name];

  if ((buf[12] & 0x20) != 0)
  {
    v47 = 1;
    goto LABEL_39;
  }

  v47 = *&buf[28];
  if (*&buf[28])
  {
LABEL_39:
    v48 = *&buf[24] / v47;
    goto LABEL_40;
  }

  v48 = (v176 + 7) >> 3;
LABEL_40:
  *&buf[20] = 1;
  *&buf[24] = v48;
  *&buf[12] |= 0x20u;
  *&buf[16] = v48;

  v41 = v46;
  v40 = v162;
  v39 = v163;
LABEL_41:
  v49 = *buf;
  if (*buf != v40[1])
  {
    v50 = AU::SoundIsolation::AddBox(v39, @"OutputSRC", @"src", 1u, 1u);
    v51 = [v50 name];
    v52 = AU::SoundIsolation::AddWire(v163, v51, v41, buf, 1u);

    v53 = [v50 name];

    v54 = v162;
    *buf = v162[1];
    v41 = v53;
LABEL_46:
    v55 = *(v54 + 4);

    v39 = v163;
    goto LABEL_47;
  }

  if (*(v40 + 4) != 1)
  {
    v50 = AU::SoundIsolation::AddBox(v39, @"OutputReblocker", @"reblocker", 1u, 1u);
    v56 = [v50 name];
    v57 = AU::SoundIsolation::AddWire(v163, v56, v41, buf, 1u);

    v58 = [v50 name];

    v41 = v58;
    v54 = v162;
    goto LABEL_46;
  }

  v55 = 1;
LABEL_47:
  v59 = [v155 name];
  v60 = AU::SoundIsolation::AddWire(v39, v59, v41, buf, v55);

  v61 = v162;
  v62 = *(a2 + 28);
  *buf = v162[1];
  *&buf[24] = 8;
  *&buf[28] = v62;
  v176 = 64;
  *&buf[8] = xmmword_1DE09C190;
  v168 = *buf;
  v169 = xmmword_1DE09BD50;
  v170 = 4;
  v171 = v62;
  v172 = 32;
  v165 = *buf;
  v166 = xmmword_1DE09BD50;
  v167 = xmmword_1DE09BD60;
  if (*(v162 + 56) == 1)
  {
    v174 = 0;
    v173 = *"xfuaverdlppa";
    v63 = AU::SoundIsolation::AddBox(v163, @"AUDereverb", &v173, 2u, 2u);
    v64 = AU::SoundIsolation::AddBox(v163, @"AUDereverbInputFFT", @"fft", 1u, 1u);
    v65 = AU::SoundIsolation::AddBox(v163, @"AUDereverbInputZero", @"constant", 0, 1u);
    v66 = AU::SoundIsolation::AddBox(v163, @"AUDereverbOutputIFFT", @"fft", 1u, 1u);
    v67 = AU::SoundIsolation::AddBox(v163, @"AUDereverbOutputDeadEnd", @"dead", 1u, 0);
    v68 = [v156 name];
    v69 = [v64 name];
    v70 = AU::SoundIsolation::AddWire(v163, v68, v69, &v168, *(v162 + 4));

    v71 = [v64 name];
    v72 = [v63 name];
    v73 = AU::SoundIsolation::AddWire(v163, v71, 0, v72, 0, buf, *(v162 + 4));

    v74 = [v65 name];
    v75 = [v63 name];
    v76 = AU::SoundIsolation::AddWire(v163, v74, 0, v75, 1, buf, *(v162 + 4));

    v77 = [v63 name];
    v78 = [v66 name];
    v79 = AU::SoundIsolation::AddWire(v163, v77, 0, v78, 0, buf, *(v162 + 4));

    v80 = [v63 name];
    v81 = [v67 name];
    v82 = AU::SoundIsolation::AddWire(v163, v80, 1, v81, 0, buf, *(v162 + 4));

    if (*(v162 + 64) == 1)
    {
      v83 = AU::SoundIsolation::AddProperty(v163, *(v162 + 15), 0);
      v84 = AU::SoundIsolation::AddPropertyConnection(v163, v83, v63, 0);
    }

    v154 = [v66 name];

    v61 = v162;
    v85 = v163;
  }

  else
  {
    v85 = v163;
    v154 = [v156 name];
  }

  v174 = 0;
  v173 = *"xfuatennlppa";
  if (*(v61 + 28) == 1)
  {
    v161 = AU::SoundIsolation::AddProperty(v85, *(v61 + 6), 0);
  }

  else
  {
    v161 = 0;
  }

  if (*(v61 + 36) == 1)
  {
    v159 = AU::SoundIsolation::AddProperty(v85, *(v61 + 8), 0);
  }

  else
  {
    v159 = 0;
  }

  if (*(v61 + 44) == 1)
  {
    v160 = AU::SoundIsolation::AddProperty(v85, *(v61 + 10), 0);
  }

  else
  {
    v160 = 0;
  }

  if (*(v61 + 52) == 1)
  {
    v86 = AU::SoundIsolation::AddProperty(v85, *(v61 + 12), 1);
  }

  else
  {
    v86 = 0;
  }

  if (*(v61 + 5) == 1 && (v87 = *(a2 + 28), v88 = v87 / *v61, v88 >= 2))
  {
    v89 = AU::SoundIsolation::AddBox(v85, @"AUNeuralNetInputSplit", @"split", 1u, v87 / *v61);
    v97 = [v89 name];
    v98 = AU::SoundIsolation::AddWire(v85, v154, v97, &v168, *(v61 + 4));

    v99 = AU::SoundIsolation::AddBox(v163, @"AUNeuralNetOutputJoin", @"join", v88, 1u);
    v100 = 0;
    do
    {
      v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AUNeuralNet (%u)", v100];
      v102 = AU::SoundIsolation::AddBox(v163, v101, &v173, 1u, 1u);
      v103 = [v89 name];
      v104 = [v102 name];
      v105 = AU::SoundIsolation::AddWire(v163, v103, v100, v104, 0, &v165, *(v162 + 4));

      v106 = [v102 name];
      v107 = [v99 name];
      v108 = AU::SoundIsolation::AddWire(v163, v106, 0, v107, v100, &v165, *(v162 + 4));

      if (v161)
      {
        v109 = AU::SoundIsolation::AddPropertyConnection(v163, v161, v102, 0);
      }

      if (v159)
      {
        v110 = AU::SoundIsolation::AddPropertyConnection(v163, v159, v102, 0xE71u);
      }

      if (v160)
      {
        v111 = AU::SoundIsolation::AddPropertyConnection(v163, v160, v102, 0x9C40u);
      }

      if (v86 && !v100)
      {
        v112 = AU::SoundIsolation::AddPropertyConnection(v163, v86, v102, 0xCu);
      }

      v100 = (v100 + 1);
    }

    while (v100 < v88);
    v96 = [v99 name];
  }

  else
  {
    v89 = AU::SoundIsolation::AddBox(v85, @"AUNeuralNet", &v173, 1u, 1u);
    v90 = [v89 name];
    v91 = AU::SoundIsolation::AddWire(v85, v154, v90, &v168, *(v61 + 4));

    if (v161)
    {
      v92 = AU::SoundIsolation::AddPropertyConnection(v163, v161, v89, 0);
    }

    if (v159)
    {
      v93 = AU::SoundIsolation::AddPropertyConnection(v163, v159, v89, 0xE71u);
    }

    if (v160)
    {
      v94 = AU::SoundIsolation::AddPropertyConnection(v163, v160, v89, 0x9C40u);
    }

    if (v86)
    {
      v95 = AU::SoundIsolation::AddPropertyConnection(v163, v86, v89, 0xCu);
    }

    v96 = [v89 name];
  }

  if (*(v162 + 68) == 1 && *(a2 + 28) >= 2u)
  {
    v174 = 0;
    v173 = *"xfuasondlppa";
    v113 = AU::SoundIsolation::AddBox(v163, @"AUDenoise", &v173, 2u, 2u);
    v114 = AU::SoundIsolation::AddBox(v163, @"AUDenoiseInputDelay", @"delay", 1u, 1u);
    v115 = AU::SoundIsolation::AddBox(v163, @"AUDenoiseInput0FFT", @"fft", 1u, 1u);
    v116 = AU::SoundIsolation::AddBox(v163, @"AUDenoiseInput1FFT", @"fft", 1u, 1u);
    v117 = AU::SoundIsolation::AddBox(v163, @"AUDenoiseOutputIFFT", @"fft", 1u, 1u);
    v118 = AU::SoundIsolation::AddBox(v163, @"AUDenoiseOutputDeadEnd", @"dead", 1u, 0);
    v119 = [v114 name];
    v120 = AU::SoundIsolation::AddWire(v163, v154, v119, &v168, *(v162 + 4));

    v121 = [v114 name];
    v122 = [v115 name];
    v123 = AU::SoundIsolation::AddWire(v163, v121, v122, &v168, *(v162 + 4));

    v124 = [v116 name];
    v125 = AU::SoundIsolation::AddWire(v163, v96, v124, &v168, *(v162 + 4));

    v126 = [v115 name];
    v127 = [v113 name];
    v128 = AU::SoundIsolation::AddWire(v163, v126, 0, v127, 0, buf, *(v162 + 4));

    v129 = [v116 name];
    v130 = [v113 name];
    v131 = AU::SoundIsolation::AddWire(v163, v129, 0, v130, 1, buf, *(v162 + 4));

    v132 = [v113 name];
    v133 = [v117 name];
    v134 = AU::SoundIsolation::AddWire(v163, v132, 0, v133, 0, buf, *(v162 + 4));

    v135 = [v113 name];
    v136 = [v118 name];
    v137 = AU::SoundIsolation::AddWire(v163, v135, 1, v136, 0, buf, *(v162 + 4));

    v138 = [v117 name];
    v139 = [v155 name];
    v140 = AU::SoundIsolation::AddWire(v163, v138, v139, &v168, *(v162 + 4));

    v141 = v162;
    if (*(v162 + 76) == 1)
    {
      v142 = AU::SoundIsolation::AddProperty(v163, *(v162 + 18), 0);
      v143 = AU::SoundIsolation::AddPropertyConnection(v163, v142, v113, 0);

      v141 = v162;
    }

    if (*(v141 + 84) == 1)
    {
      v144 = AU::SoundIsolation::AddProperty(v163, *(v141 + 20), 1);
      v145 = AU::SoundIsolation::AddPropertyConnection(v163, v144, v114, 0xCu);

      v141 = v162;
    }

    if (*(v141 + 92) == 1)
    {
      v146 = AU::SoundIsolation::AddParameter(v163, *(v141 + 22));
      v147 = AU::SoundIsolation::AddParameterConnection(v163, v146, v114, 0, 0);
    }
  }

  else
  {
    v148 = [v155 name];
    v149 = AU::SoundIsolation::AddWire(v163, v96, v148, &v168, *(v162 + 4));
  }

  v164 = 0;
  *a1 = v163;
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v164);

  v4 = v163;
LABEL_98:
}

id AU::SoundIsolation::AddInput(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  [v5 setName:v4];
  [v5 setDirection:0];
  [v3 addPort:v5];

  return v5;
}

id AU::SoundIsolation::AddBox(void *a1, void *a2, void *a3, unsigned int a4, unsigned int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = objc_opt_new();
  [v12 setName:v10];
  [v12 setClassName:v11];
  [v12 setNumberOfInputs:a4];
  [v12 setNumberOfOutputs:a5];
  [v9 addBox:v12];

  return v12;
}

id AU::SoundIsolation::AddWire(void *a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = objc_opt_new();
  [v12 setBoxName:v10 ofEndpoint:0];
  [v12 setBoxName:v11 ofEndpoint:1];
  v13 = *(a4 + 16);
  v15[0] = *a4;
  v15[1] = v13;
  v16 = *(a4 + 32);
  v17 = a5;
  [v12 setAudioStreamConfiguration:v15];
  [v9 addWire:v12];

  return v12;
}

id AU::SoundIsolation::AddOutput(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  [v2 setName:@"Output"];
  [v2 setDirection:1];
  [v1 addPort:v2];

  return v2;
}

id AU::SoundIsolation::AddBox(void *a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = objc_opt_new();
  [v11 setName:v10];
  [v11 setAudioComponentDescription:a3];
  [v11 setNumberOfInputs:a4];
  [v11 setNumberOfOutputs:a5];
  [v9 addBox:v11];

  return v11;
}

id AU::SoundIsolation::AddWire(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a4;
  v16 = objc_opt_new();
  [v16 setBoxName:v14 ofEndpoint:0];
  [v16 setPortIndex:a3 ofEndpoint:0];
  [v16 setBoxName:v15 ofEndpoint:1];
  [v16 setPortIndex:a5 ofEndpoint:1];
  v17 = *(a6 + 16);
  v19[0] = *a6;
  v19[1] = v17;
  v20 = *(a6 + 32);
  v21 = a7;
  [v16 setAudioStreamConfiguration:v19];
  [v13 addWire:v16];

  return v16;
}

id AU::SoundIsolation::AddProperty(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = objc_opt_new();
  [v6 setID:a2];
  [v6 setDirection:a3];
  [v5 addProperty:v6];

  return v6;
}

id AU::SoundIsolation::AddPropertyConnection(void *a1, void *a2, void *a3, unsigned int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setGraphPropertyID:{objc_msgSend(v8, "ID")}];
  v11 = [v9 name];
  [v10 setBoxName:v11];

  [v10 setBoxPropertyAddress:{a4, 0}];
  [v7 addPropertyConnection:v10];

  return v10;
}

id AU::SoundIsolation::AddParameter(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  [v4 setID:a2];
  [v4 setDirection:0];
  [v3 addParameter:v4];

  return v4;
}

id AU::SoundIsolation::AddParameterConnection(void *a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = objc_opt_new();
  [v12 setGraphParameterID:{objc_msgSend(v10, "ID")}];
  v13 = [v11 name];
  [v12 setBoxName:v13];

  [v12 setBoxParameterAddress:{a4 << 32, a5}];
  [v9 addParameterConnection:v12];

  return v12;
}

uint64_t ___Z22getAUSoundIsolationLogv_block_invoke_9252()
{
  getAUSoundIsolationLog(void)::gLog = os_log_create("com.apple.coreaudio", "AUSoundIsolation");

  return MEMORY[0x1EEE66BB8]();
}

void AU::SoundIsolation::CreateGraphModel(void *a1, uint64_t a2, unsigned int *a3)
{
  v6 = objc_opt_new();
  [v6 setName:@"AUSoundIsolation_blending"];
  v55 = AU::SoundIsolation::AddInput(v6, @"DryInput");
  v54 = AU::SoundIsolation::AddInput(v6, @"WetInput");
  v53 = AU::SoundIsolation::AddOutput(v6);
  v7 = AU::SoundIsolation::AddBox(v6, @"DryInputDelay", @"delay", 1u, 1u);
  v8 = AU::SoundIsolation::AddBox(v6, @"Mix", @"mix", 2u, 1u);
  v52 = a1;
  if ((*(a2 + 12) & 0x20) != 0)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    goto LABEL_3;
  }

  v9 = AU::SoundIsolation::AddBox(v6, @"DryInputConverter", @"srlconverter", 1u, 1u);
  v10 = AU::SoundIsolation::AddBox(v6, @"WetInputConverter", @"srlconverter", 1u, 1u);
  v11 = AU::SoundIsolation::AddBox(v6, @"OutputConverter", @"srlconverter", 1u, 1u);
  if ((*(a2 + 12) & 0x20) == 0)
  {
    v23 = *(a2 + 16);
    v57 = *a2;
    v58 = v23;
    v59 = *(a2 + 32);
    if ((BYTE12(v57) & 0x20) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = HIDWORD(v58);
      if (!HIDWORD(v58))
      {
        v25 = (v59 + 7) >> 3;
LABEL_10:
        *(&v58 + 1) = __PAIR64__(*(a2 + 28), v25);
        *&v58 = v25 | 0x100000000;
        HIDWORD(v57) |= 0x20u;
        v26 = [v55 name];
        v27 = [v9 name];
        v28 = AU::SoundIsolation::AddWire(v6, v26, v27, a2, 1u);

        v29 = [v54 name];
        v30 = [v10 name];
        v31 = AU::SoundIsolation::AddWire(v6, v29, v30, a2, 1u);

        v32 = [v9 name];
        v33 = [v7 name];
        v34 = AU::SoundIsolation::AddWire(v6, v32, v33, a2, 1u);

        v35 = [v7 name];
        v36 = [v8 name];
        v37 = AU::SoundIsolation::AddWire(v6, v35, 0, v36, 0, &v57, 1u);

        v38 = [v10 name];
        v39 = [v8 name];
        v40 = AU::SoundIsolation::AddWire(v6, v38, 0, v39, 1, &v57, 1u);

        v41 = [v8 name];
        v42 = [v11 name];
        v43 = AU::SoundIsolation::AddWire(v6, v41, v42, &v57, 1u);

        v21 = [v11 name];
        v22 = [v53 name];
        goto LABEL_11;
      }
    }

    v25 = DWORD2(v58) / v24;
    goto LABEL_10;
  }

LABEL_3:
  v12 = [v55 name];
  v13 = [v7 name];
  v14 = AU::SoundIsolation::AddWire(v6, v12, v13, a2, 1u);

  v15 = [v7 name];
  v16 = [v8 name];
  v17 = AU::SoundIsolation::AddWire(v6, v15, 0, v16, 0, a2, 1u);

  v18 = [v54 name];
  v19 = [v8 name];
  v20 = AU::SoundIsolation::AddWire(v6, v18, 0, v19, 1, a2, 1u);

  v21 = [v8 name];
  v22 = [v53 name];
LABEL_11:
  v44 = v22;
  v45 = AU::SoundIsolation::AddWire(v6, v21, v22, a2, 1u);

  v46 = AU::SoundIsolation::AddParameter(v6, *a3);
  v47 = AU::SoundIsolation::AddParameterConnection(v6, v46, v8, 1, 0);
  v48 = AU::SoundIsolation::AddParameter(v6, a3[2]);
  v49 = AU::SoundIsolation::AddParameterConnection(v6, v48, v8, 1, 1u);
  v50 = AU::SoundIsolation::AddParameter(v6, a3[1]);
  v51 = AU::SoundIsolation::AddParameterConnection(v6, v50, v7, 0, 0);
  v56 = 0;
  *v52 = v6;
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v56);
}

{
  v6 = objc_opt_new();
  [v6 setName:@"AUSoundIsolation_bypass"];
  v7 = AU::SoundIsolation::AddInput(v6, @"Input");
  v8 = AU::SoundIsolation::AddOutput(v6);
  v9 = AU::SoundIsolation::AddBox(v6, @"Delay", @"delay", 1u, 1u);
  v10 = [v7 name];
  v11 = [v9 name];
  v12 = AU::SoundIsolation::AddWire(v6, v10, v11, a2, 1u);

  v13 = [v9 name];
  v14 = [v8 name];
  v15 = AU::SoundIsolation::AddWire(v6, v13, v14, a2, 1u);

  v16 = AU::SoundIsolation::AddParameter(v6, *a3);
  v17 = AU::SoundIsolation::AddParameterConnection(v6, v16, v9, 0, 0);
  v18 = 0;
  *a1 = v6;
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v18);
}

float32x2_t BCMBypassedStereo::panWithSize(float *a1)
{
  {
    v47 = a1;
    a1 = v47;
    if (v41)
    {
      BCMBypassedStereo::panWithSize(BCMBypassedStereo::PanningFunctionPoint::Coordinates const&)::kPFPs = xmmword_1DE09D000;
      unk_1ECDA8B60 = xmmword_1DE09BBD0;
      xmmword_1ECDA8B70 = xmmword_1DE09D010;
      unk_1ECDA8B80 = xmmword_1DE09D020;
      xmmword_1ECDA8B90 = xmmword_1DE095680;
      qword_1ECDA8BA0 = 0xBF80000000000000;
      dword_1ECDA8BA8 = 1065353216;
      unk_1ECDA8BB4 = 0;
      unk_1ECDA8BAC = 0;
      dword_1ECDA8BBC = 0;
      xmmword_1ECDA8BC0 = xmmword_1DE09D030;
      unk_1ECDA8BD0 = xmmword_1DE09BD00;
      xmmword_1ECDA8BE0 = xmmword_1DE09D040;
      unk_1ECDA8BF0 = xmmword_1DE09BBD0;
      xmmword_1ECDA8C00 = xmmword_1DE09D050;
      unk_1ECDA8C10 = xmmword_1DE097CD0;
      xmmword_1ECDA8C20 = xmmword_1DE09D060;
      unk_1ECDA8C30 = xmmword_1DE09D070;
      xmmword_1ECDA8C40 = xmmword_1DE09D080;
      unk_1ECDA8C50 = xmmword_1DE09D090;
      xmmword_1ECDA8C60 = xmmword_1DE09D0A0;
      unk_1ECDA8C70 = xmmword_1DE09D0B0;
      xmmword_1ECDA8C80 = xmmword_1DE09D0C0;
      unk_1ECDA8C90 = xmmword_1DE09D0D0;
      xmmword_1ECDA8CA0 = xmmword_1DE09D0E0;
      unk_1ECDA8CB0 = xmmword_1DE09D060;
      xmmword_1ECDA8CC0 = xmmword_1DE09D0F0;
      unk_1ECDA8CD0 = xmmword_1DE09D100;
      xmmword_1ECDA8CE0 = xmmword_1DE09D090;
      unk_1ECDA8CF0 = xmmword_1DE095F80;
      xmmword_1ECDA8D00 = xmmword_1DE09D110;
      unk_1ECDA8D10 = xmmword_1DE095670;
      xmmword_1ECDA8D20 = xmmword_1DE09D010;
      unk_1ECDA8D30 = xmmword_1DE09D120;
      xmmword_1ECDA8D40 = xmmword_1DE09BD00;
      unk_1ECDA8D50 = xmmword_1DE09D130;
      xmmword_1ECDA8D60 = xmmword_1DE095680;
      unk_1ECDA8D70 = xmmword_1DE09D140;
      xmmword_1ECDA8D80 = xmmword_1DE09BD00;
      unk_1ECDA8D90 = xmmword_1DE09D150;
      xmmword_1ECDA8DA0 = xmmword_1DE095670;
      unk_1ECDA8DB0 = xmmword_1DE09D050;
      xmmword_1ECDA8DC0 = xmmword_1DE09C000;
      unk_1ECDA8DD0 = xmmword_1DE09D160;
      xmmword_1ECDA8DE0 = xmmword_1DE09D170;
      unk_1ECDA8DF0 = xmmword_1DE09D180;
      xmmword_1ECDA8E00 = xmmword_1DE09D190;
      unk_1ECDA8E10 = xmmword_1DE09D1A0;
      xmmword_1ECDA8E20 = xmmword_1DE09D1B0;
      unk_1ECDA8E30 = xmmword_1DE09D1C0;
      xmmword_1ECDA8E40 = xmmword_1DE09D1D0;
      unk_1ECDA8E50 = xmmword_1DE09D1E0;
      xmmword_1ECDA8E60 = xmmword_1DE09D1F0;
      unk_1ECDA8E70 = xmmword_1DE09D200;
      xmmword_1ECDA8E80 = xmmword_1DE09D210;
      unk_1ECDA8E90 = xmmword_1DE09D220;
      xmmword_1ECDA8EA0 = xmmword_1DE09D230;
      unk_1ECDA8EB0 = xmmword_1DE09D240;
      xmmword_1ECDA8EC0 = xmmword_1DE09D250;
      unk_1ECDA8ED0 = xmmword_1DE09D260;
      xmmword_1ECDA8EE0 = xmmword_1DE09D270;
      unk_1ECDA8EF0 = xmmword_1DE09D280;
      xmmword_1ECDA8F00 = xmmword_1DE09D290;
      unk_1ECDA8F10 = xmmword_1DE09D2A0;
      xmmword_1ECDA8F20 = xmmword_1DE09D2B0;
      unk_1ECDA8F30 = xmmword_1DE09D2C0;
      xmmword_1ECDA8F40 = xmmword_1DE09D2D0;
      unk_1ECDA8F50 = xmmword_1DE09D2E0;
      xmmword_1ECDA8F60 = xmmword_1DE09D2F0;
      xmmword_1ECDA8F70 = xmmword_1DE09D300;
      xmmword_1ECDA8F80 = xmmword_1DE09D310;
      xmmword_1ECDA8F90 = xmmword_1DE09D320;
      xmmword_1ECDA8FA0 = xmmword_1DE09D330;
      xmmword_1ECDA8FB0 = xmmword_1DE09D340;
      xmmword_1ECDA8FC0 = xmmword_1DE09D350;
      xmmword_1ECDA8FD0 = xmmword_1DE09D360;
      xmmword_1ECDA8FE0 = xmmword_1DE09D370;
      xmmword_1ECDA8FF0 = xmmword_1DE09D380;
      xmmword_1ECDA9000 = xmmword_1DE09D390;
      xmmword_1ECDA9010 = xmmword_1DE09D3A0;
      xmmword_1ECDA9020 = xmmword_1DE09D3B0;
      xmmword_1ECDA9030 = xmmword_1DE09D3C0;
      xmmword_1ECDA9040 = xmmword_1DE09D3D0;
      xmmword_1ECDA9050 = xmmword_1DE09D3E0;
      xmmword_1ECDA9060 = xmmword_1DE09D3F0;
      xmmword_1ECDA9070 = xmmword_1DE09D400;
      xmmword_1ECDA9080 = xmmword_1DE09D410;
      xmmword_1ECDA9090 = xmmword_1DE09D420;
      xmmword_1ECDA90A0 = xmmword_1DE09D430;
      xmmword_1ECDA90B0 = xmmword_1DE09D440;
      xmmword_1ECDA90C0 = xmmword_1DE09D450;
      xmmword_1ECDA90D0 = xmmword_1DE09D460;
      xmmword_1ECDA90E0 = xmmword_1DE09D470;
      xmmword_1ECDA90F0 = xmmword_1DE09D480;
      xmmword_1ECDA9100 = xmmword_1DE09D490;
      xmmword_1ECDA9110 = xmmword_1DE09D4A0;
      xmmword_1ECDA9120 = xmmword_1DE09D4B0;
      xmmword_1ECDA9130 = xmmword_1DE09D4C0;
      xmmword_1ECDA9140 = xmmword_1DE09D4D0;
      xmmword_1ECDA9150 = xmmword_1DE09D4E0;
      xmmword_1ECDA9160 = xmmword_1DE09D4F0;
      xmmword_1ECDA9170 = xmmword_1DE09D500;
      xmmword_1ECDA9180 = xmmword_1DE09D510;
      xmmword_1ECDA9190 = xmmword_1DE09D520;
      xmmword_1ECDA91A0 = xmmword_1DE09D530;
      xmmword_1ECDA91B0 = xmmword_1DE09D540;
      xmmword_1ECDA91C0 = xmmword_1DE09D550;
      xmmword_1ECDA91D0 = xmmword_1DE09D560;
      xmmword_1ECDA91E0 = xmmword_1DE09D570;
      xmmword_1ECDA91F0 = xmmword_1DE09D580;
      xmmword_1ECDA9200 = xmmword_1DE09D590;
      xmmword_1ECDA9210 = xmmword_1DE09D5A0;
      xmmword_1ECDA9220 = xmmword_1DE09D5B0;
      xmmword_1ECDA9230 = xmmword_1DE09D5C0;
      xmmword_1ECDA9240 = xmmword_1DE09D5D0;
      xmmword_1ECDA9250 = xmmword_1DE09D5E0;
      xmmword_1ECDA9260 = xmmword_1DE09D5F0;
      xmmword_1ECDA9270 = xmmword_1DE09D600;
      xmmword_1ECDA9280 = xmmword_1DE09D610;
      xmmword_1ECDA9290 = xmmword_1DE09D620;
      xmmword_1ECDA92A0 = xmmword_1DE09D630;
      xmmword_1ECDA92B0 = xmmword_1DE09D640;
      xmmword_1ECDA92C0 = xmmword_1DE09D4A0;
      xmmword_1ECDA92D0 = xmmword_1DE09D650;
      xmmword_1ECDA92E0 = xmmword_1DE09D660;
      xmmword_1ECDA92F0 = xmmword_1DE09D670;
      xmmword_1ECDA9300 = xmmword_1DE09D680;
      xmmword_1ECDA9310 = xmmword_1DE09D690;
      xmmword_1ECDA9320 = xmmword_1DE09D6A0;
      xmmword_1ECDA9330 = xmmword_1DE09D6B0;
      xmmword_1ECDA9340 = xmmword_1DE09D6C0;
      xmmword_1ECDA9350 = xmmword_1DE09D6D0;
      xmmword_1ECDA9360 = xmmword_1DE09D6E0;
      xmmword_1ECDA9370 = xmmword_1DE09D6F0;
      xmmword_1ECDA9380 = xmmword_1DE09D700;
      xmmword_1ECDA9390 = xmmword_1DE09D710;
      xmmword_1ECDA93A0 = xmmword_1DE09D720;
      xmmword_1ECDA93B0 = xmmword_1DE09D730;
      xmmword_1ECDA93C0 = xmmword_1DE09D740;
      xmmword_1ECDA93D0 = xmmword_1DE09D750;
      xmmword_1ECDA93E0 = xmmword_1DE09D760;
      xmmword_1ECDA93F0 = xmmword_1DE09D770;
      xmmword_1ECDA9400 = xmmword_1DE09D780;
      xmmword_1ECDA9410 = xmmword_1DE09D790;
      xmmword_1ECDA9420 = xmmword_1DE09D7A0;
      xmmword_1ECDA9430 = xmmword_1DE09D7B0;
      xmmword_1ECDA9440 = xmmword_1DE09D7C0;
      xmmword_1ECDA9450 = xmmword_1DE09D7D0;
      xmmword_1ECDA9460 = xmmword_1DE09D7E0;
      xmmword_1ECDA9470 = xmmword_1DE09D7F0;
      xmmword_1ECDA9480 = xmmword_1DE09D800;
      xmmword_1ECDA9490 = xmmword_1DE09D810;
      xmmword_1ECDA94A0 = xmmword_1DE09D820;
      xmmword_1ECDA94B0 = xmmword_1DE09D830;
      xmmword_1ECDA94C0 = xmmword_1DE09D840;
      xmmword_1ECDA94D0 = xmmword_1DE09D850;
      xmmword_1ECDA94E0 = xmmword_1DE09D860;
      xmmword_1ECDA94F0 = xmmword_1DE09D870;
      xmmword_1ECDA9500 = xmmword_1DE09D880;
      xmmword_1ECDA9510 = xmmword_1DE09D890;
      xmmword_1ECDA9520 = xmmword_1DE09D8A0;
      xmmword_1ECDA9530 = xmmword_1DE09D8B0;
      xmmword_1ECDA9540 = xmmword_1DE09D8C0;
      xmmword_1ECDA9550 = xmmword_1DE09D8D0;
      xmmword_1ECDA9560 = xmmword_1DE09D8E0;
      xmmword_1ECDA9570 = xmmword_1DE09D8F0;
      xmmword_1ECDA9580 = xmmword_1DE09D900;
      xmmword_1ECDA9590 = xmmword_1DE09D910;
      xmmword_1ECDA95A0 = xmmword_1DE09D920;
      xmmword_1ECDA95B0 = xmmword_1DE09D930;
      xmmword_1ECDA95C0 = xmmword_1DE09D940;
      xmmword_1ECDA95D0 = xmmword_1DE09BBD0;
      xmmword_1ECDA95E0 = xmmword_1DE09D950;
      xmmword_1ECDA95F0 = xmmword_1DE09D960;
      xmmword_1ECDA9600 = xmmword_1DE09D970;
      xmmword_1ECDA9610 = xmmword_1DE09D980;
      xmmword_1ECDA9620 = xmmword_1DE09D7F0;
      xmmword_1ECDA9630 = xmmword_1DE09D990;
      xmmword_1ECDA9640 = xmmword_1DE09D9A0;
      xmmword_1ECDA9650 = xmmword_1DE09D9B0;
      xmmword_1ECDA9660 = xmmword_1DE09D9C0;
      xmmword_1ECDA9670 = xmmword_1DE09D9D0;
      xmmword_1ECDA9680 = xmmword_1DE09D9E0;
      xmmword_1ECDA9690 = xmmword_1DE09D9F0;
      xmmword_1ECDA96A0 = xmmword_1DE09DA00;
      xmmword_1ECDA96B0 = xmmword_1DE09DA10;
      xmmword_1ECDA96C0 = xmmword_1DE09DA20;
      xmmword_1ECDA96D0 = xmmword_1DE09D9A0;
      xmmword_1ECDA96E0 = xmmword_1DE09DA30;
      xmmword_1ECDA96F0 = xmmword_1DE09DA40;
      xmmword_1ECDA9700 = xmmword_1DE09DA50;
      xmmword_1ECDA9710 = xmmword_1DE09DA60;
      xmmword_1ECDA9720 = xmmword_1DE09DA70;
      xmmword_1ECDA9730 = xmmword_1DE09DA80;
      xmmword_1ECDA9740 = xmmword_1DE09D910;
      xmmword_1ECDA9750 = xmmword_1DE09DA90;
      xmmword_1ECDA9760 = xmmword_1DE09DAA0;
      xmmword_1ECDA9770 = xmmword_1DE09DAB0;
      xmmword_1ECDA9780 = xmmword_1DE097D00;
      xmmword_1ECDA9790 = xmmword_1DE09DAC0;
      xmmword_1ECDA97A0 = xmmword_1DE09DAD0;
      xmmword_1ECDA97B0 = xmmword_1DE09DAE0;
      xmmword_1ECDA97C0 = xmmword_1DE09DAF0;
      xmmword_1ECDA97D0 = xmmword_1DE09D7F0;
      __asm { FMOV            V0.4S, #1.0 }

      xmmword_1ECDA97E0 = _Q0;
      qword_1ECDA97F0 = 0x3FBD536F3FA8BCA5;
      a1 = v47;
    }
  }

  v1 = 0;
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1 > 0.75;
  v6 = *a1 <= 0.75 && v2 > 0.25;
  v7 = a1[2];
  v8 = a1[3];
  v9.i64[0] = 0x80000000800000;
  v9.i64[1] = 0x80000000800000;
  v10 = vnegq_f32(v9);
  v11 = &BCMBypassedStereo::panWithSize(BCMBypassedStereo::PanningFunctionPoint::Coordinates const&)::kPFPs;
  v12 = 3240;
  do
  {
    v13 = v11->f32[0];
    v14 = v2 <= 0.25;
    if (v11->f32[0] != 0.0)
    {
      v14 = v2 <= 0.5;
      if (v13 != 0.25)
      {
        v14 = v6;
        if (v13 != 0.5)
        {
          v14 = v2 > 0.5;
          if (v13 != 0.75)
          {
            v14 = v4;
            if (v13 != 1.0)
            {
              __assert_rtn("isCloseTo", "BCMBypassedStereoPanner.cpp", 35, "false");
            }
          }
        }
      }
    }

    v15 = v11->f32[1];
    v16 = v3 <= 0.5;
    if (v15 != 0.0)
    {
      if (v15 == 0.5)
      {
        v16 = 1;
      }

      else
      {
        v16 = v3 > 0.5;
        if (v15 != 1.0)
        {
          __assert_rtn("isCloseTo", "BCMBypassedStereoPanner.cpp", 40, "false");
        }
      }
    }

    v17 = v11->f32[2];
    v18 = v7 <= 0.0;
    if (v17 != -1.0)
    {
      if (v17 == 0.0)
      {
        v18 = 1;
      }

      else
      {
        v18 = v7 > 0.0;
        if (v17 != 1.0)
        {
          __assert_rtn("isCloseTo", "BCMBypassedStereoPanner.cpp", 45, "false");
        }
      }
    }

    v19 = v11->f32[3];
    v20 = v8 <= 0.0;
    if (v19 != -1.0)
    {
      if (v19 == 0.0)
      {
        v20 = 1;
      }

      else
      {
        v20 = v8 > 0.0;
        if (v19 != 1.0)
        {
          __assert_rtn("isCloseTo", "BCMBypassedStereoPanner.cpp", 50, "false");
        }
      }
    }

    if (v14 && v16 && v18 && v20)
    {
      v48[v1++] = v11;
      v10 = vbslq_s8(vcgtq_f32(v10, *v11), *v11, v10);
      v9 = vbslq_s8(vcgtq_f32(*v11, v9), *v11, v9);
    }

    v11 = (v11 + 24);
    v12 -= 24;
  }

  while (v12);
  if (v1 != 16)
  {
    __assert_rtn("panWithSize", "BCMBypassedStereoPanner.cpp", 368, "numSurroundingPoints == 16");
  }

  v21 = 0;
  v22 = (v2 - v10.f32[0]) / (v9.f32[0] - v10.f32[0]);
  v23 = (v3 - v10.f32[1]) / (v9.f32[1] - v10.f32[1]);
  v24 = (v7 - v10.f32[2]) / (v9.f32[2] - v10.f32[2]);
  v25 = (v8 - v10.f32[3]) / (v9.f32[3] - v10.f32[3]);
  v26 = 0;
  do
  {
    v27 = v48[v21];
    v28 = 0.5;
    v29 = 0.5;
    if ((v9.f32[0] - v10.f32[0]) > 0.0)
    {
      if (v27->f32[0] == v10.f32[0])
      {
        v30 = 1.0 - v22;
      }

      else
      {
        v30 = v22;
      }

      if (v30 <= 1.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 1.0;
      }

      if (v30 >= 0.0)
      {
        v29 = v31;
      }

      else
      {
        v29 = 0.0;
      }
    }

    if ((v9.f32[1] - v10.f32[1]) > 0.0)
    {
      if (v27->f32[1] == v10.f32[1])
      {
        v32 = 1.0 - v23;
      }

      else
      {
        v32 = v23;
      }

      if (v32 <= 1.0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 1.0;
      }

      if (v32 >= 0.0)
      {
        v28 = v33;
      }

      else
      {
        v28 = 0.0;
      }
    }

    v34 = 0.5;
    v35 = 0.5;
    if ((v9.f32[2] - v10.f32[2]) > 0.0)
    {
      if (v27[1].f32[0] == v10.f32[2])
      {
        v36 = 1.0 - v24;
      }

      else
      {
        v36 = v24;
      }

      if (v36 <= 1.0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 1.0;
      }

      if (v36 >= 0.0)
      {
        v35 = v37;
      }

      else
      {
        v35 = 0.0;
      }
    }

    if ((v9.f32[3] - v10.f32[3]) > 0.0)
    {
      if (v27[1].f32[1] == v10.f32[3])
      {
        v38 = 1.0 - v25;
      }

      else
      {
        v38 = v25;
      }

      if (v38 <= 1.0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 1.0;
      }

      if (v38 >= 0.0)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0.0;
      }
    }

    v26 = vmla_n_f32(v26, vmul_f32(v27[2], v27[2]), ((v29 * v28) * v35) * v34);
    ++v21;
  }

  while (v21 != 16);
  return vsqrt_f32(v26);
}

int *VADLCG::AddToBuffer(int *this, float *a2, unsigned int a3, float a4)
{
  v4 = this[2];
  if (v4)
  {
    if (!a3)
    {
      return this;
    }

    v5 = *this;
    v6 = this[1];
    v7 = this[3];
    v8 = a3;
    do
    {
      v7 = (v6 + v7 * v5) % v4;
      *a2 = (((2.0 / v4) * v7) + -1.0) + *a2;
      ++a2;
      --v8;
    }

    while (v8);
  }

  else
  {
    if (!a3)
    {
      return this;
    }

    v9 = *this;
    v10 = this[1];
    v11 = a3;
    v7 = this[3];
    do
    {
      v7 = v10 + v7 * v9;
      *a2 = ((v7 * 4.6566e-10) + -1.0) + *a2;
      ++a2;
      --v11;
    }

    while (v11);
  }

  this[3] = v7;
  return this;
}

os_log_t ___Z12getAUSMV2Logv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUSpatialMixerV2");
  getAUSMV2Log(void)::gLog = result;
  return result;
}

void AmbisonicsStereo::Process(AmbisonicsStereo *this, float *a2, float **a3, int a4, int a5, float a6, float a7, float a8)
{
  v13 = *a3;
  if (a5 == 1)
  {
    v14 = a3[1];
  }

  else
  {
    v14 = (v13 + 4);
  }

  v15 = a6 * 3.14159265 / 180.0;
  if (vabds_f32(*(this + 4), v15) > 1.57079633)
  {
    *(this + 4) = v15;
  }

  v16 = sinf(v15);
  v18 = *(this + 5);
  v17 = *(this + 6);
  if (a4)
  {
    v19 = 0;
    v20 = v16 * 0.5;
    do
    {
      v21 = *a2++;
      *(v13 + v19 * 4) = *(v13 + v19 * 4) + ((0.70711 - v18) * (v17 * v21));
      v14[v19] = ((v18 + 0.70711) * (v17 * v21)) + v14[v19];
      v18 = v18 + ((v20 - v18) * 0.002);
      v17 = v17 + ((a8 - v17) * 0.002);
      v19 += a5;
      --a4;
    }

    while (a4);
  }

  *(this + 5) = v18;
  *(this + 6) = v17;
}

void AmbisonicsQuad::Process(float32x2_t *this, float *a2, float **a3, int a4, int a5, float32x2_t a6, float32_t a7, float a8)
{
  v13 = *a3;
  if (a5 == 1)
  {
    v14 = a3[1];
    v15 = a3[2];
    v16 = a3[3];
  }

  else
  {
    v14 = v13 + 1;
    v15 = v13 + 2;
    v16 = v13 + 3;
  }

  a6.f32[1] = a7;
  v17 = vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_f32(a6), vdupq_n_s64(0x400921FB54442D18uLL)), vdupq_n_s64(0x4066800000000000uLL)));
  v18 = this[5].u8[4];
  v19 = vabd_f32(this[2], v17);
  v20 = vcgt_f32(vdup_n_s32(0x3C8EFA35u), v19);
  v21 = (v18 ^ 1) & v20.i32[0] & v20.i32[1];
  if (v21 == 1)
  {
    this[2] = v17;
  }

  if (v19.f32[0] > 1.57079633)
  {
    this[2].i32[0] = v17.i32[0];
  }

  v65 = v17;
  this[5].i8[4] = 0;
  v22 = this[3].f32[0];
  v23 = this[3].f32[1];
  v24 = this[4].f32[0];
  v25 = this[4].f32[1];
  v26 = this[5].f32[0];
  v27 = this[1];
  if (v27)
  {
    (*(**&v27 + 392))(v68);
    v28 = v68[0];
    v29 = v28;
    if (v21)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v29 = 44100.0;
    if (v21)
    {
LABEL_10:
      if (a4)
      {
        v30 = 0;
        do
        {
          v31 = *a2++;
          v32 = v22 * v31;
          v13[v30] = v13[v30] + (v23 * (v22 * v31));
          v14[v30] = v14[v30] + (v24 * (v22 * v31));
          v15[v30] = v15[v30] + (v25 * (v22 * v31));
          v22 = v22 + ((a8 - v22) * 0.002);
          v16[v30] = v16[v30] + (v26 * v32);
          v30 += a5;
          --a4;
        }

        while (a4);
      }

      goto LABEL_30;
    }
  }

  if (v18)
  {
    if (a4)
    {
      v33 = 0;
      v34 = 4 * a5;
      v64 = vdup_n_s32(0x3B03126Fu);
      do
      {
        --a4;
        v35 = *a2++;
        v36 = v22 * v35;
        v22 = v22 + ((a8 - v22) * 0.002);
        v37 = vmla_f32(this[2], v64, vsub_f32(v65, this[2]));
        v67 = v37.f32[1];
        this[2] = v37;
        v38 = __sincosf_stret(v37.f32[0]);
        v39 = cosf(v67);
        v40 = v38.__cosval * v39;
        v41 = -(v38.__sinval * v39);
        v42 = (v40 * 0.35355) + 0.5;
        v23 = v42 + (v41 * 0.35355);
        v24 = v42 + (v41 * -0.35355);
        v43 = (v40 * -0.35355) + 0.5;
        *(v13 + v33) = *(v13 + v33) + (v23 * v36);
        *(v14 + v33) = *(v14 + v33) + (v24 * v36);
        v25 = v43 + (v41 * 0.35355);
        v26 = v43 + (v41 * -0.35355);
        *(v15 + v33) = *(v15 + v33) + (v25 * v36);
        *(v16 + v33) = *(v16 + v33) + (v26 * v36);
        v33 += v34;
      }

      while (a4);
    }
  }

  else
  {
    v66 = a8;
    v44 = 1.0 / v29;
    v47 = __sincosf_stret(v65.f32[0]);
    cosval = v47.__cosval;
    LODWORD(v45) = *&v47;
    v48 = cosf(v65.f32[1]);
    v49 = a4 * 157.079633 * v44;
    v50 = this[2].f32[0];
    v51 = v50;
    v52 = (v50 - v65.f32[0]);
    if (v49 <= v52)
    {
      v52 = a4 * 157.079633 * v44;
    }

    v53 = v51 - v52;
    if (v49 > (v65.f32[0] - v50))
    {
      v49 = (v65.f32[0] - v50);
    }

    v54 = v49 + v51;
    if (v50 >= v65.f32[0])
    {
      v54 = v53;
    }

    v55 = v54;
    this[2].f32[0] = v55;
    if (a4)
    {
      v56 = 0;
      v57 = -(v45 * v48);
      v58 = ((cosval * v48) * 0.35355) + 0.5;
      v59 = ((cosval * v48) * -0.35355) + 0.5;
      v60 = v59 + (v57 * 0.35355);
      v61 = v59 + (v57 * -0.35355);
      do
      {
        v62 = *a2++;
        v63 = v22 * v62;
        v22 = v22 + ((v66 - v22) * 0.002);
        v23 = v23 + (((v58 + (v57 * 0.35355)) - v23) * 0.002);
        v24 = v24 + (((v58 + (v57 * -0.35355)) - v24) * 0.002);
        v13[v56] = v13[v56] + (v23 * v63);
        v25 = v25 + ((v60 - v25) * 0.002);
        v14[v56] = v14[v56] + (v24 * v63);
        v15[v56] = v15[v56] + (v25 * v63);
        v26 = v26 + ((v61 - v26) * 0.002);
        v16[v56] = v16[v56] + (v26 * v63);
        v56 += a5;
        --a4;
      }

      while (a4);
    }
  }

  this[3].f32[1] = v23;
  this[4].f32[0] = v24;
  this[4].f32[1] = v25;
  this[5].f32[0] = v26;
LABEL_30:
  this[3].f32[0] = v22;
}

void Ambisonics5_1::Process(float32x2_t *this, float *a2, float **a3, int a4, int a5, float32x2_t a6, float32_t a7, float a8)
{
  v12 = *a3;
  if (a5 == 1)
  {
    v13 = a3[1];
    v14 = a3[2];
    v15 = a3[3];
    v16 = a3[4];
  }

  else
  {
    v13 = v12 + 1;
    v14 = v12 + 2;
    v15 = v12 + 3;
    v16 = v12 + 4;
  }

  a6.f32[1] = a7;
  v17 = vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_f32(a6), vdupq_n_s64(0x400921FB54442D18uLL)), vdupq_n_s64(0x4066800000000000uLL)));
  v18 = this[6].u8[0];
  v19 = vabd_f32(this[2], v17);
  v20 = vcgt_f32(vdup_n_s32(0x3C8EFA35u), v19);
  v21 = (v18 ^ 1) & v20.i32[0] & v20.i32[1];
  if (v21 == 1)
  {
    this[2] = v17;
  }

  if (v19.f32[0] > 1.57079633)
  {
    this[2].i32[0] = v17.i32[0];
  }

  v67 = v17;
  this[6].i8[0] = 0;
  v22 = this[3].f32[0];
  v23 = this[3].f32[1];
  v24 = this[4].f32[0];
  v25 = this[4].f32[1];
  v27 = this[5].f32[0];
  v26 = this[5].f32[1];
  v28 = this[1];
  if (v28)
  {
    (*(**&v28 + 392))(v70);
    v29 = v70[0];
    v30 = v29;
    if (v21)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v30 = 44100.0;
    if (v21)
    {
LABEL_10:
      if (a4)
      {
        v31 = 0;
        do
        {
          v32 = *a2++;
          v33 = v22 * v32;
          v12[v31] = v12[v31] + (v23 * (v22 * v32));
          v16[v31] = v16[v31] + (v24 * (v22 * v32));
          v13[v31] = v13[v31] + (v25 * (v22 * v32));
          v14[v31] = v14[v31] + (v27 * (v22 * v32));
          v22 = v22 + ((a8 - v22) * 0.002);
          v15[v31] = v15[v31] + (v26 * v33);
          v31 += a5;
          --a4;
        }

        while (a4);
      }

      goto LABEL_30;
    }
  }

  if (v18)
  {
    if (a4)
    {
      v34 = 0;
      v66 = vdup_n_s32(0x3C23D70Au);
      do
      {
        v35 = *a2++;
        --a4;
        v36 = vmla_f32(this[2], v66, vsub_f32(v67, this[2]));
        v69 = v36.f32[1];
        this[2] = v36;
        v37 = __sincosf_stret(v36.f32[0]);
        v38 = cosf(v69);
        v39 = v37.__cosval * v38;
        v40 = -(v37.__sinval * v38);
        v41 = (v39 * 0.35355) + 0.5;
        v23 = v41 + (v40 * 0.35355);
        v24 = ((v39 * 0.5) + 0.5) * 0.2;
        v25 = v41 + (v40 * -0.35355);
        v12[v34] = v12[v34] + (v23 * (v22 * v35));
        v42 = (v39 * -0.35355) + 0.5;
        v16[v34] = v16[v34] + (v24 * (v22 * v35));
        v13[v34] = v13[v34] + (v25 * (v22 * v35));
        v27 = v42 + (v40 * 0.35355);
        v26 = v42 + (v40 * -0.35355);
        v14[v34] = v14[v34] + (v27 * (v22 * v35));
        v15[v34] = v15[v34] + (v26 * (v22 * v35));
        v34 += a5;
      }

      while (a4);
    }
  }

  else
  {
    v43 = 1.0 / v30;
    v44 = __sincosf_stret(v67.f32[0]);
    v45 = cosf(v67.f32[1]);
    v46 = a4 * 157.079633 * v43;
    v47 = this[2].f32[0];
    v48 = v47;
    v49 = (v47 - v67.f32[0]);
    if (v46 <= v49)
    {
      v49 = a4 * 157.079633 * v43;
    }

    v50 = v48 - v49;
    if (v46 > (v67.f32[0] - v47))
    {
      v46 = (v67.f32[0] - v47);
    }

    v51 = v46 + v48;
    if (v47 >= v67.f32[0])
    {
      v51 = v50;
    }

    v52 = v51;
    this[2].f32[0] = v52;
    if (a4)
    {
      v53 = 0;
      v54 = v44.__cosval * v45;
      v55 = -(v44.__sinval * v45);
      v56 = ((v44.__cosval * v45) * 0.35355) + 0.5;
      v57 = v56 + (v55 * 0.35355);
      v58 = (v54 * 0.5) + 0.5;
      v59 = (v54 * -0.35355) + 0.5;
      v60 = v56 + (v55 * -0.35355);
      v61 = v59 + (v55 * 0.35355);
      v62 = v59 + (v55 * -0.35355);
      v63 = v58 * 0.2;
      do
      {
        v64 = *a2++;
        v65 = v22 * v64;
        v22 = v22 + ((a8 - v22) * 0.002);
        v23 = v23 + ((v57 - v23) * 0.01);
        v24 = v24 + ((v63 - v24) * 0.01);
        v25 = v25 + ((v60 - v25) * 0.01);
        v12[v53] = v12[v53] + (v23 * v65);
        v16[v53] = v16[v53] + (v24 * v65);
        v27 = v27 + ((v61 - v27) * 0.01);
        v13[v53] = v13[v53] + (v25 * v65);
        v14[v53] = v14[v53] + (v27 * v65);
        v26 = v26 + ((v62 - v26) * 0.01);
        v15[v53] = v15[v53] + (v26 * v65);
        v53 += a5;
        --a4;
      }

      while (a4);
    }
  }

  this[3].f32[1] = v23;
  this[4].f32[0] = v24;
  this[4].f32[1] = v25;
  this[5].f32[0] = v27;
  this[5].f32[1] = v26;
LABEL_30:
  this[3].f32[0] = v22;
}

void AmbisonicsGeneral::Process(AmbisonicsGeneral *this, float *a2, float **a3, unsigned int a4, float a5, float a6, float a7)
{
  v12 = *(this + 20);
  v13 = *(v12 + 8);
  v14 = a5 * 3.14159265 / 180.0;
  if (*(this + 152))
  {
    *(this + 152) = 0;
LABEL_3:
    v15 = __sincosf_stret(v14);
    if (v13 >= 1)
    {
      v16 = 0;
      v17 = v12 + 12;
      v18 = this + 20;
      do
      {
        v19 = __sincos_stret(*(v17 + 20 * v16 + 8) * 0.0174532925);
        v20 = *&v18[4 * v16];
        if (a4)
        {
          v21 = v19.__cosval * 0.5;
          v22 = v19.__sinval * 0.5;
          v23 = (((((v21 * v15.__cosval) + 0.5) + (v22 * v15.__sinval)) * a7) - v20) / a4;
          v24 = a3[v16];
          v25 = a4;
          v26 = a2;
          do
          {
            v27 = *v26++;
            v20 = v23 + v20;
            *v24 = *v24 + (v20 * v27);
            ++v24;
            --v25;
          }

          while (v25);
        }

        *&v18[4 * v16++] = v20;
      }

      while (v16 != v13);
    }

    *(this + 4) = v14;
    goto LABEL_10;
  }

  v28 = *(this + 4);
  v29 = *(this + 37);
  *(this + 152) = 0;
  if (v29 != a7 || vabds_f32(v28, v14) >= 0.017453)
  {
    goto LABEL_3;
  }

  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      if (a4)
      {
        v31 = *(this + i + 5);
        v32 = a3[i];
        v33 = a2;
        v34 = a4;
        do
        {
          v35 = *v33++;
          *v32 = *v32 + (v31 * v35);
          ++v32;
          --v34;
        }

        while (v34);
      }
    }
  }

LABEL_10:
  *(this + 37) = a7;
}

void AmbisonicsGeneral3D::Process(float32x2_t *this, float *a2, float **a3, unsigned int a4, float32x2_t a5, float32_t a6, float32_t a7)
{
  v11 = this[20];
  a5.f32[1] = a6;
  v12 = *(*&v11 + 8);
  v13 = vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_f32(a5), vdupq_n_s64(0x400921FB54442D18uLL)), vdupq_n_s64(0x4066800000000000uLL)));
  if (this[19].i8[4])
  {
    this[19].i8[4] = 0;
LABEL_3:
    v42 = a7;
    v41 = v13;
    v14 = __sincosf_stret(v13.f32[0]);
    v15 = __sincosf_stret(v41.f32[1]);
    if (v12 >= 1)
    {
      v16 = 0;
      v17 = *&v11 + 12;
      v18 = this + 3;
      do
      {
        v19 = v17 + 20 * v16;
        v20 = *(v19 + 12) * 0.0174532925;
        v21 = __sincos_stret(*(v19 + 8) * 0.0174532925);
        v22 = __sincos_stret(v20);
        v23 = v18->f32[v16];
        if (a4)
        {
          v24 = v21.__cosval * 0.5 * v22.__cosval;
          v25 = v21.__sinval * 0.5 * v22.__cosval;
          v26 = v22.__sinval * 0.5;
          v27 = ((((((v24 * (v14.__cosval * v15.__cosval)) + 0.5) + (v25 * (v14.__sinval * v15.__cosval))) + (v26 * v15.__sinval)) * v42) - v23) / a4;
          v28 = a3[v16];
          v29 = a4;
          v30 = a2;
          do
          {
            v31 = *v30++;
            v23 = v27 + v23;
            *v28 = *v28 + (v23 * v31);
            ++v28;
            --v29;
          }

          while (v29);
        }

        v18->f32[v16++] = v23;
      }

      while (v16 != v12);
    }

    this[2].i32[0] = v41.i32[0];
    a7 = v42;
    goto LABEL_10;
  }

  v32 = this[19].f32[0];
  v33 = this[2];
  this[19].i8[4] = 0;
  if (v32 != a7)
  {
    goto LABEL_3;
  }

  v34 = vcgt_f32(vdup_n_s32(0x3C8EFA35u), vabd_f32(v33, v13));
  if ((v34.i8[0] & 1) == 0 || (v34.i8[4] & 1) == 0)
  {
    goto LABEL_3;
  }

  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if (a4)
      {
        v36 = this[3].f32[i];
        v37 = a3[i];
        v38 = a2;
        v39 = a4;
        do
        {
          v40 = *v38++;
          *v37 = *v37 + (v36 * v40);
          ++v37;
          --v39;
        }

        while (v39);
      }
    }
  }

LABEL_10:
  this[19].f32[0] = a7;
}

uint64_t SpatialProbabilityBase::SpatialProbabilityBase(uint64_t a1, unsigned int a2, int a3, int a4, int a5, float a6, float a7, float a8, float a9, float a10, float a11)
{
  *a1 = &unk_1F5939D00;
  *(a1 + 8) = a2;
  *(a1 + 16) = xmmword_1DE09C160;
  *(a1 + 32) = xmmword_1DE09C160;
  *(a1 + 48) = a3;
  *(a1 + 52) = a6;
  *(a1 + 56) = a7;
  std::vector<float>::vector[abi:ne200100]((a1 + 64), a2);
  *(a1 + 88) = a5;
  std::vector<float>::vector[abi:ne200100]((a1 + 96), *(a1 + 8));
  std::vector<float>::vector[abi:ne200100]((a1 + 120), *(a1 + 8));
  std::vector<float>::vector[abi:ne200100]((a1 + 144), *(a1 + 8));
  std::vector<float>::vector[abi:ne200100]((a1 + 168), *(a1 + 8));
  std::vector<float>::vector[abi:ne200100]((a1 + 192), *(a1 + 8));
  std::vector<float>::vector[abi:ne200100]((a1 + 216), *(a1 + 8));
  std::vector<float>::vector[abi:ne200100]((a1 + 240), *(a1 + 8));
  *(a1 + 264) = a4;
  *(a1 + 268) = 0;
  *(a1 + 272) = 0;
  std::vector<float>::vector[abi:ne200100]((a1 + 280), *(a1 + 8));
  std::vector<float>::vector[abi:ne200100]((a1 + 304), *(a1 + 8));
  std::vector<float>::vector[abi:ne200100]((a1 + 328), *(a1 + 8));
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<float>::vector[abi:ne200100]((a1 + 368), *(a1 + 8));
  *(a1 + 392) = xmmword_1DE095670;
  *(a1 + 408) = 1092616192;
  std::vector<float>::vector[abi:ne200100]((a1 + 416), *(a1 + 8));
  SpatialProbabilityBase::SetPriorProbabilities(a1, a8, a9);
  *(a1 + 392) = a10;
  *(a1 + 396) = a11;
  return a1;
}

void sub_1DDDD8DA8(_Unwind_Exception *exception_object)
{
  v3 = v1[52];
  if (v3)
  {
    v1[53] = v3;
    operator delete(v3);
  }

  v4 = v1[46];
  if (v4)
  {
    v1[47] = v4;
    operator delete(v4);
  }

  v5 = v1[41];
  if (v5)
  {
    v1[42] = v5;
    operator delete(v5);
  }

  v6 = v1[38];
  if (v6)
  {
    v1[39] = v6;
    operator delete(v6);
  }

  v7 = v1[35];
  if (v7)
  {
    v1[36] = v7;
    operator delete(v7);
  }

  v8 = v1[30];
  if (v8)
  {
    v1[31] = v8;
    operator delete(v8);
  }

  v9 = v1[27];
  if (v9)
  {
    v1[28] = v9;
    operator delete(v9);
  }

  v10 = v1[24];
  if (v10)
  {
    v1[25] = v10;
    operator delete(v10);
  }

  v11 = v1[21];
  if (v11)
  {
    v1[22] = v11;
    operator delete(v11);
  }

  v12 = v1[18];
  if (v12)
  {
    v1[19] = v12;
    operator delete(v12);
  }

  v13 = v1[15];
  if (v13)
  {
    v1[16] = v13;
    operator delete(v13);
  }

  v14 = v1[12];
  if (v14)
  {
    v1[13] = v14;
    operator delete(v14);
  }

  v15 = v1[8];
  if (v15)
  {
    v1[9] = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void SpatialProbabilityBase::SetPriorProbabilities(SpatialProbabilityBase *this, float a2, float a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 < 0.0 || a2 > 1.0)
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v5 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 136315650;
    v10 = "SpatialProbabilityBase.cpp";
    v11 = 1024;
    v12 = 331;
    v13 = 2048;
    v14 = a2;
    v8 = "%25s:%-5d SpatialProbabilityBase: Prior probabilities not set. Source prior (%f) should be in range [0, 1].\n";
LABEL_26:
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, v8, &v9, 0x1Cu);
    return;
  }

  if (a3 >= 0.0 && a3 <= 1.0)
  {
    *(this + 67) = a2 * a3;
    *(this + 68) = (1.0 - a3) * a2;
    *(this + 69) = 1.0 - a2;
    return;
  }

  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (!AUSpatialProbabilityLogScope(void)::scope)
  {
    v5 = MEMORY[0x1E69E9C10];
    goto LABEL_24;
  }

  v5 = *AUSpatialProbabilityLogScope(void)::scope;
  if (*AUSpatialProbabilityLogScope(void)::scope)
  {
LABEL_24:
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 136315650;
    v10 = "SpatialProbabilityBase.cpp";
    v11 = 1024;
    v12 = 335;
    v13 = 2048;
    v14 = a3;
    v8 = "%25s:%-5d SpatialProbabilityBase: Prior probabilities not set. Conditional target prior (%f) should be in range [0, 1].\n";
    goto LABEL_26;
  }
}

void SpatialProbabilityBase::UpdateShapeParameter(SpatialProbabilityBase *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(this + 12);
  if (v2 <= 1)
  {
    if (!v2)
    {
      if (*(this + 2) == *(this + 3))
      {
        return;
      }

      (**this)(this, *(this + 13));
      goto LABEL_48;
    }

    if (v2 != 1 || *(this + 2) == *(this + 3) && *(this + 4) == *(this + 5))
    {
      return;
    }

    v3 = this + 56;
    v33 = *(this + 13) - *(this + 14);
    if (v33 < 0.0)
    {
      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v4 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return;
        }
      }

      else
      {
        v4 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315394;
      v35 = "SpatialProbabilityBase.cpp";
      v36 = 1024;
      v37 = 122;
      v29 = "%25s:%-5d Input kappaMin must be lower than kappaMax. Skipping updating model with Prior weighted frequency dependent shape parameter.\n";
      goto LABEL_58;
    }

    v8 = *(this + 35);
    v7 = (this + 64);
    v11 = *(this + 8);
    v9 = *(this + 2);
    v10 = &v33;
LABEL_36:
    MEMORY[0x1E12BE940](v8, 1, v10, v11, 1, v9);
    MEMORY[0x1E12BE8A0](*v7, 1, v3, *v7, 1, *(this + 2));
    (*(*this + 8))(this, v7);
    goto LABEL_37;
  }

  if (v2 == 2)
  {
    if (*(this + 2) == *(this + 3) && *(this + 4) == *(this + 5))
    {
      return;
    }

    v33 = *(this + 98) / 10.0;
    __A = __exp10f(v33 * *(this + 99));
    v31 = *(this + 2);
    v3 = this + 52;
    v30 = *(this + 14) - *(this + 13);
    if (v30 > 0.0)
    {
      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v4 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return;
        }
      }

      else
      {
        v4 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315394;
      v35 = "SpatialProbabilityBase.cpp";
      v36 = 1024;
      v37 = 167;
      v29 = "%25s:%-5d Input kappaMin must be lower than kappaMax. Skipping updating model with CDR-based frequency dependent shape parameter.\n";
      goto LABEL_58;
    }

    MEMORY[0x1E12BE940](*(this + 46), 1, &v33, *(this + 52), 1);
    v7 = (this + 64);
    vDSP_vfill(this + 102, *(this + 8), 1, *(this + 2));
    vvpowf(*v7, *(this + 52), *v7, &v31);
    MEMORY[0x1E12BE8A0](*v7, 1, &__A, *v7, 1, *(this + 2));
    vDSP_svdiv(&__A, *v7, 1, *v7, 1, *(this + 2));
    v8 = *(this + 8);
    v9 = *(this + 2);
    v10 = &v30;
    v11 = v8;
    goto LABEL_36;
  }

  if (v2 == 3)
  {
    if (*(this + 2) == *(this + 3))
    {
      return;
    }

    v5 = *(this + 2);
    v6 = *(this + 22);
    if (v5 < v6)
    {
      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v4 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return;
        }
      }

      else
      {
        v4 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315394;
      v35 = "SpatialProbabilityBase.cpp";
      v36 = 1024;
      v37 = 197;
      v29 = "%25s:%-5d Maximum frequency for frequency dependent shape decay must be lower than maximumfrequency. Using fixed shape parameter instead of frequency depedent one.\n";
LABEL_58:
      _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_ERROR, v29, buf, 0x12u);
      return;
    }

    v12 = *(this + 13);
    v13 = *(this + 14);
    vDSP_vfill(this + 13, *(this + 8), 1, *(this + 22));
    v16 = *(this + 22);
    v17 = *(this + 2);
    if (v16 < v17)
    {
      v18 = 0;
      *v14.i32 = -(v12 - v13) / (v5 - v6);
      *v15.i32 = v12 - (v6 * *v14.i32);
      v19 = v17 - v16;
      v20 = vdupq_n_s64(v19 - 1);
      v21 = (v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v22 = vdupq_lane_s32(v14, 0);
      v23 = vdupq_lane_s32(v15, 0);
      v24 = (*(this + 8) + 4 * v16 + 8);
      do
      {
        v25 = vdupq_n_s64(v18);
        v26 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v25, xmmword_1DE095160)));
        v27.i32[0] = v16 + v18;
        v27.i32[1] = v16 + v18 + 1;
        v27.u64[1] = vadd_s32(vdup_n_s32(v16 + v18), 0x300000002);
        v28 = vmlaq_f32(v23, v22, vcvtq_f32_u32(v27));
        if (vuzp1_s16(v26, *v20.i8).u8[0])
        {
          *(v24 - 2) = v28.i32[0];
        }

        if (vuzp1_s16(v26, *&v20).i8[2])
        {
          *(v24 - 1) = v28.i32[1];
        }

        if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v25, xmmword_1DE095150)))).i32[1])
        {
          *v24 = v28.i64[1];
        }

        v18 += 4;
        v24 += 2;
      }

      while (v21 != v18);
    }

    (*(*this + 8))(this, this + 64);
LABEL_48:
    *(this + 3) = *(this + 2);
    return;
  }

  if (v2 == 4 && *(this + 2) != *(this + 3))
  {
    vDSP_vclip(*(this + 8), 1, this + 14, this + 13, *(this + 8), 1, (*(this + 9) - *(this + 8)) >> 2);
    (*(*this + 8))(this, this + 64);
LABEL_37:
    *(this + 3) = *(this + 2);
    *(this + 5) = *(this + 4);
  }
}

float SpatialProbabilityBase::UpdatePosteriorProbabilities(SpatialProbabilityBase *this)
{
  MEMORY[0x1E12BE7F0](*(this + 12), 1, *(this + 21), 1, *(this + 21), 1, *(this + 2));
  MEMORY[0x1E12BE7F0](*(this + 15), 1, *(this + 24), 1, *(this + 24), 1, *(this + 2));
  MEMORY[0x1E12BE7F0](*(this + 18), 1, *(this + 27), 1, *(this + 27), 1, *(this + 2));
  MEMORY[0x1E12BE5D0](*(this + 21), 1, *(this + 24), 1, *(this + 30), 1, *(this + 2));
  MEMORY[0x1E12BE5D0](*(this + 30), 1, *(this + 27), 1, *(this + 30), 1, *(this + 2));
  vDSP_vdiv(*(this + 30), 1, *(this + 21), 1, *(this + 38), 1, *(this + 2));
  vDSP_vdiv(*(this + 30), 1, *(this + 24), 1, *(this + 41), 1, *(this + 2));
  vDSP_meanv(*(this + 38), 1, this + 88, *(this + 2));
  vDSP_meanv(*(this + 41), 1, this + 89, *(this + 2));
  result = 1.0 - (*(this + 88) + *(this + 89));
  *(this + 90) = result;
  return result;
}

void SpatialProbabilityBase::UpdatePriorProbabilities(SpatialProbabilityBase *this)
{
  v2 = *(this + 66);
  if (v2 == 1)
  {
    MEMORY[0x1E12BE940](*(this + 35), 1, this + 268, *(this + 21), 1, *(this + 2));
    MEMORY[0x1E12BE940](*(this + 35), 1, this + 272, *(this + 24), 1, *(this + 2));
    MEMORY[0x1E12BE5D0](*(this + 21), 1, *(this + 24), 1, *(this + 27), 1, *(this + 2));
    MEMORY[0x1E12BE810](*(this + 27), 1, *(this + 27), 1, *(this + 2));

    JUMPOUT(0x1E12BE8A0);
  }

  if (!v2)
  {
    vDSP_vfill(this + 67, *(this + 21), 1, *(this + 2));
    vDSP_vfill(this + 68, *(this + 24), 1, *(this + 2));
    v3 = *(this + 27);
    v4 = *(this + 2);

    vDSP_vfill(this + 69, v3, 1, v4);
  }
}

BOOL AUDebugFeature::IsNonFiniteHandlingEnabled(AUDebugFeature *this)
{
  v1 = &xmmword_1ECDA9000;
  {
    v1 = &xmmword_1ECDA9000;
    if (v3)
    {
      AUDebugFeature::IsNonFiniteHandlingEnabled(void)::envValue = getenv("AU_Disable_NonFinite_Handling");
      v1 = &xmmword_1ECDA9000;
    }
  }

  return *(v1 + 260) == 0;
}

uint64_t _ZN11LeanSpatial13LSBankStorageIDF16_E19SetupBankAttributesENS_12LSSamplerateERNS_16LSBankAttributesIDF16_EENS_13RenderingTypeE(unsigned int a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    if (a1)
    {
      v6 = a1 == 48000;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
    v8 = 6840;
LABEL_17:
    if (v6)
    {
      v8 = 0;
    }

    goto LABEL_27;
  }

  if (a3 == 1)
  {
    if (a1)
    {
      v6 = a1 == 48000;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
    v8 = 512;
    goto LABEL_17;
  }

  v8 = 32;
  if (a1 == 48000)
  {
    v8 = 64;
  }

  if (!a1)
  {
    v8 = 0;
  }

  v7 = a1 == 48000 || a1 == 0;
LABEL_27:
  *(a2 + 8) = v8;
  *a2 = a1;
  *(a2 + 48) = _ZN11LeanSpatial13LSBankStorageIDF16_E9getCoeffsENS_12LSSamplerateENS_13RenderingTypeE(a1, a3);
  *(a2 + 56) = v9;
  result = _ZN11LeanSpatial13LSBankStorageIDF16_E9getDelaysENS_12LSSamplerateENS_13RenderingTypeE(a1, a3);
  *(a2 + 64) = result;
  *(a2 + 72) = v11;
  *(a2 + 89) = a3 == 0;
  *(a2 + 128) = 128;
  v12 = 360;
  if (v7)
  {
    v12 = 0;
  }

  if (a3 != 2)
  {
    v12 = 0;
  }

  *(a2 + 144) = v12;
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      if (a1 == 24000)
      {
        *(a2 + 16) = 1094713344;
        result = std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a2 + 24), _ZN11LeanSpatial11defaultBankIDF16_LNS_12LSSamplerateE24000ELNS_13RenderingTypeE1EE14kElevationListE, _ZN11LeanSpatial11defaultBankIDF16_LNS_12LSSamplerateE24000ELNS_13RenderingTypeE2EE14kElevationListE, 1uLL);
      }

      *(a2 + 80) = 180;
      *(a2 + 88) = 1;
      *(a2 + 92) = 2;
      *(a2 + 96) = 0;
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      *(a2 + 120) = 100;
      *(a2 + 136) = 1;
      return result;
    }

    if (a1 == 48000)
    {
      *(a2 + 16) = 1094713344;
      v13 = &_ZN11LeanSpatial11defaultBankIDF16_LNS_12LSSamplerateE48000ELNS_13RenderingTypeE0EE14kElevationListE;
    }

    else
    {
      if (a1 != 24000)
      {
LABEL_44:
        *(a2 + 88) = 0;
        *(a2 + 92) = 1;
        *(a2 + 136) = 0;
        return result;
      }

      *(a2 + 16) = 1094713344;
      v13 = &_ZN11LeanSpatial11defaultBankIDF16_LNS_12LSSamplerateE24000ELNS_13RenderingTypeE0EE14kElevationListE;
    }

    result = std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a2 + 24), v13, v13 + 20, 5uLL);
    goto LABEL_44;
  }

  if (a1 == 24000)
  {
    *(a2 + 16) = 0;
    result = std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a2 + 24), _ZN11LeanSpatial11defaultBankIDF16_LNS_12LSSamplerateE24000ELNS_13RenderingTypeE2EE14kElevationListE, _ZN11LeanSpatial11defaultBankIDF16_LNS_12LSSamplerateE24000ELNS_13RenderingTypeE0EE7kCoeffsE, 1uLL);
  }

  *(a2 + 80) = 180;
  *(a2 + 88) = 0;
  *(a2 + 92) = 0;
  *(a2 + 96) = xmmword_1DE09DB00;
  *(a2 + 136) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

uint64_t _ZN11LeanSpatial13LSBankStorageIDF16_E9getCoeffsENS_12LSSamplerateENS_13RenderingTypeE(int a1, int a2)
{
  v8 = a1;
  v7 = a2;
  if (a2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return v9;
      }

      goto LABEL_18;
    }
  }

  else
  {
    switch(v8)
    {
      case 0:
        goto LABEL_23;
      case 24000:
        _ZNSt3__14spanIKDF16_Lm4800EEC1B8ne200100IDF16_EERKNS_5arrayIT_Lm4800EEE(&v6);
        _ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm4800EEERKNS0_IT_XT0_EEE(&v9, v6);
        return v9;
      case 48000:
        _ZNSt3__14spanIKDF16_Lm9600EEC1B8ne200100IDF16_EERKNS_5arrayIT_Lm9600EEE(&v5);
        _ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm9600EEERKNS0_IT_XT0_EEE(&v9, v5);
        return v9;
    }
  }

  switch(v8)
  {
    case 0:
      goto LABEL_23;
    case 24000:
      _ZNSt3__14spanIKDF16_Lm30720EEC1B8ne200100IDF16_EERKNS_5arrayIT_Lm30720EEE(&v4);
      _ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm30720EEERKNS0_IT_XT0_EEE(&v9, v4);
      return v9;
    case 48000:
LABEL_23:
      _ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100Ev(&v9);
      return v9;
  }

LABEL_18:
  if (!v8)
  {
    goto LABEL_23;
  }

  if (v8 != 24000)
  {
    if (v8 != 48000)
    {
      return v9;
    }

    goto LABEL_23;
  }

  _ZNSt3__14spanIKDF16_Lm13680EEC1B8ne200100IDF16_EERKNS_5arrayIT_Lm13680EEE(&v3);
  _ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm13680EEERKNS0_IT_XT0_EEE(&v9, v3);
  return v9;
}

uint64_t _ZN11LeanSpatial13LSBankStorageIDF16_E9getDelaysENS_12LSSamplerateENS_13RenderingTypeE(int a1, int a2)
{
  v8 = a1;
  v7 = a2;
  if (a2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return v9;
      }

      goto LABEL_18;
    }
  }

  else
  {
    switch(v8)
    {
      case 0:
        goto LABEL_23;
      case 24000:
        _ZNSt3__14spanIKDF16_Lm150EEC1B8ne200100IDF16_EERKNS_5arrayIT_Lm150EEE(&v6, &_ZN11LeanSpatial11defaultBankIDF16_LNS_12LSSamplerateE24000ELNS_13RenderingTypeE0EE7kDelaysE);
        _ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm150EEERKNS0_IT_XT0_EEE(&v9, v6);
        return v9;
      case 48000:
        _ZNSt3__14spanIKDF16_Lm150EEC1B8ne200100IDF16_EERKNS_5arrayIT_Lm150EEE(&v5, &_ZN11LeanSpatial11defaultBankIDF16_LNS_12LSSamplerateE48000ELNS_13RenderingTypeE0EE7kDelaysE);
        _ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm150EEERKNS0_IT_XT0_EEE(&v9, v5);
        return v9;
    }
  }

  switch(v8)
  {
    case 0:
      goto LABEL_23;
    case 24000:
      _ZNSt3__14spanIKDF16_Lm30EEC1B8ne200100IDF16_EERKNS_5arrayIT_Lm30EEE(&v4);
      _ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm30EEERKNS0_IT_XT0_EEE(&v9, v4);
      return v9;
    case 48000:
LABEL_23:
      _ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100Ev(&v9);
      return v9;
  }

LABEL_18:
  if (!v8)
  {
    goto LABEL_23;
  }

  if (v8 != 24000)
  {
    if (v8 != 48000)
    {
      return v9;
    }

    goto LABEL_23;
  }

  _ZNSt3__14spanIKDF16_Lm1EEC1B8ne200100IDF16_EERKNS_5arrayIT_Lm1EEE(&v3);
  _ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm1EEERKNS0_IT_XT0_EEE(&v9, v3);
  return v9;
}

void *_ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm150EEERKNS0_IT_XT0_EEE(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 150;
  return result;
}

void *_ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100Ev(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *_ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm30EEERKNS0_IT_XT0_EEE(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 30;
  return result;
}

void *_ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm1EEERKNS0_IT_XT0_EEE(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 1;
  return result;
}

void *_ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm4800EEERKNS0_IT_XT0_EEE(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 4800;
  return result;
}

void *_ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm9600EEERKNS0_IT_XT0_EEE(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 9600;
  return result;
}

void *_ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm30720EEERKNS0_IT_XT0_EEE(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 30720;
  return result;
}

void *_ZNSt3__14spanIKDF16_Lm18446744073709551615EEC1B8ne200100IS1_Lm13680EEERKNS0_IT_XT0_EEE(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 13680;
  return result;
}

void FreqDomainConvolver::~FreqDomainConvolver(FreqDomainConvolver *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  CDSPSplitComplex::~CDSPSplitComplex((this + 80));
  CDSPSplitComplex::~CDSPSplitComplex((this + 48));
  CDSPSplitComplex::~CDSPSplitComplex((this + 16));
  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::vector<std::vector<DSPSplitComplex>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v15);
    a1[1] = v4 + v15;
  }
}

void SmartFIR::Reset(void **this)
{
  bzero(this[36], this[37] - this[36]);
  bzero(this[39], this[40] - this[39]);
  bzero(this[42], this[43] - this[42]);
  bzero(this[45], this[46] - this[45]);
  if (this[2])
  {
    v2 = 0;
    v3 = 1;
    do
    {
      FreqDomainConvolver::Reset((this[4] + 168 * v2));
      v4 = this[19] + 24 * v2;
      v5 = *(v4 + 8) - *v4;
      if (v5 >= 1)
      {
        bzero(*v4, v5);
      }

      v6 = this[22] + 24 * v2;
      v7 = *(v6 + 8) - *v6;
      if (v7 >= 1)
      {
        bzero(*v6, v7);
      }

      v2 = v3;
    }

    while (this[2] > v3++);
  }

  *(this + 15) = 0;
  this[3] = *this;
  *(this + 58) = -1;
}

void SmartFIR::SmartFIR(SmartFIR *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v92 = *MEMORY[0x1E69E9840];
  *this = a3;
  *(this + 1) = a2;
  *(this + 2) = a4;
  *(this + 3) = 0;
  FreqDomainConvolver::FreqDomainConvolver(buf, a3);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v90 = this + 32;
  v91 = 0;
  if (a4)
  {
    if (a4 < 0x186186186186187)
    {
      std::allocator<FreqDomainConvolver>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  if (v84)
  {
    if (v85 != v84)
    {
      v85 += (v84 - v85 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    operator delete(v84);
    v84 = 0;
    v85 = 0;
  }

  if (v82)
  {
    if (v83 != v82)
    {
      v83 += (v82 - v83 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    operator delete(v82);
    v82 = 0;
    v83 = 0;
  }

  if (*&v80[2])
  {
    if (v81 != *&v80[2])
    {
      v81 += (*&v80[2] - v81 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    operator delete(*&v80[2]);
    *&v80[2] = 0;
    v81 = 0;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  *(this + 4) = 0u;
  v6 = (this + 64);
  *(this + 5) = 0u;
  *(this + 14) = 0;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  v7 = *this;
  LODWORD(v90) = 0;
  std::vector<float>::vector[abi:ne200100](buf, v7);
  std::vector<std::vector<float>>::vector[abi:ne200100](this + 22, 0);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = -1;
  *(this + 15) = 0u;
  *(this + 18) = 0u;
  *(this + 21) = 0u;
  *(this + 24) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 50) = 0;
  v8 = vcnt_s8(*(this + 2));
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.i32[0] > 1u;
  if (v8.i32[0] >= 2u)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&v90, v9);
      *buf = 136315906;
      *&buf[4] = "SmartFIR.mm";
      *&buf[12] = 1024;
      *&buf[14] = 54;
      v77 = 2080;
      v78 = &v90;
      v79 = 2080;
      *v80 = "Filter length must be power of 2";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Filter length must be power of 2", v9);
  }

  v10 = vcnt_s8(*this);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.i32[0] > 1u;
  if (v10.i32[0] >= 2u)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&v90, v11);
      *buf = 136315906;
      *&buf[4] = "SmartFIR.mm";
      *&buf[12] = 1024;
      *&buf[14] = 55;
      v77 = 2080;
      v78 = &v90;
      v79 = 2080;
      *v80 = "Block size must be power of 2";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v73 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v73, "Block size must be power of 2", v11);
  }

  v12 = MultiRadixRealFFT::Initialize((this + 64), 2 * *this);
  if (v12)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&v90, v12);
      *buf = 136315906;
      *&buf[4] = "SmartFIR.mm";
      *&buf[12] = 1024;
      *&buf[14] = 56;
      v77 = 2080;
      v78 = &v90;
      v79 = 2080;
      *v80 = "FFT initialization failed";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v74 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v74, "FFT initialization failed", v12);
  }

  v13 = *this;
  v14 = *(this + 1);
  if (*this <= v14)
  {
    v15 = v14 / v13;
  }

  else
  {
    v15 = 1;
  }

  *(this + 14) = v15;
  *(this + 15) = 0;
  v16 = *(this + 48);
  v17 = *(this + 49) - v16;
  if (v17 > 9)
  {
    if (v17 != 10)
    {
      *(this + 49) = v16 + 5;
    }
  }

  else
  {
    std::vector<std::byte>::__append(this + 48, 10 - v17);
    v16 = *(this + 48);
    v13 = *this;
  }

  *(this + 51) = v16;
  v16[3] = v13;
  v16[2] = v15;
  v16[4] = v13 >> 2;
  std::vector<std::vector<DSPSplitComplex>>::resize(this + 13, *(this + 2));
  std::vector<std::vector<DSPSplitComplex>>::resize(this + 16, *(this + 2));
  std::vector<std::vector<float>>::resize(this + 19, *(this + 2));
  std::vector<DSPSplitComplex>::resize(this + 10, *(this + 2));
  v18 = *this * *(this + 2);
  v19 = 4 * v15 * v18;
  v20 = *(this + 30);
  v21 = *(this + 31) - v20;
  if (v19 <= v21)
  {
    if (v19 < v21)
    {
      *(this + 31) = v20 + v19;
    }
  }

  else
  {
    std::vector<std::byte>::__append(this + 30, v19 - v21);
  }

  v22 = *(this + 33);
  v23 = *(this + 34) - v22;
  if (v19 <= v23)
  {
    if (v19 < v23)
    {
      *(this + 34) = v22 + v19;
    }
  }

  else
  {
    std::vector<std::byte>::__append(this + 33, v19 - v23);
  }

  v24 = *(this + 36);
  v25 = *(this + 37) - v24;
  if (v19 <= v25)
  {
    if (v19 < v25)
    {
      *(this + 37) = v24 + v19;
    }
  }

  else
  {
    std::vector<std::byte>::__append(this + 36, v19 - v25);
  }

  v26 = *(this + 39);
  v27 = *(this + 40) - v26;
  if (v19 <= v27)
  {
    if (v19 < v27)
    {
      *(this + 40) = v26 + v19;
    }
  }

  else
  {
    std::vector<std::byte>::__append(this + 39, v19 - v27);
  }

  v28 = 4 * v18;
  v29 = *(this + 42);
  v30 = *(this + 43) - v29;
  if (4 * v18 <= v30)
  {
    if (4 * v18 < v30)
    {
      *(this + 43) = v29 + v28;
    }
  }

  else
  {
    std::vector<std::byte>::__append(this + 42, 4 * v18 - v30);
  }

  v31 = *(this + 45);
  v32 = *(this + 46) - v31;
  if (v28 <= v32)
  {
    if (v28 < v32)
    {
      *(this + 46) = v31 + v28;
    }
  }

  else
  {
    std::vector<std::byte>::__append(this + 45, v28 - v32);
  }

  v34 = *this;
  v33 = *(this + 1);
  if (*this <= v33)
  {
    v35 = v33 / v34;
  }

  else
  {
    v35 = 1;
  }

  *(this + 51) = *(this + 48);
  if (v34 <= v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = v34;
  }

  std::vector<float>::vector[abi:ne200100](buf, v36);
  v37 = *buf;
  if (*&buf[8] == *buf)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  **buf = 1065353216;
  if (!*(this + 2))
  {
    goto LABEL_90;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  do
  {
    v41 = *(this + 13);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 14) - v41) >> 3) <= v38 || (std::vector<DSPSplitComplex>::resize((v41 + 24 * v38), v35), v42 = *(this + 16), 0xAAAAAAAAAAAAAAABLL * ((*(this + 17) - v42) >> 3) <= v38))
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    std::vector<DSPSplitComplex>::resize((v42 + 24 * v38), v35);
    v43 = *(this + 19);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 20) - v43) >> 3) <= v38)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    std::vector<float>::resize((v43 + 24 * v38), *this);
    v44 = *(this + 10);
    if (v38 >= (*(this + 11) - v44) >> 4)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    v75 = v39;
    v45 = *this;
    v46 = (v44 + 16 * v38);
    v47 = *this * v38;
    *v46 = *(this + 42) + 4 * v47;
    v46[1] = *(this + 45) + 4 * v47;
    if (v35)
    {
      v48 = 0;
      LODWORD(v49) = 0;
      v50 = 1;
      do
      {
        v51 = *(this + 16);
        if (0xAAAAAAAAAAAAAAABLL * ((*(this + 17) - v51) >> 3) <= v38)
        {
          goto LABEL_93;
        }

        v53 = (v51 + 24 * v38);
        v52 = *v53;
        if (v48 >= (v53[1] - *v53) >> 4)
        {
          goto LABEL_94;
        }

        v54 = v49;
        v55 = (v52 + 16 * v48);
        *v55 = *(this + 36) + 4 * v40 + 4 * v49;
        v55[1] = *(this + 39) + 4 * v40 + 4 * v49;
        v56 = *(this + 13);
        if (0xAAAAAAAAAAAAAAABLL * ((*(this + 14) - v56) >> 3) <= v38)
        {
LABEL_93:
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v58 = (v56 + 24 * v38);
        v57 = *v58;
        if (v48 >= (v58[1] - *v58) >> 4)
        {
LABEL_94:
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v59 = (v57 + 16 * v48);
        v59->realp = (*(this + 30) + 4 * v40 + 4 * v54);
        v59->imagp = (*(this + 33) + 4 * v40 + 4 * v54);
        if (v54 >= (*&buf[8] - *buf) >> 2)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        vDSP_ctoz((*buf + 4 * v54), 2, v59, 1, v45 >> 1);
        if (*v6)
        {
          v60 = **v6;
        }

        else
        {
          v60 = 0.0;
        }

        *&v90 = 1.0 / v60;
        v61 = *(this + 13);
        if (0xAAAAAAAAAAAAAAABLL * ((*(this + 14) - v61) >> 3) <= v38)
        {
          goto LABEL_92;
        }

        v63 = (v61 + 24 * v38);
        v62 = *v63;
        if (v48 >= (v63[1] - *v63) >> 4)
        {
          goto LABEL_95;
        }

        MEMORY[0x1E12BE940](*(v62 + 16 * v48), 1, &v90, *(v62 + 16 * v48), 1, *this);
        v64 = *(this + 13);
        if (0xAAAAAAAAAAAAAAABLL * ((*(this + 14) - v64) >> 3) <= v38)
        {
LABEL_92:
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v66 = (v64 + 24 * v38);
        v65 = *v66;
        if (v48 >= (v66[1] - *v66) >> 4)
        {
LABEL_95:
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        MEMORY[0x1E12BE940](*(v65 + 16 * v48 + 8), 1, &v90, *(v65 + 16 * v48 + 8), 1, *this);
        v68 = *(this + 13);
        if (0xAAAAAAAAAAAAAAABLL * ((*(this + 14) - v68) >> 3) <= v38)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v70 = (v68 + 24 * v38);
        v69 = *v70;
        if (v48 >= (v70[1] - *v70) >> 4)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        MultiRadixRealFFT::RealInPlaceTransform((this + 64), (v69 + 16 * v48), 1, v67);
        v45 = *this;
        v49 = *this + v54;
        v48 = v50;
      }

      while (v35 > v50++);
    }

    v40 += v45 * v35;
    v38 = (v75 + 1);
    v39 = v75 + 1;
  }

  while (*(this + 2) > v38);
  v37 = *buf;
  if (*buf)
  {
LABEL_90:
    *&buf[8] = v37;
    operator delete(v37);
    v45 = *this;
  }

  CDSPSplitComplex::resize((this + 200), v45);
  SmartFIR::Reset(this);
}

void sub_1DDDDAD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, void **a14, void **a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CDSPSplitComplex *a21, uint64_t a22, void *__p, uint64_t a24)
{
  v28 = *a16;
  if (*a16)
  {
    v24[49] = v28;
    operator delete(v28);
  }

  v29 = *(a21 + 20);
  if (v29)
  {
    v24[46] = v29;
    operator delete(v29);
  }

  v30 = *a13;
  if (*a13)
  {
    v24[43] = v30;
    operator delete(v30);
  }

  v31 = *(a21 + 14);
  if (v31)
  {
    v24[40] = v31;
    operator delete(v31);
  }

  v32 = *a14;
  if (*a14)
  {
    v24[37] = v32;
    operator delete(v32);
  }

  v33 = *(a21 + 8);
  if (v33)
  {
    v24[34] = v33;
    operator delete(v33);
  }

  v34 = *a15;
  if (*a15)
  {
    v24[31] = v34;
    operator delete(v34);
  }

  CDSPSplitComplex::~CDSPSplitComplex(a21);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v26 - 136));
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v26 - 136));
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v26 - 136));
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v26 - 136));
  v35 = *v25;
  if (*v25)
  {
    v24[11] = v35;
    operator delete(v35);
  }

  v36 = v24[9];
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  std::vector<FreqDomainConvolver>::__destroy_vector::operator()[abi:ne200100]((v26 - 136));
  _Unwind_Resume(a1);
}

void SmartFIR::Initialize(SmartFIR *this, const float *const *a2)
{
  v4 = *(this + 1);
  if (v4 >= *this)
  {
    v4 = *this;
  }

  v15 = v4;
  bzero(*(this + 30), *(this + 31) - *(this + 30));
  bzero(*(this + 33), *(this + 34) - *(this + 33));
  if (*(this + 2))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      FreqDomainConvolver::Initialize((*(this + 4) + 168 * v5), a2[v5], v15);
      if (*(this + 14))
      {
        v7 = 0;
        v8 = 0;
        LODWORD(v9) = 0;
        do
        {
          vDSP_ctoz(&a2[v5][v9], 2, (*(*(this + 13) + 24 * v5) + v7), 1, v15 >> 1);
          v10 = *(this + 8);
          if (v10)
          {
            v11 = *v10;
          }

          else
          {
            v11 = 0.0;
          }

          v16 = 1.0 / v11;
          v12 = *(*(*(this + 13) + 24 * v5) + v7);
          MEMORY[0x1E12BE940](v12, 1, &v16, v12, 1, *this);
          v13 = *(*(*(this + 13) + 24 * v5) + v7 + 8);
          v14 = MEMORY[0x1E12BE940](v13, 1, &v16, v13, 1, *this);
          MultiRadixRealFFT::RealInPlaceTransform((this + 64), (*(*(this + 13) + 24 * v5) + v7), 1, v14);
          v9 = *this + v9;
          ++v8;
          v7 += 16;
        }

        while (v8 < *(this + 14));
      }

      v5 = ++v6;
    }

    while (*(this + 2) > v6);
  }
}

void SmartFIR::ProcessFreq(SmartFIR *this, const DSPSplitComplex *const *a2, float *const *a3)
{
  if (*(this + 3) == *this)
  {
    if (*(this + 2))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        memcpy(*(*(*(this + 16) + 24 * v6) + 16 * *(this + 15)), a2[v6]->realp, 4 * *this);
        memcpy(*(*(*(this + 16) + 24 * v6) + 16 * *(this + 15) + 8), a2[v6]->imagp, 4 * *this);
        v6 = v7;
        v8 = *(this + 2);
        v9 = v8 > v7++;
      }

      while (v9);
      v10 = (this + 60);
      v11 = (this + 232);
      v12 = (this + 56);
      **(this + 51) = *(this + 15);
      if (v8)
      {
        v13 = 0;
        for (i = 0; i < v8; v13 = ++i)
        {
          v15 = *(this + 7);
          v16 = HIDWORD(v15);
          v17 = *(*(*(this + 16) + 24 * v13) + 16 * HIDWORD(v15));
          __A = v17;
          v18 = *this;
          if (*this)
          {
            v19 = 0;
            v20 = (*(this + 10) + 16 * v13);
            v21 = *v20;
            v22 = v20[1];
            do
            {
              *(v21 + 4 * v19) = 0;
              *(v22 + 4 * v19++) = 0;
            }

            while (v18 > v19);
          }

          if (v15)
          {
            v23 = 0;
            v24 = *(this + 10);
            v25 = *(this + 13);
            v26 = 8;
            do
            {
              __A = *(*(*(this + 16) + 24 * v13) + 16 * v16);
              v28 = (v25 + 24 * v13);
              v27 = *v28;
              if (v23 >= (v28[1] - *v28) >> 4 || (v29 = (v24 + 16 * v13), v30 = *v29->realp, v31 = *v29->imagp, vDSP_zvma(&__A, 1, (v27 + v26 - 8), 1, v29, 1, v29, 1, *this), v25 = *(this + 13), v32 = *(v25 + 24 * v13), v23 >= (*(v25 + 24 * v13 + 8) - v32) >> 4))
              {
                std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
              }

              v33 = (v32 + v26);
              v34 = v30 + (*__A.realp * **(v32 + v26 - 8));
              v24 = *(this + 10);
              v35 = v24 + 16 * v13;
              **v35 = v34;
              *&v17.realp = v31 + (*__A.imagp * **v33);
              **(v35 + 8) = v17.realp;
              if (v16)
              {
                v36 = v16;
              }

              else
              {
                v36 = v15;
              }

              LODWORD(v16) = v36 - 1;
              ++v23;
              v26 += 16;
            }

            while (v15 != v23);
            v8 = *(this + 2);
          }
        }

        if (v8)
        {
          v37 = 0;
          v38 = 1;
          v12 = (this + 56);
          do
          {
            MultiRadixRealFFT::RealInPlaceTransform((this + 64), (*(this + 10) + 16 * v37), -1, *&v17.realp);
            __A.realp = 0;
            __A.imagp = 0;
            v39 = (*(this + 10) + 16 * v37);
            v40 = *this >> 1;
            __A.realp = (*v39 + 4 * v40);
            __A.imagp = (v39[1] + 4 * v40);
            vDSP_ztoc(&__A, 1, a3[v37], 2, v40);
            v37 = v38;
            v9 = *(this + 2) > v38++;
          }

          while (v9);
          v11 = (this + 232);
          v10 = (this + 60);
        }

        else
        {
          v11 = (this + 232);
          v10 = (this + 60);
          v12 = (this + 56);
        }
      }
    }

    else
    {
      v11 = (this + 232);
      v12 = (this + 56);
      **(this + 51) = *(this + 15);
      v10 = (this + 60);
    }

    v41 = *v10;
    *v11 = *v10;
    if (v41 + 1 == *v12)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41 + 1;
    }

    *v10 = v42;
  }
}

uint64_t AUSpatialMixerV2ChannelProcessor::PropertyChanged(AUSpatialMixerV2ChannelProcessor *this, int a2)
{
  v190 = *MEMORY[0x1E69E9840];
  if (a2 > 5687)
  {
    switch(a2)
    {
      case 104000:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v5 = *(this + 22);
          v6 = atomic_load((*(*(this + 72) + 232) + 2568));
          v7.n128_u32[0] = v6;
          (*(**(v5 + 48) + 280))(v7);
          goto LABEL_182;
        }

        return 0;
      case 104001:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          _X0 = 0;
          _X1 = 0;
          __asm { CASPAL          X0, X1, X0, X1, [X9] }

          (*(**(*(this + 22) + 48) + 56))(*(*(this + 22) + 48), _X0);
          goto LABEL_182;
        }

        return 0;
      case 104002:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          _X0 = 0;
          _X1 = 0;
          __asm { CASPAL          X0, X1, X0, X1, [X9] }

          (*(**(*(this + 22) + 48) + 40))(*(*(this + 22) + 48), _X0);
          goto LABEL_182;
        }

        return 0;
      case 104003:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          _X0 = 0;
          _X1 = 0;
          __asm { CASPAL          X0, X1, X0, X1, [X9] }

          (*(**(*(this + 22) + 48) + 48))(*(*(this + 22) + 48), _X0);
          goto LABEL_182;
        }

        return 0;
      case 104004:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          AUSM::AppleSauceCFWithMutex<__CFArray const*>::load(buf, *(*(this + 72) + 232) + 2624);
          v84 = applesauce::CF::ArrayRef::operator->(buf);
          applesauce::CF::convert_as<std::vector<float>,0>(cf, *v84);
          applesauce::CF::ArrayRef::~ArrayRef(buf);
          if (v167 != 1)
          {
            goto LABEL_182;
          }

          v69 = cf[0];
          v85 = *(cf[0] + 4);
          v86 = *(cf[0] + 1);
          *buf = *cf[0];
          *&buf[16] = v86;
          v188[0] = v85;
          (*(**(*(this + 22) + 48) + 88))(*(*(this + 22) + 48), buf);
          goto LABEL_124;
        }

        return 0;
      case 104005:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v80 = *(this + 22);
          v81 = atomic_load((*(*(this + 72) + 232) + 2700));
          (*(**(v80 + 48) + 192))(*(v80 + 48), v81);
          goto LABEL_182;
        }

        return 0;
      case 104006:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v96 = *(this + 22);
          v97 = atomic_load((*(*(this + 72) + 232) + 2708));
          v98.n128_u32[0] = v97;
          (*(**(v96 + 48) + 256))(v98);
          goto LABEL_182;
        }

        return 0;
      case 104007:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v101 = *(this + 22);
          v102 = atomic_load((*(*(this + 72) + 232) + 2704));
          (*(**(v101 + 48) + 216))(*(v101 + 48), v102);
          goto LABEL_182;
        }

        return 0;
      case 104008:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v60 = *(this + 23);
          v61 = atomic_load((*(*(this + 72) + 232) + 2812));
          v62.n128_u32[0] = v61;
          (*(**(v60 + 48) + 280))(v62);
          goto LABEL_182;
        }

        return 0;
      case 104009:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          _X0 = 0;
          _X1 = 0;
          __asm { CASPAL          X0, X1, X0, X1, [X9] }

          (*(**(*(this + 23) + 48) + 56))(*(*(this + 23) + 48), _X0);
          goto LABEL_182;
        }

        return 0;
      case 104010:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          _X0 = 0;
          _X1 = 0;
          __asm { CASPAL          X0, X1, X0, X1, [X9] }

          (*(**(*(this + 23) + 48) + 40))(*(*(this + 23) + 48), _X0);
          goto LABEL_182;
        }

        return 0;
      case 104011:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          _X0 = 0;
          _X1 = 0;
          __asm { CASPAL          X0, X1, X0, X1, [X9] }

          (*(**(*(this + 23) + 48) + 48))(*(*(this + 23) + 48), _X0);
          goto LABEL_182;
        }

        return 0;
      case 104012:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          AUSM::AppleSauceCFWithMutex<__CFArray const*>::load(buf, *(*(this + 72) + 232) + 2864);
          v68 = applesauce::CF::ArrayRef::operator->(buf);
          applesauce::CF::convert_as<std::vector<float>,0>(cf, *v68);
          applesauce::CF::ArrayRef::~ArrayRef(buf);
          if (v167 == 1)
          {
            v69 = cf[0];
            v70 = *(cf[0] + 4);
            v71 = *(cf[0] + 1);
            *buf = *cf[0];
            *&buf[16] = v71;
            v188[0] = v70;
            (*(**(*(this + 23) + 48) + 88))(*(*(this + 23) + 48), buf);
LABEL_124:
            operator delete(v69);
          }

          goto LABEL_182;
        }

        return 0;
      case 104013:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v109 = *(this + 23);
          v110 = atomic_load((*(*(this + 72) + 232) + 2940));
          (*(**(v109 + 48) + 192))(*(v109 + 48), v110);
          goto LABEL_182;
        }

        return 0;
      case 104014:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v93 = *(this + 23);
          v94 = atomic_load((*(*(this + 72) + 232) + 2948));
          v95.n128_u32[0] = v94;
          (*(**(v93 + 48) + 256))(v95);
          goto LABEL_182;
        }

        return 0;
      case 104015:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v72 = *(this + 23);
          v73 = atomic_load((*(*(this + 72) + 232) + 2944));
          (*(**(v72 + 48) + 216))(*(v72 + 48), v73);
          goto LABEL_182;
        }

        return 0;
      case 104016:
      case 104017:
      case 104026:
        return 0;
      case 104018:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v54 = *(this + 22);
          v55 = COERCE_FLOAT(atomic_load((*(*(this + 72) + 232) + 2712)));
          (*(**(v54 + 48) + 168))(*(v54 + 48), v55);
          goto LABEL_182;
        }

        return 0;
      case 104019:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v99 = *(this + 23);
          v100 = COERCE_FLOAT(atomic_load((*(*(this + 72) + 232) + 2952)));
          (*(**(v99 + 48) + 168))(*(v99 + 48), v100);
          goto LABEL_182;
        }

        return 0;
      case 104020:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v58 = *(this + 22);
          v59 = COERCE_FLOAT(atomic_load((*(*(this + 72) + 232) + 2716)));
          (*(**(v58 + 48) + 176))(*(v58 + 48), v59);
          goto LABEL_182;
        }

        return 0;
      case 104021:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v56 = *(this + 23);
          v57 = COERCE_FLOAT(atomic_load((*(*(this + 72) + 232) + 2956)));
          (*(**(v56 + 48) + 176))(*(v56 + 48), v57);
          goto LABEL_182;
        }

        return 0;
      case 104022:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v82 = *(this + 22);
          v83 = COERCE_FLOAT(atomic_load((*(*(this + 72) + 232) + 2720)));
          (*(**(v82 + 48) + 184))(*(v82 + 48), v83);
          goto LABEL_182;
        }

        return 0;
      case 104023:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v114 = *(this + 23);
          v115 = COERCE_FLOAT(atomic_load((*(*(this + 72) + 232) + 2960)));
          (*(**(v114 + 48) + 184))(*(v114 + 48), v115);
          goto LABEL_182;
        }

        return 0;
      case 104024:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v116 = *(this + 22);
          v117 = atomic_load((*(*(this + 72) + 232) + 2696));
          if ((*(**(v116 + 48) + 64))(*(v116 + 48), v117))
          {
            goto LABEL_182;
          }

          goto LABEL_107;
        }

        return 0;
      case 104025:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v66 = *(this + 23);
          v67 = atomic_load((*(*(this + 72) + 232) + 2936));
          if (((*(**(v66 + 48) + 64))(*(v66 + 48), v67) & 1) == 0)
          {
LABEL_107:
            AUSpatialMixerV2ChannelProcessor::initializeERSpatializers(this, *(this + 48), *(this + 49));
          }

          goto LABEL_182;
        }

        return 0;
      case 104027:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v111 = *(this + 22);
          v112 = atomic_load((*(*(this + 72) + 232) + 2800));
          v113.n128_u32[0] = v112;
          (*(**(v111 + 48) + 312))(v113);
          goto LABEL_182;
        }

        return 0;
      case 104028:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v118 = *(this + 23);
          v119 = atomic_load((*(*(this + 72) + 232) + 3040));
          v120.n128_u32[0] = v119;
          (*(**(v118 + 48) + 312))(v120);
          goto LABEL_182;
        }

        return 0;
      case 104029:
        if (*(this + 22))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v90 = *(this + 22);
          v91 = atomic_load((*(*(this + 72) + 232) + 2804));
          v92.n128_u32[0] = v91;
          (*(**(v90 + 48) + 304))(v92);
          goto LABEL_182;
        }

        return 0;
      case 104030:
        if (*(this + 23))
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v121 = *(this + 23);
          v122 = atomic_load((*(*(this + 72) + 232) + 3044));
          v123.n128_u32[0] = v122;
          (*(**(v121 + 48) + 304))(v123);
          goto LABEL_182;
        }

        return 0;
      default:
        if (a2 == 5688)
        {
          AUSM::IRManager::getEarlyReverbAttributes(buf, *(this + 73), 1);
          atomic_load((*(*(this + 72) + 232) + 160));
          AUSpatialMixerV2ChannelProcessor::setEarlyReflectionsIRDataAttributes(this, 1);
        }

        else
        {
          if (a2 != 5689)
          {
            return 0;
          }

          AUSM::IRManager::getEarlyReverbAttributes(buf, *(this + 73), 0);
          atomic_load((*(*(this + 72) + 232) + 160));
          AUSpatialMixerV2ChannelProcessor::setEarlyReflectionsIRDataAttributes(this, 0);
        }

        IR::IRDataAttributes::~IRDataAttributes(buf);
        break;
    }

    return 0;
  }

  if (a2 <= 3216)
  {
    if (a2 > 3203)
    {
      if (a2 <= 3211)
      {
        if ((a2 - 3204) >= 2)
        {
          if ((a2 - 3210) < 2)
          {
            caulk::pooled_semaphore_mutex::_lock((this + 484));
            AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(buf, *(*(this + 72) + 232) + 824);
            v9 = *(this + 25);
            v10 = *buf;
            if (*buf)
            {
              CFRetain(*buf);
            }

            v181 = v10;
            AUSM::DivergentSpatializers::propertyDictionarySetValue(v9, @"HOASourceExtentIRCustomURL", &v181);
            if (v10)
            {
              CFRelease(v10);
              CFRelease(v10);
            }

            goto LABEL_182;
          }

          return 0;
        }

LABEL_37:
        if (*(this + 18))
        {
          AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(cf, *(this + 72) + 128);
          if (cf[0])
          {
            applesauce::CF::URLRef::URLRef(&v182, cf[0]);
            IR::IRDataAttributes::IRDataAttributes(buf, v182, 128, 1, 2, 4, *(this + 61));
            applesauce::CF::URLRef::~URLRef(&v182);
            IR::DynamicIRProcessor::setIRDataAttributes(*(this + 18), buf);
          }

          atomic_load((*(this + 72) + 220));
          IR::getPresetDataAttributes();
          IR::DynamicIRProcessor::setIRDataAttributes(*(this + 18), buf);
        }

        return 0;
      }

      if ((a2 - 3212) >= 2)
      {
        if (a2 == 3214)
        {
          v53 = atomic_load((*(this + 72) + 200));
          AUSpatialMixerV2ChannelProcessor::enableReverbSendDecorrFilters(this, v53 & 1);
        }

        return 0;
      }

      if (!*(this + 25) || *(this + 48) != 7 || *(this + 49) != 1)
      {
        return 0;
      }

      v15 = 1;
    }

    else
    {
      if (a2 <= 3107)
      {
        switch(a2)
        {
          case 3003:
            caulk::pooled_semaphore_mutex::_lock((this + 484));
            v47 = *(this + 25);
            v48 = atomic_load((*(this + 72) + 76));
            AUSM::DivergentSpatializers::setRenderingFlags(v47, v48);
            v49 = atomic_load((*(this + 72) + 76));
            v50 = *(this + 22);
            v51 = (v49 >> 2) & 1;
            if (v50)
            {
              (*(**(v50 + 48) + 296))(*(v50 + 48), v51);
            }

            v52 = *(this + 23);
            if (v52)
            {
              (*(**(v52 + 48) + 296))(*(v52 + 48), v51);
            }

            goto LABEL_182;
          case 3010:
            if (*(this + 22))
            {
              caulk::pooled_semaphore_mutex::_lock((this + 484));
              _X0 = 0;
              _X1 = 0;
              __asm { CASPAL          X0, X1, X0, X1, [X9] }

              v36.n128_u32[0] = 0;
              v38.n128_u32[0] = HIDWORD(_X0);
              v37.n128_u32[0] = _X0;
              v39.n128_u32[0] = 0;
              (*(**(*(this + 22) + 48) + 264))(v37, v38, v36, v39);
              caulk::pooled_semaphore_mutex::_unlock((this + 484));
            }

            if (*(this + 23))
            {
              caulk::pooled_semaphore_mutex::_lock((this + 484));
              _X0 = 0;
              _X1 = 0;
              __asm { CASPAL          X0, X1, X0, X1, [X9] }

              v43.n128_u32[0] = 0;
              v45.n128_u32[0] = HIDWORD(_X0);
              v44.n128_u32[0] = _X0;
              v46.n128_u32[0] = 0;
              (*(**(*(this + 23) + 48) + 264))(v44, v45, v43, v46);
              goto LABEL_182;
            }

            break;
          case 3013:
            if (*(this + 22))
            {
              caulk::pooled_semaphore_mutex::_lock((this + 484));
              atomic_load((*(*(this + 72) + 232) + 2544));
              (*(**(*(this + 22) + 48) + 272))();
              caulk::pooled_semaphore_mutex::_unlock((this + 484));
            }

            if (*(this + 23))
            {
              caulk::pooled_semaphore_mutex::_lock((this + 484));
              atomic_load((*(*(this + 72) + 232) + 2544));
              (*(**(*(this + 23) + 48) + 272))();
              goto LABEL_182;
            }

            break;
        }

        return 0;
      }

      if ((a2 - 3202) >= 2)
      {
        if (a2 == 3108)
        {
          v146 = atomic_load(this + 504);
          if ((v146 & 1) != 0 && fabsf(*(this + 61)) > 0.00000011921)
          {
            v147 = COERCE_FLOAT(atomic_load((*(*(this + 72) + 232) + 164)));
            v148 = ((v147 + v147) / *(this + 61)) * 3.14159265;
            AUSpatialMixerV2ChannelProcessor::setLFERollOff(this, v148);
          }
        }

        else if (a2 == 3109)
        {
          caulk::pooled_semaphore_mutex::_lock((this + 484));
          v13 = atomic_load(this + 552);
          if (v13)
          {
            v14 = atomic_load((*(this + 72) + 120));
            if (v14)
            {
              AUSpatialMixerV2ChannelProcessor::initializePropagationDelay(this);
            }
          }

          std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](this + 70, 0);
          goto LABEL_182;
        }

        return 0;
      }

      if (!*(this + 25) || *(this + 48) != 7 || *(this + 49) != 2)
      {
        return 0;
      }

      v15 = 2;
    }

    AUSpatialMixerV2ChannelProcessor::initializeSpatializer(this, 7, v15);
    return 0;
  }

  if (a2 <= 3273)
  {
    if (a2 <= 3227)
    {
      if ((a2 - 3217) < 2)
      {
        caulk::pooled_semaphore_mutex::_lock((this + 484));
        AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(buf, *(*(this + 72) + 232) + 1040);
        v23 = *(this + 25);
        v24 = *buf;
        if (*buf)
        {
          CFRetain(*buf);
        }

        v179 = v24;
        AUSM::DivergentSpatializers::propertyDictionarySetValue(v23, @"BinauralSourceExtentIRCustomURL", &v179);
        if (v24)
        {
          CFRelease(v24);
          CFRelease(v24);
        }

        goto LABEL_182;
      }

      if (a2 == 3219)
      {
        v126 = atomic_load((*(*(this + 72) + 232) + 1328));
        *(this + 142) = v126;
      }

      else if (a2 == 3224)
      {
        caulk::pooled_semaphore_mutex::_lock((this + 484));
        v3 = *(this + 25);
        v4 = atomic_load((*(this + 72) + 201));
        AUSM::DivergentSpatializers::setEnableExclusionZones(v3, v4 & 1);
LABEL_182:
        v125 = (this + 484);
        goto LABEL_183;
      }

      return 0;
    }

    if ((a2 - 3228) < 2)
    {
      caulk::pooled_semaphore_mutex::_lock((this + 484));
      AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(buf, *(*(this + 72) + 232) + 1336);
      v27 = *(this + 25);
      v28 = *buf;
      if (*buf)
      {
        CFRetain(*buf);
      }

      v178 = v28;
      AUSM::DivergentSpatializers::propertyDictionarySetValue(v27, @"XTCSourceExtentIRCustomURL", &v178);
      if (v28)
      {
        CFRelease(v28);
        CFRelease(v28);
      }

      goto LABEL_182;
    }

    if (a2 != 3240)
    {
      if (a2 != 3269)
      {
        return 0;
      }

      goto LABEL_37;
    }

    if (!*(this + 78))
    {
      return 0;
    }

    v138 = atomic_load((*(*(this + 72) + 232) + 3052));
    if ((v138 & 1) == 0)
    {
      return 0;
    }

    v139 = **(this + 25);
    v140 = *(*(this + 72) + 232);
    v141 = atomic_load((v140 + 3052));
    if ((v141 & 1) != 0 && (v142 = atomic_load((v140 + 88)), v142 == 1))
    {
      v143 = (v140 + 2500);
      v144 = atomic_load(v143);
      if (v144 == 3)
      {
        v145 = 1;
      }

      else
      {
        v152 = atomic_load(v143);
        v145 = v152 == 0;
      }
    }

    else
    {
      v145 = 0;
    }

    AUSM::OBHDConfig::getDirectSoundSource(buf, *(this + 78), *(this + 149), v145);
    v186 = *buf;
    v150 = *&buf[8];
    AUSM::DynamicSpatializer::setIRSource(v139, &v186);
    if (!v150)
    {
      return 0;
    }

    v151 = v150;
LABEL_215:
    std::__shared_weak_count::__release_shared[abi:ne200100](v151);
    return 0;
  }

  if (a2 <= 3308)
  {
    if ((a2 - 3274) < 2)
    {
      caulk::pooled_semaphore_mutex::_lock((this + 484));
      AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(buf, *(*(this + 72) + 232) + 896);
      v25 = *(this + 25);
      v26 = *buf;
      if (*buf)
      {
        CFRetain(*buf);
      }

      v180 = v26;
      AUSM::DivergentSpatializers::propertyDictionarySetValue(v25, @"HOANFCIRCustomURL", &v180);
      if (v26)
      {
        CFRelease(v26);
        CFRelease(v26);
      }

      goto LABEL_182;
    }

    if (a2 != 3279)
    {
      if (a2 != 3308 || !*(this + 22))
      {
        return 0;
      }

      caulk::pooled_semaphore_mutex::_lock((this + 488));
      v8 = *(this + 22);
      AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(buf, *(*(this + 72) + 232) + 2728);
      DynamicERSpatializer::setRoomPreset(v8, buf);
LABEL_156:
      applesauce::CF::DictionaryRef::~DictionaryRef(buf);
      v125 = (this + 488);
LABEL_183:
      caulk::pooled_semaphore_mutex::_unlock(v125);
      return 0;
    }

    caulk::pooled_semaphore_mutex::_lock((this + 484));
    AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&v176, *(*(this + 72) + 232) + 2128);
    if (v176)
    {
      applesauce::CF::StringRef::from_get(&v174, kOptionalFeatureSourceExtent);
      v127 = applesauce::CF::DictionaryRef::operator->(&v176);
      v128 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(*v127, kOptionalFeatureSourceExtent);
      v173 = (v128 > 0xFFu) & v128;
      applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,BOOL>(buf, v174, &v173);
      applesauce::CF::StringRef::from_get(&v172, kOptionalFeatureNearFieldHOA);
      v129 = applesauce::CF::DictionaryRef::operator->(&v176);
      v130 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(*v129, kOptionalFeatureNearFieldHOA);
      v171 = (v130 > 0xFFu) & v130;
      applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,BOOL>(&buf[16], v172, &v171);
      applesauce::CF::StringRef::from_get(&v170, kOptionalFeatureBinauralOffRotation);
      v131 = applesauce::CF::DictionaryRef::operator->(&v176);
      v132 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(*v131, kOptionalFeatureBinauralOffRotation);
      v169 = (v132 > 0xFFu) & v132;
      applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,BOOL>(v188, v170, &v169);
      cf[0] = buf;
      cf[1] = 3;
      CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(cf);
      v134 = 0;
      v175 = CFDictionaryRef;
      do
      {
        v135 = v188[v134 + 1];
        if (v135)
        {
          CFRelease(v135);
        }

        v136 = *&buf[v134 * 8 + 32];
        if (v136)
        {
          CFRelease(v136);
        }

        v134 -= 2;
      }

      while (v134 != -6);
      applesauce::CF::StringRef::~StringRef(&v170);
      applesauce::CF::StringRef::~StringRef(&v172);
      applesauce::CF::StringRef::~StringRef(&v174);
      v137 = *(this + 25);
      applesauce::CF::DictionaryRef::DictionaryRef(&v168, CFDictionaryRef);
      AUSM::DivergentSpatializers::setOptionalFeatureSupportDictionary(v137, &v168);
      applesauce::CF::DictionaryRef::~DictionaryRef(&v168);
      applesauce::CF::DictionaryRef::~DictionaryRef(&v175);
    }

    v12 = &v176;
    goto LABEL_168;
  }

  if (a2 <= 5683)
  {
    if (a2 == 3309)
    {
      if (!*(this + 23))
      {
        return 0;
      }

      caulk::pooled_semaphore_mutex::_lock((this + 488));
      v124 = *(this + 23);
      AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(buf, *(*(this + 72) + 232) + 2968);
      DynamicERSpatializer::setRoomPreset(v124, buf);
      goto LABEL_156;
    }

    if (a2 != 5003)
    {
      return 0;
    }

    caulk::pooled_semaphore_mutex::_lock((this + 484));
    v11 = *(this + 25);
    AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&v177, *(*(this + 72) + 232) + 1416);
    AUSM::DivergentSpatializers::setPropertyDictionary(v11, &v177);
    v12 = &v177;
LABEL_168:
    applesauce::CF::DictionaryRef::~DictionaryRef(v12);
    goto LABEL_182;
  }

  if (a2 == 5684)
  {
    atomic_store(1u, this + 480);
    return 0;
  }

  if (a2 == 5687 && *(this + 25) && *(this + 48) == 7 && *(this + 49) == 1)
  {
    v16 = *(this + 78);
    if (!v16)
    {
      AUSM::IRManager::getHRIRAttributes(buf, *(this + 73));
      if (v189 == 1)
      {
        std::allocate_shared[abi:ne200100]<IR::DataLoaderSourceWithSizeAverage,std::allocator<IR::DataLoaderSourceWithSizeAverage>,IR::IRDataAttributes &,0>();
      }

      std::allocate_shared[abi:ne200100]<IR::DataLoaderSource,std::allocator<IR::DataLoaderSource>,IR::IRDataAttributes &,0>();
    }

    v17 = *(*(this + 72) + 232);
    v18 = atomic_load((v17 + 3052));
    if ((v18 & 1) != 0 && (v19 = atomic_load((v17 + 88)), v19 == 1))
    {
      v20 = (v17 + 2500);
      v21 = atomic_load(v20);
      if (v21 == 3)
      {
        v22 = 1;
      }

      else
      {
        v164 = atomic_load(v20);
        v22 = v164 == 0;
      }
    }

    else
    {
      v22 = 0;
    }

    AUSM::OBHDConfig::getDirectSoundSource(buf, v16, *(this + 149), v22);
    v153 = *(this + 22);
    v165 = *buf;
    v154 = *&buf[8];
    if (v153)
    {
      DynamicERSpatializer::HRIRChanged(v153);
    }

    v155 = *(this + 23);
    if (v155)
    {
      DynamicERSpatializer::HRIRChanged(v155);
    }

    v156 = **(this + 25);
    v185 = v165;
    if (v154)
    {
      atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v157 = AUSM::DynamicSpatializer::setIRSource(v156, &v185);
    if (*(&v185 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v185 + 1));
    }

    if (v157)
    {
      v158 = *(this + 25);
      v159 = *(v158 + 8);
      if (v159 && *(v158 + 16))
      {
        v184 = v165;
        if (v154)
        {
          atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (AUSM::DynamicSpatializer::setIRSource(v159, &v184))
        {
          v160 = *(v158 + 16);
          v183 = v165;
          if (v154)
          {
            atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v161 = AUSM::DynamicSpatializer::setIRSource(v160, &v183) ^ 1;
          if (*(&v183 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v183 + 1));
          }
        }

        else
        {
          v161 = 1;
        }

        if (*(&v184 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v184 + 1));
        }

        if (v161)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v162 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            v163 = (this + 600);
            if (*(this + 623) < 0)
            {
              v163 = *v163;
            }

            *buf = 136315394;
            *&buf[4] = v163;
            *&buf[12] = 2080;
            *&buf[14] = "PropertyChanged";
            _os_log_error_impl(&dword_1DDB85000, v162, OS_LOG_TYPE_ERROR, "[%s|%s] Failed to update HRIRAttributes for divergence spatializers", buf, 0x16u);
          }
        }
      }
    }

    else
    {
      AUSpatialMixerV2ChannelProcessor::initializeSpatializer(this, *(this + 48), *(this + 49));
    }

    if (v154)
    {
      v151 = v154;
      goto LABEL_215;
    }
  }

  return 0;
}

void sub_1DDDDCCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, int a43, __int16 a44, char a45, char a46, int a47, __int16 a48, char a49, char a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, std::__shared_weak_count *a56, uint64_t a57, std::__shared_weak_count *a58, uint64_t a59, uint64_t a60)
{
  if (a56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a56);
  }

  if (a58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a58);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialMixerV2ChannelProcessor::setLFERollOff(AUSpatialMixerV2ChannelProcessor *this, float a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(this + 504);
  if (v3)
  {
    if (a2 <= 0.0)
    {
      v9 = xmmword_1DE095300;
      v6 = 0uLL;
      v8.f64[0] = 0.0;
    }

    else
    {
      v4 = __sincos_stret(fmin(a2, 3.11017673));
      v5 = 1.0 / (v4.__sinval * 0.707106781 + 1.0);
      *&v6 = v4.__cosval * -2.0 * v5;
      *(&v6 + 1) = v5 - v4.__sinval * 0.707106781 * v5;
      v7.f64[0] = 0.5 - v4.__cosval * 0.5;
      v7.f64[1] = v7.f64[0] + v7.f64[0];
      v8 = vmulq_n_f64(v7, v5);
      v9 = v8;
    }

    v14 = v9;
    v15 = v8.f64[0];
    v16 = v6;
    Setup = vDSP_biquad_CreateSetup(&v14, 1uLL);
  }

  else
  {
    Setup = 0;
  }

  caulk::pooled_semaphore_mutex::_lock((this + 484));
  LODWORD(v14) = 0;
  std::vector<float>::resize(this + 66, 4uLL, &v14, v11);
  v12 = *(this + 64);
  *(this + 64) = Setup;
  if (v12)
  {
    (*(this + 65))();
  }

  *(this + 65) = MEMORY[0x1E6958BA0];
  return caulk::pooled_semaphore_mutex::_unlock((this + 484));
}

void sub_1DDDDD1F0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1DDDDD27C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2ChannelProcessor::initializeSpatializer(AUSpatialMixerV2ChannelProcessor *this, int a2, int a3)
{
  v87 = *MEMORY[0x1E69E9840];
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        operator new();
      }

      operator new();
    }

    if (!a2)
    {
      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_22;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      operator new();
    }

    operator new();
  }

  if (a2 == 6)
  {
    IR::getPresetDataAttributes();
    operator new();
  }

  if (a2 != 7)
  {
LABEL_22:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v7 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v25 = (this + 600);
      if (*(this + 623) < 0)
      {
        v25 = *v25;
      }

      v78[0] = 136315650;
      *&v78[1] = v25;
      v79 = 2080;
      v80 = "initializeSpatializer";
      v81 = 1024;
      v82 = a2;
      _os_log_error_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid spatialization algorithm %u", v78, 0x1Cu);
    }

    operator new();
  }

  if (a3 != 3 && *(this + 63) != 1)
  {
    if (a3 != 4)
    {
      if (a3 != 2)
      {
        if (a3 == 1)
        {
          v8 = *(this + 78);
          if (v8)
          {
            v9 = *(*(this + 72) + 232);
            v10 = atomic_load((v9 + 3052));
            if ((v10 & 1) != 0 && (v11 = atomic_load((v9 + 88)), v11 == 1))
            {
              v12 = (v9 + 2500);
              v13 = atomic_load(v12);
              if (v13 == 3)
              {
                v14 = 1;
              }

              else
              {
                v65 = atomic_load(v12);
                v14 = v65 == 0;
              }
            }

            else
            {
              v14 = 0;
            }

            AUSM::OBHDConfig::getDirectSoundSource(v78, v8, *(this + 149), v14);
            std::make_unique[abi:ne200100]<HRTFOBHDSpatializer,std::shared_ptr<IR::WeightedSumOfCache>,std::atomic<BOOL> const&,std::atomic<BOOL> const&,0>();
          }

          AUSM::IRManager::getHRIRAttributes(v78, *(this + 73));
          AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v77, *(*(this + 72) + 232) + 968);
          if (v77)
          {
            applesauce::CF::URLRef::URLRef(&v74, v77);
            IR::IRDataAttributes::IRDataAttributes(&__p, v74, 128, 1, 2, 0, 0.0);
            applesauce::CF::URLRef::~URLRef(&v74);
          }

          else
          {
            IR::getPresetDataAttributes();
          }

          AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&v73, *(*(this + 72) + 232) + 2200);
          isEnabledFeature = AUSM::GlobalProperties::isEnabledFeature(*(*(this + 72) + 232), @"NearFieldHRTF");
          std::make_unique[abi:ne200100]<HRTFNFSpatializer,IR::IRDataAttributes &,IR::IRDataAttributes &,applesauce::CF::DictionaryRef,BOOL,std::atomic<BOOL> const&,0>();
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v24 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v66 = (this + 600);
          if (*(this + 623) < 0)
          {
            v66 = *v66;
          }

          v78[0] = 136315650;
          *&v78[1] = v66;
          v79 = 2080;
          v80 = "initializeSpatializer";
          v81 = 1024;
          v82 = a3;
          _os_log_error_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid output type %u with useOutputType algorithm", v78, 0x1Cu);
        }

        _ZNSt3__111make_uniqueB8ne200100I11SpatializerJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS3_EEEEDpOT0_();
      }

      v15 = *(*(this + 72) + 232);
      if (*(v15 + 3053) & 1) != 0 || (v16 = atomic_load((v15 + 3054)), (v16))
      {
        AUSM::IRManager::getXTCIRAttributes(v78, *(this + 73));
        v17 = *(this + 78);
        if (v17)
        {
          v18 = *(*(this + 72) + 232);
          v19 = atomic_load((v18 + 3052));
          if ((v19 & 1) != 0 && (v20 = atomic_load((v18 + 88)), v20 == 1))
          {
            v21 = (v18 + 2500);
            v22 = atomic_load(v21);
            if (v22 == 3)
            {
              v23 = 1;
            }

            else
            {
              v67 = atomic_load(v21);
              v23 = v67 == 0;
            }
          }

          else
          {
            v23 = 0;
          }

          AUSM::OBHDConfig::getDirectSoundSource(&__p, v17, *(this + 149), v23);
          std::make_unique[abi:ne200100]<HRTFOBHDSpatializer,std::shared_ptr<IR::WeightedSumOfCache>,std::atomic<BOOL> const&,std::atomic<BOOL> const&,0>();
        }

        std::make_unique[abi:ne200100]<HRTFXTCSpatializer,IR::IRDataAttributes &,std::atomic<BOOL> const&,0>();
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v26 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v27 = (this + 600);
        if (*(this + 623) < 0)
        {
          v27 = *v27;
        }

        v28 = **(this + 27);
        p_p = &__p;
        GetStringFromAudioChannelLayoutTag(&__p, v28);
        if (v76 < 0)
        {
          p_p = __p;
        }

        v31 = ausdk::AUChannelLayout::NumberChannels(*(this + 27), v30);
        v78[0] = 136316162;
        *&v78[1] = v27;
        v79 = 2080;
        v80 = "initializeSpatializer";
        v81 = 1024;
        v82 = v28;
        v83 = 2080;
        v84 = p_p;
        v85 = 1024;
        v86 = v31;
        _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_DEFAULT, "[%s|%s] Spatial audio over built-in speakers not available on this hardware (no XTCIR); reverting to VBAP panning using output channel layout tag = %u (%s) with %u channels", v78, 0x2Cu);
        if (v76 < 0)
        {
          operator delete(__p);
        }
      }

      CA::ChannelLayout::ChannelLayout(v78, *(this + 27));
      std::make_unique[abi:ne200100]<VBAPSpatializer,AudioChannelLayout &,0>();
    }

    std::make_unique[abi:ne200100]<HOASpatializer,AudioChannelLayout const&,0>();
  }

  v6 = atomic_load((*(*(this + 72) + 232) + 2556));
  if (v6 == 1)
  {
    if (CartesianPannerNN::implements(**(this + 27)) && *(this + 63) != 1)
    {
      operator new();
    }

LABEL_28:
    operator new();
  }

  if (!v6)
  {
    goto LABEL_28;
  }

  AUSpatialMixerV2ChannelProcessor::initializeERSpatializers(this, 7u, a3);
  std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>((this + 484), (this + 488));
  v32 = *(this + 1);
  v71 = 0;
  AUSM::DynamicSpatializer::setSpatializer(v32, &v71);
  v33 = v71;
  v71 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(this + 25);
  v70 = 0;
  AUSM::DivergentSpatializers::setSpatializer(v34, &v70, 0);
  v41 = v70;
  v70 = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  if (*(*(this + 81) + 464) == 1)
  {
    v42 = *(this + 25);
    v69 = 0;
    AUSM::DivergentSpatializers::setSpatializer(v42, &v69, 1);
    v43 = v69;
    v69 = 0;
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    v44 = *(this + 25);
    v68 = 0;
    AUSM::DivergentSpatializers::setSpatializer(v44, &v68, 2);
    v45 = v68;
    v68 = 0;
    if (v45)
    {
      (*(*v45 + 8))(v45);
    }
  }

  v46 = atomic_load(this + 552);
  if ((v46 & 1) == 0)
  {
    AUSM::DynamicSpatializer::initialize(*(this + 1), *(this + 61), *(this + 62), *(this + 64));
    v47 = *(this + 25);
    v48 = *(this + 61);
    v49 = *(this + 62);
    v50 = *(this + 64);
    v51 = AUSM::DynamicSpatializer::initialize(*v47, v48, v49, v50);
    v52 = v51;
    if (*(v47 + 24) == 1 && !v51)
    {
      v52 = AUSM::DynamicSpatializer::initialize(*(v47 + 8), v48, v49, v50);
      if (v52)
      {
LABEL_88:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v53 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v64 = (this + 600);
          if (*(this + 623) < 0)
          {
            v64 = *v64;
          }

          v78[0] = 136315650;
          *&v78[1] = v64;
          v79 = 2080;
          v80 = "initializeSpatializer";
          v81 = 1024;
          v82 = v52;
          _os_log_error_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_ERROR, "[%s|%s] Failed Spatializer initialization (%d)", v78, 0x1Cu);
        }

        goto LABEL_91;
      }

      v52 = AUSM::DynamicSpatializer::initialize(*(v47 + 16), v48, v49, v50);
    }

    if (!v52)
    {
      goto LABEL_91;
    }

    goto LABEL_88;
  }

LABEL_91:
  *(this + 48) = 7;
  *(this + 49) = a3;
  AUSM::ChannelGeometry::update((this + 640), 1, v35, v36, v37, v38, v39, v40);
  v54 = atomic_load((*(*(this + 72) + 232) + 2552));
  if (v54)
  {
    v55 = caulk::pooled_semaphore_mutex::try_lock((this + 464));
    if (v55)
    {
      v56 = (this + qword_1DE1121E8[v54] + 640);
      v57 = *v56;
      v58 = v56[1];
      v59 = v56[3];
      *(this + 23) = v56[2];
      *(this + 24) = v59;
      *(this + 21) = v57;
      *(this + 22) = v58;
      v60 = v56[4];
      v61 = v56[5];
      v62 = v56[7];
      *(this + 27) = v56[6];
      *(this + 28) = v62;
      *(this + 25) = v60;
      *(this + 26) = v61;
      caulk::pooled_semaphore_mutex::_unlock((this + 464));
    }

    atomic_store(v55 ^ 1, this + 480);
  }

  AUSpatialMixerV2ChannelProcessor::updateSpatializationParameters(this, 0);
  caulk::pooled_semaphore_mutex::_unlock((this + 484));
  caulk::pooled_semaphore_mutex::_unlock((this + 488));
  return 0;
}

void sub_1DDDDE7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, void *__p, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDDDEC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  JUMPOUT(0x1DDDDEBA4);
}

void sub_1DDDDEC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  JUMPOUT(0x1DDDDEBA8);
}

uint64_t AUSpatialMixerV2ChannelProcessor::enableReverbSendDecorrFilters(AUSpatialMixerV2ChannelProcessor *this, int a2)
{
  caulk::pooled_semaphore_mutex::_lock((this + 484));
  v4 = atomic_load(this + 88);
  if (a2 && (v4 & 1) == 0)
  {
    for (i = 16; i != 88; i += 24)
    {
      v6 = *(this + i);
      v7 = *(this + i + 8);
      while (v6 != v7)
      {
        v8 = *v6;
        v9 = *(*v6 + 8);
        v10 = *(*v6 + 16) - v9;
        if (v10 >= 1)
        {
          bzero(v9, v10);
        }

        *(v8 + 56) = 0;
        ++v6;
      }
    }
  }

  atomic_store(a2, this + 88);

  return caulk::pooled_semaphore_mutex::_unlock((this + 484));
}

uint64_t AUSpatialMixerV2ChannelProcessor::setEarlyReflectionsIRDataAttributes(uint64_t a1, int a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 488));
  v4 = *(a1 + 624);
  if (v4)
  {
    if (!*(a1 + 152))
    {
      goto LABEL_21;
    }

    AUSM::OBHDConfig::getEarlyRoomSource(&v26, v4, 1, *(a1 + 596));
    v5 = *(a1 + 152);
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (v8 != v7)
      {
        v5 = *(a1 + 152);
LABEL_15:
        v13 = v27;
        v33[0] = v8;
        v33[1] = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        IR::DynamicIRProcessor::setIRSource(v5, v33);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }
    }

    else
    {
      v8 = v26;
      if (v26 != v7)
      {
        goto LABEL_15;
      }
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

LABEL_21:
    if (!*(a1 + 160))
    {
      goto LABEL_32;
    }

    AUSM::OBHDConfig::getEarlyRoomSource(&v26, *(a1 + 624), 0, *(a1 + 596));
    v14 = *(a1 + 160);
    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      if (v17 != v16)
      {
        v14 = *(a1 + 160);
LABEL_26:
        v18 = v27;
        v32[0] = v17;
        v32[1] = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        IR::DynamicIRProcessor::setIRSource(v14, v32);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }
    }

    else
    {
      v17 = v26;
      if (v26 != v16)
      {
        goto LABEL_26;
      }
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

LABEL_32:
    if (!*(a1 + 168))
    {
      return caulk::pooled_semaphore_mutex::_unlock((a1 + 488));
    }

    AUSM::OBHDConfig::getEarlyRoomSource(&v26, *(a1 + 624), 2, *(a1 + 596));
    v19 = *(a1 + 168);
    v21 = *(v19 + 16);
    v20 = *(v19 + 24);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      if (v22 != v21)
      {
        v19 = *(a1 + 168);
LABEL_37:
        v23 = v27;
        v31[0] = v22;
        v31[1] = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        IR::DynamicIRProcessor::setIRSource(v19, v31);
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }
      }
    }

    else
    {
      v22 = v26;
      if (v26 != v21)
      {
        goto LABEL_37;
      }
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    return caulk::pooled_semaphore_mutex::_unlock((a1 + 488));
  }

  if (a2 == 1)
  {
    if (*(a1 + 152))
    {
      v9 = *(a1 + 584);
      std::mutex::lock((v9 + 1560));
      IR::IRDataAttributes::IRDataAttributes(&v26, (v9 + 528));
      std::mutex::unlock((v9 + 1560));
      std::allocate_shared[abi:ne200100]<IR::DataLoaderSource,std::allocator<IR::DataLoaderSource>,IR::IRDataAttributes,0>();
    }
  }

  else if (*(a1 + 160))
  {
    v10 = *(a1 + 584);
    std::mutex::lock((v10 + 1560));
    IR::IRDataAttributes::IRDataAttributes(&v26, (v10 + 864));
    std::mutex::unlock((v10 + 1560));
    std::allocate_shared[abi:ne200100]<IR::DataLoaderSource,std::allocator<IR::DataLoaderSource>,IR::IRDataAttributes,0>();
  }

  if (*(a1 + 168))
  {
    v11 = *(a1 + 584);
    std::mutex::lock((v11 + 1560));
    IR::IRDataAttributes::IRDataAttributes(&v26, (v11 + 1200));
    std::mutex::unlock((v11 + 1560));
    v12 = *(a1 + 168);
    if (v26)
    {
      std::allocate_shared[abi:ne200100]<IR::DataLoaderSource,std::allocator<IR::DataLoaderSource>,IR::IRDataAttributes &,0>();
    }

    v25[0] = 0;
    v25[1] = 0;
    IR::DynamicIRProcessor::setIRSource(v12, v25);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 488));
}

void sub_1DDDDF2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  IR::IRDataAttributes::~IRDataAttributes(va);
  caulk::pooled_semaphore_mutex::_unlock((v8 + 488));
  _Unwind_Resume(a1);
}

void AUSM::AppleSauceCFWithMutex<__CFArray const*>::load(void *a1, uint64_t a2)
{
  std::mutex::lock((a2 + 8));
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v4;

  std::mutex::unlock((a2 + 8));
}

uint64_t *AUSpatialMixerV2ChannelProcessor::initializeERSpatializers(AUSpatialMixerV2ChannelProcessor *this, unsigned int a2, int a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v38 = 1;
  v39 = 0;
  v6 = atomic_load((*(*(this + 72) + 232) + 162));
  v40 = v6 & 1;
  v7 = atomic_load((*(*(this + 72) + 232) + 161));
  v41 = v7 & 1;
  if (_os_feature_enabled_impl())
  {
    v8 = atomic_load((*(*(this + 72) + 232) + 2565));
  }

  else
  {
    v8 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v9 = atomic_load((*(*(this + 72) + 232) + 2808));
  }

  else
  {
    v9 = 0;
  }

  if (a2 < 7)
  {
    goto LABEL_8;
  }

  if (a2 != 7)
  {
    goto LABEL_16;
  }

  if (*(this + 63) == 1)
  {
    v11 = *(this + 73);
    std::mutex::lock((v11 + 1560));
    IR::IRDataAttributes::IRDataAttributes(cf, (v11 + 528));
    std::mutex::unlock((v11 + 1560));
    AUSM::Messenger::instance(v12);
    AUSM::Messenger::get(&v37);
    operator new();
  }

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v30 = *(this + 78);
      if (v30)
      {
        v38 = 0;
        EarlyRoomSource = AUSM::OBHDConfig::getEarlyRoomSource(cf, v30, 1, *(this + 149));
        AUSM::Messenger::instance(EarlyRoomSource);
        AUSM::Messenger::get(&v47);
        std::make_unique[abi:ne200100]<IR::DynamicIRProcessor,std::shared_ptr<IR::WeightedSumOfCache>,IR::DynamicIRProcessor::ConfigParams &,std::shared_ptr<caulk::concurrent::messenger>,0>();
      }

      if ((v8 & 1) == 0)
      {
        AUSM::IRManager::getEarlyReverbAttributes(cf, *(this + 73), 1);
        AUSM::Messenger::instance(v32);
        AUSM::Messenger::get(&v47);
        std::make_unique[abi:ne200100]<IR::DynamicIRProcessor,IR::IRDataAttributes,IR::DynamicIRProcessor::ConfigParams &,std::shared_ptr<caulk::concurrent::messenger>,0>();
      }

      if ((v9 & 1) == 0)
      {
        AUSM::IRManager::getEarlyReverbAttributes(cf, *(this + 73), 0);
        AUSM::Messenger::instance(v33);
        AUSM::Messenger::get(&v47);
        std::make_unique[abi:ne200100]<IR::DynamicIRProcessor,IR::IRDataAttributes,IR::DynamicIRProcessor::ConfigParams &,std::shared_ptr<caulk::concurrent::messenger>,0>();
      }

      goto LABEL_42;
    }

    if (a3 == 2)
    {
      v23 = *(*(this + 72) + 232);
      if ((*(v23 + 3053) & 1) == 0)
      {
        v24 = atomic_load((v23 + 3054));
        if ((v24 & 1) == 0)
        {
          AUSM::IRManager::getEarlyReverbAttributes(cf, *(this + 73), 1);
          AUSM::Messenger::instance(v35);
          AUSM::Messenger::get(&v47);
          std::make_unique[abi:ne200100]<IR::DynamicIRProcessor,IR::IRDataAttributes,IR::DynamicIRProcessor::ConfigParams &,std::shared_ptr<caulk::concurrent::messenger>,0>();
        }
      }

      v25 = *(this + 78);
      if (v25)
      {
        v26 = AUSM::OBHDConfig::getEarlyRoomSource(cf, v25, 1, *(this + 149));
        AUSM::Messenger::instance(v26);
        AUSM::Messenger::get(&v47);
        std::make_unique[abi:ne200100]<IR::DynamicIRProcessor,std::shared_ptr<IR::WeightedSumOfCache>,IR::DynamicIRProcessor::ConfigParams &,std::shared_ptr<caulk::concurrent::messenger>,0>();
      }

      if ((v8 & 1) == 0)
      {
        AUSM::IRManager::getEarlyReverbAttributes(cf, *(this + 73), 1);
        AUSM::Messenger::instance(v34);
        AUSM::Messenger::get(&v47);
        std::make_unique[abi:ne200100]<IR::DynamicIRProcessor,IR::IRDataAttributes,IR::DynamicIRProcessor::ConfigParams &,std::shared_ptr<caulk::concurrent::messenger>,0>();
      }

LABEL_42:
      v10 = 0;
      goto LABEL_9;
    }

    goto LABEL_30;
  }

  if (a3 == 3)
  {
    goto LABEL_33;
  }

  if (a3 != 4)
  {
LABEL_30:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v27 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v36 = (this + 600);
      if (*(this + 623) < 0)
      {
        v36 = *v36;
      }

      *cf = 136315650;
      *&cf[4] = v36;
      *&cf[12] = 2080;
      *&cf[14] = "initializeERSpatializers";
      v49 = 1024;
      v50 = a3;
      _os_log_error_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid output type %u when trying to initialize with kSpatializationAlgorithm_UseOutputType; reverting to external speakers", cf, 0x1Cu);
    }

LABEL_33:
    v28 = *(this + 73);
    std::mutex::lock((v28 + 1560));
    IR::IRDataAttributes::IRDataAttributes(cf, (v28 + 528));
    std::mutex::unlock((v28 + 1560));
    AUSM::Messenger::instance(v29);
    AUSM::Messenger::get(&v37);
    operator new();
  }

LABEL_8:
  v10 = 1;
LABEL_9:
  if (!(v10 & 1 | ((v8 & 1) == 0)))
  {
    operator new();
  }

  if (!(v10 & 1 | ((v9 & 1) == 0)))
  {
    operator new();
  }

LABEL_16:
  std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>((this + 484), (this + 488));
  v14 = *(this + 19);
  v13 = *(this + 20);
  v15 = v45;
  *(this + 19) = v46;
  *(this + 20) = v15;
  v45 = v13;
  v46 = v14;
  v16 = v44;
  v17 = *(this + 22);
  v44 = *(this + 21);
  v18 = v43;
  *(this + 21) = v16;
  *(this + 22) = v18;
  v19 = *(this + 23);
  *(this + 23) = v42;
  caulk::pooled_semaphore_mutex::_unlock((this + 484));
  caulk::pooled_semaphore_mutex::_unlock((this + 488));
  if (v19)
  {
    AUSM::DynamicSpatializer::~DynamicSpatializer(v19);
    MEMORY[0x1E12BD160](v20);
  }

  if (v17)
  {
    AUSM::DynamicSpatializer::~DynamicSpatializer(v17);
    MEMORY[0x1E12BD160](v21);
  }

  std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](&v44, 0);
  std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](&v45, 0);
  return std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](&v46, 0);
}

void sub_1DDDDFCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va5, a6);
  va_start(va4, a6);
  va_start(va3, a6);
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, AUSM::DynamicSpatializer *);
  va_copy(va2, va1);
  v9 = va_arg(va2, AUSM::DynamicSpatializer *);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  va_copy(va4, va3);
  v13 = va_arg(va4, void);
  va_copy(va5, va4);
  v15 = va_arg(va5, void);
  v17 = va_arg(va5, void);
  v18 = va_arg(va5, std::__shared_weak_count *);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  IR::IRDataAttributes::~IRDataAttributes(va5);
  std::unique_ptr<DynamicERSpatializer>::reset[abi:ne200100](va);
  std::unique_ptr<DynamicERSpatializer>::reset[abi:ne200100](va1);
  std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](va2, 0);
  std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](va3, 0);
  std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](va4, 0);
  _Unwind_Resume(a1);
}

void sub_1DDDDFF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x1E12BD160](v11, v10);
  _Unwind_Resume(a1);
}

void sub_1DDDE007C(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E12BD160](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>(caulk::pooled_semaphore_mutex *this, caulk::pooled_semaphore_mutex *a2)
{
  while (1)
  {
    caulk::pooled_semaphore_mutex::_lock(this);
    result = caulk::pooled_semaphore_mutex::try_lock(a2);
    if (result)
    {
      break;
    }

    caulk::pooled_semaphore_mutex::_unlock(this);
    sched_yield();
    caulk::pooled_semaphore_mutex::_lock(a2);
    result = caulk::pooled_semaphore_mutex::try_lock(this);
    if (result)
    {
      break;
    }

    caulk::pooled_semaphore_mutex::_unlock(a2);
    sched_yield();
  }

  return result;
}

AUSM::DynamicSpatializer *std::unique_ptr<DynamicERSpatializer>::reset[abi:ne200100](AUSM::DynamicSpatializer **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    AUSM::DynamicSpatializer::~DynamicSpatializer(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void sub_1DDDE01C8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void AUSpatialMixerV2ChannelProcessor::updateSpatializationParameters(AUSpatialMixerV2ChannelProcessor *this, char a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = *(this + 76);
  LODWORD(v5) = HIDWORD(*(this + 152));
  LODWORD(v6) = *(this + 153);
  v7 = fmaxf(fabsf(*&v4), fmaxf(fabsf(v5), fabsf(v6)));
  if (v7 <= 1.8447e19)
  {
    v9 = 1.0;
    if (v7 >= 5.421e-20)
    {
      goto LABEL_6;
    }

    v8 = 1769996288;
  }

  else
  {
    v8 = 360710144;
  }

  v9 = *&v8;
LABEL_6:
  v57 = *(this + 76);
  v10 = hypotf(*&v4, COERCE_FLOAT(HIDWORD(*(this + 152))));
  v11 = atan2f(-v6, v10) * 57.296;
  v12 = atan2f(v5, v57.f32[0]) * 57.296;
  v13 = sqrtf((((v5 * v9) * (v5 * v9)) + ((v57.f32[0] * v9) * (v57.f32[0] * v9))) + ((v6 * v9) * (v6 * v9))) / v9;
  v14 = -v12;
  if (!*(*(this + 80) + 179))
  {
    v14 = v12;
  }

  AUSpatialMixerV2ChannelProcessor::setERProcessorIRDataCoordinate(this, 0, v14);
  AUSpatialMixerV2ChannelProcessor::setERProcessorIRDataCoordinate(this, 1u, v11);
  AUSpatialMixerV2ChannelProcessor::setERProcessorIRDataCoordinate(this, 2u, v13);
  AUSM::DynamicSpatializer::updateParameters(*(this + 1), a2);
  v15 = *(this + 25);
  AUSM::DynamicSpatializer::updateParameters(*v15, a2);
  if (*(v15 + 24) == 1)
  {
    AUSM::DynamicSpatializer::updateParameters(*(v15 + 8), a2);
    AUSM::DynamicSpatializer::updateParameters(*(v15 + 16), a2);
  }

  v16 = *(this + 309);
  if (!*(this + 1232))
  {
    v16 = 0.0;
  }

  *(this + 52) = v16;
  v17 = *(this + 70);
  if (v17)
  {
    v18 = vmulq_f32(*(this + 44), *(this + 44));
    v19 = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32)) * 2.907;
    if (*(this + 78) < v19)
    {
      v19 = *(this + 78);
    }

    IR::DelayLine<float>::setDelay(v17, roundf(*(this + 61) * (v19 / 1000.0)));
  }

  v20 = *(this + 18);
  if (v20 && *(this + 1296) == 1)
  {
    v21 = *(this + 82);
    v22 = vmulq_f32(v21, v21);
    *v22.i8 = vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    v22.i32[0] = vadd_f32(*v22.i8, vdup_lane_s32(*v22.i8, 1)).u32[0];
    v23 = vrecpe_f32(v22.u32[0]);
    v24 = vmul_f32(v23, vrecps_f32(v22.u32[0], v23));
    v25 = vmulq_n_f32(vmulq_f32(v21, xmmword_1DE09BFF0), vmul_f32(v24, vrecps_f32(v22.u32[0], v24)).f32[0]);
    v26 = *(this + 76);
    v27 = vmulq_f32(v25, xmmword_1DE09BFF0);
    v28 = vnegq_f32(v27);
    v29 = vtrn2q_s32(v27, vtrn1q_s32(v27, v28));
    v30 = vmulq_lane_f32(vextq_s8(v27, v28, 8uLL), *&vnegq_f32(v26), 1);
    v31 = vrev64q_s32(v27);
    v31.i32[0] = v28.i32[1];
    v31.i32[3] = v28.i32[2];
    v32 = vmlsq_laneq_f32(vmlsq_lane_f32(v30, vextq_s8(v29, v29, 8uLL), *v26.f32, 0), v31, v26, 2);
    v33 = vnegq_f32(v32);
    v34 = vtrn2q_s32(v32, vtrn1q_s32(v32, v33));
    v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v32, v33, 8uLL), *v25.f32, 1), vextq_s8(v34, v34, 8uLL), v25.f32[0]);
    v36 = vrev64q_s32(v32);
    v36.i32[0] = v33.i32[1];
    v36.i32[3] = v33.i32[2];
    v58 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v32, v25, 3), v36, v25, 2), v35);
    v37 = atan2f(v58.f32[1], v58.f32[0]);
    v38 = hypotf(v58.f32[0], v58.f32[1]);
    v39 = atan2f(-v58.f32[2], v38);
    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    *buf = &__p;
    atomic_store(COERCE_UNSIGNED_INT(v37 * 57.296), std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(v20 + 96, 0) + 8);
    __dmb(0xBu);
    atomic_store(1u, (v20 + 120));
    v40 = *(this + 18);
    LODWORD(__p.__r_.__value_.__l.__data_) = 1;
    *buf = &__p;
    atomic_store(COERCE_UNSIGNED_INT(v39 * 57.296), std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(v40 + 96, 1u) + 8);
    __dmb(0xBu);
    atomic_store(1u, (v40 + 120));
  }

  if (*(this + 22))
  {
    v41 = atomic_load((*(*(this + 72) + 232) + 85));
    if (v41)
    {
      AUSM::DynamicSpatializer::updateParameters(*(this + 22), a2);
    }
  }

  if (*(this + 23))
  {
    v42 = atomic_load((*(*(this + 72) + 232) + 86));
    if (v42)
    {
      AUSM::DynamicSpatializer::updateParameters(*(this + 23), a2);
    }
  }

  if ((*(*(*(this + 72) + 232) + 3080) & 2) != 0)
  {
    if (*(this + 18) && *(this + 1296) == 1)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v43 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v44 = (this + 600);
      if (*(this + 623) < 0)
      {
        v44 = *v44;
      }

      p_p = &__p;
      AUSM::ObjectParameters::print(&__p, this + 76);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      Coordinate = IR::DynamicIRProcessor::getCoordinate(*(this + 18), 0);
      v47 = IR::DynamicIRProcessor::getCoordinate(*(this + 18), 1u);
      *buf = 136316162;
      *&buf[4] = v44;
      v61 = 2080;
      v62 = "updateSpatializationParameters";
      v63 = 2080;
      v64 = p_p;
      v65 = 2048;
      v66 = Coordinate;
      v67 = 2048;
      v68 = v47;
      v48 = "[%s|%s] AUSM_VERBOSE: %s, dirAz=%.1f, dirEl=%.1f";
      v49 = v43;
      v50 = 52;
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v51 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v52 = (this + 600);
      if (*(this + 623) < 0)
      {
        v52 = *v52;
      }

      AUSM::ObjectParameters::print(&__p, this + 76);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &__p;
      }

      else
      {
        v53 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = v52;
      v61 = 2080;
      v62 = "updateSpatializationParameters";
      v63 = 2080;
      v64 = v53;
      v48 = "[%s|%s] AUSM_VERBOSE: %s";
      v49 = v51;
      v50 = 32;
    }

    _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

LABEL_49:
    v54 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v55 = (this + 600);
      if (*(this + 623) < 0)
      {
        v55 = *v55;
      }

      AUSM::GainParameters::print(&__p, this + 336);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &__p;
      }

      else
      {
        v56 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = v55;
      v61 = 2080;
      v62 = "updateSpatializationParameters";
      v63 = 2080;
      v64 = v56;
      _os_log_impl(&dword_1DDB85000, v54, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_VERBOSE: %s", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1DDDE086C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *AUSpatialMixerV2ChannelProcessor::setERProcessorIRDataCoordinate(uint64_t *result, unsigned int a2, float a3)
{
  v5 = result;
  v6 = result[19];
  if (v6)
  {
    v9 = a2;
    v10 = &v9;
    result = std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(v6 + 96, a2);
    atomic_store(LODWORD(a3), result + 8);
    __dmb(0xBu);
    atomic_store(1u, (v6 + 120));
  }

  v7 = v5[20];
  if (v7)
  {
    v9 = a2;
    v10 = &v9;
    result = std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(v7 + 96, a2);
    atomic_store(LODWORD(a3), result + 8);
    __dmb(0xBu);
    atomic_store(1u, (v7 + 120));
  }

  v8 = v5[21];
  if (v8)
  {
    v9 = a2;
    v10 = &v9;
    result = std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(v8 + 96, a2);
    atomic_store(LODWORD(a3), result + 8);
    __dmb(0xBu);
    atomic_store(1u, (v8 + 120));
  }

  return result;
}

void AUSM::ObjectParameters::print(std::string *this, float32x4_t *a2)
{
  LODWORD(v4) = HIDWORD(a2->i64[0]);
  LODWORD(v5) = a2->i64[1];
  v6 = fmaxf(fabsf(COERCE_FLOAT(*a2)), fmaxf(fabsf(v4), fabsf(v5)));
  if (v6 > 1.8447e19)
  {
    v7 = 360710144;
LABEL_5:
    v8 = *&v7;
    goto LABEL_6;
  }

  v8 = 1.0;
  if (v6 < 5.421e-20)
  {
    v7 = 1769996288;
    goto LABEL_5;
  }

LABEL_6:
  v49 = *a2;
  v9 = hypotf(COERCE_FLOAT(*a2), COERCE_FLOAT(HIDWORD(a2->i64[0])));
  v10 = atan2f(-v5, v9) * 57.296;
  v11 = atan2f(v4, v49.f32[0]);
  v12 = sqrtf((((v4 * v8) * (v4 * v8)) + ((v49.f32[0] * v8) * (v49.f32[0] * v8))) + ((v5 * v8) * (v5 * v8))) / v8;
  v13 = (v11 * 57.296);
  v14 = v12;
  v15 = (log10f(a2[7].f32[1]) * 20.0);
  v16 = (log10f(a2[7].f32[0]) * 20.0);
  v17 = log10f(a2[7].f32[2]);
  caulk::make_string("az=%.1f, el=%.1f, r=%.2f, tuningGaindB=%.1f, rGaindB=%.1f, ppDRRdB=%.1f, internalized=%.1f", this, *&v13, v10, *&v14, *&v15, *&v16, (v17 * 20.0), a2[7].f32[3]);
  v19 = a2[4];
  v20 = vmulq_f32(v19, v19);
  if (sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)) > 0.001)
  {
    caulk::make_string(" -- size: w=%.2f, h=%.2f, d=%.2f", &__p, v19.f32[1], v19.f32[2], v19.f32[0]);
    v21 = (v54 & 0x80u) == 0 ? &__p : __p;
    v22 = (v54 & 0x80u) == 0 ? v54 : v53;
    v18 = std::string::append(this, v21, v22);
    if (v54 < 0)
    {
      operator delete(__p);
    }
  }

  if (a2[1].i8[0] == 1)
  {
    v23 = a2[2];
    LODWORD(v24) = HIDWORD(a2[2].i64[0]);
    LODWORD(v25) = a2[2].i64[1];
    v26 = fmaxf(fabsf(v23.f32[0]), fmaxf(fabsf(v24), fabsf(v25)));
    if (v26 <= 1.8447e19)
    {
      v28 = 1.0;
      if (v26 >= 5.421e-20)
      {
        goto LABEL_21;
      }

      v27 = 1769996288;
    }

    else
    {
      v27 = 360710144;
    }

    v28 = *&v27;
LABEL_21:
    v50 = a2[2];
    v29 = hypotf(v23.f32[0], COERCE_FLOAT(HIDWORD(a2[2].i64[0])));
    v30 = atan2f(-v25, v29) * 57.296;
    v31 = atan2f(v24, v50.f32[0]) * 57.296;
    v32 = sqrtf((((v24 * v28) * (v24 * v28)) + ((v50.f32[0] * v28) * (v50.f32[0] * v28))) + ((v25 * v28) * (v25 * v28))) / v28;
    v33 = a2[3];
    LODWORD(v34) = HIDWORD(a2[3].i64[0]);
    LODWORD(v35) = a2[3].i64[1];
    v36 = fmaxf(fabsf(v33.f32[0]), fmaxf(fabsf(v34), fabsf(v35)));
    if (v36 <= 1.8447e19)
    {
      v38 = 1.0;
      if (v36 >= 5.421e-20)
      {
        goto LABEL_26;
      }

      v37 = 1769996288;
    }

    else
    {
      v37 = 360710144;
    }

    v38 = *&v37;
LABEL_26:
    v51 = a2[3];
    v39 = hypotf(v33.f32[0], COERCE_FLOAT(HIDWORD(a2[3].i64[0])));
    v40 = atan2f(-v35, v39) * 57.296;
    v41 = atan2f(v34, v51.f32[0]);
    caulk::make_string(" -- div=%.2f left: az=%.1f, el=%.1f, r=%.1f; right: az=%.1f, el=%.1f, r=%.1f", &__p, a2[1].f32[1], v31, v30, v32, (v41 * 57.296), v40, (sqrtf((((v34 * v38) * (v34 * v38)) + ((v51.f32[0] * v38) * (v51.f32[0] * v38))) + ((v35 * v38) * (v35 * v38))) / v38));
    if ((v54 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v54 & 0x80u) == 0)
    {
      v43 = v54;
    }

    else
    {
      v43 = v53;
    }

    v18 = std::string::append(this, p_p, v43);
    if (v54 < 0)
    {
      operator delete(__p);
    }
  }

  if (a2[5].i8[0] == 1)
  {
    v44 = AUSM::auCoordQuaternionToEuler(v18, a2[6]);
    caulk::make_string(" -- yaw=%.1f pitch=%.1f roll=%.1f", &__p, v44, v45, v46);
    if ((v54 & 0x80u) == 0)
    {
      v47 = &__p;
    }

    else
    {
      v47 = __p;
    }

    if ((v54 & 0x80u) == 0)
    {
      v48 = v54;
    }

    else
    {
      v48 = v53;
    }

    std::string::append(this, v47, v48);
    if (v54 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1DDDE0DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 + 23) < 0)
  {
    operator delete(*v25);
  }

  _Unwind_Resume(exception_object);
}

float IR::DynamicIRProcessor::getCoordinate(uint64_t a1, unsigned int a2)
{
  v6 = a2;
  v2 = *(a1 + 104);
  for (result = 0.0; v2; v2 = *v2)
  {
    v4 = *(v2 + 7);
    if (v4 <= a2)
    {
      if (v4 >= a2)
      {
        v7 = &v6;
        return COERCE_FLOAT(atomic_load(std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(a1 + 96, a2) + 8));
      }

      ++v2;
    }
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void Spatializer::Spatializer(Spatializer *this)
{
  *this = &unk_1F593A308;
  *(this + 1) = 0;
  *(this + 8) = 256;
  *(this + 20) = 0x400000000;
  *(this + 4) = 0;
  *(this + 5) = 0;
  _ZNSt3__115allocate_sharedB8ne200100I17SpatializerParamsNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1DDDE1034(_Unwind_Exception *a1)
{
  applesauce::CF::DictionaryRef::~DictionaryRef((v1 + 40));
  applesauce::CF::DictionaryRef::~DictionaryRef(v2);
  _Unwind_Resume(a1);
}

void sub_1DDDE13B4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 38);
  *(v1 + 38) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Spatializer::~Spatializer(v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_1DDDE15A0(_Unwind_Exception *a1)
{
  MEMORY[0x1E12BD160](v3, 0x10A1C40AF302FDBLL);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](v1 + 38, 0);
  Spatializer::~Spatializer(v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_1DDDE1E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, VBAP **a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  v32 = *(v29 + 480);
  if (v32)
  {
    *(v29 + 488) = v32;
    operator delete(v32);
  }

  v33 = *(v29 + 456);
  if (v33)
  {
    *(v29 + 464) = v33;
    operator delete(v33);
  }

  v34 = *(v29 + 432);
  if (v34)
  {
    *(v29 + 440) = v34;
    operator delete(v34);
  }

  v35 = *(v29 + 408);
  if (v35)
  {
    *(v29 + 416) = v35;
    operator delete(v35);
  }

  v36 = *a9;
  if (*a9)
  {
    *(v29 + 392) = v36;
    operator delete(v36);
  }

  v37 = *a10;
  if (*a10)
  {
    *(v29 + 368) = v37;
    operator delete(v37);
  }

  v38 = *v30;
  if (*v30)
  {
    *(v29 + 344) = v38;
    operator delete(v38);
  }

  std::unique_ptr<VBAP>::reset[abi:ne200100]((v29 + 328), 0);
  std::unique_ptr<VBAP>::reset[abi:ne200100](a11, 0);
  Spatializer::~Spatializer(v29);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1DDDE2114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  a16 = (v17 + 336);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100]((v17 + 328), 0);
  std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](v21, 0);
  Spatializer::~Spatializer(v17);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    if (!v20)
    {
LABEL_5:
      if (!v18)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v20)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  if (!v18)
  {
LABEL_7:
    MEMORY[0x1E12BD160](v17, v19);
    _Unwind_Resume(a1);
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  goto LABEL_7;
}

void sub_1DDDE2590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v23);
  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](v17 + 95, 0);
  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](v17 + 94, 0);
  v24 = v17[86];
  if (v24)
  {
    v17[87] = v24;
    operator delete(v24);
  }

  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](v20, 0);
  std::unique_ptr<SourceExtentProcessor>::reset[abi:ne200100](v17 + 77, 0);
  std::unique_ptr<SourceExtentProcessor>::reset[abi:ne200100](v17 + 76, 0);
  IR::IRDataAttributes::~IRDataAttributes((v17 + 53));
  a17 = v17 + 50;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a17);
  v25 = *v21;
  if (*v21)
  {
    v17[48] = v25;
    operator delete(v25);
  }

  a17 = v17 + 42;
  std::vector<std::unique_ptr<IR::DelayLine<float>>>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::unique_ptr<BypassableIRProcessor>::reset[abi:ne200100](v17 + 41, 0);
  std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](v17 + 40, 0);
  Spatializer::~Spatializer(v17);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a11);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  MEMORY[0x1E12BD160](v17, v18);
  _Unwind_Resume(a1);
}

void sub_1DDDE2B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  MEMORY[0x1E12BD160](v15, 0x10A1C40AF302FDBLL);
  IR::DataLoaderSource::~DataLoaderSource(&a11);
  v18 = *(v11 + 472);
  if (v18)
  {
    *(v11 + 480) = v18;
    operator delete(v18);
  }

  std::unique_ptr<SourceExtentProcessor>::reset[abi:ne200100]((v11 + 464), 0);
  v19 = *v16;
  if (*v16)
  {
    *(v11 + 448) = v19;
    operator delete(v19);
  }

  v20 = *(v11 + 400);
  if (v20)
  {
    *(v11 + 408) = v20;
    operator delete(v20);
  }

  v21 = *(v11 + 360);
  if (v21)
  {
    *(v11 + 368) = v21;
    operator delete(v21);
  }

  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100]((v11 + 352), 0);
  a11 = (v11 + 328);
  std::vector<std::unique_ptr<IR::DelayLine<float>>>::__destroy_vector::operator()[abi:ne200100](&a11);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](v13, 0);
  Spatializer::~Spatializer(v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  MEMORY[0x1E12BD160](v11, v14);
  _Unwind_Resume(a1);
}

CA::ChannelLayout *CA::ChannelLayout::ChannelLayout(CA::ChannelLayout *this, const AudioChannelLayout *a2)
{
  mNumberChannelDescriptions = a2->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions <= 1)
  {
    mNumberChannelDescriptions = 1;
  }

  v5 = std::vector<char>::vector[abi:ne200100](this, 20 * mNumberChannelDescriptions + 12);
  memcpy(*v5, a2, 20 * a2->mNumberChannelDescriptions + 12);
  return this;
}

void sub_1DDDE30FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, int a13, void **buf)
{
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100]((v14 + 704), 0);
  v20 = *(v14 + 680);
  if (v20)
  {
    *(v14 + 688) = v20;
    operator delete(v20);
  }

  v21 = *(v14 + 656);
  if (v21)
  {
    *(v14 + 664) = v21;
    operator delete(v21);
  }

  v22 = *v18;
  if (*v18)
  {
    *(v14 + 640) = v22;
    operator delete(v22);
  }

  v23 = *(v14 + 608);
  if (v23)
  {
    *(v14 + 616) = v23;
    operator delete(v23);
  }

  v24 = *(v14 + 584);
  if (v24)
  {
    *(v14 + 592) = v24;
    operator delete(v24);
  }

  std::unique_ptr<BypassableIRProcessor>::reset[abi:ne200100]((v14 + 576), 0);
  std::unique_ptr<SourceExtentProcessor>::reset[abi:ne200100](v17, 0);
  std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100]((v14 + 552), 0);
  std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100]((v14 + 544), 0);
  v25 = *(v14 + 520);
  if (v25)
  {
    *(v14 + 528) = v25;
    operator delete(v25);
  }

  v26 = *(v14 + 496);
  if (v26)
  {
    *(v14 + 504) = v26;
    operator delete(v26);
  }

  v27 = *(v14 + 472);
  if (v27)
  {
    *(v14 + 480) = v27;
    operator delete(v27);
  }

  v28 = *(v14 + 448);
  if (v28)
  {
    *(v14 + 456) = v28;
    operator delete(v28);
  }

  v29 = *(v14 + 424);
  if (v29)
  {
    *(v14 + 432) = v29;
    operator delete(v29);
  }

  buf = (v14 + 400);
  std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](&buf);
  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](v16, 0);
  v30 = *(v14 + 352);
  if (v30)
  {
    *(v14 + 360) = v30;
    operator delete(v30);
  }

  v31 = *(v14 + 328);
  if (v31)
  {
    *(v14 + 336) = v31;
    operator delete(v31);
  }

  std::unique_ptr<HOA>::reset[abi:ne200100](v15, 0);
  Spatializer::~Spatializer(v14);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

double AUSM::ChannelGeometry::ChannelGeometry(AUSM::ChannelGeometry *this, const AUSM::InputGeometry *a2)
{
  *this = a2;
  *(this + 1) = *(a2 + 2);
  *(this + 1) = xmmword_1DE097CD0;
  *(this + 4) = 0;
  *(this + 5) = 0xFFFFFFFF00000001;
  *(this + 24) = 0;
  *(this + 4) = xmmword_1DE09BBD0;
  *(this + 80) = 0;
  *(this + 21) = 0;
  *(this + 6) = xmmword_1DE09BBD0;
  *(this + 7) = xmmword_1DE09BBD0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 144) = 0;
  *(this + 10) = xmmword_1DE095680;
  *(this + 11) = xmmword_1DE095F90;
  *(this + 12) = xmmword_1DE09BBD0;
  *(this + 208) = 0;
  *(this + 53) = 0;
  *(this + 14) = xmmword_1DE09BBD0;
  *(this + 15) = xmmword_1DE09BBD0;
  *(this + 272) = 0;
  *(this + 16) = 0u;
  *(this + 18) = xmmword_1DE095680;
  *(this + 19) = xmmword_1DE095F90;
  *(this + 20) = xmmword_1DE09BBD0;
  *(this + 336) = 0;
  *(this + 85) = 0;
  *(this + 22) = xmmword_1DE09BBD0;
  *(this + 23) = xmmword_1DE09BBD0;
  *(this + 24) = 0u;
  *(this + 400) = 0;
  *(this + 26) = xmmword_1DE095680;
  *(this + 27) = xmmword_1DE095F90;
  *(this + 28) = xmmword_1DE09BBD0;
  *(this + 464) = 0;
  *(this + 117) = 0;
  *(this + 30) = xmmword_1DE09BBD0;
  *(this + 31) = xmmword_1DE09BBD0;
  *(this + 528) = 0;
  *(this + 32) = 0u;
  *(this + 34) = xmmword_1DE095680;
  *(this + 35) = xmmword_1DE095F90;
  *(this + 36) = xmmword_1DE09BBD0;
  *(this + 592) = 0;
  *(this + 149) = 0;
  *(this + 38) = xmmword_1DE09BBD0;
  *(this + 39) = xmmword_1DE09BBD0;
  *(this + 656) = 0;
  *(this + 40) = 0u;
  *(this + 42) = xmmword_1DE095680;
  *(this + 43) = xmmword_1DE095F90;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 44) = _Q0;
  *(this + 45) = xmmword_1DE09D990;
  *(this + 46) = xmmword_1DE09D990;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 94) = result;
  *(this + 760) = 0;
  *(this + 195) = -1;
  *(this + 764) = -1;
  *(this + 772) = -1;
  return result;
}

AUSM::DynamicSpatializer ***std::unique_ptr<AUSM::DivergentSpatializers>::reset[abi:ne200100](AUSM::DynamicSpatializer ***result, AUSM::DynamicSpatializer **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<AUSM::DynamicSpatializer>::reset[abi:ne200100](v2 + 2, 0);
    std::unique_ptr<AUSM::DynamicSpatializer>::reset[abi:ne200100](v2 + 1, 0);
    std::unique_ptr<AUSM::DynamicSpatializer>::reset[abi:ne200100](v2, 0);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

AUSM::DynamicSpatializer *std::unique_ptr<AUSM::DynamicSpatializer>::reset[abi:ne200100](AUSM::DynamicSpatializer **a1, AUSM::DynamicSpatializer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AUSM::DynamicSpatializer::~DynamicSpatializer(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::vector<std::unique_ptr<AllPassComb>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<AllPassComb>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::unique_ptr<AllPassComb>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      v2[5] = v3;
      operator delete(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      v2[2] = v4;
      operator delete(v4);
    }

    MEMORY[0x1E12BD160](v2, 0x1080C4044AB9347);
  }

  return a1;
}

void AUSpatialMixerV2OcclusionFilter::initialize(uint64_t *a1, const AudioStreamBasicDescription *a2)
{
  v4 = NewIIRFilter(a2, a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  mSampleRate = a2->mSampleRate;
  *(a1 + 2) = mSampleRate;
  v7 = atomic_load(a1 + 4);
  *(a1 + 3) = v7;
  v8 = COERCE_FLOAT(atomic_load(a1 + 4));

  AUSpatialMixerV2OcclusionFilter::updateFilter(a1, v8);
}

float *AUSpatialMixerV2ChannelProcessor::setDelay(float *this, float a2)
{
  if (this[79] != a2)
  {
    v3 = this;
    v4 = this[61];
    if (v4 <= 0.0)
    {
      v5 = 0;
    }

    else
    {
      v5 = fmaxf(roundf((a2 / 1000.0) * v4), 0.0);
    }

    caulk::pooled_semaphore_mutex::_lock((this + 121));
    v6 = *(v3 + 41);
    if (!v6 || *v6 != v5)
    {
      v7 = 0;
      if (v5)
      {
        operator new();
      }

      if (v6)
      {
        *(v3 + 41) = 0;
        v7 = v6;
      }

      std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](&v7, 0);
    }

    this = caulk::pooled_semaphore_mutex::_unlock((v3 + 121));
    v3[79] = a2;
  }

  return this;
}

void sub_1DDDE3834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x1E12BD160](v3, 0x1080C40C92309C1);
  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](va, 0);
  caulk::pooled_semaphore_mutex::_unlock((v2 + 484));
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2ChannelProcessor::resetReverbPrivate(void *a1, int a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 61));
  for (i = 0; i != 3; ++i)
  {
    if (i == a2 || i == 2)
    {
      v5 = &a1[3 * i + 2];
      v6 = *v5;
      v7 = *(v5 + 8);
      while (v6 != v7)
      {
        v8 = *v6;
        if (*v6)
        {
          v9 = *(v8 + 8);
          v10 = *(v8 + 16) - v9;
          if (v10 >= 1)
          {
            bzero(v9, v10);
          }

          *(v8 + 56) = 0;
        }

        ++v6;
      }
    }
  }

  if (a2 != 1)
  {
    v11 = a1[20];
    if (!v11)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v11 = a1[19];
  if (v11)
  {
LABEL_17:
    IR::DynamicIRProcessor::reset(v11);
  }

LABEL_18:
  v12 = a1[21];
  if (v12)
  {
    IR::DynamicIRProcessor::reset(v12);
  }

  v13 = a1[22];
  if (v13)
  {
    AUSM::DynamicSpatializer::reset(v13);
  }

  v14 = a1[23];
  if (v14)
  {
    AUSM::DynamicSpatializer::reset(v14);
  }

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 61));
}