float STS_N_CalculateQuaternionOrientationFromTransform(__int128 *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  LODWORD(v5) = HIDWORD(*(a1 + 2));
  v6 = COERCE_FLOAT(*(a1 + 5));
  v7 = v6 + (COERCE_FLOAT(*a1) + v5);
  if (v7 >= 0.0)
  {
    v14 = sqrtf(v7 + 1.0);
    v15 = v14 + v14;
    v16 = vrecpe_f32(COERCE_UNSIGNED_INT(v14 + v14));
    v17 = vmul_f32(v16, vrecps_f32(COERCE_UNSIGNED_INT(v14 + v14), v16));
    v18 = vmul_f32(v17, vrecps_f32(COERCE_UNSIGNED_INT(v14 + v14), v17)).f32[0];
    v25 = (*(&v2 + 2) - *(&v4 + 1)) * v18;
    v26 = (*&v4 - *(&v3 + 2)) * v18;
    v27 = (*(&v3 + 1) - *&v2) * v18;
    result = v15 * 0.25;
  }

  else
  {
    if (*&v3 < v5 || *&v3 < v6)
    {
      v9 = 1.0 - *&v3;
      if (v5 >= v6)
      {
        v29 = sqrtf(v5 + (v9 - v6));
        v30 = v29 + v29;
        v31 = vrecpe_f32(COERCE_UNSIGNED_INT(v29 + v29));
        v32 = vmul_f32(v31, vrecps_f32(COERCE_UNSIGNED_INT(v29 + v29), v31));
        v24 = vmul_f32(v32, vrecps_f32(COERCE_UNSIGNED_INT(v29 + v29), v32)).f32[0];
        v25 = (*(&v3 + 1) + *&v2) * v24;
        v26 = v30 * 0.25;
        v27 = (*(&v2 + 2) + *(&v4 + 1)) * v24;
        v28 = *&v4 - *(&v3 + 2);
      }

      else
      {
        v10 = sqrtf(v6 + (v9 - v5));
        v11 = v10 + v10;
        v12 = vrecpe_f32(COERCE_UNSIGNED_INT(v10 + v10));
        v13 = vmul_f32(v12, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v12));
        v24 = vmul_f32(v13, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v13)).f32[0];
        v25 = (*(&v3 + 2) + *&v4) * v24;
        v26 = (*(&v2 + 2) + *(&v4 + 1)) * v24;
        v27 = v11 * 0.25;
        v28 = *(&v3 + 1) - *&v2;
      }
    }

    else
    {
      v20 = sqrtf(*&v3 + ((1.0 - v5) - v6));
      *&v21 = v20 + v20;
      v22 = vrecpe_f32(v21);
      v23 = vmul_f32(v22, vrecps_f32(v21, v22));
      v24 = vmul_f32(v23, vrecps_f32(v21, v23)).f32[0];
      v25 = *&v21 * 0.25;
      v26 = (*(&v3 + 1) + *&v2) * v24;
      v27 = (*(&v3 + 2) + *&v4) * v24;
      v28 = *(&v2 + 2) - *(&v4 + 1);
    }

    result = v28 * v24;
  }

  *&v33 = -v27;
  *(&v33 + 1) = v25;
  *(&v33 + 2) = -v26;
  *(&v33 + 3) = result;
  *a2 = v33;
  return result;
}

void STS_N_CalculateAngularOrientationFromTransform(uint64_t a1, float *a2, float *a3, float *a4)
{
  LODWORD(v8) = HIDWORD(*(a1 + 32));
  if (fabsf(v8) >= 1.0)
  {
    v9 = atan2f(-COERCE_FLOAT(*(a1 + 8)), COERCE_FLOAT(*a1));
    v10 = 0.0;
  }

  else
  {
    v9 = atan2f(COERCE_FLOAT(*(a1 + 32)), COERCE_FLOAT(*(a1 + 40)));
    v10 = atan2f(*(a1 + 4), *(a1 + 20)) * 57.2957795;
  }

  v11 = -v8;
  if (v8 < -1.0)
  {
    v11 = 1.0;
  }

  if (v8 > 1.0)
  {
    v11 = -1.0;
  }

  v12 = asinf(v11);
  v13 = -v9 * 57.2957795;
  v14 = fabsf(v13);
  if (v14 >= 1.0e15 || v14 <= 1.0e-15)
  {
    v13 = 0.0;
  }

  *a2 = v13;
  v16 = v12 * 57.2957795;
  v17 = fabsf(v16);
  if (v17 >= 1.0e15 || v17 <= 1.0e-15)
  {
    v16 = 0.0;
  }

  *a3 = v16;
  v19 = fabsf(v10);
  if (v19 >= 1.0e15 || v19 <= 1.0e-15)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v10;
  }

  *a4 = v21;
}

id STS_N_Log(void)
{
  if (STS_N_Log(void)::onceToken != -1)
  {
    dispatch_once(&STS_N_Log(void)::onceToken, &__block_literal_global);
  }

  v1 = STS_N_Log(void)::log;

  return v1;
}

uint64_t ___Z9STS_N_Logv_block_invoke()
{
  STS_N_Log(void)::log = os_log_create("com.apple.STS-N", "STS-N");

  return MEMORY[0x2821F96F8]();
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void getkFigSTSLabel_Global(void)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkFigSTSLabel_GlobalSymbolLoc(void)::ptr;
  v8 = getkFigSTSLabel_GlobalSymbolLoc(void)::ptr;
  if (!getkFigSTSLabel_GlobalSymbolLoc(void)::ptr)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ___ZL31getkFigSTSLabel_GlobalSymbolLocv_block_invoke;
    v4[3] = &unk_278AA47E0;
    v4[4] = &v5;
    ___ZL31getkFigSTSLabel_GlobalSymbolLocv_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef getkFigSTSLabel_Global()"];
    [v2 handleFailureInFunction:v3 file:@"STS_N_Singleton.mm" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23988F880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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

uint64_t std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<OpaqueAudioComponentInstance * const,std::pair<std::string,std::string>>,0>((v2 + 2));
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<STS_N::PerLabelInfo>>,0>((v2 + 2));
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<STS_N::PerLabelInfo>>,0>(uint64_t a1)
{
  std::unique_ptr<STS_N::PerLabelInfo>::~unique_ptr[abi:ne200100]((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::unique_ptr<STS_N::PerLabelInfo>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    v3 = *(v2 + 104);
    if (v3)
    {
      CFRelease(v3);
    }

    std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::~__hash_table(v2 + 64);
    std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::~__hash_table(v2 + 24);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x23EE7A2B0](v2, 0x10B2C4025E7ED11);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::~__hash_table(uint64_t a1)
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

void std::__destroy_at[abi:ne200100]<std::pair<OpaqueAudioComponentInstance * const,std::pair<std::string,std::string>>,0>(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void *___ZL31getkFigSTSLabel_GlobalSymbolLocv_block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaExperienceLibraryCore(char **)::frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = ___ZL26MediaExperienceLibraryCorePPc_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278AA4790;
    v8 = 0;
    MediaExperienceLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v2 = MediaExperienceLibraryCore(char **)::frameworkLibrary;
  if (!MediaExperienceLibraryCore(char **)::frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaExperienceLibrary()"];
    [a1 handleFailureInFunction:v2 file:@"STS_N_Singleton.mm" lineNumber:20 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "kFigSTSLabel_Global");
  *(*(a1[4] + 8) + 24) = result;
  getkFigSTSLabel_GlobalSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZL26MediaExperienceLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaExperienceLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void STS_N::UpdateGlobalState(uint64_t a1, __int128 *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  STS_N_CalculateQuaternionOrientationFromTransform(a2 + 1, &inData);
  os_unfair_lock_lock(a1);
  for (i = *(a1 + 24); i; i = *i)
  {
    v5 = i[5];
    if (!v5[7].i32[1])
    {
      v6 = v5[5].i64[0];
      if (v6)
      {
        while (*(v6 + 24) != 1)
        {
          v6 = *v6;
          if (!v6)
          {
            goto LABEL_15;
          }
        }

LABEL_7:
        v7 = AudioUnitSetProperty(*(v6 + 16), 0xC1Eu, 0, 0, &inData, 0x10u);
        if (v7)
        {
          v8 = STS_N_Log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v22 = "UpdateGlobalState";
            v23 = 1024;
            v24 = 178;
            v25 = 1024;
            v26 = v7;
            _os_log_error_impl(&dword_23988E000, v8, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
          }
        }

        while (1)
        {
          v6 = *v6;
          if (!v6)
          {
            break;
          }

          if (*(v6 + 24))
          {
            goto LABEL_7;
          }
        }

        v5 = i[5];
      }

LABEL_15:
      if (v5[15].i8[0])
      {
        v9 = vsubq_f32(v5[13], *(a2 + 4));
        v19[0] = v9.i32[0];
        *&v19[1] = -v9.f32[2];
        v19[2] = v9.i32[1];
        v10 = v5[5].i64[0];
        if (v10)
        {
          while (*(v10 + 24) != 1)
          {
            v10 = *v10;
            if (!v10)
            {
              goto LABEL_19;
            }
          }

LABEL_21:
          v11 = AudioUnitSetProperty(*(v10 + 16), 0xC2Bu, 0, 0, v19, 0xCu);
          if (v11)
          {
            v12 = STS_N_Log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v22 = "UpdateGlobalState";
              v23 = 1024;
              v24 = 192;
              v25 = 1024;
              v26 = v11;
              _os_log_error_impl(&dword_23988E000, v12, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
            }
          }

          while (1)
          {
            v10 = *v10;
            if (!v10)
            {
              break;
            }

            if (*(v10 + 24))
            {
              goto LABEL_21;
            }
          }
        }
      }
    }

LABEL_19:
    ;
  }

  v13 = *a2;
  kdebug_trace();
  v14 = *(a1 + 176);
  *(a1 + 96) = *a2;
  v15 = a2[4];
  v17 = a2[1];
  v16 = a2[2];
  *(a1 + 144) = a2[3];
  *(a1 + 160) = v15;
  *(a1 + 112) = v17;
  *(a1 + 128) = v16;
  if ((v14 & 1) == 0)
  {
    *(a1 + 176) = 1;
  }

  os_unfair_lock_unlock(a1);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t STS_N::InfoForLabel(uint64_t a1, void *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::find<std::string>((a1 + 8), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[5];
}

void sub_239890748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va2);
  std::pair<std::string const,std::unique_ptr<STS_N::PerLabelInfo>>::~pair(va1);
  std::unique_ptr<STS_N::PerLabelInfo>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<OpaqueFigSTS *,std::hash<OpaqueFigSTS *>,std::equal_to<OpaqueFigSTS *>,std::allocator<OpaqueFigSTS *>>::__erase_unique<OpaqueFigSTS *>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    v6 = vcnt_s8(v2);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
      if (v5 >= *&v2)
      {
        v7 = v5 % *&v2;
      }
    }

    else
    {
      v7 = v5 & (*&v2 - 1);
    }

    v8 = *a1;
    v9 = *(*a1 + 8 * v7);
    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        v11 = *&v2 - 1;
        do
        {
          v12 = v10[1];
          if (v12 == v5)
          {
            if (v10[2] == a2)
            {
              v13 = v10[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v13 >= *&v2)
                {
                  v13 %= *&v2;
                }
              }

              else
              {
                v13 &= v11;
              }

              v14 = *(v8 + 8 * v13);
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14 != v10);
              if (v15 == a1 + 2)
              {
                goto LABEL_36;
              }

              v16 = v15[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v16 >= *&v2)
                {
                  v16 %= *&v2;
                }
              }

              else
              {
                v16 &= v11;
              }

              if (v16 != v13)
              {
LABEL_36:
                if (!*v10)
                {
                  goto LABEL_37;
                }

                v17 = *(*v10 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v17 >= *&v2)
                  {
                    v17 %= *&v2;
                  }
                }

                else
                {
                  v17 &= v11;
                }

                if (v17 != v13)
                {
LABEL_37:
                  *(v8 + 8 * v13) = 0;
                }
              }

              v18 = *v10;
              if (*v10)
              {
                v19 = *(v18 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v19 >= *&v2)
                  {
                    v19 %= *&v2;
                  }
                }

                else
                {
                  v19 &= v11;
                }

                if (v19 != v13)
                {
                  *(*a1 + 8 * v19) = v15;
                  v18 = *v10;
                }
              }

              *v15 = v18;
              *v10 = 0;
              --a1[3];
              operator delete(v10);
              return;
            }
          }

          else
          {
            if (v6.u32[0] > 1uLL)
            {
              if (v12 >= *&v2)
              {
                v12 %= *&v2;
              }
            }

            else
            {
              v12 &= v11;
            }

            if (v12 != v7)
            {
              return;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
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

void STS_N::LabelValidityDidChange(STS_N *a1, uint64_t *a2)
{
  v4 = STS_N::InfoForLabel(a1, a2);
  v5 = *(a1 + 8);
  if (!v5)
  {
    return;
  }

  v6 = v4;
  v7 = *MEMORY[0x277CBECE8];
  do
  {
    v8 = v5[2];
    if (*(v5 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, v5[3], v5[4]);
    }

    else
    {
      v38 = *(v5 + 1);
    }

    if (*(v5 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v5[6], v5[7]);
    }

    else
    {
      __p = *(v5 + 2);
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v38.__r_.__value_.__l.__size_;
    }

    v10 = *(a2 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = a2[1];
    }

    if (size != v10)
    {
      goto LABEL_49;
    }

    v12 = (v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v38 : v38.__r_.__value_.__r.__words[0];
    v13 = *a2;
    v14 = v11 >= 0 ? a2 : *a2;
    if (memcmp(v12, v14, size))
    {
      goto LABEL_49;
    }

    v15 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::find<std::string>(a1 + 1, &__p);
    if (!v15)
    {
      goto LABEL_39;
    }

    v16 = v15[5];
    v17 = v16[9];
    if (!*&v17)
    {
      goto LABEL_39;
    }

    v18 = 0x9DDFEA08EB382D69 * ((8 * (v8 & 0x1FFFFFFF) + 8) ^ (v8 >> 32));
    v19 = 0x9DDFEA08EB382D69 * ((v8 >> 32) ^ (v18 >> 47) ^ v18);
    v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
    v21 = vcnt_s8(v17);
    v21.i16[0] = vaddlv_u8(v21);
    if (v21.u32[0] > 1uLL)
    {
      v22 = v20;
      if (v20 >= *&v17)
      {
        v22 = v20 % *&v17;
      }
    }

    else
    {
      v22 = v20 & (*&v17 - 1);
    }

    v23 = *(*&v16[8] + 8 * v22);
    if (!v23 || (v24 = *v23) == 0)
    {
LABEL_39:
      v30 = 0;
      v32 = *(v6 + 48) != 0;
      goto LABEL_40;
    }

    while (1)
    {
      v25 = v24[1];
      if (v20 == v25)
      {
        break;
      }

      if (v21.u32[0] > 1uLL)
      {
        if (v25 >= *&v17)
        {
          v25 %= *&v17;
        }
      }

      else
      {
        v25 &= *&v17 - 1;
      }

      if (v25 != v22)
      {
        goto LABEL_39;
      }

LABEL_38:
      v24 = *v24;
      if (!v24)
      {
        goto LABEL_39;
      }
    }

    if (v24[2] != v8)
    {
      goto LABEL_38;
    }

    v30 = *(v24 + 24);
    v31 = *(v6 + 48);
    v32 = v31 != 0;
    if (v31 && (v24[3] & 1) != 0)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v34 = CFStringCreateWithCString(v7, p_p, 0x8000100u);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v38;
      }

      else
      {
        v35 = v38.__r_.__value_.__r.__words[0];
      }

      v36 = CFStringCreateWithCString(v7, v35, 0x8000100u);
      STS_N::SetSpatializerActiveUnderLock(a1, v8, v34, 0);
      STS_N::SetSpatializerActiveUnderLock(a1, v8, v36, 1);
      CFRelease(v34);
      CFRelease(v36);
      goto LABEL_49;
    }

LABEL_40:
    if (!v32 && (v30 & 1) == 0)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &__p;
      }

      else
      {
        v26 = __p.__r_.__value_.__r.__words[0];
      }

      v27 = CFStringCreateWithCString(v7, v26, 0x8000100u);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v38;
      }

      else
      {
        v28 = v38.__r_.__value_.__r.__words[0];
      }

      v29 = CFStringCreateWithCString(v7, v28, 0x8000100u);
      STS_N::SetSpatializerActiveUnderLock(a1, v8, v29, 0);
      STS_N::SetSpatializerActiveUnderLock(a1, v8, v27, 1);
      CFRelease(v27);
      CFRelease(v29);
    }

LABEL_49:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    v5 = *v5;
  }

  while (v5);
}

