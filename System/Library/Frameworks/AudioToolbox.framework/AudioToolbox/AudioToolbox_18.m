uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDCADF4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDCAE054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::string or m_value.string != nullptr";
      v3 = 1222;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::binary or m_value.binary != nullptr";
      v3 = 1223;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_type != value_t::object or m_value.object != nullptr";
    v3 = 1220;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_type != value_t::array or m_value.array != nullptr";
    v3 = 1221;
    goto LABEL_15;
  }

  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(void *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1DDCAE368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void AUSoundIsolation_v2::TearDownInternalReporterID(AUSoundIsolation_v2 *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(this + 680) == 1)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v2 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "AUSoundIsolation_v2.mm";
      v8 = 1024;
      v9 = 1790;
      _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%s:%i will teardown the internal CAReporterID", &v6, 0x12u);
    }

    v3 = *(this + 84);
    if (AudioStatisticsLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_177);
    }

    if (AudioStatisticsLibraryLoader(void)::libSym)
    {
      AudioStatisticsLibraryLoader(void)::libSym(v3);
      v4 = *(this + 84);
      if (AudioStatisticsLibraryLoader(void)::once != -1)
      {
        dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_177);
      }
    }

    else
    {
      v4 = *(this + 84);
    }

    if (AudioStatisticsLibraryLoader(void)::libSym)
    {
      AudioStatisticsLibraryLoader(void)::libSym(v4);
    }

    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v5 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "AUSoundIsolation_v2.mm";
      v8 = 1024;
      v9 = 1793;
      _os_log_debug_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%s:%i internal CAReporterID destroyed", &v6, 0x12u);
    }
  }
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(uint64_t **a1, int a2)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v32, (*a1)[2]);
    v6 = (*a1 + 1);
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v33;
      do
      {
        if (v8 >= v34)
        {
          v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v32, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7 + 56);
          *(v7 + 56) = 0;
          v7[8] = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
          v8 += 16;
        }

        v33 = v8;
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v32, ((*a1)[1] - **a1) >> 4);
    v4 = **a1;
    v5 = (*a1)[1];
    while (v4 != v5)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v32, v4);
      v4 += 16;
    }
  }

  for (i = v33; v32 != v33; i = v33)
  {
    v15 = *(i - 16);
    v13 = i - 16;
    v14 = v15;
    LOBYTE(v30) = v15;
    v16 = *(v13 + 8);
    v31 = v16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    *v13 = 0;
    *(v13 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v30);
    v17 = v33;
    v18 = v33 - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v33 - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v17 - 8, *(v17 - 16));
    v33 = v18;
    if (v15 == 1)
    {
      v24 = *v16;
      if (*v16 == v16 + 1)
      {
        v14 = 1;
      }

      else
      {
        do
        {
          if (v18 >= v34)
          {
            v18 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v32, (v24 + 7));
          }

          else
          {
            *v18 = *(v24 + 56);
            *(v18 + 8) = v24[8];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24 + 56);
            *(v24 + 56) = 0;
            v24[8] = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
            v18 += 16;
          }

          v33 = v18;
          v25 = v24[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v24[2];
              v11 = *v26 == v24;
              v24 = v26;
            }

            while (!v11);
          }

          v24 = v26;
        }

        while (v26 != v16 + 1);
        v16 = v31;
        v14 = v30;
      }

      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(v16[1]);
      *v16 = (v16 + 1);
      v16[2] = 0;
      v16[1] = 0;
    }

    else if (v14 == 2)
    {
      v19 = *v16;
      v20 = v16[1];
      if (*v16 != v20)
      {
        do
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v32, v19);
          v19 += 16;
        }

        while (v19 != v20);
        v19 = *v16;
        v20 = v16[1];
      }

      if (v20 != v19)
      {
        v21 = (v20 - 16);
        v22 = v21;
        do
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
          v23 = *v22;
          v22 -= 16;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v21 + 8, v23);
          v11 = v21 == v19;
          v21 = v22;
        }

        while (!v11);
      }

      v16[1] = v19;
      v14 = 2;
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v14);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v27 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v29 = *v27;
        goto LABEL_53;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_56;
      }

      v27 = *a1;
      v28 = **a1;
      if (v28)
      {
        v27[1] = v28;
        v29 = v28;
LABEL_53:
        operator delete(v29);
        goto LABEL_54;
      }
    }

LABEL_55:
    operator delete(v27);
    goto LABEL_56;
  }

  if (a2 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy((*a1)[1]);
    goto LABEL_54;
  }

  if (a2 == 2)
  {
    v30 = *a1;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v30);
LABEL_54:
    v27 = *a1;
    goto LABEL_55;
  }

LABEL_56:
  v30 = &v32;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v30);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(unsigned __int8 *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 1, *a1);
  return a1;
}

void *___ZL45getCAUI_createCustomViewForAudioUnitSymbolLocv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreAudioKitLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL23CoreAudioKitLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E866A450;
    v7 = 0;
    CoreAudioKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = CoreAudioKitLibraryCore(char **)::frameworkLibrary;
    if (CoreAudioKitLibraryCore(char **)::frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CoreAudioKitLibraryCore(char **)::frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "CAUI_createCustomViewForAudioUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCAUI_createCustomViewForAudioUnitSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL23CoreAudioKitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  CoreAudioKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DDCAEBE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v17 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v15);
  return v14;
}

void sub_1DDCAED80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*(a1 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1 + 56);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 64, a1[56]);
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        v8 = *v7;
        v7 -= 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v8);
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v7 += 16;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    v12 = 1;
    v8 = v6;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      v9 = *v8;
      v8 += 16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v9);
      v6 = v8;
    }

    while (v8 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((i - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(i - 8, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 16;
      v5 = v2 - 16;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
        v6 = *v5;
        v5 -= 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v4 + 1, v6);
        v7 = v4 == v3;
        v4 = v5;
      }

      while (!v7);
    }
  }

  return a1;
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(void (****a1)(void), uint64_t **a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  if (v9 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            v10 = (**a1)[1];
            goto LABEL_262;
          }

LABEL_318:
          __assert_rtn("dump", "serializer.hpp", 363, "false");
        }

        (***a1)();
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, a2[1]);
        v10 = ***a1;
LABEL_155:

        return v10();
      }

      v28 = **a1;
      if (*a2[1] != a2[1][1])
      {
        if (!a3)
        {
          (*v28)();
          v51 = a2[1];
          v53 = *v51;
          v52 = v51[1];
          if (v53 != v52 - 16)
          {
            do
            {
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v53, 0, a4, a5);
              (***a1)();
              v53 += 16;
              v54 = a2[1];
              v52 = v54[1];
            }

            while (v53 != v52 - 16);
            v53 = *v54;
          }

          if (v53 == v52)
          {
            __assert_rtn("dump", "serializer.hpp", 229, "not val.m_value.array->empty()");
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v52 - 16, 0, a4, a5);
          goto LABEL_140;
        }

        v28[1]();
        v29 = a5 + a4;
        v30 = a1 + 76;
        v31 = *(a1 + 631);
        if ((v31 & 0x80000000) != 0)
        {
          v32 = a1[77];
          if (v32 < v29)
          {
            goto LABEL_292;
          }
        }

        else if (v29 > v31)
        {
          v32 = *(a1 + 631);
LABEL_292:
          std::string::resize((a1 + 76), 2 * v32, 32);
        }

        v80 = a2[1];
        v82 = *v80;
        v81 = v80[1];
        if (v82 != v81 - 16)
        {
          do
          {
            v83 = a1 + 76;
            if (*(a1 + 631) < 0)
            {
              v83 = *v30;
            }

            ((**a1)[1])(*a1, v83, (a5 + a4));
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v82, 1, a4, (a5 + a4));
            ((**a1)[1])(*a1, ",\n", 2);
            v82 += 16;
            v84 = a2[1];
            v81 = v84[1];
          }

          while (v82 != v81 - 16);
          v82 = *v84;
        }

        if (v82 == v81)
        {
          __assert_rtn("dump", "serializer.hpp", 208, "not val.m_value.array->empty()");
        }

        v85 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v85 = *v30;
        }

        ((**a1)[1])(*a1, v85, (a5 + a4));
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, a2[1][1] - 16, 1, a4, (a5 + a4));
        (***a1)();
        if (*(a1 + 631) < 0)
        {
          v30 = *v30;
        }

        ((**a1)[1])(*a1, v30, a5);
LABEL_140:
        v10 = ***a1;
        goto LABEL_155;
      }

      v39 = v28[1];
      goto LABEL_52;
    }

    if (*a2)
    {
      v11 = **a1;
      if (!a2[1][2])
      {
        v39 = v11[1];
LABEL_52:

        return v39();
      }

      if (!a3)
      {
        (*v11)();
        v42 = a2[1];
        v43 = *v42;
        if (v42[2] != 1)
        {
          v44 = 0;
          do
          {
            (***a1)(*a1, 34);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v43 + 4);
            ((**a1)[1])(*a1, ":", 2);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v43 + 7, 0, a4, a5);
            (***a1)();
            v45 = v43[1];
            v46 = v43;
            if (v45)
            {
              do
              {
                v43 = v45;
                v45 = *v45;
              }

              while (v45);
            }

            else
            {
              do
              {
                v43 = v46[2];
                v47 = *v43 == v46;
                v46 = v43;
              }

              while (!v47);
            }

            ++v44;
            v42 = a2[1];
          }

          while (v44 < v42[2] - 1);
        }

        v48 = v42 + 1;
        if (v43 == v48)
        {
          __assert_rtn("dump", "serializer.hpp", 166, "i != val.m_value.object->cend()");
        }

        v49 = v43[1];
        if (v49)
        {
          do
          {
            v50 = v49;
            v49 = *v49;
          }

          while (v49);
        }

        else
        {
          v86 = v43;
          do
          {
            v50 = v86[2];
            v47 = *v50 == v86;
            v86 = v50;
          }

          while (!v47);
        }

        if (v50 != v48)
        {
          __assert_rtn("dump", "serializer.hpp", 167, "std::next(i) == val.m_value.object->cend()");
        }

        (***a1)(*a1, 34);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v43 + 4);
        ((**a1)[1])(*a1, ":", 2);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v43 + 7, 0, a4, a5);
        goto LABEL_154;
      }

      v11[1]();
      v12 = a5 + a4;
      v13 = a1 + 76;
      v14 = *(a1 + 631);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = a1[77];
        if (v15 < v12)
        {
          goto LABEL_290;
        }
      }

      else if (v12 > v14)
      {
        v15 = *(a1 + 631);
LABEL_290:
        std::string::resize((a1 + 76), 2 * v15, 32);
      }

      v71 = a2[1];
      v72 = *v71;
      if (v71[2] == 1)
      {
        v73 = *v71;
      }

      else
      {
        v74 = 0;
        do
        {
          v75 = a1 + 76;
          if (*(a1 + 631) < 0)
          {
            v75 = *v13;
          }

          ((**a1)[1])(*a1, v75, (a5 + a4));
          (***a1)();
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v72 + 4);
          ((**a1)[1])(*a1, ": ", 3);
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v72 + 7, 1, a4, (a5 + a4));
          ((**a1)[1])(*a1, ",\n", 2);
          v76 = v72[1];
          if (v76)
          {
            do
            {
              v73 = v76;
              v76 = *v76;
            }

            while (v76);
          }

          else
          {
            do
            {
              v73 = v72[2];
              v47 = *v73 == v72;
              v72 = v73;
            }

            while (!v47);
          }

          ++v74;
          v71 = a2[1];
          v72 = v73;
        }

        while (v74 < v71[2] - 1);
      }

      v77 = v71 + 1;
      if (v73 == v77)
      {
        __assert_rtn("dump", "serializer.hpp", 138, "i != val.m_value.object->cend()");
      }

      v78 = v73[1];
      if (v78)
      {
        do
        {
          v79 = v78;
          v78 = *v78;
        }

        while (v78);
      }

      else
      {
        v87 = v73;
        do
        {
          v79 = v87[2];
          v47 = *v79 == v87;
          v87 = v79;
        }

        while (!v47);
      }

      if (v79 != v77)
      {
        __assert_rtn("dump", "serializer.hpp", 139, "std::next(i) == val.m_value.object->cend()");
      }

      v88 = a1 + 76;
      if (*(a1 + 631) < 0)
      {
        v88 = *v13;
      }

      ((**a1)[1])(*a1, v88, (a5 + a4));
      (***a1)();
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v73 + 4);
      ((**a1)[1])(*a1, ": ", 3);
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v73 + 7, 1, a4, (a5 + a4));
      (***a1)();
      v64 = (**a1)[1];
LABEL_153:
      v64();
LABEL_154:
      v10 = ***a1;
      goto LABEL_155;
    }

    goto LABEL_43;
  }

  if (*a2 <= 6u)
  {
    if (v9 == 5)
    {
      v16 = a2[1];
      if (v16)
      {
        v20 = a1 + 2;
        if ((v16 & 0x8000000000000000) != 0)
        {
          *v20 = 45;
          v16 = -v16;
          v55 = 1;
          if (v16 >= 0xA)
          {
            v56 = v16;
            while (1)
            {
              if (v56 <= 0x63)
              {
                ++v55;
                goto LABEL_195;
              }

              if (v56 <= 0x3E7)
              {
                v55 += 2;
                goto LABEL_195;
              }

              if (v56 >> 4 <= 0x270)
              {
                break;
              }

              v55 += 4;
              v19 = v56 >= 0x186A0;
              v56 /= 0x2710uLL;
              if (!v19)
              {
                goto LABEL_195;
              }
            }

            v55 += 3;
          }
        }

        else
        {
          if (v16 < 0xA)
          {
            goto LABEL_31;
          }

          v55 = 1;
          v57 = a2[1];
          while (v57 > 0x63)
          {
            if (v57 <= 0x3E7)
            {
              v55 += 2;
              goto LABEL_196;
            }

            if (v57 >> 4 <= 0x270)
            {
              v55 += 3;
              goto LABEL_196;
            }

            v55 += 4;
            v19 = v57 >= 0x186A0;
            v57 /= 0x2710uLL;
            if (!v19)
            {
              goto LABEL_196;
            }
          }
        }

LABEL_195:
        ++v55;
LABEL_196:
        if (v55 < 0x3F)
        {
          v21 = &v20[v55];
          if (v16 >= 0x64)
          {
            do
            {
              v90 = v16 / 0x64;
              *(v21 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (v16 % 0x64)];
              v21 -= 2;
              v125 = v16 >> 4;
              v16 /= 0x64uLL;
            }

            while (v125 > 0x270);
            goto LABEL_201;
          }

          goto LABEL_200;
        }

LABEL_284:
        __assert_rtn("dump_integer", "serializer.hpp", 726, "n_chars < number_buffer.size() - 1");
      }
    }

    else
    {
      if (v9 != 6)
      {
        goto LABEL_318;
      }

      v16 = a2[1];
      if (v16)
      {
        if (v16 >= 0xA)
        {
          v17 = 1;
          v18 = a2[1];
          while (1)
          {
            if (v18 <= 0x63)
            {
              ++v17;
              goto LABEL_164;
            }

            if (v18 <= 0x3E7)
            {
              v17 += 2;
              goto LABEL_164;
            }

            if (v18 >> 4 <= 0x270)
            {
              break;
            }

            v17 += 4;
            v19 = v18 >= 0x186A0;
            v18 /= 0x2710uLL;
            if (!v19)
            {
              goto LABEL_164;
            }
          }

          v17 += 3;
LABEL_164:
          if (v17 < 0x3F)
          {
            v21 = a1 + v17 + 16;
            if (v16 >= 0x64)
            {
              do
              {
                v90 = v16 / 0x64;
                *(v21 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (v16 % 0x64)];
                v21 -= 2;
                v91 = v16 >> 4;
                v16 /= 0x64uLL;
              }

              while (v91 > 0x270);
              goto LABEL_201;
            }

LABEL_200:
            v90 = v16;
LABEL_201:
            if (v90 >= 0xA)
            {
              *(v21 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * v90];
LABEL_205:
              v126 = *a1;
LABEL_261:
              v10 = (*v126)[1];
              goto LABEL_262;
            }

            LOBYTE(v16) = v90;
LABEL_204:
            *(v21 - 1) = v16 | 0x30;
            goto LABEL_205;
          }

          goto LABEL_284;
        }

LABEL_31:
        v21 = a1 + 17;
        goto LABEL_204;
      }
    }

    v34 = ***a1;
    goto LABEL_58;
  }

  if (v9 == 7)
  {
    v33 = *(a2 + 1);
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_43:
      v10 = (**a1)[1];
      goto LABEL_262;
    }

    if ((*&v33 & 0x8000000000000000) != 0)
    {
      v33 = -v33;
      v38 = a1 + 17;
      *(a1 + 16) = 45;
    }

    else
    {
      v38 = a1 + 2;
    }

    if (v33 == 0.0)
    {
      *v38 = 11824;
      v38[2] = 48;
LABEL_260:
      v126 = *a1;
      goto LABEL_261;
    }

    if ((a1 + 10) - v38 <= 16)
    {
      __assert_rtn("to_chars", "to_chars.hpp", 1082, "last - first >= std::numeric_limits<FloatType>::max_digits10");
    }

    if (v33 <= 0.0)
    {
      __assert_rtn("grisu2", "to_chars.hpp", 890, "value > 0");
    }

    v155 = (a1 + 10) - v38;
    v65 = *&v33 & 0xFFFFFFFFFFFFFLL;
    if (*&v33 >> 52)
    {
      v69 = (*&v33 >> 52) - 1075;
      v67 = 2 * (v65 | 0x10000000000000);
      v68 = (2 * (*&v33 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
      v66 = (*&v33 >> 52) - 1076;
      v70 = (*&v33 >> 52) - 1076;
      if (*&v33 >> 53 && !v65)
      {
        v70 = (*&v33 >> 52) - 1077;
        v65 = 0x10000000000000;
        v89 = 0x3FFFFFFFFFFFFFLL;
        goto LABEL_172;
      }

      v65 |= 0x10000000000000uLL;
    }

    else
    {
      v66 = 4294966221;
      v67 = 2 * *&v33;
      v68 = (2 * (*&v33 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v69 = 4294966222;
      v70 = -1075;
    }

    v89 = v67 - 1;
LABEL_172:
    v92 = nlohmann::detail::dtoa_impl::diyfp::normalize(v68, v66);
    v94 = v93;
    v95 = v70 - v93;
    if (v70 - v93 < 0)
    {
      v153 = "delta >= 0";
      v154 = 162;
    }

    else
    {
      v96 = v89 << v95;
      if ((v89 << v95) >> v95 == v89)
      {
        v97 = v92;
        v98 = nlohmann::detail::dtoa_impl::diyfp::normalize(v65, v69);
        if (v94 != v99)
        {
          __assert_rtn("grisu2", "to_chars.hpp", 828, "m_plus.e == v.e");
        }

        if (v94 <= -1501)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 466, "e >= -1500");
        }

        if (v94 >= 1501)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 467, "e <= 1500");
        }

        v100 = 78913 * (-61 - v94) / 0x40000;
        if (v94 < -61)
        {
          ++v100;
        }

        if (v100 <= -315)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 472, "index >= 0");
        }

        v101 = ((v100 + 307 + (((v100 + 307) >> 28) & 7)) << 16) >> 19;
        if (v101 >= 0x4F)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 473, "static_cast<std::size_t>(index) < kCachedPowers.size()");
        }

        v102 = (&nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * v101);
        v103 = v102[1];
        if (v103 + v94 <= -125)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 476, "kAlpha <= cached.e + e + 64");
        }

        if (v103 + v94 >= -95)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 477, "kGamma >= cached.e + e + 64");
        }

        v104 = *v102;
        v105 = nlohmann::detail::dtoa_impl::diyfp::mul(v98, v94, *v102);
        v107 = v106;
        v108 = nlohmann::detail::dtoa_impl::diyfp::mul(v96, v94, v104);
        v110 = v109;
        v111 = nlohmann::detail::dtoa_impl::diyfp::mul(v97, v94, v104);
        v113 = v112;
        if (v112 <= -61)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 601, "M_plus.e >= kAlpha");
        }

        if (v112 >= -31)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 602, "M_plus.e <= kGamma");
        }

        v114 = v111 - 1;
        v115 = nlohmann::detail::dtoa_impl::diyfp::sub(v111 - 1, v112, v108 + 1, v110);
        v116 = nlohmann::detail::dtoa_impl::diyfp::sub(v114, v113, v105, v107);
        v117 = -v113;
        v118 = v114 >> -v113;
        if (!v118)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 623, "p1 > 0");
        }

        v119 = v116;
        v120 = HIDWORD(v103);
        v121 = (1 << v117) - 1;
        v122 = v121 & v114;
        if (v118 <= 0x3B9AC9FF)
        {
          if (v118 <= 0x5F5E0FF)
          {
            if (v118 <= 0x98967F)
            {
              if (v118 <= 0xF423F)
              {
                v127 = v118 >> 5;
                v128 = v118 >> 4;
                if (v118 <= 9)
                {
                  v129 = 1;
                }

                else
                {
                  v129 = 10;
                }

                if (v118 <= 9)
                {
                  v130 = 1;
                }

                else
                {
                  v130 = 2;
                }

                if (v118 <= 0x63)
                {
                  v131 = v130;
                }

                else
                {
                  v131 = 3;
                }

                if (v118 <= 0x63)
                {
                  v132 = v129;
                }

                else
                {
                  v132 = 100;
                }

                if (v118 <= 0x3E7)
                {
                  v133 = v131;
                }

                else
                {
                  v133 = 4;
                }

                if (v118 <= 0x3E7)
                {
                  v134 = v132;
                }

                else
                {
                  v134 = 1000;
                }

                if (v128 <= 0x270)
                {
                  v135 = v133;
                }

                else
                {
                  v135 = 5;
                }

                if (v128 <= 0x270)
                {
                  v136 = v134;
                }

                else
                {
                  v136 = 10000;
                }

                if (v127 <= 0xC34)
                {
                  v124 = v135;
                }

                else
                {
                  v124 = 6;
                }

                if (v127 > 0xC34)
                {
                  v123 = 100000;
                }

                else
                {
                  v123 = v136;
                }
              }

              else
              {
                v123 = 1000000;
                v124 = 7;
              }
            }

            else
            {
              v123 = 10000000;
              v124 = 8;
            }
          }

          else
          {
            v123 = 100000000;
            v124 = 9;
          }
        }

        else
        {
          v123 = 1000000000;
          v124 = 10;
        }

        v137 = 0;
        v138 = -v124;
        v139 = v124 - 1;
        do
        {
          v140 = v118 / v123;
          if (v118 / v123 >= 0xA)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 659, "d <= 9");
          }

          v118 = v118 % v123;
          v141 = v137 + 1;
          v38[v137] = v140 | 0x30;
          if ((v118 << v117) + v122 <= v115)
          {
            nlohmann::detail::dtoa_impl::grisu2_round(v38, (v137 + 1), v119, v115, (v118 << v117) + v122, v123 << v117);
            LODWORD(v145) = v141;
            goto LABEL_249;
          }

          v123 /= 0xAu;
          --v139;
          ++v137;
        }

        while (v138 + v141);
        if (v122 <= v115)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 746, "p2 > delta");
        }

        v142 = -1;
        do
        {
          if (v122 >= 0x199999999999999ALL)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 757, "p2 <= (std::numeric_limits<std::uint64_t>::max)() / 10");
          }

          v143 = (10 * v122) >> v117;
          if (v143 >= 0xA)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 766, "d <= 9");
          }

          v38[v141] = v143 | 0x30;
          v122 = (10 * v122) & v121;
          v144 = 5 * v115;
          v145 = (v141 + 1);
          v115 *= 10;
          v119 *= 10;
          ++v142;
          ++v141;
        }

        while (v122 > 2 * v144);
        v139 = ~v142;
        nlohmann::detail::dtoa_impl::grisu2_round(v38, v145, v119, v115, v122, 1 << v117);
LABEL_249:
        if (v145 >= 18)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1092, "len <= std::numeric_limits<FloatType>::max_digits10");
        }

        if (v155 <= 0x15)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1100, "last - first >= 2 + (-kMinExp - 1) + std::numeric_limits<FloatType>::max_digits10");
        }

        if (v155 == 22)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1101, "last - first >= std::numeric_limits<FloatType>::max_digits10 + 6");
        }

        v146 = v139 - v120;
        v147 = v139 - v120 + v145;
        if (v139 - v120 < 0 || v147 > 15)
        {
          if ((v147 - 16) >= 0xFFFFFFF1)
          {
            if ((v146 & 0x80000000) == 0)
            {
              __assert_rtn("format_buffer", "to_chars.hpp", 1006, "k > n");
            }

            v148 = &v38[v147];
            memmove(v148 + 1, v148, v145 - v147);
            *v148 = 46;
          }

          else if (v147 != 0 && v147 < 0xFFFFFFFD)
          {
            if (v145 != 1)
            {
              memmove(v38 + 2, v38 + 1, v145 - 1);
              v38[1] = 46;
              v38 += v145;
            }

            v38[1] = 101;
            if (v147 <= -999)
            {
              __assert_rtn("append_exponent", "to_chars.hpp", 926, "e > -1000");
            }

            if (v147 >= 1001)
            {
              __assert_rtn("append_exponent", "to_chars.hpp", 927, "e < 1000");
            }

            v149 = v147 - 1;
            if (v147 >= 1)
            {
              v150 = 43;
            }

            else
            {
              v150 = 45;
            }

            if (v149 < 0)
            {
              v149 = 1 - v147;
            }

            v38[2] = v150;
            if (v149 > 9)
            {
              if (v149 > 0x63)
              {
                v38[3] = v149 / 0x64u + 48;
                LOBYTE(v149) = v149 % 0x64u;
                v152 = v149 / 0xAu;
                v151 = v38 + 5;
                v38[4] = (v149 / 0xAu) | 0x30;
              }

              else
              {
                v152 = v149 / 0xAu;
                v151 = v38 + 4;
                v38[3] = (v149 / 0xAu) | 0x30;
              }

              LOBYTE(v149) = v149 - 10 * v152;
            }

            else
            {
              v151 = v38 + 4;
              v38[3] = 48;
            }

            *v151 = v149 | 0x30;
          }

          else
          {
            memmove(&v38[-v147 + 2], v38, v145);
            *v38 = 11824;
            memset(v38 + 2, 48, -v147);
          }
        }

        else
        {
          memset(&v38[v145], 48, v146);
          *&v38[v147] = 12334;
        }

        goto LABEL_260;
      }

      v153 = "((x.f << delta) >> delta) == x.f";
      v154 = 163;
    }

    __assert_rtn("normalize_to", "to_chars.hpp", v154, v153);
  }

  if (v9 != 8)
  {
    if (v9 != 9)
    {
      goto LABEL_318;
    }

    v10 = (**a1)[1];
LABEL_262:

    return v10();
  }

  v22 = (**a1)[1];
  if (a3)
  {
    v22();
    v23 = (a5 + a4);
    v24 = a1 + 76;
    v25 = *(a1 + 631);
    if ((v25 & 0x80000000) != 0)
    {
      v58 = a1[77];
      if (v58 >= v23)
      {
        v26 = *a1;
LABEL_94:
        v27 = *v24;
        goto LABEL_95;
      }
    }

    else
    {
      if (v23 <= v25)
      {
        v26 = *a1;
        v27 = a1 + 76;
LABEL_95:
        ((*v26)[1])(v26, v27, v23);
        ((**a1)[1])(*a1, "bytes: [", 10);
        v59 = a2[1][1];
        v60 = *a2[1];
        if (v60 != v59)
        {
          for (; v60 != v59 - 1; v59 = a2[1][1])
          {
            v61 = *v60++;
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v61);
            ((**a1)[1])(*a1, ", ", 2);
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v59 - 1));
        }

        ((**a1)[1])(*a1, "],\n", 3);
        v62 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v62 = *v24;
        }

        ((**a1)[1])(*a1, v62, v23);
        ((**a1)[1])(*a1, "subtype: ", 11);
        v63 = a2[1];
        if (*(v63 + 25) == 1)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v63 + 24));
        }

        else
        {
          ((**a1)[1])(*a1, "null", 4);
        }

        (***a1)(*a1, 10);
        v64 = (**a1)[1];
        goto LABEL_153;
      }

      v58 = *(a1 + 631);
    }

    std::string::resize((a1 + 76), 2 * v58, 32);
    v26 = *a1;
    v27 = a1 + 76;
    if ((*(a1 + 631) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v22();
  v35 = a2[1][1];
  v36 = *a2[1];
  if (v36 != v35)
  {
    while (v36 != v35 - 1)
    {
      v37 = *v36++;
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v37);
      (***a1)(*a1, 44);
      v35 = a2[1][1];
    }

    nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v35 - 1));
  }

  ((**a1)[1])(*a1, "],subtype:", 12);
  v41 = a2[1];
  if (*(v41 + 25) != 1)
  {
    v10 = (**a1)[1];
    goto LABEL_262;
  }

  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v41 + 24));
  v34 = ***a1;
