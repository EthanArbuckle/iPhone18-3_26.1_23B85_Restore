double __divdc3(double a1, double a2, double a3, double a4)
{
  v4 = fmax(fabs(a3), fabs(a4));
  v5 = -INFINITY;
  v6 = __clz(*&v4);
  v7 = (((*&v4 << (v6 - 11) >> 52) & 0x7FF) - v6 - 1012);
  if (*&v4 >> 52)
  {
    v7 = ((*&v4 >> 52) - 1023);
  }

  if (v4 != 0.0)
  {
    v5 = v7;
  }

  if (*&v4 >> 52 == 2047)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  v22 = -v8;
  if (a3 == 0.0 || (v23 = (*&a3 >> 52) & 0x7FFLL, v23 == 2047))
  {
LABEL_34:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  v24 = *&a3 & 0xFFFFFFFFFFFFFLL;
  if (!v23)
  {
    v25 = __clz(v24);
    v26 = v24 << (v25 - 11);
    LODWORD(v23) = 12 - v25;
    v24 = v26 & 0xFFEFFFFFFFFFFFFFLL;
  }

  v20 = __OFADD__(v23, v22);
  LODWORD(v23) = v23 - v8;
  if (v20)
  {
    v23 = (v23 >> 31) ^ 0x80000000;
  }

  else
  {
    v23 = v23;
  }

  v27 = *&a3 & 0x8000000000000000;
  if (v23 < 2047)
  {
    if (v23 <= 0)
    {
      v37 = v24 | v27 | 0x10000000000000;
      if (v23 <= -1021)
      {
        v38 = -1021;
      }

      else
      {
        v38 = v23;
      }

      a3 = *&v37 * COERCE_DOUBLE((v38 + 1022) << 52);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

    *&a3 = v27 | (v23 << 52) | v24;
    goto LABEL_34;
  }

  a3 = COERCE_DOUBLE(v27 | 0x7FE0000000000000) + COERCE_DOUBLE(v27 | 0x7FE0000000000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_35:
  v28 = (*&a4 >> 52) & 0x7FFLL;
  if (v28 != 2047)
  {
    v29 = *&a4 & 0xFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v30 = __clz(v29);
      v31 = v29 << (v30 - 11);
      LODWORD(v28) = 12 - v30;
      v29 = v31 & 0xFFEFFFFFFFFFFFFFLL;
    }

    v20 = __OFADD__(v28, v22);
    LODWORD(v32) = v28 - v8;
    if (v20)
    {
      v32 = (v32 >> 31) ^ 0x80000000;
    }

    else
    {
      v32 = v32;
    }

    v33 = *&a4 & 0x8000000000000000;
    if (v32 < 2047)
    {
      if (v32 <= 0)
      {
        if (v32 <= -1021)
        {
          LODWORD(v32) = -1021;
        }

        a4 = COERCE_DOUBLE(v29 | v33 | 0x10000000000000) * COERCE_DOUBLE((v32 + 1022) << 52);
      }

      else
      {
        *&a4 = v33 | (v32 << 52) | v29;
      }
    }

    else
    {
      a4 = COERCE_DOUBLE(v33 | 0x7FE0000000000000) + COERCE_DOUBLE(v33 | 0x7FE0000000000000);
    }
  }

LABEL_10:
  v10 = a4 * a4 + a3 * a3;
  v11 = (a4 * a2 + a1 * a3) / v10;
  v12 = -v9;
  if (v11 != 0.0)
  {
    v13 = (a4 * a2 + a1 * a3) / v10;
    v14 = (*&v11 >> 52) & 0x7FFLL;
    if (v14 != 2047)
    {
      v15 = *&v13 & 0xFFFFFFFFFFFFFLL;
      v16 = __clz(*&v13 & 0xFFFFFFFFFFFFFLL);
      v17 = (*&v13 & 0xFFFFFFFFFFFFFLL) << (v16 - 11);
      v18 = 12 - v16;
      v19 = v17 & 0xFFEFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v19;
        LODWORD(v14) = v18;
      }

      v20 = __OFADD__(v14, v12);
      LODWORD(v14) = v14 + v12;
      if (v20)
      {
        v14 = (v14 >> 31) ^ 0x80000000;
      }

      else
      {
        v14 = v14;
      }

      v21 = *&v11 & 0x8000000000000000;
      if (v14 < 2047)
      {
        if (v14 <= 0)
        {
          v34 = v15 | v21 | 0x10000000000000;
          if (v14 <= -1021)
          {
            v35 = -1021;
          }

          else
          {
            v35 = v14;
          }

          return *&v34 * COERCE_DOUBLE((v35 + 1022) << 52);
        }

        else
        {
          *&v11 = v21 | (v14 << 52) | v15;
        }
      }

      else
      {
        return COERCE_DOUBLE(v21 | 0x7FE0000000000000) + COERCE_DOUBLE(v21 | 0x7FE0000000000000);
      }
    }
  }

  return v11;
}

uint64_t Phase::Zeppelin::AcousticsUtils::GetDefaultThirdOctaveBandCenterFrequencies(Phase::Zeppelin::AcousticsUtils *this)
{
  {
    operator new();
  }

  return Phase::Zeppelin::AcousticsUtils::GetDefaultThirdOctaveBandCenterFrequencies(void)::centerFreqs;
}

void sub_23A303C70(_Unwind_Exception *a1)
{
  MEMORY[0x23EE864A0](v1, 0x80C40D6874129);
  _Unwind_Resume(a1);
}

float Phase::Zeppelin::AcousticsUtils::ComputeWavenumber(Phase::Zeppelin::AcousticsUtils *this, float a2, float a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2 <= 0.0)
  {
    v4 = **(Phase::Logger::GetInstance(this) + 944);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AcousticsUtils.cpp";
      v10 = 1024;
      v11 = 44;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(0.0 >= inFrequency) is true]: ErrorDescriptions::kErrDescr_nonPositiveFrequency", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nonPositiveFrequency);
  }

  if (a3 <= 0.0)
  {
    v6 = **(Phase::Logger::GetInstance(this) + 944);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AcousticsUtils.cpp";
      v10 = 1024;
      v11 = 49;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(0.0f >= inSpeedOfSound) is true]: ErrorDescriptions::kErrDescr_nonPositiveSpeedOfSound", &v8, 0x12u);
    }

    v7 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v7, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nonPositiveSpeedOfSound);
  }

  return a2 * 6.28318531 / a3;
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A303F18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void Phase::ActionTreeServerCallbackInterface::SubmitGeneratorPreparedResult(uint64_t a1, os_signpost_id_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = mach_absolute_time();
  Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage((a1 + 32), 1u, __src, 0x18uLL);
  Instance = Phase::Logger::GetInstance(v5);
  if (*(Instance + 712) == 1)
  {
    v7 = **(Phase::Logger::GetInstance(Instance) + 704);
    v8 = v7;
    if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 134217984;
      v11 = a2;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v8, OS_SIGNPOST_INTERVAL_END, a2, "Phase_Generator_Prepare", "Generator ID %llu", buf, 0xCu);
    }
  }
}

void sub_23A304190(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::ActionTreeServerCallbackInterface::SubmitGeneratorCompletedResult(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = *a4;
  Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage((a1 + 32), 2u, __src, 0x18uLL);
  (*(**(a1 + 96) + 16))(*(a1 + 96), a2, a3, 0);
  v7 = *(**(a1 + 96) + 40);

  return v7();
}

void Phase::ActionTreeServerCallbackInterface::SubmitGeneratorSeekCompletedResult(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __src[0] = a2;
  __src[1] = a3;
  v5 = a4;
  Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage((a1 + 32), 3u, __src, 0x18uLL);
}

void Phase::ActionTreeServerCallbackInterface::SubmitGeneratorPlayStateChanged(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __src[0] = a2;
  __src[1] = a3;
  v5 = a4;
  Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage((a1 + 32), 5u, __src, 0x18uLL);
}

uint64_t Phase::ActionTreeServerCallbackInterface::GetResidentBufferForGenerator(Phase::ActionTreeServerCallbackInterface *this, UniqueObjectId a2)
{
  v3 = *(this + 12);
  if (!v3)
  {
    std::terminate();
  }

  v4 = *(*v3 + 48);

  return v4();
}

uint64_t Phase::ActionTreeServerCallbackInterface::GeneratorStreamSeek(Phase::ActionTreeServerCallbackInterface *this, UniqueObjectId a2, __n128 a3, PHASEPlaybackMode a4)
{
  v5 = *(this + 12);
  if (!v5)
  {
    std::terminate();
  }

  v6 = *(*v5 + 56);

  return v6(a3);
}

uint64_t Phase::ActionTreeServerCallbackInterface::IORenderOutput(Phase::ActionTreeServerCallbackInterface *this, UniqueObjectId a2, const AudioTimeStamp *a3, uint64_t a4, AudioBufferList *a5)
{
  v6 = *(this + 12);
  if (!v6 || !(*(*v6 + 72))(v6))
  {
    return 0;
  }

  v7 = *(**(this + 12) + 80);

  return v7();
}

double Phase::ActionTreeServerCallbackInterface::ClearBuffer(Phase::ActionTreeServerCallbackInterface *this)
{
  v1 = (this + 32);
  if (*(this + 4))
  {
    *(this + 5) = 0;
  }

  else if (*(this + 11))
  {
    v4 = 0u;
    v5 = 0u;
    std::function<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::operator()(this + 64, v1, &v4, 0);
    result = *&v4;
    v3 = v5;
    *v1 = v4;
    v1[1] = v3;
  }

  return result;
}

uint64_t Phase::ActionTreeServerCommandProcessor::ActionTreeServerCommandProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284D2EF48;
  *(a1 + 8) = 0u;
  v11 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = *(a1 + 72);
  *(a1 + 72) = v12;

  *a1 = &unk_284D2EEF8;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = a4;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = a6;
  *(a1 + 152) = 0;
  *(a1 + 160) = &unk_284D2EEA0;
  *(a1 + 168) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  std::vector<char>::__append((a1 + 168), 0x20000uLL);
  v14 = *(a1 + 168);
  v15 = *(a1 + 184) - v14;
  *(a1 + 192) = v14;
  *(a1 + 200) = 0;
  *(a1 + 208) = v15;
  *(a1 + 216) = a1 + 168;
  v18 = &unk_284D2EFF8;
  v19 = Phase::Dispatch::sMessageWriterCallback;
  v21 = &v18;
  std::function<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::operator=((a1 + 224), &v18);
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](&v18);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  if (!*(a1 + 144))
  {
    operator new();
  }

  v16 = *(a1 + 152);
  if (!v16)
  {
    std::terminate();
  }

  *(a1 + 256) = v16;
  v18 = Phase::ActionTreeServerCommandProcessor::SleepGeneratorHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 1);
  v18 = Phase::ActionTreeServerCommandProcessor::WakeGeneratorHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 2);
  v18 = Phase::ActionTreeServerCommandProcessor::StopGeneratorHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 3);
  v18 = Phase::ActionTreeServerCommandProcessor::PauseGeneratorHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 4);
  v18 = Phase::ActionTreeServerCommandProcessor::ResumeGeneratorHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 5);
  v18 = Phase::ActionTreeServerCommandProcessor::SeekGeneratorHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 6);
  v18 = Phase::ActionTreeServerCommandProcessor::PrepareSamplerHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 7);
  v18 = Phase::ActionTreeServerCommandProcessor::PrepareProcedureHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 8);
  v18 = Phase::ActionTreeServerCommandProcessor::SetGeneratorParameterHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 9);
  v18 = Phase::ActionTreeServerCommandProcessor::SetGeneratorUpdateParametersHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 10);
  v18 = Phase::ActionTreeServerCommandProcessor::PlayGeneratorHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 11);
  v18 = Phase::ActionTreeServerCommandProcessor::EnqueueGeneratorBufferHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 12);
  v18 = Phase::ActionTreeServerCommandProcessor::SetSpatialCategorySendLevelHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 13);
  v18 = Phase::ActionTreeServerCommandProcessor::SetSpatialCategoryParameterHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 14);
  v18 = Phase::ActionTreeServerCommandProcessor::CreateSpatialSubmixHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 15);
  v18 = Phase::ActionTreeServerCommandProcessor::CreateAmbientSubmixHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 16);
  v18 = Phase::ActionTreeServerCommandProcessor::CreateChannelSubmixHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 17);
  v18 = Phase::ActionTreeServerCommandProcessor::SetSubmixParameterHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 18);
  v18 = Phase::ActionTreeServerCommandProcessor::SetAmbientSubmixOrientationHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 19);
  v18 = Phase::ActionTreeServerCommandProcessor::DestroySubmixHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 20);
  v18 = Phase::ActionTreeServerCommandProcessor::GeoQueryHandler;
  v19 = 0;
  v20 = a1;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(v11, 21);
  return a1;
}

void sub_23A304AFC(_Unwind_Exception *a1)
{
  MEMORY[0x23EE864A0](v4, 0x10A1C405A4BACE5);
  v6 = *(v1 + 264);
  if (v6)
  {
    do
    {
      v7 = *v6;
      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  *(v1 + 264) = 0;
  Phase::Dispatch::TransactionWriter<Phase::ActionTreeClientCommand>::~TransactionWriter(v3);
  v8 = *(v1 + 152);
  *(v1 + 152) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(v2);
  Phase::Dispatch::TransactionExecutor<Phase::ActionTreeServerCommand>::~TransactionExecutor(v1);
  _Unwind_Resume(a1);
}

void sub_23A304BE0(uint64_t a1, ...)
{
  va_start(va, a1);
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](v1 + 224);
  v2 = *(v1 + 168);
  if (v2)
  {
    *(v1 + 176) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23A304B98);
}

void Phase::ActionTreeServerCommandProcessor::SleepGeneratorHandler(Phase::ActionTreeServerCommandProcessor *this, uint64_t *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::SleepGenerator(**(this + 11), *a2, a2[1]);
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, &v6, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::WakeGeneratorHandler(Phase::ActionTreeServerCommandProcessor *this, uint64_t *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::WakeGenerator(**(this + 11), *a2, a2[1]);
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, &v6, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::StopGeneratorHandler(Phase::ActionTreeServerCommandProcessor *this, uint64_t *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::StopGenerator(**(this + 11), *a2, a2[1], 0.0);
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, &v6, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::PauseGeneratorHandler(Phase::ActionTreeServerCommandProcessor *this, uint64_t *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::PauseGenerator(**(this + 11), *a2, a2[1]);
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v6 = *(**(this + 19) + 16);

    v6();
  }

  else
  {
    v7 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, &v7, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::ResumeGeneratorHandler(Phase::ActionTreeServerCommandProcessor *this, uint64_t *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::ResumeGenerator(**(this + 11), *a2, a2[1]);
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v6 = *(**(this + 19) + 16);

    v6();
  }

  else
  {
    v7 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, &v7, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::SeekGeneratorHandler(Phase::ActionTreeServerCommandProcessor *this, __int128 *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::SeekGeneratorTime(**(this + 11), *a2, *(a2 + 1), *(a2 + 2));
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, &v6, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::PrepareSamplerHandler(Phase::ActionTreeServerCommandProcessor *this, unsigned __int8 *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a2[48];
  v32 = 0;
  v37 = *(a2 + 8);
  v38 = -1;
  v5 = *(a2 + 14);
  v44 = *(a2 + 13);
  v45 = 0uLL;
  v39 = v4;
  v40 = 0;
  v6 = *(a2 + 72);
  v41 = *(a2 + 56);
  v42 = v6;
  v43 = *(a2 + 88);
  v31 = &unk_284D2EF70;
  v33 = v5;
  v7 = *(a2 + 15);
  v36 = *(a2 + 16);
  *&v6 = *(a2 + 5);
  v34 = v7;
  v35 = v6;
  v46 = *(a2 + 152);
  if (v4 != 3)
  {
    goto LABEL_12;
  }

  v45 = *(a2 + 136);
  v8 = Phase::Controller::TaskManager::GetObjCService<ExternalStreamManager>(*(this + 10), 15);
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2 + 136];
  v30 = 0;
  v10 = [v8 formatForStream:v9 error:&v30];
  v11 = v30;
  v12 = v11;
  if (v11)
  {
    v13 = **(Phase::Logger::GetInstance(v11) + 400);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "ActionTreeInterface.mm";
      *&buf[12] = 1024;
      *&buf[14] = 518;
      v48 = 2048;
      v49 = this;
      v50 = 2112;
      v51 = v9;
      v52 = 2112;
      v53 = v12;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: failed to query pull stream %@ format: %@", buf, 0x30u);
    }

    *buf = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, buf, 0x10uLL);

    return;
  }

  v29 = 0;
  v14 = [v8 typeForStream:v9 error:&v29];
  v15 = v29;
  v16 = v15;
  if (v15)
  {
    v17 = **(Phase::Logger::GetInstance(v15) + 400);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "ActionTreeInterface.mm";
      *&buf[12] = 1024;
      *&buf[14] = 528;
      v48 = 2048;
      v49 = this;
      v50 = 2112;
      v51 = v9;
      v52 = 2112;
      v53 = v16;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: failed to query pull stream %@ type: %@", buf, 0x30u);
    }

    *buf = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, buf, 0x10uLL);
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:*(a2 + 8)];
    v19 = objc_alloc(MEMORY[0x277CB83A8]);
    [v10 sampleRate];
    v20 = [v19 initStandardFormatWithSampleRate:v18 channelLayout:?];
    v21 = [v20 streamDescription];
    v22 = *v21;
    v23 = *(v21 + 16);
    v44 = *(v21 + 32);
    v42 = v22;
    v43 = v23;
    v40 = v14;
  }

  if (!v16)
  {
LABEL_12:
    v24 = (*(**(this + 19) + 32))(*(this + 19), a2);
    if (v24)
    {
      v25 = Phase::Controller::VoiceManager::Implementation::PrepareGenerator(**(this + 11), *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), &v31);
      if (HIDWORD(v25) || !v25)
      {
        return;
      }
    }

    else
    {
      v26 = **(Phase::Logger::GetInstance(v24) + 704);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *a2;
        v28 = *(a2 + 2);
        *buf = 136315906;
        *&buf[4] = "ActionTreeInterface.mm";
        *&buf[12] = 1024;
        *&buf[14] = 549;
        v48 = 2048;
        v49 = v27;
        v50 = 2048;
        v51 = v28;
        _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: could not prepare IO manager for generatorId %llu, submixId %llu!", buf, 0x26u);
      }
    }

    *buf = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, buf, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::PrepareProcedureHandler(Phase::ActionTreeServerCommandProcessor *this, __int128 *a2)
{
  v4 = *(a2 + 48);
  v10 = 1;
  v17 = v4;
  v15 = *(a2 + 8);
  v16 = -1;
  v5 = *(a2 + 7);
  v9 = &unk_284D2EFA0;
  v11 = v5;
  v6 = *(a2 + 8);
  v14 = *(a2 + 9);
  v7 = *(a2 + 5);
  v12 = v6;
  v13 = v7;
  v18 = a2[5];
  v19 = *(a2 + 24);
  v20 = *(a2 + 13);
  v8 = Phase::Controller::VoiceManager::Implementation::PrepareGenerator(**(this + 11), *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), &v9);
  if (!HIDWORD(v8))
  {
    if (v8)
    {
      __src = *a2;
      Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, &__src, 0x10uLL);
    }
  }
}

void Phase::ActionTreeServerCommandProcessor::SetGeneratorParameterHandler(Phase::ActionTreeServerCommandProcessor *this, __int128 *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::SetGeneratorParameter(**(this + 11), *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3));
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, &v6, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::SetGeneratorUpdateParametersHandler(Phase::ActionTreeServerCommandProcessor *this, __int128 *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::SetGeneratorParameter(**(this + 11), *a2, *(a2 + 1), 0xB5767F7E05AD941ELL, *(a2 + 2));
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5 || ((v6 = Phase::Controller::VoiceManager::Implementation::SetGeneratorParameter(**(this + 11), *a2, *(a2 + 1), 0x8119B92FBF50030uLL, *(a2 + 3)), !HIDWORD(v6)) ? (v7 = v6 == 0) : (v7 = 1), !v7 || ((v8 = Phase::Controller::VoiceManager::Implementation::SetGeneratorParameter(**(this + 11), *a2, *(a2 + 1), 0x81FBB92FC0173ECuLL, *(a2 + 4)), !HIDWORD(v8)) ? (v9 = v8 == 0) : (v9 = 1), !v9 || ((v10 = Phase::Controller::VoiceManager::Implementation::SetGeneratorParameter(**(this + 11), *a2, *(a2 + 1), 0x981F232BD33EC927, *(a2 + 5)), !HIDWORD(v10)) ? (v11 = v10 == 0) : (v11 = 1), !v11))))
  {
    v12 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, &v12, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::PlayGeneratorHandler(uint64_t **this, uint64_t *a2)
{
  Instance = Phase::Logger::GetInstance(this);
  v5 = os_signpost_id_generate(**(Instance + 704));
  v6 = Phase::Logger::GetInstance(v5);
  if (*(v6 + 712) == 1)
  {
    v7 = **(Phase::Logger::GetInstance(v6) + 704);
    v8 = v7;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Phase_PlayGenerator", "PlayGenerator", &v15, 2u);
    }
  }

  v9 = Phase::Controller::VoiceManager::Implementation::PlayGenerator(*this[11], *a2, a2[1]);
  if (HIDWORD(v9))
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    v11 = (*(*this[19] + 16))(this[19], *a2, a2[1], 1);
  }

  else
  {
    v15 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 7u, &v15, 0x10uLL);
  }

  v12 = Phase::Logger::GetInstance(v11);
  if (*(v12 + 712) == 1)
  {
    v13 = **(Phase::Logger::GetInstance(v12) + 704);
    v14 = v13;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v14, OS_SIGNPOST_INTERVAL_END, v5, "Phase_PlayGenerator", "PlayGenerator Finish", &v15, 2u);
    }
  }
}

void Phase::ActionTreeServerCommandProcessor::EnqueueGeneratorBufferHandler(Phase::ActionTreeServerCommandProcessor *this, char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = (*(**(this + 19) + 64))(*(this + 19), *a2, *(a2 + 1), a2 + 16);
  if ((v3 & 1) == 0)
  {
    v4 = **(Phase::Logger::GetInstance(v3) + 704);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "<error>: empty GeneratorBufferParams");
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      v6 = *a2;
      *buf = 136315906;
      v10 = "ActionTreeInterface.mm";
      v11 = 1024;
      v12 = 670;
      v13 = 2080;
      v14 = v5;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: could not enqueue buffer %s for generatorId %llu!", buf, 0x26u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void Phase::ActionTreeServerCommandProcessor::SetSpatialCategorySendLevelHandler(Phase::ActionTreeServerCommandProcessor *this, unsigned int *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::SetSpatialCategorySendLevel(**(this + 11), *a2, *(a2 + 1), a2[4], *(a2 + 3));
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 8u, &v6, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::SetSpatialCategoryParameterHandler(Phase::ActionTreeServerCommandProcessor *this, unsigned int *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::SetSpatialCategoryParameter(**(this + 11), *a2, *(a2 + 1), a2[4], *(a2 + 3), *(a2 + 4));
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 8u, &v6, 0x10uLL);
  }
}