void sub_239890DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void STS_N::SetSpatializerActiveUnderLock(STS_N *this, OpaqueAudioComponentInstance *a2, __CFString *a3, int a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = STS_N_Log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = a4;
    *&buf[18] = 2112;
    *&buf[20] = a3;
    _os_log_impl(&dword_23988E000, v8, OS_LOG_TYPE_DEFAULT, "Setting spatializer %p isActive:%d with label %@", buf, 0x1Cu);
  }

  v9 = STS_N::InfoForLabel(this, a3);
  v10 = v9;
  if (a4)
  {
    *buf = a2;
    LOBYTE(v51) = 1;
    v11 = std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::__emplace_unique_key_args<OpaqueAudioComponentInstance *,OpaqueAudioComponentInstance * const&,BOOL &>((v9 + 64), a2);
    if ((v12 & 1) == 0)
    {
      *(v11 + 24) = 1;
    }

    STS_N::ApplyStoredPerLabelStateToSpatializers(this, v10, a2);
    v13 = *(v10 + 152);
    v14 = [*(v10 + 104) copy];
    memset(buf, 0, sizeof(buf));
    v55 = 1065353216;
    v51 = a2;
    v50 = 1;
    v15 = std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::__emplace_unique_key_args<OpaqueAudioComponentInstance *,OpaqueAudioComponentInstance * const&,BOOL &>(buf, a2);
    if ((v16 & 1) == 0)
    {
      *(v15 + 24) = 1;
    }

    getkFigSTSLabel_Global();
    if (([(__CFString *)a3 isEqualToString:v17]& 1) == 0)
    {
      getkFigSTSLabel_Global();
      v19 = STS_N::InfoForLabel(this, v18);
      v20 = [*(v19 + 104) copy];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (!v22)
      {
        goto LABEL_28;
      }

      v23 = *v47;
      while (1)
      {
        v24 = 0;
        do
        {
          if (*v47 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v46 + 1) + 8 * v24);
          v26 = [v14 objectForKey:v25];
          if (v26)
          {

            goto LABEL_23;
          }

          v27 = v25;
          v28 = v27;
          if (!v13 || ([(__CFString *)v27 isEqualToString:@"ListenerPose"]& 1) != 0 || ([(__CFString *)v28 isEqualToString:@"SourcePose"]& 1) != 0 || ([(__CFString *)v28 isEqualToString:@"SoundStageSize"]& 1) != 0 || ([(__CFString *)v28 isEqualToString:@"SoundStageTransitionTime"]& 1) != 0)
          {

LABEL_22:
            STS_N::SetPropertyOnSpatializers(v19, v28, [v21 objectForKey:v28], buf);
            goto LABEL_23;
          }

          v29 = [(__CFString *)v28 isEqualToString:@"RoomConfiguration"];

          if (v29)
          {
            goto LABEL_22;
          }

LABEL_23:
          ++v24;
        }

        while (v22 != v24);
        v30 = [v21 countByEnumeratingWithState:&v46 objects:v53 count:16];
        v22 = v30;
        if (!v30)
        {
LABEL_28:

          break;
        }
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v31 = v14;
    v32 = [v31 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (!v32)
    {
      goto LABEL_46;
    }

    v33 = *v43;
LABEL_31:
    v34 = 0;
    while (1)
    {
      if (*v43 != v33)
      {
        objc_enumerationMutation(v31);
      }

      v35 = *(*(&v42 + 1) + 8 * v34);
      v36 = v35;
      if (!v13 || ([(__CFString *)v35 isEqualToString:@"ListenerPose", v42]& 1) != 0 || ([(__CFString *)v36 isEqualToString:@"SourcePose"]& 1) != 0 || ([(__CFString *)v36 isEqualToString:@"SoundStageSize"]& 1) != 0 || ([(__CFString *)v36 isEqualToString:@"SoundStageTransitionTime"]& 1) != 0)
      {
      }

      else
      {
        v37 = [(__CFString *)v36 isEqualToString:@"RoomConfiguration"];

        if (!v37)
        {
          goto LABEL_41;
        }
      }

      STS_N::SetPropertyOnSpatializers(v10, v36, [v31 objectForKey:{v36, v42}], buf);
LABEL_41:
      if (v32 == ++v34)
      {
        v38 = [v31 countByEnumeratingWithState:&v42 objects:v52 count:16];
        v32 = v38;
        if (!v38)
        {
LABEL_46:

          std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::~__hash_table(buf);
          goto LABEL_49;
        }

        goto LABEL_31;
      }
    }
  }

  *buf = a2;
  LOBYTE(v51) = 0;
  v39 = std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::__emplace_unique_key_args<OpaqueAudioComponentInstance *,OpaqueAudioComponentInstance * const&,BOOL &>((v9 + 64), a2);
  if ((v40 & 1) == 0)
  {
    *(v39 + 24) = 0;
  }

LABEL_49:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_239891358(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::~__hash_table(v3 - 144);

  _Unwind_Resume(a1);
}

uint64_t STS_N::InfoForLabel(STS_N *this, id a2)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, [a2 UTF8String]);
  v5 = STS_N::InfoForLabel(this, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_239891430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::__emplace_unique_key_args<OpaqueAudioComponentInstance *,OpaqueAudioComponentInstance * const&,BOOL &>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t STS_N::ApplyStoredPerLabelStateToSpatializers(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 1065353216;
  if (a3)
  {
    *buf = a3;
    v60[0] = 1;
    v5 = std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::__emplace_unique_key_args<OpaqueAudioComponentInstance *,OpaqueAudioComponentInstance * const&,BOOL &>(&v57, a3);
    if ((v6 & 1) == 0)
    {
      *(v5 + 24) = 1;
    }
  }

  else if (&v57 != (a2 + 64))
  {
    v59 = *(a2 + 96);
    if (*(a2 + 80))
    {
      operator new();
    }
  }

  if (*(a2 + 116))
  {
    v7 = MEMORY[0x277D860B8];
    v8 = *(MEMORY[0x277D860B8] + 16);
    *buf = *MEMORY[0x277D860B8];
    *&buf[16] = v8;
    v9 = *(MEMORY[0x277D860B8] + 48);
    v67 = *(MEMORY[0x277D860B8] + 32);
    v68 = v9;
    STS_N_CalculateQuaternionOrientationFromTransform(buf, &inData);
    v10 = v7[3];
    v10.i32[2] = -1.0;
    v11 = vsubq_f32(v10, v68);
    v55[0] = v11.f32[0];
    v55[1] = -v11.f32[2];
    v55[2] = v11.f32[1];
    v12 = v58;
    if (v58)
    {
      while ((v12[3] & 1) == 0)
      {
        v12 = *v12;
        if (!v12)
        {
          goto LABEL_24;
        }
      }

LABEL_57:
      v28 = AudioUnitSetProperty(v12[2], 0xC1Eu, 0, 0, &inData, 0x10u);
      if (v28)
      {
        v29 = STS_N_Log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *v60 = 136315650;
          v61 = "ApplyStoredPerLabelStateToSpatializers";
          v62 = 1024;
          v63 = 1008;
          v64 = 1024;
          v65 = v28;
          _os_log_error_impl(&dword_23988E000, v29, OS_LOG_TYPE_ERROR, "%s:%d error: %d", v60, 0x18u);
        }
      }

      v30 = AudioUnitSetProperty(v12[2], 0xC2Bu, 0, 0, v55, 0xCu);
      if (v30)
      {
        v31 = STS_N_Log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *v60 = 136315650;
          v61 = "ApplyStoredPerLabelStateToSpatializers";
          v62 = 1024;
          v63 = 1015;
          v64 = 1024;
          v65 = v30;
          _os_log_error_impl(&dword_23988E000, v31, OS_LOG_TYPE_ERROR, "%s:%d error: %d", v60, 0x18u);
        }
      }

      v32 = AudioUnitSetParameter(v12[2], 0x16u, 1u, 0, 0.0, 0);
      if (v32)
      {
        v33 = STS_N_Log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *v60 = 136315650;
          v61 = "ApplyStoredPerLabelStateToSpatializers";
          v62 = 1024;
          v63 = 1020;
          v64 = 1024;
          v65 = v32;
          _os_log_error_impl(&dword_23988E000, v33, OS_LOG_TYPE_ERROR, "%s:%d error: %d", v60, 0x18u);
        }
      }

      v34 = AudioUnitSetParameter(v12[2], 0x17u, 1u, 0, 0.0, 0);
      if (v34)
      {
        v35 = STS_N_Log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *v60 = 136315650;
          v61 = "ApplyStoredPerLabelStateToSpatializers";
          v62 = 1024;
          v63 = 1021;
          v64 = 1024;
          v65 = v34;
          _os_log_error_impl(&dword_23988E000, v35, OS_LOG_TYPE_ERROR, "%s:%d error: %d", v60, 0x18u);
        }
      }

      v36 = AudioUnitSetParameter(v12[2], 0x18u, 1u, 0, 0.0, 0);
      if (v36)
      {
        v37 = STS_N_Log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *v60 = 136315650;
          v61 = "ApplyStoredPerLabelStateToSpatializers";
          v62 = 1024;
          v63 = 1022;
          v64 = 1024;
          v65 = v36;
          _os_log_error_impl(&dword_23988E000, v37, OS_LOG_TYPE_ERROR, "%s:%d error: %d", v60, 0x18u);
        }
      }

      while (1)
      {
        v12 = *v12;
        if (!v12)
        {
          break;
        }

        if (v12[3])
        {
          goto LABEL_57;
        }
      }
    }
  }

  else
  {
    if (*(a1 + 176) == 1)
    {
      STS_N_CalculateQuaternionOrientationFromTransform((a1 + 112), v60);
      v13 = v58;
      if (v58)
      {
        while ((v13[3] & 1) == 0)
        {
          v13 = *v13;
          if (!v13)
          {
            goto LABEL_16;
          }
        }

LABEL_91:
        v42 = AudioUnitSetProperty(v13[2], 0xC1Eu, 0, 0, v60, 0x10u);
        if (v42)
        {
          v43 = STS_N_Log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ApplyStoredPerLabelStateToSpatializers";
            *&buf[12] = 1024;
            *&buf[14] = 1036;
            *&buf[18] = 1024;
            *&buf[20] = v42;
            _os_log_error_impl(&dword_23988E000, v43, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
          }
        }

        while (1)
        {
          v13 = *v13;
          if (!v13)
          {
            break;
          }

          if (v13[3])
          {
            goto LABEL_91;
          }
        }
      }

LABEL_16:
      if (*(a2 + 240))
      {
        v14 = vsubq_f32(*(a2 + 208), *(a1 + 160));
        LODWORD(inData) = v14.i32[0];
        *(&inData + 1) = -v14.f32[2];
        DWORD2(inData) = v14.i32[1];
        v15 = v58;
        if (v58)
        {
          while ((v15[3] & 1) == 0)
          {
            v15 = *v15;
            if (!v15)
            {
              goto LABEL_20;
            }
          }

LABEL_114:
          v53 = AudioUnitSetProperty(v15[2], 0xC2Bu, 0, 0, &inData, 0xCu);
          if (v53)
          {
            v54 = STS_N_Log();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "ApplyStoredPerLabelStateToSpatializers";
              *&buf[12] = 1024;
              *&buf[14] = 1051;
              *&buf[18] = 1024;
              *&buf[20] = v53;
              _os_log_error_impl(&dword_23988E000, v54, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
            }
          }

          while (1)
          {
            v15 = *v15;
            if (!v15)
            {
              break;
            }

            if (v15[3])
            {
              goto LABEL_114;
            }
          }
        }
      }
    }

LABEL_20:
    if (*(a2 + 240) == 1)
    {
      *v60 = 0;
      LODWORD(inData) = 0;
      v55[0] = 0.0;
      STS_N_CalculateAngularOrientationFromTransform(a2 + 160, &inData, v60, v55);
      v16 = v58;
      if (v58)
      {
        while ((v16[3] & 1) == 0)
        {
          v16 = *v16;
          if (!v16)
          {
            goto LABEL_24;
          }
        }

        v44 = *&inData;
        v45 = *v60;
        v46 = v55[0];
LABEL_99:
        v47 = AudioUnitSetParameter(v16[2], 0x16u, 1u, 0, v44, 0);
        if (v47)
        {
          v48 = STS_N_Log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ApplyStoredPerLabelStateToSpatializers";
            *&buf[12] = 1024;
            *&buf[14] = 1061;
            *&buf[18] = 1024;
            *&buf[20] = v47;
            _os_log_error_impl(&dword_23988E000, v48, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
          }
        }

        v49 = AudioUnitSetParameter(v16[2], 0x17u, 1u, 0, v45, 0);
        if (v49)
        {
          v50 = STS_N_Log();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ApplyStoredPerLabelStateToSpatializers";
            *&buf[12] = 1024;
            *&buf[14] = 1062;
            *&buf[18] = 1024;
            *&buf[20] = v49;
            _os_log_error_impl(&dword_23988E000, v50, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
          }
        }

        v51 = AudioUnitSetParameter(v16[2], 0x18u, 1u, 0, v46, 0);
        if (v51)
        {
          v52 = STS_N_Log();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ApplyStoredPerLabelStateToSpatializers";
            *&buf[12] = 1024;
            *&buf[14] = 1063;
            *&buf[18] = 1024;
            *&buf[20] = v51;
            _os_log_error_impl(&dword_23988E000, v52, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
          }
        }

        while (1)
        {
          v16 = *v16;
          if (!v16)
          {
            break;
          }

          if (v16[3])
          {
            goto LABEL_99;
          }
        }
      }
    }
  }

LABEL_24:
  if ((*(a2 + 152) & 1) == 0)
  {
    v17 = v58;
    if (*(a2 + 240) == 1 && v58 != 0)
    {
      while ((v17[3] & 1) == 0)
      {
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_31;
        }
      }

LABEL_80:
      v38 = AudioUnitSetParameter(v17[2], 3u, 1u, 0, *(a2 + 228), 0);
      if (v38)
      {
        v39 = STS_N_Log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "ApplyStoredPerLabelStateToSpatializers";
          *&buf[12] = 1024;
          *&buf[14] = 1071;
          *&buf[18] = 1024;
          *&buf[20] = v38;
          _os_log_error_impl(&dword_23988E000, v39, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
        }
      }

      v40 = AudioUnitSetParameter(v17[2], 0x23u, 1u, 0, *(a2 + 232), 0);
      if (v40)
      {
        v41 = STS_N_Log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "ApplyStoredPerLabelStateToSpatializers";
          *&buf[12] = 1024;
          *&buf[14] = 1072;
          *&buf[18] = 1024;
          *&buf[20] = v40;
          _os_log_error_impl(&dword_23988E000, v41, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
        }
      }

      while (1)
      {
        v17 = *v17;
        if (!v17)
        {
          break;
        }

        if (v17[3])
        {
          goto LABEL_80;
        }
      }
    }
  }