LABEL_58:

  return v34();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a2 + 23);
  }

  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v2 >> 63;
  v13 = result + 90;
  do
  {
    if (v12)
    {
      v14 = *a2;
    }

    else
    {
      v14 = a2;
    }

    v15 = *(v14 + v9);
    if (v7)
    {
      v6 = v15 & 0x3F | (v6 << 6);
    }

    else
    {
      v6 = (0xFFu >> nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15]) & v15;
    }

    v16 = 16 * v7 + nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15] + 256;
    if (v16 >= 0x190)
    {
      __assert_rtn("decode", "serializer.hpp", 892, "index < 400");
    }

    v7 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v16];
    if (v7 == 1)
    {
      v18 = v5[158];
      if ((v18 - 1) >= 2)
      {
        if (!v18)
        {
          v42 = 3;
          *__str = 0;
          snprintf(__str, 3uLL, "%.2X", v15);
          exception = __cxa_allocate_exception(0x20uLL);
          std::to_string(&v35, v9);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v36, "invalid UTF-8 byte at index ", &v35);
          v27 = std::string::append(&v36, ": 0x", 4uLL);
          v28 = *&v27->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v28;
          v27->__r_.__value_.__l.__size_ = 0;
          v27->__r_.__value_.__r.__words[2] = 0;
          v27->__r_.__value_.__r.__words[0] = 0;
          if (v42 >= 0)
          {
            v29 = __str;
          }

          else
          {
            v29 = *__str;
          }

          if (v42 >= 0)
          {
            v30 = v42;
          }

          else
          {
            v30 = v41;
          }

          v31 = std::string::append(&v37, v29, v30);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v39 = v31->__r_.__value_.__r.__words[2];
          v38 = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::type_error::create(exception, 316, &v38);
        }

        __assert_rtn("dump_escaped", "serializer.hpp", 562, "false");
      }

      v9 -= v10 != 0;
      if (v18 == 1)
      {
        v19 = v13 + v11;
        v8 = v11 + 3;
        *v19 = -16401;
        *(v19 + 2) = -67;
        if ((v11 - 497) > 0xC)
        {
          v7 = 0;
          v10 = 0;
          v11 += 3;
          goto LABEL_46;
        }

        v21 = *(**v5 + 8);
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v7)
    {
      if (v6 <= 11)
      {
        switch(v6)
        {
          case 8:
            v17 = 25180;
            goto LABEL_41;
          case 9:
            v17 = 29788;
            goto LABEL_41;
          case 10:
            v17 = 28252;
            goto LABEL_41;
        }
      }

      else if (v6 > 33)
      {
        if (v6 == 34)
        {
          v17 = 8796;
          goto LABEL_41;
        }

        if (v6 == 92)
        {
          v17 = 23644;
          goto LABEL_41;
        }
      }

      else
      {
        if (v6 == 12)
        {
          v17 = 26204;
          goto LABEL_41;
        }

        if (v6 == 13)
        {
          v17 = 29276;
LABEL_41:
          *(v13 + v8) = v17;
          v11 = v8 + 2;
          goto LABEL_42;
        }
      }

      if (v6 > 0x1F)
      {
        if ((v2 & 0x80u) == 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        v11 = v8 + 1;
        *(v13 + v8) = *(v23 + v9);
      }

      else
      {
        result = snprintf((v13 + v8), 7uLL, "\\u%04x", v6);
        v11 = v8 + 6;
      }

LABEL_42:
      if ((v11 - 500) <= 0xC)
      {
        v21 = *(**v5 + 8);
LABEL_44:
        result = v21();
        v7 = 0;
        v11 = 0;
        v10 = 0;
        v8 = 0;
        goto LABEL_46;
      }

LABEL_45:
      v7 = 0;
      v10 = 0;
      v8 = v11;
      goto LABEL_46;
    }

    if ((v2 & 0x80u) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    *(v13 + v8++) = *(v20 + v9);
    ++v10;
LABEL_46:
    ++v9;
    v2 = *(a2 + 23);
    v12 = v2 >> 63;
    v22 = a2[1];
    if ((v2 & 0x80000000) == 0)
    {
      v22 = *(a2 + 23);
    }
  }

  while (v9 < v22);
  if (v7)
  {
    v25 = v5[158];
    switch(v25)
    {
      case 1:
        (*(**v5 + 8))(*v5, v13, v11);
        v24 = *(**v5 + 8);
        break;
      case 2:
        v24 = *(**v5 + 8);
        break;
      case 0:
        v42 = 3;
        *__str = 0;
        v33 = *a2;
        if ((v2 & 0x80000000) == 0)
        {
          v33 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v33 + v22 - 1));
        v34 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        nlohmann::detail::type_error::create(v34, 316, &v38);
      default:
        __assert_rtn("dump_escaped", "serializer.hpp", 625, "false");
    }

LABEL_57:

    return v24();
  }

  else if (v8)
  {
    v24 = *(**v5 + 8);
    goto LABEL_57;
  }

  return result;
}

void sub_1DDCB1488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      if (*(v37 - 81) < 0)
      {
        operator delete(*(v37 - 104));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(void *a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  if (a2 < 0xA)
  {
    v2 = 1;
LABEL_8:
    v5 = a2 | 0x30;
    goto LABEL_9;
  }

  if (a2 >= 0x64)
  {
    *(a1 + 17) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (a2 - 100 * ((41 * a2) >> 12))];
    v2 = 3;
    a2 = (41 * a2) >> 12;
    goto LABEL_8;
  }

  v4 = &nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * a2];
  *(a1 + 17) = v4[1];
  v5 = *v4;
  v2 = 2;
LABEL_9:
  *(a1 + 16) = v5;
  return (*(**a1 + 8))(*a1, a1 + 2, v2);
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::sub(unint64_t a1, int a2, unint64_t a3, int a4)
{
  if (a2 != a4)
  {
    v6 = "x.e == y.e";
    v7 = 66;
LABEL_6:
    __assert_rtn("sub", "to_chars.hpp", v7, v6);
  }

  v4 = a1 >= a3;
  result = a1 - a3;
  if (!v4)
  {
    v6 = "x.f >= y.f";
    v7 = 67;
    goto LABEL_6;
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_round(uint64_t this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 0)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 545, "len >= 1");
  }

  if (a3 > a4)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 546, "dist <= delta");
  }

  if (a4 < a5)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 547, "rest <= delta");
  }

  if (!a6)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 548, "ten_k > 0");
  }

  v6 = a3 - a5;
  if (a3 > a5 && a4 - a5 >= a6)
  {
    v7 = this - 1;
    v8 = a6 + a5;
    v9 = a4 - (a6 + a5);
    do
    {
      if (v8 >= a3 && v6 <= v8 - a3)
      {
        break;
      }

      v10 = *(v7 + a2);
      if (v10 == 48)
      {
        __assert_rtn("grisu2_round", "to_chars.hpp", 573, "buf[len - 1] != '0'");
      }

      *(v7 + a2) = v10 - 1;
      if (v8 >= a3)
      {
        break;
      }

      v6 -= a6;
      v8 += a6;
      v11 = v9 >= a6;
      v9 -= a6;
    }

    while (v11);
  }

  return this;
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::normalize(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    __assert_rtn("normalize", "to_chars.hpp", 143, "x.f != 0");
  }

  for (; (result & 0x8000000000000000) == 0; a2 = (a2 - 1) | a2 & 0xFFFFFFFF00000000)
  {
    result *= 2;
  }

  return result;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void nlohmann::detail::type_error::create(uint64_t a1, int a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "type_error");
  std::operator+<char>();
  v6 = std::string::append(&v26, ".", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v25, a2);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v25;
  }

  else
  {
    v8 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v27, v8, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v28, "] ", 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = *(a3 + 8);
  }

  v17 = std::string::append(&v22, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v24 = v17->__r_.__value_.__r.__words[2];
  *v23 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 >= 0)
  {
    v19 = v23;
  }

  else
  {
    v19 = v23[0];
  }

  *a1 = &unk_1F592DD70;
  *(a1 + 8) = a2;
  std::runtime_error::runtime_error((a1 + 16), v19);
  *a1 = &unk_1F592DD48;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_1DDCB1AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  std::exception::~exception(v41);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nlohmann::detail::type_error::~type_error(std::runtime_error *this)
{
  this->__vftable = &unk_1F592DD70;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F592DD70;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x1E12BD160);
}

void nlohmann::detail::exception::~exception(std::runtime_error *this)
{
  this->__vftable = &unk_1F592DD70;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x1E12BD160);
}

{
  this->__vftable = &unk_1F592DD70;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

void std::__shared_ptr_emplace<nlohmann::detail::output_string_adapter<char,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F592DCB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

uint64_t AUSoundIsolation_v2::GetProperty(AUSoundIsolation_v2 *this, int a2, int a3, unsigned int a4, uint64_t *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 30000)
  {
    if (a2 <= 59999)
    {
      switch(a2)
      {
        case 30001:
          v14 = 1;
          v15[0] = &v14;
          v9 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 1);
          v10 = v9[5];
          if (v10)
          {
            goto LABEL_35;
          }

          break;
        case 40000:
          v14 = 2;
          v15[0] = &v14;
          v9 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 2);
          v10 = v9[5];
          if (v10)
          {
LABEL_35:
            CFRetain(v9[5]);
          }

          break;
        case 50000:
          v14 = 3;
          v15[0] = &v14;
          v9 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 3);
          v10 = v9[5];
          if (v10)
          {
            goto LABEL_35;
          }

          break;
        default:
          return result;
      }

LABEL_36:
      result = 0;
      *a5 = v10;
      return result;
    }

    switch(a2)
    {
      case 60000:
        v14 = 4;
        v15[0] = &v14;
        v9 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 4);
        v10 = v9[5];
        if (v10)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      case 70000:
        result = 0;
        v8 = *(this + 133);
        goto LABEL_39;
      case 80000:
        result = 0;
        v8 = *(this + 134);
        goto LABEL_39;
    }
  }

  else
  {
    if (a2 <= 5999)
    {
      switch(a2)
      {
        case 21:
          result = 0;
          v8 = *(this + 528);
          goto LABEL_39;
        case 2121:
          result = 0;
          v8 = *(this + 529);
          goto LABEL_39;
        case 3700:
          result = 0;
          v8 = *(this + 376);
LABEL_39:
          *a5 = v8;
          return result;
      }

      return result;
    }

    switch(a2)
    {
      case 6000:
        AU::SoundIsolation::MetricsReporter::getCAReporterIDs(v15, *(this + 88));
        v11 = v15[0];
        memcpy(a5, v15[0], v15[1] - v15[0]);
        if (v11)
        {
          operator delete(v11);
        }

        return 0;
      case 7000:
        v12 = *(this + 88);
        std::mutex::lock((v12 + 64));
        v13 = *(v12 + 152);
        std::mutex::unlock((v12 + 64));
        result = 0;
        *a5 = v13;
        return result;
      case 30000:
        v14 = 0;
        v15[0] = &v14;
        v9 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 0);
        v10 = v9[5];
        if (v10)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
    }
  }

  return result;
}

uint64_t AUSoundIsolation_v2::GetPropertyInfo(AUSoundIsolation_v2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v18 = v6;
  v19 = v7;
  result = 4294956417;
  if (a2 > 30000)
  {
    if (a2 <= 69999)
    {
      if (a2 <= 49999)
      {
        if (a2 != 30001)
        {
          v12 = 40000;
          goto LABEL_25;
        }

LABEL_26:
        v15 = 8;
LABEL_31:
        *a5 = v15;
LABEL_32:
        result = 0;
        *a6 = 1;
        return result;
      }

      if (a2 == 50000)
      {
        goto LABEL_26;
      }

      v12 = 60000;
LABEL_25:
      if (a2 != v12)
      {
        return result;
      }

      goto LABEL_26;
    }

    if (a2 > 89999)
    {
      if (a2 != 90000)
      {
        v14 = 24465;
LABEL_29:
        if (a2 != (v14 | 0x10000))
        {
          return result;
        }
      }
    }

    else if (a2 != 70000)
    {
      v14 = 14464;
      goto LABEL_29;
    }

LABEL_30:
    v15 = 4;
    goto LABEL_31;
  }

  if (a2 > 3699)
  {
    if (a2 > 6999)
    {
      if (a2 != 7000)
      {
        v12 = 30000;
        goto LABEL_25;
      }
    }

    else if (a2 != 3700)
    {
      if (a2 != 6000)
      {
        return result;
      }

      AU::SoundIsolation::MetricsReporter::getCAReporterIDs(&__p, *(this + 88));
      v13 = __p;
      *a5 = (v17 - __p) & 0xFFFFFFF8;
      if (v13)
      {
        operator delete(v13);
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

  switch(a2)
  {
    case 21:
      goto LABEL_30;
    case 56:
      goto LABEL_26;
    case 2121:
      goto LABEL_30;
  }

  return result;
}

uint64_t AUSoundIsolation_v2::Reset(AUSoundIsolation_v2 *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 75);
  if (v2)
  {
    if (CA::DSP::Graph::IsInitialized(v2))
    {
      CA::DSP::Graph::Reset(&v20);
      v3 = v21;
      if ((v21 & 1) == 0)
      {
        if (getAUSoundIsolationLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
        }

        v4 = getAUSoundIsolationLog(void)::gLog;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v17 = AU::SoundIsolation::CopyError<void>(v20, v3);
          *buf = 136315650;
          v23 = "AUSoundIsolation_v2.mm";
          v24 = 1024;
          v25 = 371;
          v26 = 2112;
          v27 = v17;
          _os_log_error_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_ERROR, "%s:%i failed to reset processing graph - %@", buf, 0x1Cu);
        }

        if ((v21 & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v20);
        }
      }
    }
  }

  v5 = *(this + 76);
  if (v5)
  {
    if (CA::DSP::Graph::IsInitialized(v5))
    {
      CA::DSP::Graph::Reset(&v20);
      if ((v21 & 1) == 0)
      {
        if (getAUSoundIsolationLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
        }

        v6 = getAUSoundIsolationLog(void)::gLog;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v18 = AU::SoundIsolation::CopyError<void>(v20, v21);
          *buf = 136315650;
          v23 = "AUSoundIsolation_v2.mm";
          v24 = 1024;
          v25 = 377;
          v26 = 2112;
          v27 = v18;
          _os_log_error_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "%s:%i failed to reset blending graph - %@", buf, 0x1Cu);
        }

        if ((v21 & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v20);
        }
      }
    }
  }

  v7 = *(this + 77);
  if (v7)
  {
    if (CA::DSP::Graph::IsInitialized(v7))
    {
      CA::DSP::Graph::Reset(&v20);
      v8 = v21;
      if ((v21 & 1) == 0)
      {
        if (getAUSoundIsolationLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
        }

        v9 = getAUSoundIsolationLog(void)::gLog;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v19 = AU::SoundIsolation::CopyError<void>(v20, v8);
          *buf = 136315650;
          v23 = "AUSoundIsolation_v2.mm";
          v24 = 1024;
          v25 = 383;
          v26 = 2112;
          v27 = v19;
          _os_log_error_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, "%s:%i failed to reset bypass graph - %@", buf, 0x1Cu);
        }

        if ((v21 & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v20);
        }
      }
    }
  }

  if (*(this + 161))
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v11 = ausdk::AUBufferList::PrepareBufferOrError((this + 624), Element + 2, *(this + 84));
    if ((v12 & 1) == 0)
    {
      ausdk::Throw(v11);
    }

    if (!*(this + 156))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v13 = *(this + 79);
    if (*(v13 + 48))
    {
      v14 = 0;
      v15 = (v13 + 64);
      do
      {
        bzero(*v15, *(v15 - 1));
        ++v14;
        v15 += 2;
      }

      while (v14 < *(v13 + 48));
    }
  }

  return 0;
}

void sub_1DDCB2618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10)
{
  if ((a10 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&a9);
  }

  _Unwind_Resume(a1);
}

const void **CA::DSP::Graph::Reset(CA::DSP::Graph *this)
{
  v7 = 0;
  v2 = 0;
  if (!CADSPGraphReset())
  {
    v2 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v7 = v2;
  }

  v6 = v2;
  if (v2)
  {
    v6 = 0;
    v5 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v6);
    v4 = 0;
    v7 = 0;
    *this = v2;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v4);
  }

  else
  {
    v5 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v6);
    *(this + 8) = 1;
  }

  return result;
}

double AUSoundIsolation_v2::Cleanup(const void **this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
  }

  v2 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "AUSoundIsolation_v2.mm";
    v6 = 1024;
    v7 = 264;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%s:%i cleanup", &v4, 0x12u);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 75);
  this[75] = 0;
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 76);
  this[76] = 0;
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 77);
  this[77] = 0;
  if (*(this + 161))
  {
    if (this[79])
    {
      (*(ausdk::BufferAllocator::instance(void)::global + 3))();
      this[79] = 0;
    }

    result = 0.0;
    this[80] = 0;
    *(this + 156) = 0;
  }

  return result;
}

uint64_t AUSoundIsolation_v2::Initialize(AUSoundIsolation_v2 *this)
{
  v55 = *MEMORY[0x1E69E9840];
  LOBYTE(v29) = 0;
  v30 = 0;
  LOBYTE(v31.mSampleRate) = 0;
  v32 = 0;
  LOBYTE(v33) = 0;
  v36 = 0;
  LOBYTE(v37) = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
  }

  v3 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "AUSoundIsolation_v2.mm";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 281;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%s:%i will try to initialize", &buf, 0x12u);
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }
  }

  v4 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "AUSoundIsolation_v2.mm";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 284;
    _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%s:%i check input and output formats", &buf, 0x12u);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(Element + 96);
  *&buf.mSampleRate = *(Element + 80);
  *&buf.mBytesPerPacket = v6;
  *&buf.mBitsPerChannel = *(Element + 112);
  v7 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v7)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v9 = *(v7 + 96);
  v27 = *(v7 + 80);
  *v28 = v9;
  *&v28[16] = *(v7 + 112);
  v31 = buf;
  v32 = 1;
  v34 = v9;
  v33 = v27;
  v35 = *&v28[16];
  v36 = 1;
  if (*&v27 == buf.mSampleRate && DWORD2(v27) == buf.mFormatID && *v28 == *&buf.mBytesPerPacket && *&v28[12] == *&buf.mChannelsPerFrame && CA::Implementation::EquivalentFormatFlags(&v27, &buf, v8))
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v10 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *v48 = 136315394;
      v49 = "AUSoundIsolation_v2.mm";
      v50 = 1024;
      v51 = 303;
      _os_log_debug_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "%s:%i initialize base", v48, 0x12u);
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }
    }

    v11 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *v48 = 136315394;
      v49 = "AUSoundIsolation_v2.mm";
      v50 = 1024;
      v51 = 317;
      _os_log_debug_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, "%s:%i update local parameter state before creating the processing graph", v48, 0x12u);
    }

    AUSoundIsolation_v2::UpdateLocalParamState(this);
    *(this + 74) = *(this + 73);
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v12 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *v48 = 136315394;
      v49 = "AUSoundIsolation_v2.mm";
      v50 = 1024;
      v51 = 321;
      _os_log_debug_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%s:%i initialize processing graphs", v48, 0x12u);
    }

    ProcessingGraphs = AUSoundIsolation_v2::CreateProcessingGraphs(this);
    if (ProcessingGraphs)
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v14 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        *v48 = 136315394;
        v49 = "AUSoundIsolation_v2.mm";
        v50 = 1024;
        v51 = 324;
        _os_log_error_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "%s:%i InitializeProcessingGraphs failed", v48, 0x12u);
      }

      v29 = ProcessingGraphs;
      v30 = 1;
      v15 = *(this + 88);
      *v48 = 2;
      AU::SoundIsolation::MetricsReporter::reportAsync(v15, &v29, v48);
    }

    else
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v19 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        *v48 = 136315394;
        v49 = "AUSoundIsolation_v2.mm";
        v50 = 1024;
        v51 = 335;
        _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "%s:%i allocate temporary ABL", v48, 0x12u);
      }

      ausdk::AUBufferList::Allocate((this + 624), &buf, *(this + 84));
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v20 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        *v48 = 136315394;
        v49 = "AUSoundIsolation_v2.mm";
        v50 = 1024;
        v51 = 340;
        _os_log_debug_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEBUG, "%s:%i update local parameter state after initializing the processing graph", v48, 0x12u);
      }

      AUSoundIsolation_v2::UpdateLocalParamState(this);
      *(this + 74) = *(this + 73);
      *(this + 139) = *(this + 142);
      if (*(this + 137) && *(this + 135) > 0.0 && (*(this + 529) & 1) == 0 && (*(this + 528) & 1) == 0)
      {
        v21 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v48 = 136315394;
          v49 = "AUSoundIsolation_v2.mm";
          v50 = 1024;
          v51 = 346;
          _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEFAULT, "%s:%i Not bypassed at initialization - activate smooth transition", v48, 0x12u);
        }

        *(this + 138) = *(this + 137);
        *(this + 136) = 0;
      }

      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v22 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        *v48 = 136315394;
        v49 = "AUSoundIsolation_v2.mm";
        v50 = 1024;
        v51 = 351;
        _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEFAULT, "%s:%i initialized", v48, 0x12u);
      }

      v23 = ((std::chrono::steady_clock::now().__d_.__rep_ - v2.__d_.__rep_) * 0x431BDE82D7B634DBLL) >> 64;
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v24 = (v23 >> 18) + (v23 >> 63);
      v25 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        *v48 = 136315650;
        v49 = "AUSoundIsolation_v2.mm";
        v50 = 1024;
        v51 = 356;
        v52 = 2048;
        v53 = v24;
        _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_INFO, "%s:%i initialization duration %lld ms", v48, 0x1Cu);
      }

      v29 = 0;
      v30 = 1;
      v38 = 1;
      v37 = v24;
      v26 = *(this + 88);
      *v48 = 3;
      AU::SoundIsolation::MetricsReporter::reportAsync(v26, &v29, v48);
      return 0;
    }
  }

  else
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v16 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *v48 = 136315394;
      v49 = "AUSoundIsolation_v2.mm";
      v50 = 1024;
      v51 = 292;
      _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "%s:%i input and output formats must match", v48, 0x12u);
    }

    v29 = -10868;
    v30 = 1;
    v17 = *(this + 88);
    *v48 = 0;
    AU::SoundIsolation::MetricsReporter::reportAsync(v17, &v29, v48);
    return 4294956428;
  }

  return ProcessingGraphs;
}

void AUSoundIsolation_v2::~AUSoundIsolation_v2(const void **this)
{
  AUSoundIsolation_v2::~AUSoundIsolation_v2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591F6A0;
  AUSoundIsolation_v2::TearDownInternalReporterID(this);
  v2 = this[89];
  v3 = 0uLL;
  *(this + 44) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = 0uLL;
  }

  v4 = this[86];
  v5 = this[87];
  *(this + 43) = v3;
  v6 = dispatch_get_global_queue(21, 0);
  v7 = v6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN19AUSoundIsolation_v217TearDownMessengerEv_block_invoke;
  v14[3] = &__block_descriptor_48_ea8_32c56_ZTSNSt3__110shared_ptrIN5caulk10concurrent9messengerEEE_e5_v8__0l;
  v14[4] = v4;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v14);

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v8 = this[89];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = this[87];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::destroy(this[82]);
  v13 = this[79];
  if (v13)
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global, v13, v10, v11, v12);
    this[79] = 0;
  }

  this[80] = 0;
  *(this + 156) = 0;
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 77);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 76);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 75);

  ausdk::AUBase::~AUBase(this);
}

void std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::destroy(*a1);
    std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<AUSoundIsolation_v2::BoxTuningType const,applesauce::CF::StringRef>,0>(a1[5]);

    operator delete(a1);
  }
}

