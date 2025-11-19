void CLiteMatrix::SetWithTranposeOfOther(float **this, const float **a2)
{
  if (*a2 == this[1] && (v4 = a2[1], v4 == *this))
  {
    vDSP_mtrans(a2[2], 1, this[2], 1, v4, *a2);
    v5 = this[2];
    v6 = a2[1];
    v7 = ((this[3] - v5) >> 1) & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *a2;
    v9 = (a2[2] + v7);

    vDSP_mtrans(v9, 1, (v5 + v7), 1, v6, v8);
  }

  else
  {
    v10 = CAVerboseAbort();
    CLiteMatrix::SetWithConjugateTranposeOfOther(v10, v11);
  }
}

void CLiteMatrix::SetWithConjugateTranposeOfOther(float **this, const float **a2)
{
  if (*a2 == this[1] && a2[1] == *this)
  {
    CLiteMatrix::SetWithTranposeOfOther(this, a2);
    v4 = &this[2][(this[3] - this[2]) >> 3];
    v9.realp = this[2];
    v9.imagp = v4;
    vDSP_zvconj(&v9, 1, &v9, 1, a2[1] * *a2);
  }

  else
  {
    v5 = CAVerboseAbort();
    CLiteMatrix::ElementwiseMultiply(v5, v6, v7, v8);
  }
}

void CLiteMatrix::ElementwiseMultiply(CLiteMatrix *this, const CLiteMatrix *a2, const CLiteMatrix *a3, CLiteMatrix *__Conjugate)
{
  v4 = *this;
  if (*this == *a3 && v4 == *a2 && (v5 = *(this + 1), v5 == *(a3 + 1)) && v5 == *(a2 + 1))
  {
    v6 = (*(this + 2) + 4 * ((*(this + 3) - *(this + 2)) >> 3));
    __A.realp = *(this + 2);
    __A.imagp = v6;
    v7 = (*(a2 + 2) + 4 * ((*(a2 + 3) - *(a2 + 2)) >> 3));
    __B.realp = *(a2 + 2);
    __B.imagp = v7;
    v8 = (*(a3 + 2) + 4 * ((*(a3 + 3) - *(a3 + 2)) >> 3));
    v13.realp = *(a3 + 2);
    v13.imagp = v8;
    vDSP_zvmul(&__A, 1, &__B, 1, &v13, 1, v5 * v4, __Conjugate);
  }

  else
  {
    v9 = CAVerboseAbort();
    CLiteMatrix::MatrixMultiply(v9, v10, v11, v12);
  }
}

void CLiteMatrix::MatrixMultiply(CLiteMatrix *this, const CLiteMatrix *a2, const CLiteMatrix *a3, CLiteMatrix *a4)
{
  v4 = *this;
  if (*this == *a3 && (v5 = *(a2 + 1), v5 == *(a3 + 1)) && (__P = *(this + 1), __P == *a2))
  {
    v7 = (*(this + 2) + 4 * ((*(this + 3) - *(this + 2)) >> 3));
    __A.realp = *(this + 2);
    __A.imagp = v7;
    v8 = (*(a2 + 2) + 4 * ((*(a2 + 3) - *(a2 + 2)) >> 3));
    __B.realp = *(a2 + 2);
    __B.imagp = v8;
    v9 = (*(a3 + 2) + 4 * ((*(a3 + 3) - *(a3 + 2)) >> 3));
    __C.realp = *(a3 + 2);
    __C.imagp = v9;
    vDSP_zmmul(&__A, 1, &__B, 1, &__C, 1, v4, v5, __P);
  }

  else
  {
    v10 = CAVerboseAbort();
    std::vector<EndpointDecisionLayerVAD2::Decision>::reserve(v10);
  }
}

void *std::vector<EndpointDecisionLayerVAD2::Decision>::reserve(void *result)
{
  if (result[2] - *result <= 0x1FuLL)
  {
    operator new();
  }

  return result;
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDDF106C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::default_delete<AU::SoundIsolation::MetricsReporter>::operator()[abi:ne200100](v3);
  std::__function::__value_func<void ()(long long,applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::default_delete<AU::SoundIsolation::MetricsReporter>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 176);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(v1 + 160);
    *(v1 + 160) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    v5 = *(v1 + 128);
    if (v5)
    {
      *(v1 + 136) = v5;
      operator delete(v5);
    }

    std::mutex::~mutex((v1 + 64));
    std::__function::__value_func<void ()(long long,applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v1 + 32);
    v6 = *(v1 + 24);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(v1 + 8);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::__shared_ptr_pointer<AU::SoundIsolation::MetricsReporter *,std::shared_ptr<AU::SoundIsolation::MetricsReporter>::__shared_ptr_default_delete<AU::SoundIsolation::MetricsReporter,AU::SoundIsolation::MetricsReporter>,std::allocator<AU::SoundIsolation::MetricsReporter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void AU::SoundIsolation::MetricsReporter::getCAReporterIDs(AU::SoundIsolation::MetricsReporter *this, uint64_t a2)
{
  std::mutex::lock((a2 + 64));
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);

  std::mutex::unlock((a2 + 64));
}

void AU::SoundIsolation::MetricsReporter::setCAReporterIDs(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 64));
  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  *(a1 + 128) = *a2;
  *(a1 + 144) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;

  std::mutex::unlock((a1 + 64));
}

void AU::SoundIsolation::MetricsReporter::reportAsync(uint64_t *a1, const void *a2, int *a3)
{
  v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (!a1[2])
  {
    return;
  }

  rep = v6.__d_.__rep_;
  v8 = a1[1];
  if (!v8 || (v9 = *a1, (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
LABEL_10:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = a1[2];
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v13 + 16) = 0;
  *v13 = &unk_1F59245D0;
  *(v13 + 8) = 0;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  v14 = *a3;
  memmove((v13 + 40), a2, 0xA0uLL);
  *(v13 + 200) = v14;
  *(v13 + 208) = rep;
  *v13 = &unk_1F59245A8;
  caulk::concurrent::messenger::enqueue(v12, v13);

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AU::SoundIsolation::MetricsReporter::reportAsync(AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::perform(uint64_t a1)
{
  v2 = a1;
  AU::SoundIsolation::MetricsReporter::report(*(a1 + 24), a1 + 40, (a1 + 200), (a1 + 208));
  return caulk::concurrent::details::rt_message_call<AU::SoundIsolation::MetricsReporter::reportAsync(AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_1DDDF13F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<AU::SoundIsolation::MetricsReporter::reportAsync(AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

void AU::SoundIsolation::MetricsReporter::report(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  std::mutex::lock((a1 + 64));
  v9 = *a3;
  v10 = *(a1 + 168);
  if (!*&v10)
  {
    goto LABEL_33;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = *a3;
    if (*&v10 <= v9)
    {
      v12 = v9 % v10.i32[0];
    }
  }

  else
  {
    v12 = (v10.i32[0] - 1) & v9;
  }

  v13 = *(*(a1 + 160) + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    if (v11.u32[0] > 1uLL)
    {
      v16 = *a3;
      if (*&v10 <= v9)
      {
        v16 = v9 % v10.i32[0];
      }
    }

    else
    {
      v16 = (v10.i32[0] - 1) & v9;
    }

    v17 = *(*(a1 + 160) + 8 * v16);
    if (v17)
    {
      for (i = *v17; i; i = *i)
      {
        v19 = i[1];
        if (v19 == v9)
        {
          if (*(i + 4) == v9)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v19 >= *&v10)
            {
              v19 %= *&v10;
            }
          }

          else
          {
            v19 &= *&v10 - 1;
          }

          if (v19 != v16)
          {
            break;
          }
        }
      }
    }

LABEL_33:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v10)
      {
        v15 %= *&v10;
      }
    }

    else
    {
      v15 &= *&v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (*(v14 + 4) != v9)
  {
    goto LABEL_17;
  }

  if ((*a4 - v14[3]) / 1000000 < *(a1 + 152))
  {
    goto LABEL_121;
  }

  v14[3] = *a4;
LABEL_34:
  v20 = 0.0;
  v55 = 0u;
  v56 = 0u;
  v57 = 1065353216;
  v21 = *a3;
  if (*a3 <= 1)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v59, "vois_report_type");
        __p[0] = &v59;
        v24 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, &v59);
        if (*(v24 + 63) < 0)
        {
          v24[6] = 20;
          v25 = v24[5];
        }

        else
        {
          v25 = (v24 + 5);
          *(v24 + 63) = 20;
        }

        v20 = *"InitializeBaseFailed";
        strcpy(v25, "InitializeBaseFailed");
        goto LABEL_53;
      }

      goto LABEL_55;
    }

    std::string::basic_string[abi:ne200100]<0>(&v59, "vois_report_type");
    __p[0] = &v59;
    v28 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, &v59);
    std::string::__assign_external((v28 + 5), "InputAndOutputFormatMismatch", 0x1CuLL);
LABEL_53:
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    goto LABEL_55;
  }

  switch(v21)
  {
    case 2:
      std::string::basic_string[abi:ne200100]<0>(&v59, "vois_report_type");
      __p[0] = &v59;
      v26 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, &v59);
      std::string::__assign_external((v26 + 5), "CreateProcessingGraphsFailed", 0x1CuLL);
      goto LABEL_53;
    case 3:
      std::string::basic_string[abi:ne200100]<0>(&v59, "vois_report_type");
      __p[0] = &v59;
      v27 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, &v59);
      std::string::__assign_external((v27 + 5), "InitializationSuccessful", 0x18uLL);
      goto LABEL_53;
    case 4:
      std::string::basic_string[abi:ne200100]<0>(&v59, "vois_report_type");
      __p[0] = &v59;
      v22 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, &v59);
      if (*(v22 + 63) < 0)
      {
        v22[6] = 17;
        v23 = v22[5];
      }

      else
      {
        v23 = (v22 + 5);
        *(v22 + 63) = 17;
      }

      v20 = *"ParametersUpdated";
      strcpy(v23, "ParametersUpdated");
      goto LABEL_53;
  }

LABEL_55:
  if (*(a2 + 4) == 1)
  {
    std::to_string(&v59, *a2);
    std::string::basic_string[abi:ne200100]<0>(__p, "vois_error_code");
    v58 = __p;
    v29 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, __p);
    v30 = v29;
    if (*(v29 + 63) < 0)
    {
      operator delete(v29[5]);
    }

    v20 = *&v59.__r_.__value_.__l.__data_;
    *(v30 + 5) = v59;
    *(&v59.__r_.__value_.__s + 23) = 0;
    v59.__r_.__value_.__s.__data_[0] = 0;
    if (v54 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 48) == 1)
  {
    CA::StreamDescription::AsString(&v59, (a2 + 8), v20, v8);
    std::string::basic_string[abi:ne200100]<0>(__p, "vois_input_format");
    v58 = __p;
    v31 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, __p);
    v32 = v31;
    if (*(v31 + 63) < 0)
    {
      operator delete(v31[5]);
    }

    v20 = *&v59.__r_.__value_.__l.__data_;
    *(v32 + 5) = v59;
    *(&v59.__r_.__value_.__s + 23) = 0;
    v59.__r_.__value_.__s.__data_[0] = 0;
    if (v54 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 96) == 1)
  {
    CA::StreamDescription::AsString(&v59, (a2 + 56), v20, v8);
    std::string::basic_string[abi:ne200100]<0>(__p, "vois_output_format");
    v58 = __p;
    v33 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, __p);
    v34 = v33;
    if (*(v33 + 63) < 0)
    {
      operator delete(v33[5]);
    }

    *(v34 + 5) = v59;
    *(&v59.__r_.__value_.__s + 23) = 0;
    v59.__r_.__value_.__s.__data_[0] = 0;
    if (v54 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 112) == 1)
  {
    std::to_string(&v59, *(a2 + 104));
    std::string::basic_string[abi:ne200100]<0>(__p, "vois_initialization_duration_miliseconds");
    v58 = __p;
    v35 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, __p);
    v36 = v35;
    if (*(v35 + 63) < 0)
    {
      operator delete(v35[5]);
    }

    *(v36 + 5) = v59;
    *(&v59.__r_.__value_.__s + 23) = 0;
    v59.__r_.__value_.__s.__data_[0] = 0;
    if (v54 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 124) == 1)
  {
    std::to_string(&v59, *(a2 + 120));
    std::string::basic_string[abi:ne200100]<0>(__p, "vois_parameter_wetdrymixpercent");
    v58 = __p;
    v37 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, __p);
    v38 = v37;
    if (*(v37 + 63) < 0)
    {
      operator delete(v37[5]);
    }

    *(v38 + 5) = v59;
    *(&v59.__r_.__value_.__s + 23) = 0;
    v59.__r_.__value_.__s.__data_[0] = 0;
    if (v54 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 132) == 1)
  {
    std::to_string(&v59, *(a2 + 128));
    std::string::basic_string[abi:ne200100]<0>(__p, "vois_parameter_soundtoisolate");
    v58 = __p;
    v39 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, __p);
    v40 = v39;
    if (*(v39 + 63) < 0)
    {
      operator delete(v39[5]);
    }

    *(v40 + 5) = v59;
    *(&v59.__r_.__value_.__s + 23) = 0;
    v59.__r_.__value_.__s.__data_[0] = 0;
    if (v54 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 137) == 1)
  {
    std::to_string(&v59, *(a2 + 136));
    std::string::basic_string[abi:ne200100]<0>(__p, "vois_parameter_usetuningmode");
    v58 = __p;
    v41 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, __p);
    v42 = v41;
    if (*(v41 + 63) < 0)
    {
      operator delete(v41[5]);
    }

    *(v42 + 5) = v59;
    *(&v59.__r_.__value_.__s + 23) = 0;
    v59.__r_.__value_.__s.__data_[0] = 0;
    if (v54 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 144) == 1)
  {
    std::to_string(&v59, *(a2 + 140));
    std::string::basic_string[abi:ne200100]<0>(__p, "vois_parameter_selectedtuningmode");
    v58 = __p;
    v43 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, __p);
    v44 = v43;
    if (*(v43 + 63) < 0)
    {
      operator delete(v43[5]);
    }

    *(v44 + 5) = v59;
    *(&v59.__r_.__value_.__s + 23) = 0;
    v59.__r_.__value_.__s.__data_[0] = 0;
    if (v54 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 152) == 1)
  {
    std::to_string(&v59, *(a2 + 148));
    std::string::basic_string[abi:ne200100]<0>(__p, "vois_parameter_updatedtuningmode");
    v58 = __p;
    v45 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v55, __p);
    v46 = v45;
    if (*(v45 + 63) < 0)
    {
      operator delete(v45[5]);
    }

    *(v46 + 5) = v59;
    *(&v59.__r_.__value_.__s + 23) = 0;
    v59.__r_.__value_.__s.__data_[0] = 0;
    if (v54 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }
  }

  memset(&v59, 0, sizeof(v59));
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v59, *(&v56 + 1));
  v47 = v56;
  if (v56)
  {
    size = v59.__r_.__value_.__l.__size_;
    do
    {
      if (size >= v59.__r_.__value_.__r.__words[2])
      {
        size = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::string const&>(&v59, v47 + 16, (v47 + 40));
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(size, v47 + 16, (v47 + 40));
        size += 2;
      }

      v59.__r_.__value_.__l.__size_ = size;
      v47 = *v47;
    }

    while (v47);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v59);
  __p[0] = &v59;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v55);
  v50 = *(a1 + 128);
  v51 = *(a1 + 136);
  while (v50 != v51)
  {
    v52 = *v50;
    CFRetain(CFDictionaryRef);
    std::function<void ()(long long,applesauce::CF::DictionaryRef)>::operator()(*(a1 + 56), v52);
    if (CFDictionaryRef)
    {
      CFRelease(CFDictionaryRef);
    }

    ++v50;
  }

  CFRelease(CFDictionaryRef);
LABEL_121:
  std::mutex::unlock((a1 + 64));
}

void sub_1DDDF2090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (*(v22 - 65) < 0)
  {
    operator delete(*(v22 - 88));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a21);
  std::mutex::unlock(v21 + 1);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AU::SoundIsolation::MetricsReporter::reportAsync(AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = &unk_1F59245D0;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  caulk::concurrent::message::~message(v2);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<AU::SoundIsolation::MetricsReporter::reportAsync(AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F59245D0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59245D0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::message_call<AU::SoundIsolation::MetricsReporter::reportAsync(AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::SoundIsolation::MetricsReporter::Report const&,AU::SoundIsolation::MetricsReporter::ReportType const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F59245D0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59245D0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t AUNoiseSelector::SetMaxFramesPerSlice(AUNoiseSelector *this, int a2)
{
  result = ausdk::AUBase::SetMaxFramesPerSlice(this, a2);
  if (*(this + 137) != a2)
  {
    *(this + 137) = a2;
  }

  return result;
}

uint64_t AUNoiseSelector::ChangeStreamFormat(AUNoiseSelector *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  if (a4->mSampleRate != a5->mSampleRate)
  {
    *(this + 136) = a5->mSampleRate;
  }

  return 0;
}

uint64_t AUNoiseSelector::ValidFormat(AUNoiseSelector *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 64 && a4->mFormatID == 1718773105)
  {
    result = (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    result = 0;
  }

  if (a2 == 2)
  {
    v6 = a4->mChannelsPerFrame == 1;
  }

  else
  {
    if (a2 != 1)
    {
      return result;
    }

    v6 = a4->mChannelsPerFrame == 3;
  }

  if (v6)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t AUNoiseSelector::SupportedNumChannels(AUNoiseSelector *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUNoiseSelector::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUNoiseSelector::GetParameterValueStrings(AUNoiseSelector *this, int a2, int a3, const __CFArray **a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3 != 12)
  {
    return 0;
  }

  v7 = xmmword_1E866B8B0;
  v6 = CFArrayCreate(0, &v7, 2, 0);
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t AUNoiseSelector::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 132);
  }

  return result;
}

uint64_t AUNoiseSelector::GetParameterInfo(AUNoiseSelector *this, int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  v14 = a3;
  a4->flags = 0;
  a4->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0xE)
  {
    if (std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(this + 71, a3))
    {
      v15 = &v14;
      v8 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 71, a3);
      v9 = v8[3];
      v10 = *(v8 + 8);
      v11 = *(v8 + 11);
      v12 = *(v8 + 12);
      a4->cfNameString = v9;
      a4->flags |= 0x8000000u;
      v13 = *(v8 + 36);
      CFStringGetCString(v9, a4->name, 52, 0x8000100u);
      result = 0;
      a4->defaultValue = v10;
      *&a4->minValue = v13;
      a4->unit = v11;
      a4->flags |= v12;
    }

    else
    {
      return 4294956418;
    }
  }

  return result;
}

uint64_t AUNoiseSelector::SetBusCount(AUNoiseSelector *this, int a2, unsigned int a3)
{
  v3 = a3 - 1;
  if (a2 == 1 && v3 < 2)
  {
    v4 = 80;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements((this + v4), a3);
    return 0;
  }

  v5 = 4294956445;
  if (a2 == 2 && v3 <= 1)
  {
    v4 = 128;
    goto LABEL_7;
  }

  return v5;
}