uint64_t Phase::ActionTreeServerCommandProcessor::CreateSpatialSubmixHandler(Phase::Controller::VoiceManager::Implementation ***this, _OWORD *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  memset(v23, 0, sizeof(v23));
  v24 = 1065353216;
  v25 = 0;
  v26 = 0u;
  LOBYTE(v27[0]) = 0;
  v28 = 0u;
  *&v27[51] = xmmword_23A554910;
  v27[53] = 0x3FF0000000000000;
  v29 = a2[55];
  v30 = *(a2 + 224);
  v19 = *(a2 + 2);
  v20 = *a2;
  v21 = *(a2 + 24);
  v22 = *(a2 + 40);
  if (*(a2 + 14))
  {
    v3 = (a2 + 4);
    v4 = *(a2 + 16);
    if (*(&v23[0] + 1))
    {
      v5 = vcnt_s8(*(v23 + 8));
      v5.i16[0] = vaddlv_u8(v5);
      if (v5.u32[0] > 1uLL)
      {
        v6 = *v3;
        if (*(&v23[0] + 1) <= v4)
        {
          v6 = v4 % *(&v23[0] + 1);
        }
      }

      else
      {
        v6 = (*(&v23[0] + 1) - 1) & v4;
      }

      v7 = *(*&v23[0] + 8 * v6);
      if (v7)
      {
        for (i = *v7; i; i = *i)
        {
          v9 = i[1];
          if (v9 == v4)
          {
            if (*(i + 4) == v4)
            {
              v12 = **(Phase::Logger::GetInstance(this) + 800);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                v14 = GetSpatialCategoryString(*v3);
                v15 = v14;
                v16 = [v14 UTF8String];
                *buf = 136315650;
                *&buf[4] = "ActionTreeInterface.mm";
                *&buf[12] = 1024;
                *&buf[14] = 721;
                v32 = 2080;
                v33 = v16;
                _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!pair.second is true]: Entry with category %s already exists", buf, 0x1Cu);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Entry with category %s already exists");
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v9 >= *(&v23[0] + 1))
              {
                v9 %= *(&v23[0] + 1);
              }
            }

            else
            {
              v9 &= *(&v23[0] + 1) - 1;
            }

            if (v9 != v6)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  memcpy(v27, a2 + 28, sizeof(v27));
  v28 = 0uLL;
  SpatialSubmix = Phase::Controller::VoiceManager::Implementation::CreateSpatialSubmix(*this[11], &v19);
  if (HIDWORD(SpatialSubmix) || !SpatialSubmix)
  {
    operator new();
  }

  *buf = *a2;
  Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 8u, buf, 0x10uLL);
  *buf = &v25;
  std::vector<Phase::VoiceDescriptor>::__destroy_vector::operator()[abi:ne200100](buf);
  return std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v23);
}

void sub_23A305FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  Phase::Controller::CreateSpatialSubmixParameters::~CreateSpatialSubmixParameters(va);
  _Unwind_Resume(a1);
}

void Phase::ActionTreeServerCommandProcessor::CreateAmbientSubmixHandler(Phase::Logger ***this, _OWORD *a2)
{
  v9 = 0;
  v11 = xmmword_23A554920;
  v8[0] = 0;
  std::vector<char>::vector[abi:ne200100](&__p, 32);
  v4 = __p;
  *__p = 0;
  v4[2] = 0;
  v14 = a2[3];
  v15 = *(a2 + 16);
  v9 = *(a2 + 2);
  v10 = *a2;
  v11 = *(a2 + 24);
  v5 = *(a2 + 10);
  v16 = 0;
  std::vector<char>::vector[abi:ne200100](v8, 32);
  v6 = *v8;
  *(*v8 + 4) = 0;
  v6[2] = 0;
  *v6 = v5;
  if (__p)
  {
    *&v13 = __p;
    operator delete(__p);
    v6 = *v8;
  }

  __p = v6;
  v13 = *&v8[8];
  v7 = Phase::Controller::VoiceManager::Implementation::CreateAmbientSubmix(*this[11], &v9);
  if (HIDWORD(v7) || !v7)
  {
    operator new();
  }

  *v8 = *a2;
  Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 8u, v8, 0x10uLL);
  if (__p)
  {
    *&v13 = __p;
    operator delete(__p);
  }
}

void sub_23A30615C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::ActionTreeServerCommandProcessor::CreateChannelSubmixHandler(Phase::ActionTreeServerCommandProcessor *this, char *a2)
{
  v8[0] = 0;
  std::vector<char>::vector[abi:ne200100](&__p, 32);
  v4 = __p;
  *__p = 0;
  v4[2] = 0;
  v12 = *(a2 + 24);
  v13 = *(a2 + 10);
  v9 = *a2;
  v5 = *(a2 + 4);
  v14 = 0;
  std::vector<char>::vector[abi:ne200100](v8, 32);
  v6 = *v8;
  *(*v8 + 4) = 0;
  v6[2] = 0;
  *v6 = v5;
  if (__p)
  {
    *&v11 = __p;
    operator delete(__p);
    v6 = *v8;
  }

  __p = v6;
  v11 = *&v8[8];
  ChannelSubmix = Phase::Controller::VoiceManager::Implementation::CreateChannelSubmix(**(this + 11), &v9);
  if (HIDWORD(ChannelSubmix) || !ChannelSubmix)
  {
    operator new();
  }

  *v8 = *a2;
  Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 8u, v8, 0x10uLL);
  if (__p)
  {
    *&v11 = __p;
    operator delete(__p);
  }
}

void sub_23A3062AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::ActionTreeServerCommandProcessor::SetSubmixParameterHandler(Phase::ActionTreeServerCommandProcessor *this, __int128 *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::SetSubmixParameter(**(this + 11), *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3));
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 8u, &v6, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::SetAmbientSubmixOrientationHandler(Phase::ActionTreeServerCommandProcessor *this, uint64_t *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::SetSubmixParameterData(**(this + 11), *a2, a2[1], 0xB11F8D5B5762E28DLL, (a2 + 2), 16);
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 8u, &v6, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::DestroySubmixHandler(Phase::ActionTreeServerCommandProcessor *this, uint64_t *a2)
{
  v4 = Phase::Controller::VoiceManager::Implementation::DestroySubmix(**(this + 11), *a2, a2[1]);
  if (HIDWORD(v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    i = *(this + 33);
    if (i)
    {
      v7 = 0;
      v8 = (this + 264);
      v9 = *a2;
      v10 = a2[1];
      do
      {
        if (i[1] == v9 && i[2] == v10)
        {
          for (i = *i; i; i = *i)
          {
            if (i[1] != v9)
            {
              break;
            }

            if (i[2] != a2[1])
            {
              break;
            }
          }

          if (v8 != i)
          {
            v11 = v8;
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11 != i);
            if (v12 != v8)
            {
              *v12 = v7;
              v7 = *v8;
              *v8 = i;
            }
          }

          if (!i)
          {
            break;
          }
        }

        v8 = i;
        i = *i;
      }

      while (i);
      if (v7)
      {
        do
        {
          v13 = *v7;
          operator delete(v7);
          v7 = v13;
        }

        while (v13);
      }
    }
  }

  else
  {
    v14 = *a2;
    Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 8u, &v14, 0x10uLL);
  }
}

void Phase::ActionTreeServerCommandProcessor::GeoQueryHandler(Phase::Logger ***this, void *a2)
{
  Phase::Geometry::System::GetCurrentState(this[12], &v8);
  v4 = v8;
  v5 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = Phase::DistanceBetweenListenerAndSource<double>(v4, a2[4], a2[3]);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v7 = *(a2 + 4);
  __src = *a2;
  v11 = v7;
  v12 = 0;
  v13 = v6;
  Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(this + 24, 6u, &__src, 0x20uLL);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_23A306594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::ActionTreeServerCallbackInterface::~ActionTreeServerCallbackInterface(Phase::ActionTreeServerCallbackInterface *this)
{
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](this + 64);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](this + 64);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Dispatch::TransactionExecutor<Phase::ActionTreeServerCommand>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D2EF48;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);
  return a1;
}

{
  *a1 = &unk_284D2EF48;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);
  return a1;
}

void Phase::ActionTreeServerCommandProcessor::~ActionTreeServerCommandProcessor(Phase::ActionTreeServerCommandProcessor *this)
{
  v2 = *(this + 33);
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

  *(this + 33) = 0;
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](this + 224);
  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  *(this + 19) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(this + 104);
  *this = &unk_284D2EF48;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(this + 8);
}

{
  Phase::ActionTreeServerCommandProcessor::~ActionTreeServerCommandProcessor(this);

  JUMPOUT(0x23EE864A0);
}

id Phase::Controller::TaskManager::GetObjCService<ExternalStreamManager>(Phase::Logger *a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v8 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "TaskManager.hpp";
      v16 = 1024;
      v17 = 140;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v10 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v15 = "TaskManager.hpp";
      v16 = 1024;
      v17 = 149;
      v18 = 1024;
      v19 = a2;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v12, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<ExternalStreamManager * const {__strong}>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  v6 = *v5;

  return v6;
}

void sub_23A306AAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::CreateSpatialSubmixParameters::~CreateSpatialSubmixParameters(Phase::Controller::CreateSpatialSubmixParameters *this)
{
  v2 = (this + 96);
  std::vector<Phase::VoiceDescriptor>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 56);
}

Phase::ActionTreeClientCommandProcessor *Phase::ActionTreeClientCommandProcessor::ActionTreeClientCommandProcessor(Phase::ActionTreeClientCommandProcessor *this, Phase::ActionTreeManager *a2)
{
  *this = &unk_284D2EFD0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *(this + 9);
  *(this + 9) = v5;

  *this = &unk_284D2EF20;
  *(this + 10) = a2;
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeClientCommand,Phase::ActionTreeClientCommand,std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 1);
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeClientCommand,Phase::ActionTreeClientCommand,std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 2);
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeClientCommand,Phase::ActionTreeClientCommand,std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 3);
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeClientCommand,Phase::ActionTreeClientCommand,std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 4);
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeClientCommand,Phase::ActionTreeClientCommand,std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 5);
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeClientCommand,Phase::ActionTreeClientCommand,std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 6);
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeClientCommand,Phase::ActionTreeClientCommand,std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 7);
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeClientCommand,Phase::ActionTreeClientCommand,std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 8);
  return this;
}

uint64_t Phase::Dispatch::TransactionExecutor<Phase::ActionTreeClientCommand>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D2EFD0;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);
  return a1;
}

{
  *a1 = &unk_284D2EFD0;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);
  return a1;
}

void Phase::Dispatch::TransactionExecutor<Phase::ActionTreeServerCommand>::ExecuteTransactions(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 72);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = v7;
        v9 = [v7 bytes];
        v10 = [v7 length];
        *(a1 + 48) = v9;
        *(a1 + 56) = v10;
        *(a1 + 64) = 0;
        Phase::MessagePipeReader<Phase::ActionTreeServerCommand>::Execute((a1 + 48), (a1 + 8));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [*(a1 + 72) removeAllObjects];
  objc_sync_exit(v2);
}

void sub_23A307040(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void Phase::ActionTreeClientCommandProcessor::~ActionTreeClientCommandProcessor(id *this)
{
  *this = &unk_284D2EFD0;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));
}

{
  *this = &unk_284D2EFD0;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));

  JUMPOUT(0x23EE864A0);
}

void Phase::Dispatch::TransactionExecutor<Phase::ActionTreeClientCommand>::ExecuteTransactions(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 72);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = v7;
        v9 = [v7 bytes];
        v10 = [v7 length];
        *(a1 + 48) = v9;
        *(a1 + 56) = v10;
        *(a1 + 64) = 0;
        Phase::MessagePipeReader<Phase::ActionTreeClientCommand>::Execute((a1 + 48), (a1 + 8));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [*(a1 + 72) removeAllObjects];
  objc_sync_exit(v2);
}

void sub_23A307298(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::TransactionWriter<Phase::ActionTreeClientCommand>::~TransactionWriter(uint64_t a1)
{
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](a1 + 56);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void Phase::Dispatch::TransactionExecutor<Phase::ActionTreeServerCommand>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D2EF48;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);

  JUMPOUT(0x23EE864A0);
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

void std::vector<Phase::VoiceDescriptor>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::VoiceDescriptor>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::VoiceDescriptor>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23A3076D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<char>::__throw_length_error[abi:ne200100]();
}

void Phase::Dispatch::TransactionExecutor<Phase::ActionTreeClientCommand>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D2EFD0;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100]((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void Phase::Dispatch::sMessageWriterCallback(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    __assert_rtn("sMessageWriterCallback", "DispatcherTransactionWriter.h", 24, "inOldBuffer.mUserData != nullptr");
  }

  v6 = *v3;
  v7 = v3[2] - *v3;
  v8 = v3[1] - *v3;
  v9 = v8 + a3;
  if (2 * v7 > v8 + a3)
  {
    v9 = 2 * v7;
  }

  if (v9 <= v8)
  {
    if (v9 < v8)
    {
      v3[1] = v6 + v9;
    }
  }

  else
  {
    std::vector<char>::__append(*(a1 + 24), v9 - v8);
    v6 = *v3;
    v10 = v3[2];
    v3 = *(a1 + 24);
    v7 = v10 - v6;
  }

  v11 = *(a1 + 8);
  *a2 = v6;
  a2[1] = v11;
  a2[2] = v7;
  a2[3] = v3;
}

{
  v3 = *(a1 + 24);
  if (!v3)
  {
    __assert_rtn("sMessageWriterCallback", "DispatcherTransactionWriter.h", 24, "inOldBuffer.mUserData != nullptr");
  }

  v6 = *v3;
  v7 = v3[2] - *v3;
  v8 = v3[1] - *v3;
  v9 = v8 + a3;
  if (2 * v7 > v8 + a3)
  {
    v9 = 2 * v7;
  }

  if (v9 <= v8)
  {
    if (v9 < v8)
    {
      v3[1] = v6 + v9;
    }
  }

  else
  {
    std::vector<char>::__append(*(a1 + 24), v9 - v8);
    v6 = *v3;
    v10 = v3[2];
    v3 = *(a1 + 24);
    v7 = v10 - v6;
  }

  v11 = *(a1 + 8);
  *a2 = v6;
  a2[1] = v11;
  a2[2] = v7;
  a2[3] = v3;
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::function<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
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

  return result;
}

void sub_23A307ED0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void (*)(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long),std::allocator<void (*)(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>,void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D2EFF8;
  a2[1] = v2;
  return result;
}

void Phase::MessagePipeWriter<Phase::ActionTreeClientCommand>::WriteMessage(void *a1, unsigned int a2, void *__src, size_t __n)
{
  v4 = __n;
  v31 = *MEMORY[0x277D85DE8];
  v8 = __n;
  v9 = __n + 8;
  v11 = *a1;
  v10 = a1[1];
  v12 = v10 + v9;
  if (*a1 && v12 <= a1[2])
  {
    goto LABEL_8;
  }

  if (a1[7])
  {
    memset(v26, 0, 32);
    v13 = std::function<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::operator()((a1 + 4), a1, v26, v12);
    v14 = *&v26[16];
    *a1 = *v26;
    *(a1 + 1) = v14;
    v11 = *a1;
    v10 = a1[1];
    v15 = v10 + v9;
    if (!*a1 || v15 > a1[2])
    {
      v16 = **(Phase::Logger::GetInstance(v13) + 864);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v17 = *a1;
      v18 = a1[2];
      *v26 = 136316418;
      *&v26[4] = "MessagePipe.hpp";
      *&v26[12] = 1024;
      *&v26[14] = 284;
      *&v26[18] = 2048;
      *&v26[20] = v17;
      *&v26[28] = 2048;
      *&v26[30] = v18;
      v27 = 2048;
      v28 = v15;
      v29 = 2048;
      v30 = a2;
      v19 = "%25s:%-5d write buffer left in invalid state with pointer %p and %lu max bytes compared to required %lu bytes for message type %llu";
      v20 = v16;
      v21 = 58;
      goto LABEL_11;
    }

LABEL_8:
    v22 = (v11 + v10);
    *v22 = a2;
    v22[1] = v4;
    v23 = *a1;
    v24 = a1[1] + 8;
    a1[1] = v24;
    memcpy((v23 + v24), __src, v8);
    a1[1] += v8;
    return;
  }

  v25 = **(Phase::Logger::GetInstance(a1) + 864);
  if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    return;
  }

  *v26 = 136315906;
  *&v26[4] = "MessagePipe.hpp";
  *&v26[12] = 1024;
  *&v26[14] = 270;
  *&v26[18] = 2048;
  *&v26[20] = a2;
  *&v26[28] = 2048;
  *&v26[30] = v12;
  v19 = "%25s:%-5d failed to acquire write buffer for message type %llu of size %lu";
  v20 = v25;
  v21 = 38;
LABEL_11:
  _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, v19, v26, v21);
}

uint64_t std::function<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

void *std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeServerCommand,Phase::ActionTreeServerCommand,std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_23A3086E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 std::__function::__func<std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>,void ()(void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D2F040;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (Phase::ActionTreeServerCommandProcessor::*)(void const*),Phase::ActionTreeServerCommandProcessor*,std::placeholders::__ph<1> const&>>,void ()(void const*)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

std::logic_error *std::domain_error::domain_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828D8] + 16);
  return result;
}

void Phase::GetBacktraceFrame<1ul>(std::string *a1@<X8>)
{
  std::vector<void *>::vector[abi:ne200100](&v16, 3uLL);
  v2 = backtrace(v16, (v17 - v16) >> 3);
  std::vector<void *>::resize(&v16, v2);
  applesauce::backtrace::detail::symbolicate_snapshot(&v16, 3, &__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11, &__p, 24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  memset(v9, 0, sizeof(v9));
  v3 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc((v11 + *(v11[0] - 24)));
    v4 = std::locale::use_facet(&v18, v3);
    v5 = (v4->__vftable[2].~facet_0)(v4, 10);
    std::locale::~locale(&v18);
    v6 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, &__p, v5);
    if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::vector<std::string>::push_back[abi:ne200100](v9, &__p);
  }

  if (*(v9[0] + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *(v9[0] + 48), *(v9[0] + 56));
  }

  else
  {
    v7 = *(v9[0] + 48);
    a1->__r_.__value_.__r.__words[2] = *(v9[0] + 64);
    *&a1->__r_.__value_.__l.__data_ = v7;
  }

  v19 = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11[2] = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  MEMORY[0x23EE863B0](&v15);
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_23A308B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  *(v26 - 56) = &a2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v26 - 56));
  if (a10 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a11, MEMORY[0x277D82818]);
  MEMORY[0x23EE863B0](va);
  v28 = *(v26 - 88);
  if (v28)
  {
    *(v26 - 80) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, __int128 *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, a3);
  return a1;
}

void sub_23A308E70(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x23EE863B0](v1);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<void *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<void *>::__append(a1, a2 - v2);
  }
}

void *std::vector<void *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<void *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23A308F64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(a1, a2);
  }

  std::vector<char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<void *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void applesauce::backtrace::detail::symbolicate_snapshot(uint64_t a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v5 = *a1;
  v7 = *(a1 + 8) - v5;
  v8 = backtrace_symbols(v5, v7 >> 3);
  v31 = v7 >> 3;
  if ((v7 >> 3) >= 1)
  {
    v9 = 0;
    v10 = (v7 >> 3) & 0x7FFFFFFF;
    do
    {
      v11 = *(*a1 + 8 * v9);
      snprintf(__str, 0x40uLL, "%-3d\t%*p\t", v9, 18, v11);
      v12 = strlen(__str);
      std::string::append(a3, __str, v12);
      memset(&v41, 0, sizeof(v41));
      if (dladdr(v11, &v41))
      {
        v13 = v41.dli_sname == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        std::string::basic_string[abi:ne200100]<0>(&v37, v8[v9]);
        v14 = std::string::append(&v37, "\n", 1uLL);
        v15 = *&v14->__r_.__value_.__l.__data_;
        v39 = v14->__r_.__value_.__r.__words[2];
        *__p = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        if (v39 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        if (v39 >= 0)
        {
          v17 = HIBYTE(v39);
        }

        else
        {
          v17 = __p[1];
        }

        std::string::append(a3, v16, v17);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p[0]);
        }

        if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v18 = v37.__r_.__value_.__r.__words[0];
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v37, v41.dli_sname);
        applesauce::backtrace::detail::demangle_ex(&v37, __p);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        if (v40 == 1)
        {
          if (v39 >= 0)
          {
            dli_sname = __p;
          }

          else
          {
            dli_sname = __p[0];
          }
        }

        else
        {
          dli_sname = v41.dli_sname;
          if (!v41.dli_sname)
          {
            dli_sname = v8[v9];
          }
        }

        dli_saddr = v41.dli_saddr;
        std::string::basic_string[abi:ne200100]<0>(&v34, dli_sname);
        v21 = std::string::append(&v34, " + ", 3uLL);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v33, v11 - dli_saddr);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v33;
        }

        else
        {
          v23 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v33.__r_.__value_.__l.__size_;
        }

        v25 = std::string::append(&v35, v23, size);
        v26 = *&v25->__r_.__value_.__l.__data_;
        v36.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v36.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v36, "\n", 1uLL);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v37.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v37.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v37;
        }

        else
        {
          v29 = v37.__r_.__value_.__r.__words[0];
        }

        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v37.__r_.__value_.__l.__size_;
        }

        std::string::append(a3, v29, v30);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (v40 != 1 || (SHIBYTE(v39) & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v18 = __p[0];
      }

      operator delete(v18);
LABEL_52:
      ++v9;
    }

    while (v10 != v9);
  }

  if (v31 == a2)
  {
    std::string::append(a3, "[truncated?]\n", 0xDuLL);
  }

  if (v8)
  {
    free(v8);
  }
}

void sub_23A30947C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

double applesauce::backtrace::detail::demangle_ex@<D0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  status = 0;
  outlen = 0;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = __cxa_demangle(a1, 0, &outlen, &status);
  v5 = v3;
  if (status)
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    if (!v3)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = outlen - 1;
  if (outlen - 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v8) = outlen - 1;
  if (outlen != 1)
  {
    memmove(&__dst, v3, v6);
  }

  *(&__dst + v6) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v8;
  *(a2 + 24) = 1;
  if (v5)
  {
LABEL_5:
    free(v5);
  }

  return result;
}

void sub_23A3095AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, __int128 *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EE86340](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  v6 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a3;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_23A30966C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
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

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x23EE86080](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_23A309900(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x23A3098C0);
  }

  __cxa_rethrow();
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
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

void std::__throw_bad_any_cast[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v1 = std::bad_any_cast::bad_any_cast(exception);
}