void sub_1DDCB3430(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v9 = getAUSoundIsolationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "AUSoundIsolation_v2.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 1749;
      _os_log_error_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, "%s:%i failed to flush logs due to exception", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDCB3404);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c56_ZTSNSt3__110shared_ptrIN5caulk10concurrent9messengerEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c56_ZTSNSt3__110shared_ptrIN5caulk10concurrent9messengerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::pair<AUSoundIsolation_v2::BoxTuningType const,applesauce::CF::StringRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(long long,applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<AUSoundIsolation_v2::SetUpMetricsReporter(void)::$_0,std::allocator<AUSoundIsolation_v2::SetUpMetricsReporter(void)::$_0>,void ()(long long,applesauce::CF::DictionaryRef)>::operator()(uint64_t a1, uint64_t *a2, const void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *a3 = 0;
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_177);
  }

  if (AudioStatisticsLibraryLoader(void)::libSym)
  {
    AudioStatisticsLibraryLoader(void)::libSym(v3, v4, 1, 0);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DDCB3624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void sub_1DDCB373C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void ___ZN12_GLOBAL__N_119registerInternalAUsEv_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
  }

  v0 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v5.componentType = 136315394;
    *&v5.componentSubType = "AUSoundIsolation_v2.mm";
    LOWORD(v5.componentFlags) = 1024;
    *(&v5.componentFlags + 2) = 96;
    _os_log_debug_impl(&dword_1DDB85000, v0, OS_LOG_TYPE_DEBUG, "%s:%i will try to register internal AUs", &v5, 0x12u);
  }

  *&v5.componentType = xmmword_1DE09C130;
  v5.componentFlagsMask = 0;
  if (AudioComponentRegister(&v5, &stru_1F593E800, 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNet>::Factory))
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v1 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v5.componentType = 136315394;
      *&v5.componentSubType = "AUSoundIsolation_v2.mm";
      LOWORD(v5.componentFlags) = 1024;
      *(&v5.componentFlags + 2) = 118;
      _os_log_debug_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEBUG, "%s:%i registration successful", &v5, 0x12u);
    }
  }

  else
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v2 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v5.componentType = 136315394;
      *&v5.componentSubType = "AUSoundIsolation_v2.mm";
      LOWORD(v5.componentFlags) = 1024;
      *(&v5.componentFlags + 2) = 120;
      _os_log_error_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%s:%i AUNeuralNet registration failed", &v5, 0x12u);
    }
  }

  *&v5.componentType = xmmword_1DE09C140;
  v5.componentFlagsMask = 0;
  if (!AudioComponentRegister(&v5, &stru_1F593E800, 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDenoise>::Factory))
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v3 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v5.componentType = 136315394;
      *&v5.componentSubType = "AUSoundIsolation_v2.mm";
      LOWORD(v5.componentFlags) = 1024;
      *(&v5.componentFlags + 2) = 129;
      _os_log_error_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_ERROR, "%s:%i AUDenoise registration failed", &v5, 0x12u);
    }
  }

  *&v5.componentType = xmmword_1DE09C150;
  v5.componentFlagsMask = 0;
  if (!AudioComponentRegister(&v5, &stru_1F593E800, 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDereverb>::Factory))
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v4 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v5.componentType = 136315394;
      *&v5.componentSubType = "AUSoundIsolation_v2.mm";
      LOWORD(v5.componentFlags) = 1024;
      *(&v5.componentFlags + 2) = 138;
      _os_log_error_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_ERROR, "%s:%i AUDereverb registration failed", &v5, 0x12u);
    }
  }
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDereverb>::Factory()
{
  result = malloc_type_malloc(0x478uLL, 0x10F30401198E284uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDereverb>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDereverb>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDereverb>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 2);
  *v3 = &unk_1F5925108;
  *(v3 + 33) = xmmword_1DE09C160;
  *(v3 + 34) = xmmword_1DE09C160;
  *(v3 + 560) = 0;
  *(v3 + 71) = 0;
  *(v3 + 144) = 0;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 154) = 512;
  *(v3 + 78) = 0x40E5888000000000;
  *(v3 + 158) = 3;
  *(v3 + 656) = 1;
  *(v3 + 1048) = 0u;
  *(v3 + 1064) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  *(a1 + 684) = 0xC2700000C2700000;
  *(a1 + 660) = 1;
  *(a1 + 664) = 0x500000001;
  *(a1 + 672) = 0x412000003FCA3D71;
  *(a1 + 680) = 0;
  *(a1 + 1012) = 1;
  *(a1 + 1016) = 0x45DAC00042480000;
  *(a1 + 1024) = 0;
  v5 = 692;
  *(a1 + 1028) = xmmword_1DE09C170;
  while (1)
  {
    v6 = *(a1 + 608);
    if (v6)
    {
      LODWORD(v7) = (*(*v6 + 24))(v6);
    }

    else
    {
      v7 = (*(a1 + 592) - *(a1 + 584)) >> 3;
    }

    if (v4 >= v7)
    {
      break;
    }

    v8 = a1 + v5;
    ++v4;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    v5 += 20;
  }

  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v10 & 1) == 0 || (ausdk::AUElement::SetParameter(v9, 0, 1.0), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v12 & 1) == 0) || (ausdk::AUElement::SetParameter(v11, 1u, 1.0), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v14 & 1) == 0) || (ausdk::AUElement::SetParameter(v13, 2u, 5.0), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0) || (ausdk::AUElement::SetParameter(v15, 3u, 1.58), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0) || (ausdk::AUElement::SetParameter(v17, 4u, 10.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0) || (ausdk::AUElement::SetParameter(v19, 5u, 0.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0) || (ausdk::AUElement::SetParameter(v21, 6u, 0.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0) || (ausdk::AUElement::SetParameter(v23, 7u, -60.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0) || (ausdk::AUElement::SetParameter(v25, 8u, -60.0), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0) || (ausdk::AUElement::SetParameter(v27, 0xEu, 1.0), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0) || (ausdk::AUElement::SetParameter(v29, 0xFu, 50.0), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v32 & 1) == 0) || (ausdk::AUElement::SetParameter(v31, 0x10u, 7000.0), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v34 & 1) == 0) || (ausdk::AUElement::SetParameter(v33, 0x11u, 0.0), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v36 & 1) == 0) || (ausdk::AUElement::SetParameter(v35, 0x12u, -70.0), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v38 & 1) == 0) || (ausdk::AUElement::SetParameter(v37, 0x13u, 0.0), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v40 & 1) == 0) || (ausdk::AUElement::SetParameter(v39, 0x14u, 0.0), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v42 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v41, 0x15u, 0.0);
  for (i = 0; ; ++i)
  {
    v44 = *(a1 + 608);
    if (v44)
    {
      LODWORD(v45) = (*(*v44 + 24))(v44);
    }

    else
    {
      v45 = (*(a1 + 592) - *(a1 + 584)) >> 3;
    }

    if (i >= v45)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 568), i);
    ausdk::AUElement::SetParameter(Element, 9u, 0.0);
    v47 = ausdk::AUScope::GetElement((a1 + 568), i);
    ausdk::AUElement::SetParameter(v47, 0xAu, 0.0);
    v48 = ausdk::AUScope::GetElement((a1 + 568), i);
    ausdk::AUElement::SetParameter(v48, 0xBu, 0.0);
    v49 = ausdk::AUScope::GetElement((a1 + 568), i);
    ausdk::AUElement::SetParameter(v49, 0xCu, 0.0);
    v50 = ausdk::AUScope::GetElement((a1 + 568), i);
    ausdk::AUElement::SetParameter(v50, 0xDu, 0.0);
  }

  v51 = 0;
  *(a1 + 624) = 0x40E5888000000000;
  v64 = 0x40E5888000000000;
  v65 = xmmword_1DE09C190;
  v66 = xmmword_1DE09C180;
  v61 = 0x40E5888000000000;
  v63 = xmmword_1DE09C180;
  v62 = xmmword_1DE09C190;
  while (1)
  {
    v52 = *(a1 + 120);
    if (v52)
    {
      LODWORD(v53) = (*(*v52 + 24))(v52);
    }

    else
    {
      v53 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v51 >= v53)
    {
      break;
    }

    v54 = ausdk::AUScope::GetElement((a1 + 80), v51);
    if (!v54)
    {
LABEL_45:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*v54 + 56))(v54, &v64);
    ++v51;
  }

  for (j = 0; ; ++j)
  {
    v56 = *(a1 + 168);
    if (v56)
    {
      LODWORD(v57) = (*(*v56 + 24))(v56);
    }

    else
    {
      v57 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (j >= v57)
    {
      break;
    }

    v58 = ausdk::AUScope::GetElement((a1 + 128), j);
    if (!v58)
    {
      goto LABEL_45;
    }

    (*(*v58 + 56))(v58, &v61);
  }

  (*(*a1 + 512))(a1, 512);
  *(a1 + 376) = 1;
  AUDereverb::InitializeMCLPClasses(a1);
  v59 = std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((a1 + 1072), 0);
  *(a1 + 656) = AUDebugFeature::IsNonFiniteHandlingEnabled(v59);
  return a1;
}

void sub_1DDCB4188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](v2 + 134, 0);
  std::unique_ptr<MCLP_FLSL_Joint_OS_vDSP>::reset[abi:ne200100](v2 + 133, 0);
  std::unique_ptr<MCLP_FRLS_vDSP>::reset[abi:ne200100](v2 + 132, 0);
  std::unique_ptr<MCLP_ORNLMS_BLAS>::reset[abi:ne200100](v3, 0);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](va);
  ausdk::AUBase::~AUBase(v2);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDenoise>::Factory()
{
  result = malloc_type_malloc(0x528uLL, 0x10F30406D2ABE11uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDenoise>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDenoise>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDenoise>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 2);
  *v3 = &unk_1F592A438;
  *(v3 + 33) = xmmword_1DE09C160;
  *(v3 + 34) = xmmword_1DE09C160;
  *(v3 + 560) = 0;
  *(v3 + 71) = 0;
  *(v3 + 144) = 0;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 154) = 512;
  *(v3 + 78) = 0x40E5888000000000;
  *(v3 + 158) = 3;
  *(v3 + 328) = 1;
  *(v3 + 1144) = 0u;
  *(v3 + 1160) = 0u;
  *(v3 + 1176) = 0u;
  *(v3 + 1192) = 0u;
  *(v3 + 1208) = 0u;
  *(v3 + 1224) = 0u;
  *(v3 + 1240) = 0u;
  ausdk::AUBase::CreateElements(v3);
  *(a1 + 660) = 0;
  *(a1 + 664) = xmmword_1DE09C1A0;
  *(a1 + 680) = xmmword_1DE09C1B0;
  *(a1 + 696) = 0x500000005;
  *(a1 + 704) = xmmword_1DE09C1C0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 3279552512;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 1;
  *(a1 + 768) = xmmword_1DE09C1D0;
  *(a1 + 784) = 0x40C000003F800000;
  *(a1 + 792) = 0;
  *(a1 + 796) = 1;
  *(a1 + 800) = 0x200000001;
  *(a1 + 808) = 0;
  *(a1 + 810) = 0;
  *(a1 + 812) = 0xC2700000C2700000;
  *(a1 + 1108) = 0u;
  *(a1 + 1124) = 0u;
  *(a1 + 1076) = 0u;
  *(a1 + 1092) = 0u;
  *(a1 + 1044) = 0u;
  *(a1 + 1060) = 0u;
  *(a1 + 1012) = 0u;
  *(a1 + 1028) = 0u;
  *(a1 + 980) = 0u;
  *(a1 + 996) = 0u;
  *(a1 + 948) = 0u;
  *(a1 + 964) = 0u;
  *(a1 + 916) = 0u;
  *(a1 + 932) = 0u;
  *(a1 + 884) = 0u;
  *(a1 + 900) = 0u;
  *(a1 + 852) = 0u;
  *(a1 + 868) = 0u;
  *(a1 + 820) = 0u;
  *(a1 + 836) = 0u;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0
    || (ausdk::AUElement::SetParameter(v4, 0, 0.0), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v6, 1u, 0.38), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v8, 2u, 0.38), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v10, 3u, 0.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v12, 4u, 1.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 5u, -30.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 6u, 0.5), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 7u, 1.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 8u, 100000.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 9u, 5.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 0xAu, 5.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 0xBu, 6.9897), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 0xCu, -300.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 0xDu, 0.99), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 0x17u, 0.05), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0x18u, 0.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0x19u, 0.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0x1Au, 0.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0x1Bu, 0.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0x1Cu, -250.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0x1Du, 0.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x1Eu, 0.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x1Fu, 0.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v51 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v50, 0x20u, 1.0), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v53 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v52, 0x21u, 100.0), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v55 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v54, 0x22u, 7000.0), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v57 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v56, 0x23u, 0.5), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v59 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v58, 0x24u, 0.001), v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v61 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v60, 0x25u, 1.0), v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v63 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v62, 0x26u, 6.0), v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v65 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v64, 0x27u, 0.0), v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v67 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v66, 0x28u, 1.0), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v69 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v68, 0x29u, 1.0), v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v71 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v70, 0x2Au, 2.0), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v73 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v72, 0x2Bu, 0.0), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v75 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v74, 0xEu, 0.0), v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v77 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v76, 0xFu, 0.0), v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v79 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v78, 0x10u, -60.0), v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v81 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v80, 0x11u, -60.0);
  for (i = 0; ; ++i)
  {
    v83 = *(a1 + 608);
    if (v83)
    {
      LODWORD(v84) = (*(*v83 + 24))(v83);
    }

    else
    {
      v84 = (*(a1 + 592) - *(a1 + 584)) >> 3;
    }

    if (i >= v84)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 568), i);
    ausdk::AUElement::SetParameter(Element, 0x12u, 0.0);
    v86 = ausdk::AUScope::GetElement((a1 + 568), i);
    ausdk::AUElement::SetParameter(v86, 0x13u, 0.0);
    v87 = ausdk::AUScope::GetElement((a1 + 568), i);
    ausdk::AUElement::SetParameter(v87, 0x14u, 0.0);
    v88 = ausdk::AUScope::GetElement((a1 + 568), i);
    ausdk::AUElement::SetParameter(v88, 0x15u, 0.0);
    v89 = ausdk::AUScope::GetElement((a1 + 568), i);
    ausdk::AUElement::SetParameter(v89, 0x16u, 0.0);
  }

  v90 = 0;
  *(a1 + 624) = 0x40E5888000000000;
  v101 = 0x40E5888000000000;
  v102 = xmmword_1DE09C190;
  v103 = xmmword_1DE09C180;
  v98 = 0x40E5888000000000;
  v100 = xmmword_1DE09C180;
  v99 = xmmword_1DE09C190;
  while (1)
  {
    v91 = *(a1 + 120);
    if (v91)
    {
      LODWORD(v92) = (*(*v91 + 24))(v91);
    }

    else
    {
      v92 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v90 >= v92)
    {
      break;
    }

    v93 = ausdk::AUScope::GetElement((a1 + 80), v90);
    if (!v93)
    {
      goto LABEL_61;
    }

    (*(*v93 + 56))(v93, &v101);
    ++v90;
  }

  for (j = 0; ; ++j)
  {
    v95 = *(a1 + 168);
    if (v95)
    {
      LODWORD(v96) = (*(*v95 + 24))(v95);
    }

    else
    {
      v96 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (j >= v96)
    {
      (*(*a1 + 512))(a1, 512);
      *(a1 + 376) = 1;
      operator new();
    }

    v97 = ausdk::AUScope::GetElement((a1 + 128), j);
    if (!v97)
    {
      break;
    }

    (*(*v97 + 56))(v97, &v98);
  }

LABEL_61:
  ausdk::Throw(0xFFFFD583);
}

void sub_1DDCB4BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  v19 = v18;
  v21 = v19;
  *(v19 + 64) = 0;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = v21;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a16);
  MEMORY[0x1E12BD160](v21, 0x1020C40A98CFEF5);
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](v16 + 156, 0);
  v22 = v16[153];
  if (v22)
  {
    v16[154] = v22;
    operator delete(v22);
  }

  v23 = v16[150];
  if (v23)
  {
    v16[151] = v23;
    operator delete(v23);
  }

  v24 = v16[147];
  if (v24)
  {
    v16[148] = v24;
    operator delete(v24);
  }

  std::unique_ptr<PMWFStvPlistHolder>::reset[abi:ne200100](v16 + 146, 0);
  std::unique_ptr<GuidedMWF>::reset[abi:ne200100](v16 + 145, 0);
  std::unique_ptr<iPMWF_HRLS_vDSP>::reset[abi:ne200100](v16 + 144, 0);
  std::unique_ptr<PMWF_FAST_GS_vDSP>::reset[abi:ne200100](v17, 0);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a10);
  ausdk::AUBase::~AUBase(v16);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNet>::Factory()
{
  result = malloc_type_malloc(0x5E8uLL, 0x10F304095776ED0uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNet>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNet>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNet>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  *ausdk::AUBase::AUBase(a1, a2, 1, 1) = &unk_1F591F998;
  if (AUNeuralNetLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetLogScope(void)::once, &__block_literal_global_4058);
  }

  caulk::deferred_logger::create_v(*AUNeuralNetLogScope(void)::scope, v3);
  *(a1 + 544) = 1156;
  *(a1 + 596) = 0;
  *(a1 + 600) = 0;
  *(a1 + 548) = 0u;
  *(a1 + 564) = 0u;
  *(a1 + 578) = 0u;
  *(a1 + 604) = 0u;
  *(a1 + 620) = 0x3DCCCCCD00000000;
  *(a1 + 652) = 0;
  *(a1 + 628) = 0;
  *(a1 + 636) = 0u;
  *(a1 + 656) = 1;
  *(a1 + 672) = 0;
  *(a1 + 668) = 0;
  *(a1 + 660) = 0;
  *(a1 + 676) = 1;
  *(a1 + 680) = 1;
  *(a1 + 688) = 0;
  *(a1 + 816) = 0;
  *(a1 + 800) = 0u;
  *buf = a1 + 800;
  LOBYTE(v5) = 0;
  operator new();
}

void sub_1DDCB5608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 1232) == 1)
  {
    v12 = *(v10 + 1208);
    if (v12)
    {
      *(v10 + 1216) = v12;
      operator delete(v12);
    }
  }

  v13 = *(v10 + 1200);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(v10 + 1192);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(v10 + 1184);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(v10 + 1160);
  if (v16)
  {
    *(v10 + 1168) = v16;
    operator delete(v16);
  }

  v17 = *(v10 + 1128);
  if (v17)
  {
    *(v10 + 1136) = v17;
    operator delete(v17);
  }

  v18 = *(v10 + 1104);
  if (v18)
  {
    *(v10 + 1112) = v18;
    operator delete(v18);
  }

  v19 = *(v10 + 1080);
  if (v19)
  {
    *(v10 + 1088) = v19;
    operator delete(v19);
  }

  a10 = (v10 + 1056);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v20 = *(v10 + 1032);
  if (v20)
  {
    *(v10 + 1040) = v20;
    operator delete(v20);
  }

  v21 = *(v10 + 1008);
  if (v21)
  {
    *(v10 + 1016) = v21;
    operator delete(v21);
  }

  v22 = *(v10 + 984);
  if (v22)
  {
    *(v10 + 992) = v22;
    operator delete(v22);
  }

  v23 = *(v10 + 952);
  if (v23)
  {
    *(v10 + 960) = v23;
    operator delete(v23);
  }

  v24 = *(v10 + 928);
  if (v24)
  {
    *(v10 + 936) = v24;
    operator delete(v24);
  }

  v25 = *(v10 + 904);
  if (v25)
  {
    *(v10 + 912) = v25;
    operator delete(v25);
  }

  v26 = *(v10 + 880);
  if (v26)
  {
    *(v10 + 888) = v26;
    operator delete(v26);
  }

  v27 = (v10 + 832);
  v28 = *(v10 + 856);
  if (v28)
  {
    *(v10 + 864) = v28;
    operator delete(v28);
  }

  v29 = *v27;
  if (*v27)
  {
    *(v10 + 840) = v29;
    operator delete(v29);
  }

  std::vector<AUNeuralNet::NeuralNetWrapper>::__destroy_vector::operator()[abi:ne200100](&a10);
  v30 = *(v10 + 536);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  ausdk::AUBase::~AUBase(v10);
  _Unwind_Resume(a1);
}

uint64_t AUNeuralNet::ValidFormat(AUNeuralNet *this, int a2, int a3, const AudioStreamBasicDescription *a4)
{
  if (a2 != 2)
  {
    if (a2 == 1 && !a3)
    {
      mFormatID = a4->mFormatID;
      mFormatFlags = a4->mFormatFlags;
      if (mFormatID == 1718773105)
      {
        v24 = (mFormatFlags >> 5) & 1;
        if (a4->mBitsPerChannel != 64)
        {
          v24 = 0;
        }

        if (mFormatFlags)
        {
          v6 = v24;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = a4->mFormatFlags & 1;
        if (mFormatID != 1819304813)
        {
          v6 = 0;
        }
      }

      v25 = a4->mChannelsPerFrame >= 0x11;
      goto LABEL_61;
    }

    return 0;
  }

  if (a3 == 1)
  {
    mChannelsPerFrame = a4->mChannelsPerFrame;
    mBitsPerChannel = a4->mBitsPerChannel;
    mBytesPerPacket = a4->mBytesPerPacket;
    mBytesPerFrame = a4->mBytesPerFrame;
    v14 = a4->mFormatID == 1819304813 && a4->mFramesPerPacket == 1;
    v17 = !v14 || mBytesPerFrame != mBytesPerPacket || mBitsPerChannel >> 3 > mBytesPerFrame || mChannelsPerFrame == 0;
    if (!v17 && ((v20 = a4->mFormatFlags, (v20 & 0x20) != 0) || (v14 = mBytesPerPacket == mBytesPerPacket / mChannelsPerFrame * mChannelsPerFrame, mBytesPerPacket /= mChannelsPerFrame, v14)))
    {
      v21 = 8 * mBytesPerPacket;
      v18 = mBytesPerPacket == 4 && (a4->mFormatFlags & 0x1F84) == 0;
      if (v20)
      {
        v22 = (a4->mFormatFlags & 0x1F84) == 0;
      }

      else
      {
        v18 = 0;
        v22 = 1;
      }

      if (v21 == mBitsPerChannel)
      {
        v23 = v22;
      }

      else
      {
        v18 = 0;
        v23 = 1;
      }

      if ((v20 & 2) != 0)
      {
        v18 = 0;
        v19 = 1;
      }

      else
      {
        v19 = v23;
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v14 = mBitsPerChannel == 32;
    v6 = v18 & v19;
    if (!v14)
    {
      v6 = 0;
    }
  }

  else
  {
    if (a3)
    {
      return 0;
    }

    v8 = a4->mFormatID;
    v7 = a4->mFormatFlags;
    if (v8 == 1718773105)
    {
      v26 = (v7 >> 5) & 1;
      if (a4->mBitsPerChannel != 64)
      {
        v26 = 0;
      }

      if (v7)
      {
        v6 = v26;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = a4->mFormatFlags & 1;
      if (v8 != 1819304813)
      {
        v6 = 0;
      }
    }

    mChannelsPerFrame = a4->mChannelsPerFrame;
  }

  v25 = mChannelsPerFrame >= 0x25;
LABEL_61:
  if (v25)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t AUNeuralNet::SupportedNumChannels(AUNeuralNet *this, const AUChannelInfo **a2)
{
  v2 = 0;
  v3 = &word_1ECDA7FCA;
  do
  {
    v4 = v3;
    for (i = 1; i != 37; ++i)
    {
      *(v4 - 1) = v2 + 1;
      *v4 = i;
      v4 += 2;
    }

    ++v2;
    v3 += 72;
  }

  while (v2 != 16);
  if (a2)
  {
    *a2 = &AUNeuralNet::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 576;
}

uint64_t AUNeuralNet::StreamFormatWritable(AUNeuralNet *this, int a2)
{
  if ((a2 - 1) > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 17) ^ 1;
  }

  return v2 & 1;
}

double AUNeuralNet::GetLatency(AUNeuralNet *this)
{
  v1 = *(this + 100);
  if (*(v1 + 96) == 1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 1244) == 1)
  {
    v3 = 800;
    if (*(this + 312) == 2)
    {
      v3 = 1264;
    }

    v4 = 20;
    if (*(this + 312) == 2)
    {
      v4 = 92;
    }

    v2 += *(*(this + v3) + v4);
  }

  return v2 / *v1;
}

uint64_t AUNeuralNet::GetParameterValueStrings(AUNeuralNet *this, int a2, int a3, const __CFArray **a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3 == 17)
  {
    *values = xmmword_1E866A4A0;
    *&v16 = @"LowDelay";
    v10 = CFArrayCreate(0, values, 3, 0);
  }

  else if (a3 == 6)
  {
    *values = xmmword_1E866A468;
    v16 = unk_1E866A478;
    v17 = xmmword_1E866A488;
    v18 = 0;
    for (i = 1; i != 7; ++i)
    {
      std::to_string(&v12, i - 1);
      v7 = std::string::insert(&v12, 0, "Model_", 6uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v14 = v7->__r_.__value_.__r.__words[2];
      *__p = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      if (v14 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      values[i] = CFStringCreateWithCString(0, v9, 0x8000100u);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = CFArrayCreate(0, values, 7, 0);
  }

  else
  {
    values[0] = @"Parameter Name Unimplemented";
    v10 = CFArrayCreate(0, values, 1, 0);
  }

  v11 = v10;
  result = 0;
  *a4 = v11;
  return result;
}

void sub_1DDCB5C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUNeuralNet::GetParameterInfo(AUNeuralNet *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956430;
  }

  if (a3 > 0x1B)
  {
    return 4294956418;
  }

  v6 = off_1E866A4F8[a3];
  v7 = dword_1DE0A1B74[a3];
  v8 = dword_1DE0A1BE4[a3];
  v9 = flt_1DE0A1C54[a3];
  v10 = flt_1DE0A1CC4[a3];
  v11 = flt_1DE0A1D34[a3];
  v12 = dword_1DE0A1DA4[a3];
  buffer->cfNameString = v6;
  buffer->flags = 0x8000000;
  CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->clumpID = v7;
  flags = buffer->flags;
  buffer->unit = v8;
  buffer->minValue = v9;
  buffer->maxValue = v10;
  buffer->defaultValue = v11;
  buffer->flags = flags | v12;
  return result;
}

uint64_t AUNeuralNet::GetParameterList(AUNeuralNet *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09C1E0;
    *(a3 + 3) = xmmword_1DE09C0E0;
    *(a3 + 4) = xmmword_1DE09C1F0;
    *(a3 + 5) = xmmword_1DE09C200;
    *(a3 + 6) = xmmword_1DE09C210;
  }

  result = 0;
  *a4 = 28;
  return result;
}

uint64_t AUNeuralNet::SetBusCount(AUNeuralNet *this, int a2, unsigned int a3)
{
  if (a2 == 1 && a3 == 1)
  {
    v3 = 80;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements((this + v3), a3);
    return 0;
  }

  v4 = 4294956445;
  if (a2 == 2 && a3 - 1 <= 1)
  {
    v3 = 128;
    goto LABEL_7;
  }

  return v4;
}

uint64_t AUNeuralNet::BusCountWritable(AUNeuralNet *this, int a2)
{
  if (a2 == 2)
  {
    v2 = *(this + 17) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

ausdk::AUInputElement *AUNeuralNet::Render(AUNeuralNet *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v14 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v13)
  {
    result = ausdk::AUInputElement::PullInput(result, &v14, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v16[0] = *(v9 + 152) + 48;
    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v15 = *(v11 + 152) + 48;
    return (*(*this + 184))(this, a2, a4, 1, v16, 1, &v15);
  }

  return result;
}

uint64_t AUNeuralNet::ProcessMultipleBufferLists(AUNeuralNet *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, uint64_t a6, const AudioBufferList **a7)
{
  *(&v243.mChannelsPerFrame + 1) = *MEMORY[0x1E69E9840];
  v12 = *(this + 85);
  if (*(this + 86) == v12)
  {
    goto LABEL_49;
  }

  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v14 & 1) == 0)
  {
    goto LABEL_269;
  }

  Parameter = ausdk::AUElement::GetParameter(v13, 1u);
  v16 = 1.0;
  if (Parameter != 0.0)
  {
    v16 = __exp10f(Parameter / 20.0);
  }

  *(this + 137) = v16;
  v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_269;
  }

  v19 = ausdk::AUElement::GetParameter(v17, 2u);
  v20 = 1.0;
  if (v19 != 0.0)
  {
    v20 = __exp10f(v19 / 20.0);
  }

  *(this + 138) = v20;
  v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_269;
  }

  v23 = ausdk::AUElement::GetParameter(v21, 5u);
  if (*(*(this + 100) + 104 * v23 + 96) == 1)
  {
    *(this + 141) = v23;
  }

  else
  {
    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v24 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v153 = *(this + 206);
      *(&v243.mSampleRate + 5) = 134218496;
      *(&v243.mFormatID + 1) = this;
      *(&v243.mBytesPerPacket + 1) = 1024;
      *(&v243.mBytesPerPacket + 3) = v23;
      *(&v243.mFramesPerPacket + 3) = 1024;
      *(&v243.mBytesPerFrame + 1) = v153;
      _os_log_error_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, "[%p] Tried to select a model indexed at (%u), but only (%u) models are available. A new model will not be selected and the previous selection will be used.", &v243.mSampleRate + 5, 0x18u);
    }
  }

  v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_269;
  }

  v27 = ausdk::AUElement::GetParameter(v25, 6u);
  *(this + 142) = v27;
  if (v27)
  {
    v28 = v27 - 1;
    if (*(*(this + 100) + 104 * v28 + 96) != 1)
    {
      *(this + 676) = 0;
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v29 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v154 = *(this + 142) - 1;
        v155 = *(this + 206);
        *(&v243.mSampleRate + 5) = 134218496;
        *(&v243.mFormatID + 1) = this;
        *(&v243.mBytesPerPacket + 1) = 1024;
        *(&v243.mBytesPerPacket + 3) = v154;
        *(&v243.mFramesPerPacket + 3) = 1024;
        *(&v243.mBytesPerFrame + 1) = v155;
        _os_log_error_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, "[%p] Tried to select a model indexed at (%u), but only (%u) models are available. A new model will not be selected and AUNeuralNet will run as if bypassed (until a new model is selected).", &v243.mSampleRate + 5, 0x18u);
      }

      goto LABEL_24;
    }

    *(this + 141) = v28;
  }

  *(this + 676) = 1;