ausdk::AUInputElement *AUNoiseSelector::Render(AUNoiseSelector *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = *(this + 15);
  if (v8)
  {
    v9 = (*(*v8 + 24))(v8);
  }

  else
  {
    v9 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v10 = 0;
  if (v9)
  {
    v11 = 0;
    do
    {
      Element = ausdk::AUScope::GetElement((this + 80), v11);
      if (Element && *(Element + 172))
      {
        result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v11);
        if (v14)
        {
          result = ausdk::AUInputElement::PullInput(result, a2, a3, v11, a4);
        }

        if (result)
        {
          return result;
        }
      }

      else
      {
        v10 = 1;
      }

      v11 = (v11 + 1);
    }

    while (v9 != v11);
  }

  v15 = *(this + 21);
  if (v15)
  {
    v15 = (*(*v15 + 24))(v15);
    LODWORD(v16) = v15;
  }

  else
  {
    v16 = (*(this + 19) - *(this + 18)) >> 3;
  }

  v17 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v20 = v31 - v19;
  if (v18 >= 0x200)
  {
    v21 = 512;
  }

  else
  {
    v21 = v18;
  }

  bzero(v31 - v19, v21);
  if (v16)
  {
    v23 = 0;
    while (1)
    {
      v24 = ausdk::AUScope::GetElement((this + 128), v23);
      if (!v24)
      {
        break;
      }

      v22 = ausdk::AUIOElement::PrepareBuffer(v24, a4);
      *&v20[8 * v23++] = v22;
      if (v17 == v23)
      {
        goto LABEL_24;
      }
    }

LABEL_36:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_24:
  if (v10)
  {
    return 0;
  }

  v31[0] = v31;
  MEMORY[0x1EEE9AC00](v22);
  v27 = v31 - v26;
  if (v25 >= 0x200)
  {
    v28 = 512;
  }

  else
  {
    v28 = v25;
  }

  bzero(v31 - v26, v28);
  if (v9)
  {
    v29 = 0;
    while (1)
    {
      v30 = ausdk::AUScope::GetElement((this + 80), v29);
      if (!v30)
      {
        break;
      }

      if (!*(v30 + 144))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      *&v27[8 * v29++] = *(v30 + 152) + 48;
      if (v9 == v29)
      {
        return (*(*this + 184))(this, a2, a4, v9, v27, v17, v20);
      }
    }

    goto LABEL_36;
  }

  return (*(*this + 184))(this, a2, a4, v9, v27, v17, v20);
}

uint64_t AUNoiseSelector::ProcessMultipleBufferLists(AUNoiseSelector *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 376) == 1 && *(this + 84) != a3)
  {
    return 4294956422;
  }

  v85[0] = 0;
  v11 = a4;
  if (a4)
  {
    v12 = (2 * *(this + 137));
    v13 = a4 - 1;
    HIDWORD(v14) = 3;
    v15 = a5;
    while (1)
    {
      v16 = *v15;
      if (!*v15)
      {
        return 4294956420;
      }

      if (v16->mNumberBuffers != 3)
      {
        return 4294956428;
      }

      v17 = v13;
      LODWORD(v14) = *(this + 136);
      *&__A.mNumberBuffers = v14;
      __A.mBuffers[0] = xmmword_1DE09BD50;
      v84 = xmmword_1DE09DB60;
      AudioDSP::Utility::DetectNonFinites(v12, v16, &__A, v85, a5);
      v18 = v85[0];
      if ((v85[0] & 1) == 0)
      {
        v13 = v17 - 1;
        ++v15;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_11;
    }
  }

  v18 = 0;
LABEL_11:
  v19 = a6;
  if (a6)
  {
    v20 = a6;
    v21 = a7;
    while (*v21)
    {
      if ((*v21)->mNumberBuffers != 1)
      {
        return 4294956428;
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_16;
      }
    }

    return 4294956420;
  }

LABEL_16:
  if (!v18 || (*(this + 552) & 1) == 0)
  {
    v22 = *(this + 70);
    if (v22)
    {
      if (*(this + 133) != *(this + 132))
      {
        AUNoiseSelector::UpdateState(this);
        *(this + 133) = *(this + 132);
        v22 = *(this + 70);
        if (!v22)
        {
LABEL_73:
          if (a6 >= 2)
          {
            v67 = 1;
            do
            {
              if (v67 >= v11)
              {
                v75 = a7[v67];
                if (v75->mNumberBuffers)
                {
                  v76 = 0;
                  v77 = 0;
                  do
                  {
                    bzero(v75->mBuffers[v76].mData, v75->mBuffers[v76].mDataByteSize);
                    ++v77;
                    v75 = a7[v67];
                    ++v76;
                  }

                  while (v77 < v75->mNumberBuffers);
                }
              }

              else
              {
                v68 = *(this + 70);
                v69 = a7[v67];
                v70 = a5[v67];
                if (*(v68 + 40) == 1)
                {
                  mBuffers = v70->mBuffers;
                  if (*(v68 + 124) <= *(v68 + 120))
                  {
                    memcpy(v69->mBuffers[0].mData, mBuffers[*(v68 + 104)].mData, v69->mBuffers[0].mDataByteSize);
                  }

                  else
                  {
                    v72 = *(v68 + 16);
                    v73 = v69->mBuffers[0].mData + 4 * v72;
                    v74 = mBuffers[*(v68 + 112)].mData + 4 * v72;
                    MEMORY[0x1E12BE7F0]();
                    MEMORY[0x1E12BE7F0](v74, 1, *(v68 + 200), 1, v73, 1, *(v68 + 16));
                  }

                  v22 = 0;
                }

                else
                {
                  if (v70->mBuffers[0].mDataByteSize <= v69->mBuffers[0].mDataByteSize)
                  {
                    mData = v69->mBuffers[0].mData;
                    if (v70->mBuffers[0].mData != mData)
                    {
                      memcpy(mData, *&v70[1].mBuffers[0].mNumberChannels, *(&v70[1].mNumberBuffers + 1));
                    }
                  }

                  v22 = 4294956429;
                }
              }

              ++v67;
            }

            while (v67 != v19);
          }

          return v22;
        }
      }

      v23 = *a7;
      if (*(v22 + 40) == 1)
      {
        v24 = (*a5)->mBuffers;
        v25 = *(v22 + 104);
        v26 = *(v22 + 16);
        v27 = v24[*(v22 + 96)].mData + 4 * v26;
        *&__A.mNumberBuffers = v24[*(v22 + 96)].mData;
        *&__A.mBuffers[0].mNumberChannels = v27;
        v87.realp = v24[v25].mData;
        v87.imagp = &v87.realp[v26];
        v86.realp = v24[*(v22 + 112)].mData;
        v86.imagp = &v86.realp[v26];
        v82 = v23;
        *&v85[29] = v23->mBuffers[0].mData;
        *&v85[37] = *&v85[29] + 4 * v26;
        v80 = *&v85[37];
        v81 = v24;
        vDSP_zvabs(&__A, 1, *(v22 + 224), 1, v26);
        vDSP_zvabs(&v87, 1, *(v22 + 248), 1, *(v22 + 16));
        vDSP_zvabs(&v86, 1, *(v22 + 272), 1, *(v22 + 16));
        vDSP_vmin(*(v22 + 224), 1, *(v22 + 272), 1, *(v22 + 176), 1, *(v22 + 16));
        v28 = *(v22 + 320);
        v29 = &v28[*(v22 + 16)];
        *&v85[5] = v28;
        *&v85[13] = v29;
        *&v85[1] = 0;
        vDSP_vfill(&v85[1], v28, 1, *(v22 + 56));
        vDSP_vfill(&v85[1], v29, 1, *(v22 + 56));
        v30 = *(v22 + 48);
        v31 = *(v22 + 16) - v30;
        if (v31 < 0.0)
        {
          v31 = 0.0;
        }

        v32 = v31;
        vDSP_vfill(&v85[1], &v28[v30], 1, v31);
        vDSP_vfill(&v85[1], &v29[*(v22 + 48)], 1, v32);
        CNoiseSuppressorV4::speex_preprocess_run_freq(*(v22 + 312), &v85[5], 0, 0);
        v33 = *(v22 + 312);
        if (v33)
        {
          v34 = *(v33 + 332);
        }

        else
        {
          v34 = 0;
        }

        v42 = *(v22 + 80);
        v43 = (*(v22 + 72) - v42);
        vDSP_svesq((*(v22 + 224) + 4 * v42), 1, &v85[25], v43);
        vDSP_svesq((*(v22 + 248) + 4 * *(v22 + 80)), 1, &v85[21], v43);
        v44 = *(v22 + 304);
        v45 = *&v85[25];
        v46 = *(v22 + 88);
        if (*&v85[25] < v46)
        {
          v45 = *(v22 + 88);
        }

        if (*&v85[21] >= v46)
        {
          v47 = *&v85[21];
        }

        else
        {
          v47 = *(v22 + 88);
        }

        v48 = log10f(v45 + 2.2204e-16);
        v49 = (v48 - log10f(v47 + 2.2204e-16)) * 10.0;
        v50 = v44[2];
        v51 = v44[3];
        v52 = 5;
        if (v49 > v51)
        {
          v52 = 4;
        }

        v53 = (v49 * (1.0 - v44[v52])) + (v44[v52] * v51);
        v44[3] = v53;
        if (v53 <= v44[6])
        {
          v54 = v44[8] * v50;
        }

        else
        {
          v54 = (v53 * (1.0 - v44[7])) + (v44[7] * v50);
        }

        v44[2] = v54;
        v55 = expf(v54 - *(v22 + 64));
        if (*(v22 + 124) <= *(v22 + 120) || (*(v22 + 169) & 1) != 0)
        {
          v56 = v55 / (v55 + 1.0);
          memcpy(v82->mBuffers[0].mData, v81[*(v22 + 104)].mData, v82->mBuffers[0].mDataByteSize);
          *(v22 + 128) = v56;
          *(v22 + 170) = 0;
        }

        else
        {
          if (*(v22 + 168) == 1)
          {
            vDSP_vmin(*(v22 + 224), 1, *(v22 + 272), 1, *(v22 + 176), 1, *(v22 + 16));
          }

          *&v85[1] = 507307272;
          MEMORY[0x1E12BE8A0](*(v22 + 272), 1, &v85[1], *(v22 + 200), 1, *(v22 + 16));
          vDSP_vdiv(*(v22 + 200), 1, *(v22 + 176), 1, *(v22 + 200), 1, *(v22 + 16));
          MEMORY[0x1E12BE7F0](v86.realp, 1, *(v22 + 200), 1, *&v85[29], 1, *(v22 + 16));
          MEMORY[0x1E12BE7F0](v86.imagp, 1, *(v22 + 200), 1, v80, 1, *(v22 + 16));
          *(v22 + 128) = v34;
          *(v22 + 170) = 1;
        }

        vDSP_zvmov(&v85[29], 1, &v85[5], 1, *(v22 + 16));
        if (*(v22 + 128) <= *(v22 + 144))
        {
          v57 = *(v22 + 136) + 1;
          *(v22 + 136) = v57;
          if (v57 <= *(v22 + 160))
          {
            v58 = *(v22 + 152);
          }

          else
          {
            v58 = *(v22 + 148);
          }

          *(v22 + 128) = v58;
        }

        else
        {
          *(v22 + 136) = 0;
        }

        if (!*(this + 134))
        {
          v22 = 0;
LABEL_70:
          v61 = *(*(this + 70) + 128);
          v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v63 & 1) == 0 || (ausdk::AUElement::SetParameter(v62, 1u, v61), v64 = *(*(this + 70) + 170), v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v66 & 1) == 0))
          {
            abort();
          }

          ausdk::AUElement::SetParameter(v65, 0xDu, v64);
          goto LABEL_73;
        }

        v22 = 0;
        v23 = *a7;
      }

      else
      {
        v22 = 4294956429;
      }

      v59 = *a5;
      if ((*a5)->mBuffers[0].mDataByteSize <= v23->mBuffers[0].mDataByteSize)
      {
        v60 = v23->mBuffers[0].mData;
        if (v59->mBuffers[0].mData != v60)
        {
          memcpy(v60, *&v59[1].mBuffers[0].mNumberChannels, *(&v59[1].mNumberBuffers + 1));
        }
      }

      goto LABEL_70;
    }
  }

  if (a6)
  {
    v35 = 0;
    do
    {
      if (v35 >= v11)
      {
        v39 = a7[v35];
        if (v39->mNumberBuffers)
        {
          v40 = 0;
          v41 = 0;
          do
          {
            bzero(v39->mBuffers[v40].mData, v39->mBuffers[v40].mDataByteSize);
            ++v41;
            v39 = a7[v35];
            ++v40;
          }

          while (v41 < v39->mNumberBuffers);
        }
      }

      else
      {
        v36 = a5[v35];
        v37 = a7[v35];
        if (v36->mBuffers[0].mDataByteSize <= v37->mBuffers[0].mDataByteSize)
        {
          v38 = v37->mBuffers[0].mData;
          if (v36->mBuffers[0].mData != v38)
          {
            memcpy(v38, *&v36[1].mBuffers[0].mNumberChannels, *(&v36[1].mNumberBuffers + 1));
          }
        }
      }

      ++v35;
    }

    while (v35 != v19);
  }

  return 0;
}

void AUNoiseSelector::UpdateState(AUNoiseSelector *this)
{
  if (*(this + 70))
  {
    v2 = 0;
    while (2)
    {
      v3 = *(this + 70);
      v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v5 & 1) == 0)
      {
        abort();
      }

      Parameter = ausdk::AUElement::GetParameter(v4, v2);
      switch(v2)
      {
        case 0u:
          *(v3 + 124) = Parameter;
          goto LABEL_25;
        case 2u:
          *(v3 + 64) = Parameter;
          goto LABEL_25;
        case 3u:
          v7 = *(v3 + 8);
          v8 = *v3 / (v7 + v7);
          v9 = vcvtas_u32_f32(fabsf(Parameter / v8));
          if (v7 >= v9)
          {
            v7 = v9;
          }

          *(v3 + 80) = v7;
          goto LABEL_25;
        case 4u:
          v13 = *(v3 + 8);
          v14 = *v3 / (v13 + v13);
          v15 = vcvtas_u32_f32(fabsf(Parameter / v14));
          if (v13 >= v15)
          {
            v13 = v15;
          }

          *(v3 + 72) = v13;
          goto LABEL_25;
        case 5u:
          *(v3 + 44) = Parameter;
          goto LABEL_25;
        case 6u:
          v10 = *(v3 + 8);
          v11 = *v3 / (v10 + v10);
          v12 = vcvtas_u32_f32(fabsf(Parameter / v11));
          if (v10 >= v12)
          {
            v10 = v12;
          }

          *(v3 + 56) = v10;
          goto LABEL_25;
        case 7u:
          v16 = *(v3 + 8);
          v17 = *v3 / (v16 + v16);
          v18 = vcvtas_u32_f32(fabsf(Parameter / v17));
          if (v16 >= v18)
          {
            v16 = v18;
          }

          *(v3 + 48) = v16;
          goto LABEL_25;
        case 8u:
          *(v3 + 144) = Parameter;
          goto LABEL_25;
        case 9u:
          *(v3 + 148) = Parameter;
          goto LABEL_25;
        case 0xAu:
          *(v3 + 152) = Parameter;
          goto LABEL_25;
        case 0xBu:
          *(v3 + 160) = vcvtad_u64_f64((*v3 * Parameter) / *(v3 + 8));
          goto LABEL_25;
        case 0xCu:
          *(v3 + 168) = Parameter != 0.0;
          goto LABEL_25;
        case 0xEu:
          v19 = *(v3 + 304);
          if (v19)
          {
            *(v19 + 24) = Parameter;
          }

          goto LABEL_26;
        default:
LABEL_25:
          if (++v2 != 15)
          {
            continue;
          }

LABEL_26:
          *(*(this + 70) + 169) = *(this + 134) != 0;
          break;
      }

      break;
    }
  }
}

uint64_t AUNoiseSelector::SetParameter(AUNoiseSelector *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  result = 0;
  ++*(this + 132);
  return result;
}

uint64_t AUNoiseSelector::SetProperty(AUNoiseSelector *this, int a2, int a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    result = 4294956445;
    if (a6 >= 4)
    {
      if (*a5)
      {
        return 0;
      }

      else
      {
        return 4294956445;
      }
    }
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 134) = *a5;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUNoiseSelector::GetProperty(AUNoiseSelector *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    v6 = *(this + 376);
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    v6 = *(this + 134);
  }

  result = 0;
  *a5 = v6;
  return result;
}

uint64_t AUNoiseSelector::GetPropertyInfo(AUNoiseSelector *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 3700 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUNoiseSelector::Reset(AUNoiseSelector *this)
{
  if (*(this + 70))
  {
    AUNoiseSelector::UpdateState(this);
    v2 = *(this + 70);
    v3 = *(v2 + 296);
    if (v3)
    {
      *(v3 + 8) = 0;
    }

    v4 = *(v2 + 304);
    if (v4)
    {
      *(v4 + 8) = 0;
    }
  }

  return 0;
}

void *std::unique_ptr<NoiseSelectorCore>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[39];
    if (v3)
    {
      CNoiseSuppressorV4::speex_preprocess_state_destroy(v3);
      v2[39] = 0;
    }

    v4 = v2[40];
    if (v4)
    {
      v2[41] = v4;
      operator delete(v4);
    }

    v5 = v2[38];
    v2[38] = 0;
    if (v5)
    {
      MEMORY[0x1E12BD160](v5, 0x1000C408AA14F5FLL);
    }

    v6 = v2[37];
    v2[37] = 0;
    if (v6)
    {
      MEMORY[0x1E12BD160](v6, 0x1000C408AA14F5FLL);
    }

    v7 = v2[34];
    if (v7)
    {
      v2[35] = v7;
      operator delete(v7);
    }

    v8 = v2[31];
    if (v8)
    {
      v2[32] = v8;
      operator delete(v8);
    }

    v9 = v2[28];
    if (v9)
    {
      v2[29] = v9;
      operator delete(v9);
    }

    v10 = v2[25];
    if (v10)
    {
      v2[26] = v10;
      operator delete(v10);
    }

    v11 = v2[22];
    if (v11)
    {
      v2[23] = v11;
      operator delete(v11);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUNoiseSelector::Initialize(AUNoiseSelector *this)
{
  v2 = 0;
  do
  {
    v3 = *(this + 15);
    if (v3)
    {
      LODWORD(v4) = (*(*v3 + 24))(v3);
    }

    else
    {
      v4 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v2 >= v4)
    {
      for (i = 0; ; ++i)
      {
        v7 = *(this + 21);
        if (v7)
        {
          LODWORD(v8) = (*(*v7 + 24))(v7);
        }

        else
        {
          v8 = (*(this + 19) - *(this + 18)) >> 3;
        }

        if (i >= v8)
        {
          operator new();
        }

        Element = ausdk::AUScope::GetElement((this + 128), i);
        if (!Element)
        {
          break;
        }

        if (*(Element + 108) != 1)
        {
          return 4294956421;
        }
      }

LABEL_18:
      ausdk::Throw(0xFFFFD583);
    }

    v5 = ausdk::AUScope::GetElement((this + 80), v2);
    if (!v5)
    {
      goto LABEL_18;
    }

    ++v2;
  }

  while (*(v5 + 108) == 3);
  return 4294956421;
}

void AUNoiseSelector::~AUNoiseSelector(AUNoiseSelector *this)
{
  AUNoiseSelector::~AUNoiseSelector(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59245F8;
  std::unique_ptr<NoiseSelectorCore>::reset[abi:ne200100](this + 70, 0);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(this + 568);
  std::unique_ptr<NoiseSelectorCore>::reset[abi:ne200100](this + 70, 0);

  ausdk::AUBase::~AUBase(this);
}

uint64_t PrescriptiveAmplification::SetAudiogram(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (a3 - a2) >> 2;
  v4 = *(result + 16);
  if (v3 != v4)
  {
    __assert_rtn("SetAudiogram", "PrescriptiveAmplification.cpp", 90, "loss_dBHL.size()==mNumSubbands");
  }

  if (v4)
  {
    v5 = 0;
    v6 = *(result + 48);
    do
    {
      v7 = *(a2 + 4 * v5);
      v8 = 0.0;
      if (v7 > 0.0)
      {
        v8 = 3.999;
        if (v7 < 80.0)
        {
          v9 = -1;
          v10 = &dword_1DE0D8B30;
          do
          {
            v11 = *v10++;
            v12 = v11;
            ++v9;
          }

          while (v7 > v11);
          v8 = ((v7 - kEqualLoudnessModel_Loss_dBHL[v9]) / (v12 - kEqualLoudnessModel_Loss_dBHL[v9])) + v9;
        }
      }

      if (v8 <= 3.95)
      {
        v13 = v8;
      }

      else
      {
        v13 = 3.95;
      }

      *(v6 + 4 * v5++) = v13;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t PrescriptiveAmplification::ComputeFdVectors(uint64_t this)
{
  v1 = *(this + 16);
  if (v1)
  {
    v2 = 0;
    v3 = *(this + 24);
    v4 = *(this + 72);
    if (*(this + 20) == 1)
    {
      v5 = &kPrescriptiveAmplification_SpeechBias;
    }

    else
    {
      v5 = &kPrescriptiveAmplification_DefaultBias;
    }

    v6 = *(this + 96);
    do
    {
      v7 = *(v3 + 4 * v2);
      if (v7 <= 250.0)
      {
        v12 = 0;
        v13 = 0.0;
      }

      else if (v7 >= 30000.0)
      {
        v13 = 1.0;
        v12 = 7;
      }

      else
      {
        v8 = -1;
        v9 = &dword_1DE0D8AA0;
        do
        {
          v10 = *v9++;
          v11 = v10;
          ++v8;
        }

        while (v7 > v10);
        v12 = v8;
        v13 = (v7 - kEqualLoudnessModel_Freq_Hz[v8]) / (v11 - kEqualLoudnessModel_Freq_Hz[v8]);
      }

      this = 4 * v12 + 4;
      *(v4 + 4 * v2) = kPrescriptiveAmplification_ExpanderThresholdOffset_dB[v12] + (v13 * (*(kPrescriptiveAmplification_ExpanderThresholdOffset_dB + this) - kPrescriptiveAmplification_ExpanderThresholdOffset_dB[v12]));
      *(v6 + 4 * v2++) = v5[v12] + (v13 * (*(v5 + this) - v5[v12]));
    }

    while (v2 != v1);
  }

  return this;
}

uint64_t PrescriptiveAmplification::PrescriptiveAmplification(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 16) = 0u;
  v6 = (a1 + 16);
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  *(a1 + 96) = 0u;
  v8 = (a1 + 96);
  *a1 = xmmword_1DE09DB90;
  *(a1 + 144) = 0u;
  v9 = (a1 + 144);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  v10 = (*(a2 + 8) - *a2) >> 2;
  *(a1 + 16) = v10;
  v23 = 0;
  std::vector<float>::assign((a1 + 24), v10, &v23, 1065353216);
  v12 = *(a2 + 8);
  if (v12 != *a2)
  {
    memmove(*(a1 + 24), *a2, v12 - *a2);
  }

  v13 = *v6;
  v23 = 0;
  std::vector<float>::assign((a1 + 120), v13, &v23, v11);
  v14 = *v6;
  v23 = 0;
  std::vector<float>::assign(v9, v14, &v23, v15);
  v16 = *v6;
  v23 = 0;
  std::vector<float>::assign(v7, v16, &v23, v17);
  v18 = *v6;
  v23 = 0;
  std::vector<float>::assign((a1 + 72), v18, &v23, v19);
  v20 = *v6;
  v23 = 0;
  std::vector<float>::assign(v8, v20, &v23, v21);
  PrescriptiveAmplification::ComputeFdVectors(a1);
  PrescriptiveAmplification::SetAudiogram(a1, *a3, a3[1]);
  return a1;
}

void sub_1DDDF3F1C(_Unwind_Exception *exception_object)
{
  v6 = v1[21];
  if (v6)
  {
    v1[22] = v6;
    operator delete(v6);
  }

  v7 = *v4;
  if (*v4)
  {
    v1[19] = v7;
    operator delete(v7);
  }

  v8 = v1[15];
  if (v8)
  {
    v1[16] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[13] = v9;
    operator delete(v9);
  }

  v10 = v1[9];
  if (v10)
  {
    v1[10] = v10;
    operator delete(v10);
  }

  v11 = *v2;
  if (*v2)
  {
    v1[7] = v11;
    operator delete(v11);
  }

  v12 = v1[3];
  if (v12)
  {
    v1[4] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void PrescriptiveAmplification::SetFineTuningSimple(PrescriptiveAmplification *this, float a2, float a3)
{
  v3 = *(this + 4);
  if (v3)
  {
    v5 = -a2;
    v6 = *(this + 3);
    v7 = *(this + 18);
    v8 = *(this + 15);
    do
    {
      v9 = *v6;
      v10 = a2;
      if (*v6 <= 3000.0)
      {
        v10 = v5;
        if (v9 >= 750.0)
        {
          v11 = powf((v9 + -750.0) * 0.00044444, 0.65);
          v10 = ((1.0 - v11) * v5) + (v11 * a2);
        }
      }

      *v8++ = v10;
      *v7++ = v10;
      ++v6;
      --v3;
    }

    while (v3);
  }
}

uint64_t PrescriptiveAmplification::GetGainTargets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  if (v3 > *(result + 16))
  {
    __assert_rtn("GetGainTargets", "PrescriptiveAmplification.cpp", 181, "numActiveSubbands <= mNumSubbands");
  }

  if (a3 != a2)
  {
    v4 = 0;
    v5 = *(result + 48);
    v6 = *(result + 96);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    do
    {
      v7 = 0;
      v8 = *(v5 + 4 * v4);
      v9 = v8;
      v10 = v8 - v8;
      v11 = *(v6 + 4 * v4);
      v12 = 7 * v9;
      v13 = *(a2 + 24 * v4);
      v14 = &kEqualLoudnessModel_GainTable + 4 * v12 + 28;
      v15 = &kEqualLoudnessModel_GainTable + 4 * v12;
      do
      {
        *(v13 + v7) = v11 * (*&v15[v7] + (v10 * (*&v14[v7] - *&v15[v7])));
        v7 += 4;
      }

      while (v7 != 28);
      ++v4;
    }

    while (v4 != v3);
    v16 = 0;
    v17 = *(result + 120);
    v18 = *(result + 144);
    v19 = *(result + 72);
    do
    {
      v20 = 0;
      v21 = *(a2 + 24 * v16);
      do
      {
        v22 = (((1.0 - *&kEqualLoudnessModel_FtWeight[v20]) * *(v18 + 4 * v16)) + (*&kEqualLoudnessModel_FtWeight[v20] * *(v17 + 4 * v16))) + *(v21 + v20 * 4);
        *(v21 + v20 * 4) = v22;
        v23 = v22 + (*(result + 8) * fmaxf((*(result + 12) + *(v19 + 4 * v16)) - *&kEqualLoudnessModel_Spl_dB[v20], 0.0));
        *(v21 + v20 * 4) = v23;
        v24 = *result * fmaxf(v23, 0.0);
        *(v21 + v20 * 4) = v24;
        *(v21 + v20 * 4) = *(result + 4) + v24;
        ++v20;
      }

      while (v20 != 7);
      ++v16;
    }

    while (v16 != v3);
  }

  return result;
}

float applesauce::CF::details::at_to<float>(const __CFArray *a1, unint64_t a2)
{
  if (CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<float,0>(ValueAtIndex);
}

void FrequencyDomainCompressor::SetParameter(FrequencyDomainCompressor *this, uint64_t a2, float a3)
{
  if (FrequencyDomainCompressor::kMaxValue[a2] < a3)
  {
    a3 = FrequencyDomainCompressor::kMaxValue[a2];
  }

  if (a3 < FrequencyDomainCompressor::kMinValue[a2])
  {
    a3 = FrequencyDomainCompressor::kMinValue[a2];
  }

  v4 = *this;
  *(*this + 4 * a2) = a3;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v5 = expf(-1.0 / ((*(v4 + 4) * 0.001) * *(this + 12)));
        *(this + 15) = 1.0 - v5;
        *(this + 16) = v5;
      }
    }

    else
    {
      v12 = *v4;
      v13 = *(this + 13);
      if (v13)
      {
        v14 = v12 - *(this + 19);
        v15 = *(this + 14);
        do
        {
          *v15 = v14 + *v15;
          ++v15;
          --v13;
        }

        while (v13);
        v12 = *v4;
      }

      *(this + 19) = v12;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v6 = expf(-1.0 / ((*(v4 + 8) * 0.001) * *(this + 12)));
        *(this + 17) = 1.0 - v6;
        *(this + 18) = v6;
        break;
      case 5:
        v7 = *(v4 + 20);
        v8 = *(this + 11);
        v9 = *(this + 12) - v8;
        if (v9)
        {
          v10 = v7 - *(this + 20);
          v11 = v9 >> 2;
          if (v11 <= 1)
          {
            v11 = 1;
          }

          do
          {
            *v8 = v10 + *v8;
            ++v8;
            --v11;
          }

          while (v11);
          v7 = *(v4 + 20);
        }

        *(this + 20) = v7;
        break;
      case 6:
        *(this + 21) = *(v4 + 24);
        break;
    }
  }
}

void *FrequencyDomainCompressor::GetGainTargets(FrequencyDomainCompressor *this, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = *(this + 13);
  v4 = *(this + 14);
  MEMORY[0x1EEE9AC00](this);
  v7 = v14 - v6;
  if (v3)
  {
    v8 = 0;
    v9 = *(v5 + 24);
    v10 = 4 * v4;
    v11 = v3;
    do
    {
      v12 = *v9;
      v9 += 3;
      memcpy(&v7[4 * v8], v12, 4 * v4);
      v8 += v4;
      --v11;
    }

    while (v11);
  }

  else
  {
    v3 = 0;
    v10 = 4 * v4;
  }

  return memcpy(a2, v7, v10 * v3);
}

uint64_t AUChannelSelector::ValidFormat(AUChannelSelector *this, int a2, int a3, const AudioStreamBasicDescription *a4)
{
  if ((a2 - 1) > 1 || a3 != 0)
  {
    return 0;
  }

  mFormatID = a4->mFormatID;
  if (mFormatID == 1718773105 && a4->mBitsPerChannel == 64)
  {
    return 1;
  }

  else
  {
    return (mFormatID == 1819304813) & a4->mFormatFlags;
  }
}

uint64_t AUChannelSelector::SupportedNumChannels(AUChannelSelector *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUChannelSelector::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 1;
}

uint64_t AUChannelSelector::StreamFormatWritable(AUChannelSelector *this, int a2, int a3)
{
  if ((a2 - 1) <= 1 && a3 == 0)
  {
    v4 = *(this + 17) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t AUChannelSelector::ProcessMultipleBufferLists(AUChannelSelector *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_31;
  }

  v12 = *(Element + 92);
  v13 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v13)
  {
    goto LABEL_31;
  }

  v14 = *(v13 + 92);
  if ((v12 & 0x20) != 0)
  {
    v16 = 1;
    if ((v14 & 0x20) != 0)
    {
LABEL_6:
      v17 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v15 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v15)
    {
      goto LABEL_31;
    }

    v16 = *(v15 + 108);
    if ((v14 & 0x20) != 0)
    {
      goto LABEL_6;
    }
  }

  v18 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v18)
  {
    goto LABEL_31;
  }

  v17 = *(v18 + 108);
LABEL_10:
  v19 = *a5;
  v20 = *a7;
  v21 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v21)
  {
    goto LABEL_31;
  }

  v22 = *(v21 + 88);
  v23 = (v14 & 0x20) == 0 || v22 == 1718773105;
  v24 = a3 << (v22 == 1718773105);
  if (v22 != 1718773105 && (v12 & 0x20) != 0)
  {
    SimpleMeters::ProcessInputBufferList((this + 544), v24, v19);
  }

  v25 = (*(**(this + 66) + 56))(*(this + 66));
  v26 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v26)
  {
LABEL_31:
    ausdk::Throw(0xFFFFD583);
  }

  v27 = *(v26 + 108);
  if (v27)
  {
    for (i = 0; i != v27; ++i)
    {
      v29 = *(v25 + 4 * i);
      if ((v12 & 0x20) != 0)
      {
        v30 = *(v19 + 8 + 16 * v29 + 8);
        if ((v14 & 0x20) == 0)
        {
LABEL_24:
          v31 = (*(v20 + 16) + 4 * i);
          goto LABEL_25;
        }
      }

      else
      {
        v30 = (*(v19 + 16) + 4 * v29);
        if ((v14 & 0x20) == 0)
        {
          goto LABEL_24;
        }
      }

      v31 = *(v20 + 8 + 16 * i + 8);
LABEL_25:
      for (j = v24; j; --j)
      {
        *v31 = *v30;
        v31 += v17;
        v30 += v16;
      }
    }
  }

  if (!v23)
  {
    SimpleMeters::ProcessOutputBufferList((this + 544), v24, v20);
  }

  return 0;
}

uint64_t AUChannelSelector::SetProperty(AUChannelSelector *this, int a2, int a3, int a4, int *a5, void *a6, int *a7)
{
  v7 = a6;
  LODWORD(v20[0]) = 0;
  if (SimpleMeters::HandleSetProperty((this + 544), a2, a3, a5, a6, v20, a7))
  {
    return LODWORD(v20[0]);
  }

  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    if (v7 == 4)
    {
      result = 0;
      *(this + 134) = *a5;
      return result;
    }

    return 4294956445;
  }

  if (a2 != 1667654509)
  {
    if (a2 == 1936483181 && !a4)
    {
      v14 = v7 >> 2;
      if (((*(**(this + 66) + 24))(*(this + 66)) & 1) != 0 || (*(**(this + 66) + 32))(*(this + 66)) == v14)
      {
        (*(**(this + 66) + 40))(*(this + 66), a5, v14);
        result = 0;
        *(*(this + 66) + 8) = 1;
        return result;
      }

      return 4294956445;
    }

    return 4294956417;
  }

  if (a4)
  {
    return 4294956417;
  }

  v15 = *a5;
  if (((*(**(this + 66) + 24))(*(this + 66)) & 1) == 0)
  {
    applesauce::CF::details::Retain<__CFArray const*>(v15);
    applesauce::CF::ArrayRef::ArrayRef(&v21, v15);
    applesauce::CF::ArrayRef_proxy::ArrayRef_proxy(v20, &v21);
    size = applesauce::CF::get_size(*v20[0], v16);
    v18 = (*(**(this + 66) + 32))(*(this + 66));
    applesauce::CF::ArrayRef::~ArrayRef(&v21);
    if (size != v18)
    {
      return 4294956445;
    }
  }

  v19 = v20[0];
  (*(**(this + 66) + 40))(*(this + 66), v20[0], (v20[1] - v20[0]) >> 2);
  *(*(this + 66) + 8) = 1;
  if (v19)
  {
    operator delete(v19);
  }

  return 0;
}