uint64_t (**std::any_cast[abi:ne200100]<ExternalStreamManager * const {__strong}>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<ExternalStreamManager * {__strong}>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

std::bad_cast *std::bad_any_cast::bad_any_cast(std::bad_any_cast *this)
{
  result = std::bad_cast::bad_cast(this);
  result->__vftable = (MEMORY[0x277D828D0] + 16);
  return result;
}

void std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::ActionTreeClientCommand,Phase::ActionTreeClientCommand,std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>>(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_23A30A644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>>,void ()(void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D2F088;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (Phase::ActionTreeClientCommandProcessor::*)(void const*),Phase::ActionTreeClientCommandProcessor*,std::placeholders::__ph<1> const&>>,void ()(void const*)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

void Phase::MessagePipeReader<Phase::ActionTreeServerCommand>::Execute(uint64_t *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v2 = a1[2];
  v4 = v2 + 8;
  if (v2 + 8 <= v3)
  {
    v6 = *a1;
    v7 = *a1 + v2;
    v8 = v4 + *(v7 + 4);
    if (v8 <= v3)
    {
      a1[2] = v8;
      v18 = *v7;
      if (v18)
      {
        v10 = v6 + v4;
        do
        {
          v11 = std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::find<Phase::ActionTreeServerCommand>(a2, &v18);
          if (v11)
          {
            if (!v10 || !v11[6])
            {
              std::terminate();
            }

            std::function<void ()(void const*)>::operator()((v11 + 3), v10);
          }

          else
          {
            v12 = **(Phase::Logger::GetInstance(0) + 864);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v20 = "MessagePipe.hpp";
              v21 = 1024;
              v22 = 102;
              v23 = 1024;
              v24 = v18;
              _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d skipping unrecognized transaction message %d", buf, 0x18u);
            }
          }

          v14 = a1[1];
          v13 = a1[2];
          v15 = v13 + 8;
          if (v13 + 8 > v14)
          {
            break;
          }

          v16 = *a1 + v13;
          v17 = v15 + *(v16 + 4);
          if (v17 > v14)
          {
            break;
          }

          v10 = *a1 + v15;
          a1[2] = v17;
          v18 = *v16;
        }

        while (v18);
      }
    }
  }
}

uint64_t std::function<void ()(void const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::find<Phase::ActionTreeServerCommand>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void Phase::MessagePipeReader<Phase::ActionTreeClientCommand>::Execute(uint64_t *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v2 = a1[2];
  v4 = v2 + 8;
  if (v2 + 8 <= v3)
  {
    v6 = *a1;
    v7 = *a1 + v2;
    v8 = v4 + *(v7 + 4);
    if (v8 <= v3)
    {
      a1[2] = v8;
      v18 = *v7;
      if (v18)
      {
        v10 = v6 + v4;
        do
        {
          v11 = std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::find<Phase::ActionTreeServerCommand>(a2, &v18);
          if (v11)
          {
            if (!v10 || !v11[6])
            {
              std::terminate();
            }

            std::function<void ()(void const*)>::operator()((v11 + 3), v10);
          }

          else
          {
            v12 = **(Phase::Logger::GetInstance(0) + 864);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v20 = "MessagePipe.hpp";
              v21 = 1024;
              v22 = 102;
              v23 = 1024;
              v24 = v18;
              _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d skipping unrecognized transaction message %d", buf, 0x18u);
            }
          }

          v14 = a1[1];
          v13 = a1[2];
          v15 = v13 + 8;
          if (v13 + 8 > v14)
          {
            break;
          }

          v16 = *a1 + v13;
          v17 = v15 + *(v16 + 4);
          if (v17 > v14)
          {
            break;
          }

          v10 = *a1 + v15;
          a1[2] = v17;
          v18 = *v16;
        }

        while (v18);
      }
    }
  }
}

uint64_t Phase::ActionTreeIOManager::PrepareGenerator(Phase::Logger *a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = *(*a1 + 112);

      return v4();
    }

    if (v3 == 4)
    {
      v4 = *(*a1 + 104);

      return v4();
    }
  }

  else
  {
    if (v3 - 1 < 2)
    {
      v4 = *(*a1 + 96);

      return v4();
    }

    if (!*(a2 + 48))
    {
      v4 = *(*a1 + 88);

      return v4();
    }
  }

  v6 = **(Phase::Logger::GetInstance(a1) + 704);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a2 + 48);
    v8 = *a2;
    v9 = 136315906;
    v10 = "ActionTreeIOManager.mm";
    v11 = 1024;
    v12 = 62;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: invalid generator type %d for generatorId %llu!", &v9, 0x22u);
  }

  return 0;
}

uint64_t Phase::ActionTreeIOManager::GetResidentBufferForGenerator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *v12 = a2;
  *&v12[8] = a3;
  v6 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((a1 + 24), v12);
  if (v6 && (v7 = *(v6 + 4)) != 0)
  {
    v8 = *(v7 + 8);
    v9 = *(v7 + 24);
    *(a4 + 32) = *(v7 + 40);
    *a4 = v8;
    *(a4 + 16) = v9;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    *(a4 + 40) = 0;
    result = std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a4 + 40, *(v7 + 48), *(v7 + 56), *(v7 + 56) - *(v7 + 48));
    *(a4 + 64) = *(v7 + 72);
  }

  else
  {
    v11 = **(Phase::Logger::GetInstance(v6) + 704);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 136315650;
      *&v12[4] = "ActionTreeIOManager.mm";
      *&v12[12] = 1024;
      *&v12[14] = 75;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: did not find resident buffer for generatorId %llu!", v12, 0x1Cu);
    }

    *(a4 + 64) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    v12[0] = 0;
    result = std::vector<char>::vector[abi:ne200100]((a4 + 40), 8);
    **(a4 + 40) = 0;
    *(a4 + 64) = 0;
  }

  return result;
}

void Phase::ActionTreeIOManager::DestroyGenerator(void *a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a2;
  v23[1] = a3;
  v24[0] = a2;
  v24[1] = a3;
  if (!std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(a1 + 3, v24))
  {
    return;
  }

  v6 = 0;
  v7 = 0xCBF29CE484222325;
  do
  {
    v7 = 0x100000001B3 * (v7 ^ *(v23 + v6++));
  }

  while (v6 != 16);
  v8 = a1[4];
  if (!*&v8)
  {
    return;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v7;
  }

  v11 = a1[3];
  v12 = *(v11 + 8 * v10);
  if (!v12)
  {
    return;
  }

  v13 = *v12;
  if (!*v12)
  {
    return;
  }

  v14 = *&v8 - 1;
  while (1)
  {
    v15 = *(v13 + 1);
    if (v15 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= v14;
    }

    if (v15 != v10)
    {
      return;
    }

LABEL_24:
    v13 = *v13;
    if (!v13)
    {
      return;
    }
  }

  if (*(v13 + 2) != a2 || *(v13 + 3) != a3)
  {
    goto LABEL_24;
  }

  v17 = *v13;
  if (v9.u32[0] > 1uLL)
  {
    if (v7 >= *&v8)
    {
      v7 %= *&v8;
    }
  }

  else
  {
    v7 &= v14;
  }

  v18 = *(v11 + 8 * v7);
  do
  {
    v19 = v18;
    v18 = *v18;
  }

  while (v18 != v13);
  if (v19 == a1 + 5)
  {
    goto LABEL_43;
  }

  v20 = v19[1];
  if (v9.u32[0] > 1uLL)
  {
    if (v20 >= *&v8)
    {
      v20 %= *&v8;
    }
  }

  else
  {
    v20 &= v14;
  }

  if (v20 == v7)
  {
LABEL_45:
    if (v17)
    {
      v21 = *(v17 + 1);
      goto LABEL_47;
    }
  }

  else
  {
LABEL_43:
    if (!v17)
    {
      goto LABEL_44;
    }

    v21 = *(v17 + 1);
    if (v9.u32[0] > 1uLL)
    {
      v22 = *(v17 + 1);
      if (v21 >= *&v8)
      {
        v22 = v21 % *&v8;
      }
    }

    else
    {
      v22 = v21 & v14;
    }

    if (v22 != v7)
    {
LABEL_44:
      *(v11 + 8 * v7) = 0;
      v17 = *v13;
      goto LABEL_45;
    }

LABEL_47:
    if (v9.u32[0] > 1uLL)
    {
      if (v21 >= *&v8)
      {
        v21 %= *&v8;
      }
    }

    else
    {
      v21 &= v14;
    }

    if (v21 != v7)
    {
      *(a1[3] + 8 * v21) = v19;
      v17 = *v13;
    }
  }

  *v19 = v17;
  *v13 = 0;
  --a1[6];

  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,void *>>>::operator()[abi:ne200100](1, v13);
}

Phase::ActionTreeDirectIOManager *Phase::ActionTreeDirectIOManager::ActionTreeDirectIOManager(Phase::ActionTreeDirectIOManager *this, Phase::Controller::TaskManager *a2, Phase::ActionTreeServerCallbackInterface *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 1065353216;
  *(a3 + 12) = this;
  *this = &unk_284D2F1D0;
  *(this + 8) = 0;
  v4 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(a2, 7);
  *(this + 8) = v4;
  if (!v4)
  {
    std::terminate();
  }

  return this;
}

void sub_23A30B258(_Unwind_Exception *a1)
{
  *v1 = &unk_284D2F148;
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<Phase::ActionTreeManager * const>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A30B5E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL Phase::ActionTreeDirectIOManager::PrepareResidentBufferGenerator(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48))
  {
    std::terminate();
  }

  v5 = *a2;
  v4 = a2[1];
  *buf = *a2;
  *&buf[8] = v4;
  v6 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((a1 + 24), buf);
  if (v6)
  {
    v7 = **(Phase::Logger::GetInstance(v6) + 704);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ActionTreeIOManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 111;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: resident buffer for generatorId %llu already exists, no-op!", buf, 0x1Cu);
    }

    return 0;
  }

  else
  {
    v9 = Phase::Controller::TaskManager::GetObjCService<PHASEAssetRegistry>(*(a1 + 8), 1);
    v10 = [v9 getSoundAssetInfo:a2[8]];
    v8 = v10 != 0;
    if (v10)
    {
      *((*(*v10 + 16))(v10) + 48);
      operator new();
    }

    v11 = **(Phase::Logger::GetInstance(0) + 704);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ActionTreeIOManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 134;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: did not find asset info for resident buffer generatorId %llu!", buf, 0x1Cu);
    }
  }

  return v8;
}

id Phase::Controller::TaskManager::GetObjCService<PHASEAssetRegistry>(Phase::Logger *a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v8 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "TaskManager.hpp";
      v16 = 1024;
      v17 = 140;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v10 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v15 = "TaskManager.hpp";
      v16 = 1024;
      v17 = 149;
      v18 = 1024;
      v19 = a2;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v12, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<PHASEAssetRegistry * const {__strong}>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  v6 = *v5;

  return v6;
}

void sub_23A30C15C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::ActionTreeDirectIOManager::~ActionTreeDirectIOManager(Phase::ActionTreeDirectIOManager *this)
{
  *this = &unk_284D2F148;
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::~__hash_table(this + 24);
}

{
  *this = &unk_284D2F148;
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::~__hash_table(this + 24);

  JUMPOUT(0x23EE864A0);
}

void *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(void *a1, void *a2)
{
  v2 = 0;
  v3 = 0xCBF29CE484222325;
  do
  {
    v3 = 0x100000001B3 * (v3 ^ *(a2 + v2++));
  }

  while (v2 != 16);
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v3 == v9)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v4)
          {
            v9 %= *&v4;
          }
        }

        else
        {
          v9 &= *&v4 - 1;
        }

        if (v9 != v6)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A30C3F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A30C468(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      v2[4] = 0;
      if (v4)
      {
        std::default_delete<Phase::ActionTreeIOManager::BufferInfo>::operator()[abi:ne200100]((v2 + 4), v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    v3 = __p + 32;
    v4 = *(__p + 4);
    *(__p + 4) = 0;
    if (v4)
    {
      std::default_delete<Phase::ActionTreeIOManager::BufferInfo>::operator()[abi:ne200100](v3, v4);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t (**std::any_cast[abi:ne200100]<Phase::ActionTreeManager * const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::ActionTreeManager *>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**std::any_cast[abi:ne200100]<PHASEAssetRegistry * const {__strong}>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<PHASEAssetRegistry * {__strong}>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::default_delete<Phase::ActionTreeIOManager::BufferInfo>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 48);
    if (v2)
    {
      *(a2 + 56) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x23EE864A0);
  }
}

Phase::ActionTreeObject *Phase::ActionTreeObject::ActionTreeObject(Phase::ActionTreeObject *this, PHASESoundEventNodeAsset *a2, PHASESoundEvent *a3)
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = a2;
  val = a3;
  MEMORY[0x23EE87040](buf);
  *this = *buf;
  v6 = v5;
  *(this + 2) = v6;
  v7 = [(PHASESoundEventNodeAsset *)v6 getActionTree];
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 2) = 0u;
  v8 = *(v7 + 8);
  v9 = *(v7 + 96);
  *(this + 232) = 0u;
  *(this + 3) = v7;
  *(this + 34) = 1065353216;
  *(this + 56) = v8;
  *(this + 25) = 0;
  *(this + 57) = v9;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 37) = 0;
  std::vector<Phase::MetaParamValue>::resize(this + 29, v8);
  v10 = *(this + 32);
  v11 = *(this + 33);
  v12 = (v11 - v10) >> 2;
  if (v8 <= v12)
  {
    if (v8 >= v12)
    {
      goto LABEL_14;
    }

    v18 = v10 + 4 * v8;
  }

  else
  {
    v13 = v8 - v12;
    v14 = *(this + 34);
    if (v13 > (v14 - v11) >> 2)
    {
      v15 = v14 - v10;
      v16 = v15 >> 1;
      if (v15 >> 1 <= v8)
      {
        v16 = v8;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v17 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (!(v17 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(this + 33), 4 * v13);
    v18 = v11 + 4 * v13;
  }

  *(this + 33) = v18;
LABEL_14:
  std::vector<Phase::MetaParamValue>::resize(this + 35, v9);
  inited = objc_initWeak(this + 38, val);
  *(this + 312) = 0;
  *(this + 320) = 0;
  *(this + 164) = 0;
  *(this + 83) = 0;
  v20 = *(this + 4);
  v21 = *(*(this + 3) + 64);
  v22 = *(this + 5);
  v23 = (v22 - v20) >> 6;
  if (v21 <= v23)
  {
    if (v21 < v23)
    {
      for (i = (v20 + (v21 << 6)); v22 != i; v22 -= 4)
      {
        *buf = v22 - 56;
        std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](buf);
      }

      *(this + 5) = i;
    }
  }

  else
  {
    v24 = *(this + 6);
    if (v21 - v23 > (v24 - v22) >> 6)
    {
      v25 = v24 - v20;
      v26 = v25 >> 5;
      if (v25 >> 5 <= v21)
      {
        v26 = *(*(this + 3) + 64);
      }

      if (v25 >= 0x7FFFFFFFFFFFFFC0)
      {
        v27 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      *&v78[2] = this + 32;
      if (!(v27 >> 58))
      {
        operator new();
      }

      goto LABEL_81;
    }

    v29 = &v22[4 * (v21 - v23)];
    v30 = (v21 << 6) - (v23 << 6);
    do
    {
      v22[2] = 0u;
      v22[3] = 0u;
      *v22 = 0u;
      v22[1] = 0u;
      inited = Phase::Fader<double>::Fader((v22 + 8), 0.0);
      v22 += 4;
      v30 -= 64;
    }

    while (v30);
    *(this + 5) = v29;
  }

  v31 = *(*(this + 3) + 40);
  v32 = *(this + 7);
  v33 = *(this + 8);
  v34 = 0xCCCCCCCCCCCCCCCDLL * ((v33 - v32) >> 5);
  v35 = v31 - v34;
  if (v31 <= v34)
  {
    if (v31 < v34)
    {
      v39 = v32 + 160 * v31;
      while (v33 != v39)
      {
        inited = *(v33 - 120);
        if (inited)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](inited);
        }

        v33 -= 160;
      }

      *(this + 8) = v39;
    }
  }

  else
  {
    v36 = *(this + 9);
    if (0xCCCCCCCCCCCCCCCDLL * ((v36 - v33) >> 5) < v35)
    {
      v37 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - v32) >> 5);
      if (2 * v37 > v31)
      {
        v31 = 2 * v37;
      }

      if (v37 >= 0xCCCCCCCCCCCCCCLL)
      {
        v38 = 0x199999999999999;
      }

      else
      {
        v38 = v31;
      }

      if (v38 <= 0x199999999999999)
      {
        operator new();
      }

      goto LABEL_81;
    }

    v40 = v33 + 160 * v35;
    do
    {
      *(v33 + 32) = 0uLL;
      *(v33 + 48) = 0uLL;
      *(v33 + 64) = 0uLL;
      *(v33 + 80) = 0uLL;
      *v33 = 0uLL;
      *(v33 + 16) = 0uLL;
      *(v33 + 24) = 1;
      *(v33 + 32) = 0;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 72) = 0;
      *(v33 + 80) = 0;
      *(v33 + 88) = 0;
      *(v33 + 96) = 0uLL;
      *(v33 + 112) = 0uLL;
      *(v33 + 128) = 0uLL;
      *(v33 + 144) = 0uLL;
      v33 += 160;
    }

    while (v33 != v40);
    *(this + 8) = v40;
  }

  v41 = *(*(this + 3) + 96);
  v43 = *(this + 10);
  v42 = *(this + 11);
  v44 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v43) >> 5);
  v45 = v41 - v44;
  if (v41 <= v44)
  {
    if (v41 < v44)
    {
      *(this + 11) = v43 + 96 * v41;
    }
  }

  else
  {
    v46 = *(this + 12);
    if (0xAAAAAAAAAAAAAAABLL * ((v46 - v42) >> 5) < v45)
    {
      v47 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v43) >> 5);
      v48 = 0x5555555555555556 * ((v46 - v43) >> 5);
      if (v48 > v41)
      {
        v41 = v48;
      }

      if (v47 >= 0x155555555555555)
      {
        v49 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v49 = v41;
      }

      if (v49 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_81:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v50 = v42 + 96 * v45;
    do
    {
      *(v42 + 48) = 0uLL;
      *(v42 + 64) = 0uLL;
      *(v42 + 80) = 0;
      *(v42 + 88) = 0;
      *(v42 + 16) = 0uLL;
      *(v42 + 32) = 0uLL;
      *v42 = 0uLL;
      *(v42 + 76) = 1065353216;
      v42 += 96;
    }

    while (v42 != v50);
    *(this + 11) = v50;
  }

  if (*(this + 320) == 1)
  {
    *(this + 320) = 0;
  }

  *(this + 104) = 0;
  *(this + 144) = 1;
  *(this + 27) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  v51 = *(this + 3);
  if (*(v51 + 64))
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(v51 + 72) + v52;
      v56 = (*(this + 4) + v53);
      inited = Phase::Fader<double>::SetDefaultValue((v56 + 1), *(v55 + 48));
      v56[7] = *(v55 + 48);
      *v56 = v55;
      ++v54;
      v51 = *(this + 3);
      v53 += 64;
      v52 += 464;
    }

    while (v54 < *(v51 + 64));
  }

  if (*(v51 + 96))
  {
    v57 = 0;
    v58 = 8;
    do
    {
      inited = MEMORY[0x23EE87040](buf);
      *(*(this + 10) + v58) = *buf;
      ++v57;
      v58 += 96;
    }

    while (v57 < *(*(this + 3) + 96));
  }

  Instance = Phase::Logger::GetInstance(inited);
  if (*(Instance + 1637) == 1)
  {
    v60 = **(Phase::Logger::GetInstance(Instance) + 704);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = *this;
      v62 = [(PHASEAsset *)v6 identifier];
      v63 = v62;
      v64 = [v62 UTF8String];
      ActionTreeObjectRunStateString = Phase::sGetActionTreeObjectRunStateString(*(this + 144));
      v66 = "<not found>";
      v67 = *(this + 3);
      v68 = v67[16];
      if (*(this + 145) == 1)
      {
        v66 = "seeking";
      }

      v69 = v67[24];
      v70 = v67[10];
      if (*(this + 145))
      {
        v71 = v66;
      }

      else
      {
        v71 = "not seeking";
      }

      *buf = 136317186;
      *&buf[4] = "ActionTreeManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 542;
      v75 = 2048;
      v76 = v61;
      v77 = 2080;
      *v78 = v64;
      *&v78[8] = 2080;
      v79 = ActionTreeObjectRunStateString;
      v80 = 2080;
      v81 = v71;
      v82 = 1024;
      v83 = v68;
      v84 = 1024;
      v85 = v69;
      v86 = 1024;
      v87 = v70;
      _os_log_impl(&dword_23A302000, v60, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu) - created (identifier: %s, run state: %s, seek state: %s, metaparameter count: %d, submix count: %d, generator count: %d)", buf, 0x4Cu);
    }
  }

  return this;
}

void sub_23A30D004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, Phase::ActionTreeGatheredParams *a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  objc_destroyWeak((v17 + 304));
  Phase::ActionTreeGatheredParams::~ActionTreeGatheredParams(a11);

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v18 - 128);
  v22 = *(v17 + 80);
  if (v22)
  {
    *(v17 + 88) = v22;
    operator delete(v22);
  }

  a14 = a12;
  std::vector<Phase::ActionTreeObject::LeafNodeInfo>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<Phase::MetaParamState>::__destroy_vector::operator()[abi:ne200100](&a14);

  _Unwind_Resume(a1);
}

uint64_t Phase::Fader<double>::SetDefaultValue(uint64_t a1, double a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  *(a1 + 32) = a2;
  v3[0] = &unk_284D2F458;
  v3[1] = Phase::CurveFunction::Linear<double>;
  v3[3] = v3;
  Phase::Fader<double>::SetInternal(a1, v3, a2, 0.0);
  return std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v3);
}

void sub_23A30D1A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const char *Phase::sGetActionTreeObjectRunStateString(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "<not found>";
  }

  else
  {
    return off_278B4EB50[a1];
  }
}

void Phase::ActionTreeObject::SetRunState(char *a1, unsigned int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1637) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(Instance) + 704);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a1;
      ActionTreeObjectRunStateString = Phase::sGetActionTreeObjectRunStateString(a1[144]);
      v8 = 136316162;
      v9 = "ActionTreeManager.mm";
      v10 = 1024;
      v11 = 566;
      v12 = 2048;
      v13 = v6;
      v14 = 2080;
      v15 = ActionTreeObjectRunStateString;
      v16 = 2080;
      v17 = Phase::sGetActionTreeObjectRunStateString(a2);
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu) - run state changed from '%s' to '%s'", &v8, 0x30u);
    }
  }

  a1[144] = a2;
}