LABEL_24:
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_269;
  }

  v32 = ausdk::AUElement::GetParameter(v30, 7u);
  v33 = 1.0;
  if (v32 != 0.0)
  {
    v33 = __exp10f(v32 / 20.0);
  }

  *(this + 143) = v33;
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_269;
  }

  *(this + 592) = ausdk::AUElement::GetParameter(v34, 0xCu) != 0.0;
  v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_269;
  }

  *v38.i32 = ausdk::AUElement::GetParameter(v36, 0xDu);
  *(this + 593) = *v38.i32 != 0.0;
  if ((*(this + 592) & 1) == 0)
  {
    v39 = *(*(this + 100) + 28);
    *(&v243.mSampleRate + 5) = 0;
    std::vector<float>::assign(this + 107, v39, (&v243.mSampleRate + 5), v38);
  }

  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_269;
  }

  *(this + 600) = ausdk::AUElement::GetParameter(v40, 0x15u) != 0.0;
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_269;
  }

  *(this + 601) = ausdk::AUElement::GetParameter(v42, 0x16u) != 0.0;
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_269;
  }

  v46 = ausdk::AUElement::GetParameter(v44, 8u);
  v47 = 1.0;
  if (v46 != 0.0)
  {
    v47 = __exp10f(v46 / 20.0);
  }

  *(this + 144) = v47;
  v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_269;
  }

  v50 = ausdk::AUElement::GetParameter(v48, 9u);
  v51 = 1.0;
  if (v50 != 0.0)
  {
    v51 = __exp10f(v50 / 20.0);
  }

  *(this + 145) = v51;
  v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_269;
  }

  v54 = ausdk::AUElement::GetParameter(v52, 0xAu);
  v55 = 1.0;
  if (v54 != 0.0)
  {
    v55 = __exp10f(v54 / 20.0);
  }

  *(this + 146) = v55;
  v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_269;
  }

  v58 = ausdk::AUElement::GetParameter(v56, 0xBu);
  v59 = 1.0;
  if (v58 != 0.0)
  {
    v59 = __exp10f(v58 / 20.0);
  }

  *(this + 147) = v59;
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_269;
  }

  *(this + 153) = ausdk::AUElement::GetParameter(v60, 0x19u);
  v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_269;
  }

  *(this + 154) = ausdk::AUElement::GetParameter(v62, 0x1Au);
  v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_269;
  }

  *(this + 155) = ausdk::AUElement::GetParameter(v64, 0x1Bu);
  *(this + 86) = v12;
LABEL_49:
  v66 = *(this + 245);
  CurrentLatencyInSamples = AUNeuralNet::GetCurrentLatencyInSamples(this);
  *(this + 245) = CurrentLatencyInSamples;
  if (v66 != CurrentLatencyInSamples)
  {
    v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v69 & 1) == 0)
    {
      goto LABEL_269;
    }

    ausdk::AUElement::SetParameter(v68, 0xEu, *(this + 245));
  }

  v70 = *a5;
  if (*a5)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      goto LABEL_223;
    }

    v72 = *(Element + 108);
    if ((*(Element + 92) & 0x20) != 0)
    {
      v73 = *(Element + 108);
    }

    else
    {
      v73 = 1;
    }

    if ((*(Element + 92) & 0x20) != 0)
    {
      v72 = 1;
    }

    if (v70->mNumberBuffers != v73 || v70->mBuffers[0].mNumberChannels != v72)
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v75 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        *(&v243.mSampleRate + 5) = 134217984;
        *(&v243.mFormatID + 1) = this;
        v76 = "[%p] input format not supported";
        goto LABEL_140;
      }

      return 4294956428;
    }

    LOBYTE(v243.mSampleRate) = 0;
    v78 = *a5;
    v79 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v79)
    {
LABEL_223:
      ausdk::Throw(0xFFFFD583);
    }

    AudioDSP::Utility::DetectNonFinites(0, v78, (v79 + 80), &v243, v80);
    if (LOBYTE(v243.mSampleRate) != 1)
    {
      goto LABEL_94;
    }

    if (!*(this + 348))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v81 = *(this + 175);
    mNumberBuffers = (*a5)->mNumberBuffers;
    if (mNumberBuffers != v81[2].mNumberBuffers)
    {
      CAAssertRtn();
      goto LABEL_272;
    }

    if (!mNumberBuffers)
    {
      v100 = 0;
      *a5 = v81 + 2;
      goto LABEL_92;
    }

    v83 = 0;
    p_mData = &(*a5)->mBuffers[0].mData;
    v85 = &v81[2].mBuffers[0].mData;
    do
    {
      v86 = *(v85 - 1);
      if (v86 != *(p_mData - 1))
      {
        CAAssertRtn();
        goto LABEL_207;
      }

      v88 = *v85;
      v85 += 2;
      v87 = v88;
      v89 = *p_mData;
      p_mData += 2;
      memcpy(v87, v89, v86);
      ++v83;
    }

    while (v83 < v81[2].mNumberBuffers);
    if (!*(this + 348))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v90 = *(this + 175);
    v92 = v90[2].mNumberBuffers;
    v91 = v92;
    *a5 = v90 + 2;
    if (v92)
    {
      v93 = 0;
      v94 = 0;
      mBuffers = v90[2].mBuffers;
      do
      {
        v96 = &mBuffers[v93];
        v97 = *(v96 + 1);
        if (v97 >= 4)
        {
          v98 = v97 >> 2;
          v99 = *(v96 + 1);
          do
          {
            if ((*v99 & 0x7FFFFFFFu) >= 0x7F800000)
            {
              *v99 = 0;
              ++v94;
            }

            ++v99;
            --v98;
          }

          while (v98);
        }

        ++v93;
      }

      while (v93 != v91);
      v100 = v94;
    }

    else
    {
      v100 = 0;
    }

LABEL_92:
    v101 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(*(this + 66), v101 + 88, 16);
    if (message)
    {
      v103 = message;
      v104 = _os_log_pack_fill();
      *v104 = 134217984;
      *(v104 + 4) = v100;
      caulk::concurrent::messenger::enqueue(*(*(this + 66) + 16), v103);
    }

LABEL_94:
    v105 = 0;
    v242 = 0uLL;
    v106 = &v242 + 1;
    v107 = 1;
    do
    {
      v108 = v107;
      if (v105 >= a6)
      {
        v109 = 0;
      }

      else
      {
        v109 = a7[v105];
      }

      v107 = 0;
      *v106 = v109;
      v106 = &v242;
      v105 = 1;
    }

    while ((v108 & 1) != 0);
    v110 = *(&v242 + 1);
    if (*(&v242 + 1))
    {
      v111 = ausdk::AUScope::GetElement((this + 128), 0);
      if (!v111)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v112 = *(v111 + 108);
      if ((*(v111 + 92) & 0x20) != 0)
      {
        v113 = *(v111 + 108);
      }

      else
      {
        v113 = 1;
      }

      if ((*(v111 + 92) & 0x20) != 0)
      {
        v112 = 1;
      }

      if (*v110 != v113 || v110[2] != v112)
      {
        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }

        v75 = getAUNeuralNetLog(void)::gLog;
        if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *(&v243.mSampleRate + 5) = 134217984;
          *(&v243.mFormatID + 1) = this;
          v76 = "[%p] processed output format not supported";
          goto LABEL_140;
        }

        return 4294956428;
      }
    }

    v85 = v242;
    if (!v242 || *v242 == *(this + 166))
    {
      if ((*(this + 1384) & 1) == 0)
      {
        v115 = *(this + 345);
        if (v115 > 0.0)
        {
          v116 = *(this + 344);
          *(this + 1384) = v115 < v116;
          if (v115 < v116)
          {
            v117 = this + 1424;
            v118 = this + 1424;
            if (*(this + 1447) < 0)
            {
              v118 = *v117;
            }

            v119 = strlen(v118);
            v120 = _os_log_pack_size() + 88;
            v121 = caulk::deferred_logger::create_message(*(this + 66), v119 + v120 + 1, 16);
            if (v121)
            {
              v122 = v121;
              v123 = (v121 + v120);
              v124 = _os_log_pack_fill();
              if (*(this + 1447) < 0)
              {
                v117 = *v117;
              }

              stpcpy(v123, v117);
              v125 = *(this + 345);
              v126 = *(this + 344);
              *v124 = 136315650;
              *(v124 + 4) = v123;
              *(v124 + 12) = 2048;
              *(v124 + 14) = v125;
              *(v124 + 22) = 2048;
              *(v124 + 24) = v126;
              caulk::concurrent::messenger::enqueue(*(*(this + 66) + 16), v122);
            }
          }
        }
      }

      if (*(this + 168))
      {
        *(this + 1245) = 0;
        v239 = this + 1245;
        if (*(this + 668) == 1)
        {
          v127 = 0;
          v128 = *a5;
          v129 = *a7;
          *(this + 1245) = 0;
LABEL_128:
          v238 = v127;
          if (*(this + 166))
          {
            v130 = 0;
            v131 = &v128->mBuffers[0].mData;
            v132 = &v129->mBuffers[0].mData;
            do
            {
              v133 = *v132;
              if (v130 >= *(this + 165))
              {
                *(&v243.mSampleRate + 5) = 0;
                vDSP_vfill((&v243.mSampleRate + 5), v133, 1, 2 * a3);
              }

              else if (2 * a3)
              {
                memmove(*v132, *v131, 8 * a3);
              }

              ++v130;
              v131 += 2;
              v132 += 2;
            }

            while (v130 < *(this + 166));
          }

LABEL_135:
          a6 = 0;
LABEL_173:
          v241 = 0;
          v157 = *a7;
          v158 = ausdk::AUScope::GetElement((this + 128), 0);
          if (v158)
          {
            AudioDSP::Utility::DetectNonFinites(0, v157, (v158 + 80), &v241, v159);
            if (v241 == 1)
            {
              v160 = _os_log_pack_size();
              v161 = caulk::deferred_logger::create_message(*(this + 66), v160 + 88, 16);
              if (v161)
              {
                v162 = v161;
                v163 = _os_log_pack_fill();
                v164 = *(this + 139);
                *v163 = 134217984;
                *(v163 + 4) = v164;
                caulk::concurrent::messenger::enqueue(*(*(this + 66) + 16), v162);
              }

              for (i = 0; i != 624; i += 104)
              {
                v166 = *(this + 100) + i;
                if (*(v166 + 96) == 1)
                {
                  (*(**(v166 + 64) + 48))(*(v166 + 64));
                }
              }

              v167 = *a7;
              if ((*a7)->mNumberBuffers)
              {
                v168 = 0;
                v169 = 0;
                do
                {
                  memcpy(v167->mBuffers[v168].mData, **(this + 132), v167->mBuffers[v168].mDataByteSize);
                  ++v169;
                  v167 = *a7;
                  ++v168;
                }

                while (v169 < (*a7)->mNumberBuffers);
              }

              *(this + 140) = *(this + 139);
              *(this + 152) = *(this + 151);
            }

            v170 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v172)
            {
              LOBYTE(v171) = *v239;
              ausdk::AUElement::SetParameter(v170, 0x10u, v171);
              v173 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v174)
              {
                ausdk::AUElement::SetParameter(v173, 0xFu, (v238 & 1));
                if (*(this + 168) || (*(this + 1384) & 1) != 0 || *(this + 676) != 1 || *(this + 136) != a3 || v241 == 1)
                {
                  *(&v243.mSampleRate + 5) = 1065353216;
                  vDSP_vfill((&v243.mSampleRate + 5), *(this + 113), 1, (*(this + 114) - *(this + 113)) >> 2);
                  vDSP_vfill((&v243.mSampleRate + 5), *(this + 116), 1, (*(this + 117) - *(this + 116)) >> 2);
                  vDSP_vfill((&v243.mSampleRate + 5), *(this + 119), 1, (*(this + 120) - *(this + 119)) >> 2);
                  if (v85 && *v85)
                  {
                    v175 = 0;
                    v176 = (v85 + 2);
                    do
                    {
                      vDSP_vfill((&v243.mSampleRate + 5), *v176, 1, *(v176 - 1) >> 2);
                      ++v175;
                      v176 += 2;
                    }

                    while (v175 < *v85);
                  }

                  return a6;
                }

                v177 = AUNeuralNet::ComputeGainMask(this, a3, *a5, *a7);
                v178 = *(this + 328);
                if (v178 >= *(this + 166))
                {
                  v179 = 0;
                }

                else
                {
                  v179 = v178;
                }

                if (!*(this + 318))
                {
                  goto LABEL_259;
                }

                v180 = v177;
                *(&v243.mSampleRate + 1) = 0.0078125;
                vDSP_vclip((*(this + 113) + 4 * ((*(this + 136) + 1) * v179)), 1, (&v243.mSampleRate + 1), (&v243.mSampleRate + 5), *(this + 119), 1, (*(this + 136) + 1));
                v181 = *(this + 318);
                if (v181 <= 2)
                {
                  if (v181 == 1)
                  {
                    vDSP_meanv(*(this + 119), 1, this + 149, (*(this + 136) + 1));
                  }

                  else if (v181 == 2)
                  {
                    v182 = *(this + 165);
                    if (v179 >= (*(this + 166) - v182) >> 2)
                    {
                      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
                    }

                    v183 = *(v182 + 4 * v179) / ((v180 + 2.2204e-16) + (*(this + 136) * *(this + 327)));
                    goto LABEL_246;
                  }

                  goto LABEL_254;
                }

LABEL_207:
                if (v181 == 3)
                {
                  v199 = *(this + 160);
                  v200 = (*(this + 161) - v199) >> 2;
                  if (v200 == *(this + 136) + 1)
                  {
                    vDSP_dotpr(*(this + 119), 1, v199, 1, this + 149, v200);
                    *(this + 149) = *(this + 326) * *(this + 149);
                  }

                  else
                  {
                    *(this + 149) = 0;
                  }

                  goto LABEL_254;
                }

                if (v181 != 4)
                {
                  goto LABEL_254;
                }

                __C = 0.0;
                v184 = *(this + 160);
                v185 = (*(this + 161) - v184) >> 2;
                v186 = 0.0;
                if (v185 == *(this + 136) + 1)
                {
                  vDSP_dotpr(*(this + 119), 1, v184, 1, &__C, v185);
                  v186 = *(this + 326) * __C;
                }

                v187 = ((1.0 - *(this + 339)) * v186) + (*(this + 339) * *(this + 338));
                *(this + 338) = v187;
                v188 = *(this + 340);
                v189 = v187 > v188;
                v190 = *(this + 341);
                if (*(this + 1364))
                {
                  if (*(this + 336) == v189)
                  {
                    v191 = *(this + 337);
                    if (!v191)
                    {
                      goto LABEL_250;
                    }

                    v190 = v191 - 1;
                  }

                  else if (v187 <= v188)
                  {
                    v190 = *(this + 342);
                  }

                  *(this + 337) = v190;
                  if (v190)
                  {
LABEL_253:
                    *(this + 336) = v189;
                    goto LABEL_254;
                  }

LABEL_250:
                  v219 = v187 <= v188;
                  v220 = 0.0;
                  if (!v219)
                  {
                    v220 = 1.0;
                  }

                  *(this + 149) = v220;
                  goto LABEL_253;
                }

                v219 = v187 <= v188;
                v183 = 0.0;
                if (!v219)
                {
                  v183 = 1.0;
                }

LABEL_246:
                *(this + 149) = v183;
LABEL_254:
                v221 = *(this + 149);
                v222 = 0.0;
                if (v221 >= 0.0)
                {
                  v222 = 1.0;
                  if (v221 <= 1.0)
                  {
                    v222 = *(this + 149);
                  }
                }

                *(this + 149) = v222;
                v223 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v224)
                {
                  ausdk::AUElement::SetParameter(v223, 0x13u, *(this + 149));
LABEL_259:
                  memcpy(*(this + 119), *(this + 113), *(this + 114) - *(this + 113));
                  v225 = *(this + 113);
                  *(&v243.mSampleRate + 5) = (*(this + 114) - v225) >> 2;
                  vvpowsf(v225, this + 153, v225, (&v243.mSampleRate + 5));
                  vvpowsf(*(this + 119), this + 154, *(this + 119), (&v243.mSampleRate + 5));
                  vDSP_vclip(*(this + 113), 1, this + 144, this + 145, *(this + 113), 1, (*(this + 114) - *(this + 113)) >> 2);
                  vDSP_vclip(*(this + 119), 1, this + 146, this + 147, *(this + 119), 1, (*(this + 120) - *(this + 119)) >> 2);
                  if (*(this + 166))
                  {
                    v226 = 0;
                    do
                    {
                      memcpy((*(this + 116) + 4 * *(this + 136) * v226), (*(this + 113) + 4 * (v226 + *(this + 136) * v226)), 4 * *(this + 136));
                      ++v226;
                      v227 = *(this + 166);
                    }

                    while (v226 < v227);
                    if (v227)
                    {
                      v228 = 0;
                      v229 = v85 + 2;
                      do
                      {
                        if (v85)
                        {
                          v230 = *(this + 136);
                          v231 = v230 * v228;
                          v232 = 4 * (v230 * v228 + v230);
                          if (v232 != 4 * v231)
                          {
                            memmove(*v229, (*(this + 116) + 4 * v231), v232 - 4 * v231);
                            v227 = *(this + 166);
                          }
                        }

                        ++v228;
                        v229 += 2;
                      }

                      while (v228 < v227);
                    }
                  }

                  return a6;
                }
              }
            }

LABEL_269:
            abort();
          }

LABEL_272:
          ausdk::Throw(0xFFFFD583);
        }

        v238 = 0;
      }

      else
      {
        *(this + 1245) = 0;
        v135 = *(this + 1244);
        v136 = *(this + 1384);
        v239 = this + 1245;
        if (v135 == 1 && (*(this + 1384) & 1) == 0)
        {
          v137 = *(this + 312);
          if (v137 == 2)
          {
            a6 = BlockProcessorLowDelay::Process(*(this + 158), a3, a5, a7);
            v156 = (*(*(this + 158) + 88) + *(*(this + 158) + 16)) >= *(*(this + 158) + 12);
          }

          else
          {
            if (v137 == 1)
            {
              a6 = BlockProcessor::Process(*(this + 157), a3, a5, a7);
            }

            else
            {
              a6 = 0;
            }

            v156 = 1;
          }

          v238 = v156;
          goto LABEL_173;
        }

        v127 = (v135 | v136) ^ 1;
        if (*(this + 668))
        {
          v128 = *a5;
          v129 = *a7;
          v138 = *(this + 141);
          v139 = *(this + 100);
          v140 = *(this + 1384);
          *(this + 1245) = v140 ^ 1;
          if ((v140 & 1) != 0 || *(this + 676) != 1 || (*(v139 + 104 * v138 + 96) & 1) == 0)
          {
            goto LABEL_128;
          }

          v234 = v129;
          v235 = v139 + 104 * v138;
          v237 = *(this + 136);
          v238 = v127;
          v141 = (*(**(v139 + 64) + 24))(*(v139 + 64));
          if (*(this + 136) != a3)
          {
            if (getAUNeuralNetLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
            }

            v192 = getAUNeuralNetLog(void)::gLog;
            if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              v233 = *(v235 + 20);
              *(&v243.mSampleRate + 5) = 134218496;
              *(&v243.mFormatID + 1) = this;
              *(&v243.mBytesPerPacket + 1) = 1024;
              *(&v243.mBytesPerPacket + 3) = v233;
              *(&v243.mFramesPerPacket + 3) = 1024;
              *(&v243.mBytesPerFrame + 1) = a3;
              _os_log_error_impl(&dword_1DDB85000, v192, OS_LOG_TYPE_ERROR, "[%p] NeuralNet expects input block size %u, and we received %d.", &v243.mSampleRate + 5, 0x18u);
            }

            a6 = 4294956422;
            goto LABEL_173;
          }

          v142 = 0;
          v236 = v141 / *(*(this + 100) + 8);
          for (j = &v128->mBuffers[0].mData; ; j += 2)
          {
            v144 = ausdk::AUScope::GetElement((this + 80), 0);
            if (!v144)
            {
              ausdk::Throw(0xFFFFD583);
            }

            if (v142 >= *(v144 + 108))
            {
              break;
            }

            v145 = *j;
            v146 = *(this + 136);
            v147 = *(this + 104);
            v148 = v147 + 8 * v142 * v236;
            if (v237 == v236)
            {
              if (2 * v146)
              {
                memmove((v147 + 8 * v142 * v236), v145, 4 * (2 * v146));
                LODWORD(v146) = *(this + 136);
                v147 = *(this + 104);
              }

              v149 = (v147 + 4 * (v146 + 2 * v142 * v236));
            }

            else
            {
              v149 = (v148 + 4 * v236);
              v150 = &v145[4 * v146];
              if (v146 && (memmove((v147 + 8 * v142 * v236), v145, 4 * v146), v151 = *(this + 136), v151))
              {
                memmove(v149, v150, 4 * v151);
                v152 = *(this + 136);
              }

              else
              {
                v152 = 0;
              }

              *(v148 + 4 * v152) = *v150;
              v149[v152] = 0;
            }

            *v149 = 0;
            ++v142;
          }

          *(&v243.mSampleRate + 5) = 0;
          vDSP_measqv(*(this + 104), 1, (&v243.mSampleRate + 5), (2 * *(this + 136)));
          v193 = *(this + 157);
          v194 = *(this + 139);
          *(this + 139) = ((1.0 - v193) * (log10f(*(&v243.mSampleRate + 5) + 2.2204e-16) * 10.0)) + (v193 * v194);
          v195 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v196)
          {
            ausdk::AUElement::SetParameter(v195, 3u, *(this + 139));
            v197.n128_u32[0] = *(&v243.mSampleRate + 5);
            v198 = *(&v243.mSampleRate + 5) < *(this + 138);
            MEMORY[0x1E12BE940](*(this + 104), 1, this + 548, *(this + 104), 1, (*(this + 105) - *(this + 104)) >> 2, v197);
            AUNeuralNet::ApplyEmbedding(this, v235);
            if (v198)
            {
              *(&v243.mSampleRate + 1) = 0;
              vDSP_vfill((&v243.mSampleRate + 1), *(this + 110), 1, (*(this + 111) - *(this + 110)) >> 2);
            }

            else
            {
              v201 = (*(**(v235 + 64) + 72))(*(v235 + 64), this + 832);
              v202 = *v201;
              v203 = *(v201 + 8);
              v204 = *(this + 110);
              if (v203 != v202)
              {
                memmove(v204, v202, v203 - v202);
                v204 = *(this + 110);
              }

              vDSP_vsdiv(v204, 1, this + 137, v204, 1, (*(this + 111) - v204) >> 2);
            }

            vDSP_measqv(*(this + 110), 1, (&v243.mSampleRate + 5), (*(this + 111) - *(this + 110)) >> 2);
            v205 = *(this + 157);
            v206 = *(this + 140);
            *(this + 140) = ((1.0 - v205) * (log10f(*(&v243.mSampleRate + 5) + 2.2204e-16) * 10.0)) + (v205 * v206);
            v207 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v208)
            {
              ausdk::AUElement::SetParameter(v207, 4u, *(this + 140));
              if (*(this + 166))
              {
                v209 = 0;
                v210 = &v234->mBuffers[0].mData;
                do
                {
                  v211 = *v210;
                  v212 = *(this + 136);
                  v213 = *v210 + 4 * v212;
                  v214 = *(this + 110) + 8 * v209 * v236;
                  if (v237 == v236)
                  {
                    v215 = 2 * v212;
                    v216 = 0;
                    if (v215)
                    {
                      memmove(v211, (*(this + 110) + 8 * v209 * v236), 4 * v215);
                    }
                  }

                  else
                  {
                    if (v212 && (memmove(v211, (*(this + 110) + 8 * v209 * v236), 4 * v212), v217 = *(this + 136), v217))
                    {
                      memmove(v213, (v214 + 4 * v236), 4 * v217);
                      v218 = *(this + 136);
                    }

                    else
                    {
                      v218 = 0;
                    }

                    v216 = *(v214 + 4 * v218);
                  }

                  *v213 = v216;
                  ++v209;
                  v210 += 2;
                }

                while (v209 < *(this + 166));
              }

              goto LABEL_135;
            }
          }

          goto LABEL_269;
        }

        v238 = (v135 | v136) ^ 1;
      }

      a6 = AUNeuralNet::ProcessFuncCore(this, a3, a5, a7);
      goto LABEL_173;
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v75 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *(&v243.mSampleRate + 5) = 134217984;
      *(&v243.mFormatID + 1) = this;
      v76 = "[%p] gain vector format not supported";
LABEL_140:
      _os_log_error_impl(&dword_1DDB85000, v75, OS_LOG_TYPE_ERROR, v76, &v243.mSampleRate + 5, 0xCu);
    }

    return 4294956428;
  }

  else
  {
    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v77 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *(&v243.mSampleRate + 5) = 134217984;
      *(&v243.mFormatID + 1) = this;
      _os_log_error_impl(&dword_1DDB85000, v77, OS_LOG_TYPE_ERROR, "[%p] input not connected", &v243.mSampleRate + 5, 0xCu);
    }

    return 4294956420;
  }
}

uint64_t AUNeuralNet::GetCurrentLatencyInSamples(AUNeuralNet *this)
{
  if ((*(this + 168) || *(this + 1384) == 1) && *(this + 1372) != 1 || (v1 = *(this + 100), *(v1 + 96) != 1))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 16);
  }

  if (*(this + 1244) == 1)
  {
    v3 = 800;
    if (*(this + 312) == 2)
    {
      v3 = 1264;
    }

    v4 = 20;
    if (*(this + 312) == 2)
    {
      v4 = 92;
    }

    return (*(*(this + v3) + v4) + v2);
  }

  return v2;
}

uint64_t AUNeuralNet::ProcessFuncCore(AUNeuralNet *this, unsigned int a2, const AudioBufferList **a3, AudioBufferList **a4)
{
  v129 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_147;
  }

  v9 = *(Element + 92);
  v10 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v10)
  {
    goto LABEL_147;
  }

  v11 = *(v10 + 92);
  if ((v9 & 0x20) != 0)
  {
    v13 = 1;
  }

  else
  {
    v12 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v12)
    {
      goto LABEL_147;
    }

    v13 = *(v12 + 108);
  }

  v118 = v13;
  if ((v11 & 0x20) == 0)
  {
    v14 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v14)
    {
      v15 = *(v14 + 108);
      goto LABEL_11;
    }

LABEL_147:
    ausdk::Throw(0xFFFFD583);
  }

  v15 = 1;