void sub_1DDDF49F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

const __CFArray *applesauce::CF::get_size(const __CFArray *this, const __CFArray *a2)
{
  if (this)
  {
    return CFArrayGetCount(this);
  }

  return this;
}

void anonymous namespace::convertChannelMapFromCF(_anonymous_namespace_ *this, CFTypeRef cf)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (cf)
  {
    CFRetain(cf);
    theArray = cf;
    v3 = CFGetTypeID(cf);
    if (v3 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    Count = CFArrayGetCount(theArray);
    v11 = CFArrayGetCount(theArray);
    if (Count && v11)
    {
      if (CFArrayGetCount(theArray))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        v5 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
          cfa = v5;
          v6 = CFGetTypeID(v5);
          if (v6 == CFNumberGetTypeID())
          {
            if (cfa)
            {
              applesauce::CF::convert_to<unsigned int,0>(cfa);
              std::allocator<int>::allocate_at_least[abi:ne200100](1uLL);
            }

            v8 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v8, "Could not construct");
          }

          v9 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v9, "Could not construct");
        }
      }

      v7 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v7, "Could not find item");
    }

    CFRelease(theArray);
  }
}

void sub_1DDDF4D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a13);
  _Unwind_Resume(a1);
}

uint64_t AUChannelSelector::GetProperty(AUChannelSelector *this, int a2, unsigned int a3, int a4, unint64_t *a5, int *a6)
{
  LODWORD(__p) = 0;
  if (SimpleMeters::HandleGetProperty((this + 544), a2, a3, a5, &__p, a6))
  {
    return __p;
  }

  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    goto LABEL_13;
  }

  if (a2 != 1667654509)
  {
    if (a2 != 1936483181)
    {
      return 4294956417;
    }

    if (!a4)
    {
      v12 = *(this + 66);
      v13 = (*(*v12 + 32))(v12);
      if ((*(*v12 + 48))(v12, a5, v13))
      {
        return 0;
      }

      else
      {
        return 4294956446;
      }
    }

LABEL_13:
    v11 = 0;
    *a5 = *(this + 134);
    return v11;
  }

  if (a4)
  {
    goto LABEL_13;
  }

  v15 = (*(**(this + 66) + 32))(*(this + 66));
  std::vector<AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>>::vector[abi:ne200100](&__p, v15);
  if ((*(**(this + 66) + 48))(*(this + 66)))
  {
    v16 = v17;
    v17 = 0;
    *a5 = v16;
    applesauce::CF::ArrayRef::~ArrayRef(&v17);
    v11 = 0;
  }

  else
  {
    v11 = 4294956446;
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return v11;
}

void sub_1DDDF4FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDDF5008(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::convertChannelMapToCF(__CFArray **a1, int *a2, CFIndex capacity)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, 0);
  if (capacity)
  {
    v7 = 4 * capacity;
    do
    {
      valuePtr = *a2;
      v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (!v8)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      CFArrayAppendValue(Mutable, v8);
      ++a2;
      v7 -= 4;
    }

    while (v7);
  }

  *a1 = Mutable;
  if (Mutable)
  {
    v9 = CFGetTypeID(Mutable);
    if (v9 != CFArrayGetTypeID())
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
    }
  }
}

void sub_1DDDF5160(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t AUChannelSelector::GetPropertyInfo(AUChannelSelector *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 == 3007)
  {
    v10 = 1;
    v11 = 4;
LABEL_12:
    result = 0;
    *a5 = v11;
    *a6 = v10;
    return result;
  }

  if (a2 == 3099)
  {
    if (a3 > 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = (*(this + 69) - *(this + 68)) >> 7;
    }

    if ((a3 & 0xFFFFFFFD) == 0)
    {
      v9 += (*(this + 72) - *(this + 71)) >> 7;
    }

    v10 = 0;
    v11 = 16 * v9;
    goto LABEL_12;
  }

  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 21:
      result = 0;
      *a6 = 1;
      v15 = 4;
      break;
    case 1667654509:
      if (*(this + 17) == 1)
      {
        v14 = (*(**(this + 66) + 16))(*(this + 66));
      }

      else
      {
        v14 = 1;
      }

      result = 0;
      *a6 = v14;
      v15 = 8;
      break;
    case 1936483181:
      if (*(this + 17) == 1)
      {
        v13 = (*(**(this + 66) + 16))(*(this + 66));
      }

      else
      {
        v13 = 1;
      }

      *a6 = v13;
      Element = ausdk::AUScope::GetElement((this + 128), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v17 = Element;
      result = 0;
      v15 = 4 * *(v17 + 108);
      break;
    default:
      return 4294956417;
  }

  *a5 = v15;
  return result;
}

void AUChannelSelector::Cleanup(AUChannelSelector *this)
{
  *(this + 69) = *(this + 68);
  *(this + 72) = *(this + 71);
  v1 = *(this + 66);
  *(this + 66) = 0;
  v2 = v1;
}

void sub_1DDDF5450(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::CreateChannelMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x100000000) != 0 && (a4 & 0x100000000) != 0)
  {
    v4 = (32 - __clz(a3)) * a4;
    if (v4 <= 0x40)
    {
      operator new();
    }

    if (v4 <= 0x80)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void AU::ChannelSelector::ChannelMap::Interface::loadDefaultMap(uint64_t a1, unsigned int a2)
{
  v4 = (*(*a1 + 32))(a1);
  std::vector<AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>>::vector[abi:ne200100](__p, v4);
  if (v4)
  {
    v5 = vdupq_n_s64(v4 - 1);
    v6 = xmmword_1DE095150;
    v7 = xmmword_1DE095160;
    v8 = (__p[0] + 8);
    v9 = 3;
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v11, *v5.i8).u8[0])
      {
        v12 = v9 - 3;
        if (v9 - 3 >= a2)
        {
          v12 = a2 - 1;
        }

        *(v8 - 2) = v12;
      }

      if (vuzp1_s16(v11, *&v5).i8[2])
      {
        v13 = v9 - 2;
        if (v9 - 2 >= a2)
        {
          v13 = a2 - 1;
        }

        *(v8 - 1) = v13;
      }

      v14 = vmovn_s64(vcgeq_u64(v5, v6));
      if (vuzp1_s16(*&v5, v14).i32[1])
      {
        v15 = v9 - 1;
        if (v9 - 1 >= a2)
        {
          v15 = a2 - 1;
        }

        *v8 = v15;
      }

      if (vuzp1_s16(*&v5, v14).i8[6])
      {
        if (v9 >= a2)
        {
          v16 = a2 - 1;
        }

        else
        {
          v16 = v9;
        }

        v8[1] = v16;
      }

      v6 = vaddq_s64(v6, v10);
      v7 = vaddq_s64(v7, v10);
      v9 += 4;
      v8 += 4;
    }

    while (v9 - ((v4 + 3) & 0x1FFFFFFFCLL) != 3);
  }

  (*(*a1 + 40))(a1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

_DWORD *AU::ChannelSelector::ChannelMap::SmallStorageSimple<unsigned __int128>::snapshotCurrentState(uint64_t a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  if (*(a1 + 40))
  {
    _ZF = 0;
  }

  else
  {
    _ZF = _X2 == *(a1 + 32);
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  if (!_ZF)
  {
    if (v9 != v8)
    {
      v10 = *(a1 + 80);
      v11 = _X2;
      v12 = 0;
      v13 = *(a1 + 48);
      do
      {
        *v13++ = v11 & ~(-1 << v10);
        v11 = ((2 * v12) << ~v10) | (v11 >> v10);
        v12 >>= v10;
        if ((v10 & 0x40) != 0)
        {
          v11 = v12;
          v12 = 0;
        }
      }

      while (v13 != v9);
    }

    *(a1 + 32) = _X2;
    *(a1 + 40) = 0;
  }

  return v8;
}

uint64_t AU::ChannelSelector::ChannelMap::SmallStorageSimple<unsigned __int128>::read(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X8] }

  if (a3)
  {
    v10 = *(a1 + 80);
    v11 = 4 * a3;
    do
    {
      *a2++ = _X4 & ~(-1 << v10);
      if ((v10 & 0x40) != 0)
      {
        _X4 = _X5 >> v10;
      }

      else
      {
        _X4 = ((2 * _X5) << ~v10) | (_X4 >> v10);
      }

      if ((v10 & 0x40) != 0)
      {
        _X5 = 0;
      }

      else
      {
        _X5 >>= v10;
      }

      v11 -= 4;
    }

    while (v11);
  }

  return 1;
}

uint64_t AU::ChannelSelector::ChannelMap::SmallStorageSimple<unsigned __int128>::write(uint64_t result, uint64_t a2, uint64_t a3)
{
  _X4 = 0;
  if (a3)
  {
    v4 = *(result + 80);
    v5 = 4 * a3;
    v6 = 0;
    do
    {
      v7 = (v6 << v4) | (_X4 >> 1 >> ~v4);
      v8 = _X4 << v4;
      if ((v4 & 0x40) != 0)
      {
        v7 = _X4 << v4;
        v8 = 0;
      }

      v9 = *(a2 - 4 + v5);
      _X4 = v8 + v9;
      if (__CFADD__(v8, v9))
      {
        v6 = v7 + 1;
      }

      else
      {
        v6 = v7;
      }

      v5 -= 4;
    }

    while (v5);
  }

  v10 = *(result + 16);
  do
  {
    _X7 = *(result + 24);
    __asm { CASPAL          X6, X7, X4, X5, [X8] }

    _ZF = _X6 == v10;
    v10 = _X6;
  }

  while (!_ZF);
  return result;
}

void AU::ChannelSelector::ChannelMap::SmallStorageSimple<unsigned __int128>::~SmallStorageSimple(void *a1)
{
  *a1 = &unk_1F5924B28;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void *AU::ChannelSelector::ChannelMap::SmallStorageSimple<unsigned __int128>::~SmallStorageSimple(void *a1)
{
  *a1 = &unk_1F5924B28;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

_DWORD *AU::ChannelSelector::ChannelMap::SmallStorageSimple<unsigned long long>::snapshotCurrentState(uint64_t a1)
{
  v2 = atomic_load((a1 + 16));
  v4 = *(a1 + 24);
  result = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v2 != v4)
  {
    if (v5 != result)
    {
      v6 = *(a1 + 64);
      v7 = v2;
      v8 = result;
      do
      {
        *v8++ = v7 & ~(-1 << v6);
        v7 >>= v6;
      }

      while (v8 != v5);
    }

    *(a1 + 24) = v2;
  }

  return result;
}

uint64_t AU::ChannelSelector::ChannelMap::SmallStorageSimple<unsigned long long>::read(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = atomic_load((a1 + 16));
  if (a3)
  {
    v4 = *(a1 + 64);
    v5 = 4 * a3;
    do
    {
      *a2++ = v3 & ~(-1 << v4);
      v3 >>= v4;
      v5 -= 4;
    }

    while (v5);
  }

  return 1;
}

uint64_t AU::ChannelSelector::ChannelMap::SmallStorageSimple<unsigned long long>::write(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a3)
  {
    v4 = 4 * a3;
    do
    {
      v3 = (v3 << *(result + 64)) + *(a2 - 4 + v4);
      v4 -= 4;
    }

    while (v4);
  }

  atomic_store(v3, (result + 16));
  return result;
}

void AU::ChannelSelector::ChannelMap::SmallStorageSimple<unsigned long long>::~SmallStorageSimple(void *a1)
{
  *a1 = &unk_1F5924AD8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void *AU::ChannelSelector::ChannelMap::SmallStorageSimple<unsigned long long>::~SmallStorageSimple(void *a1)
{
  *a1 = &unk_1F5924AD8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t AUChannelSelector::Initialize(AUChannelSelector *this)
{
  v88 = *MEMORY[0x1E69E9840];
  v81[0] = 0;
  v82 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v81);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v81);
  v2 = *(this + 66);
  if (v2[8] == 1)
  {
    v3 = (*(*v2 + 32))(v2);
    std::vector<AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>>::vector[abi:ne200100](&__p, v3);
    if ((*(**(this + 66) + 48))(*(this + 66)))
    {
      v4 = (*(**(this + 66) + 32))(*(this + 66));
      std::vector<unsigned int>::vector[abi:ne200100](&buf, v4);
      mSampleRate = __p.mSampleRate;
      v6 = *&__p.mFormatID;
      if (*&__p.mSampleRate != *&__p.mFormatID)
      {
        v7 = *(&buf + 1);
        do
        {
          v8 = **&mSampleRate;
          if (v7 >= v87)
          {
            v9 = buf;
            v10 = v7 - buf;
            v11 = (v7 - buf) >> 2;
            v12 = v11 + 1;
            if ((v11 + 1) >> 62)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            v13 = v87 - buf;
            if ((v87 - buf) >> 1 > v12)
            {
              v12 = v13 >> 1;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v14 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v14 = v12;
            }

            if (v14)
            {
              std::allocator<float>::allocate_at_least[abi:ne200100](&buf, v14);
            }

            v15 = (v7 - buf) >> 2;
            v16 = (4 * v11);
            v17 = (4 * v11 - 4 * v15);
            *v16 = v8;
            v7 = v16 + 1;
            memcpy(v17, v9, v10);
            v18 = buf;
            *&buf = v17;
            *(&buf + 1) = v7;
            v87 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v7++ = v8;
          }

          *(&buf + 1) = v7;
          *&mSampleRate += 4;
        }

        while (*&mSampleRate != v6);
      }

      v80 = 0;
      v79 = 2;
      operator new();
    }

    v77[0] = 0;
    v78 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v77);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v77);
    v22 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v81, "channel_map");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v77);
    v23 = *v22;
    *v22 = 0;
    v77[0] = v23;
    v24 = *(v22 + 1);
    *(v22 + 1) = 0;
    v78 = v24;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v77);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v78, v23);
    if (*&__p.mSampleRate)
    {
      *&__p.mFormatID = __p.mSampleRate;
      operator delete(*&__p.mSampleRate);
    }
  }

  else
  {
    v75[0] = 0;
    v76 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v75);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v75);
    v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v81, "channel_map");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v75);
    v20 = *v19;
    *v19 = 0;
    v75[0] = v20;
    v21 = *(v19 + 1);
    *(v19 + 1) = 0;
    v76 = v21;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v75);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v76, v20);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v26 = *(Element + 108);
  v73[0] = 6;
  v74 = v26;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v73);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v73);
  v27 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v81, "num_input_channels");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v73);
  v28 = *v27;
  *v27 = 6;
  v73[0] = v28;
  v29 = *(v27 + 1);
  *(v27 + 1) = v26;
  v74 = v29;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v73);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v74, v28);
  v30 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v30)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v31 = *(v30 + 108);
  v71[0] = 6;
  v72 = v31;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v71);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v71);
  v32 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v81, "num_output_channels");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v71);
  v33 = *v32;
  *v32 = 6;
  v71[0] = v33;
  v34 = *(v32 + 1);
  *(v32 + 1) = v31;
  v72 = v34;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v71);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v72, v33);
  v35 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v35)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v36 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v36)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v38 = *(v35 + 88);
  v40 = v38 == 1718773105 && *(v35 + 112) == 64;
  if (((v38 == 1819304813) & *(v35 + 92)) == 0 && !v40)
  {
    if (getAUChannelSelectorLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUChannelSelectorLog(void)::onceToken, &__block_literal_global_10330);
    }

    v41 = getAUChannelSelectorLog(void)::gLog;
    if (!os_log_type_enabled(getAUChannelSelectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *v84 = 134217984;
    *&v84[4] = this;
    v42 = "[%p] input format is not valid";
    goto LABEL_52;
  }

  v43 = *(v36 + 88);
  v45 = v43 == 1718773105 && *(v36 + 112) == 64;
  if (((v43 == 1819304813) & *(v36 + 92)) != 0 || v45)
  {
    v47 = *(v35 + 96);
    *v84 = *(v35 + 80);
    *&v84[16] = v47;
    v85 = *(v35 + 112);
    if ((v84[12] & 0x20) != 0)
    {
      v48 = 1;
    }

    else
    {
      v48 = *&v84[28];
      if (!*&v84[28])
      {
        v49 = (v85 + 7) >> 3;
LABEL_58:
        mChannelsPerFrame = 1;
        *&v84[24] = v49;
        *&v84[28] = 1;
        *&v84[16] = v49;
        *&v84[20] = 1;
        *&v84[12] |= 0x20u;
        v51 = *(v36 + 96);
        *&__p.mSampleRate = *(v36 + 80);
        *&__p.mBytesPerPacket = v51;
        *&__p.mBitsPerChannel = *(v36 + 112);
        if ((__p.mFormatFlags & 0x20) != 0 || (mChannelsPerFrame = __p.mChannelsPerFrame) != 0)
        {
          v52 = __p.mBytesPerFrame / mChannelsPerFrame;
        }

        else
        {
          v52 = (__p.mBitsPerChannel + 7) >> 3;
        }

        __p.mBytesPerFrame = v52;
        __p.mChannelsPerFrame = 1;
        __p.mBytesPerPacket = v52;
        __p.mFramesPerPacket = 1;
        __p.mFormatFlags |= 0x20u;
        if (*v84 != __p.mSampleRate || *&v84[8] != __p.mFormatID || v49 != v52 || v85 != __p.mBitsPerChannel || !CA::Implementation::EquivalentFormatFlags(v84, &__p, v37))
        {
          if (getAUChannelSelectorLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUChannelSelectorLog(void)::onceToken, &__block_literal_global_10330);
          }

          v41 = getAUChannelSelectorLog(void)::gLog;
          if (!os_log_type_enabled(getAUChannelSelectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_83;
          }

          LODWORD(buf) = 134217984;
          *(&buf + 4) = this;
          v42 = "[%p] I/O formats are not compatible";
          p_buf = &buf;
          goto LABEL_82;
        }

        if (getAUChannelSelectorLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUChannelSelectorLog(void)::onceToken, &__block_literal_global_10330);
        }

        if (os_log_type_enabled(getAUChannelSelectorLog(void)::gLog, OS_LOG_TYPE_DEBUG))
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(v84);
        }

        v53 = ausdk::AUScope::GetElement((this + 80), 0);
        if (!v53)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v54 = *(v53 + 108);
        v55 = ausdk::AUScope::GetElement((this + 128), 0);
        if (!v55)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v56 = *(v55 + 108);
        v57 = *(this + 66);
        if (v57[8] == 1)
        {
          if ((*(*v57 + 32))(v57) != v56)
          {
            if (getAUChannelSelectorLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUChannelSelectorLog(void)::onceToken, &__block_literal_global_10330);
            }

            v65 = getAUChannelSelectorLog(void)::gLog;
            if (!os_log_type_enabled(getAUChannelSelectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_100;
            }

            *v84 = 134217984;
            *&v84[4] = this;
            v66 = "[%p] failed to initialize - channel map size is not equal to number of output channels";
            v67 = v65;
            v68 = 12;
LABEL_99:
            _os_log_error_impl(&dword_1DDB85000, v67, OS_LOG_TYPE_ERROR, v66, v84, v68);
LABEL_100:
            v61 = 4294956445;
            goto LABEL_84;
          }

          v58 = (*(**(this + 66) + 56))(*(this + 66));
          if (v59)
          {
            v60 = 0;
            while (*(v58 + 4 * v60) < v54)
            {
              if (v59 == ++v60)
              {
                goto LABEL_90;
              }
            }

            if (getAUChannelSelectorLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUChannelSelectorLog(void)::onceToken, &__block_literal_global_10330);
            }

            v69 = getAUChannelSelectorLog(void)::gLog;
            if (!os_log_type_enabled(getAUChannelSelectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_100;
            }

            *v84 = 134218240;
            *&v84[4] = this;
            *&v84[12] = 1024;
            *&v84[14] = v60;
            v66 = "[%p] failed to initialize - channel map element %d is larger than number of input channels";
            v67 = v69;
            v68 = 18;
            goto LABEL_99;
          }
        }

        else
        {
          if (getAUChannelSelectorLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUChannelSelectorLog(void)::onceToken, &__block_literal_global_10330);
          }

          v63 = getAUChannelSelectorLog(void)::gLog;
          if (os_log_type_enabled(getAUChannelSelectorLog(void)::gLog, OS_LOG_TYPE_INFO))
          {
            *v84 = 134217984;
            *&v84[4] = this;
            _os_log_impl(&dword_1DDB85000, v63, OS_LOG_TYPE_INFO, "[%p] channel map is not set (AU will use default channel map instead)", v84, 0xCu);
          }
        }

LABEL_90:
        v64 = *(this + 66);
        *(this + 66) = 0;
        v70 = v64;
      }
    }

    v49 = *&v84[24] / v48;
    goto LABEL_58;
  }

  if (getAUChannelSelectorLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUChannelSelectorLog(void)::onceToken, &__block_literal_global_10330);
  }

  v41 = getAUChannelSelectorLog(void)::gLog;
  if (!os_log_type_enabled(getAUChannelSelectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_83;
  }

  *v84 = 134217984;
  *&v84[4] = this;
  v42 = "[%p] output format is not valid";
LABEL_52:
  p_buf = v84;
LABEL_82:
  _os_log_error_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_ERROR, v42, p_buf, 0xCu);