void Phase::ActionTreeObject::SetSeekState(unsigned __int8 *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1637) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(Instance) + 704);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a1;
      v7 = a1[145];
      v8 = "<not found>";
      if (v7 == 1)
      {
        v9 = "seeking";
      }

      else
      {
        v9 = "<not found>";
      }

      v12 = "ActionTreeManager.mm";
      v11 = 136316162;
      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = "not seeking";
      }

      v13 = 1024;
      v14 = 577;
      if (a2 == 1)
      {
        v8 = "seeking";
      }

      v15 = 2048;
      v16 = v6;
      v17 = 2080;
      if (!a2)
      {
        v8 = "not seeking";
      }

      v18 = v10;
      v19 = 2080;
      v20 = v8;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu) - seek state changed from '%s' to '%s'", &v11, 0x30u);
    }
  }

  a1[145] = a2;
}

uint64_t Phase::ActionTreeObject::LeafNodeInfo::Configure(char *a1, void *a2, char *a3, void *a4, void *a5, _OWORD *a6)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_26:
    std::terminate();
  }

  if (a2[1])
  {
    v23 = *a3 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (*a1 == 1)
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 704);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 1);
      v24 = 136315650;
      v25 = "ActionTreeManager.mm";
      v26 = 1024;
      v27 = 598;
      v28 = 2048;
      v29 = v8;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: attempting to reconfigure a node without resetting, generatorId %llu!", &v24, 0x1Cu);
    }

    v9 = 0;
  }

  else
  {
    *(a1 + 8) = *a2;
    a1[88] = *a3;
    *(a1 + 14) = *a4;
    *a1 = 1;
    *(a1 + 17) = *a5;
    *(a1 + 9) = *a6;
    Instance = Phase::Logger::GetInstance(a1);
    if (*(Instance + 1637) == 1)
    {
      v11 = **(Phase::Logger::GetInstance(Instance) + 704);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[88];
        v13 = "<not found>";
        v14 = "<not found>";
        if (v12 <= 6)
        {
          v14 = off_278B4EBA8[v12];
        }

        v15 = *(a1 + 18);
        v16 = *(a1 + 1);
        v17 = *(a1 + 14);
        v18 = "looping";
        if (v17 != 1)
        {
          v18 = "<not found>";
        }

        if (v17)
        {
          v19 = v18;
        }

        else
        {
          v19 = "one shot";
        }

        LeafNodeStateString = Phase::sGetLeafNodeStateString(a1[24]);
        v21 = a1[25];
        if (v21 <= 3)
        {
          v13 = off_278B4EC28[v21];
        }

        v24 = 136316930;
        v25 = "ActionTreeManager.mm";
        v26 = 1024;
        v27 = 615;
        v28 = 2048;
        v29 = v15;
        v30 = 2048;
        v31 = v16;
        v32 = 2080;
        v33 = v14;
        v34 = 2080;
        v35 = v19;
        v36 = 2080;
        v37 = LeafNodeStateString;
        v38 = 2080;
        v39 = v13;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, generator: %llu) - configured (type: %s, playback mode: %s, state: %s, seek state: %s)", &v24, 0x4Eu);
      }
    }

    v9 = *a1;
  }

  return v9 & 1;
}

const char *Phase::sGetLeafNodeStateString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "<not found>";
  }

  else
  {
    return off_278B4EBE0[a1];
  }
}

void Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(uint64_t a1, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1637) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(Instance) + 704);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 144);
      v7 = *(a1 + 8);
      LeafNodeStateString = Phase::sGetLeafNodeStateString(*(a1 + 24));
      v9 = 136316418;
      v10 = "ActionTreeManager.mm";
      v11 = 1024;
      v12 = 1147;
      v13 = 2048;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v17 = 2080;
      v18 = LeafNodeStateString;
      v19 = 2080;
      v20 = Phase::sGetLeafNodeStateString(a2);
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, generator: %llu) - state changed from '%s' to '%s'", &v9, 0x3Au);
    }
  }

  *(a1 + 24) = a2;
}

void Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeSeekState(uint64_t a1, unsigned int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1637) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(Instance) + 704);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 25);
      if (v6 > 3)
      {
        v7 = "<not found>";
      }

      else
      {
        v7 = off_278B4EC28[v6];
      }

      v8 = *(a1 + 144);
      v9 = *(a1 + 8);
      if (a2 > 3)
      {
        v10 = "<not found>";
      }

      else
      {
        v10 = off_278B4EC28[a2];
      }

      v11 = 136316418;
      v12 = "ActionTreeManager.mm";
      v13 = 1024;
      v14 = 1159;
      v15 = 2048;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2080;
      v20 = v7;
      v21 = 2080;
      v22 = v10;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, generator: %llu) - seek state changed from '%s' to '%s'", &v11, 0x3Au);
    }
  }

  *(a1 + 25) = a2;
}

uint64_t Phase::ActionTreeObject::LeafNodeInfo::GeneratorStreamSeek(Phase::ActionTreeObject::LeafNodeInfo *this, Phase::Controller::TaskManager *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  if (*(this + 4))
  {
    if ((*(this + 48) & 1) == 0)
    {
      goto LABEL_29;
    }

    v3 = Phase::Controller::TaskManager::GetObjCService<PHASEAssetRegistry>(a2, 1);
    v4 = [v3 getSoundAssetInfo:*(this + 10)];
    if (!v4)
    {
      v20 = **(Phase::Logger::GetInstance(0) + 704);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(this + 1);
        v22 = *(this + 10);
        *buf = 136315906;
        v34 = "ActionTreeManager.mm";
        v35 = 1024;
        v36 = 1025;
        v37 = 2048;
        v38 = v21;
        v39 = 2048;
        v40 = v22;
        _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d generatorId %llu: Error: did not find asset info with assetId %llu", buf, 0x26u);
      }

      *(this + 48) = 0;
      goto LABEL_23;
    }

    v5 = *(this + 9);
    *(this + 48) = 0;
    *(this + 9) = 0;
    v6 = (*(*v4 + 24))(v4);
    v7 = v6;
    if (!v6)
    {
LABEL_29:
      std::terminate();
    }

    FileLengthInSeconds = Phase::Controller::StreamedSoundAssetInfo::GetFileLengthInSeconds(v6);
    if (v5 >= FileLengthInSeconds)
    {
      if (!*(this + 14))
      {
        v30 = **(Phase::Logger::GetInstance(v8) + 704);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(this + 1);
          *buf = 136316162;
          v34 = "ActionTreeManager.mm";
          v35 = 1024;
          v36 = 1049;
          v37 = 2048;
          v38 = v31;
          v39 = 2048;
          v40 = v5;
          v41 = 2048;
          v42 = FileLengthInSeconds;
          _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d generatorId %llu: seek to time %.2fs, past end of stream (%.2fs) of one-shot", buf, 0x30u);
        }

        v19 = 2;
        goto LABEL_24;
      }

      v5 = fmod(v5, FileLengthInSeconds);
    }

    v10 = Phase::Controller::StreamedSoundAssetInfo::GetFileLengthInSeconds(v7);
    v11 = [v7[6] length];
    Phase::Controller::StreamRenderer::Reset(*(this + 4));
    v12 = (v5 / v10 * v11);
    v13 = *(this + 4);
    v14 = v7[6];
    if (*(this + 14) == 1)
    {
      v15 = Phase::Controller::StreamedSoundAssetInfo::ScheduleSegment(v7, v13, 0, v12, [v14 length] - v12, 0, 0);
      if (!v15)
      {
LABEL_21:
        v27 = **(Phase::Logger::GetInstance(v15) + 704);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = *(this + 10);
          *buf = 136315650;
          v34 = "ActionTreeManager.mm";
          v35 = 1024;
          v36 = 1091;
          v37 = 2048;
          v38 = v28;
          _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to schedule segment/file for assetId %llu", buf, 0x1Cu);
        }

LABEL_23:
        v19 = 1;
LABEL_24:

        return v19;
      }

      v15 = Phase::Controller::StreamedSoundAssetInfo::ScheduleFile(v7, *(this + 4), 0, 1, 0, 0);
    }

    else
    {
      v23 = [v14 length];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3321888768;
      v32[2] = ___ZN5Phase16ActionTreeObject12LeafNodeInfo19GeneratorStreamSeekERNS_10Controller11TaskManagerE_block_invoke;
      v32[3] = &__block_descriptor_40_ea8_32c102_ZTSKZN5Phase16ActionTreeObject12LeafNodeInfo19GeneratorStreamSeekERNS_10Controller11TaskManagerEE3__0_e8_v16__0q8l;
      v32[4] = this;
      v15 = Phase::Controller::StreamedSoundAssetInfo::ScheduleSegment(v7, v13, 0, v12, (v23 - v12), 0, v32);
    }

    if (v15)
    {
      v24 = **(Phase::Logger::GetInstance(v15) + 704);
      v19 = 0;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(this + 1);
        v26 = *(this + 24);
        *buf = 136316162;
        v34 = "ActionTreeManager.mm";
        v35 = 1024;
        v36 = 1096;
        v37 = 2048;
        v38 = v25;
        v39 = 2048;
        v40 = v5;
        v41 = 1024;
        LODWORD(v42) = v26;
        _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d generatorId %llu: completed seek to time %.2fs, node state %hhd", buf, 0x2Cu);
        v19 = 0;
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v16 = **(Phase::Logger::GetInstance(this) + 704);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = *(this + 1);
    v18 = *(this + 88);
    *buf = 136315906;
    v34 = "ActionTreeManager.mm";
    v35 = 1024;
    v36 = 1009;
    v37 = 2048;
    v38 = v17;
    v39 = 1024;
    LODWORD(v40) = v18;
    _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d generatorId %llu: Error: cannot seek a non-streaming node type %hhd", buf, 0x22u);
  }

  *(this + 48) = 0;
  return 1;
}

void Phase::ActionTreeObject::LeafNodeInfo::HandleStreamRendererFinishedCallback(Phase::ActionTreeObject::LeafNodeInfo *this)
{
  if (*(this + 4) && *(this + 25) != 1)
  {
    v1 = *(this + 24);
    if (*(this + 24))
    {
      v2 = v1 == 6;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      if (v1 == 2)
      {
        *(this + 49) = 1;
      }

      else
      {
        Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(this, 5u);
      }
    }
  }
}

void sub_23A30DFA4(_Unwind_Exception *a1)
{
  caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::~guarded_lookup_hash_table(v3);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::~__hash_table(v2);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v1);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::GroupManager>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<Phase::Controller::GroupManager * const>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A30E4B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(void *a1)
{
  *a1 = &unk_284D2F3A0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = -8 * v4;
      v6 = (v2 + 8 * v4 - 8);
      do
      {
        std::unique_ptr<Phase::CommandQueue<Phase::LockFreeQueueMPSC>>::reset[abi:ne200100](v6--, 0);
        v5 += 8;
      }

      while (v5);
    }

    MEMORY[0x23EE86470](v3, 0x20C8093837F09);
  }

  return a1;
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::GlobalMetaParameterManager>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<Phase::GlobalMetaParameterManager * const>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A30E8C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::ActionTreeManager::GetParamValue(uint64_t a1, unint64_t a2, MetaParamValue *a3, _DWORD *a4, uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  GlobalMetaParameterState = Phase::Fader<double>::Fader(&v33.mFader, 0.0);
  if (!a5)
  {
    goto LABEL_7;
  }

  v11 = *(a5 + 24);
  v12 = *(a5 + 32);
  v13 = *(v11 + 64);
  if (v13 != (*(a5 + 40) - v12) >> 6)
  {
    goto LABEL_8;
  }

  if (!v13)
  {
LABEL_7:
    v15 = Phase::Controller::TaskManager::GetService<Phase::GlobalMetaParameterManager>(*(a1 + 192), 6);
    GlobalMetaParameterState = Phase::GlobalMetaParameterManager::GetGlobalMetaParameterState(v15, a2, &v33);
    if (GlobalMetaParameterState)
    {
      goto LABEL_19;
    }

LABEL_8:
    v16 = [*(a5 + 16) getString:a2];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = "<unknown>";
    }

    v18 = **(Phase::Logger::GetInstance(v16) + 704);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    *&buf[4] = "ActionTreeManager.mm";
    v35 = 1024;
    v36 = 1212;
    v37 = 2080;
    v38 = v17;
LABEL_13:
    _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Error gathering param %s\n", buf, 0x1Cu);
    goto LABEL_14;
  }

  v14 = *(v11 + 72);
  while (*v14 != a2)
  {
    v14 += 58;
    v12 += 64;
    if (!--v13)
    {
      goto LABEL_7;
    }
  }

  v33.param = *v12;
  if (v12 != &v33)
  {
    GlobalMetaParameterState = std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__assign_with_size[abi:ne200100]<Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*>(&v33.mFader, *(v12 + 8), *(v12 + 16), (*(v12 + 16) - *(v12 + 8)) >> 6);
  }

  v21 = *(v12 + 32);
  v33.mFader.mValue = *(v12 + 48);
  *&v33.mFader.mOffset = v21;
  v33.currentInputValue.stringVal = *(v12 + 56);
LABEL_19:
  param = v33.param;
  if (!v33.param)
  {
    v18 = **(Phase::Logger::GetInstance(GlobalMetaParameterState) + 704);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    *&buf[4] = "ActionTreeManager.mm";
    v35 = 1024;
    v36 = 1282;
    v37 = 2080;
    v38 = "todo";
    goto LABEL_13;
  }

  v23 = *(v33.param + 3);
  if (!v23)
  {
    *&a3->fltVal = v33.currentInputValue;
    v30 = *(param + 3);
    if ((v30 - 1) <= 1)
    {
      goto LABEL_43;
    }

    goto LABEL_14;
  }

  ParamValue = Phase::ActionTreeManager::GetParamValue(a1, v23, &v32, v31, a5);
  if ((ParamValue & 1) == 0)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v25 = *(param + 2);
  if (v25 == 2)
  {
    a3->fltVal = Phase::EvaluateEnvelopeDef(param + 56, v32);
    goto LABEL_42;
  }

  if (v25 != 3)
  {
    v18 = **(Phase::Logger::GetInstance(ParamValue) + 704);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    *&buf[4] = "ActionTreeManager.mm";
    v35 = 1024;
    v36 = 1252;
    v37 = 2080;
    v38 = "todo";
    goto LABEL_13;
  }

  v26 = *(param + 14);
  if (!v26)
  {
LABEL_32:
    v29 = *(param + 6);
    goto LABEL_41;
  }

  v27 = *(param + 3);
  v28 = param + 64;
  while (v27 == 1)
  {
    if (*v28 == v32)
    {
      goto LABEL_40;
    }

LABEL_31:
    v28 += 16;
    if (!--v26)
    {
      goto LABEL_32;
    }
  }

  if (v27 != 2 || *v28 != *&v32)
  {
    goto LABEL_31;
  }

LABEL_40:
  v29 = *(v28 + 1);
LABEL_41:
  a3->stringVal = v29;
LABEL_42:
  v30 = *(param + 4);
LABEL_43:
  *a4 = v30;
  v19 = 1;
LABEL_15:
  *buf = &v33.mFader;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](buf);
  return v19;
}

void sub_23A30EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double Phase::EvaluateEnvelopeDef(uint64_t a1, double a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v3 = *(a1 + 16);
  memset(v8, 0, sizeof(v8));
  v9 = v8;
  v10 = 0;
  if (v3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Envelope<double>::Segment>>(v8, v3);
  }

  v7 = vcvtq_f64_f32(vcvt_f32_f64(v6));
  Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(&v9, &v7, 0, 0);
  v4 = Phase::Envelope<double>::operator()(&v9, a2);
  *&v7.f64[0] = &v9;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v9 = v8;
  std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](&v9);
  return v4;
}

void sub_23A30EE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

Phase::Logger **Phase::ActionTreeManager::UpdateGeoQueries(Phase::Logger **result, UniqueObjectId *a2)
{
  v2 = a2[1].mStorage[1];
  if (*(v2 + 24))
  {
    v4 = result;
    v5 = 0;
    do
    {
      if (*(v2 + 96))
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = *(*(v2 + 32) + 8 * v5);
        do
        {
          v10 = a2[5].mStorage[0];
          if (*(*(v2 + 104) + v6) == v9 && !*(v10 + v7 + 80))
          {
            v11 = Phase::Controller::TaskManager::GetService<Phase::Geometry::System>(v4[24], 2);
            if (!v11)
            {
              std::terminate();
            }

            Phase::Geometry::System::GetCurrentState(v11, &v13);
            v12 = Phase::DistanceBetweenListenerAndSource<double>(v13, *(a2[5].mStorage[0] + v7 + 32), *(a2[5].mStorage[0] + v7 + 24));
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            result = Phase::ActionTreeManager::ReceiveGeoQueryResult(v4, *a2, v12, v8, 0);
            v2 = a2[1].mStorage[1];
          }

          else
          {
            *(v10 + v7 + 80) = 0;
          }

          ++v8;
          v7 += 96;
          v6 += 5944;
        }

        while (v8 < *(v2 + 96));
      }

      ++v5;
    }

    while (v5 < *(v2 + 24));
  }

  return result;
}

void sub_23A30EFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Geometry::System>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<Phase::Geometry::System * const>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A30F368(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *Phase::ActionTreeManager::ReceiveGeoQueryResult(Phase::ActionTreeManager *this, UniqueObjectId a2, double a3, unsigned int a4, int a5)
{
  v13 = a2;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(this + 5, &v13);
  if (result)
  {
    v9 = result[4];
    if (v9)
    {
      v11 = v9 + 80;
      v10 = *(v9 + 80);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v11 + 8) - v10) >> 5) > a4)
      {
        v12 = v10 + 96 * a4;
        if (a3 < 0.0 || a5)
        {
          *(v12 + 80) = 3;
          *(v12 + 88) = 0;
        }

        else
        {
          *(v12 + 80) = 2;
          *(v12 + 88) = a3;
        }
      }
    }
  }

  return result;
}

double Phase::DistanceBetweenListenerAndSource<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a1 + 184);
    v4 = -1.0;
    if (v3 <= a2)
    {
      return v4;
    }

    v5 = *(a1 + 168);
    v6 = (v5 + 24 * a2);
    if (*(v6 + 5) != HIDWORD(a2))
    {
      return v4;
    }

    v7 = *v6;
    if (!*v6)
    {
      return v4;
    }

    if (*v7 != 2 || v3 <= a3)
    {
      return v4;
    }

    v10 = v5 + 24 * a3;
    if (*(v10 + 20) != HIDWORD(a3))
    {
      return v4;
    }

    v11 = *v10;
    if (!v11 || v11->i32[0] != 3)
    {
      return v4;
    }

    v12 = v11[15];
    v13 = v11[16];
    if (v12 == v13)
    {
      v16 = 0;
    }

    else
    {
      v14 = *v12;
      if (*(a1 + 160) <= *v12 || (v15 = *(a1 + 144) + 24 * v14, *(v15 + 20) != HIDWORD(v14)) || (v16 = *v15) == 0)
      {
        v17 = **(Phase::Logger::GetInstance(a1) + 400);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "GeometryUtility.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 75;
          *&buf[18] = 2048;
          *&buf[20] = a3;
          v18 = "%25s:%-5d DistanceBetweenListenerAndSource(): inSourceEntityHandle 0x%llx is volumetric but doesn't have any valid shapes!\n";
          v19 = v17;
          v20 = 28;
LABEL_21:
          _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
          return v4;
        }

        return v4;
      }
    }

    v23 = vcvtq_f64_f32(v11[7]);
    *buf = vcvtq_f64_f32(v11[6]);
    *&buf[16] = v23;
    v24 = vcvtq_f64_f32(v11[9]);
    v33 = vcvtq_f64_f32(v11[8]);
    v34 = v24;
    v28 = vcvtq_f64_f32(*(v7 + 64));
    v29 = *(v7 + 72);
    Phase::TransformPositionByInverse<double>(buf, &v28, v30.f64);
    v25 = v30;
    v26 = v31;
    if (v12 != v13)
    {
      v26 = fmin(fmax(v31, *(v16 + 32)), *(v16 + 44)) - v31;
      v25 = vsubq_f64(vminnmq_f64(vmaxnmq_f64(v30, vcvtq_f64_f32(*(v16 + 24))), vcvtq_f64_f32(*(v16 + 36))), v30);
    }

    v27 = vmulq_f64(v25, v25);
    return fmax(sqrt(vaddq_f64(v27, vdupq_laneq_s64(v27, 1)).f64[0] + v26 * v26) - *(v7 + 152) / v34.f64[1], 0.0);
  }

  v21 = **(Phase::Logger::GetInstance(0) + 400);
  v4 = -1.0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "GeometryUtility.hpp";
    *&buf[12] = 1024;
    *&buf[14] = 41;
    v18 = "%25s:%-5d DistanceBetweenListenerAndSource(): pInSystemState is null!\n";
    v19 = v21;
    v20 = 18;
    goto LABEL_21;
  }

  return v4;
}

uint64_t Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(uint64_t a1, Phase::ActionTreeGatheredParams *a2, int a3, uint64_t a4, double *a5, void *a6, double a7)
{
  v12 = *(a2 + 7) + 160 * a3;
  v26 = Phase::Controller::GroupManager::GetGain(*(a1 + 200), *(v12 + 96)) * a7;
  v13 = *(a1 + 200);
  *&__src = *(v12 + 96);
  v14 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((v13 + 40), &__src);
  v15 = 1.0;
  v16 = 1.0;
  if (v14)
  {
    v16 = v14[28] * v14[55];
  }

  v25 = v16 * *(a4 + 24);
  v17 = *(a1 + 200);
  *&__src = *(v12 + 96);
  v18 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((v17 + 40), &__src);
  if (v18)
  {
    v15 = v18[16] * v18[49] * v18[31];
  }

  v19 = *(a1 + 200);
  *&__src = *(v12 + 96);
  v20 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((v19 + 40), &__src);
  if (v20)
  {
    v22 = v20[22] * v20[43] * v20[30];
  }

  else
  {
    v22 = 1.0;
  }

  result = Phase::ActionTreeManager::ScaleFloatParam(*(a4 + 41), &v25, a5, a2, v21);
  if (result)
  {
    result = Phase::ActionTreeManager::ScaleFloatParam(*(a4 + 40), &v26, a5, a2, v24);
    if (result)
    {
      __src = *(v12 + 8);
      v28 = v26;
      v29 = v22;
      v30 = v15;
      v31 = v25;
      Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a6, 0xAu, &__src, 0x30uLL);
      return 1;
    }
  }

  return result;
}

uint64_t Phase::ActionTreeManager::ScaleFloatParam(Phase::ActionTreeManager *this, double *a2, double *a3, Phase::ActionTreeGatheredParams *a4, Phase::ActionTreeObject *a5)
{
  if (this == -1)
  {
    return 1;
  }

  v5 = this;
  if ((this & 0x80000000) != 0 || (v6 = *(a3 + 1), this >= ((*(a3 + 2) - v6) >> 3)))
  {
    v8 = 0;
  }

  else
  {
    if (*(*(a3 + 4) + 4 * this) == 1)
    {
      *a2 = *(v6 + 8 * this) * *a2;
      return 1;
    }

    v8 = 1;
  }

  Phase::ActionTreeManager::HandleParamError(v8, a4, v5);
  return 0;
}