LABEL_11:
  v116 = v15;
  v117 = *a3;
  v16 = *a4;
  if (*(this + 168))
  {
    *(this + 1245) = 0;
    goto LABEL_27;
  }

  v17 = *(this + 141);
  v18 = *(this + 100);
  v19 = *(this + 1384);
  *(this + 1245) = v19 ^ 1;
  if ((v19 & 1) != 0 || *(this + 676) != 1 || (v20 = v18 + 104 * v17, (*(v20 + 96) & 1) == 0))
  {
LABEL_27:
    if (*(this + 166))
    {
      v120 = v9;
      v28 = 0;
      v29 = a2;
      v30 = v116;
      v31 = 4 * v118;
      v119 = v29;
      v32 = v29;
      while (1)
      {
        v33 = (v11 & 0x20) != 0 ? *(v16 + 8 + 16 * v28 + 8) : (*(v16 + 16) + 4 * v28);
        if (v28 < *(this + 165))
        {
          break;
        }

        vDSP_vclr(v33, v30, v32);
LABEL_48:
        if (++v28 >= *(this + 166))
        {
          return 0;
        }
      }

      if ((v120 & 0x20) != 0)
      {
        v34 = *(v117 + 8 + 16 * v28 + 8);
      }

      else
      {
        v34 = (*(v117 + 16) + 4 * v28);
      }

      if (*(this + 1372) == 1)
      {
        v35 = *(*(this + 132) + 24 * v28);
        memmove(v35, &v35[4 * *(this + 136)], 4 * *(this + 244));
        v36 = *(this + 132);
        if (!v119)
        {
          v34 = *(v36 + 24 * v28);
          v30 = v116;
          if (v34 == v33)
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

        v37 = *(this + 244);
        v38 = *(v36 + 24 * v28);
        v39 = v32;
        do
        {
          v38[v37++] = *v34;
          v34 = (v34 + v31);
          --v39;
        }

        while (v39);
        v34 = v38;
        v30 = v116;
      }

      if (v34 == v33)
      {
        for (i = v119; i; --i)
        {
          *v33 = *v34;
          v33 += v116;
          v34 = (v34 + v31);
        }

        goto LABEL_48;
      }

LABEL_43:
      vDSP_vclr(v33, v30, v32);
      MEMORY[0x1E12BE5D0](v34, v118, v33, v30, v33, v30, v32);
      goto LABEL_48;
    }

    return 0;
  }

  if (*(v20 + 20) == a2)
  {
    v21 = v9;
    for (j = 0; ; ++j)
    {
      v23 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v23)
      {
        goto LABEL_147;
      }

      if (j >= *(v23 + 108))
      {
        if (*(this + 165))
        {
          v43 = 0;
          v44 = 0;
          if (*(this + 1244))
          {
            v45 = (this + 976);
          }

          else
          {
            v45 = (v20 + 16);
          }

          v46 = *v45;
          do
          {
            memmove(*(*(this + 132) + v43), (*(*(this + 132) + v43) + 4 * *(v20 + 20)), 4 * v46);
            memcpy((*(*(this + 132) + v43) + 4 * v46), (*(this + 104) + 4 * (*(v20 + 20) * v44++)), 4 * *(v20 + 20));
            v43 += 24;
          }

          while (v44 < *(this + 165));
        }

        __C = 0.0;
        vDSP_measqv(**(this + 132), 1, &__C, *(this + 136));
        v47 = *(this + 157);
        v48 = *(this + 139);
        *(this + 139) = ((1.0 - v47) * (log10f(__C + 2.2204e-16) * 10.0)) + (v47 * v48);
        v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v50)
        {
          ausdk::AUElement::SetParameter(v49, 3u, *(this + 139));
          v122 = 0;
          if (*(this + 165))
          {
            v51 = 0;
            v52 = 0;
            do
            {
              vDSP_measqv(*(*(this + 132) + v51), 1, &v122, *(this + 136));
              v53 = *(this + 165);
              v54 = *(&v122 + 1) + (*&v122 / v53);
              *(&v122 + 1) = v54;
              ++v52;
              v51 += 24;
            }

            while (v52 < v53);
          }

          else
          {
            v54 = 0.0;
          }

          if ((*(this + 656) & 1) == 0)
          {
            v54 = ((1.0 - *(this + 157)) * v54) + (*(this + 157) * *(this + 151));
          }

          *(this + 151) = v54;
          v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v56)
          {
            ausdk::AUElement::SetParameter(v55, 0x17u, *(this + 151));
            __C = 0.0;
            vDSP_measqv(*(this + 104), 1, &__C, (*(this + 105) - *(this + 104)) >> 2);
            v57 = __C;
            v58 = *(this + 138);
            MEMORY[0x1E12BE940](*(this + 104), 1, this + 548, *(this + 104), 1, (*(this + 105) - *(this + 104)) >> 2);
            AUNeuralNet::ApplyEmbedding(this, v20);
            if (*(this + 600))
            {
              AUNeuralNet::ProcessAUNNModel(this, v20);
              HIDWORD(v122) = 0;
              vDSP_measqv(*(this + 110), 1, &v122 + 1, (*(this + 111) - *(this + 110)) >> 2);
              if (*(this + 656) == 1)
              {
                v59 = *(&v122 + 1);
                *(this + 656) = 0;
              }

              else
              {
                v59 = ((1.0 - *(this + 157)) * *(&v122 + 1)) + (*(this + 157) * *(this + 152));
              }

              *(this + 152) = v59;
              v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v62)
              {
                ausdk::AUElement::SetParameter(v61, 0x18u, *(this + 152));
                *(this + 601) = (*(this + 151) - *(this + 152)) < *(this + 155);
                v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v65)
                {
                  LOBYTE(v64) = *(this + 601);
                  ausdk::AUElement::SetParameter(v63, 0x16u, v64);
                  v66 = *(this + 158);
                  v67 = 0.0;
                  if (v66 != 0.0)
                  {
                    v68 = **(this + 100);
                    v67 = expf(-1.0 / ((v66 * v68) / a2));
                  }

                  v69 = 1.0 - v67;
                  v70 = *(this + 159);
                  if (*(this + 601) == 1)
                  {
                    v71 = *(this + 160);
                    if (v71 == v70)
                    {
                      *(this + 162) = 0;
                    }

                    *(this + 161) = 0;
                    if (!v71)
                    {
                      *(this + 163) = 0;
                    }

                    if (v71 >= v70)
                    {
                      v108 = *(this + 165);
                      v109 = *(this + 166);
                      if (v108 >= v109)
                      {
                        v110 = *(this + 166);
                      }

                      else
                      {
                        v110 = *(this + 165);
                      }

                      if (v110)
                      {
                        v111 = 0;
                        v112 = 0;
                        do
                        {
                          v113 = *(v20 + 20);
                          if (v113)
                          {
                            memmove((*(this + 110) + 4 * (v113 * v112)), *(*(this + 132) + v111), 4 * v113);
                            v108 = *(this + 165);
                            v109 = *(this + 166);
                          }

                          ++v112;
                          if (v108 >= v109)
                          {
                            v114 = v109;
                          }

                          else
                          {
                            v114 = v108;
                          }

                          v111 += 24;
                        }

                        while (v112 < v114);
                      }
                    }

                    else
                    {
                      v72 = (v69 * *(this + 163)) + (v67 * *(this + 162));
                      *(this + 162) = v72;
                      v121 = 1.0 - v72;
                      v73 = *(this + 165);
                      if (v73 >= *(this + 166))
                      {
                        v73 = *(this + 166);
                      }

                      if (v73)
                      {
                        v74 = 0;
                        v75 = 0;
                        do
                        {
                          v76 = *(this + 110) + 4 * (*(v20 + 20) * v75);
                          MEMORY[0x1E12BE930](v76, 1, this + 648, *(*(this + 132) + v74), 1, &v121, v76, 1, *(v20 + 20));
                          ++v75;
                          LODWORD(v77) = *(this + 165);
                          v78 = *(this + 166);
                          if (v77 >= v78)
                          {
                            v77 = v78;
                          }

                          else
                          {
                            v77 = v77;
                          }

                          v74 += 24;
                        }

                        while (v75 < v77);
                        v71 = *(this + 160);
                      }

                      *(this + 160) = v71 + 1;
                    }
                  }

                  else
                  {
                    v100 = *(this + 161);
                    if (v100 == v70)
                    {
                      *(this + 162) = 1065353216;
                    }

                    *(this + 160) = 0;
                    if (!v100)
                    {
                      *(this + 163) = 1065353216;
                    }

                    if (v100 < v70)
                    {
                      v101 = (v69 * *(this + 163)) + (v67 * *(this + 162));
                      *(this + 162) = v101;
                      v121 = 1.0 - v101;
                      v102 = *(this + 165);
                      if (v102 >= *(this + 166))
                      {
                        v102 = *(this + 166);
                      }

                      if (v102)
                      {
                        v103 = 0;
                        v104 = 0;
                        do
                        {
                          v105 = *(this + 110) + 4 * (*(v20 + 20) * v104);
                          MEMORY[0x1E12BE930](v105, 1, this + 648, *(*(this + 132) + v103), 1, &v121, v105, 1, *(v20 + 20));
                          ++v104;
                          LODWORD(v106) = *(this + 165);
                          v107 = *(this + 166);
                          if (v106 >= v107)
                          {
                            v106 = v107;
                          }

                          else
                          {
                            v106 = v106;
                          }

                          v103 += 24;
                        }

                        while (v104 < v106);
                        v100 = *(this + 161);
                      }

                      *(this + 161) = v100 + 1;
                    }
                  }

LABEL_102:
                  v81 = *(v20 + 20);
                  v82 = *(this + 136);
                  if (v81 >= v82)
                  {
                    v83 = *(this + 136);
                  }

                  else
                  {
                    v83 = *(v20 + 20);
                  }

                  v84 = v82 >= v81;
                  v85 = v82 - v81;
                  if (!v84)
                  {
                    v85 = 0;
                  }

                  memcpy((*(this + 135) + 4 * v85), *(this + 110), 4 * v83);
                  vDSP_measqv(*(this + 135), 1, &__C, *(this + 136));
                  v86 = *(this + 157);
                  v87 = *(this + 140);
                  *(this + 140) = ((1.0 - v86) * (log10f(__C + 2.2204e-16) * 10.0)) + (v86 * v87);
                  v88 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v89)
                  {
                    ausdk::AUElement::SetParameter(v88, 4u, *(this + 140));
                    v90 = *(v20 + 20);
                    v91 = *(this + 136);
                    if (v91 > v90)
                    {
                      memcpy(*(this + 135), (*(this + 135) + 4 * v90), 4 * (v91 - v90));
                    }

                    v92 = *(this + 166);
                    if (!v92)
                    {
                      return 0;
                    }

                    v93 = 0;
                    v94 = 0;
                    v95 = *(v20 + 20);
                    while (2)
                    {
                      if ((v11 & 0x20) != 0)
                      {
                        v96 = *(v16 + 8 + 16 * v94 + 8);
                        if (!a2)
                        {
                          goto LABEL_118;
                        }
                      }

                      else
                      {
                        v96 = (*(v16 + 16) + 4 * v94);
                        if (!a2)
                        {
                          goto LABEL_118;
                        }
                      }

                      v97 = *(this + 110);
                      v98 = v93;
                      v99 = a2;
                      do
                      {
                        *v96 = *(v97 + 4 * v98++);
                        v96 += v116;
                        --v99;
                      }

                      while (v99);
LABEL_118:
                      ++v94;
                      v93 += v95;
                      if (v94 == v92)
                      {
                        return 0;
                      }

                      continue;
                    }
                  }
                }
              }
            }

            else
            {
              if (v57 >= v58)
              {
                AUNeuralNet::ProcessAUNNModel(this, v20);
              }

              else
              {
                vDSP_vclr(*(this + 110), 1, (*(this + 111) - *(this + 110)) >> 2);
              }

              HIDWORD(v122) = 0;
              vDSP_measqv(*(this + 110), 1, &v122 + 1, (*(this + 111) - *(this + 110)) >> 2);
              if (*(this + 656) == 1)
              {
                v60 = *(&v122 + 1);
                *(this + 656) = 0;
              }

              else
              {
                v60 = ((1.0 - *(this + 157)) * *(&v122 + 1)) + (*(this + 157) * *(this + 152));
              }

              *(this + 152) = v60;
              v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v80)
              {
                ausdk::AUElement::SetParameter(v79, 0x18u, *(this + 152));
                goto LABEL_102;
              }
            }
          }
        }

        abort();
      }

      if ((v21 & 0x20) != 0)
      {
        v24 = *(v117 + 8 + 16 * j + 8);
        if (!a2)
        {
          continue;
        }
      }

      else
      {
        v24 = (*(v117 + 16) + 4 * j);
        if (!a2)
        {
          continue;
        }
      }

      v25 = *(this + 104);
      v26 = *(v20 + 20) * j;
      v27 = a2;
      do
      {
        *(v25 + 4 * v26++) = *v24;
        v24 += v118;
        --v27;
      }

      while (v27);
    }
  }

  if (getAUNeuralNetLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
  }

  v42 = getAUNeuralNetLog(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v115 = *(v20 + 20);
    __C = 3.8522e-34;
    v124 = this;
    v125 = 1024;
    v126 = v115;
    v127 = 1024;
    v128 = a2;
    _os_log_error_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_ERROR, "[%p] NeuralNet expects input block size %u, and we received %d.", &__C, 0x18u);
  }

  return 4294956422;
}

float AUNeuralNet::ComputeGainMask(AUNeuralNet *this, unsigned int a2, const AudioBufferList *a3, const AudioBufferList *a4)
{
  __C = 0.0;
  if (*(this + 668))
  {
    mData = a3->mBuffers[0].mData;
    vDSP_svesq(mData, 1, &__C, (2 * *(this + 136)));
    v8 = *(this + 136);
    v9 = *(this + 138);
    if (2 * v8)
    {
      memmove(*(this + 138), mData, 4 * (2 * v8));
      v9 = *(this + 138);
      v8 = *(this + 136);
    }

    v10 = &v9[v8];
    LODWORD(__B.realp) = 629145600;
    v11 = *v9;
    v12 = *v10;
    __A.realp = v9 + 1;
    __A.imagp = v10 + 1;
    vDSP_zvabs(&__A, 1, v9 + 1, 1, (v8 - 1));
    *v9 = fabsf(v11);
    *v10 = fabsf(v12);
    vDSP_vthr(v9, 1, &__B, v9, 1, (v8 + 1));
    if (*(this + 166))
    {
      v13 = 0;
      v14 = 0;
      p_mData = &a4->mBuffers[0].mData;
      do
      {
        v16 = *p_mData;
        p_mData += 2;
        vDSP_svesq(v16, 1, (*(this + 165) + v13), (2 * *(this + 136)));
        v17 = *(this + 136);
        v18 = &v16[4 * v17];
        v19 = *v16;
        v20 = *(this + 141);
        v21 = *v18;
        __A.realp = (v16 + 4);
        __A.imagp = v18 + 1;
        vDSP_zvabs(&__A, 1, v20 + 1, 1, (v17 - 1));
        *v20 = fabsf(v19);
        v20[v17] = fabsf(v21);
        vDSP_vdiv(*(this + 138), 1, *(this + 141), 1, (*(this + 113) + 4 * ((*(this + 136) + 1) * v14++)), 1, (*(this + 136) + 1));
        v13 += 4;
      }

      while (v14 < *(this + 166));
    }

    return __C;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_35;
  }

  v24 = *(Element + 92);
  v25 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v25)
  {
    goto LABEL_35;
  }

  v26 = *(v25 + 92);
  if ((v24 & 0x20) != 0)
  {
    v28 = 1;
    if ((v26 & 0x20) != 0)
    {
LABEL_13:
      v29 = 1;
      if (a2)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v27 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v27)
    {
      goto LABEL_35;
    }

    v28 = *(v27 + 108);
    if ((v26 & 0x20) != 0)
    {
      goto LABEL_13;
    }
  }

  v33 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v33)
  {
LABEL_35:
    ausdk::Throw(0xFFFFD583);
  }

  v29 = *(v33 + 108);
  if (a2)
  {
LABEL_14:
    v30 = 0;
    v31 = a3->mBuffers[0].mData;
    v32 = *(this + 126);
    do
    {
      *&v32[v30] = *v31;
      v30 += 4;
      v31 += v28;
    }

    while (4 * a2 != v30);
    goto LABEL_21;
  }

LABEL_20:
  v32 = *(this + 126);
LABEL_21:
  memcpy((*(this + 123) + 4 * *(this + 244)), v32, 4 * *(this + 136));
  v34 = *(this + 136);
  __A.realp = *(this + 138);
  __A.imagp = &__A.realp[v34];
  v35 = __A.realp + 1;
  __B.realp = __A.realp + 1;
  __B.imagp = __A.imagp + 1;
  v36 = *(this + 144);
  if (v36)
  {
    VPTimeFreqConverter::Analyze(v36, *(this + 123), &__A);
    LODWORD(v34) = *(this + 136);
  }

  vDSP_zvabs(&__B, 1, v35, 1, (v34 - 1));
  realp = __A.realp;
  *__A.realp = fabsf(*__A.realp);
  *__A.imagp = fabsf(*__A.imagp);
  vDSP_vthr(realp, 1, &AUNeuralNet::eps, realp, 1, (*(this + 136) + 1));
  if (*(this + 166))
  {
    v38 = 0;
    v39 = 4 * v29;
    do
    {
      if ((v26 & 0x20) != 0)
      {
        v40 = a4->mBuffers[v38].mData;
      }

      else
      {
        v40 = (a4->mBuffers[0].mData + 4 * v38);
      }

      v41 = *(this + 129);
      v42 = v41;
      v43 = a2;
      if (a2)
      {
        do
        {
          *v42++ = *v40;
          v40 = (v40 + v39);
          --v43;
        }

        while (v43);
      }

      vDSP_svesq(v41, 1, (*(this + 165) + 4 * v38), *(this + 136));
      v44 = *(this + 136);
      v50.realp = *(this + 141);
      v50.imagp = &v50.realp[v44];
      v45 = v50.realp + 1;
      v49.realp = v50.realp + 1;
      v49.imagp = v50.imagp + 1;
      v46 = *(*(this + 145) + 8 * v38);
      if (v46)
      {
        VPTimeFreqConverter::Analyze(v46, *(this + 129), &v50);
        v45 = v49.realp;
        LODWORD(v44) = *(this + 136);
      }

      vDSP_zvabs(&v49, 1, v45, 1, (v44 - 1));
      v47 = v50.realp;
      *v50.realp = fabsf(*v50.realp);
      *v50.imagp = fabsf(*v50.imagp);
      vDSP_vdiv(__A.realp, 1, v47, 1, (*(this + 113) + 4 * ((*(this + 136) + 1) * v38++)), 1, (*(this + 136) + 1));
    }

    while (v38 < *(this + 166));
  }

  vDSP_svesq(*(this + 123), 1, &__C, *(this + 136));
  memmove(*(this + 123), (*(this + 123) + 4 * *(this + 136)), 4 * *(this + 244));
  return __C;
}

uint64_t AUNeuralNet::ApplyEmbedding(uint64_t a1, uint64_t a2)
{
  result = caulk::pooled_semaphore_mutex::try_lock((a1 + 1240));
  if (!result)
  {
    return result;
  }

  if (*(a1 + 592) == 1)
  {
    v5 = (*(**(a2 + 64) + 56))(*(a2 + 64), a1 + 856);
LABEL_7:
    v6 = v5;
    if (v5)
    {
      v7 = _os_log_pack_size();
      message = caulk::deferred_logger::create_message(*(a1 + 528), v7 + 88, 16);
      if (message)
      {
        v9 = message;
        v10 = _os_log_pack_fill();
        *v10 = 67109120;
        v10[1] = v6;
        caulk::concurrent::messenger::enqueue(*(*(a1 + 528) + 16), v9);
      }
    }

    goto LABEL_10;
  }

  if (*(a1 + 593) == 1)
  {
    v5 = (*(**(a2 + 64) + 64))(*(a2 + 64), 0.0);
    goto LABEL_7;
  }

LABEL_10:

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 1240));
}

void AUNeuralNet::ProcessAUNNModel(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a2 + 64) + 72))(*(a2 + 64), a1 + 832);
  v5 = *(a1 + 664);
  if (v5 * *(a2 + 20))
  {
    memmove(*(a1 + 880), *v4, 4 * (v5 * *(a2 + 20)));
  }

  vDSP_vsdiv(*(a1 + 880), 1, (a1 + 548), *(a1 + 880), 1, (*(a1 + 888) - *(a1 + 880)) >> 2);
  v6 = *(a1 + 572);
  v10 = 1.0 - v6;
  if (*(a1 + 664) == 1 && v6 > 0.00001)
  {
    MEMORY[0x1E12BE930](**(a1 + 1056), 1, a1 + 572, *(a1 + 880), 1, &v10, *(a1 + 880), 1, (*(a1 + 888) - *(a1 + 880)) >> 2);
  }

  else if (*(a2 + 24) >= 2u && *(a2 + 8) == 1 && *(a2 + 12) == 1 && v6 > 0.00001 && *(a1 + 660))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(a1 + 880) + 4 * (*(a2 + 20) * v8);
      MEMORY[0x1E12BE930](*(*(a1 + 1056) + v7), 1, a1 + 572, v9, 1, &v10, v9, 1, *(a2 + 20));
      ++v8;
      v7 += 24;
    }

    while (v8 < *(a1 + 660));
  }
}

os_log_t ___Z17getAUNeuralNetLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUNeuralNet");
  getAUNeuralNetLog(void)::gLog = result;
  return result;
}

uint64_t AUNeuralNet::SetParameter(AUNeuralNet *this, uint64_t a2, int a3, unsigned int a4, float a5)
{
  if (a3)
  {
    return 4294956418;
  }

  v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v11 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v10, a2, a5);
  (*(*this + 256))(this, 0, a2, this + 696);
  if (a2 == 20)
  {
    v12 = *(this + 107);
    if (*(*(this + 100) + 104 * *(this + 141) + 28) > a4 && (*(this + 108) - v12) >> 2 > a4)
    {
      result = 0;
      *(v12 + 4 * a4) = a5;
    }

    else
    {
      return 4294956419;
    }
  }

  else if (a2 == 5 || (*(this + 198) & 0x8000) == 0)
  {
    result = 0;
    ++*(this + 85);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t AUNeuralNet::SetProperty(AUNeuralNet *this, int a2, int a3, unsigned int a4, CFTypeRef *__src, size_t __n)
{
  v98 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  v8 = __n;
  v6 = 4294956417;
  if (a2 <= 103669)
  {
    if (a2 > 3695)
    {
      if (a2 > 3697)
      {
        if (a2 != 3698)
        {
          if (a2 != 3700)
          {
            if (a2 != 40000)
            {
              return v6;
            }

            if ((*(this + 17) & 1) == 0)
            {
              if (__n == 8)
              {
                if (__src)
                {
                  v11 = *__src;
                  applesauce::CF::details::Retain<__CFString const*>(*__src);
                  applesauce::CF::StringRef::StringRef(__p, v11);
                  v12 = *(this + 148);
                  *(this + 148) = __p[0];
                  __p[0] = v12;
                  applesauce::CF::StringRef::~StringRef(__p);
                  if (getAUNeuralNetLog(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
                  }

                  v13 = getAUNeuralNetLog(void)::gLog;
                  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
                  {
                    applesauce::CF::convert_to<std::string,0>(__p, *(this + 148));
                    if (SHIBYTE(__p[2]) >= 0)
                    {
                      v14 = __p;
                    }

                    else
                    {
                      v14 = __p[0];
                    }

                    LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
                    *(buf.__r_.__value_.__r.__words + 4) = this;
                    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                    *(&buf.__r_.__value_.__r.__words[1] + 6) = v14;
                    _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_INFO, "[%p] ModelNetPathBase is overriden to %s", &buf, 0x16u);
                    if (SHIBYTE(__p[2]) < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }

                  return 0;
                }

                v78 = *(this + 148);
                *(this + 148) = 0;
                __p[0] = v78;
                applesauce::CF::StringRef::~StringRef(__p);
                if (getAUNeuralNetLog(void)::onceToken != -1)
                {
                  dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
                }

                v79 = getAUNeuralNetLog(void)::gLog;
                if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
                {
                  return 0;
                }

                LODWORD(__p[0]) = 134217984;
                *(__p + 4) = this;
                v70 = "[%p] ModelNetPathBaseOverride is set to null and thus removed";
                v71 = v79;
                v72 = 12;
LABEL_208:
                _os_log_impl(&dword_1DDB85000, v71, OS_LOG_TYPE_INFO, v70, __p, v72);
                return 0;
              }

              return 4294956445;
            }

            return 4294956447;
          }

          v6 = 4294956445;
          if (__n >= 4)
          {
            if (*__src)
            {
              return 0;
            }

            else
            {
              return 4294956445;
            }
          }

          return v6;
        }

        goto LABEL_188;
      }

      if (a2 == 3696)
      {
        if ((*(this + 17) & 1) == 0)
        {
          v63 = *(this + 84);
          if (__n == 4 * (v63 + 1))
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(this + 160, __src, __src + 4 * v63 + 4, (4 * v63 + 4) >> 2);
            return 0;
          }

          return 4294956445;
        }

        return 4294956447;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      if (__src && __n == 8)
      {
        applesauce::CF::DictionaryRef::from_get(__p, *__src);
        v21 = *(this + 149);
        *(this + 149) = __p[0];
        __p[0] = v21;
        applesauce::CF::DictionaryRef::~DictionaryRef(__p);
        for (i = 0; i != 624; i += 104)
        {
          v23 = *(this + 100) + i;
          if (*(v23 + 96) == 1)
          {
            NeuralNet::~NeuralNet((v23 + 64));
            *(v23 + 96) = 0;
            v95 = 0;
            LOBYTE(v94[0]) = 0;
            memset(__p, 0, sizeof(__p));
            v24 = *(this + 100) + i;
            *v24 = 0u;
            *(v24 + 16) = 0u;
            if (*(v24 + 55) < 0)
            {
              operator delete(*(v24 + 32));
            }

            v25 = *&__p[4];
            *(v24 + 48) = __p[6];
            *(v24 + 32) = v25;
            HIBYTE(__p[6]) = 0;
            LOBYTE(__p[4]) = 0;
            v26 = *(v24 + 56);
            *(v24 + 56) = __p[7];
            __p[7] = v26;
            std::__optional_storage_base<NeuralNet,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<NeuralNet,false>>((v24 + 64), v94);
            if (v95 == 1)
            {
              NeuralNet::~NeuralNet(v94);
            }

            if (__p[7])
            {
              CFRelease(__p[7]);
            }

            if (SHIBYTE(__p[6]) < 0)
            {
              operator delete(__p[4]);
            }
          }
        }

        v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v28 & 1) == 0)
        {
          abort();
        }

        ausdk::AUElement::SetParameter(v27, 0, 0.0);
        v29 = 0;
        v30 = 56;
        *(this + 206) = 0;
        while (1)
        {
          std::to_string(&buf, v29);
          v31 = std::string::insert(&buf, 0, "Model_", 6uLL);
          v32 = *&v31->__r_.__value_.__l.__data_;
          __p[2] = v31->__r_.__value_.__r.__words[2];
          *__p = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p[2]) >= 0)
          {
            v33 = __p;
          }

          else
          {
            v33 = __p[0];
          }

          v34 = CFStringCreateWithCString(0, v33, 0x8000100u);
          if (getAUNeuralNetLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
          }

          v35 = getAUNeuralNetLog(void)::gLog;
          if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
          {
            v36 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v36 = __p[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
            *(buf.__r_.__value_.__r.__words + 4) = this;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v36;
            _os_log_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_INFO, "[%p] Searching plist for model named (%s)...", &buf, 0x16u);
          }

          v37 = CFDictionaryContainsKey(*(this + 149), v34);
          if (v37)
          {
            if (getAUNeuralNetLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
            }

            v38 = getAUNeuralNetLog(void)::gLog;
            if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
            {
              v39 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                v39 = __p[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
              *(buf.__r_.__value_.__r.__words + 4) = this;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v39;
              _os_log_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_INFO, "[%p] Found model named (%s)...", &buf, 0x16u);
            }

            Value = CFDictionaryGetValue(*(this + 149), v34);
            v41 = Value;
            if (Value)
            {
              CFRetain(Value);
              buf.__r_.__value_.__r.__words[0] = v41;
              v42 = CFGetTypeID(v41);
              if (v42 != CFDictionaryGetTypeID())
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not construct");
              }
            }

            v43 = *(this + 100);
            v44 = *(v43 + v30);
            *(v43 + v30) = v41;
            buf.__r_.__value_.__r.__words[0] = v44;
            if (v44)
            {
              CFRelease(v44);
            }

            CFRelease(v34);
            v45 = v29 + 1;
          }

          else
          {
            if (getAUNeuralNetLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
            }

            v46 = getAUNeuralNetLog(void)::gLog;
            if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
            {
              v47 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                v47 = __p[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
              *(buf.__r_.__value_.__r.__words + 4) = this;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v47;
              _os_log_impl(&dword_1DDB85000, v46, OS_LOG_TYPE_INFO, "[%p] Did not find model named (%s)...", &buf, 0x16u);
            }

            CFRelease(v34);
            if (v29)
            {
              goto LABEL_108;
            }

            if (getAUNeuralNetLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
            }

            v49 = getAUNeuralNetLog(void)::gLog;
            if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
              *(buf.__r_.__value_.__r.__words + 4) = this;
              _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_INFO, "[%p] Assuming 1 un-named model exists in the plist", &buf, 0xCu);
            }

            applesauce::CF::DictionaryRef::from_get(&buf, *__src);
            v50 = *(this + 100);
            v51 = *(v50 + 56);
            *(v50 + 56) = buf.__r_.__value_.__r.__words[0];
            buf.__r_.__value_.__r.__words[0] = v51;
            if (v51)
            {
              CFRelease(v51);
            }

            v45 = 1;
          }

          *(this + 206) = v45;
LABEL_108:
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          if (v37)
          {
            v30 += 104;
            if (v29++ != 5)
            {
              continue;
            }
          }

          if (getAUNeuralNetLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
          }

          v68 = getAUNeuralNetLog(void)::gLog;
          if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
          {
            v69 = *(this + 206);
            LODWORD(__p[0]) = 134218240;
            *(__p + 4) = this;
            WORD2(__p[1]) = 1024;
            *(&__p[1] + 6) = v69;
            v70 = "[%p] Finished finding models. Found (%u) models";
            goto LABEL_183;
          }

          return 0;
        }
      }

      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v18 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      LODWORD(__p[0]) = 134217984;
      *(__p + 4) = this;
      v19 = "[%p] The NeuralNetPlist passed to SetProperty is not CFDictionaryRef type or it's null.";