LABEL_83:
  v61 = 4294956421;
LABEL_84:
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v81);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v82, v81[0]);
  return v61;
}

void *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(unsigned __int8 *a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = *a1;
    if (v8 > 9)
    {
      v9 = "number";
    }

    else
    {
      v9 = off_1E866B900[v8];
    }

    std::string::basic_string[abi:ne200100]<0>(&v10, v9);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "cannot use operator[] with a string argument with ", &v10);
    nlohmann::detail::type_error::create(exception, 305, &__p);
  }

  v3 = *(a1 + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  v4 = *(v3 + 8);
  if (!v4)
  {
LABEL_10:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, v4 + 4) & 0x80) == 0)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_10;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, &__p) & 0x80) == 0)
    {
      break;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5 + 7;
}

void sub_1DDDF6D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t ___ZL23getAUChannelSelectorLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUChannelSelector");
  getAUChannelSelectorLog(void)::gLog = result;
  return result;
}

void AUChannelSelector::~AUChannelSelector(AUChannelSelector *this)
{
  AUChannelSelector::~AUChannelSelector(this);

  JUMPOUT(0x1E12BD160);
}

{
  v8 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5924868;
  if (getAUChannelSelectorLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUChannelSelectorLog(void)::onceToken, &__block_literal_global_10330);
  }

  v2 = getAUChannelSelectorLog(void)::gLog;
  if (os_log_type_enabled(getAUChannelSelectorLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = this;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%p] destructed", &v6, 0xCu);
  }

  v3 = *(this + 71);
  if (v3)
  {
    *(this + 72) = v3;
    operator delete(v3);
  }

  v4 = *(this + 68);
  if (v4)
  {
    *(this + 69) = v4;
    operator delete(v4);
  }

  v5 = *(this + 66);
  *(this + 66) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  ausdk::AUBase::~AUBase(this);
}

void std::vector<AUFIREngineKernel::FilterData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 4;
        v6 = v4;
        std::vector<CDSPSplitComplex>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<AUFIREngineKernel::FilterData>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<AUFIREngineKernel::FilterData>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<AUFIREngineKernel::FilterData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void std::vector<CDSPSplitComplex>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<CDSPSplitComplex>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

AUFIREngineKernel::XfadeChannel *AUFIREngineKernel::XfadeChannel::XfadeChannel(AUFIREngineKernel::XfadeChannel *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v7 = a3;
  v8 = a4;
  LODWORD(v13) = 0;
  std::vector<float>::vector[abi:ne200100](&__p, a4);
  std::vector<std::vector<float>>::vector[abi:ne200100](this, v7);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  std::vector<std::span<float,18446744073709551615ul>>::vector[abi:ne200100](this + 3, v7);
  LODWORD(__p) = 0;
  std::vector<float>::vector[abi:ne200100](this + 6, v8);
  *(this + 9) = 0;
  *(this + 10) = 0;
  __p = 0;
  v11 = 0;
  v12 = 0;
  if (a3)
  {
    std::vector<AUFIREngineKernel::FilterInfo>::__vallocate[abi:ne200100](&__p, v7);
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v13 = this + 88;
  v14 = 0;
  if (a2)
  {
    operator new();
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(this + 28) = 1065353216;
  LODWORD(v13) = 1065353216;
  std::vector<float>::vector[abi:ne200100](&__p, v7);
  std::vector<std::vector<float>>::vector[abi:ne200100](this + 15, a2);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  *(this + 144) = 1;
  return this;
}

void sub_1DDDF7354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void **a17)
{
  v19 = __p;
  std::vector<std::vector<float *>>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (v19)
  {
    operator delete(v19);
  }

  v20 = v17[10];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = v17[6];
  if (v21)
  {
    v17[7] = v21;
    operator delete(v21);
  }

  v22 = v17[3];
  if (v22)
  {
    v17[4] = v22;
    operator delete(v22);
  }

  __p = v17;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *std::vector<std::span<float,18446744073709551615ul>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::span<float,18446744073709551615ul>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDDF748C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AUFIREngineKernel::FilterInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::span<float,18446744073709551615ul>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::span<float,18446744073709551615ul>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *std::vector<std::vector<BOOL>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<BOOL>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void AUFIREngineKernel::XfadeChannel::~XfadeChannel(AUFIREngineKernel::XfadeChannel *this)
{
  v5 = (this + 120);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 88);
  std::vector<std::vector<float *>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = this;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void AUFIREngineKernel::SetMatrixFIRs(_DWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) == a1[3])
  {
    if (v3 == v2)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      v5 = *v3;
      v4 = *(v3 + 8);
      if (0xAAAAAAAAAAAAAAABLL * ((v4 - *v3) >> 3) != a1[1])
      {
        goto LABEL_9;
      }

      if (v5 != v4)
      {
        break;
      }

LABEL_7:
      v3 += 24;
      if (v3 == v2)
      {
        goto LABEL_8;
      }
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3) == *a1)
    {
      v5 += 3;
      if (v5 == v4)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_9:
  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "matrix");
}

void AUFIREngineKernel::PrepareXfadeChannel(AUFIREngineKernel *this, unsigned int a2)
{
    ;
  }

  v4 = this + 152 * a2;
  v5 = v4 + 2472;
  v6 = *(v4 + 2472);
  *(v4 + 2472) = 0u;
  if (*MEMORY[0x1E69E3C08])
  {
    v27 = v6;
    v7 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v7 + 16) = 0;
    *(v7 + 24) = v27;
    *v7 = &unk_1F5924BB0;
    *(v7 + 8) = 0;
    caulk::concurrent::messenger::enqueue((this + 2712), v7);
    v8 = *(this + 576);
    v9 = *(**(this + 22) + 16 * v8);
    v10 = *(**(this + 22) + 16 * v8 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(v4 + 310);
    *v5 = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    *(v4 + 628) = *(this + 577);
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v4 + 315, *(this + 289), *(this + 290), 0xAAAAAAAAAAAAAAABLL * ((*(this + 290) - *(this + 289)) >> 3));
    v4[2544] = 1;
    v12 = *this;
    if (v12)
    {
      v13 = 0;
      LODWORD(v14) = *(this + 1);
      do
      {
        if (v14)
        {
          v15 = 0;
          v16 = 0;
          v17 = *(*(this + 295) + 24 * v13);
          v18 = *(*(this + 292) + 24 * v13);
          v19 = (*(**v5 + 24 * v13) + 28);
          do
          {
            v20 = (v16 >> 3) & 0x1FFFFFFFFFFFFFF8;
            v21 = *(v19 - 1);
            if (v21)
            {
              v22 = (*(v17 + v20) & (1 << v16)) == 0;
            }

            else
            {
              v22 = 0;
            }

            if (v22)
            {
              v23 = *(v18 + v20) & (1 << v16);
              if (v21 != 1 && v23 == 0)
              {
                *(*(*(v4 + 311) + 24 * v13) + 8 * v16) = 2;
                v4[2544] = 0;
              }

              else
              {
                if (v23)
                {
                  v25 = 0;
                }

                else
                {
                  v25 = *v19;
                }

                v26 = (*(*(v4 + 311) + 24 * v13) + 4 * v15);
                *v26 = 1;
                v26[1] = v25;
              }
            }

            else
            {
              *(*(*(v4 + 311) + 24 * v13) + 8 * v16) = 0;
            }

            ++v16;
            v14 = *(this + 1);
            v15 += 2;
            v19 += 8;
          }

          while (v16 < v14);
          v12 = *this;
        }

        ++v13;
      }

      while (v13 < v12);
    }
  }

  else
  {
    __break(1u);
  }
}

void std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<BOOL>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t ca::concurrent::deferred_deletion_queue<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::~deferred_deletion_queue(uint64_t a1)
{
  *a1 = &unk_1F5933078;
  ca::concurrent::deferred_deletion_queue<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::drain_trash(a1);
  v4 = 0;
  while (boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v4))
  {
    v2 = v4;
    if (v4)
    {
      v5 = v4;
      std::vector<std::shared_ptr<IR::DataLoaderSourceWithTruncation>>::__destroy_vector::operator()[abi:ne200100](&v5);
      MEMORY[0x1E12BD160](v2, 0x20C40960023A9);
    }
  }

  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 1024);
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 64);
  return a1;
}

void ***std::unique_ptr<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::shared_ptr<IR::DataLoaderSourceWithTruncation>>::__destroy_vector::operator()[abi:ne200100](&v3);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::vector<AUFIREngineKernel::InputChannel>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v9 = (v4 - 32);
        std::vector<CDSPSplitComplex>::__destroy_vector::operator()[abi:ne200100](&v9);
        v8 = *(v6 - 7);
        v6 -= 56;
        v7 = v8;
        if (v8)
        {
          *(v4 - 6) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL ca::concurrent::deferred_deletion_queue<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::drain_trash(uint64_t a1)
{
  v4 = 0;
  while (1)
  {
    result = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 1024), &v4);
    if (!result)
    {
      break;
    }

    v3 = v4;
    if (!v4)
    {
      __assert_rtn("drain_trash", "deferred_deletion_queue.h", 148, "trashObject");
    }

    v5 = v4;
    std::vector<std::shared_ptr<IR::DataLoaderSourceWithTruncation>>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x1E12BD160](v3, 0x20C40960023A9);
  }

  return result;
}

void ca::concurrent::deferred_deletion_queue<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::~deferred_deletion_queue(uint64_t a1)
{
  ca::concurrent::deferred_deletion_queue<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::~deferred_deletion_queue(a1);

  JUMPOUT(0x1E12BD150);
}

void std::vector<std::vector<BOOL>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v5 = *(i - 24);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

BOOL ca::concurrent::deferred_deletion_queue<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::pop(uint64_t a1, void ***a2)
{
  v10 = 0;
  v4 = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v10);
  if (v4)
  {
    v5 = v10;
    if (!v10)
    {
      __assert_rtn("pop", "deferred_deletion_queue.h", 115, "pendingObject");
    }

    v6 = *a2;
    if (*a2)
    {
      *a2 = 0;
      v9 = v6;
      if (!boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::do_push<false>(a1 + 1024, &v9))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "trash queue exceeded capacity, object memory leaked");
      }
    }

    std::unique_ptr<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>::reset[abi:ne200100](a2, v5);
  }

  return v4;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUFIREngineKernel::PrepareXfadeChannel(unsigned int)::$_0>::perform(caulk::concurrent::message *this)
{
  *this = &unk_1F5924BD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, this);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<AUFIREngineKernel::PrepareXfadeChannel(unsigned int)::$_0>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F5924BD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5924BD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::rt_message_call<AUFIREngineKernel::PrepareXfadeChannel(unsigned int)::$_0>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F5924BD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5924BD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void *CDSPSplitComplex::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::valarray<float>::__assign_range((a1 + 2), *(a2 + 16), *(a2 + 24));
  }

  v3 = a1[2];
  v4 = v3 + 4 * ((a1[3] - v3) >> 3);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

BOOL anonymous namespace::IsNearlyZero(_anonymous_namespace_ *this, float a2)
{
  v2 = &xmmword_1ECDA9000;
  {
    v5 = a2;
    v2 = &xmmword_1ECDA9000;
    a2 = v5;
    if (v4)
    {
      v2 = &xmmword_1ECDA9000;
      a2 = v5;
    }
  }

  return fabsf(a2) < *(v2 + 542);
}

void std::__shared_ptr_emplace<AUFIREngineKernel::FilterBank>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5924B78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void std::vector<std::vector<BOOL>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void ca::concurrent::deferred_deletion_stash<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F5933058;
  ca::concurrent::deferred_deletion_queue<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::~deferred_deletion_queue((a1 + 8));

  JUMPOUT(0x1E12BD150);
}

void *ca::concurrent::deferred_deletion_stash<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F5933058;
  ca::concurrent::deferred_deletion_queue<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::~deferred_deletion_queue((a1 + 8));
  return a1;
}

void AUFIREngineKernel::AUFIREngineKernel(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  v8 = -__clz(2 * a4 - 1);
  *(a1 + 12) = -1431655765 * ((a5[1] - *a5) >> 3);
  *(a1 + 16) = 1 << v8;
  *(a1 + 20) = (1 << v8) >> 1;
  *(a1 + 24) = ((v8 & 0x1F) << 23) ^ 0x3F800000;
  *(a1 + 32) = 0;
  v9 = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (a2)
  {
    operator new();
  }

  std::vector<std::span<float,18446744073709551615ul>>::vector[abi:ne200100]((a1 + 56), a3);
  std::vector<float>::vector[abi:ne200100]((a1 + 80), *(a1 + 16));
  CDSPSplitComplex::CDSPSplitComplex((a1 + 104), *(a1 + 20));
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  __p = (a1 + 152);
  LOBYTE(v14) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = &unk_1F5933058;
  *(a1 + 256) = &unk_1F5933078;
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue((a1 + 320));
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue((a1 + 1280));
  *(a1 + 2241) = 0;
  *(a1 + 2304) = 0;
  std::vector<float>::vector[abi:ne200100](&__p, a3);
  std::vector<std::vector<float>>::vector[abi:ne200100]((a1 + 2312), v9);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  std::vector<BOOL>::vector(&__p, a3);
  std::vector<std::vector<BOOL>>::vector[abi:ne200100]((a1 + 2336), v9);
  if (__p)
  {
    operator delete(__p);
  }

  std::vector<BOOL>::vector(&__p, a3);
  std::vector<std::vector<BOOL>>::vector[abi:ne200100]((a1 + 2360), v9);
  if (__p)
  {
    operator delete(__p);
  }

  *(a1 + 2384) = 0u;
  AUFIREngineKernel::XfadeChannel::XfadeChannel((a1 + 2400), 0, a3, a4);
  v10 = AUFIREngineKernel::XfadeChannel::XfadeChannel((a1 + 2552), 0, a3, a4);
  *(a1 + 2704) = 0;
  v11 = caulk::concurrent::messenger::shared_high_priority(v10);
  MEMORY[0x1E12BC1D0](a1 + 2712, 0, v11);
  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "numChannelsIn");
  exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
}

void sub_1DDDF948C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void **a14, uint64_t a15, void *__p, uint64_t a17)
{
  __cxa_free_exception(v19);
  MEMORY[0x1E12BC1E0](v17 + 339);
  v21 = (v17 + 319);
  v22 = -304;
  do
  {
    AUFIREngineKernel::XfadeChannel::~XfadeChannel(v21);
    v21 = (v23 - 152);
    v22 += 152;
  }

  while (v22);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = a9;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  *a12 = a11;
  ca::concurrent::deferred_deletion_queue<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>,10ul,std::default_delete<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>>::~deferred_deletion_queue(a10);
  std::unique_ptr<std::vector<std::shared_ptr<AUFIREngineKernel::FilterBank>>>::reset[abi:ne200100](v18, 0);
  __p = a13;
  std::vector<AUFIREngineKernel::InputChannel>::__destroy_vector::operator()[abi:ne200100](&__p);
  v24 = v17[18];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  CDSPSplitComplex::~CDSPSplitComplex((v17 + 13));
  v25 = v17[10];
  if (v25)
  {
    v17[11] = v25;
    operator delete(v25);
  }

  v26 = v17[7];
  if (v26)
  {
    v17[8] = v26;
    operator delete(v26);
  }

  v27 = *a14;
  if (*a14)
  {
    v17[5] = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

void AUFIREngineKernel::ProcessXfadeChannel(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a1 + 4))
  {
    v9 = 0;
    v10 = a3;
    v43 = (**(a2 + 72) + 24 * a3);
    v11 = 3 * a3;
    do
    {
      v12 = *(a2 + 112) * *(*(*(a2 + 120) + 8 * v11) + 4 * v9);
      v46 = v12;
      v13 = (*(*(a2 + 88) + 8 * v11) + 8 * v9);
      v14 = *v13;
      if (*v13 == 2)
      {
        v18 = *(a1 + 152);
        v19 = (*v43 + 32 * v9);
        v47 = v12;
        v20 = *v19;
        if (*v19 == v19[1])
        {
          __assert_rtn("ProcessFilter", "AUFIREngineKernel.cpp", 353, "!filter.mIRBlockFFTs.empty()");
        }

        v21 = 0;
        v22 = 0;
        v23 = v18 + 56 * v10;
        v44 = (a4 + 16 * v9);
        do
        {
          v24 = *(v23 + 24);
          v25 = (*(v23 + 32) - v24) >> 5;
          if (v25 <= v22)
          {
            __assert_rtn("GetPastInputBlock", "AUFIREngineKernel.cpp", 405, "block < blockCount");
          }

          v26 = (v20 + 32 * v21);
          v27 = v22;
          v28 = v25 + ~v22 + *(v23 + 48);
          if (v25 <= v28)
          {
            v29 = (*(v23 + 32) - v24) >> 5;
          }

          else
          {
            v29 = 0;
          }

          v30 = v28 - v29;
          v31 = (v24 + 32 * v30);
          if (v22)
          {
            v32 = **(a1 + 104);
            v33 = **(a1 + 112);
            vDSP_zvma(v26, 1, v31, 1, (a1 + 104), 1, (a1 + 104), 1, *(a1 + 20));
            imagp = v26->imagp;
            v35 = v31->imagp;
            **(a1 + 104) = v32 + (*v26->realp * *v31->realp);
            v36 = v33 + (*imagp * *v35);
          }

          else
          {
            vDSP_zvmul(v26, 1, (v24 + 32 * v30), 1, (a1 + 104), 1, *(a1 + 20), 1);
            v37 = v26->imagp;
            v38 = v31->imagp;
            **(a1 + 104) = *v26->realp * *v31->realp;
            v36 = *v37 * *v38;
          }

          **(a1 + 112) = v36;
          v21 = v27 + 1;
          v20 = *v19;
          v22 = v27 + 1;
        }

        while (v21 < (v19[1] - *v19) >> 5);
        v39 = *(a1 + 8);
        MultiRadixRealFFT::RealOutOfPlaceInverseTransform((a1 + 136), (a1 + 104), *(a1 + 80));
        v40 = *(a1 + 80) + 4 * v39;
        v41 = *v44;
        if (a6)
        {
          MEMORY[0x1E12BE8F0](v40, 1, &v47, v41, 1, *v44, 1, *(a1 + 8));
        }

        else
        {
          MEMORY[0x1E12BE940](v40, 1, &v47, v41, 1, *(a1 + 8));
        }

        v10 = a3;
      }

      else if (v14 == 1)
      {
        v16 = *(*(a1 + 152) + 56 * v10) + 4 * *(a1 + 8) - 4 * v13[1];
        v17 = *(a4 + 16 * v9);
        if (a6)
        {
          MEMORY[0x1E12BE8F0](v16, 1, &v46, v17, 1, *(a4 + 16 * v9), 1);
        }

        else
        {
          MEMORY[0x1E12BE940](v16, 1, &v46, v17, 1, *(a1 + 8));
        }
      }

      else
      {
        if (v14)
        {
          v15 = 0;
        }

        else
        {
          v15 = a6 == 0;
        }

        if (v15)
        {
          vDSP_vclr(*(a4 + 16 * v9), 1, *(a1 + 8));
        }
      }

      ++v9;
    }

    while (v9 < *(a1 + 4));
  }
}

void std::allocator_traits<std::allocator<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>>>::destroy[abi:ne200100]<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>,void,0>(uint64_t a1)
{
  v5 = (a1 + 80);
  std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;

    operator delete(v4);
  }
}

void std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>::destroy[abi:ne200100]<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>,void,0>(i))
    {
      i -= 10;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>::destroy[abi:ne200100]<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>,void,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;

    operator delete(v4);
  }
}