BOOL Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(void *a1, unsigned int a2, void *__src, size_t __n)
{
  v4 = __n;
  v32 = *MEMORY[0x277D85DE8];
  v8 = __n;
  v9 = __n + 8;
  v11 = *a1;
  v10 = a1[1];
  v12 = v10 + v9;
  if (*a1 && v12 <= a1[2])
  {
    goto LABEL_8;
  }

  if (a1[7])
  {
    memset(v27, 0, 32);
    v13 = std::function<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::operator()((a1 + 4), a1, v27, v12);
    v14 = *&v27[16];
    *a1 = *v27;
    *(a1 + 1) = v14;
    v11 = *a1;
    v10 = a1[1];
    v15 = v10 + v9;
    if (!*a1 || v15 > a1[2])
    {
      v16 = **(Phase::Logger::GetInstance(v13) + 864);
      result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v18 = *a1;
      v19 = a1[2];
      *v27 = 136316418;
      *&v27[4] = "MessagePipe.hpp";
      *&v27[12] = 1024;
      *&v27[14] = 284;
      *&v27[18] = 2048;
      *&v27[20] = v18;
      *&v27[28] = 2048;
      *&v27[30] = v19;
      v28 = 2048;
      v29 = v15;
      v30 = 2048;
      v31 = a2;
      v20 = "%25s:%-5d write buffer left in invalid state with pointer %p and %lu max bytes compared to required %lu bytes for message type %llu";
      v21 = v16;
      v22 = 58;
      goto LABEL_11;
    }

LABEL_8:
    v23 = (v11 + v10);
    *v23 = a2;
    v23[1] = v4;
    v24 = *a1;
    v25 = a1[1] + 8;
    a1[1] = v25;
    memcpy((v24 + v25), __src, v8);
    a1[1] += v8;
    return 1;
  }

  v26 = **(Phase::Logger::GetInstance(a1) + 864);
  result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  *v27 = 136315906;
  *&v27[4] = "MessagePipe.hpp";
  *&v27[12] = 1024;
  *&v27[14] = 270;
  *&v27[18] = 2048;
  *&v27[20] = a2;
  *&v27[28] = 2048;
  *&v27[30] = v12;
  v20 = "%25s:%-5d failed to acquire write buffer for message type %llu of size %lu";
  v21 = v26;
  v22 = 38;
LABEL_11:
  _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, v20, v27, v22);
  return 0;
}

uint64_t Phase::ActionTreeObject::FindSubmixIdFromHashName(Phase::ActionTreeObject *this, uint64_t a2)
{
  v2 = *(this + 3);
  v3 = *(v2 + 96);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(v2 + 104);
  v6 = 96 * v3;
  while (*v5 != a2)
  {
    v5 += 743;
    v4 += 96;
    if (v6 == v4)
    {
      return 0;
    }
  }

  return *(*(this + 10) + v4 + 8);
}

void *std::shared_ptr<Phase::Controller::StreamRenderer>::operator=[abi:ne200100]<Phase::Controller::StreamRenderer,std::default_delete<Phase::Controller::StreamRenderer>,0>(void *a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v3 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

Phase::Controller::StreamRenderer **std::unique_ptr<Phase::Controller::StreamRenderer>::~unique_ptr[abi:ne200100](Phase::Controller::StreamRenderer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::StreamRenderer::~StreamRenderer(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

void Phase::ActionTreeManager::SubmitGeneratorSeekCompletedResult(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    v8 = (0x20302u >> (8 * a4));
    do
    {
      v9 = v4[4];
      if (*(v9 + 144))
      {
        v11 = *(v9 + 56);
        v10 = *(v9 + 64);
        if (v10 != v11)
        {
          v12 = 0;
          v13 = 1;
          do
          {
            v14 = v11 + 160 * v12;
            if (*(v14 + 8) == a2)
            {
              v15 = *(v14 + 16) != a3 || a4 > 2;
              if (!v15)
              {
                Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeSeekState(v14, v8);
                v11 = *(v9 + 56);
                v10 = *(v9 + 64);
              }
            }

            v12 = v13;
            v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 5) > v13++;
          }

          while (v15);
        }
      }

      v4 = *v4;
    }

    while (v4);
  }
}

BOOL Phase::ActionTreeManager::StartVoice(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if ((v3 - 1) > 3)
  {
    return 1;
  }

  if ((v3 & 6) == 2)
  {
    v7 = 11;
  }

  else
  {
    v7 = 5;
  }

  v16[0] = *(a2 + 8);
  v8 = *(a1 + 200);
  if (v8)
  {
    [v8 audioTimeStamp];
  }

  else
  {
    memset(&v16[1], 0, 64);
  }

  result = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a3, v7, v16, 0x50uLL);
  if (result)
  {
    v10 = *(a2 + 32);
    if (!v10 || (v11 = Phase::Controller::StreamRenderer::Start(v10), (v11 & 1) != 0))
    {
      Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(a2, 4u);
      return 1;
    }

    v12 = **(Phase::Logger::GetInstance(v11) + 704);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 16) identifier];
      v14 = v13;
      v15 = [v13 UTF8String];
      *buf = 136315650;
      v18 = "ActionTreeManager.mm";
      v19 = 1024;
      v20 = 4094;
      v21 = 2080;
      v22 = v15;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to start stream renderer for sound event node %s", buf, 0x1Cu);
    }

    return 0;
  }

  return result;
}

id Phase::UniqueObjectId::CreateNSUUID(Phase::UniqueObjectId *this)
{
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:this];

  return v1;
}

uint64_t Phase::ActionTreeManager::ConfigureStreamNode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v40 = a5;
  v10 = [v9 format];
  v11 = [v10 channelLayout];
  v12 = [v11 layout];
  v14 = Phase::ChannelLayout::IsLayoutSupported(v12, v13);

  if (v14)
  {
    v16 = [v10 channelLayout];

    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CB83A8]);
      v18 = [v9 engine];
      [v18 sampleRate];
      v20 = v19;
      v21 = [v10 channelLayout];
      v22 = [v17 initWithCommonFormat:1 sampleRate:0 interleaved:v21 channelLayout:v20];
    }

    else
    {
      v24 = objc_alloc(MEMORY[0x277CB83A8]);
      v18 = [v9 engine];
      [v18 sampleRate];
      v22 = [v24 initWithCommonFormat:1 sampleRate:objc_msgSend(v10 channels:"channelCount") interleaved:0, v25];
    }

    if (v22)
    {
      MEMORY[0x23EE87040](buf);
      v39 = *buf;
      *buf = 1;
      v27 = Phase::ActionTreeObject::LeafNodeInfo::Configure(a3, &v39, &v40, buf, (a1 + 232), (a3 + 144));
      if (v27)
      {
        if ((*a3 & 1) == 0)
        {
          std::terminate();
        }

        [v9 normalize];
        [v22 sampleRate];
        if (a5 == 3)
        {
          operator new();
        }

        v32 = v9;
        v33 = [v32 renderBlock];
        v34 = v33 == 0;

        if (!v34)
        {
          v40 = 4;
          [v32 renderBlock];
          objc_claimAutoreleasedReturnValue();
          operator new();
        }

        v36 = **(Phase::Logger::GetInstance(v35) + 704);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = [*(a2 + 16) getString:{objc_msgSend(v32, "nodeUID")}];
          *buf = 136315650;
          *&buf[4] = "ActionTreeManager.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4234;
          v42 = 2080;
          v43 = v37;
          _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing renderblock on pullstream node %s.  Set it before preparing or starting the sound event", buf, 0x1Cu);
        }
      }

      else
      {
        v30 = **(Phase::Logger::GetInstance(v27) + 704);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = [*(a2 + 16) getString:{objc_msgSend(v9, "nodeUID")}];
          *buf = 136315650;
          *&buf[4] = "ActionTreeManager.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4205;
          v42 = 2080;
          v43 = v31;
          _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Fatal Action tree data error: could not configure push stream leaf node %s", buf, 0x1Cu);
        }
      }
    }

    else
    {
      v28 = **(Phase::Logger::GetInstance(v26) + 704);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = [v9 description];
        *buf = 136315650;
        *&buf[4] = "ActionTreeManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 4196;
        v42 = 2080;
        v43 = [v29 UTF8String];
        _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d [AVAudioFormat initWithCommonFormat] failed on node '%s'", buf, 0x1Cu);
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = **(Phase::Logger::GetInstance(v15) + 704);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [v10 channelLayout];
      *buf = 136315650;
      *&buf[4] = "ActionTreeManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4171;
      v42 = 1024;
      LODWORD(v43) = [v23 layoutTag];
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Fatal Action tree data error: push stream data has invalid audio format, layoutTag = 0x%x", buf, 0x18u);
    }
  }

  return 0;
}

void sub_23A310730(_Unwind_Exception *a1)
{
  v9 = v4;

  _Unwind_Resume(a1);
}

uint64_t Phase::ActionTreeManager::SetFloatParam(Phase::ActionTreeManager *this, void *a2, double *a3, Phase::ActionTreeGatheredParams *a4, Phase::ActionTreeObject *a5)
{
  v5 = this;
  if ((this & 0x80000000) != 0 || (v6 = *(a3 + 1), this >= ((*(a3 + 2) - v6) >> 3)))
  {
    v8 = 0;
  }

  else
  {
    if (*(*(a3 + 4) + 4 * this) == 1)
    {
      *a2 = *(v6 + 8 * this);
      return 1;
    }

    v8 = 1;
  }

  Phase::ActionTreeManager::HandleParamError(v8, a4, v5);
  return 0;
}

uint64_t Phase::ActionTreeManager::ProcessNodes(uint64_t a1, int8x8_t *this, uint64_t a3, void *a4)
{
  v402[5] = *MEMORY[0x277D85DE8];
  result = 1;
  v386[0] = 1;
  v388 = 0;
  v387 = 1065353216;
  v6 = this[3];
  v7 = *(*&v6 + 80);
  if (!v7)
  {
    return result;
  }

  v8 = this;
  v361 = a1;
  v9 = 0;
  v10 = 0;
  v371 = 0;
  v372 = *(*&v6 + 88);
  v360 = this + 15;
  v11 = v386;
  v369 = *(*&v6 + 80);
  while (2)
  {
    v12 = v372 + v10;
    v13 = *(v372 + v10);
    v10 += 8;
    switch(v13)
    {
      case 0:
        v51 = *(v8 + 3);
        if (*(v51 + 40) <= v9)
        {
          v319 = **(Phase::Logger::GetInstance(result) + 704);
          v318 = v319;
          if (os_log_type_enabled(v319, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1483;
            v315 = "%25s:%-5d Fatal Sound Event data error: Encountered more leafnodes than is allowed";
            goto LABEL_526;
          }

          return 0;
        }

        v52 = (v372 + v10);
        v364 = v9;
        v53 = *(v8 + 7) + 160 * v9;
        v54 = *(v53 + 24);
        if (*v11)
        {
          if (*(v53 + 24) <= 5u)
          {
            if (v54 != 1)
            {
              if (v54 == 4)
              {
                result = Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, v8, v364, (v52 + 2), a3, a4, *(v11 + 1));
                v7 = v369;
                v8 = this;
                if ((result & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_446;
              }

              if (v54 == 5)
              {
                goto LABEL_352;
              }

LABEL_446:
              LODWORD(v9) = v364;
LABEL_447:
              v9 = (v9 + 1);
LABEL_448:
              v10 += *(v12 + 4);
              goto LABEL_449;
            }

LABEL_170:
            if (*(v53 + 64))
            {
              goto LABEL_446;
            }

            v122 = Phase::Controller::TaskManager::GetObjCService<PHASEAssetRegistry>(*(v361 + 192), 1);
            v123 = this;
            v124 = [v122 getSoundAssetInfo:v52[1]];
            if (!v124)
            {
              v329 = **(Phase::Logger::GetInstance(0) + 704);
              v330 = v329;
              if (os_log_type_enabled(v329, OS_LOG_TYPE_ERROR))
              {
                v331 = v52[1];
                *buf = 136315650;
                *&buf[4] = "ActionTreeManager.mm";
                *&buf[12] = 1024;
                *&buf[14] = 1534;
                *&buf[18] = 2048;
                *&buf[20] = v331;
                _os_log_impl(&dword_23A302000, v329, OS_LOG_TYPE_ERROR, "%25s:%-5d Fatal Sound Event data error: did not find asset info for assetId %llu", buf, 0x1Cu);
              }

              goto LABEL_532;
            }

            *(v53 + 8) = 0;
            v358 = (v53 + 8);
            *(v53 + 16) = 0;
            Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v53, 1u);
            Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeSeekState(v53, 0);
            *(v53 + 32) = 0;
            v125 = (v53 + 32);
            v126 = *(v53 + 40);
            *(v53 + 40) = 0;
            if (v126)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v126);
            }

            *(v53 + 48) = 0;
            *(v53 + 112) = 0;
            *(v53 + 96) = 0;
            *(v53 + 104) = 0;
            *v53 = 0;
            *(v53 + 72) = 0;
            *(v53 + 80) = 0;
            *(v53 + 88) = 0;
            Instance = Phase::Logger::GetInstance(v126);
            if (*(Instance + 1637) == 1)
            {
              v128 = **(Phase::Logger::GetInstance(Instance) + 704);
              v129 = v128;
              v123 = this;
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                v130 = *(v53 + 144);
                v131 = *(v53 + 8);
                *buf = 136315906;
                *&buf[4] = "ActionTreeManager.mm";
                *&buf[12] = 1024;
                *&buf[14] = 645;
                *&buf[18] = 2048;
                *&buf[20] = v130;
                *&buf[28] = 2048;
                *&buf[30] = v131;
                _os_log_impl(&dword_23A302000, v128, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, generator: %llu) - reset", buf, 0x26u);
              }
            }

            MEMORY[0x23EE87040](buf);
            v377 = *buf;
            if (v124[1])
            {
              v132 = 2;
            }

            else
            {
              v132 = 1;
            }

            LOBYTE(v385) = v132;
            v133 = Phase::ActionTreeObject::LeafNodeInfo::Configure(v53, &v377, &v385, v52 + 9, (v361 + 232), v123);
            if ((v133 & 1) == 0)
            {
              v332 = **(Phase::Logger::GetInstance(v133) + 704);
              v333 = v332;
              if (os_log_type_enabled(v332, OS_LOG_TYPE_ERROR))
              {
                v334 = v52[1];
                *buf = 136315650;
                *&buf[4] = "ActionTreeManager.mm";
                *&buf[12] = 1024;
                *&buf[14] = 1550;
                *&buf[18] = 2048;
                *&buf[20] = v334;
                v335 = "%25s:%-5d Fatal Sound Event data error: could not configure leaf node for assetId %llu";
                goto LABEL_537;
              }

LABEL_532:

              return 0;
            }

            if ((*v53 & 1) == 0)
            {
              goto LABEL_545;
            }

            v134 = v52[2];
            *(v53 + 80) = v52[1];
            *(v53 + 96) = v52[6];
            v355 = v52 + 2;
            *(v53 + 56) = v52[8];
            SubmixIdFromHashName = Phase::ActionTreeObject::FindSubmixIdFromHashName(v123, v134);
            if (!(SubmixIdFromHashName | v136))
            {
              v332 = **(Phase::Logger::GetInstance(SubmixIdFromHashName) + 704);
              v336 = v332;
              if (os_log_type_enabled(v332, OS_LOG_TYPE_ERROR))
              {
                v337 = *v355;
                *buf = 136315650;
                *&buf[4] = "ActionTreeManager.mm";
                *&buf[12] = 1024;
                *&buf[14] = 1636;
                *&buf[18] = 2048;
                *&buf[20] = v337;
                v335 = "%25s:%-5d Fatal Sound Event data error: Submix %llx not registered.";
LABEL_537:
                _os_log_impl(&dword_23A302000, v332, OS_LOG_TYPE_ERROR, v335, buf, 0x1Cu);
              }

              goto LABEL_532;
            }

            *&buf[32] = 6553601;
            v393 = 0xC028000000000000;
            v394 = 0;
            v395 = 0;
            v396 = 0;
            v400 = 0;
            v401 = 0x3FF0000000000000;
            memset(v402, 0, 40);
            v137 = v124[1];
            v351 = SubmixIdFromHashName;
            v353 = v136;
            if (v137 != 1)
            {
              if (!v137)
              {
                *(v53 + 88) = 1;
                v138 = (*(*v124 + 16))(v124);
                if (!v138)
                {
                  goto LABEL_545;
                }

                v139 = v138;
                v140 = *(v138 + 48);
                v394 = 0;
                v141 = [v140 format];
                v142 = [v141 streamDescription];
                v397 = *v142;
                v398 = *(v142 + 16);
                v399 = *(v142 + 32);

                v143 = [v140 format];
                v144 = [v143 channelLayout];
                *&buf[32] = [v144 layoutTag];

LABEL_422:
                v400 = v52[3];
                v401 = v52[4];
                v402[0] = *(v139 + 24);
                v393 = *(v139 + 40);

                v270 = *(v53 + 112);
                if (v270 != v52[9])
                {
                  goto LABEL_545;
                }

                *buf = *v358;
                *&buf[16] = v351;
                *&buf[24] = v353;
                v395 = 0;
                v396 = v52[1];
                v402[3] = v52[8];
                v402[4] = v270;
                v271 = this;
                if (!Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 7u, buf, 0xA8uLL))
                {
                  goto LABEL_532;
                }

                v272 = Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, this, v364, v355, a3, a4, *(v11 + 1));
                if ((v272 & 1) == 0)
                {
                  goto LABEL_532;
                }

                v273 = Phase::Logger::GetInstance(v272);
                if (*(v273 + 712) == 1)
                {
                  v274 = **(Phase::Logger::GetInstance(v273) + 704);
                  v275 = v274;
                  v276 = *v358;
                  if ((*v358 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v274))
                  {
                    *__src = 134217984;
                    *&__src[4] = v276;
                    _os_signpost_emit_with_name_impl(&dword_23A302000, v275, OS_SIGNPOST_INTERVAL_BEGIN, v276, "Phase_Generator_Prepare", "Generator ID %llu Prepare Begin", __src, 0xCu);
                  }

                  v271 = this;
                }

                Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v53, 2u);
                v277 = v271[144];
                if ((v277 - 2) >= 2)
                {
                  if (v277 == 4)
                  {
                    goto LABEL_438;
                  }

                  if (v277 != 8)
                  {
                    goto LABEL_444;
                  }
                }

                if (v271[208] == 1)
                {
                  if (v277 == 4 || (v271[209] & 1) == 0)
                  {
                    goto LABEL_438;
                  }

LABEL_444:

                  goto LABEL_445;
                }

                if (v277 != 4)
                {
                  goto LABEL_444;
                }

LABEL_438:
                started = Phase::ActionTreeManager::StartVoice(v271, v53, a4);
                if (!started)
                {
                  goto LABEL_532;
                }

                v279 = Phase::Logger::GetInstance(started);
                if (*(v279 + 712) == 1)
                {
                  v280 = **(Phase::Logger::GetInstance(v279) + 704);
                  v281 = v280;
                  v282 = *v358;
                  if ((*v358 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v280))
                  {
                    *__src = 134217984;
                    *&__src[4] = v282;
                    _os_signpost_emit_with_name_impl(&dword_23A302000, v281, OS_SIGNPOST_INTERVAL_BEGIN, v282, "Phase_Generator_Start", "Generator ID %llu Start", __src, 0xCu);
                  }
                }

                goto LABEL_444;
              }

              v338 = **(Phase::Logger::GetInstance(SubmixIdFromHashName) + 704);
              v339 = v338;
              if (!os_log_type_enabled(v338, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_532;
              }

              v340 = v124[1];
              *__src = 136315650;
              *&__src[4] = "ActionTreeManager.mm";
              *&__src[12] = 1024;
              *&__src[14] = 1837;
              *&__src[18] = 1024;
              *&__src[20] = v340;
              v341 = "%25s:%-5d Unhandled AssetType %d for Sampler!";
              v342 = v338;
              v343 = 24;
LABEL_549:
              _os_log_impl(&dword_23A302000, v342, OS_LOG_TYPE_ERROR, v341, __src, v343);
              goto LABEL_532;
            }

            *(v53 + 88) = 2;
            v205 = (*(*v124 + 24))(v124);
            v206 = v205;
            if (!v205)
            {
              goto LABEL_545;
            }

            v139 = v205;
            if (*v125)
            {
              v207 = **(Phase::Logger::GetInstance(v205) + 704);
              v208 = v207;
              if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
              {
                v209 = v52[1];
                *__src = 136315650;
                *&__src[4] = "ActionTreeManager.mm";
                *&__src[12] = 1024;
                *&__src[14] = 1698;
                *&__src[18] = 2048;
                *&__src[20] = v209;
                _os_log_impl(&dword_23A302000, v207, OS_LOG_TYPE_ERROR, "%25s:%-5d Warning: overriding the stream renderer for streaming assetId %llu", __src, 0x1Cu);
              }
            }

            v210 = v206[8];
            [v210 sampleRate];
            *&v211 = v211;
            v212 = vcvtps_u32_f32((*&v211 * 80.0) / 1000.0);
            if (v212 <= 0x4000)
            {
              v212 = 0x4000;
            }

            Phase::Controller::StreamedSoundAssetInfo::CreateStreamRenderer(v206, &cfstr_Mpegdefault12l.isa, (v212 + 1) & 0xFFFFFFFE, __src);
            std::shared_ptr<Phase::Controller::StreamRenderer>::operator=[abi:ne200100]<Phase::Controller::StreamRenderer,std::default_delete<Phase::Controller::StreamRenderer>,0>((v53 + 32), __src);
            std::unique_ptr<Phase::Controller::StreamRenderer>::~unique_ptr[abi:ne200100](__src);

            if (!*v125)
            {
              v344 = **(Phase::Logger::GetInstance(v213) + 704);
              v345 = v344;
              if (os_log_type_enabled(v344, OS_LOG_TYPE_ERROR))
              {
                v346 = v52[1];
                *__src = 136315650;
                *&__src[4] = "ActionTreeManager.mm";
                *&__src[12] = 1024;
                *&__src[14] = 1712;
                *&__src[18] = 2048;
                *&__src[20] = v346;
                v341 = "%25s:%-5d Failed to create stream renderer for streaming assetId %llu";
                goto LABEL_548;
              }

              goto LABEL_532;
            }

            caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::_addOrReplace(v361 + 80, *(v53 + 8), *(v53 + 16), *v125);
            if (*(v53 + 48) == 1)
            {
              v214 = *(v53 + 72);
              v215 = Phase::ActionTreeObject::LeafNodeInfo::GeneratorStreamSeek(v53, *(v361 + 192));
              Phase::ActionTreeManager::SubmitGeneratorSeekCompletedResult(v361, *(v53 + 8), *(v53 + 16), v215);
              if (*(v53 + 48) == 1)
              {
                goto LABEL_545;
              }

              if (v215)
              {
                v217 = **(Phase::Logger::GetInstance(v216) + 704);
                v218 = v217;
                if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
                {
                  v219 = *v358;
                  *__src = 136316162;
                  *&__src[4] = "ActionTreeManager.mm";
                  *&__src[12] = 1024;
                  *&__src[14] = 1736;
                  *&__src[18] = 2048;
                  *&__src[20] = v219;
                  *&__src[28] = 2048;
                  *&__src[30] = v214;
                  v390 = 1024;
                  v391 = v215;
                  _os_log_impl(&dword_23A302000, v217, OS_LOG_TYPE_DEFAULT, "%25s:%-5d generatorId %llu: seeking to time %.2fs before preparing, result %d, aborting prepare, stopping", __src, 0x2Cu);
                }

                Phase::ActionTreeManager::LeafNodeCompleted(v361, *(v53 + 8), *(v53 + 16), (v53 + 128));

                goto LABEL_445;
              }
            }

            else
            {
              v241 = *v125;
              if (v52[9] == 1)
              {
                v242 = Phase::Controller::StreamedSoundAssetInfo::ScheduleFile(v139, v241, 0, 1, 0, 0);
              }

              else
              {
                *&v373 = MEMORY[0x277D85DD0];
                *(&v373 + 1) = 3321888768;
                v374 = ___ZN5Phase17ActionTreeManager18ProcessSamplerNodeEPKNS_10SamplerMsgEPNS_10ParamStackEiPNS_16ActionTreeObjectERNS_24ActionTreeGatheredParamsERNS_17MessagePipeWriterINS_23ActionTreeServerCommandEEE_block_invoke;
                v375 = &__block_descriptor_40_ea8_32c203_ZTSKZN5Phase17ActionTreeManager18ProcessSamplerNodeEPKNS_10SamplerMsgEPNS_10ParamStackEiPNS_16ActionTreeObjectERNS_24ActionTreeGatheredParamsERNS_17MessagePipeWriterINS_23ActionTreeServerCommandEEEE3__0_e8_v16__0q8l;
                v376 = v53;
                v242 = Phase::Controller::StreamedSoundAssetInfo::ScheduleFile(v139, v241, 0, 0, 0, &v373);
              }

              if ((v242 & 1) == 0)
              {
                v344 = **(Phase::Logger::GetInstance(v242) + 704);
                v349 = v344;
                if (!os_log_type_enabled(v344, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_532;
                }

                v350 = v52[1];
                *__src = 136315650;
                *&__src[4] = "ActionTreeManager.mm";
                *&__src[12] = 1024;
                *&__src[14] = 1778;
                *&__src[18] = 2048;
                *&__src[20] = v350;
                v341 = "%25s:%-5d Failed to schedule streaming assetId %llu on stream renderer";
LABEL_548:
                v342 = v344;
                v343 = 28;
                goto LABEL_549;
              }
            }

            v268 = Phase::Controller::StreamRenderer::Start(*v125);
            if (v268)
            {
              v394 = 2;
              v140 = *(v139 + 64);
              v269 = [v140 streamDescription];
              v397 = *v269;
              v398 = *(v269 + 16);
              v399 = *(v269 + 32);
              v143 = [v140 channelLayout];
              *&buf[32] = [v143 layoutTag];
              goto LABEL_422;
            }

            v344 = **(Phase::Logger::GetInstance(v268) + 704);
            v347 = v344;
            if (!os_log_type_enabled(v344, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_532;
            }

            v348 = v52[1];
            *__src = 136315650;
            *&__src[4] = "ActionTreeManager.mm";
            *&__src[12] = 1024;
            *&__src[14] = 1787;
            *&__src[18] = 2048;
            *&__src[20] = v348;
            v341 = "%25s:%-5d Failed to start stream renderer for streaming assetId %llu";
            goto LABEL_548;
          }

          if ((v54 - 7) < 2)
          {
            if ((v52[8] - 1) <= 2)
            {
              if (!Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, v8, v364, (v52 + 2), a3, a4, *(v11 + 1)))
              {
                return 0;
              }

              *buf = *(v53 + 8);
              Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 2u, buf, 0x10uLL);
              Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v53, 4u);
              goto LABEL_445;
            }

            goto LABEL_170;
          }

          if (v54 != 6)
          {
            goto LABEL_446;
          }
        }

        else if (v54 != 5)
        {
          if (v54 != 4)
          {
            if (v54 != 1)
            {
              goto LABEL_446;
            }

            *(v53 + 64) = 0;
            if (*(v51 + 112) != 1 || v52[8])
            {
              goto LABEL_446;
            }

            Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v53, 0);
            goto LABEL_445;
          }

          v145 = v52[8];
          if (*(v51 + 112) == 1)
          {
            if (v145)
            {
              goto LABEL_446;
            }
          }

          else
          {
            if ((v145 - 1) < 3)
            {
              Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v53, 7u);
              *buf = *(v53 + 8);
              result = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 1u, buf, 0x10uLL);