LABEL_177:
      v66 = v18;
      v67 = 12;
      goto LABEL_178;
    }

    if (a2 > 3693)
    {
      if (a2 == 3694)
      {
        if (__n == 4)
        {
          v6 = 0;
          *(this + 328) = *__src;
          return v6;
        }

        return 4294956445;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      if (__n != 4)
      {
        return 4294956445;
      }

      if (*__src < 5u)
      {
        v6 = 0;
        *(this + 318) = *__src;
        return v6;
      }

      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v18 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      LODWORD(__p[0]) = 134217984;
      *(__p + 4) = this;
      v19 = "[%p] Bad Property Value for Speech Mask selection";
      goto LABEL_177;
    }

    if (a2 == 21)
    {
      if (__n >= 4)
      {
        v6 = 0;
        *(this + 168) = *__src;
        return v6;
      }

      return 4294956445;
    }

    if (a2 != 3670)
    {
      return v6;
    }

    v15 = *(this + 107);
    if (*(this + 108) - v15 == __n)
    {
      memcpy(v15, __src, __n);
      return 0;
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v64 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v65 = (*(this + 108) - *(this + 107));
      LODWORD(__p[0]) = 134218496;
      *(__p + 4) = this;
      WORD2(__p[1]) = 2048;
      *(&__p[1] + 6) = v8;
      HIWORD(__p[2]) = 2048;
      __p[3] = v65;
      v19 = "[%p] Input size of EmbeddingVector  (%lu) is not equal to the the expected size  (%lu).";
LABEL_171:
      v66 = v64;
      v67 = 32;
      goto LABEL_178;
    }

    return 4294956445;
  }

  if (a2 <= 103999)
  {
    if (a2 > 103799)
    {
      if (a2 != 103800)
      {
        if (a2 != 103801)
        {
          return v6;
        }

        if (__n != 4)
        {
          return 4294956445;
        }

        v20 = *__src;
        if ((*(this + 1417) & 1) == 0)
        {
          *(this + 1417) = 1;
        }

        v6 = 0;
        *(this + 1416) = v20 != 0;
        return v6;
      }

      if (__src && __n == 8)
      {
        if (*(this + 17))
        {
          return 4294956447;
        }

        v57 = *(this + 100);
        if (*(this + 101) != v57 && *(v57 + 56))
        {
          applesauce::CF::DictionaryRef::from_get(__p, *__src);
          v58 = *(this + 150);
          *(this + 150) = __p[0];
          __p[0] = v58;
          applesauce::CF::DictionaryRef::~DictionaryRef(__p);
          return 0;
        }

        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }

        v73 = getAUNeuralNetLog(void)::gLog;
        if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 134217984;
          *(__p + 4) = this;
          _os_log_error_impl(&dword_1DDB85000, v73, OS_LOG_TYPE_ERROR, "[%p] No model found in plist. Cannot set NeuralNetBNNSData_CF before NeuralNetPlist", __p, 0xCu);
        }

LABEL_188:
        if (*(this + 17))
        {
          return 4294956447;
        }

        if (v8 != 4)
        {
          return 4294956445;
        }

        v74 = *__src;
        if (*__src <= 2u)
        {
          v6 = 0;
          *(this + 312) = v74;
          return v6;
        }

        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }

        v75 = getAUNeuralNetLog(void)::gLog;
        if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          return 4294956445;
        }

        LODWORD(__p[0]) = 134218240;
        *(__p + 4) = this;
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = v74;
        v19 = "[%p] Received invalid block processor type value %u";
        v66 = v75;
        v67 = 18;
LABEL_178:
        _os_log_error_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_ERROR, v19, __p, v67);
        return 4294956445;
      }

      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v18 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      LODWORD(__p[0]) = 134217984;
      *(__p + 4) = this;
      v19 = "[%p] The NeuralNetBNNSData_CF passed to SetProperty is not CFDictionaryRef type or it's null.";
      goto LABEL_177;
    }

    if (a2 != 103670)
    {
      if (a2 != 103696)
      {
        return v6;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      if (__n == 8)
      {
        v16 = *__src;
        LODWORD(__N) = 0;
        if (AUNeuralNetLogScope(void)::once != -1)
        {
          dispatch_once(&AUNeuralNetLogScope(void)::once, &__block_literal_global_4058);
        }

        buf.__r_.__value_.__r.__words[0] = AUNeuralNetLogScope(void)::scope;
        DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&buf, v16, @"Size", &__N);
        if (__N)
        {
          LODWORD(__p[0]) = 1065353216;
          std::vector<float>::assign(this + 160, __N, __p, v17);
          if (DictionaryBlobReader::ReadVectorFromDictionary(&buf, v16, @"Mask", this + 160))
          {
            LODWORD(__p[0]) = 1065353216;
            vDSP_vfill(__p, *(this + 160), 1, __N);
            *(this + 326) = 1.0 / __N;
          }

          else
          {
            vDSP_sve(*(this + 160), 1, this + 326, (*(this + 161) - *(this + 160)) >> 2);
            v81 = 1.0 / (*(this + 326) + 1.0e-20);
            *(this + 326) = v81;
          }

          if (getAUNeuralNetLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
          }

          v82 = getAUNeuralNetLog(void)::gLog;
          if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
          {
            LODWORD(__p[0]) = 134218240;
            *(__p + 4) = this;
            WORD2(__p[1]) = 1024;
            *(&__p[1] + 6) = __N;
            _os_log_impl(&dword_1DDB85000, v82, OS_LOG_TYPE_INFO, "[%p] Weighting for Speech Probability mask has %d elements", __p, 0x12u);
          }

          if (!DictionaryBlobReader::ReadScalarFromDictionary<float>(&buf, v16, @"SmoothingFactor", kCFNumberFloatType, this + 1356))
          {
            if (getAUNeuralNetLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
            }

            v83 = getAUNeuralNetLog(void)::gLog;
            if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
            {
              v84 = *(this + 339);
              LODWORD(__p[0]) = 134218240;
              *(__p + 4) = this;
              WORD2(__p[1]) = 2048;
              *(&__p[1] + 6) = *&v84;
              _os_log_impl(&dword_1DDB85000, v83, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved SmoothingFactor (%f).", __p, 0x16u);
            }
          }

          if (!DictionaryBlobReader::ReadScalarFromDictionary<float>(&buf, v16, @"ProbabilityThreshold", kCFNumberFloatType, this + 1360))
          {
            if (getAUNeuralNetLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
            }

            v85 = getAUNeuralNetLog(void)::gLog;
            if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
            {
              v86 = *(this + 340);
              LODWORD(__p[0]) = 134218240;
              *(__p + 4) = this;
              WORD2(__p[1]) = 2048;
              *(&__p[1] + 6) = *&v86;
              _os_log_impl(&dword_1DDB85000, v85, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved ProbabilityThreshold (%f).", __p, 0x16u);
            }
          }

          if (!DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&buf, v16, @"HangoverOnSetFrames", this + 1364))
          {
            if (getAUNeuralNetLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
            }

            v87 = getAUNeuralNetLog(void)::gLog;
            if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
            {
              v88 = *(this + 341);
              LODWORD(__p[0]) = 134218240;
              *(__p + 4) = this;
              WORD2(__p[1]) = 1024;
              *(&__p[1] + 6) = v88;
              _os_log_impl(&dword_1DDB85000, v87, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved HangoverOnSetFrames (%u).", __p, 0x12u);
            }
          }

          if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&buf, v16, @"HangoverOffSetFrames", this + 1368))
          {
            return 0;
          }

          if (getAUNeuralNetLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
          }

          v68 = getAUNeuralNetLog(void)::gLog;
          if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
          {
            return 0;
          }

          v89 = *(this + 342);
          LODWORD(__p[0]) = 134218240;
          *(__p + 4) = this;
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = v89;
          v70 = "[%p] Successfully retrieved HangoverOffSetFrames (%u).";
LABEL_183:
          v71 = v68;
          v72 = 18;
          goto LABEL_208;
        }
      }

      return 4294956445;
    }

    if (__n != 8)
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v64 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      LODWORD(__p[0]) = 134218496;
      *(__p + 4) = this;
      WORD2(__p[1]) = 2048;
      *(&__p[1] + 6) = v8;
      HIWORD(__p[2]) = 2048;
      __p[3] = 8;
      v19 = "[%p] Input size of EmbeddingVector_CF is not expected size (%lu) != (%lu)";
      goto LABEL_171;
    }

    v52 = *__src;
    applesauce::CF::details::Retain<__CFArray const*>(*__src);
    applesauce::CF::ArrayRef::ArrayRef(&__N, v52);
    applesauce::CF::ArrayRef_proxy::ArrayRef_proxy(__p, &__N);
    applesauce::CF::convert_as<std::vector<float>,0>(&buf, *__p[0]);
    applesauce::CF::ArrayRef::~ArrayRef(&__N);
    if ((v97 & 1) == 0)
    {
      return 4294956445;
    }

    if (*(this + 17))
    {
      v53 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
      if (*(this + 108) - *(this + 107) == buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0])
      {
        caulk::pooled_semaphore_mutex::_lock((this + 1240));
        v54 = (this + 856);
        v55 = *(this + 107);
        if (v55)
        {
          *(this + 108) = v55;
          operator delete(v55);
          *v54 = 0;
          *(this + 108) = 0;
          *(this + 109) = 0;
        }

        *v54 = *&buf.__r_.__value_.__l.__data_;
        *(this + 109) = *(&buf.__r_.__value_.__l + 2);
        memset(&buf, 0, sizeof(buf));
        caulk::pooled_semaphore_mutex::_unlock((this + 1240));
        v56 = 0;
        v6 = 0;
        goto LABEL_215;
      }

      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v80 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v90 = (*(this + 108) - *(this + 107)) >> 2;
        LODWORD(__p[0]) = 134219008;
        *(__p + 4) = this;
        WORD2(__p[1]) = 2048;
        *(&__p[1] + 6) = 8;
        HIWORD(__p[2]) = 2048;
        __p[3] = 8;
        LOWORD(__p[4]) = 2048;
        *(&__p[4] + 2) = v90;
        WORD1(__p[5]) = 2048;
        *(&__p[5] + 4) = (v53 >> 2);
        _os_log_error_impl(&dword_1DDB85000, v80, OS_LOG_TYPE_ERROR, "[%p] Input size of EmbeddingVector (%lu) is not equal to the the expected size  (%lu) or (%lu) is not equal to (%lu).", __p, 0x34u);
      }

      v77 = 4294956445;
    }

    else
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v76 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        LODWORD(__p[0]) = 134217984;
        *(__p + 4) = this;
        _os_log_impl(&dword_1DDB85000, v76, OS_LOG_TYPE_INFO, "[%p] AU not initialized: Cache embedding vector", __p, 0xCu);
      }

      std::optional<std::vector<float>>::operator=[abi:ne200100]<std::vector<float>,void>(this + 1208, &buf);
      v77 = 0;
      v6 = 0;
      if ((v97 & 1) == 0)
      {
        return v6;
      }
    }

    v56 = buf.__r_.__value_.__r.__words[0];
    v6 = v77;
LABEL_215:
    if (v56)
    {
      operator delete(v56);
    }

    return v6;
  }

  if (a2 <= 104001)
  {
    if (a2 == 104000)
    {
      if ((*(this + 17) & 1) == 0)
      {
        if (__n == 4)
        {
          v6 = 0;
          *(this + 1372) = *__src != 0;
          return v6;
        }

        return 4294956445;
      }
    }

    else if ((*(this + 17) & 1) == 0)
    {
      if (__n == 4)
      {
        v6 = 0;
        *(this + 158) = *__src;
        return v6;
      }

      return 4294956445;
    }

    return 4294956447;
  }

  if (a2 == 104002)
  {
    if ((*(this + 17) & 1) == 0)
    {
      if (__n == 4)
      {
        v6 = 0;
        v62 = *__src;
        *(this + 159) = *__src;
        *(this + 160) = v62;
        *(this + 161) = v62;
        *(this + 656) = 1;
        return v6;
      }

      return 4294956445;
    }

    return 4294956447;
  }

  if (a2 != 104003)
  {
    if (a2 != 104004)
    {
      return v6;
    }

    if ((*(this + 17) & 1) == 0)
    {
      if (__n == 4 && *__src > 0.0)
      {
        v6 = 0;
        *(this + 344) = *__src;
        return v6;
      }

      return 4294956445;
    }

    return 4294956447;
  }

  if (__n != 4)
  {
    return 4294956445;
  }

  if (*(this + 1384) == 1)
  {
    v59 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(*(this + 66), v59 + 88, 16);
    if (message)
    {
      v61 = message;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(*(this + 66) + 16), v61);
    }

    return 0;
  }

  v6 = 0;
  *(this + 345) = *__src;
  return v6;
}

void sub_1DDCB9F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef applesauce::CF::details::Retain<__CFArray const*>(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

applesauce::CF::ArrayRef *applesauce::CF::ArrayRef::ArrayRef(applesauce::CF::ArrayRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

{
  if (cf)
  {
    CFRetain(cf);
  }

  *this = cf;
  return this;
}

{
  if (cf)
  {
    CFRetain(cf);
  }

  *this = cf;
  return this;
}

void sub_1DDCBA078(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::ArrayRef_proxy::ArrayRef_proxy(void *this, const applesauce::CF::ArrayRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

void applesauce::CF::convert_as<std::vector<float>,0>(uint64_t a1, const __CFArray *a2)
{
  if (a2 && (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(a2)))
  {
    Count = CFArrayGetCount(a2);
    memset(&v19, 0, sizeof(v19));
    std::vector<unsigned int>::reserve(&v19, Count);
    if (Count <= 0)
    {
      end = v19.__end_;
LABEL_22:
      value = v19.__end_cap_.__value_;
      *a1 = v19.__begin_;
      *(a1 + 8) = end;
      *(a1 + 16) = value;
      *(a1 + 24) = 1;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        v8 = applesauce::CF::convert_as<float,0>(ValueAtIndex);
        if (!HIDWORD(v8))
        {
          break;
        }

        v9 = v19.__end_;
        if (v19.__end_ >= v19.__end_cap_.__value_)
        {
          begin = v19.__begin_;
          v12 = v19.__end_ - v19.__begin_;
          v13 = v19.__end_ - v19.__begin_;
          v14 = v13 + 1;
          if ((v13 + 1) >> 62)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v15 = v19.__end_cap_.__value_ - v19.__begin_;
          if ((v19.__end_cap_.__value_ - v19.__begin_) >> 1 > v14)
          {
            v14 = v15 >> 1;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v16 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](&v19, v16);
          }

          *(4 * v13) = v8;
          end = (4 * v13 + 4);
          memcpy(0, begin, v12);
          v17 = v19.__begin_;
          v19.__begin_ = 0;
          v19.__end_ = end;
          v19.__end_cap_.__value_ = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v19.__end_ = v8;
          end = v9 + 1;
        }

        v19.__end_ = end;
        if ((Count & 0x7FFFFFFF) == ++v6)
        {
          goto LABEL_22;
        }
      }

      *a1 = 0;
      *(a1 + 24) = 0;
      if (v19.__begin_)
      {
        v19.__end_ = v19.__begin_;
        operator delete(v19.__begin_);
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

uint64_t std::optional<std::vector<float>>::operator=[abi:ne200100]<std::vector<float>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t AUNeuralNet::GetProperty(AUNeuralNet *this, int a2, int a3, unsigned int a4, CFArrayRef *__dst)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 103669)
  {
    if (a2 <= 103800)
    {
      if (a2 > 103798)
      {
        if (a2 != 103799)
        {
          v19 = *(this + 150);
          if (!v19)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        if (*(this + 166) <= a4)
        {
          if (getAUNeuralNetLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
          }

          v25 = getAUNeuralNetLog(void)::gLog;
          if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            return 4294956419;
          }

          goto LABEL_65;
        }

        v23 = *(this + 136) + 1;
        v12 = v23 * a4;
        v13 = v23 + v23 * a4;
        v14 = *(this + 119);
      }

      else
      {
        if (a2 == 103670)
        {
          CFArray = applesauce::CF::details::make_CFArrayRef<float>(this + 107);
          result = 0;
          *__dst = CFArray;
          return result;
        }

        if (a2 != 103699)
        {
          return result;
        }

        if (*(this + 166) <= a4)
        {
          if (getAUNeuralNetLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
          }

          v25 = getAUNeuralNetLog(void)::gLog;
          if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            return 4294956419;
          }

          goto LABEL_61;
        }

        v11 = *(this + 136) + 1;
        v12 = v11 * a4;
        v13 = v11 + v11 * a4;
        v14 = *(this + 113);
      }

      goto LABEL_51;
    }

    if (a2 > 104003)
    {
      if (a2 != 104004)
      {
        if (a2 != 1036999)
        {
          return result;
        }

        if (*(this + 166) <= a4)
        {
          if (getAUNeuralNetLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
          }

          v25 = getAUNeuralNetLog(void)::gLog;
          if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            return 4294956419;
          }

          goto LABEL_84;
        }

        v20 = *(this + 136);
        v12 = v20 * a4;
        v13 = v20 * a4 + v20;
        v14 = *(this + 116);
LABEL_51:
        *v30 = 0;
        *__dst = applesauce::CF::details::make_CFArrayRef<float,float *>((v14 + 4 * v12), (v14 + 4 * v13));
        applesauce::CF::ArrayRef::~ArrayRef(v30);
        return 0;
      }

      result = 0;
      v18 = *(this + 344);
    }

    else
    {
      if (a2 == 103801)
      {
        if (*(this + 1417) == 1)
        {
          v21 = *(this + 1416);
        }

        else
        {
          v21 = 0;
        }

        result = 0;
        goto LABEL_76;
      }

      if (a2 != 104003)
      {
        return result;
      }

      result = 0;
      v18 = *(this + 345);
    }

    *__dst = v18;
    return result;
  }

  if (a2 > 3699)
  {
    if (a2 <= 36998)
    {
      if (a2 == 3700)
      {
        result = 0;
        v21 = *(this + 376);
        goto LABEL_76;
      }

      if (a2 != 3799)
      {
        return result;
      }

      if (*(this + 166) > a4)
      {
        v15 = *(this + 136) + 1;
        v16 = v15 * a4;
        v17 = *(this + 119);
LABEL_29:
        v9 = (v17 + 4 * v16);
        v10 = 4 * v15;
        goto LABEL_54;
      }

      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v25 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956419;
      }

LABEL_65:
      v28 = *(this + 166);
      *v30 = 134218496;
      *&v30[4] = this;
      v31 = 1024;
      v32 = a4;
      v33 = 1024;
      v34 = v28;
      v27 = "[%p] Tried to select a postmask indexed at (%u), but only (%u) masks are available";
      goto LABEL_85;
    }

    if (a2 != 36999)
    {
      if (a2 != 40000)
      {
        return result;
      }

      v19 = *(this + 148);
      if (!v19)
      {
        goto LABEL_48;
      }

LABEL_47:
      CFRetain(v19);
      goto LABEL_48;
    }

    if (*(this + 166) > a4)
    {
      v24 = *(this + 136);
      v9 = (*(this + 116) + 4 * (v24 * a4));
      v10 = 4 * v24;
      goto LABEL_54;
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v25 = getAUNeuralNetLog(void)::gLog;
    if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956419;
    }

LABEL_84:
    v29 = *(this + 166);
    *v30 = 134218496;
    *&v30[4] = this;
    v31 = 1024;
    v32 = a4;
    v33 = 1024;
    v34 = v29;
    v27 = "[%p] Tried to select a VP mask indexed at (%u), but only (%u) masks are available";
    goto LABEL_85;
  }

  if (a2 > 3696)
  {
    if (a2 != 3697)
    {
      if (a2 != 3699)
      {
        return result;
      }

      if (*(this + 166) > a4)
      {
        v15 = *(this + 136) + 1;
        v16 = v15 * a4;
        v17 = *(this + 113);
        goto LABEL_29;
      }

      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v25 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
LABEL_61:
        v26 = *(this + 166);
        *v30 = 134218496;
        *&v30[4] = this;
        v31 = 1024;
        v32 = a4;
        v33 = 1024;
        v34 = v26;
        v27 = "[%p] Tried to select a mask indexed at (%u), but only (%u) masks are available";
LABEL_85:
        _os_log_error_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, v27, v30, 0x18u);
      }

      return 4294956419;
    }

    v19 = *(this + 149);
    if (v19)
    {
      goto LABEL_47;
    }

LABEL_48:
    result = 0;
    *__dst = v19;
    return result;
  }

  if (a2 == 21)
  {
    result = 0;
    v21 = *(this + 168);
LABEL_76:
    *__dst = v21;
    return result;
  }

  if (a2 == 3670)
  {
    v9 = *(this + 107);
    v10 = *(this + 108) - v9;
LABEL_54:
    memcpy(__dst, v9, v10);
    return 0;
  }

  return result;
}

void sub_1DDCBAA10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_1DDCBAA20(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DDCBAA1CLL);
  }

  JUMPOUT(0x1DDCBAA14);
}

uint64_t AUNeuralNet::GetPropertyInfo(AUNeuralNet *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 39999)
  {
    if (a2 <= 3696)
    {
      if (a2 > 3693)
      {
        if (a2 == 3694)
        {
          goto LABEL_42;
        }

        if (a2 == 3695)
        {
LABEL_36:
          v12 = *(this + 17) ^ 1;
LABEL_43:
          *a6 = v12;
          v14 = 4;
          goto LABEL_49;
        }

        *a6 = *(this + 17) ^ 1;
        v10 = *(this + 84);
LABEL_45:
        v14 = 4 * v10 + 4;
        goto LABEL_49;
      }

      if (a2 == 21)
      {
        goto LABEL_42;
      }

      if (a2 != 3670)
      {
        return result;
      }

      *a6 = 0;
      v11 = *(*(this + 100) + 28);
    }

    else
    {
      if (a2 <= 3699)
      {
        if (a2 == 3697)
        {
          goto LABEL_37;
        }

        if (a2 == 3698)
        {
          goto LABEL_42;
        }

LABEL_44:
        *a6 = 0;
        v10 = *(this + 136);
        goto LABEL_45;
      }

      if (a2 == 3700)
      {
        goto LABEL_42;
      }

      if (a2 == 3799)
      {
        goto LABEL_44;
      }

      if (a2 != 36999)
      {
        return result;
      }

      *a6 = 0;
      v11 = *(this + 136);
    }

    v14 = 4 * v11;
LABEL_49:
    result = 0;
    *a5 = v14;
    return result;
  }

  if (a2 > 103999)
  {
    if (a2 > 104002)
    {
      if (a2 == 104003)
      {
        goto LABEL_42;
      }

      if (a2 != 104004)
      {
        v8 = 1036999;
LABEL_30:
        if (a2 != v8)
        {
          return result;
        }

        goto LABEL_31;
      }
    }

    else if (a2 != 104000)
    {
      if (a2 != 104001)
      {
        v9 = -27070;
        goto LABEL_25;
      }

LABEL_42:
      v12 = 1;
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  if (a2 <= 103798)
  {
    if (a2 != 40000)
    {
      if (a2 != 103696)
      {
        v8 = 103699;
        goto LABEL_30;
      }

      v13 = *(this + 17) ^ 1;
LABEL_47:
      *a6 = v13;
      goto LABEL_48;
    }

LABEL_37:
    v13 = 1;
    goto LABEL_47;
  }

  if (a2 == 103799)
  {
LABEL_31:
    *a6 = 0;
LABEL_48:
    v14 = 8;
    goto LABEL_49;
  }

  if (a2 == 103800)
  {
    goto LABEL_37;
  }

  v9 = -27271;
LABEL_25:
  if (a2 == (v9 | 0x10000))
  {
    goto LABEL_42;
  }

  return result;
}

uint64_t AUNeuralNet::Reset(AUNeuralNet *this)
{
  v2 = *(this + 157);
  if (v2)
  {
    BlockProcessor::Reset(v2);
  }

  v3 = *(this + 158);
  if (v3)
  {
    *(v3 + 16) = 0;
    *(v3 + 40) = 0;
    if (*(v3 + 24))
    {
      v4 = *(v3 + 32);
      if (v4)
      {
        v5 = 0;
        v6 = (4 * *(v3 + 36));
        do
        {
          v7 = *(*(v3 + 24) + 8 * v5);
          if (*v7)
          {
            v8 = 0;
            v9 = 4;
            do
            {
              bzero(*&v7[v9], v6);
              ++v8;
              v9 += 4;
            }

            while (v8 < *v7);
            v4 = *(v3 + 32);
          }

          ++v5;
        }

        while (v5 < v4);
      }
    }
  }

  for (i = 0; i != 624; i += 104)
  {
    v11 = *(this + 100) + i;
    if (*(v11 + 96) == 1)
    {
      (*(**(v11 + 64) + 48))(*(v11 + 64));
    }
  }

  vDSP_vclr(*(this + 104), 1, (*(this + 105) - *(this + 104)) >> 2);
  if (*(this + 592))
  {
    vDSP_vclr(*(this + 107), 1, (*(this + 108) - *(this + 107)) >> 2);
  }

  vDSP_vclr(*(this + 110), 1, (*(this + 111) - *(this + 110)) >> 2);
  vDSP_vclr(*(this + 113), 1, (*(this + 114) - *(this + 113)) >> 2);
  vDSP_vclr(*(this + 116), 1, (*(this + 117) - *(this + 116)) >> 2);
  vDSP_vclr(*(this + 119), 1, (*(this + 120) - *(this + 119)) >> 2);
  vDSP_vclr(*(this + 123), 1, (*(this + 124) - *(this + 123)) >> 2);
  vDSP_vclr(*(this + 126), 1, (*(this + 127) - *(this + 126)) >> 2);
  vDSP_vclr(*(this + 129), 1, (*(this + 130) - *(this + 129)) >> 2);
  v12 = *(this + 132);
  if (*(this + 133) != v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      vDSP_vclr(*(v12 + v13), 1, (*(v12 + v13 + 8) - *(v12 + v13)) >> 2);
      ++v14;
      v12 = *(this + 132);
      v13 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 133) - v12) >> 3) > v14);
  }

  vDSP_vclr(*(this + 135), 1, (*(this + 136) - *(this + 135)) >> 2);
  vDSP_vclr(*(this + 138), 1, (*(this + 139) - *(this + 138)) >> 2);
  vDSP_vclr(*(this + 141), 1, (*(this + 142) - *(this + 141)) >> 2);
  v15 = *(this + 159);
  *(this + 160) = v15;
  *(this + 161) = v15;
  *(this + 656) = 1;
  return 0;
}

double AUNeuralNet::Cleanup(AUNeuralNet *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (getAUNeuralNetLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
  }

  v2 = getAUNeuralNetLog(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%p] cleanup", &v11, 0xCu);
  }

  for (i = 0; i != 624; i += 104)
  {
    v5 = *(this + 100) + i;
    if (*(v5 + 96) == 1)
    {
      (*(**(v5 + 64) + 48))(*(v5 + 64));
    }
  }

  AUNeuralNet::InitMaskRelatedVariables(this, v3);
  __asm { FMOV            V0.2S, #-1.0 }

  *(this + 172) = result;
  *(this + 1384) = 0;
  return result;
}