void CartesianPanner::~CartesianPanner(CartesianPanner *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  if (v5)
  {
    *(this + 20) = v5;
    operator delete(v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    for (i = *(this + 17); i != v6; std::allocator_traits<std::allocator<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>>>::destroy[abi:ne200100]<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>,void,0>(i))
    {
      i -= 104;
    }

    *(this + 17) = v6;
    operator delete(*(this + 16));
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    *(this + 8) = v10;
    operator delete(v10);
  }

  v11 = *(this + 4);
  if (v11)
  {
    *(this + 5) = v11;
    operator delete(v11);
  }

  v12 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
}

uint64_t CartesianPanner::initialize(uint64_t a1, int a2, int a3)
{
  v149.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    return 4294956447;
  }

  result = 4294956428;
  if (a2 <= 8126469)
  {
    if (a2 <= 7864324)
    {
      if (a2 == 7667717)
      {
        *(a1 + 4) = 5;
        std::string::basic_string[abi:ne200100]<0>(__p, "L");
        std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
        std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
        std::string::basic_string[abi:ne200100]<0>(&v136, "Ls");
        std::string::basic_string[abi:ne200100]<0>(v138, "Rs");
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v139, 5uLL);
        for (i = 0; i != -15; i -= 3)
        {
          if (SHIBYTE(v138[i + 2]) < 0)
          {
            operator delete(v138[i]);
          }
        }

        *__p = xmmword_1DE0D8CAC;
        *&__p[16] = 1065353216;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[20], 5uLL);
        *__p = xmmword_1DE0D8CC0;
        *&__p[16] = 0;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[20], 5uLL);
        memset(__p, 0, 20);
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[20], 5uLL);
        *__p = xmmword_1DE0D8C5C;
        *&__p[16] = 4;
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[20], 5uLL);
        goto LABEL_99;
      }

      if (a2 != 7733253)
      {
        if (a2 != 7798789)
        {
          return result;
        }

        *(a1 + 4) = 5;
        std::string::basic_string[abi:ne200100]<0>(__p, "L");
        std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
        std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
        std::string::basic_string[abi:ne200100]<0>(&v136, "Ls");
        std::string::basic_string[abi:ne200100]<0>(v138, "Rs");
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v139, 5uLL);
        for (j = 0; j != -15; j -= 3)
        {
          if (SHIBYTE(v138[j + 2]) < 0)
          {
            operator delete(v138[j]);
          }
        }

LABEL_37:
        *__p = xmmword_1DE0D8CAC;
        *&__p[16] = 1065353216;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[20], 5uLL);
        *__p = xmmword_1DE0D8CC0;
        *&__p[16] = 0;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[20], 5uLL);
        memset(__p, 0, 20);
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[20], 5uLL);
        *__p = xmmword_1DE0D8C98;
        *&__p[16] = 4;
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[20], 5uLL);
        goto LABEL_99;
      }

      *(a1 + 4) = 5;
      std::string::basic_string[abi:ne200100]<0>(__p, "L");
      std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
      std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
      std::string::basic_string[abi:ne200100]<0>(&v136, "Ls");
      std::string::basic_string[abi:ne200100]<0>(v138, "Rs");
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v139, 5uLL);
      for (k = 0; k != -15; k -= 3)
      {
        if (SHIBYTE(v138[k + 2]) < 0)
        {
          operator delete(v138[k]);
        }
      }
    }

    else
    {
      if (a2 <= 7995397)
      {
        if (a2 != 7864325)
        {
          if (a2 != 7929862)
          {
            return result;
          }

          *(a1 + 4) = 5;
          std::string::basic_string[abi:ne200100]<0>(__p, "L");
          std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
          std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
          std::string::basic_string[abi:ne200100]<0>(&v136, "Ls");
          std::string::basic_string[abi:ne200100]<0>(v138, "Rs");
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v139, 5uLL);
          for (m = 0; m != -15; m -= 3)
          {
            if (SHIBYTE(v138[m + 2]) < 0)
            {
              operator delete(v138[m]);
            }
          }

          *__p = xmmword_1DE0D8CAC;
          *&__p[16] = 1065353216;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[20], 5uLL);
          *__p = xmmword_1DE0D8CC0;
          *&__p[16] = 0;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[20], 5uLL);
          memset(__p, 0, 20);
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[20], 5uLL);
          *__p = xmmword_1DE0D8C70;
          *&__p[16] = 5;
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[20], 5uLL);
          goto LABEL_99;
        }

        *(a1 + 4) = 5;
        std::string::basic_string[abi:ne200100]<0>(__p, "L");
        std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
        std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
        std::string::basic_string[abi:ne200100]<0>(&v136, "Ls");
        std::string::basic_string[abi:ne200100]<0>(v138, "Rs");
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v139, 5uLL);
        for (n = 0; n != -15; n -= 3)
        {
          if (SHIBYTE(v138[n + 2]) < 0)
          {
            operator delete(v138[n]);
          }
        }

LABEL_63:
        *__p = xmmword_1DE0D8CAC;
        *&__p[16] = 1065353216;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[20], 5uLL);
        *__p = xmmword_1DE0D8CC0;
        *&__p[16] = 0;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[20], 5uLL);
        memset(__p, 0, 20);
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[20], 5uLL);
        *__p = xmmword_1DE0D8CD4;
        *&__p[16] = 4;
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[20], 5uLL);
        goto LABEL_99;
      }

      if (a2 != 7995398)
      {
        if (a2 != 8060934)
        {
          return result;
        }

        *(a1 + 4) = 5;
        std::string::basic_string[abi:ne200100]<0>(__p, "L");
        std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
        std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
        std::string::basic_string[abi:ne200100]<0>(&v136, "Ls");
        std::string::basic_string[abi:ne200100]<0>(v138, "Rs");
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v139, 5uLL);
        for (ii = 0; ii != -15; ii -= 3)
        {
          if (SHIBYTE(v138[ii + 2]) < 0)
          {
            operator delete(v138[ii]);
          }
        }

        goto LABEL_37;
      }

      *(a1 + 4) = 5;
      std::string::basic_string[abi:ne200100]<0>(__p, "L");
      std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
      std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
      std::string::basic_string[abi:ne200100]<0>(&v136, "Ls");
      std::string::basic_string[abi:ne200100]<0>(v138, "Rs");
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v139, 5uLL);
      for (jj = 0; jj != -15; jj -= 3)
      {
        if (SHIBYTE(v138[jj + 2]) < 0)
        {
          operator delete(v138[jj]);
        }
      }
    }

    *__p = xmmword_1DE0D8CAC;
    *&__p[16] = 1065353216;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[20], 5uLL);
    *__p = xmmword_1DE0D8CC0;
    *&__p[16] = 0;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[20], 5uLL);
    memset(__p, 0, 20);
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[20], 5uLL);
    *__p = xmmword_1DE0D8C84;
    *&__p[16] = 3;
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[20], 5uLL);
    goto LABEL_99;
  }

  if (a2 <= 12648463)
  {
    if (a2 > 10485767)
    {
      if (a2 == 10485768)
      {
        *(a1 + 4) = 7;
        std::string::basic_string[abi:ne200100]<0>(__p, "L");
        std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
        std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
        std::string::basic_string[abi:ne200100]<0>(&v136, "Lss");
        std::string::basic_string[abi:ne200100]<0>(v138, "Rss");
        std::string::basic_string[abi:ne200100]<0>(&v139, "Lrs");
        std::string::basic_string[abi:ne200100]<0>(v140, "Rrs");
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v141, 7uLL);
        for (kk = 0; kk != -168; kk -= 24)
        {
          if (v140[kk + 23] < 0)
          {
            operator delete(*&v140[kk]);
          }
        }

        *__p = xmmword_1DE0D8DC4;
        *&__p[12] = *(&xmmword_1DE0D8DC4 + 12);
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[28], 7uLL);
        *__p = xmmword_1DE0D8DE0;
        *&__p[12] = *(&xmmword_1DE0D8DE0 + 12);
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[28], 7uLL);
        memset(__p, 0, 28);
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[28], 7uLL);
        *__p = xmmword_1DE0D8DA8;
        *&__p[12] = *(&xmmword_1DE0D8DA8 + 12);
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[28], 7uLL);
      }

      else
      {
        if (a2 != 12582924)
        {
          return result;
        }

        *(a1 + 4) = 11;
        std::string::basic_string[abi:ne200100]<0>(__p, "L");
        std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
        std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
        std::string::basic_string[abi:ne200100]<0>(&v136, "Lss");
        std::string::basic_string[abi:ne200100]<0>(v138, "Rss");
        std::string::basic_string[abi:ne200100]<0>(&v139, "Lrs");
        std::string::basic_string[abi:ne200100]<0>(v140, "Rrs");
        std::string::basic_string[abi:ne200100]<0>(&v141, "Ltf");
        std::string::basic_string[abi:ne200100]<0>(v142, "Rtf");
        std::string::basic_string[abi:ne200100]<0>(&v143, "Ltr");
        std::string::basic_string[abi:ne200100]<0>(v144, "Rtr");
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v145, 0xBuLL);
        v11 = 264;
        do
        {
          if (__p[v11 - 1] < 0)
          {
            operator delete(*(&v132 + v11));
          }

          v11 -= 24;
        }

        while (v11);
        *__p = xmmword_1DE0D8EA8;
        *&__p[16] = unk_1DE0D8EB8;
        *&__p[28] = unk_1DE0D8EC4;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[44], 0xBuLL);
        *__p = xmmword_1DE0D8ED4;
        *&__p[16] = *algn_1DE0D8EE4;
        *&__p[28] = unk_1DE0D8EF0;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[44], 0xBuLL);
        *__p = xmmword_1DE0D8F00;
        *&__p[16] = unk_1DE0D8F10;
        *&__p[28] = unk_1DE0D8F1C;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[44], 0xBuLL);
        *__p = xmmword_1DE0D8F2C;
        *&__p[16] = unk_1DE0D8F3C;
        *&__p[28] = unk_1DE0D8F48;
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[44], 0xBuLL);
      }

      goto LABEL_99;
    }

    if (a2 != 8126470)
    {
      if (a2 != 8388616)
      {
        return result;
      }

      *(a1 + 4) = 7;
      std::string::basic_string[abi:ne200100]<0>(__p, "L");
      std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
      std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
      std::string::basic_string[abi:ne200100]<0>(&v136, "Lss");
      std::string::basic_string[abi:ne200100]<0>(v138, "Rss");
      std::string::basic_string[abi:ne200100]<0>(&v139, "Lrs");
      std::string::basic_string[abi:ne200100]<0>(v140, "Rrs");
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v141, 7uLL);
      for (mm = 0; mm != -168; mm -= 24)
      {
        if (v140[mm + 23] < 0)
        {
          operator delete(*&v140[mm]);
        }
      }

      *__p = xmmword_1DE0D8DC4;
      *&__p[12] = *(&xmmword_1DE0D8DC4 + 12);
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[28], 7uLL);
      *__p = xmmword_1DE0D8DE0;
      *&__p[12] = *(&xmmword_1DE0D8DE0 + 12);
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[28], 7uLL);
      memset(__p, 0, 28);
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[28], 7uLL);
      *__p = xmmword_1DE0D8DFC;
      *&__p[12] = *(&xmmword_1DE0D8DFC + 12);
      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[28], 7uLL);
      goto LABEL_99;
    }

    *(a1 + 4) = 5;
    std::string::basic_string[abi:ne200100]<0>(__p, "L");
    std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
    std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
    std::string::basic_string[abi:ne200100]<0>(&v136, "Ls");
    std::string::basic_string[abi:ne200100]<0>(v138, "Rs");
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v139, 5uLL);
    for (nn = 0; nn != -15; nn -= 3)
    {
      if (SHIBYTE(v138[nn + 2]) < 0)
      {
        operator delete(v138[nn]);
      }
    }

    goto LABEL_63;
  }

  if (a2 > 12779529)
  {
    if (a2 == 12779530)
    {
      *(a1 + 4) = 9;
      std::string::basic_string[abi:ne200100]<0>(__p, "L");
      std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
      std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
      std::string::basic_string[abi:ne200100]<0>(&v136, "Ls");
      std::string::basic_string[abi:ne200100]<0>(v138, "Rs");
      std::string::basic_string[abi:ne200100]<0>(&v139, "Ltf");
      std::string::basic_string[abi:ne200100]<0>(v140, "Rtf");
      std::string::basic_string[abi:ne200100]<0>(&v141, "Ltr");
      std::string::basic_string[abi:ne200100]<0>(v142, "Rtr");
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v143, 9uLL);
      for (i1 = 0; i1 != -216; i1 -= 24)
      {
        if (v142[i1 + 23] < 0)
        {
          operator delete(*&v142[i1]);
        }
      }

      *__p = xmmword_1DE0D8D3C;
      *&__p[16] = unk_1DE0D8D4C;
      *&__p[32] = 1056964608;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[36], 9uLL);
      *__p = xmmword_1DE0D8D60;
      *&__p[16] = unk_1DE0D8D70;
      *&__p[32] = -1090519040;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[36], 9uLL);
      *__p = xmmword_1DE0D8D84;
      *&__p[16] = *algn_1DE0D8D94;
      *&__p[32] = 1065353216;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[36], 9uLL);
      *__p = xmmword_1DE0D8E84;
      *&__p[16] = unk_1DE0D8E94;
      *&__p[32] = 9;
      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[36], 9uLL);
    }

    else
    {
      if (a2 != 12845066)
      {
        return result;
      }

      *(a1 + 4) = 9;
      std::string::basic_string[abi:ne200100]<0>(__p, "L");
      std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
      std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
      std::string::basic_string[abi:ne200100]<0>(&v136, "Lss");
      std::string::basic_string[abi:ne200100]<0>(v138, "Rss");
      std::string::basic_string[abi:ne200100]<0>(&v139, "Lrs");
      std::string::basic_string[abi:ne200100]<0>(v140, "Rrs");
      std::string::basic_string[abi:ne200100]<0>(&v141, "Ltm");
      std::string::basic_string[abi:ne200100]<0>(v142, "Rtm");
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v143, 9uLL);
      for (i2 = 0; i2 != -216; i2 -= 24)
      {
        if (v142[i2 + 23] < 0)
        {
          operator delete(*&v142[i2]);
        }
      }

      *__p = xmmword_1DE0D8E18;
      *&__p[16] = unk_1DE0D8E28;
      *&__p[32] = 1056964608;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[36], 9uLL);
      *__p = xmmword_1DE0D8E3C;
      *&__p[16] = *algn_1DE0D8E4C;
      *&__p[32] = 0;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[36], 9uLL);
      *__p = xmmword_1DE0D8E60;
      *&__p[16] = unk_1DE0D8E70;
      *&__p[32] = 1065353216;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[36], 9uLL);
      *__p = xmmword_1DE0D8E84;
      *&__p[16] = unk_1DE0D8E94;
      *&__p[32] = 9;
      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[36], 9uLL);
    }
  }

  else if (a2 == 12648464)
  {
    *(a1 + 4) = 15;
    std::string::basic_string[abi:ne200100]<0>(__p, "L");
    std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
    std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
    std::string::basic_string[abi:ne200100]<0>(&v136, "Lw");
    std::string::basic_string[abi:ne200100]<0>(v138, "Rw");
    std::string::basic_string[abi:ne200100]<0>(&v139, "Lss");
    std::string::basic_string[abi:ne200100]<0>(v140, "Rss");
    std::string::basic_string[abi:ne200100]<0>(&v141, "Lrs");
    std::string::basic_string[abi:ne200100]<0>(v142, "Rrs");
    std::string::basic_string[abi:ne200100]<0>(&v143, "Ltf");
    std::string::basic_string[abi:ne200100]<0>(v144, "Rtf");
    std::string::basic_string[abi:ne200100]<0>(&v145, "Ltm");
    std::string::basic_string[abi:ne200100]<0>(v146, "Rtm");
    std::string::basic_string[abi:ne200100]<0>(v147, "Ltr");
    std::string::basic_string[abi:ne200100]<0>(v148, "Rtr");
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v149, 0xFuLL);
    v17 = 360;
    do
    {
      if (__p[v17 - 1] < 0)
      {
        operator delete(*(&v132 + v17));
      }

      v17 -= 24;
    }

    while (v17);
    *__p = xmmword_1DE0D8F58;
    *&__p[16] = unk_1DE0D8F68;
    *&__p[32] = xmmword_1DE0D8F78;
    *&__p[44] = *(&xmmword_1DE0D8F78 + 12);
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[60], 0xFuLL);
    *__p = xmmword_1DE0D8F94;
    *&__p[16] = unk_1DE0D8FA4;
    *&__p[32] = xmmword_1DE0D8FB4;
    *&__p[44] = *(&xmmword_1DE0D8FB4 + 12);
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[60], 0xFuLL);
    memset(__p, 0, 32);
    *&__p[32] = xmmword_1DE0D8FF0;
    *&__p[44] = *(&xmmword_1DE0D8FF0 + 12);
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[60], 0xFuLL);
    *__p = xmmword_1DE0D900C;
    *&__p[16] = unk_1DE0D901C;
    *&__p[32] = xmmword_1DE0D902C;
    *&__p[44] = *(&xmmword_1DE0D902C + 12);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[60], 0xFuLL);
  }

  else
  {
    if (a2 != 12713992)
    {
      return result;
    }

    *(a1 + 4) = 7;
    std::string::basic_string[abi:ne200100]<0>(__p, "L");
    std::string::basic_string[abi:ne200100]<0>(&__p[24], "R");
    std::string::basic_string[abi:ne200100]<0>(&__p[48], "C");
    std::string::basic_string[abi:ne200100]<0>(&v136, "Ls");
    std::string::basic_string[abi:ne200100]<0>(v138, "Rs");
    std::string::basic_string[abi:ne200100]<0>(&v139, "Ltm");
    std::string::basic_string[abi:ne200100]<0>(v140, "Rtm");
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((a1 + 8), __p, &v141, 7uLL);
    for (i3 = 0; i3 != -168; i3 -= 24)
    {
      if (v140[i3 + 23] < 0)
      {
        operator delete(*&v140[i3]);
      }
    }

    *__p = xmmword_1DE0D8CE8;
    *&__p[12] = *(&xmmword_1DE0D8CE8 + 12);
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 32), __p, &__p[28], 7uLL);
    *__p = xmmword_1DE0D8D04;
    *&__p[12] = *(&xmmword_1DE0D8D04 + 12);
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 56), __p, &__p[28], 7uLL);
    *__p = xmmword_1DE0D8D20;
    *&__p[12] = *(&xmmword_1DE0D8D20 + 12);
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 80), __p, &__p[28], 7uLL);
    *__p = xmmword_1DE0D8DFC;
    *&__p[12] = *(&xmmword_1DE0D8DFC + 12);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>((a1 + 104), __p, &__p[28], 7uLL);
  }