LABEL_31:
  if (*(a2 + 116) == 20)
  {
    v19 = 1;
  }

  else if ((*(a2 + 152) & 1) != 0 || *(a2 + 240) != 1)
  {
    v19 = 3;
  }

  else
  {
    v19 = *(a2 + 224);
  }

  *v60 = v19;
  for (i = v58; i; i = *i)
  {
    if (i[3])
    {
      while (v19 != 1)
      {
        v25 = AudioUnitSetProperty(i[2], 0xBBDu, 1u, 0, v60, 4u);
        if (v25)
        {
          v26 = STS_N_Log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ApplyStoredPerLabelStateToSpatializers";
            *&buf[12] = 1024;
            *&buf[14] = 1095;
            *&buf[18] = 1024;
            *&buf[20] = v25;
            _os_log_error_impl(&dword_23988E000, v26, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
          }
        }

        LODWORD(inData) = 0;
        v27 = AudioUnitSetProperty(i[2], 0xCEEu, 0, 0, &inData, 4u);
        if (v27)
        {
          v24 = STS_N_Log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ApplyStoredPerLabelStateToSpatializers";
            *&buf[12] = 1024;
            *&buf[14] = 1103;
            *&buf[18] = 1024;
            *&buf[20] = v27;
            _os_log_error_impl(&dword_23988E000, v24, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
          }

LABEL_53:

          goto LABEL_54;
        }

        do
        {
LABEL_54:
          i = *i;
          if (!i)
          {
            goto LABEL_40;
          }
        }

        while ((i[3] & 1) == 0);
        v19 = *v60;
      }

      LODWORD(inData) = 1;
      v23 = AudioUnitSetProperty(i[2], 0xCEEu, 0, 0, &inData, 4u);
      if (!v23)
      {
        goto LABEL_54;
      }

      v24 = STS_N_Log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ApplyStoredPerLabelStateToSpatializers";
        *&buf[12] = 1024;
        *&buf[14] = 1087;
        *&buf[18] = 1024;
        *&buf[20] = v23;
        _os_log_error_impl(&dword_23988E000, v24, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
      }

      goto LABEL_53;
    }
  }

LABEL_40:
  result = std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::~__hash_table(&v57);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23989250C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void STS_N::SetPropertyOnSpatializers(uint64_t a1, const __CFString *a2, void *value, uint64_t a4)
{
  v83 = *MEMORY[0x277D85DE8];
  v73 = value;
  v8 = *(a1 + 104);
  if (value)
  {
    CFDictionarySetValue(v8, a2, value);
  }

  else
  {
    CFDictionaryRemoveValue(v8, a2);
  }

  if (!a4)
  {
    a4 = a1 + 64;
  }

  if (!*(a4 + 24))
  {
    goto LABEL_134;
  }

  if (CFEqual(a2, @"ListenerPose"))
  {
    v9 = MEMORY[0x277D860B8];
    if (value)
    {
      v84.location = 0;
      v84.length = 64;
      CFDataGetBytes(value, v84, buffer);
    }

    else
    {
      v10 = *(MEMORY[0x277D860B8] + 16);
      *buffer = *MEMORY[0x277D860B8];
      *&buffer[16] = v10;
      v11 = *(MEMORY[0x277D860B8] + 48);
      v81 = *(MEMORY[0x277D860B8] + 32);
      v82 = v11;
    }

    v12 = v9[1];
    *valuePtr = *v9;
    v70 = v12;
    v13 = v9[3];
    v71 = v9[2];
    v72 = v13;
    v14 = CFDictionaryGetValue(*(a1 + 104), @"SourcePose");
    if (v14)
    {
      v86.location = 0;
      v86.length = 64;
      CFDataGetBytes(v14, v86, valuePtr);
    }

    STS_N_CalculateQuaternionOrientationFromTransform(buffer, &inData);
    v15 = vsubq_f32(v72, v82);
    HIDWORD(v65) = v15.i32[0];
    v66 = -v15.f32[2];
    v67 = v15.i32[1];
    v16 = *(a4 + 16);
    if (v16)
    {
      while ((v16[3] & 1) == 0)
      {
        v16 = *v16;
        if (!v16)
        {
          goto LABEL_134;
        }
      }

LABEL_20:
      v17 = AudioUnitSetProperty(v16[2], 0xC1Eu, 0, 0, &inData, 0x10u);
      if (v17)
      {
        v18 = v17;
        v19 = STS_N_Log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v75 = "SetPropertyOnSpatializers";
          v76 = 1024;
          v77 = 397;
          v78 = 1024;
          v79 = v18;
          _os_log_error_impl(&dword_23988E000, v19, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
        }
      }

      v20 = AudioUnitSetProperty(v16[2], 0xC2Bu, 0, 0, &v65 + 4, 0xCu);
      if (v20)
      {
        v21 = v20;
        v22 = STS_N_Log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v75 = "SetPropertyOnSpatializers";
          v76 = 1024;
          v77 = 404;
          v78 = 1024;
          v79 = v21;
          _os_log_error_impl(&dword_23988E000, v22, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
        }
      }

      while (1)
      {
        v16 = *v16;
        if (!v16)
        {
          break;
        }

        if (v16[3])
        {
          goto LABEL_20;
        }
      }
    }

    goto LABEL_134;
  }

  if (CFEqual(a2, @"SourcePose"))
  {
    if (value)
    {
      v85.location = 0;
      v85.length = 64;
      CFDataGetBytes(value, v85, buffer);
    }

    else
    {
      v25 = *(MEMORY[0x277D860B8] + 16);
      *buffer = *MEMORY[0x277D860B8];
      *&buffer[16] = v25;
      v26 = *(MEMORY[0x277D860B8] + 48);
      v81 = *(MEMORY[0x277D860B8] + 32);
      v82 = v26;
    }

    v27 = *(MEMORY[0x277D860B8] + 16);
    *valuePtr = *MEMORY[0x277D860B8];
    v70 = v27;
    v28 = *(MEMORY[0x277D860B8] + 48);
    v71 = *(MEMORY[0x277D860B8] + 32);
    v72 = v28;
    v29 = CFDictionaryGetValue(*(a1 + 104), @"ListenerPose");
    if (v29)
    {
      v87.location = 0;
      v87.length = 64;
      CFDataGetBytes(v29, v87, valuePtr);
    }

    v65 = 0;
    v64 = 0.0;
    STS_N_CalculateAngularOrientationFromTransform(buffer, &v65, &v65 + 1, &v64);
    v30 = vsubq_f32(v82, v72);
    LODWORD(inData) = v30.i32[0];
    *(&inData + 1) = -v30.f32[2];
    DWORD2(inData) = v30.i32[1];
    v31 = *(a4 + 16);
    if (v31)
    {
      while ((v31[3] & 1) == 0)
      {
        v31 = *v31;
        if (!v31)
        {
          goto LABEL_134;
        }
      }

      v33 = v65;
      v34 = v64;
LABEL_50:
      v35 = AudioUnitSetParameter(v31[2], 0x16u, 1u, 0, *&v33, 0);
      if (v35)
      {
        v36 = v35;
        v37 = STS_N_Log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v75 = "SetPropertyOnSpatializers";
          v76 = 1024;
          v77 = 431;
          v78 = 1024;
          v79 = v36;
          _os_log_error_impl(&dword_23988E000, v37, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
        }
      }

      v38 = AudioUnitSetParameter(v31[2], 0x17u, 1u, 0, *(&v33 + 1), 0);
      if (v38)
      {
        v39 = v38;
        v40 = STS_N_Log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v75 = "SetPropertyOnSpatializers";
          v76 = 1024;
          v77 = 432;
          v78 = 1024;
          v79 = v39;
          _os_log_error_impl(&dword_23988E000, v40, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
        }
      }

      v41 = AudioUnitSetParameter(v31[2], 0x18u, 1u, 0, v34, 0);
      if (v41)
      {
        v42 = v41;
        v43 = STS_N_Log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v75 = "SetPropertyOnSpatializers";
          v76 = 1024;
          v77 = 433;
          v78 = 1024;
          v79 = v42;
          _os_log_error_impl(&dword_23988E000, v43, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
        }
      }

      v44 = AudioUnitSetProperty(v31[2], 0xC2Bu, 0, 0, &inData, 0xCu);
      if (v44)
      {
        v45 = v44;
        v46 = STS_N_Log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v75 = "SetPropertyOnSpatializers";
          v76 = 1024;
          v77 = 440;
          v78 = 1024;
          v79 = v45;
          _os_log_error_impl(&dword_23988E000, v46, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
        }
      }

      while (1)
      {
        v31 = *v31;
        if (!v31)
        {
          break;
        }

        if (v31[3])
        {
          goto LABEL_50;
        }
      }
    }

    goto LABEL_134;
  }

  *buf = 0;
  if (STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::onceToken != -1)
  {
    dispatch_once(&STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::onceToken, &__block_literal_global_36);
  }

  v23 = CFDictionaryGetValue(STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::globalPropertyMap, a2);
  if (!v23 || !CFNumberGetValue(v23, kCFNumberSInt32Type, buf))
  {
    if (!CFStringGetCString(a2, valuePtr, 5, 0x8000100u))
    {
      goto LABEL_134;
    }

    v32 = strtoul(valuePtr, 0, 16);
    *buf = v32;
    if (v32 <= 3099)
    {
      if (v32 <= 0x25)
      {
        if (((1 << v32) & 0x801C00DFFLL) != 0)
        {
          v24 = 1;
LABEL_81:
          v48 = 1;
          goto LABEL_91;
        }

        if (((1 << v32) & 0x3FC200) != 0)
        {
          v24 = 0;
          goto LABEL_81;
        }

        if (((1 << v32) & 0x2004000000) != 0)
        {
          goto LABEL_90;
        }
      }

      if ((v32 - 3000) <= 0xD && ((1 << (v32 + 72)) & 0x2429) != 0)
      {
        goto LABEL_88;
      }

      if (v32 == 1005)
      {
LABEL_90:
        v24 = 0;
        v48 = 0;
        goto LABEL_91;
      }

LABEL_144:
      v63 = STS_N_Log();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buffer = 67109120;
        *&buffer[4] = *buf;
        _os_log_error_impl(&dword_23988E000, v63, OS_LOG_TYPE_ERROR, "setting unknown property/parameter %u", buffer, 8u);
      }

      goto LABEL_134;
    }

    if ((v32 - 3200) <= 9)
    {
      if (((1 << (v32 + 0x80)) & 0x3CF) != 0)
      {
        goto LABEL_90;
      }

LABEL_88:
      v48 = 0;
      v24 = 1;
      goto LABEL_91;
    }

    if ((v32 - 3100) <= 9)
    {
      v47 = 1 << (v32 - 28);
      if ((v47 & 0x238) != 0)
      {
        goto LABEL_88;
      }

      if ((v47 & 0x43) != 0)
      {
        goto LABEL_90;
      }
    }

    if (v32 == 4600)
    {
      goto LABEL_90;
    }

    goto LABEL_144;
  }

  if (CFEqual(a2, @"ReverbRoomType"))
  {
LABEL_36:
    v24 = 0;
    goto LABEL_99;
  }

  if (CFEqual(a2, @"SourceMode"))
  {
    v24 = 1;
    goto LABEL_99;
  }

  if (CFEqual(a2, @"SoundStageSize") || CFEqual(a2, @"SoundStageTransitionTime"))
  {
    goto LABEL_36;
  }

  v24 = CFEqual(a2, @"RoomConfiguration") == 0;
  v48 = v24;
LABEL_91:
  if (!value || !v48)
  {
    if (v48)
    {
      goto LABEL_134;
    }

LABEL_99:
    LOBYTE(inData) = 0;
    *valuePtr = 0;
    if (value)
    {
      v50 = (*buf - 3200);
      if (v50 <= 0x29)
      {
        if (((1 << (buf[0] + 0x80)) & 0x8000000155) != 0)
        {
          BytePtr = &v73;
          Length = 8;
          goto LABEL_131;
        }

        if (v50 == 41)
        {
          BytePtr = valuePtr;
          if (CFNumberGetValue(value, kCFNumberFloat32Type, valuePtr))
          {
            Length = 4;
            goto LABEL_131;
          }

          v54 = STS_N_Log();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_147;
          }

          goto LABEL_112;
        }
      }

      BytePtr = CFDataGetBytePtr(value);
      Length = CFDataGetLength(value);
    }

    else
    {
      Length = (*buf - 3200) < 0xA;
      if ((*buf - 3200) >= 0xA)
      {
        BytePtr = 0;
      }

      else
      {
        BytePtr = &inData;
      }

      if (*buf <= 3203)
      {
        if (*buf == 3200)
        {
          v53 = 3201;
        }

        else
        {
          if (*buf != 3202)
          {
            goto LABEL_131;
          }

          v53 = 3203;
        }
      }

      else
      {
        switch(*buf)
        {
          case 0xC88:
            v53 = 3209;
            break;
          case 0xC86:
            v53 = 3207;
            break;
          case 0xC84:
            v53 = 3205;
            break;
          default:
            goto LABEL_131;
        }
      }

      *buf = v53;
    }

LABEL_131:
    v58 = *(a4 + 16);
    if (v58)
    {
      while ((v58[3] & 1) == 0)
      {
        v58 = *v58;
        if (!v58)
        {
          goto LABEL_134;
        }
      }

LABEL_135:
      v60 = AudioUnitSetProperty(v58[2], *buf, v24, 0, BytePtr, Length);
      if (v60)
      {
        v61 = v60;
        v62 = STS_N_Log();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buffer = 136315650;
          *&buffer[4] = "SetPropertyOnSpatializers";
          *&buffer[12] = 1024;
          *&buffer[14] = 645;
          *&buffer[18] = 1024;
          *&buffer[20] = v61;
          _os_log_error_impl(&dword_23988E000, v62, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buffer, 0x18u);
        }
      }

      while (1)
      {
        v58 = *v58;
        if (!v58)
        {
          break;
        }

        if (v58[3])
        {
          goto LABEL_135;
        }
      }
    }

    goto LABEL_134;
  }

  *valuePtr = 0;
  if (!CFNumberGetValue(value, kCFNumberFloatType, valuePtr))
  {
    v54 = STS_N_Log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
LABEL_147:
      *buffer = 67109378;
      *&buffer[4] = *buf;
      *&buffer[8] = 2112;
      *&buffer[10] = value;
      _os_log_error_impl(&dword_23988E000, v54, OS_LOG_TYPE_ERROR, "failed to get value for propertyID %u from %@", buffer, 0x12u);
    }

LABEL_112:

    goto LABEL_134;
  }

  v49 = *(a4 + 16);
  if (v49)
  {
    while ((v49[3] & 1) == 0)
    {
      v49 = *v49;
      if (!v49)
      {
        goto LABEL_134;
      }
    }

LABEL_119:
    v55 = AudioUnitSetParameter(v49[2], *buf, v24, 0, *valuePtr, 0);
    if (v55)
    {
      v56 = v55;
      v57 = STS_N_Log();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buffer = 136315650;
        *&buffer[4] = "SetPropertyOnSpatializers";
        *&buffer[12] = 1024;
        *&buffer[14] = 536;
        *&buffer[18] = 1024;
        *&buffer[20] = v56;
        _os_log_error_impl(&dword_23988E000, v57, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buffer, 0x18u);
      }
    }

    while (1)
    {
      v49 = *v49;
      if (!v49)
      {
        break;
      }

      if (v49[3])
      {
        goto LABEL_119;
      }
    }
  }

LABEL_134:
  v59 = *MEMORY[0x277D85DE8];
}

void ___ZN5STS_N15GetPropertyInfoEPK10__CFStringPjS3_Ph_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::globalPropertyMap = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 5, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  valuePtr = 3;
  v1 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::globalPropertyMap, @"Gain", v1);
  CFRelease(v1);
  valuePtr = 11;
  v2 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::globalPropertyMap, @"ObstructionAttenuation", v2);
  CFRelease(v2);
  valuePtr = 10;
  v3 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::globalPropertyMap, @"OcclusionAttenuation", v3);
  CFRelease(v3);
  valuePtr = 35;
  v4 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::globalPropertyMap, @"ReverbBlend", v4);
  CFRelease(v4);
  valuePtr = 3005;
  v5 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::globalPropertyMap, @"SourceMode", v5);
  CFRelease(v5);
  valuePtr = 3240;
  v6 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::globalPropertyMap, @"SoundStageSize", v6);
  CFRelease(v6);
  valuePtr = 3241;
  v7 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::globalPropertyMap, @"SoundStageTransitionTime", v7);
  CFRelease(v7);
  valuePtr = 3239;
  v8 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::globalPropertyMap, @"RoomConfiguration", v8);
  CFRelease(v8);
  valuePtr = 10;
  v9 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(STS_N::GetPropertyInfo(__CFString const*,unsigned int *,unsigned int *,unsigned char *)::globalPropertyMap, @"ReverbRoomType", v9);
  CFRelease(v9);
}