LABEL_445:
              v7 = v369;
              v8 = this;
              goto LABEL_446;
            }

            if (v145)
            {
              goto LABEL_446;
            }

            if (v52[9])
            {
              Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v53, 6u);
            }
          }
        }

LABEL_352:
        *buf = *(v53 + 8);
        result = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 3u, buf, 0x18uLL);
        goto LABEL_445;
      case 1:
        if (v371 >= 15)
        {
          v319 = **(Phase::Logger::GetInstance(result) + 704);
          result = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 136315394;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3454;
            v315 = "%25s:%-5d Fatal Sound Event data error: Failed to push blend stack";
            goto LABEL_526;
          }

          return result;
        }

        v27 = v371 + 1;
        v11 = &v386[16 * v27];
        *v11 = *&v386[16 * v371];
        if (!*v11)
        {
          goto LABEL_316;
        }

        v55 = v372 + v10;
        v56 = *(v372 + v10 + 8);
        if (v56 == -2)
        {
          v57 = *(v8 + 3);
          v58 = *(v57 + 96);
          if (!v58)
          {
LABEL_489:
            v316 = **(Phase::Logger::GetInstance(result) + 704);
            if (os_log_type_enabled(v316, OS_LOG_TYPE_ERROR))
            {
              v317 = [*&this[2] getString:*(v55 + 424)];
              *buf = 136315650;
              *&buf[4] = "ActionTreeManager.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3483;
              *&buf[18] = 2080;
              *&buf[20] = v317;
              _os_log_impl(&dword_23A302000, v316, OS_LOG_TYPE_ERROR, "%25s:%-5d Fatal Sound Event data error: Submix %s not found for distance tracking", buf, 0x1Cu);
            }

            return 0;
          }

          v59 = 0;
          v60 = *(v57 + 104);
          v61 = 8 * v58;
          while (*v60 != *(v55 + 424))
          {
            v60 += 743;
            v59 -= 8;
            if (!(v61 + v59))
            {
              goto LABEL_489;
            }
          }

          v99 = (*(a3 + 56) - v59);
        }

        else
        {
          if ((v56 & 0x80000000) != 0 || *(*(v8 + 3) + 8) <= v56)
          {
            v319 = **(Phase::Logger::GetInstance(result) + 704);
            result = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
            if (result)
            {
              *buf = 136315394;
              *&buf[4] = "ActionTreeManager.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3491;
              v315 = "%25s:%-5d Fatal Sound Event data error: blend parameter invalid";
              goto LABEL_526;
            }

            return result;
          }

          v97 = *(a3 + 8);
          if (*(v372 + v10 + 8) >= ((*(a3 + 16) - v97) >> 3))
          {
            Phase::ActionTreeManager::HandleParamError(0, v8, v56);
            return 0;
          }

          v98 = *(a3 + 32);
          if (*(v372 + v10 + 8) >= ((*(a3 + 40) - v98) >> 2))
          {
            Phase::ActionTreeManager::HandleParamError(0, v8, *(v372 + v10 + 8));
            return 0;
          }

          if (*(v98 + 4 * *(v372 + v10 + 8)) != 1)
          {
            v30 = 0;
            v147 = 0.0;
            goto LABEL_314;
          }

          v99 = (v97 + 8 * *(v372 + v10 + 8));
        }

        v146 = *(v55 + 32);
        v147 = 0.0;
        if ((v146 - 17) < 0xFFFFFFF0 || (v148 = *v99, v149 = v55 + 24 * (v146 - 1), *(v55 + 16) > v148) && *(v55 + 24) == 0.0 || *(v149 + 40) < v148 && *(v149 + 48) == 0.0)
        {
          v30 = 0;
        }

        else
        {
          v147 = Phase::EvaluateEnvelopeDef(v55 + 16, v148);
          v30 = 1;
          v7 = v369;
          v8 = this;
        }

LABEL_314:
        *(v11 + 1) = v147 * *(v11 + 1);
        goto LABEL_315;
      case 2:
      case 4:
        v371 -= v371 > 0;
        v11 = &v386[16 * v371];
        goto LABEL_448;
      case 3:
        if (v371 >= 15)
        {
          v319 = **(Phase::Logger::GetInstance(result) + 704);
          result = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 136315394;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3527;
            v315 = "%25s:%-5d Fatal Sound Event data error: Failed to push switch stack";
            goto LABEL_526;
          }

          return result;
        }

        v27 = v371 + 1;
        v11 = &v386[16 * v27];
        *v11 = *&v386[16 * v371];
        if (!*v11)
        {
          goto LABEL_316;
        }

        v28 = *(v372 + v10 + 8);
        if ((v28 & 0x8000000000000000) != 0 || (v29 = *(a3 + 8), v28 >= (*(a3 + 16) - v29) >> 3))
        {
          v321 = 0;
        }

        else
        {
          if (*(*(a3 + 32) + 4 * v28) == 2)
          {
            v30 = *(v29 + 8 * v28) == *(v372 + v10 + 16);
LABEL_315:
            *v11 = v30;
LABEL_316:
            v10 += *(v12 + 4);
            v371 = v27;
            goto LABEL_449;
          }

          v321 = 1;
        }

        Phase::ActionTreeManager::HandleParamError(v321, v8, v28);
        return 0;
      case 5:
        v365 = v9;
        v66 = (v372 + v10);
        v67 = *(v12 + 4);
        v68 = v8;
        v69 = *v11;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v68 + 13, (v372 + v10));
        v10 += v67;
        if (!v69)
        {
          v7 = v369;
          v8 = this;
          v9 = v9;
          if (!result)
          {
LABEL_249:
            *(v11 + 1) = 0xFFFFFFFFLL;
            goto LABEL_449;
          }

          v93 = this[14];
          v94 = *(result + 8);
          v95 = vcnt_s8(v93);
          v95.i16[0] = vaddlv_u8(v95);
          if (v95.u32[0] > 1uLL)
          {
            if (v94 >= *&v93)
            {
              v94 %= *&v93;
            }
          }

          else
          {
            v94 &= *&v93 - 1;
          }

          v117 = *result;
          v118 = this[13];
          v119 = *(*&v118 + 8 * v94);
          do
          {
            v120 = v119;
            v119 = *v119;
          }

          while (v119 != result);
          if (v120 == v360)
          {
            goto LABEL_238;
          }

          v121 = v120[1];
          if (v95.u32[0] > 1uLL)
          {
            if (v121 >= *&v93)
            {
              v121 %= *&v93;
            }
          }

          else
          {
            v121 &= *&v93 - 1;
          }

          if (v121 != v94)
          {
LABEL_238:
            if (v117)
            {
              v150 = *(*&v117 + 8);
              if (v95.u32[0] > 1uLL)
              {
                v151 = *(*&v117 + 8);
                if (v150 >= *&v93)
                {
                  v151 = v150 % *&v93;
                }
              }

              else
              {
                v151 = v150 & (*&v93 - 1);
              }

              if (v151 == v94)
              {
                goto LABEL_242;
              }
            }

            *(*&v118 + 8 * v94) = 0;
            v117 = *result;
          }

          if (!*&v117)
          {
LABEL_248:
            *v120 = v117;
            *result = 0;
            --*&this[16];
            operator delete(result);
            goto LABEL_249;
          }

          v150 = *(*&v117 + 8);
LABEL_242:
          if (v95.u32[0] > 1uLL)
          {
            if (v150 >= *&v93)
            {
              v150 %= *&v93;
            }
          }

          else
          {
            v150 &= *&v93 - 1;
          }

          if (v150 != v94)
          {
            *(*&this[13] + 8 * v150) = v120;
            v117 = *result;
          }

          goto LABEL_248;
        }

        v7 = v369;
        v9 = v9;
        if (result)
        {
          *(v11 + 2) = *(result + 24);
          *(v11 + 3) = 0;
          v70 = *(v66 + 12);
          v8 = this;
          if (*(v66 + 12))
          {
            while (1)
            {
              v71 = (v372 + v10);
              v10 += *(v372 + v10 + 4) + 8;
              if (v10 >= v369 || *v71 != 6)
              {
                break;
              }

              if (!--v70)
              {
                goto LABEL_449;
              }
            }

            v319 = **(Phase::Logger::GetInstance(result) + 704);
            result = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
            if (result)
            {
              *buf = 136315394;
              *&buf[4] = "ActionTreeManager.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3573;
              v315 = "%25s:%-5d Fatal Sound Event data error: Failed to process random weights";
              goto LABEL_526;
            }

            return result;
          }

          goto LABEL_449;
        }

        result = this;
        if (*(v66 + 2) < 1)
        {
          v116 = 0;
        }

        else
        {
          v116 = [*&this[2] getRandomHistory:*v66];
          result = this;
        }

        v152 = *(v66 + 12);
        if (*(v66 + 12))
        {
          v153 = 0;
          v154 = 0;
          v155 = 0.0;
          do
          {
            v156 = (v372 + v10);
            v157 = v10 + 8;
            v10 += 8 + *(v372 + v10 + 4);
            if (v10 >= v369 || *v156 != 6)
            {
              v319 = **(Phase::Logger::GetInstance(result) + 704);
              result = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
              if (result)
              {
                *buf = 136315394;
                *&buf[4] = "ActionTreeManager.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3596;
                v315 = "%25s:%-5d Fatal Sound Event data error: Failed to process random weights";
                goto LABEL_526;
              }

              return result;
            }

            v158 = *(v372 + v157);
            if (v116)
            {
              v159 = v116[4];
              v160 = v116[1];
              v161 = v116[2];
              v162 = (v160 + 8 * (v159 >> 10));
              if (v161 == v160)
              {
                v163 = 0;
              }

              else
              {
                v163 = (*v162 + 4 * (v116[4] & 0x3FFLL));
              }

LABEL_218:
              v164 = v163 - 1024;
              while (1)
              {
                v165 = v161 == v160 ? 0 : *(v160 + (((v116[5] + v159) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v116[5] + v159) & 0x3FF);
                if (v163 == v165)
                {
                  break;
                }

                if (*v163 == v154)
                {
                  goto LABEL_228;
                }

                ++v163;
                if (*v162 == ++v164)
                {
                  v166 = v162[1];
                  ++v162;
                  v163 = v166;
                  goto LABEL_218;
                }
              }
            }

            v155 = v155 + v158;
            v167 = *(v361 + 216);
            v168 = *(v361 + 208) ^ (*(v361 + 208) << 23);
            v169 = (v167 >> 26) ^ (v168 >> 17) ^ v167 ^ v168;
            *(v361 + 208) = v167;
            *(v361 + 216) = v169;
            if (v155 * (vcvtd_n_f64_u64(v169 + v167, 0x40uLL) * 10000.0 + 0.0) < v158 * 10001.0)
            {
              v153 = v154;
            }

LABEL_228:
            ++v154;
          }

          while (v154 != v152);
        }

        else
        {
          v153 = 0;
        }

        *(v11 + 2) = v153;
        *(v11 + 3) = 0;
        v170 = *v66;
        v171 = *(result + 112);
        if (!*&v171)
        {
          goto LABEL_330;
        }

        v172 = vcnt_s8(v171);
        v172.i16[0] = vaddlv_u8(v172);
        if (v172.u32[0] > 1uLL)
        {
          v173 = *v66;
          if (*&v171 <= v170)
          {
            v173 = v170 % *&v171;
          }
        }

        else
        {
          v173 = (*&v171 - 1) & v170;
        }

        v200 = *(*&this[13] + 8 * v173);
        if (!v200 || (v201 = *v200) == 0)
        {
LABEL_330:
          operator new();
        }

        while (1)
        {
          v202 = v201[1];
          if (v202 == v170)
          {
            break;
          }

          if (v172.u32[0] > 1uLL)
          {
            if (v202 >= *&v171)
            {
              v202 %= *&v171;
            }
          }

          else
          {
            v202 &= *&v171 - 1;
          }

          if (v202 != v173)
          {
            goto LABEL_330;
          }

LABEL_329:
          v201 = *v201;
          if (!v201)
          {
            goto LABEL_330;
          }
        }

        if (v201[2] != v170)
        {
          goto LABEL_329;
        }

        *(v201 + 6) = v153;
        if (v116)
        {
          v243 = v116[2];
          v244 = v116[1];
          if (v243 == v244)
          {
            v245 = 0;
          }

          else
          {
            v245 = ((v243 - v244) << 7) - 1;
          }

          v247 = v116[4];
          v246 = v116[5];
          v248 = v246 + v247;
          if (v245 == v246 + v247)
          {
            if (v247 < 0x400)
            {
              v249 = v116[3];
              v250 = v249 - *v116;
              if (v243 - v244 < v250)
              {
                operator new();
              }

              v266 = v250 >> 2;
              if (v249 == *v116)
              {
                v267 = 1;
              }

              else
              {
                v267 = v266;
              }

              std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(v267);
            }

            v116[4] = v247 - 1024;
            *buf = *v244;
            v116[1] = v244 + 1;
            result = std::__split_buffer<int *>::emplace_back<int *&>(v116, buf);
            v244 = v116[1];
            v247 = v116[4];
            v246 = v116[5];
            v248 = v247 + v246;
          }

          (*(v244 + ((v248 >> 7) & 0x1FFFFFFFFFFFFF8)))[v248 & 0x3FF] = *(v11 + 2);
          v116[5] = v246 + 1;
          if (v246 + 1 > *(v66 + 2))
          {
            v311 = v247 + 1;
            v116[4] = v311;
            v116[5] = v246;
            if (v311 >= 0x800)
            {
              operator delete(*v244);
              v116[1] += 8;
              v116[4] -= 1024;
            }
          }
        }

        v7 = v369;
        if (v10 >= v369)
        {
          v319 = **(Phase::Logger::GetInstance(result) + 704);
          result = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 136315394;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3644;
            v315 = "%25s:%-5d Fatal Sound Event data error: Unexpected end of node message stream";
            goto LABEL_526;
          }

          return result;
        }

        v8 = this;
        v9 = v365;
        if (*(v372 + v10) == 7)
        {
LABEL_449:
          if (v10 >= v7)
          {
            return 1;
          }

          continue;
        }

        v319 = **(Phase::Logger::GetInstance(result) + 704);
        result = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315394;
          *&buf[4] = "ActionTreeManager.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3652;
          v315 = "%25s:%-5d Fatal Sound Event data error: Unexpected message processing subtree";
LABEL_526:
          v326 = v319;
          v327 = 18;
LABEL_527:
          _os_log_impl(&dword_23A302000, v326, OS_LOG_TYPE_ERROR, v315, buf, v327);
          return 0;
        }

        return result;
      case 6:
        if (!*v11)
        {
          goto LABEL_448;
        }

        v319 = **(Phase::Logger::GetInstance(result) + 704);
        result = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        *buf = 136315394;
        *&buf[4] = "ActionTreeManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3672;
        v315 = "%25s:%-5d Fatal Sound Event data error: Bad randomweight message encountered";
        goto LABEL_526;
      case 7:
        if (v371 >= 15)
        {
          v319 = **(Phase::Logger::GetInstance(result) + 704);
          result = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 136315394;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3687;
            v315 = "%25s:%-5d Fatal Sound Event data error: Failed to push random stack";
            goto LABEL_526;
          }

          return result;
        }

        v62 = *(v11 + 2);
        v63 = *(v11 + 3);
        v11 = &v386[16 * v371 + 16];
        *v11 = *&v386[16 * v371];
        v64 = v63 == v62;
        v65 = *v11;
        if (!v64)
        {
          v65 = 0;
        }

        *v11 = v65;
        v10 += *(v12 + 4);
        ++v371;
        goto LABEL_449;
      case 8:
        v371 -= v371 > 0;
        v11 = &v386[16 * v371];
        ++*(v11 + 3);
        goto LABEL_448;
      case 9:
        if (*(*(v8 + 3) + 40) <= v9)
        {
          v90 = **(Phase::Logger::GetInstance(result) + 704);
          v91 = v90;
          result = os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_113;
          }

          *buf = 136315394;
          *&buf[4] = "ActionTreeManager.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2048;
          v49 = v90;
          v50 = "%25s:%-5d Fatal Sound Event data error: Encountered more leafnodes than is allowed";
          goto LABEL_111;
        }

        v31 = *(v8 + 7) + 160 * v9;
        v42 = *(v31 + 24);
        if (!*v11)
        {
          if (v42 != 5)
          {
            goto LABEL_447;
          }

          goto LABEL_267;
        }

        if (v42 == 5)
        {
          goto LABEL_267;
        }

        v43 = (v372 + v10);
        if (v42 != 4)
        {
          if (v42 != 1)
          {
            goto LABEL_447;
          }

          if (*v31 != 1 || !*(v31 + 32))
          {
            v197 = **(Phase::Logger::GetInstance(result) + 704);
            v198 = v197;
            result = os_log_type_enabled(v197, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_113;
            }

            v199 = *v43;
            *buf = 136315650;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2075;
            *&buf[18] = 2048;
            *&buf[20] = v199;
            v49 = v197;
            v50 = "%25s:%-5d Fatal Sound Event data error: push stream leaf node is expected to be already configured %llu";
            goto LABEL_312;
          }

          *(v31 + 96) = v43[5];
          *(v31 + 56) = 4;
          if (*(v31 + 88) != 3)
          {
            goto LABEL_545;
          }

          v44 = Phase::ActionTreeObject::FindSubmixIdFromHashName(v8, v43[1]);
          if (!(v44 | v45))
          {
            v46 = **(Phase::Logger::GetInstance(v44) + 704);
            v47 = v46;
            result = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_113;
            }

            v48 = v43[1];
            *buf = 136315650;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2119;
            *&buf[18] = 2048;
            *&buf[20] = v48;
            v49 = v46;
            v50 = "%25s:%-5d Fatal Sound Event data error: Submix %llx not registered.";
LABEL_312:
            v92 = 28;
            goto LABEL_112;
          }

          *&buf[32] = 6553601;
          v402[1] = 0;
          v402[2] = 0;
          *buf = *(v31 + 8);
          *&buf[16] = v44;
          *&buf[24] = v45;
          v394 = 1;
          v395 = 0;
          v396 = 0;
          v400 = v43[2];
          v401 = v43[3];
          v402[0] = *(v43 + 56);
          v393 = v43[8];
          *&v402[3] = xmmword_23A554A00;
          v251 = *(*(v31 + 32) + 104);
          v252 = [v251 channelLayout];
          *&buf[32] = [v252 layoutTag];

          v253 = [v251 streamDescription];
          v254 = this;
          v397 = *v253;
          v398 = *(v253 + 16);
          v399 = *(v253 + 32);
          Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 7u, buf, 0xA8uLL);
          v255 = Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, this, v9, (v43 + 1), a3, a4, *(v11 + 1));
          if (v255)
          {
            v256 = Phase::Logger::GetInstance(v255);
            if (*(v256 + 712) == 1)
            {
              v257 = **(Phase::Logger::GetInstance(v256) + 704);
              v258 = v257;
              v259 = *(v31 + 8);
              if (v259 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v257))
              {
                *__src = 134217984;
                *&__src[4] = v259;
                _os_signpost_emit_with_name_impl(&dword_23A302000, v258, OS_SIGNPOST_INTERVAL_BEGIN, v259, "Phase_Generator_Prepare", "Generator ID %llu Prepare", __src, 0xCu);
              }

              v254 = this;
            }

            caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::_addOrReplace(v361 + 80, *(v31 + 8), *(v31 + 16), *(v31 + 32));
            Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v31, 2u);
            v260 = *(v254 + 144);
            if ((v260 - 2) < 2)
            {
LABEL_405:
              if (v260 != 4 && (*(v254 + 208) & 1) == 0)
              {
                goto LABEL_413;
              }
            }

            else if (v260 != 4)
            {
              if (v260 != 8)
              {
                goto LABEL_413;
              }

              goto LABEL_405;
            }

            v261 = Phase::ActionTreeManager::StartVoice(v254, v31, a4);
            if (v261)
            {
              v262 = Phase::Logger::GetInstance(v261);
              if (*(v262 + 712) == 1)
              {
                v263 = **(Phase::Logger::GetInstance(v262) + 704);
                v264 = v263;
                v265 = *(v31 + 8);
                if (v265 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v263))
                {
                  *__src = 134217984;
                  *&__src[4] = v265;
                  _os_signpost_emit_with_name_impl(&dword_23A302000, v264, OS_SIGNPOST_INTERVAL_BEGIN, v265, "Phase_Generator_Start", "Generator ID %llu Start", __src, 0xCu);
                }
              }