_DWORD *AUNeuralNet::InitMaskRelatedVariables(AUNeuralNet *this, int16x4_t a2)
{
  v3 = (*(this + 166) + *(this + 166) * *(this + 136));
  LODWORD(__p[0]) = 0;
  std::vector<float>::assign(this + 113, v3, __p, a2);
  v4 = (*(this + 166) * *(this + 136));
  LODWORD(__p[0]) = 0;
  std::vector<float>::assign(this + 116, v4, __p, v5);
  v6 = (*(this + 166) + *(this + 166) * *(this + 136));
  LODWORD(__p[0]) = 0;
  std::vector<float>::assign(this + 119, v6, __p, v7);
  v8 = 0;
  v9 = *(this + 100);
  if (*(v9 + 96) == 1)
  {
    v8 = *(v9 + 16);
  }

  if (*(this + 1244) == 1)
  {
    v10 = 800;
    if (*(this + 312) == 2)
    {
      v10 = 1264;
    }

    v11 = 20;
    if (*(this + 312) == 2)
    {
      v11 = 92;
    }

    v12 = *(*(this + v10) + v11) + v8;
    *(this + 244) = v12;
    CurrentLatencyInSamples = AUNeuralNet::GetCurrentLatencyInSamples(this);
    v15 = *(v9 + 20);
    if (*(this + 136) > v15)
    {
      v15 = *(this + 136);
    }

    v16 = v15 + v12;
  }

  else
  {
    *(this + 244) = v8;
    CurrentLatencyInSamples = AUNeuralNet::GetCurrentLatencyInSamples(this);
    v16 = *(v9 + 16) + *(v9 + 20);
  }

  *(this + 245) = CurrentLatencyInSamples;
  if ((*(this + 668) & 1) == 0)
  {
    v17 = *(this + 165);
    std::vector<float>::vector[abi:ne200100](__p, v16);
    std::vector<std::vector<float>>::assign(this + 132, v17, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v19 = (*(this + 244) + *(this + 136));
    LODWORD(__p[0]) = 0;
    std::vector<float>::assign(this + 123, v19, __p, v18);
    v20 = *(this + 136);
    LODWORD(__p[0]) = 0;
    std::vector<float>::assign(this + 126, v20, __p, v21);
    v22 = *(this + 136);
    LODWORD(__p[0]) = 0;
    std::vector<float>::assign(this + 129, v22, __p, v23);
    v24 = *(this + 136);
    LODWORD(__p[0]) = 0;
    std::vector<float>::assign(this + 135, v24, __p, v25);
    v26 = *(this + 144);
    if (v26)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v26);
      MEMORY[0x1E12BD160]();
    }

    VPTimeFreqConverter_Create();
  }

  v27 = (2 * *(this + 136));
  LODWORD(__p[0]) = 0;
  std::vector<float>::assign(this + 138, v27, __p, v14);
  v28 = (2 * *(this + 136));
  LODWORD(__p[0]) = 0;
  std::vector<float>::assign(this + 141, v28, __p, v29);
  if (*(this + 592) == 1)
  {
    v31 = *(*(this + 100) + 28);
    LODWORD(__p[0]) = 0;
    std::vector<float>::assign(this + 107, v31, __p, v30);
  }

  v32 = *(this + 165);
  LODWORD(__p[0]) = 0;
  return std::vector<float>::assign(this + 165, v32, __p, v30);
}

void sub_1DDCBB388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUNeuralNet::Initialize(AUNeuralNet *this)
{
  v287 = *MEMORY[0x1E69E9840];
  *(this + 136) = *(this + 84);
  if (getAUNeuralNetLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
  }

  v2 = getAUNeuralNetLog(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v44 = *(this + 136);
    LODWORD(v286.mSampleRate) = 134218240;
    *(&v286.mSampleRate + 4) = this;
    LOWORD(v286.mFormatFlags) = 1024;
    *(&v286.mFormatFlags + 2) = v44;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%p] AU block size %u", &v286, 0x12u);
  }

  v3 = *(this + 58);
  if (v3)
  {
    applesauce::CF::convert_to<std::string,0>(&v286, v3);
    v4 = (this + 1424);
    if (*(this + 1447) < 0)
    {
      operator delete(*v4);
    }

    *v4 = *&v286.mSampleRate;
    *(this + 180) = *&v286.mBytesPerPacket;
  }

  else
  {
    if (*(this + 1447) < 0)
    {
      *(this + 179) = 11;
      v5 = *(this + 178);
    }

    else
    {
      v5 = this + 1424;
      *(this + 1447) = 11;
    }

    strcpy(v5, "AUNeuralNet");
  }

  if (getAUNeuralNetLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
  }

  v6 = getAUNeuralNetLog(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v286.mSampleRate) = 134217984;
    *(&v286.mSampleRate + 4) = this;
    _os_log_debug_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "[%p] check input format before initialization", &v286, 0xCu);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v8 = *(Element + 96);
  *&v273.mSampleRate = *(Element + 80);
  *&v273.mBytesPerPacket = v8;
  *&v273.mBitsPerChannel = *(Element + 112);
  v9 = HIDWORD(v8);
  *(this + 165) = HIDWORD(v8);
  if (getAUNeuralNetLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
  }

  v10 = getAUNeuralNetLog(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v286 = v273;
    CA::StreamDescription::AsString(&buf, &v286, v273.mSampleRate, *&v273.mBytesPerPacket);
    v45 = (buf.mFramesPerPacket & 0x80000000) == 0 ? &buf : *&buf.mSampleRate;
    *v282 = 134218242;
    *&v282[4] = this;
    v283 = 2080;
    v284 = v45;
    _os_log_debug_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "[%p] input format: %s", v282, 0x16u);
    if (SHIBYTE(buf.mFramesPerPacket) < 0)
    {
      operator delete(*&buf.mSampleRate);
    }
  }

  if (v273.mFormatID != 1819304813)
  {
    if (v273.mFormatID == 1718773105 && (v273.mFormatFlags & 1) != 0 && v273.mBitsPerChannel == 64 && (v273.mFormatFlags & 0x20) != 0)
    {
      goto LABEL_26;
    }

LABEL_33:
    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v16 = getAUNeuralNetLog(void)::gLog;
    if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    LODWORD(v286.mSampleRate) = 134217984;
    *(&v286.mSampleRate + 4) = this;
    v12 = "[%p] input format is not valid";
    goto LABEL_99;
  }

  if ((v273.mFormatFlags & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_26:
  v268 = (this + 660);
  if (*(this + 165) >= 0x11u)
  {
    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v11 = getAUNeuralNetLog(void)::gLog;
    if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    LODWORD(v286.mSampleRate) = 134218496;
    *(&v286.mSampleRate + 4) = this;
    LOWORD(v286.mFormatFlags) = 1024;
    *(&v286.mFormatFlags + 2) = v9;
    HIWORD(v286.mBytesPerPacket) = 1024;
    v286.mFramesPerPacket = 16;
    v12 = "[%p] input format has %d channels, which is more than the max number of (%d)";
    goto LABEL_31;
  }

  if (getAUNeuralNetLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
  }

  v19 = getAUNeuralNetLog(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v286.mSampleRate) = 134217984;
    *(&v286.mSampleRate + 4) = this;
    _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%p] check output format before initialization", &v286, 0xCu);
  }

  v20 = 0;
  v270 = (this + 664);
  while (1)
  {
    v21 = *(this + 21);
    if (v21)
    {
      LODWORD(v22) = (*(*v21 + 24))(v21);
    }

    else
    {
      v22 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (v20 >= v22)
    {
      break;
    }

    if (v20 == 1)
    {
      v30 = ausdk::AUScope::GetElement((this + 128), 1u);
      if (!v30)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (*(v30 + 108) >= 0x25u)
      {
        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }

        v11 = getAUNeuralNetLog(void)::gLog;
        if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          return 4294956421;
        }

        v162 = *(ausdk::AUBase::Output(this, 1u) + 108);
        LODWORD(v286.mSampleRate) = 134218496;
        *(&v286.mSampleRate + 4) = this;
        LOWORD(v286.mFormatFlags) = 1024;
        *(&v286.mFormatFlags + 2) = v162;
        HIWORD(v286.mBytesPerPacket) = 1024;
        v286.mFramesPerPacket = 36;
        v12 = "[%p] output GainVector format has %d channels, which is more than the max number of (%d)";
LABEL_31:
        v13 = &v286;
        v14 = v11;
        v15 = 24;
LABEL_101:
        _os_log_error_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, v12, v13, v15);
        return 4294956421;
      }

      goto LABEL_77;
    }

    if (v20)
    {
      goto LABEL_77;
    }

    v23 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v23)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v24 = *(v23 + 80);
    v26 = *(v23 + 88);
    v25 = *(v23 + 92);
    v271 = *(v23 + 96);
    v27 = *(v23 + 108);
    v272 = *(v23 + 104);
    v269 = *(v23 + 112);
    *v270 = v27;
    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v28 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v286 = v273;
      CA::StreamDescription::AsString(v282, &v286, v273.mSampleRate, *&v273.mBytesPerPacket);
      v36 = v282;
      if (v285 < 0)
      {
        v36 = *v282;
      }

      LODWORD(buf.mSampleRate) = 134218498;
      *(&buf.mSampleRate + 4) = this;
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 0;
      HIWORD(buf.mBytesPerPacket) = 2080;
      *&buf.mFramesPerPacket = v36;
      _os_log_debug_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEBUG, "[%p] output format for bus %u: %s", &buf, 0x1Cu);
      if (v285 < 0)
      {
        operator delete(*v282);
      }
    }

    if (v26 == 1819304813)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_348;
      }
    }

    else if (v26 != 1718773105 || (v25 & 1) == 0 || v269 != 64 || (v25 & 0x20) == 0)
    {
LABEL_348:
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v16 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956421;
      }

      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      v12 = "[%p] output format is not valid";
LABEL_99:
      v13 = &v286;
LABEL_100:
      v14 = v16;
      v15 = 12;
      goto LABEL_101;
    }

    if (*v270 >= 0x25)
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v11 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956421;
      }

      LODWORD(v286.mSampleRate) = 134218496;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 1024;
      *(&v286.mFormatFlags + 2) = v27;
      HIWORD(v286.mBytesPerPacket) = 1024;
      v286.mFramesPerPacket = 36;
      v12 = "[%p] output format has %d channels, which is more than the max number of (%d)";
      goto LABEL_31;
    }

    v286 = v273;
    if ((v273.mFormatFlags & 0x20) != 0)
    {
      mChannelsPerFrame = 1;
LABEL_68:
      v32 = v286.mBytesPerFrame / mChannelsPerFrame;
      goto LABEL_69;
    }

    mChannelsPerFrame = v286.mChannelsPerFrame;
    if (v286.mChannelsPerFrame)
    {
      goto LABEL_68;
    }

    v32 = (v286.mBitsPerChannel + 7) >> 3;
LABEL_69:
    v33 = 1;
    v286.mBytesPerFrame = v32;
    v286.mChannelsPerFrame = 1;
    v286.mBytesPerPacket = v32;
    v286.mFramesPerPacket = 1;
    v286.mFormatFlags = v273.mFormatFlags | 0x20;
    buf.mSampleRate = v24;
    buf.mFormatID = v26;
    *&buf.mBytesPerPacket = v271;
    buf.mBytesPerFrame = v272;
    *&buf.mBitsPerChannel = v269;
    if ((v25 & 0x20) != 0 || (v33 = v27) != 0)
    {
      v34 = v269;
      v35 = buf.mBytesPerFrame / v33;
    }

    else
    {
      v34 = v269;
      v35 = (v269 + 7) >> 3;
    }

    buf.mBytesPerFrame = v35;
    buf.mChannelsPerFrame = 1;
    buf.mBytesPerPacket = v35;
    buf.mFramesPerPacket = 1;
    buf.mFormatFlags = v25 | 0x20;
    if (v286.mSampleRate != v24 || v286.mFormatID != v26 || v32 != v35 || v286.mBitsPerChannel != v34 || !CA::Implementation::EquivalentFormatFlags(&v286, &buf, v29))
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v16 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956421;
      }

      *v282 = 134217984;
      *&v282[4] = this;
      v12 = "[%p] I/O formats are not compatible.";
      v13 = v282;
      goto LABEL_100;
    }

LABEL_77:
    ++v20;
  }

  if (getAUNeuralNetLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
  }

  v37 = getAUNeuralNetLog(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    LODWORD(v286.mSampleRate) = 134217984;
    *(&v286.mSampleRate + 4) = this;
    _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_INFO, "[%p] will try to initialize", &v286, 0xCu);
  }

  ausdk::AUBufferList::Allocate((this + 1392), &v273, *(this + 136));
  v38 = ausdk::AUBufferList::PrepareBufferOrError((this + 1392), &v273, *(this + 136));
  if ((v39 & 1) == 0)
  {
    ausdk::Throw(v38);
  }

  v40 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v40)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (v40[22] == 1718773105)
  {
    LOBYTE(v42) = 0;
    v43 = v40[23];
    if ((v43 & 1) != 0 && v40[28] == 64)
    {
      v42 = (v43 >> 5) & 1;
    }
  }

  else
  {
    LOBYTE(v42) = 0;
  }

  *(this + 668) = v42;
  if (!*(this + 206))
  {
LABEL_352:
    *(this + 141) = 0;
    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v151 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134218240;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 1024;
      *(&v286.mFormatFlags + 2) = 0;
      _os_log_impl(&dword_1DDB85000, v151, OS_LOG_TYPE_INFO, "[%p] Defaulting to NeuralNet model (%u) for processing.", &v286, 0x12u);
    }

    if (*(*(this + 100) + 96) != 1)
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v163 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        goto LABEL_473;
      }

      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v163, OS_LOG_TYPE_INFO, "[%p] No NeuralNets were loaded from plist.", &v286, 0xCu);
      goto LABEL_471;
    }

    v152 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v153 & 1) == 0)
    {
      goto LABEL_535;
    }

    ausdk::AUElement::SetParameter(v152, 0, 1.0);
    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v154 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v154, OS_LOG_TYPE_INFO, "[%p] Successfully loaded NeuralNet plist.", &v286, 0xCu);
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }
    }

    v155 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v252 = (*(**(*(this + 100) + 64) + 24))(*(*(this + 100) + 64));
      LODWORD(v286.mSampleRate) = 134218240;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 2048;
      *(&v286.mFormatFlags + 2) = v252;
      _os_log_debug_impl(&dword_1DDB85000, v155, OS_LOG_TYPE_DEBUG, "[%p] mNeuralNet input size: %lu", &v286, 0x16u);
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }
    }

    v156 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v253 = (*(**(*(this + 100) + 64) + 32))(*(*(this + 100) + 64));
      LODWORD(v286.mSampleRate) = 134218240;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 2048;
      *(&v286.mFormatFlags + 2) = v253;
      _os_log_debug_impl(&dword_1DDB85000, v156, OS_LOG_TYPE_DEBUG, "[%p] mNeuralNet output size: %lu", &v286, 0x16u);
    }

    v157 = *(this + 136);
    v158 = *(this + 100);
    mFormatID = v273.mFormatID;
    if (v157 == *(v158 + 20))
    {
      if (v273.mFormatID != 1718773105)
      {
LABEL_392:
        *(this + 1244) = 0;
        if (*(this + 157))
        {
          std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 157, 0);
        }

        if (*(this + 158))
        {
          std::unique_ptr<BlockProcessorLowDelay>::reset[abi:ne200100](this + 158, 0);
        }

LABEL_463:
        v202 = *(this + 156);
        v203 = 0;
        if (v202 != 0.0)
        {
          v204 = **(this + 100);
          *v203.i32 = expf((-*(this + 136) / v204) / v202);
        }

        *(this + 157) = v203.i32[0];
        if (mFormatID == 1718773105)
        {
          v205 = *(this + 100);
          if ((~v273.mFormatFlags & 0x21) == 0 && v273.mBitsPerChannel == 64)
          {
            *&v206 = (*(**(v205 + 64) + 24))(*(v205 + 64));
            v208 = v207;
            LODWORD(v286.mSampleRate) = 0;
            std::vector<float>::assign(this + 104, v207, &v286, v206);
            LODWORD(v286.mSampleRate) = 0;
            std::vector<float>::assign(this + 110, v208, &v286, v209);
            goto LABEL_471;
          }
        }

        else
        {
          v205 = *(this + 100);
        }

        v210 = (*(v205 + 20) * *(this + 165));
        LODWORD(v286.mSampleRate) = 0;
        std::vector<float>::assign(this + 104, v210, &v286, v203);
        v211 = (*(*(this + 100) + 20) * *(this + 166));
        LODWORD(v286.mSampleRate) = 0;
        std::vector<float>::assign(this + 110, v211, &v286, v212);
LABEL_471:
        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }

LABEL_473:
        v213 = getAUNeuralNetLog(void)::gLog;
        if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
        {
          LODWORD(v286.mSampleRate) = 134217984;
          *(&v286.mSampleRate + 4) = this;
          _os_log_impl(&dword_1DDB85000, v213, OS_LOG_TYPE_INFO, "[%p] initialize mask related variables", &v286, 0xCu);
        }

        AUNeuralNet::InitMaskRelatedVariables(this, v214);
        if (*(this + 1232) == 1)
        {
          v215 = (this + 1208);
          if (*(this + 592) != 1)
          {
            goto LABEL_483;
          }

          if (*(this + 108) - *(this + 107) != *(this + 152) - *(this + 151))
          {
            if (getAUNeuralNetLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
            }

            v249 = getAUNeuralNetLog(void)::gLog;
            if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              return 4294956421;
            }

            v250 = (*(this + 108) - *(this + 107)) >> 2;
            v251 = (*(this + 152) - *(this + 151)) >> 2;
            LODWORD(v286.mSampleRate) = 134218496;
            *(&v286.mSampleRate + 4) = this;
            LOWORD(v286.mFormatFlags) = 2048;
            *(&v286.mFormatFlags + 2) = v250;
            HIWORD(v286.mFramesPerPacket) = 2048;
            *&v286.mBytesPerFrame = v251;
            v12 = "[%p] cached embedding has mismatch size: %lu != %lu";
            v13 = &v286;
            v14 = v249;
            v15 = 32;
            goto LABEL_101;
          }

          if (getAUNeuralNetLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
          }

          v216 = getAUNeuralNetLog(void)::gLog;
          if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
          {
            LODWORD(v286.mSampleRate) = 134217984;
            *(&v286.mSampleRate + 4) = this;
            _os_log_impl(&dword_1DDB85000, v216, OS_LOG_TYPE_INFO, "[%p] loading cached embedding", &v286, 0xCu);
          }

          std::vector<double>::__move_assign(this + 856, (this + 1208));
          if (*(this + 1232))
          {
LABEL_483:
            v217 = *v215;
            if (*v215)
            {
              *(this + 152) = v217;
              operator delete(v217);
            }

            *(this + 1232) = 0;
          }
        }

        v218 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v220)
        {
          LOBYTE(v219) = *(*(this + 100) + 96);
          ausdk::AUElement::SetParameter(v218, 0, v219);
          *(this + 245) = AUNeuralNet::GetCurrentLatencyInSamples(this);
          v221 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v222)
          {
            ausdk::AUElement::SetParameter(v221, 0xEu, *(this + 245));
            if (getAUNeuralNetLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
            }

            v223 = getAUNeuralNetLog(void)::gLog;
            if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
            {
              v224 = *(this + 100);
              v225 = (v224 + 32);
              if (*(v224 + 55) < 0)
              {
                v225 = *v225;
              }

              v226 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if ((v227 & 1) == 0)
              {
                goto LABEL_535;
              }

              Parameter = ausdk::AUElement::GetParameter(v226, 0xEu);
              LODWORD(v286.mSampleRate) = 134218498;
              *(&v286.mSampleRate + 4) = this;
              LOWORD(v286.mFormatFlags) = 2080;
              *(&v286.mFormatFlags + 2) = v225;
              HIWORD(v286.mFramesPerPacket) = 2048;
              *&v286.mBytesPerFrame = Parameter;
              _os_log_impl(&dword_1DDB85000, v223, OS_LOG_TYPE_DEFAULT, "[%p] Latency for model: %s is %f", &v286, 0x20u);
            }

            v229 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v230)
            {
              ausdk::AUElement::SetParameter(v229, 0x12u, *(*(this + 100) + 20));
              if (getAUNeuralNetLog(void)::onceToken != -1)
              {
                dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
              }

              v231 = getAUNeuralNetLog(void)::gLog;
              if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
              {
LABEL_503:
                if (*(this + 168) || (*(this + 1384) & 1) != 0 || *(this + 676) != 1 || (*(*(this + 100) + 104 * *(this + 141) + 96) & 1) == 0)
                {
                  if (getAUNeuralNetLog(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
                  }

                  v243 = getAUNeuralNetLog(void)::gLog;
                  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
                  {
                    v244 = *(this + 168);
                    v245 = *(this + 676) ^ 1;
                    v246 = *(*(this + 100) + 104 * *(this + 141) + 96) ^ 1;
                    LODWORD(v286.mSampleRate) = 134218752;
                    *(&v286.mSampleRate + 4) = this;
                    LOWORD(v286.mFormatFlags) = 1024;
                    *(&v286.mFormatFlags + 2) = v244;
                    HIWORD(v286.mBytesPerPacket) = 1024;
                    v286.mFramesPerPacket = v245;
                    LOWORD(v286.mBytesPerFrame) = 1024;
                    *(&v286.mBytesPerFrame + 2) = v246;
                    v240 = "[%p] Model bypassed: mBypass (%u) || !mSelectedValidModel (%d) || !selectedNeuralNet.model (%d)";
                    v241 = v243;
                    v242 = 30;
LABEL_517:
                    _os_log_impl(&dword_1DDB85000, v241, OS_LOG_TYPE_DEFAULT, v240, &v286, v242);
                    v247 = getAUNeuralNetLog(void)::onceToken;
                    *(this + 1384) = 0;
                    if (v247 != -1)
                    {
                      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
                    }

                    goto LABEL_520;
                  }
                }

                else
                {
                  if (getAUNeuralNetLog(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
                  }

                  v237 = getAUNeuralNetLog(void)::gLog;
                  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
                  {
                    v238 = *(this + 100) + 104 * *(this + 141);
                    v239 = (v238 + 32);
                    if (*(v238 + 55) < 0)
                    {
                      v239 = *v239;
                    }

                    LODWORD(v286.mSampleRate) = 134218242;
                    *(&v286.mSampleRate + 4) = this;
                    LOWORD(v286.mFormatFlags) = 2080;
                    *(&v286.mFormatFlags + 2) = v239;
                    v240 = "[%p] Model with TaskID (%s) will be called";
                    v241 = v237;
                    v242 = 22;
                    goto LABEL_517;
                  }
                }

                *(this + 1384) = 0;
LABEL_520:
                v248 = getAUNeuralNetLog(void)::gLog;
                v17 = 0;
                if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v286.mSampleRate) = 134217984;
                  *(&v286.mSampleRate + 4) = this;
                  _os_log_impl(&dword_1DDB85000, v248, OS_LOG_TYPE_DEFAULT, "[%p] did initialize", &v286, 0xCu);
                  return 0;
                }

                return v17;
              }

              v232 = *(this + 100);
              v233 = (v232 + 32);
              if (*(v232 + 55) < 0)
              {
                v233 = *v233;
              }

              v234 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v235)
              {
                v236 = ausdk::AUElement::GetParameter(v234, 0x12u);
                LODWORD(v286.mSampleRate) = 134218498;
                *(&v286.mSampleRate + 4) = this;
                LOWORD(v286.mFormatFlags) = 2080;
                *(&v286.mFormatFlags + 2) = v233;
                HIWORD(v286.mFramesPerPacket) = 2048;
                *&v286.mBytesPerFrame = v236;
                _os_log_impl(&dword_1DDB85000, v231, OS_LOG_TYPE_DEFAULT, "[%p] Block size for model: %s is %f", &v286, 0x20u);
                goto LABEL_503;
              }
            }
          }
        }

LABEL_535:
        abort();
      }

      mFormatFlags = v273.mFormatFlags;
      v161 = v273.mBitsPerChannel != 64;
    }

    else
    {
      if (v273.mFormatID != 1718773105 || (mFormatFlags = v273.mFormatFlags, (~v273.mFormatFlags & 0x21) != 0) || v273.mBitsPerChannel != 64)
      {
        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }

        v164 = getAUNeuralNetLog(void)::gLog;
        if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
        {
          v165 = *(this + 136);
          v166 = *(*(this + 100) + 20);
          LODWORD(v286.mSampleRate) = 134218496;
          *(&v286.mSampleRate + 4) = this;
          LOWORD(v286.mFormatFlags) = 1024;
          *(&v286.mFormatFlags + 2) = v165;
          HIWORD(v286.mBytesPerPacket) = 1024;
          v286.mFramesPerPacket = v166;
          _os_log_impl(&dword_1DDB85000, v164, OS_LOG_TYPE_INFO, "[%p] AU's block size (%d) not matching the NeuralNet's block size (%u). Will use a reblocker", &v286, 0x18u);
        }

        v167 = *(this + 312);
        if (*(this + 136) > *(*(this + 100) + 20) && v167 == 2)
        {
          *(this + 312) = 1;
          if (getAUNeuralNetLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
          }

          v168 = getAUNeuralNetLog(void)::gLog;
          if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
          {
            v169 = *(this + 136);
            v170 = *(*(this + 100) + 20);
            LODWORD(v286.mSampleRate) = 134218496;
            *(&v286.mSampleRate + 4) = this;
            LOWORD(v286.mFormatFlags) = 1024;
            *(&v286.mFormatFlags + 2) = v169;
            HIWORD(v286.mBytesPerPacket) = 1024;
            v286.mFramesPerPacket = v170;
            _os_log_impl(&dword_1DDB85000, v168, OS_LOG_TYPE_INFO, "[%p] Low Delay block processor not supported for process block size (%d) > NN block size (%d)", &v286, 0x18u);
          }
        }

        else
        {
          if (v167 == 2)
          {
            LODWORD(v275) = 1;
            *&buf.mSampleRate = this + 660;
            LODWORD(theDict) = 1;
            *v282 = this + 664;
            v276 = this;
            std::make_unique[abi:ne200100]<BlockProcessorLowDelay,int,unsigned int *,int,unsigned int *,unsigned int &,unsigned int &,int (&)(void *,unsigned int,AudioBufferList const**,AudioBufferList**),AUNeuralNet *,0>();
          }

          if (v167 == 1)
          {
            LODWORD(v275) = 1;
            *&buf.mSampleRate = this + 660;
            LODWORD(theDict) = 1;
            *v282 = this + 664;
            v276 = this;
            std::make_unique[abi:ne200100]<BlockProcessor,int,unsigned int *,int,unsigned int *,unsigned int &,int (&)(void *,unsigned int,AudioBufferList const**,AudioBufferList**),AUNeuralNet *,0>();
          }
        }

        v200 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v201 & 1) == 0)
        {
          goto LABEL_535;
        }

        ausdk::AUElement::SetParameter(v200, 0x11u, *(this + 312));
        goto LABEL_463;
      }

      v161 = 0;
    }

    if ((~mFormatFlags & 0x21) == 0 && !v161 && v157 + 1 > ((*(**(v158 + 64) + 24))(*(v158 + 64)) / *(*(this + 100) + 8) + 1))
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v16 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956421;
      }

      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      v12 = "[%p] Truncate of freq domain data not allowed (except nyquist)";
      goto LABEL_99;
    }

    goto LABEL_392;
  }

  v46 = 0;
  v47 = 0;
  v266 = *MEMORY[0x1E695E4D0];
  allocator = *MEMORY[0x1E695E480];
  v265 = *MEMORY[0x1E695E4C0];
  *&v41 = 134218754;
  v264 = v41;
  while (1)
  {
    v48 = *(this + 100);
    if ((*(v48 + v46 + 96) & 1) != 0 || !*(v48 + v46 + 56))
    {
      goto LABEL_199;
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v49 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134218240;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 1024;
      *(&v286.mFormatFlags + 2) = v47;
      _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_INFO, "[%p] Creating NeuralNet model (%d)", &v286, 0x12u);
    }

    v50 = *(this + 100);
    v51 = *(v50 + v46 + 56);
    if (v51)
    {
      CFRetain(*(v50 + v46 + 56));
      v276 = v51;
      CFRetain(v51);
      v275 = v51;
      CFRetain(v51);
    }

    else
    {
      v275 = 0;
      v276 = 0;
    }

    theDict = v51;
    if (AUNeuralNetLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetLogScope(void)::once, &__block_literal_global_4058);
    }

    v271 = AUNeuralNetLogScope(void)::scope;
    v278 = 0;
    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&v271, theDict, @"NumberOfInputChannels", &v278))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve number of input channels. err = %d", &buf, 4294900555);
      std::runtime_error::runtime_error(exception, &buf);
    }

    *v282 = 0;
    v52 = DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&v271, theDict, @"DynamicBatchSize", v282);
    v277 = 0;
    v53 = DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&v271, theDict, @"BatchSize", &v277);
    MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, theDict);
    if (v52)
    {
      if (v53)
      {
        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }

        v55 = getAUNeuralNetLog(void)::gLog;
        if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.mSampleRate) = 134217984;
          *(&buf.mSampleRate + 4) = this;
          _os_log_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_INFO, "[%p] Failed to retrieve batch size, default to 1.", &buf, 0xCu);
        }

        v56 = 1;
        v277 = 1;
      }

      else
      {
        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }

        v61 = getAUNeuralNetLog(void)::gLog;
        v62 = os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO);
        v56 = v277;
        if (v62)
        {
          LODWORD(buf.mSampleRate) = 134218240;
          *(&buf.mSampleRate + 4) = this;
          LOWORD(buf.mFormatFlags) = 1024;
          *(&buf.mFormatFlags + 2) = v277;
          _os_log_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved batch size (%u).", &buf, 0x12u);
          v56 = v277;
        }
      }

      v279 = v56;
      v63 = CFNumberCreate(0, kCFNumberIntType, &v279);
      *&buf.mSampleRate = v63;
      if (!v63)
      {
        v147 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v147, "Could not construct");
      }

      CFDictionarySetValue(MutableCopy, @"BatchSize", v63);
      mSampleRate = buf.mSampleRate;
      if (*&buf.mSampleRate)
      {
        goto LABEL_145;
      }
    }

    else if (v53)
    {
      if (*v268 == *v268 / v278 * v278)
      {
        v57 = *v268 / v278;
      }

      else
      {
        v57 = 1;
      }

      v277 = v57;
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v58 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.mSampleRate) = 134218240;
        *(&buf.mSampleRate + 4) = this;
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = v277;
        _os_log_impl(&dword_1DDB85000, v58, OS_LOG_TYPE_INFO, "[%p] Failed to retrieve batch size, set to be (%u).", &buf, 0x12u);
      }

      valuePtr = v277;
      v59 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      *&buf.mSampleRate = v59;
      if (!v59)
      {
        v150 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v150, "Could not construct");
      }

      CFDictionarySetValue(MutableCopy, @"BatchSize", v59);
      mSampleRate = buf.mSampleRate;
      if (*&buf.mSampleRate)
      {
LABEL_145:
        CFRelease(*&mSampleRate);
      }
    }

    else
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v141 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.mSampleRate) = 134218240;
        *(&buf.mSampleRate + 4) = this;
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = v277;
        _os_log_impl(&dword_1DDB85000, v141, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved batch size (%u).", &buf, 0x12u);
      }
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (*(this + 148))
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v64 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        v65 = *(this + 148);
        if (!v65)
        {
          v149 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v149, "Could not construct");
        }

        applesauce::CF::convert_to<std::string,0>(&buf, v65);
        v66 = COERCE_DOUBLE(&buf);
        if ((buf.mFramesPerPacket & 0x80000000) != 0)
        {
          v66 = buf.mSampleRate;
        }

        *v282 = 134218242;
        *&v282[4] = this;
        v283 = 2080;
        v284 = *&v66;
        _os_log_impl(&dword_1DDB85000, v64, OS_LOG_TYPE_INFO, "[%p] override 'ModelNetPathBaseOverride' to %s", v282, 0x16u);
        if (SHIBYTE(buf.mFramesPerPacket) < 0)
        {
          operator delete(*&buf.mSampleRate);
        }
      }

      CFDictionarySetValue(MutableCopy, @"ModelNetPathBase", *(this + 148));
      if (!*(this + 150))
      {
        goto LABEL_165;
      }
    }

    else if (!*(this + 150))
    {
      if ((*(this + 1417) & 1) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_165;
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v67 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.mSampleRate) = 134217984;
      *(&buf.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v67, OS_LOG_TYPE_INFO, "[%p] set 'mModelNetBNNSData'", &buf, 0xCu);
    }

    CFDictionarySetValue(MutableCopy, @"bnnsdict", *(this + 150));