void std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,BOOL>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v29 = *a1;
        *a1 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (v6 <= v5)
    {
      v17 = v5 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & v5;
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v17);
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v19;
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      v22 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        v23 = v19[1];
        if (v22 >= v6)
        {
          v23 = v22 % v6;
        }
      }

      else
      {
        v23 = v22 & (v6 - 1);
      }

      if (v23 != v17)
      {
        break;
      }

      v24 = v22 == v5 && v19[2] == a2[2];
      v25 = v24 != (v20 & 1);
      v26 = v20 & v25;
      v20 |= v25;
    }

    while (v26 != 1);
  }

  else
  {
    v21 = 0;
  }

  v27 = a2[1];
  if (v16.u32[0] > 1uLL)
  {
    if (v27 >= v6)
    {
      v27 %= v6;
    }
  }

  else
  {
    v27 &= v6 - 1;
  }

  if (!v21)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v18[v27] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_57;
    }

    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

LABEL_56:
    *(*a1 + 8 * v28) = a2;
    goto LABEL_57;
  }

  *a2 = *v21;
  *v21 = a2;
  if (*a2)
  {
    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

    if (v28 != v27)
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  ++*(a1 + 24);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t std::pair<std::string const,std::unique_ptr<STS_N::PerLabelInfo>>::~pair(uint64_t a1)
{
  std::unique_ptr<STS_N::PerLabelInfo>::~unique_ptr[abi:ne200100]((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<STS_N::PerLabelInfo>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::__hash_table<OpaqueFigSTS *,std::hash<OpaqueFigSTS *>,std::equal_to<OpaqueFigSTS *>,std::allocator<OpaqueFigSTS *>>::__emplace_unique_key_args<OpaqueFigSTS *,OpaqueFigSTS * const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void STS_N::SetSoundStageTransitionDurationOnSpatializers(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  STS_N::SetPropertyOnSpatializers(a1, @"SoundStageTransitionTime", v2, 0);
}

void STS_N::SetSoundStageSizeOnSpatializers(uint64_t a1, int a2)
{
  if ((a2 - 1) >= 4)
  {
    if (a2)
    {
      a2 = 0;
    }

    else
    {
      v3 = STS_N_Log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23988E000, v3, OS_LOG_TYPE_ERROR, "Attempted to convert kSTSSoundStageSize_Automatic to an AUSM AudioUnitPropertyID, but it does not exist. Defaulting to kSTSSoundStageSize_Large", buf, 2u);
      }

      a2 = 3;
    }
  }

  v5 = a2;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:4];
  STS_N::SetPropertyOnSpatializers(a1, @"SoundStageSize", v4, 0);
}

void STS_N::SetPropertyForLabel(os_unfair_lock_t lock, unint64_t a2, void *a3, const __CFString *a4, void *a5)
{
  v7 = a3;
  if (!a3)
  {
    getkFigSTSLabel_Global();
    v7 = v10;
  }

  os_unfair_lock_lock(lock);
  v11 = STS_N::InfoForLabel(lock, v7);
  v12 = v11;
  if (a2)
  {
    std::__hash_table<OpaqueFigSTS *,std::hash<OpaqueFigSTS *>,std::equal_to<OpaqueFigSTS *>,std::allocator<OpaqueFigSTS *>>::__emplace_unique_key_args<OpaqueFigSTS *,OpaqueFigSTS * const&>((v11 + 24), a2);
  }

  STS_N::SetPropertyOnSpatializers(v12, a4, a5, 0);
  getkFigSTSLabel_Global();
  if (CFEqual(v7, v13))
  {
    v14 = *&lock[6]._os_unfair_lock_opaque;
    if (v14)
    {
      v15 = lock + 48;
      do
      {
        v16 = *(v14 + 39);
        if (v16 >= 0)
        {
          v17 = *(v14 + 39);
        }

        else
        {
          v17 = v14[3];
        }

        os_unfair_lock_opaque_high = HIBYTE(lock[53]._os_unfair_lock_opaque);
        v19 = os_unfair_lock_opaque_high;
        if ((os_unfair_lock_opaque_high & 0x80u) != 0)
        {
          os_unfair_lock_opaque_high = *&lock[50]._os_unfair_lock_opaque;
        }

        if (v17 != os_unfair_lock_opaque_high || (v16 >= 0 ? (v20 = (v14 + 2)) : (v20 = v14[2]), (v21 = *&v15->_os_unfair_lock_opaque, v19 >= 0) ? (v22 = lock + 48) : (v22 = *&v15->_os_unfair_lock_opaque), memcmp(v20, v22, v17)))
        {
          STS_N::SetPropertyOnSpatializers(v14[5], a4, a5, 0);
        }

        v14 = *v14;
      }

      while (v14);
    }
  }

  os_unfair_lock_unlock(lock);
}

uint64_t std::pair<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>::~pair(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<OpaqueAudioComponentInstance * const,std::pair<std::string,std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t STS_N::CanDeleteSpatializerInfo(uint64_t a1, const void **a2)
{
  if (a2[6])
  {
    return 0;
  }

  if (a2[11])
  {
    return 0;
  }

  result = [a2[18] isEmpty];
  if (result)
  {
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    v7 = *(a1 + 215);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a1 + 200);
    }

    if (v6 == v7 && (v5 >= 0 ? (v9 = a2) : (v9 = *a2), (v12 = *(a1 + 192), v11 = (a1 + 192), v10 = v12, v8 >= 0) ? (v13 = v11) : (v13 = v10), !memcmp(v9, v13, v6)))
    {
      return CFDictionaryGetCount(a2[13]) == 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::remove(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>>>::find<OpaqueAudioComponentInstance *>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= a2)
          {
            v10 %= a2;
          }
        }

        else
        {
          v10 &= a2 - 1;
        }

        if (v10 != v7)
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

void STS_N::SetSoundStageParametersUnderLock(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v31 = *MEMORY[0x277D85DE8];
  v6 = STS_N::InfoForLabel(a1, a2);
  v7 = v6;
  if (*(a3 + 1) == 1)
  {
    *(v6 + 112) = *a3;
  }

  if (*(a3 + 8) == 1)
  {
    v8 = *(a3 + 4);
    if (*(v6 + 116) != v8)
    {
      *(v6 + 116) = v8;
      *(v6 + 140) = 1;
    }
  }

  if (*(a3 + 16) == 1)
  {
    *(v6 + 120) = *(a3 + 12);
  }

  v9 = *(v6 + 136);
  if (*(v6 + 116) == 20)
  {
    v10 = 5;
  }

  else
  {
    v11 = *(v6 + 120);
    if (v11 > 4)
    {
      v10 = 3;
    }

    else
    {
      v10 = dword_23989AC90[v11];
    }
  }

  *(v6 + 136) = v10;
  if (v10 != v9)
  {
    v12 = STSSoundStageControllerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v28 = STSSoundStageController::SoundStageSizeToString(*(v7 + 136));
      v29 = 136315138;
      *v30 = v28;
      _os_log_debug_impl(&dword_23988E000, v12, OS_LOG_TYPE_DEBUG, "STSSoundStageController::pickSoundStageSize() picked a new, different sound stage: %s", &v29, 0xCu);
    }

    *(v7 + 141) = 1;
  }

  if (*(a3 + 24) == 1)
  {
    v13 = *(a3 + 20);
    if (vabds_f32(v13, *(v7 + 124)) > 0.001)
    {
      *(v7 + 124) = v13;
      *(v7 + 142) = 1;
    }
  }

  if (*(a3 + 32) == 1)
  {
    v14 = *(a3 + 28);
    if (v14 != *(v7 + 128))
    {
      *(v7 + 128) = v14;
      *(v7 + 143) = 1;
    }
  }

  if (*(a3 + 40) == 1)
  {
    v15 = *(a3 + 36);
    if (v15 != *(v7 + 132))
    {
      *(v7 + 132) = v15;
      *(v7 + 143) = 1;
    }
  }

  if (*(v7 + 143) == 1)
  {
    v16 = STS_N_Log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v4;
      if (*(v4 + 23) < 0)
      {
        v17 = *v4;
      }

      v29 = 136315138;
      *v30 = v17;
      _os_log_impl(&dword_23988E000, v16, OS_LOG_TYPE_DEFAULT, "SetSoundStageParameters caused spatializer's soundStageController to update preset for label %s", &v29, 0xCu);
    }

    [*(v7 + 144) fireAll];
  }

  if (*(v7 + 140) == 1)
  {
    v18 = *(v7 + 116);
    v19 = STS_N_Log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v4;
      if (*(v4 + 23) < 0)
      {
        v20 = *v4;
      }

      v29 = 67109378;
      *v30 = v18;
      *&v30[4] = 2080;
      *&v30[6] = v20;
      _os_log_impl(&dword_23988E000, v19, OS_LOG_TYPE_DEFAULT, "SetSoundStageParameters updating spatialization preference to %d for label %s", &v29, 0x12u);
    }

    STS_N::ApplyStoredPerLabelStateToSpatializers(a1, v7, 0);
  }

  if (*(v7 + 142) == 1)
  {
    v21 = *(v7 + 124);
    v22 = STS_N_Log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v4;
      if (*(v4 + 23) < 0)
      {
        v23 = *v4;
      }

      v29 = 134218242;
      *v30 = v21;
      *&v30[8] = 2080;
      *&v30[10] = v23;
      _os_log_impl(&dword_23988E000, v22, OS_LOG_TYPE_DEFAULT, "SetSoundStageParameters updating sound stage transition duration to %0.2f for label %s", &v29, 0x16u);
    }

    STS_N::SetSoundStageTransitionDurationOnSpatializers(v7);
  }

  if (*(v7 + 141) == 1)
  {
    v24 = *(v7 + 136);
    v25 = STS_N_Log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = STSSoundStageController::SoundStageSizeToString(v24);
      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      v29 = 136315394;
      *v30 = v26;
      *&v30[8] = 2080;
      *&v30[10] = v4;
      _os_log_impl(&dword_23988E000, v25, OS_LOG_TYPE_DEFAULT, "SetSoundStageParameters updating sound stage size to %s for label %s", &v29, 0x16u);
    }

    STS_N::SetSoundStageSizeOnSpatializers(v7, v24);
  }

  *(v7 + 140) = 0;
  v27 = *MEMORY[0x277D85DE8];
}

void STSUnregisterSpatializer(unint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = CADeprecated::TSingleton<STS_N>::instance();
  if (a1)
  {
    v3 = v2;
    os_unfair_lock_lock(v2);
    v5 = *(v3 + 48);
    v4 = *(v3 + 56);
    v6 = std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>>>::find<OpaqueAudioComponentInstance *>(v5, v4, a1);
    if (v6)
    {
      v7 = v6[1];
      v8 = vcnt_s8(v4);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        if (v7 >= v4)
        {
          v7 %= v4;
        }
      }

      else
      {
        v7 &= v4 - 1;
      }

      v9 = *(v5 + 8 * v7);
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9 != v6);
      if (v10 == (v3 + 64))
      {
        goto LABEL_20;
      }

      v11 = v10[1];
      if (v8.u32[0] > 1uLL)
      {
        if (v11 >= v4)
        {
          v11 %= v4;
        }
      }

      else
      {
        v11 &= v4 - 1;
      }

      if (v11 != v7)
      {
LABEL_20:
        if (!*v6)
        {
          goto LABEL_21;
        }

        v12 = *(*v6 + 8);
        if (v8.u32[0] > 1uLL)
        {
          if (v12 >= v4)
          {
            v12 %= v4;
          }
        }

        else
        {
          v12 &= v4 - 1;
        }

        if (v12 != v7)
        {
LABEL_21:
          *(v5 + 8 * v7) = 0;
        }
      }

      v13 = *v6;
      if (*v6)
      {
        v14 = *(v13 + 8);
        if (v8.u32[0] > 1uLL)
        {
          if (v14 >= v4)
          {
            v14 %= v4;
          }
        }

        else
        {
          v14 &= v4 - 1;
        }

        if (v14 != v7)
        {
          *(*(v3 + 48) + 8 * v14) = v10;
          v13 = *v6;
        }
      }

      *v10 = v13;
      *v6 = 0;
      --*(v3 + 72);
      *&v38 = v6;
      *(&v38 + 1) = v3 + 48;
      v39 = 1;
      memset(v40, 0, sizeof(v40));
      std::unique_ptr<std::__hash_node<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](&v38);
    }

    v15 = STS_N_Log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v38) = 134217984;
      *(&v38 + 4) = a1;
      _os_log_debug_impl(&dword_23988E000, v15, OS_LOG_TYPE_DEBUG, "Unregistering spatializer %p", &v38, 0xCu);
    }

    v16 = *(v3 + 24);
    if (v16)
    {
      v17 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
      v18 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v17 >> 47) ^ v17);
      v19 = 0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47));
      do
      {
        while (1)
        {
          v20 = v16[5];
          v21 = v20[9];
          if (v21)
          {
            v22 = vcnt_s8(v21);
            v22.i16[0] = vaddlv_u8(v22);
            if (v22.u32[0] > 1uLL)
            {
              v23 = v19;
              if (v19 >= *&v21)
              {
                v23 = v19 % *&v21;
              }
            }

            else
            {
              v23 = v19 & (*&v21 - 1);
            }

            v24 = v20[8];
            v25 = *(*&v24 + 8 * v23);
            if (v25)
            {
              v26 = *v25;
              if (*v25)
              {
                v27 = *&v21 - 1;
                do
                {
                  v28 = v26[1];
                  if (v28 == v19)
                  {
                    if (*&v26[2] == a1)
                    {
                      v29 = v26[1];
                      if (v22.u32[0] > 1uLL)
                      {
                        if (v29 >= *&v21)
                        {
                          v29 %= *&v21;
                        }
                      }

                      else
                      {
                        v29 &= v27;
                      }

                      v30 = *(*&v24 + 8 * v29);
                      do
                      {
                        v31 = v30;
                        v30 = *v30;
                      }

                      while (v30 != v26);
                      if (v31 == &v20[10])
                      {
                        goto LABEL_69;
                      }

                      v32 = v31[1];
                      if (v22.u32[0] > 1uLL)
                      {
                        if (v32 >= *&v21)
                        {
                          v32 %= *&v21;
                        }
                      }

                      else
                      {
                        v32 &= v27;
                      }

                      if (v32 != v29)
                      {
LABEL_69:
                        if (!*v26)
                        {
                          goto LABEL_70;
                        }

                        v33 = *(*v26 + 8);
                        if (v22.u32[0] > 1uLL)
                        {
                          if (v33 >= *&v21)
                          {
                            v33 %= *&v21;
                          }
                        }

                        else
                        {
                          v33 &= v27;
                        }

                        if (v33 != v29)
                        {
LABEL_70:
                          *(*&v24 + 8 * v29) = 0;
                        }
                      }

                      v34 = *v26;
                      if (*v26)
                      {
                        v35 = *(*&v34 + 8);
                        if (v22.u32[0] > 1uLL)
                        {
                          if (v35 >= *&v21)
                          {
                            v35 %= *&v21;
                          }
                        }

                        else
                        {
                          v35 &= v27;
                        }

                        if (v35 != v29)
                        {
                          *(*&v20[8] + 8 * v35) = v31;
                          v34 = *v26;
                        }
                      }

                      *v31 = v34;
                      *v26 = 0;
                      --*&v20[11];
                      operator delete(v26);
                      v20 = v16[5];
                      break;
                    }
                  }

                  else
                  {
                    if (v22.u32[0] > 1uLL)
                    {
                      if (v28 >= *&v21)
                      {
                        v28 %= *&v21;
                      }
                    }

                    else
                    {
                      v28 &= v27;
                    }

                    if (v28 != v23)
                    {
                      break;
                    }
                  }

                  v26 = *v26;
                }

                while (v26);
              }
            }
          }

          if (!STS_N::CanDeleteSpatializerInfo(v3, v20))
          {
            break;
          }

          v36 = *v16;
          std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::remove(&v38, (v3 + 8), v16);
          std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,void *>>>>::~unique_ptr[abi:ne200100](&v38);
          v16 = v36;
          if (!v36)
          {
            goto LABEL_83;
          }
        }

        v16 = *v16;
      }

      while (v16);
    }