LABEL_99:
  memset(__p, 0, 24);
  v103 = a3;
  AUSM::ExclusionZone::getPreset(a3, __p);
  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v107 = a1;
  v23 = *__p;
  if (v21 != v22)
  {
    v24 = *(v107 + 32);
    v25 = *(v107 + 56);
    v26 = *(v107 + 80);
    v27 = *(v107 + 104);
    v28 = *&__p[8];
    do
    {
      v29 = *v24;
      v30 = *v25;
      v31 = *v26;
      v32 = atan2f(*v24, *v25);
      v33 = hypotf(v29, v30);
      v35 = atan2f(v31, v33);
      if (v23 == v28)
      {
LABEL_105:
        v21 += 3;
        ++v24;
        ++v25;
        ++v26;
        v27 += 4;
      }

      else
      {
        v36 = v32 * 57.296;
        v37 = v35 * 57.296;
        v38 = v23;
        while (!AUSM::ExclusionZone::isInExclusionZone(v38, v36, v37, v34))
        {
          v38 = (v38 + 28);
          if (v38 == v28)
          {
            goto LABEL_105;
          }
        }

        v39 = v21;
        if (v21 + 3 != v22)
        {
          do
          {
            if (*(v39 + 23) < 0)
            {
              operator delete(*v39);
            }

            *v39 = *(v39 + 3);
            v39[2] = v39[5];
            *(v39 + 47) = 0;
            v40 = v39 + 6;
            *(v39 + 24) = 0;
            v39 += 3;
          }

          while (v40 != v22);
          v22 = *(v107 + 16);
        }

        while (v22 != v39)
        {
          v41 = *(v22 - 1);
          v22 -= 3;
          if (v41 < 0)
          {
            operator delete(*v22);
          }
        }

        *(v107 + 16) = v39;
        v42 = *(v107 + 40);
        v43 = v42 - (v24 + 1);
        if (v42 != v24 + 1)
        {
          memmove(v24, v24 + 1, v42 - (v24 + 1));
        }

        *(v107 + 40) = v24 + v43;
        v44 = *(v107 + 64);
        v45 = v44 - (v25 + 1);
        if (v44 != v25 + 1)
        {
          memmove(v25, v25 + 1, v44 - (v25 + 1));
        }

        *(v107 + 64) = v25 + v45;
        v46 = *(v107 + 88);
        v47 = v46 - (v26 + 1);
        if (v46 != (v26 + 1))
        {
          memmove(v26, v26 + 1, v46 - (v26 + 1));
        }

        *(v107 + 88) = v26 + v47;
        v48 = *(v107 + 112);
        v49 = v48 - (v27 + 4);
        if (v48 != v27 + 4)
        {
          memmove(v27, (v27 + 4), v48 - (v27 + 4));
        }

        *(v107 + 112) = v27 + v49;
        --*(v107 + 4);
        v22 = *(v107 + 16);
      }
    }

    while (v21 != v22);
  }

  if (v23)
  {
    operator delete(v23);
  }

  v127 = 0;
  v128 = 0;
  v129 = 0;
  v50 = v107;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v127, *(v107 + 80), *(v107 + 88), (*(v107 + 88) - *(v107 + 80)) >> 2);
  std::__sort<std::__less<float,float> &,float *>();
  v51 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__equal_to &>(v127, v128);
  v52 = v127;
  v105 = v51;
  if (v127 != v51)
  {
    v104 = (v107 + 128);
    do
    {
      v106 = v52;
      v53 = *v52;
      v124 = 0;
      v125 = 0;
      v126 = 0;
      v55 = *(v50 + 80);
      v54 = *(v50 + 88);
      if (v55 == v54)
      {
        v56 = 0;
        v61 = 0;
      }

      else
      {
        v56 = 0;
        v57 = *(v50 + 80);
        do
        {
          if (*v57 == v53)
          {
            v58 = *(v50 + 80);
            v59 = v56;
            v60 = v56 >> 2;
            if (((v56 >> 2) + 1) >> 62)
            {
LABEL_215:
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            if (v56 >> 2 != -1)
            {
              std::allocator<int>::allocate_at_least[abi:ne200100]((v56 >> 2) + 1);
            }

            *(4 * v60) = (v55 - v58) >> 2;
            v56 = 4 * v60 + 4;
            memcpy(0, 0, v59);
            std::vector<float>::push_back[abi:ne200100](&v124, (v55 + *(v50 + 56) - v58));
            v54 = *(v50 + 88);
          }

          ++v57;
          ++v55;
        }

        while (v57 != v54);
        v61 = v56 >> 2;
      }

      *__p = 0;
      std::vector<float>::vector[abi:ne200100](&v122, v61);
      v120 = 0;
      v121 = 0uLL;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v117, v124, v125, (v125 - v124) >> 2);
      std::__sort<std::__less<float,float> &,float *>();
      v62 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__equal_to &>(v117, v118);
      v63 = v117;
      v109 = v62;
      if (v117 != v62)
      {
        do
        {
          v110 = v63;
          v64 = *v63;
          v114 = 0;
          v115 = 0;
          v116 = 0;
          if (v56)
          {
            v65 = 0;
            for (i4 = 0; i4 != v56; ++i4)
            {
              v67 = *i4;
              if (*(*(v50 + 56) + 4 * *i4) == v64)
              {
                v68 = v65;
                v69 = v65 >> 2;
                if (((v65 >> 2) + 1) >> 62)
                {
                  goto LABEL_215;
                }

                if (v65 >> 2 != -1)
                {
                  std::allocator<int>::allocate_at_least[abi:ne200100]((v65 >> 2) + 1);
                }

                *(4 * v69) = v67;
                v65 = 4 * v69 + 4;
                memcpy(0, 0, v68);
                std::vector<float>::push_back[abi:ne200100](&v114, (*(v50 + 32) + 4 * v67));
              }
            }

            v70 = v65 >> 2;
          }

          else
          {
            v65 = 0;
            v70 = 0;
          }

          *__p = 0;
          std::vector<float>::vector[abi:ne200100](&v112, v70);
          *__p = v64;
          memset(&__p[8], 0, 24);
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p[8], 0, v65, v65 >> 2);
          memset(&__p[32], 0, 24);
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[32], v114, v115, (v115 - v114) >> 2);
          *&__p[56] = 0;
          v135 = 0;
          v136 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[56], v112, v113, (v113 - v112) >> 2);
          v71 = v121;
          if (v121 >= *(&v121 + 1))
          {
            v73 = 0xCCCCCCCCCCCCCCCDLL * ((v121 - v120) >> 4) + 1;
            if (v73 > 0x333333333333333)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            if (0x999999999999999ALL * ((*(&v121 + 1) - v120) >> 4) > v73)
            {
              v73 = 0x999999999999999ALL * ((*(&v121 + 1) - v120) >> 4);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((*(&v121 + 1) - v120) >> 4) >= 0x199999999999999)
            {
              v74 = 0x333333333333333;
            }

            else
            {
              v74 = v73;
            }

            v133 = &v120;
            if (v74)
            {
              std::allocator<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::allocate_at_least[abi:ne200100](v74);
            }

            v130 = 0;
            v131 = 16 * ((v121 - v120) >> 4);
            v132 = v131;
            std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,float const,std::vector<int> const,std::vector<float> const,std::vector<float>>::__tuple_impl(v131, __p);
            *&v132 = v132 + 80;
            v76 = v120;
            v75 = v121;
            v77 = v120 + v131 - v121;
            if (v120 != v121)
            {
              v78 = 0;
              do
              {
                v79 = v77 + v78 * 8;
                v80 = &v76[v78];
                *v79 = v76[v78];
                *(v77 + v78 * 8 + 8) = 0;
                *(v79 + 16) = 0;
                *(v79 + 24) = 0;
                std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v77 + v78 * 8 + 8, v76[v78 + 1], v76[v78 + 2], (v76[v78 + 2] - v76[v78 + 1]) >> 2);
                *(v79 + 32) = 0;
                *(v79 + 40) = 0;
                *(v79 + 48) = 0;
                std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v77 + v78 * 8 + 32, v80[4], v80[5], (v80[5] - v80[4]) >> 2);
                v81 = v77 + v78 * 8;
                *(v81 + 56) = 0;
                *(v81 + 64) = 0;
                v82 = v77 + v78 * 8 + 56;
                *(v82 + 16) = 0;
                std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v82, v80[7], v80[8], (v80[8] - v80[7]) >> 2);
                v78 += 10;
              }

              while (v80 + 10 != v75);
              v50 = v107;
              do
              {
                std::allocator_traits<std::allocator<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>::destroy[abi:ne200100]<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>,void,0>(v76);
                v76 += 10;
              }

              while (v76 != v75);
            }

            v83 = v120;
            v84 = *(&v121 + 1);
            v120 = v77;
            v108 = v132;
            v121 = v132;
            *&v132 = v83;
            *(&v132 + 1) = v84;
            v130 = v83;
            v131 = v83;
            std::__split_buffer<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::~__split_buffer(&v130);
            v72 = v108;
          }

          else
          {
            std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,float const,std::vector<int> const,std::vector<float> const,std::vector<float>>::__tuple_impl(v121, __p);
            v72 = v71 + 80;
          }

          *&v121 = v72;
          if (*&__p[56])
          {
            v135 = *&__p[56];
            operator delete(*&__p[56]);
          }

          if (*&__p[32])
          {
            *&__p[40] = *&__p[32];
            operator delete(*&__p[32]);
          }

          if (*&__p[8])
          {
            *&__p[16] = *&__p[8];
            operator delete(*&__p[8]);
          }

          if (v112)
          {
            v113 = v112;
            operator delete(v112);
          }

          if (v114)
          {
            v115 = v114;
            operator delete(v114);
          }

          v63 = v110 + 1;
        }

        while (v110 + 1 != v109);
      }

      *__p = v53;
      memset(&__p[8], 0, 24);
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p[8], 0, v56, v56 >> 2);
      memset(&__p[32], 0, 24);
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[32], v124, v125, (v125 - v124) >> 2);
      *&__p[56] = 0;
      v135 = 0;
      v136 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[56], v122, v123, (v123 - v122) >> 2);
      v137[0] = 0;
      v137[1] = 0;
      v138[0] = 0;
      std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::__init_with_size[abi:ne200100]<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>*,std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>*>(v137, v120, v121, 0xCCCCCCCCCCCCCCCDLL * ((v121 - v120) >> 4));
      v86 = *(v50 + 136);
      v85 = *(v50 + 144);
      if (v86 >= v85)
      {
        v88 = 0x4EC4EC4EC4EC4EC5 * ((v86 - *v104) >> 3);
        v89 = v88 + 1;
        if ((v88 + 1) > 0x276276276276276)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v90 = 0x4EC4EC4EC4EC4EC5 * ((v85 - *v104) >> 3);
        if (2 * v90 > v89)
        {
          v89 = 2 * v90;
        }

        if (v90 >= 0x13B13B13B13B13BLL)
        {
          v91 = 0x276276276276276;
        }

        else
        {
          v91 = v89;
        }

        v133 = (v107 + 128);
        if (v91)
        {
          if (v91 <= 0x276276276276276)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v130 = 0;
        v131 = 104 * v88;
        v132 = (104 * v88);
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>::__tuple_impl(104 * v88, __p);
        *&v132 = v132 + 104;
        v92 = *(v50 + 128);
        v93 = *(v50 + 136);
        v94 = v131 + v92 - v93;
        if (v92 != v93)
        {
          v95 = 0;
          do
          {
            v96 = v94 + v95;
            v97 = (v92 + v95);
            *v96 = *(v92 + v95);
            *(v94 + v95 + 8) = 0;
            *(v96 + 16) = 0;
            *(v96 + 24) = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v94 + v95 + 8, *(v92 + v95 + 8), *(v92 + v95 + 16), (*(v92 + v95 + 16) - *(v92 + v95 + 8)) >> 2);
            *(v96 + 32) = 0;
            *(v96 + 40) = 0;
            *(v96 + 48) = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v94 + v95 + 32, v97[4], v97[5], (v97[5] - v97[4]) >> 2);
            v98 = v94;
            v99 = (v94 + v95);
            v99[7] = 0;
            v99[8] = 0;
            v99[9] = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((v99 + 7), v97[7], v97[8], (v97[8] - v97[7]) >> 2);
            v99[10] = 0;
            v99[11] = 0;
            v99 += 10;
            v99[2] = 0;
            std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::__init_with_size[abi:ne200100]<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>*,std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>*>(v99, v97[10], v97[11], 0xCCCCCCCCCCCCCCCDLL * ((v97[11] - v97[10]) >> 4));
            v95 += 104;
            v94 = v98;
          }

          while (v97 + 13 != v93);
          v50 = v107;
          do
          {
            std::allocator_traits<std::allocator<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>>>::destroy[abi:ne200100]<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>,void,0>(v92);
            v92 += 104;
          }

          while (v92 != v93);
        }

        v100 = *(v50 + 128);
        *(v50 + 128) = v94;
        v101 = *(v50 + 144);
        __src = v132;
        *(v50 + 136) = v132;
        *&v132 = v100;
        *(&v132 + 1) = v101;
        v130 = v100;
        v131 = v100;
        std::__split_buffer<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>>::~__split_buffer(&v130);
        v87 = __src;
      }

      else
      {
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>::__tuple_impl(*(v50 + 136), __p);
        v87 = v86 + 104;
      }

      *(v50 + 136) = v87;
      v130 = v137;
      std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v130);
      if (*&__p[56])
      {
        v135 = *&__p[56];
        operator delete(*&__p[56]);
      }

      if (*&__p[32])
      {
        *&__p[40] = *&__p[32];
        operator delete(*&__p[32]);
      }

      if (*&__p[8])
      {
        *&__p[16] = *&__p[8];
        operator delete(*&__p[8]);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      *__p = &v120;
      std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](__p);
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if (v124)
      {
        v125 = v124;
        operator delete(v124);
      }

      v52 = v106 + 1;
    }

    while (v106 + 1 != v105);
    v52 = v127;
  }

  if (v52)
  {
    v128 = v52;
    operator delete(v52);
  }

  std::vector<float>::resize((v50 + 152), *(v50 + 4));
  std::vector<float>::resize((v50 + 176), *(v50 + 4));
  std::vector<float>::resize((v50 + 200), *(v50 + 4));
  std::vector<float>::resize((v50 + 224), *(v50 + 4));
  if (!v103 && (*(v50 + 252) & 1) == 0)
  {
    if (CartesianPannerNN::implements(a2))
    {
      *(v50 + 248) = a2;
      *(v50 + 252) = 1;
      *(v50 + 256) = 1;
    }
  }

  result = 0;
  *v50 = 1;
  return result;
}

void sub_1DDDFBECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

float *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__equal_to &>(float *a1, float *a2)
{
  if (a1 != a2)
  {
    v2 = a1 + 1;
    while (v2 != a2)
    {
      v3 = *(v2 - 1);
      v4 = *v2++;
      if (v3 == v4)
      {
        v5 = v2 - 2;
        goto LABEL_7;
      }
    }

    v5 = a2;
LABEL_7:
    if (v5 != a2)
    {
      v6 = v5 + 2;
      if (v5 + 2 != a2)
      {
        v7 = *v5;
        do
        {
          v8 = *v6;
          if (v7 != *v6)
          {
            v5[1] = v8;
            ++v5;
            v7 = v8;
          }

          ++v6;
        }

        while (v6 != a2);
      }

      return v5 + 1;
    }
  }

  return a2;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,float const,std::vector<int> const,std::vector<float> const,std::vector<float>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return a1;
}

void sub_1DDDFC1C4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return a1;
}

void sub_1DDDFC298(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 104;
    std::allocator_traits<std::allocator<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>>>::destroy[abi:ne200100]<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>,std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>,void,0>(v3 - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::__init_with_size[abi:ne200100]<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>*,std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      std::allocator<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }
}

void std::allocator<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 80;
    std::allocator_traits<std::allocator<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>>>::destroy[abi:ne200100]<std::tuple<float const,std::vector<int> const,std::vector<float> const,std::vector<float>>,void,0>((v3 - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(std::vector<std::string> *this, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(this);
    v9 = 0x5555555555555556 * ((this->__end_cap_.__value_ - this->__begin_) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<std::string>::__vallocate[abi:ne200100](this, v10);
  }

  end = this->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = this->__end_;
    }

    while (end != begin)
    {
      v14 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v14 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = begin;
  }

  else
  {
    if (end == begin)
    {
      v13 = __str;
    }

    else
    {
      v13 = (__str + v12);
      do
      {
        std::string::operator=(begin++, v6++);
        v12 -= 24;
      }

      while (v12);
      end = this->__end_;
    }

    this->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(this, v13, a3, end);
  }
}

void *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<float>::__vallocate[abi:ne200100](v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

uint64_t CartesianPanner::pan(CartesianPanner *this, float a2, float a3, float a4, float a5, float *a6, unsigned int a7)
{
  v83 = *MEMORY[0x1E69E9840];
  if (*this != 1)
  {
    return 4294956429;
  }

  result = 4294900553;
  if (a6 && *(this + 1))
  {
    vDSP_vclr(a6, 1, a7);
    v16 = a2 < 0.05 || a2 == 0.0;
    MEMORY[0x1EEE9AC00](v15);
    v18 = &v77[-((v17 + 15) & 0x7FFFFFFF0)];
    vDSP_vclr(v18, 1, *(this + 1));
    v20 = *(this + 1);
    if (v16 || (*(this + 256) & 1) == 0)
    {
      v21 = (*(this + 29) - *(this + 28)) >> 2;
      if (v21 != v20)
      {
        return 0xFFFFFFFFLL;
      }

      v78 = v16;
      v79 = v77;
      CartesianPanner::axisPanner(*(this + 10), *(this + 11), *(this + 25), *(this + 26), a5);
      v22 = *(this + 16);
      v23 = *(this + 17);
      while (v22 != v23)
      {
        CartesianPanner::axisPanner(*(v22 + 32), *(v22 + 40), *(v22 + 56), *(v22 + 64), a4);
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        if (v24 != v25)
        {
          v26 = *(v22 + 56);
          v27 = *(this + 22);
          do
          {
            v28 = *v26++;
            v29 = v28;
            v30 = *v24++;
            *(v27 + 4 * v30) = v29;
          }

          while (v24 != v25);
        }

        v31 = *(v22 + 80);
        v32 = *(v22 + 88);
        while (v31 != v32)
        {
          CartesianPanner::axisPanner(*(v31 + 32), *(v31 + 40), *(v31 + 56), *(v31 + 64), a3);
          v33 = *(v31 + 8);
          v34 = *(v31 + 16);
          if (v33 != v34)
          {
            v35 = *(v31 + 56);
            v36 = *(this + 19);
            do
            {
              v37 = *v35++;
              v38 = v37;
              v39 = *v33++;
              *(v36 + 4 * v39) = v38;
            }

            while (v33 != v34);
          }

          v31 += 80;
        }

        v22 += 104;
      }

      v19 = *(this + 28);
      v40 = *(this + 29) - v19;
      v41 = v40 >> 2;
      if (v40)
      {
        v42 = 0;
        v43 = *(this + 19);
        v44 = *(this + 22);
        v45 = *(this + 25);
        do
        {
          *(v19 + 4 * v42) = (*(v43 + 4 * v42) * *(v44 + 4 * v42)) * *(v45 + 4 * v42);
          ++v42;
        }

        while (v41 > v42);
      }

      LOBYTE(v16) = v78;
      if (*(this + 17) - *(this + 16) == 104)
      {
        v46 = *(this + 1);
        if (a5 == 0.0 || v46 != 5)
        {
          if (a5 != 0.0 && v46 == 7)
          {
            v82.f32[0] = (a5 * -0.095) + 1.0;
            v19 = MEMORY[0x1E12BE940](v19, 1, &v82, v19, 1, v41);
          }
        }

        else
        {
          v82.f32[0] = (a5 * -0.184) + 1.0;
          v19 = MEMORY[0x1E12BE940](v19, 1, &v82, v19, 1, v41);
        }
      }

      if (v20)
      {
        v47 = *(this + 28);
        v48 = v18;
        do
        {
          v49 = *v47++;
          *v48++ = v49;
          --v21;
        }

        while (v21);
      }

      v20 = *(this + 1);
    }

    v50 = v20;
    MEMORY[0x1EEE9AC00](v19);
    v54 = &v77[-v53];
    if (a2 == 0.0 || (v52 & 1) == 0)
    {
LABEL_78:
      MEMORY[0x1EEE9AC00](result);
      v68 = &v77[-((v66 + 15) & 0x7FFFFFFF0)];
      if (a2 == 0.0 || (v67 & 1) == 0)
      {
        if (!v20)
        {
          return 0;
        }
      }

      else
      {
        if (v16)
        {
          if (v20)
          {
            v69 = &v77[-((v66 + 15) & 0x7FFFFFFF0)];
            v70 = v50;
            do
            {
              v71 = *v18++;
              v72 = v71;
              v73 = *v54++;
              *v69++ = ((a2 * 20.0) * v73) + ((1.0 - (a2 * 20.0)) * v72);
              --v70;
            }

            while (v70);
LABEL_87:
            result = 0;
            v74 = *(this + 13);
            do
            {
              v76 = *v74++;
              v75 = v76;
              if (v76 >= a7)
              {
                result = 4294967246;
              }

              else
              {
                a6[v75] = *v68;
              }

              ++v68;
              --v50;
            }

            while (v50);
            return result;
          }

          return 0;
        }

        v18 = v54;
        if (!v20)
        {
          return 0;
        }
      }

      memcpy(&v77[-((v66 + 15) & 0x7FFFFFFF0)], v18, v66);
      goto LABEL_87;
    }

    if (*(this + 252) != 1)
    {
      return 4294956429;
    }

    v55 = *(this + 62);
    result = 4294956428;
    if (v55 > 8126469)
    {
      if (v55 > 12648463)
      {
        if (v55 > 12779529)
        {
          if (v55 == 12779530)
          {
            result = CartesianPannerNN::panAtmos504(&v77[-v53], a2, a3, a4, a5, v20);
          }

          else
          {
            if (v55 != 12845066)
            {
              return result;
            }

            result = CartesianPannerNN::panAtmos702(&v77[-v53], a2, a3, a4, a5, v20);
          }
        }

        else if (v55 == 12648464)
        {
          result = CartesianPannerNN::panAtmos906(&v77[-v53], a2, a3, a4, a5, v20);
        }

        else
        {
          if (v55 != 12713992)
          {
            return result;
          }

          result = CartesianPannerNN::panAtmos502(&v77[-v53], a2, a3, a4, a5, v20);
        }

        goto LABEL_77;
      }

      if (v55 > 10485767)
      {
        if (v55 != 10485768)
        {
          if (v55 != 12582924)
          {
            return result;
          }

          result = CartesianPannerNN::panAtmos704(&v77[-v53], a2, a3, a4, a5, v20);
          goto LABEL_77;
        }

        goto LABEL_73;
      }

      if (v55 != 8126470)
      {
        if (v55 != 8388616)
        {
          return result;
        }

LABEL_73:
        if (v20 == 7)
        {
          CartesianPannerNN::panAtmos700Side(&v82, a2, a3, a4, a5, v51);
          CartesianPannerNN::panAtmos700Side(&v81, a2, -a3, a4, a5, v62);
          v63 = vmaxnmq_f32(v82, 0);
          v64 = vmaxnmq_f32(v81, 0);
          v81 = v64;
          v82 = v63;
          v54[2] = v63.f32[1];
          *v54 = vzip1_s32(*v63.f32, *v64.f32);
          v84.val[0] = v63.i64[1];
          v65 = v54 + 3;
          v84.val[1] = v64.i64[1];
          vst2_f32(v65, v84);
          v80 = 1065730703;
          result = MEMORY[0x1E12BE940](v54, 1, &v80, v54, 1, 7);
        }

LABEL_77:
        v50 = *(this + 1);
        LODWORD(v20) = *(this + 1);
        goto LABEL_78;
      }

LABEL_61:
      if (v20 == 5)
      {
        CartesianPannerNN::panAtmos500Side(&v82, a2, a3, a4, a5, v51);
        CartesianPannerNN::panAtmos500Side(&v81, a2, -a3, a4, a5, v57);
        for (i = 0; i != 3; ++i)
        {
          v82.f32[i] = fmaxf(v82.f32[i], 0.0);
        }

        for (j = 0; j != 3; ++j)
        {
          v81.f32[j] = fmaxf(v81.f32[j], 0.0);
        }

        v60 = v81.i32[0];
        v61 = v81.i32[2];
        *v54 = v82.f32[0];
        *(v54 + 1) = v60;
        *(v54 + 1) = *(v82.i64 + 4);
        *(v54 + 4) = v61;
        v80 = 1066443735;
        result = MEMORY[0x1E12BE940](v54, 1, &v80, v54, 1, 5);
      }

      goto LABEL_77;
    }

    if (v55 <= 7864324)
    {
      if (v55 == 7667717 || v55 == 7733253)
      {
        goto LABEL_61;
      }

      v56 = 7798789;
    }

    else if (v55 > 7995397)
    {
      if (v55 == 7995398)
      {
        goto LABEL_61;
      }

      v56 = 8060934;
    }

    else
    {
      if (v55 == 7864325)
      {
        goto LABEL_61;
      }

      v56 = 7929862;
    }

    if (v55 != v56)
    {
      return result;
    }

    goto LABEL_61;
  }

  return result;
}

void sub_1DDDFCF74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void CartesianPanner::axisPanner(float *a1, float *a2, float *__b, uint64_t a4, float a5)
{
  v6 = a2 - a1;
  if (a2 - a1 != a4 - __b)
  {
    __assert_rtn("axisPanner", "CartesianPanner.cpp", 534, "inSpeakerCoords.size() == outGains.size()");
  }

  v8 = a1;
  if (a2 != a1)
  {
    v9 = a1 + 1;
    v10 = *a1;
    if (a1 + 1 == a2)
    {
      v17 = *a1;
    }

    else
    {
      v11 = *a1;
      v12 = a1 + 1;
      v13 = a1;
      v14 = a1 + 1;
      do
      {
        v15 = *v14++;
        v16 = v15;
        if (v15 < v11)
        {
          v11 = v16;
          v13 = v12;
        }

        v12 = v14;
      }

      while (v14 != a2);
      v17 = *v13;
      v18 = a1;
      v19 = a1 + 1;
      do
      {
        v20 = *v19++;
        v21 = v20;
        if (v10 < v20)
        {
          v10 = v21;
          v18 = v9;
        }

        v9 = v19;
      }

      while (v19 != a2);
      v10 = *v18;
    }

    if (v10 >= a5)
    {
      v22 = a5;
    }

    else
    {
      v22 = v10;
    }

    if (v17 <= a5)
    {
      v23 = v22;
    }

    else
    {
      v23 = v17;
    }

    if ((v10 - v17) == 0.0)
    {
      if (v6 >= 1)
      {

        memset_pattern16(__b, &unk_1DE095DF0, v6);
      }
    }

    else
    {
      v24 = a1;
      while (*v24 != v23)
      {
        if (++v24 == a2)
        {
          v25 = a1;
          goto LABEL_35;
        }
      }

      v25 = a1;
      if (v24 != a2)
      {
        do
        {
          v26 = *v8++;
          if (v26 == v23)
          {
            v27 = 1.0;
          }

          else
          {
            v27 = 0.0;
          }

          *__b++ = v27;
        }

        while (v8 != a2);
        return;
      }

      do
      {
LABEL_35:
        v28 = *v25++;
        v29 = v28;
        if (v28 >= v17)
        {
          v30 = v29;
        }

        else
        {
          v30 = v17;
        }

        if (v29 < v23)
        {
          v17 = v30;
        }

        if (v10 >= v29 && v29 >= v23)
        {
          v10 = v29;
        }
      }

      while (v25 != a2);
      if ((v10 - v17) == 0.0)
      {
        v32 = 0.7854;
      }

      else
      {
        v32 = ((v23 - v17) / (v10 - v17)) * 1.5708;
      }

      v33 = __sincosf_stret(v32);
      do
      {
        v34 = *v8++;
        v35 = v34;
        if (v34 == v10)
        {
          sinval = v33.__sinval;
        }

        else
        {
          sinval = 0.0;
        }

        if (v35 == v17)
        {
          cosval = v33.__cosval;
        }

        else
        {
          cosval = sinval;
        }

        *__b++ = cosval;
      }

      while (v8 != a2);
    }
  }
}

uint64_t AUExpanseController::SupportedNumChannels(AUExpanseController *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUExpanseController::SupportedNumChannels(AUChannelInfo const**)::chans;
  }

  return 1;
}

uint64_t AUExpanseController::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 142);
  }

  return result;
}

uint64_t AUExpanseController::GetParameterInfo(AUExpanseController *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956430;
  }

  buffer->flags = 0;
  buffer->unitName = 0;
  result = 4294956418;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        buffer->cfNameString = @"Current Scalar Volume";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Current Scalar Volume", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F80000000000000;
        v8 = 1073782784;
        goto LABEL_28;
      }

      v7 = @"AGC media target (dB)";
    }

    else
    {
      if (a3 == 7)
      {
        buffer->cfNameString = @"AGC max media gain (dB)";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"AGC max media gain (dB)", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        __asm { FMOV            V0.2S, #-30.0 }

        v6 = -_D0;
        goto LABEL_27;
      }

      if (a3 == 8)
      {
        buffer->cfNameString = @"Hold time for switching AGC parameters (frames)";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Hold time for switching AGC parameters (frames)", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v6 = 2.99759591e19;
        goto LABEL_27;
      }

      if (a3 != 9)
      {
        return result;
      }

      v7 = @"Threshold for media presence detection (dB)";
    }

    buffer->cfNameString = v7;
    buffer->flags = 0x8000000;
    CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    *&v6 = 3266576384;
    goto LABEL_27;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      v8 = -1069547520;
      v9 = @"Max. Media Gain (dB)";
    }

    else
    {
      v8 = -1069547520;
      v9 = @"Min. Media Gain (dB)";
    }

    buffer->cfNameString = v9;
    buffer->flags = 0x8000000;
    CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    *&buffer->minValue = 3266576384;
    buffer->defaultValue = -15.0;
  }

  else
  {
    if (a3 == 2)
    {
      v8 = -1069547520;
      v10 = @"Min. Voice Gain (dB)";
    }

    else
    {
      if (a3 != 3)
      {
        buffer->cfNameString = @"Scale factor for volume matching";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Scale factor for volume matching", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v6 = 2.0615843e11;
LABEL_27:
        *&buffer->minValue = v6;
        buffer->defaultValue = 0.0;
        v8 = -1073741824;
        goto LABEL_28;
      }

      v8 = -1069547520;
      v10 = @"Max. Voice Gain (dB)";
    }

    buffer->cfNameString = v10;
    buffer->flags = 0x8000000;
    CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    *&buffer->minValue = 0x41F00000C2B40000;
    buffer->defaultValue = 0.0;
  }