LABEL_165:
    if (*(this + 1417) == 1)
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v68 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        if ((*(this + 1417) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v69 = "false";
        if (*(this + 1416))
        {
          v69 = "true";
        }

        LODWORD(buf.mSampleRate) = 134218242;
        *(&buf.mSampleRate + 4) = this;
        LOWORD(buf.mFormatFlags) = 2080;
        *(&buf.mFormatFlags + 2) = v69;
        _os_log_impl(&dword_1DDB85000, v68, OS_LOG_TYPE_INFO, "[%p] set 'mEnableImplementationCache' to %s", &buf, 0x16u);
      }

      if ((*(this + 1417) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (*(this + 1416))
      {
        v70 = v266;
      }

      else
      {
        v70 = v265;
      }

      CFDictionarySetValue(MutableCopy, @"CacheImplementation", v70);
    }

LABEL_178:
    *&buf.mSampleRate = MutableCopy;
    if (MutableCopy)
    {
      v71 = CFGetTypeID(MutableCopy);
      if (v71 != CFDictionaryGetTypeID())
      {
        v148 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v148, "Could not construct");
      }
    }

    v275 = MutableCopy;
    *&buf.mSampleRate = v51;
    if (v51)
    {
      CFRelease(v51);
    }

    Value = CFDictionaryGetValue(MutableCopy, @"BatchSize");
    v73 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    *&buf.mSampleRate = v73;
    *(v50 + v46 + 24) = applesauce::CF::convert_to<unsigned int,0>(v73);
    if (v73)
    {
      CFRelease(v73);
    }

    v74.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (AUNeuralNetLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetLogScope(void)::once, &__block_literal_global_4058);
    }

    NeuralNet::NeuralNet(&buf, MutableCopy, AUNeuralNetLogScope(void)::scope);
    v75.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v76 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      *v282 = 134218240;
      *&v282[4] = this;
      v283 = 2048;
      v284 = (v75.__d_.__rep_ - v74.__d_.__rep_) / 1000000;
      _os_log_impl(&dword_1DDB85000, v76, OS_LOG_TYPE_INFO, "[%p] created NeuralNet instance in %lld milliseconds", v282, 0x16u);
    }

    *&v286.mFormatID = *&buf.mFormatID;
    v286.mSampleRate = buf.mSampleRate;
    *&v286.mBytesPerFrame = *&buf.mBytesPerFrame;
    buf.mSampleRate = 0.0;
    *&buf.mBytesPerFrame = 0;
    LOBYTE(v286.mBitsPerChannel) = 1;
    NeuralNet::~NeuralNet(&buf);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    std::__optional_storage_base<NeuralNet,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<NeuralNet,false>>((*(this + 100) + v46 + 64), &v286);
    if (LOBYTE(v286.mBitsPerChannel) == 1)
    {
      NeuralNet::~NeuralNet(&v286);
    }

    v48 = *(this + 100);
    if (*(v48 + v46 + 96) != 1)
    {
      return 4294956421;
    }

LABEL_199:
    if (AUNeuralNetLogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetLogScope(void)::once, &__block_literal_global_4058);
    }

    *&buf.mSampleRate = AUNeuralNetLogScope(void)::scope;
    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v77 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v77, OS_LOG_TYPE_INFO, "[%p] Loading embedding mode from plist.", &v286, 0xCu);
    }

    LODWORD(v276) = 0;
    v78 = v48 + v46;
    if (!DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&buf, *(v48 + v46 + 56), @"EmbeddingMode", &v276))
    {
      *(this + 592) = v276 != 0;
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v80 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        LOBYTE(v81) = *(this + 592);
        LODWORD(v286.mSampleRate) = 134218240;
        *(&v286.mSampleRate + 4) = this;
        LOWORD(v286.mFormatFlags) = 2048;
        *(&v286.mFormatFlags + 2) = v81;
        _os_log_impl(&dword_1DDB85000, v80, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved embedding mode (%g).", &v286, 0x16u);
      }

      v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v84 & 1) == 0)
      {
        goto LABEL_535;
      }

      LOBYTE(v83) = *(this + 592);
      ausdk::AUElement::SetParameter(v82, 0xCu, v83);
      goto LABEL_216;
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v79 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v79, OS_LOG_TYPE_INFO, "[%p] Failed to retrieve embedding mode", &v286, 0xCu);
LABEL_216:
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }
    }

    v85 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v85, OS_LOG_TYPE_INFO, "[%p] Loading default embedding mode from plist.", &v286, 0xCu);
    }

    LODWORD(v275) = 0;
    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&buf, *(v78 + 56), @"DefaultEmbeddingMode", &v275))
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v86 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        if ((*(this + 592) & 1) == 0)
        {
          goto LABEL_244;
        }

        goto LABEL_235;
      }

      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v86, OS_LOG_TYPE_INFO, "[%p] Failed to retrieve default embedding mode", &v286, 0xCu);
    }

    else
    {
      *(this + 593) = v275 != 0;
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v87 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        LOBYTE(v88) = *(this + 593);
        LODWORD(v286.mSampleRate) = 134218240;
        *(&v286.mSampleRate + 4) = this;
        LOWORD(v286.mFormatFlags) = 2048;
        *(&v286.mFormatFlags + 2) = v88;
        _os_log_impl(&dword_1DDB85000, v87, OS_LOG_TYPE_INFO, "[%p] Successfully default retrieved embedding mode (%g).", &v286, 0x16u);
      }

      v89 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v91 & 1) == 0)
      {
        goto LABEL_535;
      }

      LOBYTE(v90) = *(this + 593);
      ausdk::AUElement::SetParameter(v89, 0xDu, v90);
    }

    v92 = getAUNeuralNetLog(void)::onceToken;
    if ((*(this + 592) & 1) == 0)
    {
      goto LABEL_242;
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

LABEL_235:
    v93 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v93, OS_LOG_TYPE_INFO, "[%p] Loading embedding size from plist.", &v286, 0xCu);
    }

    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&buf, *(v78 + 56), @"EmbeddingSize", (v48 + v46 + 28)))
    {
      v263 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve embedding size. err = %d", &v286, 4294900555);
      std::runtime_error::runtime_error(v263, &v286);
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v94 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v95) = *(v48 + v46 + 28);
      LODWORD(v286.mSampleRate) = 134218240;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 2048;
      *(&v286.mFormatFlags + 2) = v95;
      _os_log_impl(&dword_1DDB85000, v94, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved embedding size (%g).", &v286, 0x16u);
      v92 = getAUNeuralNetLog(void)::onceToken;
LABEL_242:
      if (v92 != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }
    }

LABEL_244:
    v96 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v96, OS_LOG_TYPE_INFO, "[%p] Loading sample rate from plist.", &v286, 0xCu);
    }

    v97 = (v48 + v46);
    if (DictionaryBlobReader::ReadScalarFromDictionary<double>(&buf, *(v78 + 56), @"SampleRate", (v48 + v46)))
    {
      v259 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve sample rate. err = %d", &v286, 4294900555);
      std::runtime_error::runtime_error(v259, &v286);
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v98 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      v99 = *v97;
      LODWORD(v286.mSampleRate) = 134218240;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 2048;
      *(&v286.mFormatFlags + 2) = v99;
      _os_log_impl(&dword_1DDB85000, v98, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved sample rate (%g Hz).", &v286, 0x16u);
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }
    }

    v100 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v100, OS_LOG_TYPE_INFO, "[%p] Loading number of input channels from plist.", &v286, 0xCu);
    }

    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&buf, *(v78 + 56), @"NumberOfInputChannels", (v48 + v46 + 8)))
    {
      v260 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve number of input channels. err = %d", &v286, 4294900555);
      std::runtime_error::runtime_error(v260, &v286);
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v101 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      v102 = *(v48 + v46 + 8);
      LODWORD(v286.mSampleRate) = 134218240;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 1024;
      *(&v286.mFormatFlags + 2) = v102;
      _os_log_impl(&dword_1DDB85000, v101, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved number of input channels (%u).", &v286, 0x12u);
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }
    }

    v103 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v103, OS_LOG_TYPE_INFO, "[%p] Loading number of output channels from plist.", &v286, 0xCu);
    }

    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&buf, *(v78 + 56), @"NumberOfOutputChannels", (v48 + v46 + 12)))
    {
      v261 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve number of output channels. err = %d", &v286, 4294900555);
      std::runtime_error::runtime_error(v261, &v286);
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v104 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      v105 = *(v48 + v46 + 12);
      LODWORD(v286.mSampleRate) = 134218240;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 1024;
      *(&v286.mFormatFlags + 2) = v105;
      _os_log_impl(&dword_1DDB85000, v104, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved number of output channels (%u).", &v286, 0x12u);
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }
    }

    v106 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v106, OS_LOG_TYPE_INFO, "[%p] Loading lookahead size from plist.", &v286, 0xCu);
    }

    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&buf, *(v78 + 56), @"LookaheadSize", (v48 + v46 + 16)))
    {
      v262 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve lookahead size. err = %d", &v286, 4294900555);
      std::runtime_error::runtime_error(v262, &v286);
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v107 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      v108 = *(v48 + v46 + 16);
      LODWORD(v286.mSampleRate) = 134218240;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 1024;
      *(&v286.mFormatFlags + 2) = v108;
      _os_log_impl(&dword_1DDB85000, v107, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved lookahead size (%u).", &v286, 0x12u);
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }
    }

    v109 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v109, OS_LOG_TYPE_INFO, "[%p] Loading block size from plist.", &v286, 0xCu);
    }

    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&buf, *(v78 + 56), @"BlockSize", (v48 + v46 + 20)))
    {
      v257 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve block size. err = %d", &v286, 4294900555);
      std::runtime_error::runtime_error(v257, &v286);
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v110 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      v111 = *(v48 + v46 + 20);
      LODWORD(v286.mSampleRate) = 134218240;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 1024;
      *(&v286.mFormatFlags + 2) = v111;
      _os_log_impl(&dword_1DDB85000, v110, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved block size (%u).", &v286, 0x12u);
    }

    if (!*(v48 + v46 + 24))
    {
      v258 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve block size. err = %d batchsize = %u", &v286, 4294900553, *(v97 + 6), v264);
      std::runtime_error::runtime_error(v258, &v286);
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v112 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v286.mSampleRate) = 134217984;
      *(&v286.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v112, OS_LOG_TYPE_INFO, "[%p] Loading task ID.", &v286, 0xCu);
    }

    v113 = CFDictionaryGetValue(*(v78 + 56), @"TaskID");
    v114 = v113;
    if (v113)
    {
      CFRetain(v113);
      *v282 = v114;
      applesauce::CF::convert_to<std::string,0>(&v286, v114);
      v115 = v48 + v46;
      if (*(v48 + v46 + 55) < 0)
      {
        operator delete(*(v115 + 32));
      }

      v116 = *&v286.mSampleRate;
      *(v115 + 48) = *&v286.mBytesPerPacket;
      *(v115 + 32) = v116;
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v117 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        LODWORD(v286.mSampleRate) = 134217984;
        *(&v286.mSampleRate + 4) = this;
        v118 = v117;
        v119 = "[%p] TaskID read from the plist.";
        goto LABEL_302;
      }
    }

    else
    {
      *v282 = 0;
      v120 = v48 + v46;
      v121 = (v48 + v46 + 32);
      if (*(v48 + v46 + 55) < 0)
      {
        *(v120 + 40) = 3;
        v121 = *v121;
      }

      else
      {
        *(v120 + 55) = 3;
      }

      *v121 = 4271950;
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v122 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        LODWORD(v286.mSampleRate) = 134217984;
        *(&v286.mSampleRate + 4) = this;
        v118 = v122;
        v119 = "[%p] TaskID not available in the plist.";
LABEL_302:
        _os_log_impl(&dword_1DDB85000, v118, OS_LOG_TYPE_INFO, v119, &v286, 0xCu);
        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }
      }
    }

    v123 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_INFO))
    {
      v124 = (v48 + v46 + 32);
      if (*(v48 + v46 + 55) < 0)
      {
        v124 = *v124;
      }

      LODWORD(v286.mSampleRate) = 134218242;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 2080;
      *(&v286.mFormatFlags + 2) = v124;
      _os_log_impl(&dword_1DDB85000, v123, OS_LOG_TYPE_INFO, "[%p] TaskID set to (%s).", &v286, 0x16u);
    }

    if (v114)
    {
      CFRelease(v114);
    }

    v125 = *(this + 668);
    v126 = *(this + 100);
    v127 = v126 + v46;
    v128 = (*(**(v126 + v46 + 64) + 24))(*(v126 + v46 + 64));
    v129 = *(v126 + v46 + 8);
    v130 = v126 + v46;
    if (v125)
    {
      if (v128 > (2 * (v129 + v129 * *(v130 + 20)) * *(v130 + 24)))
      {
        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }

        v176 = getAUNeuralNetLog(void)::gLog;
        if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_458;
        }

        v177 = (*(**(v127 + 64) + 24))(*(v127 + 64));
        v178 = *(v127 + 8);
        v179 = *(v130 + 24);
        v180 = *(v130 + 20) + 1;
        LODWORD(v286.mSampleRate) = 134219008;
        *(&v286.mSampleRate + 4) = this;
        LOWORD(v286.mFormatFlags) = 2048;
        *(&v286.mFormatFlags + 2) = v177;
        HIWORD(v286.mFramesPerPacket) = 1024;
        v286.mBytesPerFrame = v178;
        LOWORD(v286.mChannelsPerFrame) = 1024;
        *(&v286.mChannelsPerFrame + 2) = v180;
        HIWORD(v286.mBitsPerChannel) = 1024;
        v286.mReserved = v179;
        v181 = "[%p] NeuralNet input size (%zu) exceeds freq domain format size: input channels (%u) num bins (%u) batch size (%u).";
        goto LABEL_431;
      }

      v131 = (*(**(v127 + 64) + 32))(*(v127 + 64));
      v132 = v126 + v46;
      v133 = *(v126 + v46 + 12);
      v134 = *(v130 + 24);
      if (v131 <= (2 * (v133 + v133 * *(v130 + 20)) * v134))
      {
        v135 = v273.mSampleRate;
        if (v273.mSampleRate == *v127)
        {
          if (*(v127 + 8) * v134 == 2 * *v268)
          {
            if (v134 * v133 == 2 * *v270)
            {
              if (getAUNeuralNetLog(void)::onceToken != -1)
              {
                dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
              }

              v136 = getAUNeuralNetLog(void)::gLog;
              if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_339;
              }

              goto LABEL_328;
            }

            if (getAUNeuralNetLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
            }

            v198 = getAUNeuralNetLog(void)::gLog;
            if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
            {
LABEL_458:
              v199 = getAUNeuralNetLog(void)::gLog;
              v17 = 4294956421;
              if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v286.mSampleRate) = 134218240;
                *(&v286.mSampleRate + 4) = this;
                LOWORD(v286.mFormatFlags) = 1024;
                *(&v286.mFormatFlags + 2) = -10875;
                _os_log_error_impl(&dword_1DDB85000, v199, OS_LOG_TYPE_ERROR, "[%p] Could not create NeuralNet model using the plist, exception (%d)", &v286, 0x12u);
              }

              return v17;
            }

            goto LABEL_531;
          }

          if (getAUNeuralNetLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
          }

          v194 = getAUNeuralNetLog(void)::gLog;
          if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_458;
          }

LABEL_450:
          v195 = *(v127 + 8);
          v196 = *(v130 + 24);
          v197 = *(this + 165);
          LODWORD(v286.mSampleRate) = 134218752;
          *(&v286.mSampleRate + 4) = this;
          LOWORD(v286.mFormatFlags) = 1024;
          *(&v286.mFormatFlags + 2) = v195;
          HIWORD(v286.mBytesPerPacket) = 1024;
          v286.mFramesPerPacket = v196;
          LOWORD(v286.mBytesPerFrame) = 1024;
          *(&v286.mBytesPerFrame + 2) = v197;
          v181 = "[%p] NeuralNet's number of input channels (%u) times batch size (%u) not matching AU's number of input channels (%u).";
          v190 = v194;
LABEL_532:
          v191 = 30;
LABEL_533:
          _os_log_error_impl(&dword_1DDB85000, v190, OS_LOG_TYPE_ERROR, v181, &v286, v191);
          if (getAUNeuralNetLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
          }

          goto LABEL_458;
        }

        if (getAUNeuralNetLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
        }

        v192 = getAUNeuralNetLog(void)::gLog;
        if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_458;
        }

LABEL_439:
        v193 = *v127;
        LODWORD(v286.mSampleRate) = 134218496;
        *(&v286.mSampleRate + 4) = this;
        LOWORD(v286.mFormatFlags) = 2048;
        *(&v286.mFormatFlags + 2) = v135;
        HIWORD(v286.mFramesPerPacket) = 2048;
        *&v286.mBytesPerFrame = v193;
        v181 = "[%p] Current input sample rate (%g Hz) not matching NeuralNet sample rate (%g).";
        v190 = v192;
        v191 = 32;
        goto LABEL_533;
      }

      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v176 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_458;
      }

      goto LABEL_430;
    }

    if (v128 != *(v130 + 20) * v129 * *(v130 + 24))
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v176 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_458;
      }

      v182 = (*(**(v127 + 64) + 24))(*(v127 + 64));
      v183 = *(v127 + 8);
      v184 = *(v130 + 20);
      v185 = *(v130 + 24);
      LODWORD(v286.mSampleRate) = 134219008;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 2048;
      *(&v286.mFormatFlags + 2) = v182;
      HIWORD(v286.mFramesPerPacket) = 1024;
      v286.mBytesPerFrame = v183;
      LOWORD(v286.mChannelsPerFrame) = 1024;
      *(&v286.mChannelsPerFrame + 2) = v184;
      HIWORD(v286.mBitsPerChannel) = 1024;
      v286.mReserved = v185;
      v181 = "[%p] NeuralNet input size (%zu) not matching configured number of input channels (%u) times block size (%u) times batch size (%u).";
      goto LABEL_431;
    }

    v137 = (*(**(v127 + 64) + 32))(*(v127 + 64));
    v132 = v126 + v46;
    v138 = *(v130 + 24);
    v139 = v138 * *(v126 + v46 + 12);
    if (v137 != v139 * *(v130 + 20))
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v176 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_458;
      }

LABEL_430:
      v186 = (*(**(v127 + 64) + 32))(*(v127 + 64));
      v187 = *(v132 + 12);
      v188 = *(v130 + 20);
      v189 = *(v130 + 24);
      LODWORD(v286.mSampleRate) = 134219008;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 2048;
      *(&v286.mFormatFlags + 2) = v186;
      HIWORD(v286.mFramesPerPacket) = 1024;
      v286.mBytesPerFrame = v187;
      LOWORD(v286.mChannelsPerFrame) = 1024;
      *(&v286.mChannelsPerFrame + 2) = v188;
      HIWORD(v286.mBitsPerChannel) = 1024;
      v286.mReserved = v189;
      v181 = "[%p] NeuralNet output size (%zu) not matching configured number of output channels (%u) times block size (%u) times batch size (%u).";
LABEL_431:
      v190 = v176;
      v191 = 40;
      goto LABEL_533;
    }

    v135 = v273.mSampleRate;
    if (v273.mSampleRate != *v127)
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v192 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_458;
      }

      goto LABEL_439;
    }

    if (*v268 != *(v127 + 8) * v138)
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v194 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_458;
      }

      goto LABEL_450;
    }

    if (*v270 != v139)
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v198 = getAUNeuralNetLog(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_458;
      }

LABEL_531:
      v254 = *(v126 + v46 + 12);
      v255 = *(v126 + v46 + 24);
      v256 = *(this + 166);
      LODWORD(v286.mSampleRate) = 134218752;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 1024;
      *(&v286.mFormatFlags + 2) = v254;
      HIWORD(v286.mBytesPerPacket) = 1024;
      v286.mFramesPerPacket = v255;
      LOWORD(v286.mBytesPerFrame) = 1024;
      *(&v286.mBytesPerFrame + 2) = v256;
      v181 = "[%p] NeuralNet's number of output channels (%u) times batch size (%u) not matching AU's number of output channels (%u).";
      v190 = v198;
      goto LABEL_532;
    }

    if (getAUNeuralNetLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
    }

    v136 = getAUNeuralNetLog(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
LABEL_339:
      v142 = *(v127 + 8);
      v143 = *(v132 + 12);
      v144 = *(v130 + 20);
      v145 = *(v130 + 24);
      LODWORD(v286.mSampleRate) = 134219008;
      *(&v286.mSampleRate + 4) = this;
      LOWORD(v286.mFormatFlags) = 1024;
      *(&v286.mFormatFlags + 2) = v142;
      HIWORD(v286.mBytesPerPacket) = 1024;
      v286.mFramesPerPacket = v143;
      LOWORD(v286.mBytesPerFrame) = 1024;
      *(&v286.mBytesPerFrame + 2) = v144;
      HIWORD(v286.mChannelsPerFrame) = 1024;
      v286.mBitsPerChannel = v145;
      _os_log_debug_impl(&dword_1DDB85000, v136, OS_LOG_TYPE_DEBUG, "[%p] NeuralNet is initialized with %u input channels, %u output channels, block size %u, and batch size %u.", &v286, 0x24u);
      if (!v46)
      {
        goto LABEL_331;
      }

      goto LABEL_329;
    }

LABEL_328:
    if (!v46)
    {
      goto LABEL_331;
    }

LABEL_329:
    v140 = *(this + 100);
    if (*(v140 + 20) != *(v140 + v46 + 20))
    {
      break;
    }

    if (*(v140 + 16) != *(v140 + v46 + 16))
    {
      if (getAUNeuralNetLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
      }

      v171 = getAUNeuralNetLog(void)::gLog;
      if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v174 = *(this + 100);
        v175 = *(v174 + 16);
        LODWORD(v174) = *(v174 + 104 * v47 + 16);
        LODWORD(v286.mSampleRate) = 134218752;
        *(&v286.mSampleRate + 4) = this;
        LOWORD(v286.mFormatFlags) = 1024;
        *(&v286.mFormatFlags + 2) = v175;
        HIWORD(v286.mBytesPerPacket) = 1024;
        v286.mFramesPerPacket = v47;
        LOWORD(v286.mBytesPerFrame) = 1024;
        *(&v286.mBytesPerFrame + 2) = v174;
        v12 = "[%p] NeuralNet0 lookaheadSize (%u) and NeuralNet%u lookaheadSize (%u) do not match";
        goto LABEL_414;
      }

      return 4294956421;
    }

LABEL_331:
    ++v47;
    v46 += 104;
    if (v47 >= *(this + 206))
    {
      goto LABEL_352;
    }
  }

  if (getAUNeuralNetLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetLog(void)::onceToken, &__block_literal_global_94);
  }

  v171 = getAUNeuralNetLog(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v172 = *(this + 100);
    v173 = *(v172 + 20);
    LODWORD(v172) = *(v172 + 104 * v47 + 20);
    LODWORD(v286.mSampleRate) = 134218752;
    *(&v286.mSampleRate + 4) = this;
    LOWORD(v286.mFormatFlags) = 1024;
    *(&v286.mFormatFlags + 2) = v173;
    HIWORD(v286.mBytesPerPacket) = 1024;
    v286.mFramesPerPacket = v47;
    LOWORD(v286.mBytesPerFrame) = 1024;
    *(&v286.mBytesPerFrame + 2) = v172;
    v12 = "[%p] NeuralNet0 blockSize (%u) and NeuralNet(%u) blockSize (%u) do not match";
LABEL_414:
    v13 = &v286;
    v14 = v171;
    v15 = 30;
    goto LABEL_101;
  }

  return 4294956421;
}