LABEL_83:
    os_unfair_lock_unlock(v3);
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t CADeprecated::TSingleton<STS_N>::instance()
{
  if (atomic_load_explicit(&CADeprecated::TSingleton<STS_N>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&CADeprecated::TSingleton<STS_N>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<STS_N>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<STS_N>::sInstance;
}

void sub_2398951E4(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>>>::~__hash_table(v4);
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::~__hash_table(v3);
  MEMORY[0x23EE7A2B0](v2, v1);
  _Unwind_Resume(a1);
}

void STSRegisterSpatializerWithFallback(OpaqueAudioComponentInstance *a1, __CFString *a2, __CFString *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = CADeprecated::TSingleton<STS_N>::instance();
  v7 = 0;
  if (a2 && a3)
  {
    v7 = CFStringCompare(a2, a3, 0) == kCFCompareEqualTo;
  }

  if (a3 && !v7)
  {
    v8 = STS_N_Log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      *&buf[22] = 2112;
      v36 = a3;
      _os_log_impl(&dword_23988E000, v8, OS_LOG_TYPE_DEFAULT, "registering spatializer:%p with preferredLabel:%@ and backupLabel:%@", buf, 0x20u);
    }

    os_unfair_lock_lock(v6);
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    v10 = CFStringGetCStringPtr(a3, 0x8000100u);
    v11 = *(STS_N::InfoForLabel(v6, a2) + 48);
    STS_N::SetSpatializerActiveUnderLock(v6, a1, a2, v11 != 0);
    STS_N::SetSpatializerActiveUnderLock(v6, a1, a3, v11 == 0);
    std::string::basic_string[abi:ne200100]<0>(v29, CStringPtr);
    std::string::basic_string[abi:ne200100]<0>(v27, v10);
    v12 = *v29;
    v13 = v30;
    v29[1] = 0;
    v30 = 0;
    v33 = *v27;
    v14 = v28;
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    v29[0] = 0;
    *buf = a1;
    v36 = v13;
    *&buf[8] = v12;
    v32 = 0;
    v31 = 0uLL;
    v38 = v14;
    *__p = v33;
    v33 = 0uLL;
    v34 = 0;
    v15 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
    v16 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v15 >> 47) ^ v15);
    v17 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
    v18 = *(v6 + 56);
    if (!*&v18)
    {
      goto LABEL_30;
    }

    v19 = vcnt_s8(v18);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.u32[0] > 1uLL)
    {
      v20 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
      if (v17 >= *&v18)
      {
        v20 = v17 % *&v18;
      }
    }

    else
    {
      v20 = v17 & (*&v18 - 1);
    }

    v23 = *(*(v6 + 48) + 8 * v20);
    if (!v23 || (v24 = *v23) == 0)
    {
LABEL_30:
      operator new();
    }

    while (1)
    {
      v25 = v24[1];
      if (v25 == v17)
      {
        if (v24[2] == a1)
        {
          if (SHIBYTE(v38) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v36) < 0)
          {
            operator delete(*&buf[8]);
          }

          if (SHIBYTE(v28) < 0)
          {
            operator delete(v27[0]);
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }

          os_unfair_lock_unlock(v6);
          v26 = *MEMORY[0x277D85DE8];
          return;
        }
      }

      else
      {
        if (v19.u32[0] > 1uLL)
        {
          if (v25 >= *&v18)
          {
            v25 %= *&v18;
          }
        }

        else
        {
          v25 &= *&v18 - 1;
        }

        if (v25 != v20)
        {
          goto LABEL_30;
        }
      }

      v24 = *v24;
      if (!v24)
      {
        goto LABEL_30;
      }
    }
  }

  os_unfair_lock_lock(v6);
  if (!a2)
  {
    getkFigSTSLabel_Global();
    a2 = v21;
  }

  STS_N::SetSpatializerActiveUnderLock(v6, a1, a2, 1);
  v22 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock(v6);
}

void sub_2398958F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](&a28);
  std::pair<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>::~pair(&a31);
  std::pair<std::string,std::string>::~pair(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  os_unfair_lock_unlock(v31);
  _Unwind_Resume(a1);
}

void STSSetSoundStageParameters(uint64_t a1, __CFString *a2)
{
  v2 = a2;
  v17 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    getkFigSTSLabel_Global();
    v2 = v4;
  }

  v5 = CADeprecated::TSingleton<STS_N>::instance();
  v6 = STS_N_Log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
    *(buf.__r_.__value_.__r.__words + 4) = v2;
    _os_log_impl(&dword_23988E000, v6, OS_LOG_TYPE_DEFAULT, "STSSetSoundStageParameters called for spatializer with label %@", &buf, 0xCu);
  }

  os_unfair_lock_lock(v5);
  v7 = *(STS_N::InfoForLabel(v5, v2) + 80);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = 0;
  do
  {
    v9 = std::__hash_table<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::__unordered_map_hasher<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::hash<OpaqueAudioComponentInstance *>,std::equal_to<OpaqueAudioComponentInstance *>,true>,std::__unordered_map_equal<OpaqueAudioComponentInstance *,std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>,std::equal_to<OpaqueAudioComponentInstance *>,std::hash<OpaqueAudioComponentInstance *>,true>,std::allocator<std::__hash_value_type<OpaqueAudioComponentInstance *,std::pair<std::string,std::string>>>>::find<OpaqueAudioComponentInstance *>(*(v5 + 48), *(v5 + 56), v7[2]);
    if (v9)
    {
      v10 = v9;
      if (*(v9 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, v9[3], v9[4]);
      }

      else
      {
        buf = *(v9 + 1);
      }

      STS_N::SetSoundStageParametersUnderLock(v5, &buf, a1);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (*(v10 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v10[6], v10[7]);
      }

      else
      {
        v15 = *(v10 + 2);
      }

      STS_N::SetSoundStageParametersUnderLock(v5, &v15, a1);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      v8 = 1;
    }

    v7 = *v7;
  }

  while (v7);
  if ((v8 & 1) == 0)
  {
LABEL_21:
    CStringPtr = CFStringGetCStringPtr(v2, 0x8000100u);
    std::string::basic_string[abi:ne200100]<0>(__p, CStringPtr);
    STS_N::SetSoundStageParametersUnderLock(v5, __p, a1);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  os_unfair_lock_unlock(v5);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_239895B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v28);
  _Unwind_Resume(a1);
}

void STSSetRoomConfigurationDictionary(void *a1, void *a2)
{
  v2 = a2;
  v12 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    getkFigSTSLabel_Global();
    v2 = v4;
  }

  v5 = STS_N_Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v2;
    v10 = 2112;
    v11 = a1;
    _os_log_impl(&dword_23988E000, v5, OS_LOG_TYPE_DEFAULT, "STSSetRoomConfigurationDictionary with label=%@, config=%@", &v8, 0x16u);
  }

  v6 = CADeprecated::TSingleton<STS_N>::instance();
  STS_N::SetPropertyForLabel(v6, 0, v2, @"RoomConfiguration", a1);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t STSAddForcedReconfigurationCallback(void *a1, void *a2)
{
  v3 = a2;
  v4 = CADeprecated::TSingleton<STS_N>::instance();
  v5 = v3;
  os_unfair_lock_lock(v4);
  v6 = [*(STS_N::InfoForLabel(v4 a1) + 144)];
  os_unfair_lock_unlock(v4);

  return v6;
}

void STSRemoveForcedReconfigurationCallback(void *a1, uint64_t a2)
{
  v4 = CADeprecated::TSingleton<STS_N>::instance();
  os_unfair_lock_lock(v4);
  v5 = STS_N::InfoForLabel(v4, a1);
  [*(v5 + 144) removeCallback:a2];
  if (STS_N::CanDeleteSpatializerInfo(v4, v5))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [a1 UTF8String]);
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::find<std::string>((v4 + 8), __p);
    if (v6)
    {
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::remove(v9, (v4 + 8), v6);
      std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,void *>>>>::~unique_ptr[abi:ne200100](v9);
    }

    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  os_unfair_lock_unlock(v4);
}

uint64_t STSTrackedLabelCount()
{
  v0 = CADeprecated::TSingleton<STS_N>::instance();
  os_unfair_lock_lock(v0);
  v1 = *(v0 + 32);
  os_unfair_lock_unlock(v0);
  return v1;
}

char *STSSoundStageController::SoundStageSizeToString(unsigned int a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 >= 6)
  {
    v3 = STSSoundStageControllerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = "STSSoundStageController.mm";
      v7 = 1024;
      v8 = 29;
      v9 = 1024;
      v10 = a1;
      _os_log_impl(&dword_23988E000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundStageSizeToString failed to find string for input SoundStageSize of value: %u. Returning emtpy string", &v5, 0x18u);
    }

    result = &unk_23989BF89;
  }

  else
  {
    result = off_278AA47A8[a1];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

id STSSoundStageControllerLog(void)
{
  v1 = 0x27DF83000uLL;
  {
    v1 = 0x27DF83000;
    if (v4)
    {
      STSSoundStageControllerLog(void)::sLog = os_log_create("com.apple.STS-N", "STSSoundStageController");
      v1 = 0x27DF83000;
    }
  }

  v2 = *(v1 + 1744);

  return v2;
}

uint64_t STSCreateFlavorN(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  cf = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v2 = getFigSTSGetClassIDSymbolLoc(void)::ptr;
  v20 = getFigSTSGetClassIDSymbolLoc(void)::ptr;
  if (!getFigSTSGetClassIDSymbolLoc(void)::ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL28getFigSTSGetClassIDSymbolLocv_block_invoke;
    v22 = &unk_278AA47E0;
    v23 = &v17;
    v3 = MediaExperienceLibrary();
    v4 = dlsym(v3, "FigSTSGetClassID");
    *(v23[1] + 24) = v4;
    getFigSTSGetClassIDSymbolLoc(void)::ptr = *(v23[1] + 24);
    v2 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v2)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CMBaseClassID softLink_FigSTSGetClassID()") description:{@"STS_N.mm", 34, @"%s", dlerror()}];
    goto LABEL_16;
  }

  v5 = v2();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v6 = getCMDerivedObjectCreateSymbolLoc(void)::ptr;
  v20 = getCMDerivedObjectCreateSymbolLoc(void)::ptr;
  if (!getCMDerivedObjectCreateSymbolLoc(void)::ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL33getCMDerivedObjectCreateSymbolLocv_block_invoke;
    v22 = &unk_278AA47E0;
    v23 = &v17;
    v7 = CoreMediaLibrary();
    v8 = dlsym(v7, "CMDerivedObjectCreate");
    *(v23[1] + 24) = v8;
    getCMDerivedObjectCreateSymbolLoc(void)::ptr = *(v23[1] + 24);
    v6 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v6)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"OSStatus softLink_CMDerivedObjectCreate(CFAllocatorRef description:{const CMBaseVTable *, CMBaseClassID, CMBaseObjectRef *)"), @"STS_N.mm", 29, @"%s", dlerror()}];
LABEL_16:
    __break(1u);
  }

  v9 = v6(a1, &kSTS_N_VTable, v5, &cf);
  if (!v9)
  {
    DerivedStorage = softLink_CMBaseObjectGetDerivedStorage(cf);
    *DerivedStorage = 0;
    DerivedStorage[1] = 0;
    operator new();
  }

  v10 = STS_N_Log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "STSCreateFlavorN";
    *&buf[12] = 1024;
    *&buf[14] = 632;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    _os_log_error_impl(&dword_23988E000, v10, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_239896490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void *___ZL28getFigSTSGetClassIDSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "FigSTSGetClassID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigSTSGetClassIDSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaExperienceLibrary(void)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaExperienceLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = ___ZL26MediaExperienceLibraryCorePPc_block_invoke_72;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278AA4838;
    v7 = 0;
    MediaExperienceLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaExperienceLibraryCore(char **)::frameworkLibrary;
  if (!MediaExperienceLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaExperienceLibrary()"];
    v1 = [v0 handleFailureInFunction:v4 file:@"STS_N.mm" lineNumber:33 description:{@"%s", v5[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void *___ZL33getCMDerivedObjectCreateSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMDerivedObjectCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMDerivedObjectCreateSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreMediaLibrary(void)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreMediaLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = ___ZL20CoreMediaLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278AA4800;
    v7 = 0;
    CoreMediaLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreMediaLibraryCore(char **)::frameworkLibrary;
  if (!CoreMediaLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreMediaLibrary()"];
    v1 = [v0 handleFailureInFunction:v4 file:@"STS_N.mm" lineNumber:27 description:{@"%s", v5[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t softLink_CMBaseObjectGetDerivedStorage(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCMBaseObjectGetDerivedStorageSymbolLoc(void)::ptr;
  v9 = getCMBaseObjectGetDerivedStorageSymbolLoc(void)::ptr;
  if (!getCMBaseObjectGetDerivedStorageSymbolLoc(void)::ptr)
  {
    v3 = CoreMediaLibrary();
    v7[3] = dlsym(v3, "CMBaseObjectGetDerivedStorage");
    getCMBaseObjectGetDerivedStorageSymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    return v2(a1);
  }

  v5 = [MEMORY[0x277CCA890] currentHandler];
  result = [v5 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *softLink_CMBaseObjectGetDerivedStorage(CMBaseObjectRef)") description:{@"STS_N.mm", 28, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_239896924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t getkFigSTSFlavor_N(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkFigSTSFlavor_NSymbolLoc(void)::ptr;
  v7 = getkFigSTSFlavor_NSymbolLoc(void)::ptr;
  if (!getkFigSTSFlavor_NSymbolLoc(void)::ptr)
  {
    v1 = MediaExperienceLibrary();
    v5[3] = dlsym(v1, "kFigSTSFlavor_N");
    getkFigSTSFlavor_NSymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x277CCA890] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkFigSTSFlavor_N()") description:{@"STS_N.mm", 35, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_239896AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL27getkFigSTSFlavor_NSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "kFigSTSFlavor_N");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigSTSFlavor_NSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PerLabelInfoDictReleaseCallBack(const __CFAllocator *a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    JUMPOUT(0x23EE7A2B0);
  }
}

void std::__shared_ptr_emplace<STS_N_Storage>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = 0xE970uLL / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
    if (v3 == 59760)
    {
      v4 = 59760;
    }

    else
    {
      v4 = *MEMORY[0x277D85FA0] + v3;
    }

    munmap(v2, v4);
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }

  v7 = a1[12];
  if (v7)
  {
    do
    {
      v8 = *v7;
      if (*(v7 + 39) < 0)
      {
        operator delete(v7[2]);
      }

      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a1[10];
  a1[10] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  JUMPOUT(0x23EE7A1D0);
}

void std::__shared_ptr_emplace<STS_N_Storage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284C530E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE7A2B0);
}

void *___ZL41getCMBaseObjectGetDerivedStorageSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMBaseObjectGetDerivedStorage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMBaseObjectGetDerivedStorageSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL20CoreMediaLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMediaLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t STS_N_CopyShmem(uint64_t a1, const void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = *softLink_CMBaseObjectGetDerivedStorage(a1);
  os_unfair_lock_lock(v6);
  if (!a2)
  {
    v20 = STS_N_Log();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "STS_N_CopyShmem";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = 455;
    v21 = v20;
LABEL_43:
    _os_log_error_impl(&dword_23988E000, v21, OS_LOG_TYPE_ERROR, "%s:%d error", &buf, 0x12u);
    goto LABEL_21;
  }

  v7 = STS_N_Log();
  v8 = v7;
  if (a3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
      *(buf.__r_.__value_.__r.__words + 4) = a1;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = a2;
      _os_log_impl(&dword_23988E000, v8, OS_LOG_TYPE_DEFAULT, "sts %p copy shmemName %@", &buf, 0x16u);
    }

    if (!CFEqual(a2, @"SharedStorage"))
    {
      v13 = 0;
      v22 = 4294951299;
LABEL_49:
      *a3 = v13;
      goto LABEL_50;
    }

    v9 = MEMORY[0x277D85FA0];
    v10 = 0xE970uLL / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
    if (v10 == 59760)
    {
      v11 = 59760;
    }

    else
    {
      v11 = *MEMORY[0x277D85FA0] + v10;
    }

    v12 = *(v6 + 32);
    if (!v12)
    {
      v23 = mmap(0, v11, 3, 4097, -1, 0);
      *(v6 + 32) = v23;
      if (!v23)
      {
        v34 = STS_N_Log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = "STS_N_CopyShmem";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = 467;
          goto LABEL_40;
        }

        goto LABEL_41;
      }

      bzero(v23, v11);
      v24 = *(v6 + 32);
      bzero(v24, 0xE970uLL);
      *v24 = -1;
      v25 = v24 + 14;
      v26 = 336;
      do
      {
        *(v25 - 96) = 0;
        *v25 = 0;
        v25 += 112;
        v26 -= 112;
      }

      while (v26);
      v27 = 0;
      v24[44] = 0;
      v28 = v24 + 48;
      do
      {
        v24[v27 + 46] = 0xFFFFFFFFLL;
        v29 = v28;
        v30 = 912;
        do
        {
          *v29 = 0;
          v29[288] = 0;
          v29 += 304;
          v30 -= 304;
        }

        while (v30);
        v27 += 116;
        v28 += 928;
      }

      while (v27 != 7424);
      v31 = STS_N_Log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *v9;
        v33 = [MEMORY[0x277CBA620] maxNumberOfPerLabelStates];
        LODWORD(buf.__r_.__value_.__l.__data_) = 134219520;
        *(buf.__r_.__value_.__r.__words + 4) = a1;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
        v41 = v11 / v32;
        *v42 = 2048;
        *&v42[2] = v32;
        v43 = 2048;
        v44 = v24;
        v45 = 2048;
        v46 = 59760;
        v47 = 2048;
        v48 = v33;
        _os_log_impl(&dword_23988E000, v31, OS_LOG_TYPE_DEFAULT, "sts %p created %zd-byte (%lu pages of %zd bytes each) sharedMemoryRegion %p to cover storage of size %zd bytes with a capacity for %zu labels", &buf, 0x48u);
      }
    }

    v13 = xpc_dictionary_create(0, 0, 0);
    if (v13)
    {
      v14 = xpc_shmem_create(*(v6 + 32), v11);
      if (v14)
      {
        xpc_dictionary_set_value(v13, "sharedstorage", v14);
        xpc_release(v14);
        v15 = *(v6 + 40);
        v16 = xpc_mach_send_create();
        if (v16)
        {
          xpc_dictionary_set_value(v13, "controlsemaphore", v16);
          xpc_release(v16);
          xpc_dictionary_set_BOOL(v13, "allowautomaticheadtracking", *(v6 + 49));
          if (!v12)
          {
            DerivedStorage = softLink_CMBaseObjectGetDerivedStorage(a1);
            v19 = *DerivedStorage;
            v18 = DerivedStorage[1];
            if (v18)
            {
              atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "spatial tracking service");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              buf = __p;
            }

            LOBYTE(v41) = 1;
            *v42 = 0x100000037;
            HIDWORD(v44) = 2;
            LOBYTE(v45) = 1;
            *(&v46 + 2) = 1;
            BYTE6(v46) = 1;
            if (v18)
            {
              atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
            }

            v38 = 0;
            v39 = 0;
            operator new();
          }

          v22 = 0;
          goto LABEL_49;
        }

        v34 = STS_N_Log();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "STS_N_CopyShmem";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 492;
        goto LABEL_40;
      }

      v34 = STS_N_Log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "STS_N_CopyShmem";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 486;
        goto LABEL_40;
      }
    }

    else
    {
      v34 = STS_N_Log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "STS_N_CopyShmem";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 482;
LABEL_40:
        _os_log_error_impl(&dword_23988E000, v34, OS_LOG_TYPE_ERROR, "%s:%d error", &buf, 0x12u);
      }
    }

LABEL_41:
    v22 = 4294951305;
    goto LABEL_50;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "STS_N_CopyShmem";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = 456;
    v21 = v8;
    goto LABEL_43;
  }

LABEL_21:
  v22 = 4294951306;
LABEL_50:
  os_unfair_lock_unlock(v6);
  v35 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_2398973F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  os_unfair_lock_unlock(v23);
  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_239897508(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<std::tuple<caulk::thread::attributes,STS_N_CopyShmem(OpaqueFigSTS *,__CFString const*,NSObject  {objcproto13OS_xpc_object}**)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x23EE7A2B0](v2, 0x1032C40A8465C26);
  }

  return a1;
}