LABEL_28:
  result = 0;
  buffer->flags |= v8;
  return result;
}

double AUExpanseController::GetParameterList(AUExpanseController *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    *a4 = 0;
  }

  else
  {
    *a4 = 10;
    if (a3)
    {
      *a3 = xmmword_1DE096230;
      *(a3 + 1) = xmmword_1DE09BC60;
      *&result = 0x900000008;
      *(a3 + 4) = 0x900000008;
    }
  }

  return result;
}

uint64_t AUExpanseController::Render(AUExpanseController *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    if (getAUExpanseControllerLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
    }

    v14 = getAUExpanseControllerLog(void)::gLog;
    if (os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = this;
      _os_log_error_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "[%p] AU has no input busses", buf, 0xCu);
    }

    return 4294956420;
  }

  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  v10 = v9;
  if (v11)
  {
    v10 = ausdk::AUInputElement::PullInput(v9, a2, a3, 0, a4);
  }

  if (v10)
  {
    if (getAUExpanseControllerLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
    }

    v12 = getAUExpanseControllerLog(void)::gLog;
    if (os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = this;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      v13 = "[%p] Error[%d] pulling input from bus 0";
LABEL_10:
      _os_log_error_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
      return v10;
    }

    return v10;
  }

  v16 = ausdk::AUScope::GetElement((this + 80), 1u);
  if (!v16 || !*(v16 + 172))
  {
    v19 = 0;
    goto LABEL_26;
  }

  v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
  if (v18)
  {
    v10 = ausdk::AUInputElement::PullInput(v17, a2, a3, 1, a4);
    if (v10)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  v10 = v17;
  if (!v17)
  {
LABEL_32:
    v23 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (!v23)
    {
      goto LABEL_35;
    }

    if (!*(v23 + 144))
    {
      goto LABEL_36;
    }

    v19 = *(v23 + 152) + 48;
LABEL_26:
    v20 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v20)
    {
      v21 = v20;
      v22 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v22)
      {
        if (*(v22 + 144))
        {
          *buf = *(v22 + 152) + 48;
          *&buf[8] = v19;
          if (*(v21 + 144))
          {
            v24[0] = *(v21 + 152) + 48;
            v24[1] = 0;
            return (*(*this + 184))(this, a2, a4, 2, buf, 2, v24);
          }
        }

LABEL_36:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

LABEL_35:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_21:
  if (getAUExpanseControllerLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
  }

  v12 = getAUExpanseControllerLog(void)::gLog;
  if (os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 1024;
    *&buf[14] = v10;
    v13 = "[%p] Error[%d] pulling input from bus 1";
    goto LABEL_10;
  }

  return v10;
}

os_log_t ___Z25getAUExpanseControllerLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUExpanseController");
  getAUExpanseControllerLog(void)::gLog = result;
  return result;
}

uint64_t AUExpanseController::ProcessMultipleBufferLists(AUExpanseController *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v111 = *MEMORY[0x1E69E9840];
  if (a4 != 2)
  {
    if (getAUExpanseControllerLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
    }

    v96 = getAUExpanseControllerLog(void)::gLog;
    if (!os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    __Step = 3.8522e-34;
    v106 = this;
    v107 = 1024;
    v108 = a3;
    v109 = 1024;
    v110 = 2;
    v97 = "[%p] cannot process %u input busses (expected input bus count is %u)";
    v98 = v96;
    goto LABEL_98;
  }

  v12 = *a5;
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_72;
  }

  v14 = *(Element + 108);
  if (*v12 != v14)
  {
    if (getAUExpanseControllerLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
    }

    v99 = getAUExpanseControllerLog(void)::gLog;
    if (!os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v100 = *v12;
    __Step = 3.8522e-34;
    v106 = this;
    v107 = 1024;
    v108 = v100;
    v109 = 1024;
    v110 = v14;
    v97 = "[%p] number of voice input buffers %u is not equal to expected number of voice input channels %u";
    goto LABEL_97;
  }

  v15 = a5[1];
  v16 = ausdk::AUScope::GetElement((this + 80), 1u);
  if (!v16)
  {
    goto LABEL_72;
  }

  if (!v15)
  {
    v42 = *a7;
    mNumberBuffers = (*a7)->mNumberBuffers;
    if (mNumberBuffers)
    {
      v44 = 0;
      v46 = *v12;
      v45 = v12 + 2;
      v47 = v46 - 1;
      v48 = 4 * a3;
      v49 = (v42 + 4);
      do
      {
        if (v47 >= v44)
        {
          v50 = v44;
        }

        else
        {
          v50 = v47;
        }

        v51 = *&v45[4 * v50 + 2];
        if (v51 != *v49)
        {
          memcpy(*v49, v51, v48);
        }

        ++v44;
        v49 += 2;
      }

      while (mNumberBuffers != v44);
    }

    return 0;
  }

  v17 = *(v16 + 108);
  if (v15->mNumberBuffers != v17)
  {
    if (getAUExpanseControllerLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
    }

    v99 = getAUExpanseControllerLog(void)::gLog;
    if (!os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v101 = v15->mNumberBuffers;
    __Step = 3.8522e-34;
    v106 = this;
    v107 = 1024;
    v108 = v101;
    v109 = 1024;
    v110 = v17;
    v97 = "[%p] number of media input buffers %u is not equal to expected number of media input channels %u";
    goto LABEL_97;
  }

  if (a6 != 2)
  {
    if (getAUExpanseControllerLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
    }

    v99 = getAUExpanseControllerLog(void)::gLog;
    if (!os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    __Step = 3.8522e-34;
    v106 = this;
    v107 = 1024;
    v108 = a6;
    v109 = 1024;
    v110 = 2;
    v97 = "[%p] cannot process %u output busses (expected output bus count is %u)";
    goto LABEL_97;
  }

  v18 = *a7;
  v19 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v19)
  {
    goto LABEL_72;
  }

  v20 = *(v19 + 108);
  if (*v18 != v20)
  {
    if (getAUExpanseControllerLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
    }

    v99 = getAUExpanseControllerLog(void)::gLog;
    if (!os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v102 = *v18;
    __Step = 3.8522e-34;
    v106 = this;
    v107 = 1024;
    v108 = v102;
    v109 = 1024;
    v110 = v20;
    v97 = "[%p] number of voice output buffers %u is not equal to expected number of voice output channels %u";
    goto LABEL_97;
  }

  v21 = a7[1];
  v22 = ausdk::AUScope::GetElement((this + 128), 1u);
  if (!v22)
  {
LABEL_72:
    ausdk::Throw(0xFFFFD583);
  }

  v23 = *(v22 + 108);
  if (v21->mNumberBuffers == v23)
  {
    v24 = *(this + 142);
    if (v24 != *(this + 143))
    {
      AUExpanseController::UpdateExpanseControllerState(this);
      *(this + 143) = v24;
    }

    if (*(this + 528) == 1)
    {
      v25 = *v18;
      if (v25)
      {
        v26 = 0;
        v28 = *v12;
        v27 = v12 + 2;
        v29 = v28 - 1;
        v30 = (v18 + 4);
        do
        {
          if (v29 >= v26)
          {
            v31 = v26;
          }

          else
          {
            v31 = v29;
          }

          v32 = *&v27[4 * v31 + 2];
          if (v32 != *v30)
          {
            memcpy(*v30, v32, 4 * a3);
          }

          ++v26;
          v30 += 2;
        }

        while (v25 != v26);
      }

      v33 = v21->mNumberBuffers;
      if (v33)
      {
        v34 = 0;
        v36 = v15->mNumberBuffers;
        mBuffers = v15->mBuffers;
        v37 = v36 - 1;
        v38 = 4 * a3;
        p_mData = &v21->mBuffers[0].mData;
        do
        {
          if (v37 >= v34)
          {
            v40 = v34;
          }

          else
          {
            v40 = v37;
          }

          mData = mBuffers[v40].mData;
          if (mData != *p_mData)
          {
            memcpy(*p_mData, mData, v38);
          }

          ++v34;
          p_mData += 2;
        }

        while (v33 != v34);
      }
    }

    else
    {
      v52 = atomic_load(this + 529);
      if (v52)
      {
        *(this + 134) = 0;
        atomic_store(0, this + 529);
      }

      v53 = COERCE_FLOAT(atomic_load(this + 133));
      v54 = v53;
      if (*(this + 134) == v53)
      {
        __Step = *(this + 140);
        v78 = *v18;
        if (v78)
        {
          v79 = 0;
          v81 = *v12;
          v80 = v12 + 2;
          v82 = v81 - 1;
          v83 = (v18 + 4);
          do
          {
            if (v82 >= v79)
            {
              v84 = v79;
            }

            else
            {
              v84 = v82;
            }

            v85 = *v83;
            v83 += 2;
            MEMORY[0x1E12BE940](*&v80[4 * v84 + 2], 1, &__Step, v85, 1, a3);
            ++v79;
          }

          while (v78 != v79);
        }

        __Step = *(this + 141);
        v86 = v21->mNumberBuffers;
        if (v86)
        {
          v87 = 0;
          v89 = v15->mNumberBuffers;
          v88 = v15->mBuffers;
          v90 = v89 - 1;
          v91 = a3;
          v92 = &v21->mBuffers[0].mData;
          do
          {
            if (v90 >= v87)
            {
              v93 = v87;
            }

            else
            {
              v93 = v90;
            }

            v94 = *v92;
            v92 += 2;
            MEMORY[0x1E12BE940](v88[v93].mData, 1, &__Step, v94, 1, v91);
            ++v87;
          }

          while (v86 != v87);
        }
      }

      else
      {
        *(this + 134) = v53;
        v55 = 0.0;
        if (v53 <= 0.25)
        {
          v55 = ((((fmaxf(roundf(v53 * 16.0) * 0.0625, 0.0625) * 16.0) + -1.0) * -0.25) + 1.0) * *(this + 139);
        }

        v56 = __exp10f(((*(this + 137) + (v53 * (*(this + 138) - *(this + 137)))) + v55) * 0.05);
        v57 = *(this + 140);
        __Step = (v56 - v57) / a3;
        v58 = *v18;
        if (v58)
        {
          v59 = 0;
          v61 = *v12;
          v60 = v12 + 2;
          v62 = v61 - 1;
          v63 = (v18 + 4);
          do
          {
            if (v62 >= v59)
            {
              v64 = v59;
            }

            else
            {
              v64 = v62;
            }

            v65 = *&v60[4 * v64 + 2];
            v66 = *v63;
            v63 += 2;
            __Start = v57;
            vDSP_vrampmul(v65, 1, &__Start, &__Step, v66, 1, a3);
            *(this + 140) = __Start;
            ++v59;
          }

          while (v58 != v59);
        }

        v67 = __exp10f((*(this + 135) + (v54 * (*(this + 136) - *(this + 135)))) * 0.05);
        v68 = *(this + 141);
        __Step = (v67 - v68) / a3;
        v69 = v21->mNumberBuffers;
        if (v69)
        {
          v70 = 0;
          v72 = v15->mNumberBuffers;
          v71 = v15->mBuffers;
          v73 = v72 - 1;
          v74 = &v21->mBuffers[0].mData;
          do
          {
            if (v73 >= v70)
            {
              v75 = v70;
            }

            else
            {
              v75 = v73;
            }

            v76 = v71[v75].mData;
            v77 = *v74;
            v74 += 2;
            __Start = v68;
            vDSP_vrampmul(v76, 1, &__Start, &__Step, v77, 1, a3);
            *(this + 141) = __Start;
            ++v70;
          }

          while (v69 != v70);
        }
      }
    }

    return 0;
  }

  if (getAUExpanseControllerLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
  }

  v99 = getAUExpanseControllerLog(void)::gLog;
  if (os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v103 = v21->mNumberBuffers;
    __Step = 3.8522e-34;
    v106 = this;
    v107 = 1024;
    v108 = v103;
    v109 = 1024;
    v110 = v23;
    v97 = "[%p] number of media output buffers %u is not equal to expected number of media output channels %u";
LABEL_97:
    v98 = v99;
LABEL_98:
    _os_log_error_impl(&dword_1DDB85000, v98, OS_LOG_TYPE_ERROR, v97, &__Step, 0x18u);
  }

  return 4294956428;
}

void AUExpanseController::UpdateExpanseControllerState(AUExpanseController *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (*(this + 135) = ausdk::AUElement::GetParameter(v2, 0), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (*(this + 136) = ausdk::AUElement::GetParameter(v4, 1u), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (*(this + 137) = ausdk::AUElement::GetParameter(v6, 2u), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0) || (*(this + 138) = ausdk::AUElement::GetParameter(v8, 3u), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v11 & 1) == 0))
  {
    abort();
  }

  *(this + 139) = ausdk::AUElement::GetParameter(v10, 4u);
}

uint64_t AUExpanseController::SetParameter(AUExpanseController *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3)
  {
    return 4294956430;
  }

  if (a2 == 5)
  {
    result = 0;
    v7 = COERCE_FLOAT(atomic_load(this + 133));
    if (a5 <= 1.0 && a5 >= 0.0 && v7 != a5)
    {
      for (i = v7; ; v7 = i)
      {
        atomic_compare_exchange_strong(this + 133, &i, LODWORD(a5));
        if (LODWORD(i) == LODWORD(v7))
        {
          break;
        }

        sched_yield();
      }

      return 0;
    }
  }

  else
  {
    result = ausdk::AUBase::SetParameter(this, a2, 0, a4, a5);
    ++*(this + 142);
  }

  return result;
}

uint64_t AUExpanseController::GetParameter(AUExpanseController *this, unsigned int a2, int a3, unsigned int a4, float *a5)
{
  if (a3)
  {
    return 4294956430;
  }

  if (a2 != 5)
  {
    return ausdk::AUBase::GetParameter(this, a2, 0, a4, a5);
  }

  result = 0;
  v7 = atomic_load(this + 133);
  *a5 = v7;
  return result;
}

uint64_t AUExpanseController::SetProperty(AUExpanseController *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    result = 0;
    *(this + 376) = *a5 != 0;
    return result;
  }

  if (a2 != 21)
  {
    return 4294956417;
  }

  if (a6 > 3)
  {
    result = 0;
    v10 = *(this + 528);
    v11 = *a5;
    *(this + 528) = *a5 != 0;
    if (v10 == 1 && !v11)
    {
      result = 0;
      atomic_store(1u, this + 529);
    }
  }

  else
  {
    if (getAUExpanseControllerLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
    }

    v9 = getAUExpanseControllerLog(void)::gLog;
    if (os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218240;
      v13 = this;
      v14 = 1024;
      v15 = a6;
      _os_log_error_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, "[%p] failed to set bypass property; size error; inDataSize[%u]", &v12, 0x12u);
    }

    return 4294956445;
  }

  return result;
}

uint64_t AUExpanseController::GetProperty(AUExpanseController *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 528;
    goto LABEL_7;
  }

  if (a2 == 3700)
  {
    v6 = 376;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AUExpanseController::GetPropertyInfo(AUExpanseController *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v7 = 1;
  }

  else
  {
    if (a2 != 3700)
    {
      return 4294956417;
    }

    v7 = (*(this + 17) & 1) == 0;
  }

  result = 0;
  *a6 = v7;
  *a5 = 4;
  return result;
}

uint64_t AUExpanseController::Initialize(AUExpanseController *this)
{
  v23 = *MEMORY[0x1E69E9840];
  if (getAUExpanseControllerLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
  }

  v2 = getAUExpanseControllerLog(void)::gLog;
  if (os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    v13 = 134217984;
    v14 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] initialize", &v13, 0xCu);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v4 = Element, (v5 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = v5;
  if (*(v4 + 80) == *(v5 + 80) && *(v4 + 108) == *(v5 + 108))
  {
    (*(*this + 72))(this, 0, 0);
    *(this + 143) = *(this + 142);
    AUExpanseController::UpdateExpanseControllerState(this);
    return 0;
  }

  else
  {
    if (getAUExpanseControllerLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
    }

    v8 = getAUExpanseControllerLog(void)::gLog;
    if (os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v9 = *(v4 + 108);
      v10 = *(v4 + 80);
      v11 = *(v6 + 108);
      v12 = *(v6 + 80);
      v13 = 134219008;
      v14 = this;
      v15 = 1024;
      v16 = v9;
      v17 = 2048;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      v21 = 2048;
      v22 = v12;
      _os_log_error_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "[%p] failed to initialize - input format [%u %lf] and output format [%u %lf] mismatched ", &v13, 0x2Cu);
    }

    return 4294956428;
  }
}

void AUExpanseController::~AUExpanseController(AUExpanseController *this)
{
  AUExpanseController::~AUExpanseController(this);

  JUMPOUT(0x1E12BD160);
}

{
  v5 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5924C00;
  if (getAUExpanseControllerLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
  }

  v2 = getAUExpanseControllerLog(void)::gLog;
  if (os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    v3 = 134217984;
    v4 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] destroyed", &v3, 0xCu);
  }

  ausdk::AUBase::~AUBase(this);
}

void *AUFIRFilter::FIRFilterKernel::Process(AUFIRFilter::FIRFilterKernel *this, const float *a2, float *__dst, unsigned int a4, BOOL *a5)
{
  v7 = *(this + 3);
  v8 = *(v7 + 600);
  v9 = *(v7 + 592);
  v10 = v8 - v9;
  if (v8 == v9)
  {

    return memcpy(__dst, a2, 4 * a4);
  }

  else
  {
    v11 = v10 >> 2;
    v12 = v10 - 4;
    v13 = *(this + 4);
    memcpy(v13 + v10 - 4, a2, 4 * a4);
    vDSP_conv(v13, 1, (v12 + v9), -1, __dst, 1, a4, v11);

    return memmove(v13, &v13[a4], v12);
  }
}

void AUFIRFilter::FIRFilterKernel::Reset(AUFIRFilter::FIRFilterKernel *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5) - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }
}

void AUFIRFilter::FIRFilterKernel::~FIRFilterKernel(AUFIRFilter::FIRFilterKernel *this)
{
  *this = &unk_1F59250D8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59250D8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

double AUFIRFilter::GetTailTime(AUFIRFilter *this)
{
  v1 = *(this + 75);
  v2 = *(this + 74);
  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 128, 0);
  if ((v4 & 1) == 0)
  {
    abort();
  }

  return ((v1 - v2) >> 2) / *(v3 + 80);
}

uint64_t AUFIRFilter::SetProperty(AUFIRFilter *this, int a2, int a3, unsigned int a4, CFTypeRef *__src, unsigned int a6)
{
  if (!a3)
  {
    if (a2 > 4503)
    {
      switch(a2)
      {
        case 4504:
          if (*(this + 17))
          {
            return 4294956447;
          }

          if (a6 != 8)
          {
            return 4294956445;
          }

          v13 = *__src;
          applesauce::CF::details::Retain<__CFString const*>(*__src);
          applesauce::CF::StringRef::StringRef(&__p, v13);
          v14 = *(this + 77);
          *(this + 77) = __p;
          __p = v14;
          applesauce::CF::StringRef::~StringRef(&__p);
          break;
        case 4505:
          if (*(this + 17))
          {
            return 4294956447;
          }

          if (a6 != 8)
          {
            return 4294956445;
          }

          v18 = *__src;
          applesauce::CF::details::Retain<__CFNumber const*>(*__src);
          applesauce::CF::NumberRef::NumberRef(&__p, v18);
          v19 = *(this + 78);
          *(this + 78) = __p;
          __p = v19;
          applesauce::CF::NumberRef::~NumberRef(&__p);
          break;
        case 4506:
          if ((*(this + 17) & 1) == 0)
          {
            if (a6 == 8)
            {
              applesauce::CF::ArrayRef::from_get_noexcept(&v23, *__src);
              if (v23 && (applesauce::CF::ArrayRef_proxy::ArrayRef_proxy(&v27, &v23), applesauce::CF::convert_as<std::vector<unsigned char>,0>(&__p, *v27), (v26 & 1) != 0))
              {
                std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>(this + 632, &__p);
                if (__p)
                {
                  v25 = __p;
                  operator delete(__p);
                }

                v10 = 0;
              }

              else
              {
                v10 = 4294956445;
              }

              applesauce::CF::ArrayRef::~ArrayRef(&v23);
              return v10;
            }

            return 4294956445;
          }

          return 4294956447;
        default:
          goto LABEL_28;
      }
    }

    else
    {
      if (a2 != 4501)
      {
        if (a2 != 4502)
        {
          if (a2 == 4503)
          {
            v8 = applesauce::CF::convert_as<double,0>(*__src);
            if (v9)
            {
              v10 = 0;
              *(this + 83) = v8;
              return v10;
            }

            return 4294956445;
          }

LABEL_28:
          a3 = 0;
          goto LABEL_2;
        }

        if ((*(this + 17) & 1) == 0)
        {
          if (a6 != 8)
          {
            return 4294956445;
          }

          applesauce::CF::convert_as<std::vector<float>,0>(&__p, *__src);
          if (v26 != 1)
          {
            return 4294956445;
          }

          v10 = __p;
          v15 = (v25 - __p) >> 2;
          if (((v25 - __p) & 0x3FFFFFFFCLL) != 0)
          {
            v16 = 0;
            v17 = v15 - 1;
            while (*(__p + v17) == 0.0)
            {
              ++v16;
              --v17;
              if (((v25 - __p) >> 2) == v16)
              {
                v16 = (v25 - __p) >> 2;
                break;
              }
            }
          }

          else
          {
            LODWORD(v16) = 0;
          }

          std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(this + 74, __p, __p + 4 * (v15 - v16), (v15 - v16));
          if (!v10)
          {
            return v10;
          }

          operator delete(v10);
          return 0;
        }

        return 4294956447;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      if (!a6)
      {
        return 4294956445;
      }

      v11 = a6 >> 2;
      if (a6 >= 4)
      {
        v12 = 0;
        v20 = -v11;
        v21 = v11 - 1;
        while (*(__src + v21) == 0.0)
        {
          --v21;
          ++v12;
          if (__CFADD__(v20++, 1))
          {
            v12 = a6 >> 2;
            break;
          }
        }
      }

      else
      {
        v12 = 0;
      }

      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(this + 74, __src, __src + 4 * (v11 - v12), v11 - v12);
    }

    return 0;
  }

LABEL_2:

  return ausdk::AUEffectBase::SetProperty(this, a2, a3, a4, __src, a6);
}

void sub_1DDDFECB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a9);
  _Unwind_Resume(a1);
}