LABEL_413:

              goto LABEL_268;
            }
          }

          goto LABEL_113;
        }

        v178 = v9;
        result = Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, v8, v9, (v43 + 1), a3, a4, *(v11 + 1));
LABEL_265:
        v7 = v369;
        v8 = this;
        v9 = v178;
        if ((result & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_447;
      case 10:
        if (*(*(v8 + 3) + 40) <= v9)
        {
          v319 = **(Phase::Logger::GetInstance(result) + 704);
          v320 = v319;
          result = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 136315394;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2818;
            v315 = "%25s:%-5d Fatal Sound Event data error: Encountered more leafnodes than is allowed";
            goto LABEL_526;
          }

          return result;
        }

        v72 = v9;
        v73 = v372 + v10;
        v74 = v72;
        v75 = *(v8 + 7) + 160 * v72;
        v76 = *(v75 + 24);
        if (!*v11)
        {
          if (v76 != 4)
          {
            goto LABEL_309;
          }

          v96 = *(v73 + 56);
          if ((v96 - 1) >= 3)
          {
            if (v96)
            {
              goto LABEL_309;
            }

            Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v75, 6u);
            *buf = *(v75 + 8);
            result = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 3u, buf, 0x18uLL);
          }

          else
          {
            Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v75, 7u);
            *buf = *(v75 + 8);
            result = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 1u, buf, 0x10uLL);
          }

          goto LABEL_307;
        }

        if ((v76 - 7) >= 2)
        {
          if (v76 == 1)
          {
            goto LABEL_145;
          }

          v7 = v369;
          if (v76 == 4)
          {
            result = Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, v8, v72, v73 + 8, a3, a4, *(v11 + 1));
            if (!result)
            {
              return result;
            }

            v7 = v369;
            v8 = this;
            if (*(v73 + 88) == 1)
            {
              v78 = *(v73 + 168);
              if (v78 != -1)
              {
                *__src = *(v73 + 96);
                result = Phase::ActionTreeManager::SetFloatParam(v78, __src, a3, this, v77);
                if (!result)
                {
                  return result;
                }

                *buf = *(v75 + 8);
                *&buf[16] = 0xD5446B03D63B0AC2;
                *&buf[24] = *__src;
                Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, buf, 0x20uLL);
                v7 = v369;
                v8 = this;
              }

              v79 = *(v73 + 169);
              if (v79 != -1)
              {
                *__src = *(v73 + 104);
                result = Phase::ActionTreeManager::SetFloatParam(v79, __src, a3, v8, v77);
                if (!result)
                {
                  return result;
                }

                *buf = *(v75 + 8);
                *&buf[16] = 0x689B3C6AD0C10930;
                *&buf[24] = *__src;
                Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, buf, 0x20uLL);
                v7 = v369;
                v8 = this;
              }

              v80 = *(v73 + 170);
              if (v80 != -1)
              {
                *__src = *(v73 + 112);
                result = Phase::ActionTreeManager::SetFloatParam(v80, __src, a3, v8, v77);
                if (!result)
                {
                  return result;
                }

                *buf = *(v75 + 8);
                *&buf[16] = 0x6256579BE092E3DDLL;
                *&buf[24] = *__src;
                Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, buf, 0x20uLL);
                v7 = v369;
                v8 = this;
              }

              v81 = *(v73 + 171);
              if (v81 != -1)
              {
                *__src = *(v73 + 120);
                result = Phase::ActionTreeManager::SetFloatParam(v81, __src, a3, v8, v77);
                if (!result)
                {
                  return result;
                }

                *buf = *(v75 + 8);
                *&buf[16] = 0x1EF815B19E7DFB31;
                *&buf[24] = *__src;
                Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, buf, 0x20uLL);
                v7 = v369;
                v8 = this;
              }

              v82 = *(v73 + 172);
              if (v82 != -1)
              {
                *__src = *(v73 + 128);
                result = Phase::ActionTreeManager::SetFloatParam(v82, __src, a3, v8, v77);
                if (!result)
                {
                  return result;
                }

                *buf = *(v75 + 8);
                *&buf[16] = 0xF12C986EFB9BD1AELL;
                *&buf[24] = *__src;
                Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, buf, 0x20uLL);
                v7 = v369;
                v8 = this;
              }

              v83 = *(v73 + 173);
              if (v83 != -1)
              {
                *__src = *(v73 + 136);
                result = Phase::ActionTreeManager::SetFloatParam(v83, __src, a3, v8, v77);
                if (!result)
                {
                  return result;
                }

                *buf = *(v75 + 8);
                *&buf[16] = 0x1F3CFA678783F49FLL;
                *&buf[24] = *__src;
                Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, buf, 0x20uLL);
                v7 = v369;
                v8 = this;
              }

              v84 = *(v73 + 174);
              if (v84 != -1)
              {
                *__src = *(v73 + 144);
                result = Phase::ActionTreeManager::SetFloatParam(v84, __src, a3, v8, v77);
                if (!result)
                {
                  return result;
                }

                *buf = *(v75 + 8);
                *&buf[16] = 0x321AF1D82F39218ALL;
                *&buf[24] = *__src;
                Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, buf, 0x20uLL);
                v7 = v369;
                v8 = this;
              }

              v85 = *(v73 + 175);
              if (v85 != -1)
              {
                *__src = *(v73 + 152);
                result = Phase::ActionTreeManager::SetFloatParam(v85, __src, a3, v8, v77);
                if (!result)
                {
                  return result;
                }

                *buf = *(v75 + 8);
                *&buf[16] = 0x10483E0F24E3A555;
                *&buf[24] = *__src;
                Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, buf, 0x20uLL);
                v7 = v369;
                v8 = this;
              }

              result = *(v73 + 176);
              if (result != -1)
              {
                *__src = *(v73 + 160);
                result = Phase::ActionTreeManager::SetFloatParam(result, __src, a3, v8, v77);
                if (!result)
                {
                  return result;
                }

                *buf = *(v75 + 8);
                *&buf[16] = 0xA19D398D00200576;
                *&buf[24] = *__src;
                result = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, buf, 0x20uLL);
                goto LABEL_307;
              }
            }
          }

LABEL_309:
          v9 = (v74 + 1);
          goto LABEL_448;
        }

        if ((*(v73 + 56) - 1) <= 2)
        {
          result = Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, v8, v72, v73 + 8, a3, a4, *(v11 + 1));
          if (!result)
          {
            return result;
          }

          *buf = *(v75 + 8);
          Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 2u, buf, 0x10uLL);
          Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v75, 4u);
LABEL_307:
          v8 = this;
          goto LABEL_308;
        }

LABEL_145:
        MEMORY[0x23EE87040](buf);
        v366 = *buf;
        v373 = *buf;
        buf[0] = 6;
        v100 = Phase::ActionTreeObject::LeafNodeInfo::Configure(v75, &v373, buf, (v73 + 64), (v361 + 232), this);
        if ((v100 & 1) == 0)
        {
          v322 = **(Phase::Logger::GetInstance(v100) + 704);
          v323 = v322;
          if (!os_log_type_enabled(v322, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          *buf = 136315650;
          *&buf[4] = "ActionTreeManager.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2864;
          *&buf[18] = 2048;
          *&buf[20] = v366;
          v315 = "%25s:%-5d Fatal Sound Event data error: could not configure procedure leaf node %llu";
          goto LABEL_519;
        }

        if ((*v75 & 1) == 0)
        {
          goto LABEL_545;
        }

        v101 = Phase::ActionTreeObject::FindSubmixIdFromHashName(this, *(v73 + 8));
        v102 = v101;
        v104 = v103;
        if (!(v101 | v103))
        {
          v322 = **(Phase::Logger::GetInstance(v101) + 704);
          v324 = v322;
          if (!os_log_type_enabled(v322, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          v325 = *(v73 + 8);
          *buf = 136315650;
          *&buf[4] = "ActionTreeManager.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2873;
          *&buf[18] = 2048;
          *&buf[20] = v325;
          v315 = "%25s:%-5d Fatal Sound Event data error: Submix %llx not registered.";
LABEL_519:
          v326 = v322;
          v327 = 28;
          goto LABEL_527;
        }

        if ((*v75 & 1) == 0 || *(v75 + 88) != 6 || *(v75 + 112) != *(v73 + 64))
        {
          goto LABEL_545;
        }

        Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v75, 2u);
        *(v75 + 96) = *(v73 + 40);
        v106 = *(v73 + 56);
        *(v75 + 56) = v106;
        if (*(v73 + 88) != 1)
        {
          v319 = **(Phase::Logger::GetInstance(v105) + 704);
          v328 = v319;
          if (os_log_type_enabled(v319, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2890;
            v315 = "%25s:%-5d Fatal Sound Event data error: Procedure Type is set to None.";
            goto LABEL_526;
          }

          return 0;
        }

        *&v397 = 0;
        *buf = *(v75 + 8);
        *&buf[16] = v102;
        *&buf[24] = v104;
        *&buf[32] = 6553601;
        v394 = 1;
        v395 = *(v73 + 16);
        v396 = *(v73 + 24);
        v393 = 0xC028000000000000;
        *(&v397 + 1) = v106;
        *&v398 = *(v73 + 64);
        DWORD2(v398) = *(v73 + 72);
        v399 = *(v73 + 80);
        Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 8u, buf, 0x70uLL);
        v107 = Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, this, v74, v73 + 8, a3, a4, *(v11 + 1));
        if (!v107)
        {
          return 0;
        }

        v108 = Phase::Logger::GetInstance(v107);
        if (*(v108 + 712) == 1)
        {
          v110 = **(Phase::Logger::GetInstance(v108) + 704);
          v111 = v110;
          v112 = *(v75 + 8);
          if (v112 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v110))
          {
            *__src = 134217984;
            *&__src[4] = v112;
            _os_signpost_emit_with_name_impl(&dword_23A302000, v111, OS_SIGNPOST_INTERVAL_BEGIN, v112, "Phase_Generator_Prepare", "Generator ID %llu Prepare", __src, 0xCu);
          }
        }

        *&v377 = 0;
        v113 = *(v73 + 168);
        if (v113 == -1)
        {
          *&v377 = *(v73 + 96);
          v115 = this;
        }

        else
        {
          v114 = Phase::ActionTreeManager::SetFloatParam(v113, &v377, a3, this, v109);
          v115 = this;
          if ((v114 & 1) == 0)
          {
            return 0;
          }
        }

        v385 = 0;
        v174 = *(v73 + 169);
        if (v174 == -1)
        {
          v385 = *(v73 + 104);
        }

        else
        {
          v175 = Phase::ActionTreeManager::SetFloatParam(v174, &v385, a3, v115, v109);
          v115 = this;
          if ((v175 & 1) == 0)
          {
            return 0;
          }
        }

        v384 = 0;
        v176 = *(v73 + 170);
        if (v176 == -1)
        {
          v384 = *(v73 + 112);
        }

        else
        {
          v177 = Phase::ActionTreeManager::SetFloatParam(v176, &v384, a3, v115, v109);
          v115 = this;
          if ((v177 & 1) == 0)
          {
            return 0;
          }
        }

        v383 = 0;
        v179 = *(v73 + 171);
        if (v179 == -1)
        {
          v383 = *(v73 + 120);
        }

        else
        {
          v180 = Phase::ActionTreeManager::SetFloatParam(v179, &v383, a3, v115, v109);
          v115 = this;
          if ((v180 & 1) == 0)
          {
            return 0;
          }
        }

        v382 = 0;
        v181 = *(v73 + 172);
        if (v181 == -1)
        {
          v382 = *(v73 + 128);
        }

        else
        {
          v182 = Phase::ActionTreeManager::SetFloatParam(v181, &v382, a3, v115, v109);
          v115 = this;
          if ((v182 & 1) == 0)
          {
            return 0;
          }
        }

        v381 = 0;
        v183 = *(v73 + 173);
        if (v183 == -1)
        {
          v381 = *(v73 + 136);
        }

        else
        {
          v184 = Phase::ActionTreeManager::SetFloatParam(v183, &v381, a3, v115, v109);
          v115 = this;
          if ((v184 & 1) == 0)
          {
            return 0;
          }
        }

        v380 = 0;
        v185 = *(v73 + 174);
        if (v185 == -1)
        {
          v380 = *(v73 + 144);
        }

        else
        {
          v186 = Phase::ActionTreeManager::SetFloatParam(v185, &v380, a3, v115, v109);
          v115 = this;
          if ((v186 & 1) == 0)
          {
            return 0;
          }
        }

        v379 = 0;
        v187 = *(v73 + 175);
        if (v187 == -1)
        {
          v379 = *(v73 + 152);
        }

        else
        {
          v188 = Phase::ActionTreeManager::SetFloatParam(v187, &v379, a3, v115, v109);
          v115 = this;
          if ((v188 & 1) == 0)
          {
            return 0;
          }
        }

        v378 = 0;
        v189 = *(v73 + 176);
        if (v189 == -1)
        {
          v190 = (v73 + 160);
        }

        else
        {
          if ((Phase::ActionTreeManager::SetFloatParam(v189, &v378, a3, v115, v109) & 1) == 0)
          {
            return 0;
          }

          v190 = &v378;
        }

        v191 = *v190;
        *__src = *(v75 + 8);
        *&__src[16] = 0xD5446B03D63B0AC2;
        *&__src[24] = v377;
        Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, __src, 0x20uLL);
        *&__src[16] = 0x689B3C6AD0C10930;
        *&__src[24] = v385;
        Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, __src, 0x20uLL);
        *&__src[16] = 0x6256579BE092E3DDLL;
        *&__src[24] = v384;
        Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, __src, 0x20uLL);
        *&__src[16] = 0x1EF815B19E7DFB31;
        *&__src[24] = v383;
        Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, __src, 0x20uLL);
        *&__src[16] = 0xF12C986EFB9BD1AELL;
        *&__src[24] = v382;
        Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, __src, 0x20uLL);
        *&__src[16] = 0x1F3CFA678783F49FLL;
        *&__src[24] = v381;
        Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, __src, 0x20uLL);
        *&__src[16] = 0x321AF1D82F39218ALL;
        *&__src[24] = v380;
        Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, __src, 0x20uLL);
        *&__src[16] = 0x10483E0F24E3A555;
        *&__src[24] = v379;
        Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, __src, 0x20uLL);
        *&__src[16] = 0xA19D398D00200576;
        *&__src[24] = v191;
        result = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 9u, __src, 0x20uLL);
        v8 = this;
        v192 = this[18].u8[0];
        if ((v192 - 2) < 2)
        {
          goto LABEL_299;
        }

        if (v192 == 4)
        {
          goto LABEL_301;
        }

        if (v192 == 8)
        {
LABEL_299:
          if (v192 != 4 && (this[26].i8[0] & 1) == 0)
          {
            goto LABEL_308;
          }

LABEL_301:
          v193 = Phase::ActionTreeManager::StartVoice(this, v75, a4);
          if (!v193)
          {
            return 0;
          }

          result = Phase::Logger::GetInstance(v193);
          v8 = this;
          if (*(result + 712) == 1)
          {
            v194 = **(Phase::Logger::GetInstance(result) + 704);
            v195 = v194;
            v196 = *(v75 + 8);
            if (v196 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v194))
            {
              *__src = 134217984;
              *&__src[4] = v196;
              _os_signpost_emit_with_name_impl(&dword_23A302000, v195, OS_SIGNPOST_INTERVAL_BEGIN, v196, "Phase_Generator_Start", "Generator ID %llu Start", __src, 0xCu);
            }

            goto LABEL_307;
          }
        }

LABEL_308:
        v7 = v369;
        goto LABEL_309;
      case 11:
        if (*(*(v8 + 3) + 40) <= v9)
        {
          v86 = **(Phase::Logger::GetInstance(result) + 704);
          v87 = v86;
          result = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
          v8 = this;
          if (result)
          {
            *buf = 136315394;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2309;
            _os_log_impl(&dword_23A302000, v86, OS_LOG_TYPE_ERROR, "%25s:%-5d Fatal Sound Event data error: Encountered more leafnodes than is allowed", buf, 0x12u);
          }

          goto LABEL_262;
        }

        v14 = *(v8 + 7) + 160 * v9;
        v15 = *(v14 + 24);
        if (!*v11)
        {
          if (v15 == 5)
          {
LABEL_260:
            *buf = *(v14 + 8);
            result = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 3u, buf, 0x18uLL);
            v8 = this;
          }

          goto LABEL_261;
        }

        if (v15 == 5)
        {
          goto LABEL_260;
        }

        v16 = (v372 + v10);
        if (v15 == 4)
        {
          result = Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, v8, v9, (v16 + 3), a3, a4, *(v11 + 1));
          v8 = this;
          if ((result & 1) == 0)
          {
            goto LABEL_262;
          }

          goto LABEL_261;
        }

        if (v15 != 1)
        {
          goto LABEL_261;
        }

        MEMORY[0x23EE87040](buf);
        v363 = *buf;
        v373 = *buf;
        __src[0] = 5;
        *buf = 1;
        v17 = Phase::ActionTreeObject::LeafNodeInfo::Configure(v14, &v373, __src, buf, (v361 + 232), this);
        if ((v17 & 1) == 0)
        {
          v203 = **(Phase::Logger::GetInstance(v17) + 704);
          v204 = v203;
          result = os_log_type_enabled(v203, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 136315650;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2340;
            *&buf[18] = 2048;
            *&buf[20] = v363;
            v25 = v203;
            v26 = "%25s:%-5d Fatal Sound Event data error: could not configure pull stream leaf node %llu";
            goto LABEL_333;
          }

LABEL_334:
          v8 = this;
LABEL_262:
          v7 = v369;
          goto LABEL_449;
        }

        if ((*v14 & 1) == 0)
        {
          goto LABEL_545;
        }

        v18 = Phase::ActionTreeObject::FindSubmixIdFromHashName(this, v16[3]);
        v19 = v18;
        v21 = v20;
        if (!(v18 | v20))
        {
          v22 = **(Phase::Logger::GetInstance(v18) + 704);
          v23 = v22;
          result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v24 = v16[3];
            *buf = 136315650;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2349;
            *&buf[18] = 2048;
            *&buf[20] = v24;
            v25 = v22;
            v26 = "%25s:%-5d Fatal Sound Event data error: Submix %llx not registered.";
LABEL_333:
            _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x1Cu);
            goto LABEL_334;
          }

          goto LABEL_334;
        }

        if ((*v14 & 1) == 0 || *(v14 + 88) != 5 || *(v14 + 112) != 1)
        {
LABEL_545:
          std::terminate();
        }

        Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v14, 2u);
        *(v14 + 96) = v16[7];
        *(v14 + 56) = 4;
        *buf = *(v14 + 8);
        *&buf[16] = v19;
        *&buf[24] = v21;
        v394 = 3;
        v395 = 0;
        v396 = 0;
        v400 = v16[4];
        v401 = v16[5];
        v402[0] = *(v16 + 72);
        v393 = v16[10];
        *&v402[1] = *(v16 + 1);
        *&v402[3] = xmmword_23A554A00;
        v236 = *(v16 + 22);
        *&buf[32] = *(v16 + 22);
        v397 = 0u;
        v398 = 0u;
        v399 = 0;
        if (*(v361 + 232))
        {
          goto LABEL_375;
        }

        v283 = Phase::Controller::TaskManager::GetObjCService<ExternalStreamManager>(*(v361 + 192), 15);
        v284 = Phase::UniqueObjectId::CreateNSUUID((v16 + 1));
        *&v377 = 0;
        v359 = v284;
        v285 = [v283 formatForStream:? error:?];
        v286 = v377;
        v367 = v286;
        if (!v285)
        {
          v296 = **(Phase::Logger::GetInstance(v286) + 704);
          v297 = v296;
          if (os_log_type_enabled(v296, OS_LOG_TYPE_ERROR))
          {
            *__src = 136315906;
            *&__src[4] = "ActionTreeManager.mm";
            *&__src[12] = 1024;
            *&__src[14] = 2399;
            *&__src[18] = 2112;
            *&__src[20] = v359;
            *&__src[28] = 2112;
            *&__src[30] = v367;
            _os_log_impl(&dword_23A302000, v296, OS_LOG_TYPE_ERROR, "%25s:%-5d Fatal Sound Event data error: could not get stream format for stream uuid %@ (%@)", __src, 0x26u);
            v298 = v359;
LABEL_478:

            goto LABEL_334;
          }

LABEL_477:
          v298 = v359;
          goto LABEL_478;
        }

        v356 = v285;
        v354 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:v236];
        v287 = objc_alloc(MEMORY[0x277CB83A8]);
        [v356 sampleRate];
        v352 = [v287 initStandardFormatWithSampleRate:v354 channelLayout:?];
        v288 = [v352 streamDescription];
        v397 = *v288;
        v398 = *(v288 + 16);
        v399 = *(v288 + 32);
        if (*(v14 + 32))
        {
          v289 = **(Phase::Logger::GetInstance(v288) + 704);
          v290 = v289;
          if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
          {
            v291 = *v16;
            *__src = 136315650;
            *&__src[4] = "ActionTreeManager.mm";
            *&__src[12] = 1024;
            *&__src[14] = 2419;
            *&__src[18] = 2048;
            *&__src[20] = v291;
            _os_log_impl(&dword_23A302000, v289, OS_LOG_TYPE_ERROR, "%25s:%-5d Warning: overriding the stream renderer for pull stream %llu", __src, 0x1Cu);
          }
        }

        v292 = *(v16 + 72);
        v293 = *(v16 + 10);
        v385 = v367;
        if (v283)
        {
          [v283 createRendererForStream:v359 outputChannelLayout:v236 normalize:v292 targetLKFS:&v385 error:v293];
          v294 = v385;

          v295 = *__src;
          v367 = v294;
        }

        else
        {
          v295 = 0uLL;
        }

        *&__src[8] = 0;
        *__src = 0;
        v299 = *(v14 + 40);
        *(v14 + 32) = v295;
        if (v299)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v299);
        }

        if (*&__src[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&__src[8]);
        }

        v300 = *(v14 + 32);
        if (v300)
        {
          v301 = Phase::Controller::StreamRenderer::Prepare(v300);
          if (v301)
          {
            v301 = *(v14 + 32);
            if (*(v301 + 48))
            {
              if (*(v301 + 136))
              {
                v302 = Phase::Controller::StreamRenderer::Start(v301);
                if (v302)
                {

LABEL_375:
                  Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 7u, buf, 0xA8uLL);
                  result = Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, this, v9, (v16 + 3), a3, a4, *(v11 + 1));
                  if (!result)
                  {
                    goto LABEL_334;
                  }

                  v237 = *(v14 + 32);
                  if (v237)
                  {
                    caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::_addOrReplace(v361 + 80, *(v14 + 8), *(v14 + 16), v237);
                  }

                  result = Phase::Logger::GetInstance(result);
                  if (*(result + 712) == 1)
                  {
                    v238 = **(Phase::Logger::GetInstance(result) + 704);
                    v239 = v238;
                    v240 = *(v14 + 8);
                    if (v240 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v238))
                    {
                      *__src = 134217984;
                      *&__src[4] = v240;
                      _os_signpost_emit_with_name_impl(&dword_23A302000, v239, OS_SIGNPOST_INTERVAL_BEGIN, v240, "Phase_Generator_Prepare", "Generator ID %llu Prepare", __src, 0xCu);
                    }
                  }

                  v8 = this;
LABEL_261:
                  v9 = (v9 + 1);
                  v10 += *(v12 + 4);
                  goto LABEL_262;
                }

                v312 = **(Phase::Logger::GetInstance(v302) + 704);
                v313 = v312;
                if (!os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_476;
                }

                v314 = *v16;
                *__src = 136315650;
                *&__src[4] = "ActionTreeManager.mm";
                *&__src[12] = 1024;
                *&__src[14] = 2447;
                *&__src[18] = 2048;
                *&__src[20] = v314;
                v305 = v312;
                v306 = "%25s:%-5d Failed to start stream renderer for pull stream %llu";
                v307 = 28;
                goto LABEL_475;
              }
            }
          }

          v303 = **(Phase::Logger::GetInstance(v301) + 704);
          v304 = v303;
          if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
          {
            *__src = 136315394;
            *&__src[4] = "ActionTreeManager.mm";
            *&__src[12] = 1024;
            *&__src[14] = 2439;
            v305 = v303;
            v306 = "%25s:%-5d Failed to prepare stream renderer!";
            v307 = 18;
LABEL_475:
            _os_log_impl(&dword_23A302000, v305, OS_LOG_TYPE_ERROR, v306, __src, v307);
          }
        }

        else
        {
          v308 = **(Phase::Logger::GetInstance(0) + 704);
          v309 = v308;
          if (os_log_type_enabled(v308, OS_LOG_TYPE_ERROR))
          {
            v310 = *v16;
            *__src = 136315906;
            *&__src[4] = "ActionTreeManager.mm";
            *&__src[12] = 1024;
            *&__src[14] = 2431;
            *&__src[18] = 2048;
            *&__src[20] = v310;
            *&__src[28] = 2112;
            *&__src[30] = v367;
            v305 = v308;
            v306 = "%25s:%-5d Failed to create stream renderer for pull stream %llu (%@)";
            v307 = 38;
            goto LABEL_475;
          }
        }