void caulk::thread_proxy<std::tuple<caulk::thread::attributes,STS_N_CopyShmem(OpaqueFigSTS *,__CFString const*,NSObject  {objcproto13OS_xpc_object}**)::$_0,std::tuple<>>>(caulk::thread::attributes *a1)
{
  v178 = *MEMORY[0x277D85DE8];
  v162 = a1;
  caulk::thread::attributes::apply_to_this_thread(a1);
  v1 = v162;
  *&v2 = 136315650;
  v153 = v2;
  v159 = v162;
  while (1)
  {
    v3 = *(v1 + 80);
    if (!v3)
    {
      v5 = 0;
LABEL_307:
      v150 = STS_N_Log();
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23988E000, v150, OS_LOG_TYPE_DEFAULT, "exiting spatial tracking service update thread because storage destructed", buf, 2u);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      goto LABEL_311;
    }

    v4 = std::__shared_weak_count::lock(v3);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_307;
    }

    v6 = *(v1 + 72);
    if (!v6)
    {
      goto LABEL_307;
    }

    v7 = *(v6 + 40);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    v8 = MEMORY[0x23EE7A620](v7);
    v9 = v8;
    if (v8 == 14)
    {
      continue;
    }

    if (v8)
    {
      v152 = STS_N_Log();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_error_impl(&dword_23988E000, v152, OS_LOG_TYPE_ERROR, "exiting spatial tracking service update thread because wait returned %d", buf, 8u);
      }

      goto LABEL_311;
    }

    v10 = *(v1 + 80);
    if (!v10)
    {
      v11 = 0;
LABEL_14:
      v17 = STS_N_Log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23988E000, v17, OS_LOG_TYPE_DEFAULT, "exiting spatial tracking service update thread after successful wait because storage destructed", buf, 2u);
      }

      v18 = 0;
      if (v11)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v11 = std::__shared_weak_count::lock(v10);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = *(v159 + 72);
    if (!v12)
    {
      goto LABEL_14;
    }

    v160 = *(v159 + 64);
    os_unfair_lock_lock(v12);
    v13 = *(v12 + 32);
    if (!v13)
    {
      goto LABEL_305;
    }

    v14 = atomic_load(v13);
    v15 = HIWORD(v14);
    v157 = v11;
    if (HIWORD(v14) == 0xFFFF)
    {
      LOWORD(v16) = v14;
LABEL_23:
      v15 = v16;
      if (v16 == 0xFFFF)
      {
        if ((*(v12 + 49) & 1) == 0)
        {
          goto LABEL_39;
        }

        v19 = 0;
        v20 = 0;
        v21 = *(MEMORY[0x277D860B8] + 16);
        *v169 = *MEMORY[0x277D860B8];
        *&v169[16] = v21;
        v22 = *(MEMORY[0x277D860B8] + 48);
        v170 = *(MEMORY[0x277D860B8] + 32);
        v171 = v22;
LABEL_34:
        v27 = CADeprecated::TSingleton<STS_N>::instance();
        *buf = v20;
        *&buf[8] = v19;
        v173 = *v169;
        v174 = *&v169[16];
        v175 = v170;
        v176 = v171;
        STS_N::UpdateGlobalState(v27, buf);
        goto LABEL_39;
      }
    }

    else
    {
      v16 = v14;
      while (1)
      {
        atomic_compare_exchange_strong(v13, &v16, v15 | 0xFFFF0000);
        if (v16 == v14)
        {
          break;
        }

        v15 = HIWORD(v16);
        v14 = v16;
        if (HIWORD(v16) == 0xFFFF)
        {
          goto LABEL_23;
        }
      }
    }

    v23 = &v13[28 * v15];
    if ((v23[28] & 1) == 0)
    {
      break;
    }

    v24 = *(v23 + 2);
    v25 = *(v12 + 24);
    if (v24)
    {
      v26 = v24 == v25;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      if ((*(v12 + 49) & 1) == 0)
      {
        goto LABEL_39;
      }

      v20 = *(v23 + 4);
      v19 = *(v23 + 5);
      *v169 = *(v23 + 3);
      *&v169[16] = *(v23 + 4);
      v170 = *(v23 + 5);
      v171 = *(v23 + 6);
      goto LABEL_34;
    }

    if (v24 < v25)
    {
      v28 = STS_N_Log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23988E000, v28, OS_LOG_TYPE_DEFAULT, "global state cycled generations", buf, 2u);
      }
    }

    *(v12 + 24) = *(v23 + 2);
    v29 = CADeprecated::TSingleton<STS_N>::instance();
    v173 = *(v23 + 3);
    v174 = *(v23 + 4);
    v175 = *(v23 + 5);
    v176 = *(v23 + 6);
    *buf = *(v23 + 2);
    STS_N::UpdateGlobalState(v29, buf);
LABEL_39:
    v30 = *(v12 + 80);
    *buf = 0u;
    v173 = 0u;
    LODWORD(v174) = 1065353216;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(buf, v30);
    v31 = *(v12 + 72);
    if (!v31)
    {
      goto LABEL_69;
    }

    do
    {
      if (*(v31 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(v169, v31[2], v31[3]);
      }

      else
      {
        *v169 = *(v31 + 1);
        *&v169[16] = v31[4];
      }

      *&v169[24] = v31[5];
      v32 = v169[23];
      if ((v169[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v177, *v169, *&v169[8]);
      }

      else
      {
        v177 = *v169;
      }

      v33 = std::__string_hash<char>::operator()[abi:ne200100](&v177);
      v34 = v33;
      v35 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_62;
      }

      v36 = vcnt_s8(*&buf[8]);
      v36.i16[0] = vaddlv_u8(v36);
      v37 = v36.u32[0];
      if (v36.u32[0] > 1uLL)
      {
        v38 = v33;
        if (v33 >= *&buf[8])
        {
          v38 = v33 % *&buf[8];
        }
      }

      else
      {
        v38 = (*&buf[8] - 1) & v33;
      }

      v39 = *(*buf + 8 * v38);
      if (!v39 || (v40 = *v39) == 0)
      {
LABEL_62:
        operator new();
      }

      while (1)
      {
        v41 = v40[1];
        if (v41 == v34)
        {
          break;
        }

        if (v37 > 1)
        {
          if (v41 >= v35)
          {
            v41 %= v35;
          }
        }

        else
        {
          v41 &= v35 - 1;
        }

        if (v41 != v38)
        {
          goto LABEL_62;
        }

LABEL_61:
        v40 = *v40;
        if (!v40)
        {
          goto LABEL_62;
        }
      }

      if (!std::equal_to<std::string>::operator()[abi:ne200100](v40 + 2, &v177))
      {
        goto LABEL_61;
      }

      if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v177.__r_.__value_.__l.__data_);
      }

      if (v32 < 0)
      {
        operator delete(*v169);
      }

      v31 = *v31;
    }

    while (v31);