CFTypeRef applesauce::CF::details::Retain<__CFNumber const*>(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

applesauce::CF::NumberRef *applesauce::CF::NumberRef::NumberRef(applesauce::CF::NumberRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFNumberGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

void sub_1DDDFEDB4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::convert_as<std::vector<unsigned char>,0>(uint64_t a1, const __CFArray *a2)
{
  if (a2 && (v4 = CFArrayGetTypeID(), v4 == CFGetTypeID(a2)))
  {
    Count = CFArrayGetCount(a2);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<unsigned char>::reserve(&v21, Count);
    if (Count <= 0)
    {
      v9 = v21;
      v7 = v22;
      v8 = v23;
LABEL_50:
      *a1 = v9;
      *(a1 + 8) = v7;
      *(a1 + 16) = v8;
      *(a1 + 24) = 1;
    }

    else
    {
      v6 = 0;
      v20 = Count & 0x7FFFFFFF;
      v7 = v22;
      v8 = v23;
      v9 = v21;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        if (!ValueAtIndex)
        {
          break;
        }

        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(ValueAtIndex))
        {
          switch(CFNumberGetType(ValueAtIndex))
          {
            case kCFNumberSInt8Type:
              LOBYTE(valuePtr) = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberSInt8Type, &valuePtr);
              goto LABEL_27;
            case kCFNumberSInt16Type:
              LOWORD(valuePtr) = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, &valuePtr);
              goto LABEL_27;
            case kCFNumberSInt32Type:
              LODWORD(valuePtr) = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
              goto LABEL_27;
            case kCFNumberSInt64Type:
              valuePtr = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
              goto LABEL_27;
            case kCFNumberFloat32Type:
              v15 = applesauce::CF::details::handle_case<float,unsigned char>(ValueAtIndex, kCFNumberFloat32Type);
              goto LABEL_22;
            case kCFNumberFloat64Type:
              v15 = applesauce::CF::details::handle_case<double,unsigned char>(ValueAtIndex, kCFNumberFloat64Type);
              goto LABEL_22;
            case kCFNumberCharType:
              LOBYTE(valuePtr) = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberCharType, &valuePtr);
              goto LABEL_27;
            case kCFNumberShortType:
              LOWORD(valuePtr) = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberShortType, &valuePtr);
              goto LABEL_27;
            case kCFNumberIntType:
              LODWORD(valuePtr) = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
              goto LABEL_27;
            case kCFNumberLongType:
              valuePtr = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberLongType, &valuePtr);
              goto LABEL_27;
            case kCFNumberLongLongType:
              valuePtr = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, &valuePtr);
              goto LABEL_27;
            case kCFNumberFloatType:
              v15 = applesauce::CF::details::handle_case<float,unsigned char>(ValueAtIndex, kCFNumberFloatType);
              goto LABEL_22;
            case kCFNumberDoubleType:
              v15 = applesauce::CF::details::handle_case<double,unsigned char>(ValueAtIndex, kCFNumberDoubleType);
              goto LABEL_22;
            case kCFNumberCFIndexType:
              valuePtr = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr);
              goto LABEL_27;
            case kCFNumberNSIntegerType:
              valuePtr = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
              v16 = Value != 0;
              if (Value)
              {
                v14 = valuePtr;
              }

              else
              {
                v14 = 0;
              }

              break;
            case kCFNumberCGFloatType:
              v15 = applesauce::CF::details::handle_case<double,unsigned char>(ValueAtIndex, kCFNumberCGFloatType);
LABEL_22:
              v14 = v15;
              v16 = HIBYTE(v15);
              break;
            default:
              goto LABEL_47;
          }

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          v13 = CFBooleanGetTypeID();
          if (v13 != CFGetTypeID(ValueAtIndex))
          {
            break;
          }

          v14 = CFBooleanGetValue(ValueAtIndex);
        }

        if (v7 >= v8)
        {
          v17 = (v7 - v9);
          v18 = v7 - v9 + 1;
          if (v18 < 0)
          {
            v22 = v7;
            v23 = v8;
            v21 = v9;
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          if (2 * (v8 - v9) > v18)
          {
            v18 = 2 * (v8 - v9);
          }

          if (v8 - v9 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            operator new();
          }

          v8 = 0;
          *v17 = v14;
          v7 = v17 + 1;
          memcpy(0, v9, v17);
          if (v9)
          {
            operator delete(v9);
          }

          v9 = 0;
        }

        else
        {
          *v7++ = v14;
        }

        if (v20 == ++v6)
        {
          goto LABEL_50;
        }
      }

LABEL_47:
      v23 = v8;
      v21 = v9;
      *a1 = 0;
      *(a1 + 24) = 0;
      if (v9)
      {
        v22 = v9;
        operator delete(v9);
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

void std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>(uint64_t a1, const void **a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = v4 - *a2;
      v6 = *(a1 + 16);
      v7 = *a1;
      if (v6 - *a1 < v5)
      {
        if (v7)
        {
          *(a1 + 8) = v7;
          operator delete(v7);
          v6 = 0;
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
        }

        if ((v5 & 0x8000000000000000) == 0)
        {
          v8 = 2 * v6;
          if (2 * v6 <= v5)
          {
            v8 = v5;
          }

          if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v9 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v9 = v8;
          }

          std::vector<char>::__vallocate[abi:ne200100](a1, v9);
        }

        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v12 = *(a1 + 8);
      v13 = v12 - v7;
      if (v12 - v7 >= v5)
      {
        if (v4 != v3)
        {
          memmove(v7, v3, v5);
        }

        v16 = &v7[v5];
      }

      else
      {
        if (v12 != v7)
        {
          memmove(*a1, *a2, v12 - v7);
          v12 = *(a1 + 8);
        }

        v14 = &v3[v13];
        v15 = v4 - &v3[v13];
        if (v15)
        {
          memmove(v12, v14, v15);
        }

        v16 = &v12[v15];
      }

      *(a1 + 8) = v16;
    }
  }

  else if (*(a1 + 24))
  {
    v10 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v10;
      operator delete(v10);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v11 = a2[1];
    if (v11 != *a2)
    {
      std::vector<char>::__vallocate[abi:ne200100](a1, v11 - *a2);
    }

    *(a1 + 24) = 1;
  }
}

void sub_1DDDFF320(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t applesauce::CF::details::handle_case<float,unsigned char>(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    v3 = 0;
  }

  return v3 | ((Value != 0) << 8);
}

uint64_t applesauce::CF::details::handle_case<double,unsigned char>(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    v3 = 0;
  }

  return v3 | ((Value != 0) << 8);
}

uint64_t AUFIRFilter::GetProperty(AUFIRFilter *this, int a2, int a3, unsigned int a4, CFArrayRef *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 4502)
  {
    if (a2 > 4504)
    {
      if (a2 == 4505)
      {
        v9 = *(this + 78);
        if (v9)
        {
LABEL_39:
          CFRetain(v9);
        }
      }

      else
      {
        if (a2 != 4506)
        {
          return result;
        }

        if ((*(this + 656) & 1) == 0)
        {
          result = 0;
          *__dst = 0;
          return result;
        }

        v11 = *(this + 80) - *(this + 79);
        v21 = 0;
        v22 = 0;
        v23 = 0;
        std::vector<applesauce::CF::NumberRef>::reserve(&v21, v11);
        v12 = *(this + 79);
        v13 = *(this + 80);
        if (v12 != v13)
        {
          v14 = v22;
          do
          {
            v15 = *v12;
            if (v14 >= v23)
            {
              v16 = (v14 - v21) >> 3;
              if ((v16 + 1) >> 61)
              {
                std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
              }

              v17 = (v23 - v21) >> 2;
              if (v17 <= v16 + 1)
              {
                v17 = v16 + 1;
              }

              if (v23 - v21 >= 0x7FFFFFFFFFFFFFF8)
              {
                v18 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v18 = v17;
              }

              v27 = &v21;
              if (v18)
              {
                std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v18);
              }

              valuePtr[0] = 0;
              valuePtr[1] = (8 * v16);
              v25 = 8 * v16;
              v26 = 0;
              std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>((8 * v16), v15);
              v25 += 8;
              std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v21, valuePtr);
              v14 = v22;
              std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(valuePtr);
            }

            else
            {
              std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>(v14++, *v12);
            }

            v22 = v14;
            ++v12;
          }

          while (v12 != v13);
        }

        v9 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v21);
        valuePtr[0] = &v21;
        std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](valuePtr);
      }
    }

    else
    {
      if (a2 == 4503)
      {
        valuePtr[0] = *(this + 83);
        CFArray = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
        v21 = CFArray;
        if (!CFArray)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        goto LABEL_36;
      }

      v9 = *(this + 77);
      if (v9)
      {
        goto LABEL_39;
      }
    }

    result = 0;
    *__dst = v9;
    return result;
  }

  if (a2 > 4500)
  {
    if (a2 == 4501)
    {
      memcpy(__dst, *(this + 74), *(this + 75) - *(this + 74));
      return 0;
    }

    CFArray = applesauce::CF::details::make_CFArrayRef<float>(this + 74);
LABEL_36:
    v19 = CFArray;
    result = 0;
    *__dst = v19;
    return result;
  }

  if (a2 == 21)
  {
    result = 0;
    v8 = *(this + 552);
    goto LABEL_34;
  }

  if (a2 == 29)
  {
    result = 0;
    v8 = *(this + 554);
LABEL_34:
    *__dst = v8;
  }

  return result;
}

void sub_1DDDFF760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>(CFNumberRef *a1, char a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

uint64_t AUFIRFilter::GetPropertyInfo(AUFIRFilter *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 4502)
  {
    if (a2 > 4504)
    {
      if (a2 != 4505)
      {
        v9 = 4506;
LABEL_15:
        if (a2 != v9)
        {
          return result;
        }
      }
    }

    else if (a2 != 4503)
    {
      v9 = 4504;
      goto LABEL_15;
    }

    *a6 = *(this + 17) ^ 1;
    v8 = 8;
    goto LABEL_17;
  }

  if (a2 > 4500)
  {
    if (a2 == 4501)
    {
      *a6 = *(this + 17) ^ 1;
      v8 = (*(this + 150) - *(this + 148)) & 0xFFFFFFFC;
      goto LABEL_17;
    }

    v9 = 4502;
    goto LABEL_15;
  }

  if (a2 == 21 || a2 == 29)
  {
    *a6 = 1;
    v8 = 4;
LABEL_17:
    result = 0;
    *a5 = v8;
  }

  return result;
}

uint64_t AUFIRFilter::Initialize(AUFIRFilter *this)
{
  v2 = *(this + 77);
  if (!v2 || !*(this + 78))
  {
    goto LABEL_65;
  }

  v3 = *(this + 1);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 128, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  if (!*(this + 78))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *(v4 + 80);
  v7 = applesauce::CF::convert_to<unsigned int,0>(*(this + 78));
  v8 = *MEMORY[0x1E695E480];
  v9 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v2, kCFURLPOSIXPathStyle, 0);
  fileURL = v9;
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = CFGetTypeID(v9);
  if (v10 != CFURLGetTypeID())
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
  }

  if (!fileURL)
  {
LABEL_13:
    LODWORD(isa) = -1;
    goto LABEL_64;
  }

  v11 = CFReadStreamCreateWithFile(v8, fileURL);
  v12 = v11;
  v38 = v11;
  if (!v11)
  {
    v17 = 0;
    isa = 0xFFFFFFFFLL;
    goto LABEL_57;
  }

  if (CFReadStreamOpen(v11))
  {
    v13 = CFPropertyListCreateWithStream(v8, v12, 0, 0, 0, 0);
    v14 = v13;
    if (v13 && (v15 = CFGetTypeID(v13), v15 != CFDictionaryGetTypeID()))
    {
      v37 = 0;
      CFRelease(v14);
      v14 = 0;
    }

    else
    {
      v37 = v14;
    }

    CFReadStreamClose(v12);
    if (v14)
    {
      std::to_string(&v36, v6);
      cf = 0;
      applesauce::CF::at_or<applesauce::CF::DictionaryRef,std::string>(&v36.length, v14, &v36, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (SHIBYTE(v36.data) < 0)
      {
        operator delete(v36.isa);
      }

      length = v36.length;
      if (!v36.length)
      {
        v17 = 0;
        isa = 0xFFFFFFFFLL;
LABEL_55:
        CFRelease(v14);
        goto LABEL_56;
      }

      std::to_string(&v36, v7);
      v34 = 0;
      applesauce::CF::at_or<applesauce::CF::DictionaryRef,std::string>(&cf, length, &v36, &v34);
      if (v34)
      {
        CFRelease(v34);
      }

      if (SHIBYTE(v36.data) < 0)
      {
        operator delete(v36.isa);
      }

      v19 = cf;
      if (cf)
      {
        if (*(this + 656) == 1 && (v20 = *(this + 79), *(this + 80) - v20 > v7))
        {
          v21 = *(v20 + v7);
        }

        else
        {
          v21 = 0;
        }

        std::to_string(&v36, v21);
        v33 = 0;
        applesauce::CF::at_or<applesauce::CF::DataRef,std::string>(&v34, v19, &v36, &v33);
        if (v33)
        {
          CFRelease(v33);
        }

        if (SHIBYTE(v36.data) < 0)
        {
          operator delete(v36.isa);
        }

        v22 = v34;
        if (!v34)
        {
          goto LABEL_46;
        }
      }

      else
      {
        std::to_string(&v36, v7);
        v33 = 0;
        applesauce::CF::at_or<applesauce::CF::DataRef,std::string>(&v34, length, &v36, &v33);
        if (v33)
        {
          CFRelease(v33);
        }

        if (SHIBYTE(v36.data) < 0)
        {
          operator delete(v36.isa);
        }

        v22 = v34;
        if (!v34)
        {
          goto LABEL_46;
        }
      }

      CFRelease(v34);
LABEL_46:
      v17 = v22 != 0;
      if (v22)
      {
        v23 = CFDataGetLength(v22);
        v24 = v23 >> 2;
        std::vector<float>::vector[abi:ne200100](&v36, v23 >> 2);
        BytePtr = CFDataGetBytePtr(v22);
        isa = v36.isa;
        if (v23 >= 4)
        {
          v26 = v36.isa;
          do
          {
            v27 = *BytePtr;
            BytePtr += 4;
            *v26++ = bswap32(v27);
            --v24;
          }

          while (v24);
        }

        info = v36.info;
      }

      else
      {
        isa = 0xFFFFFFFFLL;
      }

      if (v19)
      {
        CFRelease(v19);
      }

      CFRelease(length);
      goto LABEL_55;
    }

    v17 = 0;
    isa = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = 0;
    isa = CFReadStreamGetError(v12).error;
  }

LABEL_56:
  CFRelease(v12);
LABEL_57:
  if (fileURL)
  {
    CFRelease(fileURL);
  }

  if (v17)
  {
    v28 = AudioUnitSetProperty(v3, 0x1195u, 0, 0, isa, (info - isa) & 0xFFFFFFFC);
    if (isa)
    {
      operator delete(isa);
    }

    if (v28)
    {
      return 4294956421;
    }

    goto LABEL_65;
  }

LABEL_64:
  if (isa)
  {
    return 4294956421;
  }

LABEL_65:

  return ausdk::AUEffectBase::Initialize(this);
}

void sub_1DDDFFDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, void *__p, uint64_t a15, uint64_t a16, const void *a17, const void *a18, const void *a19, const void *a20)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a13);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a17);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a18);
  applesauce::CF::ObjectRef<__CFReadStream *>::~ObjectRef(&a19);
  applesauce::CF::URLRef::~URLRef(&a20);
  _Unwind_Resume(a1);
}

void AUFIRFilter::~AUFIRFilter(AUFIRFilter *this)
{
  AUFIRFilter::~AUFIRFilter(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5924E70;
  if (*(this + 656) == 1)
  {
    v2 = *(this + 79);
    if (v2)
    {
      *(this + 80) = v2;
      operator delete(v2);
    }
  }

  v3 = *(this + 78);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 77);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 74);
  if (v5)
  {
    *(this + 75) = v5;
    operator delete(v5);
  }

  *this = &unk_1F593A7A8;
  v6 = (this + 528);
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](&v6);

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUDereverb::GetScopeExtended(AUDereverb *this, int a2)
{
  if (a2 == 4)
  {
    return this + 568;
  }

  else
  {
    return 0;
  }
}

uint64_t AUDereverb::ChangeStreamFormat(AUDereverb *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  v6 = a3;
  v7 = a2;
  v17 = *MEMORY[0x1E69E9840];
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  v9 = 0;
  if (v7 == 1 && !v6)
  {
    if (ausdk::AUScope::GetElement((this + 80), 1u))
    {
      Element = ausdk::AUScope::GetElement((this + 80), 1u);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v9 = (*(*Element + 56))(Element, a5);
      if (AUDereverbLogScope(void)::once != -1)
      {
        dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
      }

      if (AUDereverbLogScope(void)::scope)
      {
        v11 = *AUDereverbLogScope(void)::scope;
        if (!*AUDereverbLogScope(void)::scope)
        {
          return v9;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "AUDereverb.cpp";
        v15 = 1024;
        v16 = 917;
        _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Setting the stream format for the second input bus to match the format of the first bus.\n", &v13, 0x12u);
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t AUDereverb::ValidFormat(AUDereverb *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 64 && a4->mFormatID == 1718773105)
  {
    result = (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    result = 0;
  }

  if (a2 == 2 || a2 == 1)
  {
    if (a4->mChannelsPerFrame < 0x11)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUDereverb::SupportedNumChannels(AUDereverb *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUDereverb::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 16;
}

uint64_t AUDereverb::GetParameterValueStrings(AUDereverb *this, int a2, int a3, const __CFArray **a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    return 0;
  }

  v7[0] = xmmword_1E866B970;
  v7[1] = *off_1E866B980;
  v6 = CFArrayCreate(0, v7, 4, 0);
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t AUDereverb::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    this[66] = (this[66] + 1);
    this[68] = (this[68] + 1);
  }

  return result;
}

uint64_t AUDereverb::SaveExtendedScopes(AUDereverb *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUDereverb::GetParameterInfo(AUDereverb *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2 == 4)
  {
    result = 4294956418;
    if (a3 <= 10)
    {
      if (a3 == 9)
      {
        buffer->cfNameString = @"EC Delta EIR";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC Delta EIR", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v8 = 0x501502F900000000;
      }

      else
      {
        if (a3 != 10)
        {
          return result;
        }

        buffer->cfNameString = @"EC IR Delay";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC IR Delay", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v8 = 0x43C8000000000000;
      }

      goto LABEL_18;
    }

    switch(a3)
    {
      case 11:
        v7 = @"EC Adapted flag";
        break;
      case 12:
        buffer->cfNameString = @"EC Time aligned ref signal energy";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC Time aligned ref signal energy", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v8 = 0x447A000000000000;
LABEL_18:
        *&buffer->minValue = v8;
        flags = buffer->flags;
        v10 = 1073774592;
LABEL_44:
        v13 = flags | v10;
LABEL_45:
        result = 0;
        buffer->flags = v13;
        return result;
      case 13:
        v7 = @"EC Mic-Eclee cross correlation";
        break;
      default:
        return result;
    }

    buffer->cfNameString = v7;
    buffer->flags = 0x8000000;
    CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Generic;
    buffer->defaultValue = 0.0;
    v8 = 0x3F80000000000000;
    goto LABEL_18;
  }

  if (!a2)
  {
    result = 4294956418;
    switch(a3)
    {
      case 0:
        buffer->cfNameString = @"MCLP mode";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"MCLP mode", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        v6 = 0x4040000000000000;
        goto LABEL_35;
      case 1:
        buffer->cfNameString = @"Delay for MCLP";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Delay for MCLP", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v6 = 0x408000003F800000;
        goto LABEL_35;
      case 2:
        buffer->cfNameString = @"MCLP order";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"MCLP order", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x41F000003F800000;
        v15 = 5.0;
        goto LABEL_36;
      case 3:
        buffer->cfNameString = @"Forgetting factor (time constant)";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Forgetting factor (time constant)", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        *&buffer->minValue = 0x412000003E99999ALL;
        v15 = 1.58;
        goto LABEL_36;
      case 4:
        buffer->cfNameString = @"Backward prediction error energy threshold";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Backward prediction error energy threshold", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 0x41C8000000000000;
        v11 = 10.0;
        goto LABEL_26;
      case 5:
        v14 = @"Filter echo estimates?";
        goto LABEL_30;
      case 6:
        v14 = @"Stop adaptation during echo?";
LABEL_30:
        buffer->cfNameString = v14;
        buffer->flags = 0x8000000;
        CFStringGetCString(v14, buffer->name, 52, 0x8000100u);
        buffer->clumpID = 2;
        v16 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        *&buffer->minValue = 0x3F80000000000000;
        buffer->defaultValue = 0.0;
        v13 = v16 | 0xC0100000;
        goto LABEL_45;
      case 7:
        v17 = @"Sxx threshold to stop adaptation";
        goto LABEL_38;
      case 8:
        v17 = @"Eclee threshold to stop adaptation";
LABEL_38:
        buffer->cfNameString = v17;
        buffer->flags = 0x8000000;
        CFStringGetCString(v17, buffer->name, 52, 0x8000100u);
        buffer->clumpID = 2;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        buffer->defaultValue = -60.0;
        *&buffer->minValue = 3267887104;
        goto LABEL_39;
      case 14:
        buffer->cfNameString = @"Apply conversion factor?";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Apply conversion factor?", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        v6 = 0x3F80000000000000;
LABEL_35:
        *&buffer->minValue = v6;
        v15 = 1.0;
LABEL_36:
        buffer->defaultValue = v15;
        v13 = buffer->flags | 0xC0000000;
        goto LABEL_45;
      case 15:
        buffer->cfNameString = @"Min frequency for backward prediction energy";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Min frequency for backward prediction energy", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        *&buffer->minValue = 0x447A000000000000;
        v11 = 50.0;
        goto LABEL_26;
      case 16:
        buffer->cfNameString = @"Max frequency for backward prediction energy";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Max frequency for backward prediction energy", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        *&buffer->minValue = 0x46BB8000447A0000;
        v11 = 7000.0;
LABEL_26:
        buffer->defaultValue = v11;
LABEL_39:
        v10 = -1072693248;
        goto LABEL_44;
      case 17:
        buffer->cfNameString = @"Selected MCLP order";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Selected MCLP order", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        v12 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x41F0000000000000;
        buffer->defaultValue = 0.0;
        v13 = v12 | 0x40108000;
        goto LABEL_45;
      case 18:
        buffer->cfNameString = @"Weighted error regularization energy threshold";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Weighted error regularization energy threshold", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 2;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0xC2200000C2C80000;
        buffer->defaultValue = -70.0;
        goto LABEL_43;
      case 19:
        v18 = @"P-norm";
        goto LABEL_41;
      case 20:
        buffer->cfNameString = @"Time period after which debug metrics are logged";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Time period after which debug metrics are logged", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 2;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        v19 = 0x45D0500000000000;
        goto LABEL_42;
      case 21:
        v18 = @"Place holder";
LABEL_41:
        buffer->cfNameString = v18;
        buffer->flags = 0x8000000;
        CFStringGetCString(v18, buffer->name, 52, 0x8000100u);
        buffer->clumpID = 2;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v19 = 0x3F80000000000000;
LABEL_42:
        *&buffer->minValue = v19;
        buffer->defaultValue = 0.0;
LABEL_43:
        v10 = -1005584384;
        goto LABEL_44;
      default:
        return result;
    }
  }

  return 4294956430;
}

uint64_t AUDereverb::GetParameterList(AUDereverb *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 4)
  {
    if (!a3)
    {
      v4 = 5;
      goto LABEL_10;
    }

    v4 = 5;
    *a3 = 9;
    v5 = 13;
    v10 = 3;
    v7 = 11;
    v8 = 10;
    v9 = 4;
    v11 = 2;
    v12 = 1;
    v6 = 12;
    goto LABEL_7;
  }

  if (a2)
  {
    return 4294956430;
  }

  v4 = 17;
  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    v5 = 21;
    v6 = 20;
    v7 = 19;
    v8 = 18;
    *(a3 + 2) = xmmword_1DE09DBA0;
    a3[12] = 17;
    v9 = 16;
    v10 = 15;
    v11 = 14;
    v12 = 13;
LABEL_7:
    a3[v12] = v8;
    a3[v11] = v7;
    a3[v10] = v6;
    a3[v9] = v5;
  }

LABEL_10:
  result = 0;
  *a4 = v4;
  return result;
}