LABEL_476:

        goto LABEL_477;
      case 12:
        if (*(*(v8 + 3) + 40) <= v9)
        {
          v88 = **(Phase::Logger::GetInstance(result) + 704);
          v89 = v88;
          result = os_log_type_enabled(v88, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_113;
          }

          *buf = 136315394;
          *&buf[4] = "ActionTreeManager.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2577;
          v49 = v88;
          v50 = "%25s:%-5d Fatal Sound Event data error: Encountered more leafnodes than is allowed";
LABEL_111:
          v92 = 18;
LABEL_112:
          _os_log_impl(&dword_23A302000, v49, OS_LOG_TYPE_ERROR, v50, buf, v92);
LABEL_113:
          v8 = this;
          goto LABEL_262;
        }

        v31 = *(v8 + 7) + 160 * v9;
        v32 = *(v31 + 24);
        if (!*v11)
        {
          if (v32 != 5)
          {
            goto LABEL_447;
          }

LABEL_267:
          *buf = *(v31 + 8);
          result = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 3u, buf, 0x18uLL);
LABEL_268:
          v7 = v369;
          v8 = this;
          goto LABEL_447;
        }

        if (v32 == 5)
        {
          goto LABEL_267;
        }

        v33 = v372 + v10;
        if (v32 == 4)
        {
          v178 = v9;
          result = Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, v8, v9, v33 + 8, a3, a4, *(v11 + 1));
          goto LABEL_265;
        }

        if (v32 != 1)
        {
          goto LABEL_447;
        }

        v364 = v9;
        v357 = [MEMORY[0x277CCACA8] stringWithCString:objc_msgSend(*(v8 + 2) encoding:{"getString:", *v33), 4}];
        WeakRetained = objc_loadWeakRetained(&this[38]);
        v35 = [WeakRetained pullStreamNodes];
        v36 = [v35 objectForKeyedSubscript:v357];

        if ((Phase::ActionTreeManager::ConfigureStreamNode(v361, this, v31, v36, 4) & 1) == 0)
        {
          goto LABEL_395;
        }

        v37 = Phase::ActionTreeObject::FindSubmixIdFromHashName(this, *(v33 + 8));
        if (!(v37 | v38))
        {
          v39 = **(Phase::Logger::GetInstance(v37) + 704);
          v40 = v39;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v41 = *(v33 + 8);
            *buf = 136315650;
            *&buf[4] = "ActionTreeManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2645;
            *&buf[18] = 2048;
            *&buf[20] = v41;
            _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d Fatal Sound Event data error: Submix %llx not registered.", buf, 0x1Cu);
          }

          goto LABEL_395;
        }

        *(v31 + 96) = *(v33 + 40);
        *(v31 + 56) = 4;
        *&buf[32] = 6553601;
        v402[1] = 0;
        v402[2] = 0;
        *buf = *(v31 + 8);
        *&buf[16] = v37;
        *&buf[24] = v38;
        v394 = 4;
        v395 = 0;
        v396 = 0;
        v400 = *(v33 + 16);
        v401 = *(v33 + 24);
        v402[0] = *(v33 + 56);
        v393 = *(v33 + 64);
        *&v402[3] = xmmword_23A554A00;
        v220 = [v36 format];
        v221 = [v220 channelLayout];
        *&buf[32] = [v221 layoutTag];

        v222 = [v36 format];
        v223 = [v222 streamDescription];
        v397 = *v223;
        v398 = *(v223 + 16);
        v399 = *(v223 + 32);

        Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 7u, buf, 0xA8uLL);
        v224 = this;
        if ((Phase::ActionTreeManager::WriteLeafNodeUpdateParameters(v361, this, v9, v33 + 8, a3, a4, *(v11 + 1)) & 1) == 0)
        {
LABEL_395:

          v7 = v369;
          v8 = this;
          v9 = v9;
          goto LABEL_449;
        }

        Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v31, 2u);
        v226 = Phase::Logger::GetInstance(v225);
        if (*(v226 + 712) == 1)
        {
          v227 = **(Phase::Logger::GetInstance(v226) + 704);
          v228 = v227;
          v229 = *(v31 + 8);
          if (v229 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v227))
          {
            *__src = 134217984;
            *&__src[4] = v229;
            _os_signpost_emit_with_name_impl(&dword_23A302000, v228, OS_SIGNPOST_INTERVAL_BEGIN, v229, "Phase_Generator_Prepare", "Generator ID %llu Prepare", __src, 0xCu);
          }

          v224 = this;
        }

        caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::_addOrReplace(v361 + 80, *(v31 + 8), *(v31 + 16), *(v31 + 32));
        v230 = *(v224 + 144);
        if ((v230 - 2) < 2)
        {
          goto LABEL_362;
        }

        if (v230 != 4)
        {
          if (v230 != 8)
          {
            goto LABEL_370;
          }

LABEL_362:
          if (v230 != 4 && (*(v224 + 208) & 1) == 0)
          {
            goto LABEL_370;
          }
        }

        v231 = Phase::ActionTreeManager::StartVoice(v224, v31, a4);
        if (v231)
        {
          v232 = Phase::Logger::GetInstance(v231);
          if (*(v232 + 712) == 1)
          {
            v233 = **(Phase::Logger::GetInstance(v232) + 704);
            v234 = v233;
            v235 = *(v31 + 8);
            if (v235 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v233))
            {
              *__src = 134217984;
              *&__src[4] = v235;
              _os_signpost_emit_with_name_impl(&dword_23A302000, v234, OS_SIGNPOST_INTERVAL_BEGIN, v235, "Phase_Generator_Start", "Generator ID %llu Start", __src, 0xCu);
            }
          }

LABEL_370:

          goto LABEL_445;
        }

        goto LABEL_395;
      default:
        v319 = **(Phase::Logger::GetInstance(result) + 704);
        result = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        *buf = 136315394;
        *&buf[4] = "ActionTreeManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3724;
        v315 = "%25s:%-5d Fatal Sound Event data error: bad message encountered in message stream";
        goto LABEL_526;
    }
  }
}

void Phase::ActionTreeManager::HandleParamError(Phase::Logger *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v19 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 704);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      v8 = [*(a2 + 16) getString:**(a2 + 24)];
      v11 = 136315906;
      v12 = "ActionTreeManager.mm";
      v13 = 1024;
      v14 = 5783;
      v15 = 2080;
      v16 = v8;
      v17 = 1024;
      v18 = a3;
      v9 = "%25s:%-5d Action tree: %s tried to use a metaparameter with the wrong type, index %d";
LABEL_6:
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, v9, &v11, 0x22u);
    }
  }

  else if (v7)
  {
    v10 = [*(a2 + 16) getString:**(a2 + 24)];
    v11 = 136315906;
    v12 = "ActionTreeManager.mm";
    v13 = 1024;
    v14 = 5777;
    v15 = 2080;
    v16 = v10;
    v17 = 1024;
    v18 = a3;
    v9 = "%25s:%-5d Action tree: %s tried to use an invalid metaparameter index %d";
    goto LABEL_6;
  }
}

uint64_t Phase::ActionTreeManager::UpdateSpatialPipeline(uint64_t result, uint64_t a2, uint64_t a3, void *a4, Phase::ActionTreeGatheredParams *a5, double *a6)
{
  if (*(result + 2548))
  {
    v11 = result;
    v12 = 0;
    v13 = (result + 2552);
    do
    {
      v17 = *(v13 + 1);
      Phase::ActionTreeManager::ScaleFloatParam(*(v13 + 32), &v17, a6, a5, a5);
      __src[0] = a2;
      __src[1] = a3;
      v15 = *v13;
      v16 = v17;
      result = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a4, 0xDu, __src, 0x20uLL);
      ++v12;
      v13 += 106;
    }

    while (v12 < *(v11 + 2548));
  }

  return result;
}

uint64_t Phase::ActionTreeManager::DestroySubmixes(uint64_t result, void *a2)
{
  v2 = *(result + 24);
  if (*(v2 + 96))
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v4 + 80);
      if (*(v7 + v5) == 1)
      {
        *(v7 + v5) = 0;
        v8 = *(v7 + v5 + 8);
        result = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a2, 0x14u, &v8, 0x10uLL);
        v2 = *(v4 + 24);
      }

      ++v6;
      v5 += 96;
    }

    while (v6 < *(v2 + 96));
  }

  return result;
}

BOOL Phase::ActionTreeManager::StartReadyVoices(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a1 + 56);
      if (*(v7 + v5) == 1)
      {
        result = Phase::ActionTreeManager::StartVoice(a1, v7 + v5, a2);
        if (!result)
        {
          return result;
        }

        v2 = *(a1 + 24);
      }

      ++v6;
      v5 += 160;
    }

    while (v6 < *(v2 + 40));
  }

  return 1;
}

BOOL Phase::ActionTreeManager::ExecuteTree(uint64_t ParamValue, Phase::ActionTreeObject *this, void *a3, double *a4, Phase::ActionTreeObject *a5)
{
  v7 = ParamValue;
  v85 = *MEMORY[0x277D85DE8];
  if (*a4 > 0.0)
  {
    v9 = *(this + 4);
    for (i = *(this + 5); v9 != i; v9 += 8)
    {
      if (*(*v9 + 12) == 1)
      {
        Phase::Fader<double>::Update((v9 + 1), *a4);
        v9[7] = v9[6];
        i = *(this + 5);
      }
    }
  }

  v11 = *(this + 3);
  if (*(v11 + 8))
  {
    v12 = 0;
    do
    {
      ParamValue = Phase::ActionTreeManager::GetParamValue(v7, *(*(*(this + 3) + 16) + 8 * v12), (*(this + 29) + 8 * v12), (*(this + 32) + 4 * v12), this);
      if ((ParamValue & 1) == 0)
      {
        return 0;
      }

      ++v12;
    }

    while (v12 < *(v11 + 8));
  }

  v13 = *(v11 + 24);
  if (v13)
  {
    v14 = 0;
    v15 = *(this + 3);
    do
    {
      if (*(v15 + 96))
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = *(*(v15 + 32) + 8 * v14);
        do
        {
          if (*(*(v15 + 104) + v16) == v19)
          {
            v20 = *(this + 10) + v17;
            v21 = *(v20 + 80);
            if (v21 == 2)
            {
              v22 = *(v20 + 88);
              *(v20 + 80) = 0;
              *(*(this + 35) + 8 * v18) = v22;
              v15 = *(this + 3);
            }

            else if (v21 == 3)
            {
              return 0;
            }
          }

          ++v18;
          v17 += 96;
          v16 += 5944;
        }

        while (v18 < *(v15 + 96));
        v13 = *(v11 + 24);
      }

      ++v14;
    }

    while (v14 < v13);
  }

  v23 = *(this + 7);
  v24 = *(this + 8);
  while (v23 != v24)
  {
    v25 = *(v7 + 200);
    *buf = *(v23 + 96);
    ParamValue = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((v25 + 40), buf);
    if (ParamValue)
    {
      v26 = *(ParamValue + 456);
    }

    else
    {
      v26 = 0;
    }

    if (*(v23 + 104) != v26)
    {
      *(v23 + 104) = v26;
    }

    v23 += 160;
  }

  v27 = -2128831035;
  v28 = *(this + 29);
  v29 = -2128831035;
  for (j = *(this + 30) - v28; j; --j)
  {
    v31 = *v28++;
    v29 = 16777619 * (v29 ^ v31);
  }

  v32 = *(this + 32);
  v33 = -2128831035;
  for (k = *(this + 33) - v32; k; --k)
  {
    v35 = *v32++;
    v33 = 16777619 * (v33 ^ v35);
  }

  v36 = *(this + 35);
  for (m = *(this + 36) - v36; m; --m)
  {
    v38 = *v36++;
    v27 = 16777619 * (v27 ^ v38);
  }

  *(this + 27) = (v33 + v29 + v27);
  v39 = *(this + 3);
  if (!*(v39 + 96))
  {
LABEL_60:
    v67 = Phase::ActionTreeManager::ProcessNodes(v7, this, this + 224, a3);
    if (v67)
    {
      return 1;
    }

    v69 = **(Phase::Logger::GetInstance(v67) + 704);
    result = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136315394;
      *&buf[4] = "ActionTreeManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4146;
      v70 = "%25s:%-5d Fatal Sound Event data error: Error executing action tree nodes";
      goto LABEL_68;
    }

    return result;
  }

  v40 = 0;
  v72 = a3;
  v41 = 2584;
  while (1)
  {
    v42 = *(v39 + 104);
    v43 = v42 + 5944 * v40;
    v44 = *(v43 + 8);
    if (v44 == 3)
    {
      v53 = *(this + 10) + 96 * v40;
      if (*v53)
      {
        *buf = *(v53 + 8);
        *&__src = *(v43 + 16);
        Phase::ActionTreeManager::ScaleFloatParam(*(v43 + 26), &__src, this + 28, this, a5);
        *&buf[16] = 0xB5767F7E05AD941ELL;
        *&buf[24] = __src;
        p_src = buf;
LABEL_57:
        v51 = a3;
        v52 = 18;
        goto LABEL_58;
      }

      *v53 = 1;
      *buf = *(v53 + 8);
      *&buf[24] = *this;
      *&buf[40] = *(this + 83);
      *&buf[16] = *(v43 + 32);
      v54 = a3;
      v55 = 17;
      v56 = 48;
LABEL_56:
      Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(v54, v55, buf, v56);
      *&v76 = *(v43 + 16);
      Phase::ActionTreeManager::ScaleFloatParam(*(v43 + 26), &v76, this + 28, this, v66);
      *&v75 = 0xB5767F7E05AD941ELL;
      __src = *buf;
      *(&v75 + 1) = v76;
      p_src = &__src;
      goto LABEL_57;
    }

    if (v44 == 2)
    {
      v48 = *(this + 10) + 96 * v40;
      if (*v48)
      {
        v76 = *(v48 + 8);
        v73 = *(v43 + 16);
        Phase::ActionTreeManager::ScaleFloatParam(*(v43 + 26), &v73, this + 28, this, a5);
        *&buf[16] = 0xB5767F7E05AD941ELL;
        *buf = v76;
        *&buf[24] = v73;
        Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a3, 0x12u, buf, 0x20uLL);
        v49 = *(*(this + 10) + 96 * v40 + 64);
        __src = v76;
        v75 = v49;
        p_src = &__src;
        v51 = a3;
        v52 = 19;
LABEL_58:
        ParamValue = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(v51, v52, p_src, 0x20uLL);
        goto LABEL_59;
      }

      *v48 = 1;
      *buf = *(v48 + 8);
      v78 = *this;
      v79 = *(this + 83);
      *&buf[16] = *(v48 + 32);
      *&buf[24] = *(v48 + 64);
      *&buf[40] = *(v43 + 32);
      v54 = a3;
      v55 = 16;
      v56 = 72;
      goto LABEL_56;
    }

    if (v44 != 1)
    {
      break;
    }

    v45 = *(this + 10) + 96 * v40;
    if (*v45)
    {
      v46 = *(v45 + 8);
      v47 = *(v45 + 16);
      *&__src = *(v43 + 16);
      Phase::ActionTreeManager::ScaleFloatParam(*(v43 + 26), &__src, this + 28, this, a5);
      *&buf[8] = v47;
      *&buf[16] = 0xB5767F7E05AD941ELL;
      *buf = v46;
      *&buf[24] = __src;
      Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a3, 0x12u, buf, 0x20uLL);
      ParamValue = Phase::ActionTreeManager::UpdateSpatialPipeline(v43, v46, v47, a3, this, this + 28);
    }

    else
    {
      v57 = 0;
      *v45 = 1;
      do
      {
        v58 = &buf[v57];
        *(v58 + 16) = 0;
        *(v58 + 9) = 0x3FF0000000000000;
        v58[80] = 0;
        v57 += 24;
      }

      while (v57 != 384);
      *buf = *(v45 + 8);
      v83 = *this;
      v84 = *(this + 83);
      *&buf[16] = vextq_s8(*(v45 + 24), *(v45 + 24), 8uLL);
      *&buf[32] = vextq_s8(*(v45 + 40), *(v45 + 40), 8uLL);
      *&v78 = *(v45 + 56);
      v59 = memcpy(v81, (v43 + 32), sizeof(v81));
      v82 = *(v43 + 2464);
      v61 = *(v43 + 2548);
      if (v61 > 0x10)
      {
        goto LABEL_66;
      }

      DWORD2(v78) = *(v43 + 2548);
      if (v61)
      {
        v62 = 0;
        v63 = (v42 + v41);
        v64 = &v80;
        do
        {
          *(v64 - 4) = *(v63 - 8);
          *(v64 - 1) = *(v63 - 3);
          Phase::ActionTreeManager::ScaleFloatParam(*v63, v64 - 1, this + 28, this, v60);
          *v64 = 1;
          v64 += 3;
          ++v62;
          v63 += 424;
        }

        while (v62 < *(v43 + 2548));
      }

      a3 = v72;
      Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(v72, 0xFu, buf, 0x388uLL);
      *&v76 = *(v43 + 16);
      Phase::ActionTreeManager::ScaleFloatParam(*(v43 + 26), &v76, this + 28, this, v65);
      *&v75 = 0xB5767F7E05AD941ELL;
      __src = *buf;
      *(&v75 + 1) = v76;
      Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(v72, 0x12u, &__src, 0x20uLL);
      ParamValue = Phase::ActionTreeManager::UpdateSpatialPipeline(v43, *buf, *&buf[8], v72, this, this + 28);
    }

LABEL_59:
    ++v40;
    v39 = *(this + 3);
    v41 += 5944;
    if (v40 >= *(v39 + 96))
    {
      goto LABEL_60;
    }
  }

  v71 = **(Phase::Logger::GetInstance(ParamValue) + 704);
  v59 = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
  if (v59)
  {
    *buf = 136315394;
    *&buf[4] = "ActionTreeManager.mm";
    *&buf[12] = 1024;
    *&buf[14] = 4001;
    _os_log_impl(&dword_23A302000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d Fatal Sound Event data error: Bad submix type in action tree", buf, 0x12u);
  }

LABEL_66:
  v69 = **(Phase::Logger::GetInstance(v59) + 704);
  result = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315394;
    *&buf[4] = "ActionTreeManager.mm";
    *&buf[12] = 1024;
    *&buf[14] = 4140;
    v70 = "%25s:%-5d Fatal Sound Event data error: Error updating submixes";
LABEL_68:
    _os_log_impl(&dword_23A302000, v69, OS_LOG_TYPE_ERROR, v70, buf, 0x12u);
    return 0;
  }

  return result;
}