LABEL_69:
    v42 = 0;
    v43 = atomic_load((*(v12 + 32) + 352));
    v44 = 0x9DDFEA08EB382D69 * ((8 * (v160 & 0x1FFFFFFF) + 8) ^ HIDWORD(v160));
    v45 = 0x9DDFEA08EB382D69 * (HIDWORD(v160) ^ (v44 >> 47) ^ v44);
    v158 = 0x9DDFEA08EB382D69 * (v45 ^ (v45 >> 47));
    v156 = v43;
    while (v42 < [MEMORY[0x277CBA620] maxNumberOfPerLabelStates])
    {
      if (v42 > 0x3F || ((v43 >> v42) & 1) == 0)
      {
        goto LABEL_197;
      }

      v46 = (*(v12 + 32) + 928 * v42 + 368);
      v47 = atomic_load(v46);
      v48 = HIWORD(v47);
      if (HIWORD(v47) == 0xFFFF)
      {
        LOWORD(v49) = v47;
LABEL_78:
        v48 = v49;
        if (v49 == 0xFFFF)
        {
          goto LABEL_197;
        }
      }

      else
      {
        v49 = v47;
        while (1)
        {
          atomic_compare_exchange_strong(v46, &v49, v48 | 0xFFFF0000);
          if (v49 == v47)
          {
            break;
          }

          v48 = HIWORD(v49);
          v47 = v49;
          if (HIWORD(v49) == 0xFFFF)
          {
            goto LABEL_78;
          }
        }
      }

      v50 = &v46[76 * v48];
      if ((v50[76] & 1) == 0)
      {
        goto LABEL_314;
      }

      if (*(v50 + 2))
      {
        v161 = v50 + 4;
        v51 = v50 + 6;
        std::string::basic_string[abi:ne200100]<0>(__p, v50 + 24);
        v52 = std::__string_hash<char>::operator()[abi:ne200100](__p);
        v53 = *&buf[8];
        if (*&buf[8])
        {
          v54 = v52;
          v55 = vcnt_s8(*&buf[8]);
          v55.i16[0] = vaddlv_u8(v55);
          v56 = v55.u32[0];
          if (v55.u32[0] > 1uLL)
          {
            v57 = v52;
            if (v52 >= *&buf[8])
            {
              v57 = v52 % *&buf[8];
            }
          }

          else
          {
            v57 = (*&buf[8] - 1) & v52;
          }

          v58 = *buf;
          v59 = *(*buf + 8 * v57);
          if (v59)
          {
            v60 = *v59;
            if (*v59)
            {
              v61 = *&buf[8] - 1;
              do
              {
                v62 = v60[1];
                if (v62 == v54)
                {
                  if (std::equal_to<std::string>::operator()[abi:ne200100](v60 + 2, __p))
                  {
                    v63 = v60[1];
                    if (v56 > 1)
                    {
                      if (v63 >= v53)
                      {
                        v63 %= v53;
                      }
                    }

                    else
                    {
                      v63 &= v61;
                    }

                    v64 = *(v58 + 8 * v63);
                    do
                    {
                      v65 = v64;
                      v64 = *v64;
                    }

                    while (v64 != v60);
                    if (v65 == &v173)
                    {
                      goto LABEL_116;
                    }

                    v66 = v65[1];
                    if (v56 > 1)
                    {
                      if (v66 >= v53)
                      {
                        v66 %= v53;
                      }
                    }

                    else
                    {
                      v66 &= v61;
                    }

                    if (v66 != v63)
                    {
LABEL_116:
                      if (!*v60)
                      {
                        goto LABEL_117;
                      }

                      v67 = *(*v60 + 1);
                      if (v56 > 1)
                      {
                        if (v67 >= v53)
                        {
                          v67 %= v53;
                        }
                      }

                      else
                      {
                        v67 &= v61;
                      }

                      if (v67 != v63)
                      {
LABEL_117:
                        *(v58 + 8 * v63) = 0;
                      }
                    }

                    v68 = *v60;
                    if (*v60)
                    {
                      v69 = v68[1];
                      if (v56 > 1)
                      {
                        if (v69 >= v53)
                        {
                          v69 %= v53;
                        }
                      }

                      else
                      {
                        v69 &= v61;
                      }

                      if (v69 != v63)
                      {
                        *(*buf + 8 * v69) = v65;
                        v68 = *v60;
                      }
                    }

                    *v65 = v68;
                    *v60 = 0;
                    --*(&v173 + 1);
                    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](1, v60);
                    break;
                  }
                }

                else
                {
                  if (v56 > 1)
                  {
                    if (v62 >= v53)
                    {
                      v62 %= v53;
                    }
                  }

                  else
                  {
                    v62 &= v61;
                  }

                  if (v62 != v57)
                  {
                    break;
                  }
                }

                v60 = *v60;
              }

              while (v60);
            }
          }
        }

        v70 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::find<std::string>((v12 + 56), __p);
        if (!v70)
        {
          v74 = *v161;
          v75 = std::__string_hash<char>::operator()[abi:ne200100](__p);
          v76 = v75;
          v77 = *(v12 + 64);
          v11 = v157;
          if (!*&v77)
          {
            goto LABEL_148;
          }

          v78 = vcnt_s8(v77);
          v78.i16[0] = vaddlv_u8(v78);
          v79 = v78.u32[0];
          if (v78.u32[0] > 1uLL)
          {
            v80 = v75;
            if (v75 >= *&v77)
            {
              v80 = v75 % *&v77;
            }
          }

          else
          {
            v80 = (*&v77 - 1) & v75;
          }

          v81 = *(*(v12 + 56) + 8 * v80);
          if (!v81 || (v82 = *v81) == 0)
          {
LABEL_148:
            operator new();
          }

          while (1)
          {
            v83 = v82[1];
            if (v83 == v76)
            {
              if (std::equal_to<std::string>::operator()[abi:ne200100](v82 + 2, __p))
              {
                v82[5] = v74;
                goto LABEL_149;
              }
            }

            else
            {
              if (v79 > 1)
              {
                if (v83 >= *&v77)
                {
                  v83 %= *&v77;
                }
              }

              else
              {
                v83 &= *&v77 - 1;
              }

              if (v83 != v80)
              {
                goto LABEL_148;
              }
            }

            v82 = *v82;
            if (!v82)
            {
              goto LABEL_148;
            }
          }
        }

        v71 = v70;
        v72 = v70[5];
        v11 = v157;
        if (*v161 != v72)
        {
          if (*v161 < v72)
          {
            v73 = STS_N_Log();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              *v169 = 136315138;
              *&v169[4] = v51;
              _os_log_impl(&dword_23988E000, v73, OS_LOG_TYPE_DEFAULT, "label %s cycled state generations", v169, 0xCu);
            }
          }

          v71[5] = *v161;
LABEL_149:
          v84 = CADeprecated::TSingleton<STS_N>::instance();
          v85 = *(v161 + 272);
          *inValue = 0;
          v168 = v160;
          v166 = 0.0;
          STS_N_CalculateAngularOrientationFromTransform((v161 + 48), inValue, &inValue[1], &v166);
          os_unfair_lock_lock(v84);
          v86 = STS_N::InfoForLabel(v84, __p);
          v87 = v86;
          if (v160)
          {
            v88 = *(v86 + 32);
            if (v88)
            {
              v89 = vcnt_s8(v88);
              v89.i16[0] = vaddlv_u8(v89);
              if (v89.u32[0] > 1uLL)
              {
                v90 = v158;
                if (v158 >= *&v88)
                {
                  v90 = v158 % *&v88;
                }
              }

              else
              {
                v90 = v158 & (*&v88 - 1);
              }

              v91 = *(*(v86 + 24) + 8 * v90);
              if (v91)
              {
                for (i = *v91; i; i = *i)
                {
                  v93 = i[1];
                  if (v158 == v93)
                  {
                    if (i[2] == v160)
                    {
                      goto LABEL_171;
                    }
                  }

                  else
                  {
                    if (v89.u32[0] > 1uLL)
                    {
                      if (v93 >= *&v88)
                      {
                        v93 %= *&v88;
                      }
                    }

                    else
                    {
                      v93 &= *&v88 - 1;
                    }

                    if (v93 != v90)
                    {
                      break;
                    }
                  }
                }
              }
            }

            std::__hash_table<OpaqueFigSTS *,std::hash<OpaqueFigSTS *>,std::equal_to<OpaqueFigSTS *>,std::allocator<OpaqueFigSTS *>>::__emplace_unique_key_args<OpaqueFigSTS *,OpaqueFigSTS * const&>((v86 + 24), v160);
            if (SHIBYTE(v164) < 0)
            {
              std::string::__init_copy_ctor_external(v169, __p[0], __p[1]);
            }

            else
            {
              *v169 = *__p;
              *&v169[16] = v164;
            }

            STS_N::LabelValidityDidChange(v84, v169);
            if ((v169[23] & 0x80000000) != 0)
            {
              operator delete(*v169);
            }
          }

LABEL_171:
          v94 = v85 ^ 1 | *(v87 + 152);
          if (v94)
          {
            if (*(v87 + 152) && (v85 & 1) == 0)
            {
              v95 = STS_N_Log();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
              {
                v96 = __p;
                if (v164 < 0)
                {
                  v96 = __p[0];
                }

                LODWORD(v177.__r_.__value_.__l.__data_) = 136315138;
                *(v177.__r_.__value_.__r.__words + 4) = v96;
                v97 = v95;
                v98 = "STSLabel %s is no longer deferring to system tuning";
                goto LABEL_182;
              }

              goto LABEL_183;
            }
          }

          else
          {
            v95 = STS_N_Log();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              v99 = __p;
              if (v164 < 0)
              {
                v99 = __p[0];
              }

              LODWORD(v177.__r_.__value_.__l.__data_) = 136315138;
              *(v177.__r_.__value_.__r.__words + 4) = v99;
              v97 = v95;
              v98 = "STSLabel %s is deferring to system tuning";
LABEL_182:
              _os_log_impl(&dword_23988E000, v97, OS_LOG_TYPE_DEFAULT, v98, &v177, 0xCu);
            }

LABEL_183:
          }

          v100 = *(v87 + 240);
          *(v87 + 160) = *(v161 + 12);
          v101 = *(v161 + 16);
          v103 = *(v161 + 13);
          v102 = *(v161 + 14);
          *(v87 + 208) = *(v161 + 15);
          *(v87 + 224) = v101;
          *(v87 + 176) = v103;
          *(v87 + 192) = v102;
          if ((v100 & 1) == 0)
          {
            *(v87 + 240) = 1;
          }

          *(v87 + 152) = v85;
          if ((v94 & 1) == 0)
          {
            [*(v87 + 144) fireAll];
            STS_N::ApplyStoredPerLabelStateToSpatializers(v84, v87, 0);
            v104 = *(v87 + 124);
            STS_N::SetSoundStageTransitionDurationOnSpatializers(v87);
            STS_N::SetSoundStageSizeOnSpatializers(v87, *(v87 + 136));
          }

          v105 = *(v87 + 116);
          if (v105 == 20)
          {
            inData = v161 + 64;
            v155 = v161[64] == 1;
          }

          else
          {
            if ((*(v87 + 152) & 1) != 0 || *(v87 + 240) != 1)
            {
              v120 = 3;
            }

            else
            {
              v120 = *(v87 + 224);
            }

            inData = v161 + 64;
            v155 = v120 == v161[64];
            if (!v105 && (*(v84 + 176) & 1) != 0)
            {
              v121 = vsubq_f32(*(v161 + 15), *(v84 + 160));
              v165[0] = v121.i32[0];
              *&v165[1] = -v121.f32[2];
              v165[2] = v121.i32[1];
              v122 = *(v87 + 80);
              if (v122)
              {
                while (*(v122 + 24) != 1)
                {
                  v122 = *v122;
                  if (!v122)
                  {
                    goto LABEL_190;
                  }
                }

                v123 = v105;
                while (1)
                {
                  v124 = AudioUnitSetProperty(v122[2], 0xC2Bu, 0, 0, v165, 0xCu);
                  if (v124)
                  {
                    v125 = STS_N_Log();
                    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v177.__r_.__value_.__l.__data_) = v153;
                      *(v177.__r_.__value_.__r.__words + 4) = "UpdateLabelState";
                      WORD2(v177.__r_.__value_.__r.__words[1]) = 1024;
                      *(&v177.__r_.__value_.__r.__words[1] + 6) = 280;
                      WORD1(v177.__r_.__value_.__r.__words[2]) = 1024;
                      HIDWORD(v177.__r_.__value_.__r.__words[2]) = v124;
                      _os_log_error_impl(&dword_23988E000, v125, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v177, 0x18u);
                    }
                  }

                  v122 = *v122;
                  v105 = v123;
                  if (!v122)
                  {
                    break;
                  }

                  while ((v122[3] & 1) == 0)
                  {
                    v122 = *v122;
                    if (!v122)
                    {
                      goto LABEL_190;
                    }
                  }
                }
              }
            }
          }

LABEL_190:
          v106 = *(v87 + 80);
          if (v106)
          {
            while ((v106[3] & 1) == 0)
            {
              v106 = *v106;
              if (!v106)
              {
                goto LABEL_193;
              }
            }

            while (1)
            {
              v107 = v105;
              if (!v105)
              {
                v108 = AudioUnitSetParameter(v106[2], 0x16u, 1u, 0, inValue[0], 0);
                if (v108)
                {
                  v109 = STS_N_Log();
                  if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v177.__r_.__value_.__l.__data_) = v153;
                    *(v177.__r_.__value_.__r.__words + 4) = "UpdateLabelState";
                    WORD2(v177.__r_.__value_.__r.__words[1]) = 1024;
                    *(&v177.__r_.__value_.__r.__words[1] + 6) = 288;
                    WORD1(v177.__r_.__value_.__r.__words[2]) = 1024;
                    HIDWORD(v177.__r_.__value_.__r.__words[2]) = v108;
                    _os_log_error_impl(&dword_23988E000, v109, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v177, 0x18u);
                  }
                }

                v110 = AudioUnitSetParameter(v106[2], 0x17u, 1u, 0, inValue[1], 0);
                if (v110)
                {
                  v111 = STS_N_Log();
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v177.__r_.__value_.__l.__data_) = v153;
                    *(v177.__r_.__value_.__r.__words + 4) = "UpdateLabelState";
                    WORD2(v177.__r_.__value_.__r.__words[1]) = 1024;
                    *(&v177.__r_.__value_.__r.__words[1] + 6) = 289;
                    WORD1(v177.__r_.__value_.__r.__words[2]) = 1024;
                    HIDWORD(v177.__r_.__value_.__r.__words[2]) = v110;
                    _os_log_error_impl(&dword_23988E000, v111, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v177, 0x18u);
                  }
                }

                v112 = AudioUnitSetParameter(v106[2], 0x18u, 1u, 0, v166, 0);
                if (v112)
                {
                  v113 = STS_N_Log();
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v177.__r_.__value_.__l.__data_) = v153;
                    *(v177.__r_.__value_.__r.__words + 4) = "UpdateLabelState";
                    WORD2(v177.__r_.__value_.__r.__words[1]) = 1024;
                    *(&v177.__r_.__value_.__r.__words[1] + 6) = 290;
                    WORD1(v177.__r_.__value_.__r.__words[2]) = 1024;
                    HIDWORD(v177.__r_.__value_.__r.__words[2]) = v112;
                    _os_log_error_impl(&dword_23988E000, v113, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v177, 0x18u);
                  }
                }
              }

              if ((*(v87 + 152) & 1) == 0)
              {
                v114 = AudioUnitSetParameter(v106[2], 3u, 1u, 0, *(v161 + 65), 0);
                if (v114)
                {
                  v115 = STS_N_Log();
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v177.__r_.__value_.__l.__data_) = v153;
                    *(v177.__r_.__value_.__r.__words + 4) = "UpdateLabelState";
                    WORD2(v177.__r_.__value_.__r.__words[1]) = 1024;
                    *(&v177.__r_.__value_.__r.__words[1] + 6) = 296;
                    WORD1(v177.__r_.__value_.__r.__words[2]) = 1024;
                    HIDWORD(v177.__r_.__value_.__r.__words[2]) = v114;
                    _os_log_error_impl(&dword_23988E000, v115, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v177, 0x18u);
                  }
                }

                v116 = AudioUnitSetParameter(v106[2], 0x23u, 1u, 0, *(v161 + 66), 0);
                if (v116)
                {
                  v117 = STS_N_Log();
                  if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v177.__r_.__value_.__l.__data_) = v153;
                    *(v177.__r_.__value_.__r.__words + 4) = "UpdateLabelState";
                    WORD2(v177.__r_.__value_.__r.__words[1]) = 1024;
                    *(&v177.__r_.__value_.__r.__words[1] + 6) = 299;
                    WORD1(v177.__r_.__value_.__r.__words[2]) = 1024;
                    HIDWORD(v177.__r_.__value_.__r.__words[2]) = v116;
                    _os_log_error_impl(&dword_23988E000, v117, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v177, 0x18u);
                  }
                }
              }

              if (v155)
              {
                v118 = AudioUnitSetProperty(v106[2], 0xBBDu, 1u, 0, inData, 4u);
                if (v118)
                {
                  v119 = STS_N_Log();
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v177.__r_.__value_.__l.__data_) = v153;
                    *(v177.__r_.__value_.__r.__words + 4) = "UpdateLabelState";
                    WORD2(v177.__r_.__value_.__r.__words[1]) = 1024;
                    *(&v177.__r_.__value_.__r.__words[1] + 6) = 309;
                    WORD1(v177.__r_.__value_.__r.__words[2]) = 1024;
                    HIDWORD(v177.__r_.__value_.__r.__words[2]) = v118;
                    _os_log_error_impl(&dword_23988E000, v119, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v177, 0x18u);
                  }
                }
              }

              v106 = *v106;
              if (!v106)
              {
                break;
              }

              v105 = v107;
              while ((v106[3] & 1) == 0)
              {
                v106 = *v106;
                if (!v106)
                {
                  goto LABEL_193;
                }
              }
            }
          }

LABEL_193:
          os_unfair_lock_unlock(v84);
        }

        if (SHIBYTE(v164) < 0)
        {
          operator delete(__p[0]);
        }

        v43 = v156;
      }

LABEL_197:
      ++v42;
    }

    for (j = v173; j; j = *j)
    {
      v127 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::find<std::string>((v12 + 56), j + 2);
      if (v127)
      {
        v128 = *(v12 + 64);
        v129 = v127[1];
        v130 = vcnt_s8(v128);
        v130.i16[0] = vaddlv_u8(v130);
        if (v130.u32[0] > 1uLL)
        {
          if (v129 >= *&v128)
          {
            v129 %= *&v128;
          }
        }

        else
        {
          v129 &= *&v128 - 1;
        }

        v131 = *(v12 + 56);
        v132 = *(v131 + 8 * v129);
        do
        {
          v133 = v132;
          v132 = *v132;
        }

        while (v132 != v127);
        if (v133 == (v12 + 72))
        {
          goto LABEL_269;
        }

        v134 = v133[1];
        if (v130.u32[0] > 1uLL)
        {
          if (v134 >= *&v128)
          {
            v134 %= *&v128;
          }
        }

        else
        {
          v134 &= *&v128 - 1;
        }

        if (v134 != v129)
        {
LABEL_269:
          if (!*v127)
          {
            goto LABEL_270;
          }

          v135 = *(*v127 + 1);
          if (v130.u32[0] > 1uLL)
          {
            if (v135 >= *&v128)
            {
              v135 %= *&v128;
            }
          }

          else
          {
            v135 &= *&v128 - 1;
          }

          if (v135 != v129)
          {
LABEL_270:
            *(v131 + 8 * v129) = 0;
          }
        }

        v136 = *v127;
        if (*v127)
        {
          v137 = v136[1];
          if (v130.u32[0] > 1uLL)
          {
            if (v137 >= *&v128)
            {
              v137 %= *&v128;
            }
          }

          else
          {
            v137 &= *&v128 - 1;
          }

          if (v137 != v129)
          {
            *(*(v12 + 56) + 8 * v137) = v133;
            v136 = *v127;
          }
        }

        *v133 = v136;
        *v127 = 0;
        --*(v12 + 80);
        std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](1, v127);
      }

      v138 = CADeprecated::TSingleton<STS_N>::instance();
      os_unfair_lock_lock(v138);
      v139 = std::__string_hash<char>::operator()[abi:ne200100]((j + 2));
      v140 = *(v138 + 16);
      if (v140)
      {
        v141 = v139;
        v142 = vcnt_s8(v140);
        v142.i16[0] = vaddlv_u8(v142);
        v143 = v142.u32[0];
        if (v142.u32[0] > 1uLL)
        {
          v144 = v139;
          if (v139 >= *&v140)
          {
            v144 = v139 % *&v140;
          }
        }

        else
        {
          v144 = (*&v140 - 1) & v139;
        }

        v145 = *(*(v138 + 8) + 8 * v144);
        if (v145)
        {
          v146 = *v145;
          if (*v145)
          {
            do
            {
              v147 = v146[1];
              if (v141 == v147)
              {
                if (std::equal_to<std::string>::operator()[abi:ne200100](v146 + 2, j + 2))
                {
                  v148 = STS_N::InfoForLabel(v138, j + 2);
                  v149 = *(v148 + 48);
                  std::__hash_table<OpaqueFigSTS *,std::hash<OpaqueFigSTS *>,std::equal_to<OpaqueFigSTS *>,std::allocator<OpaqueFigSTS *>>::__erase_unique<OpaqueFigSTS *>((v148 + 24), v160);
                  if (v149 && !*(v148 + 48))
                  {
                    if (*(j + 39) < 0)
                    {
                      std::string::__init_copy_ctor_external(v169, j[2], j[3]);
                    }

                    else
                    {
                      *v169 = *(j + 1);
                      *&v169[16] = j[4];
                    }

                    STS_N::LabelValidityDidChange(v138, v169);
                    if ((v169[23] & 0x80000000) != 0)
                    {
                      operator delete(*v169);
                    }
                  }

                  break;
                }
              }

              else
              {
                if (v143 > 1)
                {
                  if (v147 >= *&v140)
                  {
                    v147 %= *&v140;
                  }
                }

                else
                {
                  v147 &= *&v140 - 1;
                }

                if (v147 != v144)
                {
                  break;
                }
              }

              v146 = *v146;
            }

            while (v146);
          }
        }
      }

      os_unfair_lock_unlock(v138);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(buf);
LABEL_305:
    os_unfair_lock_unlock(v12);
    v18 = 1;
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_18:
    v1 = v159;
    if ((v18 & 1) == 0)
    {
LABEL_311:
      std::unique_ptr<std::tuple<caulk::thread::attributes,STS_N_CopyShmem(OpaqueFigSTS *,__CFString const*,NSObject  {objcproto13OS_xpc_object}**)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](&v162);
      v151 = *MEMORY[0x277D85DE8];
      return;
    }
  }

LABEL_314:
  __break(1u);
}

void sub_239898DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  os_unfair_lock_unlock(v42);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v43 - 208);
  os_unfair_lock_unlock(v41);
  std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  std::unique_ptr<std::tuple<caulk::thread::attributes,STS_N_CopyShmem(OpaqueFigSTS *,__CFString const*,NSObject  {objcproto13OS_xpc_object}**)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(uint64_t a1, size_t __n)
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
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t STS_N_CopyPropertyByLabel(uint64_t a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *softLink_CMBaseObjectGetDerivedStorage(a1);
  v16 = 0;
  os_unfair_lock_lock(v8);
  if (!a2)
  {
    v12 = STS_N_Log();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v18 = "STS_N_CopyPropertyByLabel";
    v19 = 1024;
    LODWORD(v20) = 425;
LABEL_14:
    _os_log_error_impl(&dword_23988E000, v12, OS_LOG_TYPE_ERROR, "%s:%d error", buf, 0x12u);
    goto LABEL_15;
  }

  if (!a3)
  {
    v12 = STS_N_Log();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v18 = "STS_N_CopyPropertyByLabel";
    v19 = 1024;
    LODWORD(v20) = 426;
    goto LABEL_14;
  }

  if (!a4)
  {
    v12 = STS_N_Log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "STS_N_CopyPropertyByLabel";
      v19 = 1024;
      LODWORD(v20) = 427;
      goto LABEL_14;
    }

LABEL_15:
    v11 = 4294951306;
    goto LABEL_16;
  }

  STS_N_EnsureInfoForLabel(v8, a2, &v16);
  v9 = STS_N_Log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v18 = a1;
    v19 = 2112;
    v20 = a2;
    v21 = 2112;
    v22 = a3;
    _os_log_debug_impl(&dword_23988E000, v9, OS_LOG_TYPE_DEBUG, "sts %p label %@ copying %@", buf, 0x20u);
  }

  Value = CFDictionaryGetValue(*v16, a3);
  if (Value)
  {
    v11 = 0;
    *a4 = CFRetain(Value);
  }

  else
  {
    v15 = STS_N_Log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v18 = a1;
      v19 = 2112;
      v20 = a2;
      _os_log_error_impl(&dword_23988E000, v15, OS_LOG_TYPE_ERROR, "sts %p copying unknown label %@", buf, 0x16u);
    }

    v11 = 4294951301;
  }

LABEL_16:
  os_unfair_lock_unlock(v8);
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

const void *STS_N_EnsureInfoForLabel(uint64_t a1, const void *a2, void *a3)
{
  result = CFDictionaryGetValue(*(a1 + 16), a2);
  if (!result)
  {
    operator new();
  }

  *a3 = result;
  return result;
}

uint64_t getkFigSTSLabel_Global()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkFigSTSLabel_GlobalSymbolLoc(void)::ptr;
  v7 = getkFigSTSLabel_GlobalSymbolLoc(void)::ptr;
  if (!getkFigSTSLabel_GlobalSymbolLoc(void)::ptr)
  {
    v1 = MediaExperienceLibrary();
    v5[3] = dlsym(v1, "kFigSTSLabel_Global");
    getkFigSTSLabel_GlobalSymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x277CCA890] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkFigSTSLabel_Global()") description:{@"STS_N.mm", 36, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_2398996CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL31getkFigSTSLabel_GlobalSymbolLocv_block_invoke_56(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "kFigSTSLabel_Global");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigSTSLabel_GlobalSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t STS_N_SetPropertyByLabel(unint64_t a1, void *a2, const __CFString *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *softLink_CMBaseObjectGetDerivedStorage(a1);
  v16 = 0;
  os_unfair_lock_lock(v8);
  v9 = 4294951306;
  if (!a2 || !a3)
  {
    goto LABEL_11;
  }

  STS_N_EnsureInfoForLabel(v8, a2, &v16);
  v10 = STS_N_Log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v18 = v8;
    v19 = 2112;
    v20 = a2;
    v21 = 2112;
    v22 = a3;
    _os_log_debug_impl(&dword_23988E000, v10, OS_LOG_TYPE_DEBUG, "sts %p label %@ setting %@", buf, 0x20u);
  }

  v11 = v16;
  v12 = *v16;
  if (a4)
  {
    CFDictionarySetValue(v12, a3, a4);
  }

  else
  {
    CFDictionaryRemoveValue(v12, a3);
  }

  if (!*(v11 + 8))
  {
    v9 = 0;
LABEL_11:
    os_unfair_lock_unlock(v8);
    goto LABEL_12;
  }

  os_unfair_lock_unlock(v8);
  v13 = CADeprecated::TSingleton<STS_N>::instance();
  STS_N::SetPropertyForLabel(v13, a1, a2, a3, a4);
  v9 = 0;
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t STS_N_GetActive(uint64_t a1, const void *a2, _BYTE *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *softLink_CMBaseObjectGetDerivedStorage(a1);
  v16 = 0;
  os_unfair_lock_lock(v6);
  if (!a2)
  {
    v11 = STS_N_Log();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v10 = 4294951306;
      goto LABEL_9;
    }

    *buf = 136315394;
    v18 = "STS_N_GetActive";
    v19 = 1024;
    LODWORD(v20) = 352;
LABEL_15:
    _os_log_error_impl(&dword_23988E000, v11, OS_LOG_TYPE_ERROR, "%s:%d error", buf, 0x12u);
    goto LABEL_8;
  }

  if (!a3)
  {
    v11 = STS_N_Log();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    v18 = "STS_N_GetActive";
    v19 = 1024;
    LODWORD(v20) = 353;
    goto LABEL_15;
  }

  STS_N_EnsureInfoForLabel(v6, a2, &v16);
  v7 = STS_N_Log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  v9 = v16;
  if (v8)
  {
    v14 = *(v16 + 8);
    *buf = 134218498;
    if (v14)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    v18 = a1;
    v19 = 2112;
    v20 = a2;
    v21 = 2080;
    v22 = v15;
    _os_log_debug_impl(&dword_23988E000, v7, OS_LOG_TYPE_DEBUG, "sts %p label %@ active == %s", buf, 0x20u);
  }

  v10 = 0;
  *a3 = *(v9 + 8);
LABEL_9:
  os_unfair_lock_unlock(v6);
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t STS_N_SetActive(uint64_t a1, const void *a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *softLink_CMBaseObjectGetDerivedStorage(a1);
  v16 = 0;
  os_unfair_lock_lock(v6);
  if (a2)
  {
    STS_N_EnsureInfoForLabel(v6, a2, &v16);
    v7 = STS_N_Log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    v9 = v16;
    if (v8)
    {
      if (*(v16 + 8) == a3)
      {
        v14 = "already";
      }

      else
      {
        v14 = "becomes";
      }

      v15 = "active";
      *buf = 134218754;
      v18 = a1;
      v19 = 2112;
      v20 = a2;
      v21 = 2080;
      if (!a3)
      {
        v15 = "inactive";
      }

      v22 = v14;
      v23 = 2080;
      v24 = v15;
      _os_log_debug_impl(&dword_23988E000, v7, OS_LOG_TYPE_DEBUG, "sts %p label %@ %s %s", buf, 0x2Au);
    }

    v10 = 0;
    *(v9 + 8) = a3;
  }

  else
  {
    v11 = STS_N_Log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "STS_N_SetActive";
      v19 = 1024;
      LODWORD(v20) = 331;
      _os_log_error_impl(&dword_23988E000, v11, OS_LOG_TYPE_ERROR, "%s:%d error", buf, 0x12u);
    }

    v10 = 4294951306;
  }

  os_unfair_lock_unlock(v6);
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t softLink_FigBaseObjectStandardNotificationBarrier(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getFigBaseObjectStandardNotificationBarrierSymbolLoc(void)::ptr;
  v9 = getFigBaseObjectStandardNotificationBarrierSymbolLoc(void)::ptr;
  if (!getFigBaseObjectStandardNotificationBarrierSymbolLoc(void)::ptr)
  {
    v3 = CoreMediaLibrary();
    v7[3] = dlsym(v3, "FigBaseObjectStandardNotificationBarrier");
    getFigBaseObjectStandardNotificationBarrierSymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    return v2(a1);
  }

  v5 = [MEMORY[0x277CCA890] currentHandler];
  result = [v5 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"OSStatus softLink_FigBaseObjectStandardNotificationBarrier(CMBaseObjectRef)") description:{@"STS_N.mm", 30, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_239899DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL52getFigBaseObjectStandardNotificationBarrierSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "FigBaseObjectStandardNotificationBarrier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigBaseObjectStandardNotificationBarrierSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t STS_N_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v7 = getkFigSTSProperty_FlavorSymbolLoc(void)::ptr;
  v28 = getkFigSTSProperty_FlavorSymbolLoc(void)::ptr;
  if (!getkFigSTSProperty_FlavorSymbolLoc(void)::ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL34getkFigSTSProperty_FlavorSymbolLocv_block_invoke;
    v30 = &unk_278AA47E0;
    v31 = &v25;
    v8 = MediaExperienceLibrary();
    v9 = dlsym(v8, "kFigSTSProperty_Flavor");
    *(v31[1] + 24) = v9;
    getkFigSTSProperty_FlavorSymbolLoc(void)::ptr = *(v31[1] + 24);
    v7 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v7)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkFigSTSProperty_Flavor()") description:{@"STS_N.mm", 37, @"%s", dlerror()}];
    goto LABEL_27;
  }

  if (!CFEqual(a2, *v7))
  {
    v12 = *softLink_CMBaseObjectGetDerivedStorage(a1);
    os_unfair_lock_lock(v12);
    if (a2)
    {
      v13 = STS_N_Log();
      v14 = v13;
      if (a4)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          *&buf[4] = a1;
          *&buf[12] = 2112;
          *&buf[14] = a2;
          _os_log_debug_impl(&dword_23988E000, v14, OS_LOG_TYPE_DEBUG, "sts %p copying %@", buf, 0x16u);
        }

        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v15 = getkFigSTSProperty_OptionsDictSymbolLoc(void)::ptr;
        v28 = getkFigSTSProperty_OptionsDictSymbolLoc(void)::ptr;
        if (!getkFigSTSProperty_OptionsDictSymbolLoc(void)::ptr)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL39getkFigSTSProperty_OptionsDictSymbolLocv_block_invoke;
          v30 = &unk_278AA47E0;
          v31 = &v25;
          v16 = MediaExperienceLibrary();
          v17 = dlsym(v16, "kFigSTSProperty_OptionsDict");
          *(v31[1] + 24) = v17;
          getkFigSTSProperty_OptionsDictSymbolLoc(void)::ptr = *(v31[1] + 24);
          v15 = v26[3];
        }

        _Block_object_dispose(&v25, 8);
        if (!v15)
        {
          while (1)
          {
            v24 = [MEMORY[0x277CCA890] currentHandler];
            [v24 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkFigSTSProperty_OptionsDict()") description:{@"STS_N.mm", 38, @"%s", dlerror()}];
LABEL_27:
            __break(1u);
          }
        }

        if (CFEqual(a2, *v15))
        {
          v18 = *(v12 + 8);
          if (v18)
          {
            v18 = CFRetain(v18);
          }

          v11 = 0;
          *a4 = v18;
        }

        else
        {
          v11 = 4294954512;
        }

        goto LABEL_21;
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_20:
        v11 = 4294951306;
LABEL_21:
        os_unfair_lock_unlock(v12);
        goto LABEL_22;
      }

      *buf = 136315394;
      *&buf[4] = "STS_N_CopyProperty";
      *&buf[12] = 1024;
      *&buf[14] = 307;
      v20 = v14;
    }

    else
    {
      v19 = STS_N_Log();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 136315394;
      *&buf[4] = "STS_N_CopyProperty";
      *&buf[12] = 1024;
      *&buf[14] = 306;
      v20 = v19;
    }

    _os_log_error_impl(&dword_23988E000, v20, OS_LOG_TYPE_ERROR, "%s:%d error", buf, 0x12u);
    goto LABEL_20;
  }

  v10 = getkFigSTSFlavor_N();
  v11 = 0;
  *a4 = CFRetain(v10);
LABEL_22:
  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_23989A228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  os_unfair_lock_unlock(v3);
  _Unwind_Resume(a1);
}

void *___ZL34getkFigSTSProperty_FlavorSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "kFigSTSProperty_Flavor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigSTSProperty_FlavorSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkFigSTSProperty_OptionsDictSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "kFigSTSProperty_OptionsDict");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigSTSProperty_OptionsDictSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *STS_N_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<STS_N %p RC: %ld >", a1, v4);
  return Mutable;
}

void STS_N_Finalize(unint64_t a1)
{
  v2 = CADeprecated::TSingleton<STS_N>::instance();
  os_unfair_lock_lock(v2);
  for (i = *(v2 + 24); i; i = *i)
  {
    while (1)
    {
      std::__hash_table<OpaqueFigSTS *,std::hash<OpaqueFigSTS *>,std::equal_to<OpaqueFigSTS *>,std::allocator<OpaqueFigSTS *>>::__erase_unique<OpaqueFigSTS *>((i[5] + 24), a1);
      if (!STS_N::CanDeleteSpatializerInfo(v2, i[5]))
      {
        break;
      }

      v4 = *i;
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>>>::remove(v8, (v2 + 8), i);
      std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<STS_N::PerLabelInfo>>,void *>>>>::~unique_ptr[abi:ne200100](v8);
      i = v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  os_unfair_lock_unlock(v2);
  DerivedStorage = softLink_CMBaseObjectGetDerivedStorage(a1);
  v6 = DerivedStorage[1];
  *DerivedStorage = 0;
  DerivedStorage[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v7 = DerivedStorage[1];
    if (v7)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t ___ZL26MediaExperienceLibraryCorePPc_block_invoke_72(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaExperienceLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
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