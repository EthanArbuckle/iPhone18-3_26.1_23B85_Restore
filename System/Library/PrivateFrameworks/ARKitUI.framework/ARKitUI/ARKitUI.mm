BOOL isSessionLoadingMap(void *a1)
{
  v1 = a1;
  v2 = [v1 configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v4 = [v1 configuration];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass();

    v4 = [v1 configuration];
    if ((v5 & 1) == 0)
    {
      objc_opt_class();
      v6 = objc_opt_isKindOfClass();

      if ((v6 & 1) == 0)
      {
        v8 = 0;
        goto LABEL_6;
      }

      v4 = [v1 configuration];
    }
  }

  v7 = [v4 initialWorldMap];
  v8 = v7 != 0;

LABEL_6:
  return v8;
}

uint64_t isSessionValidForCoaching(uint64_t result)
{
  if (result)
  {
    return [MEMORY[0x277CE5240] isSupported];
  }

  return result;
}

uint64_t validateCoachingGoalForSession(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3 || ![MEMORY[0x277CE5240] isSupported])
  {
    goto LABEL_28;
  }

  v4 = [v3 configuration];
  if (a1 == 4)
  {
    if ([v4 isKindOfConfiguration:objc_opt_class()])
    {

LABEL_22:
      a1 = 4;
      goto LABEL_28;
    }

    v20 = [v3 configuration];

    if (!v20)
    {
      goto LABEL_22;
    }

LABEL_27:
    a1 = 0;
    goto LABEL_28;
  }

  v5 = 0x277CE53B0;
  v6 = [v4 isKindOfConfiguration:objc_opt_class()];

  v7 = [v3 configuration];
  if (v6)
  {
    goto LABEL_12;
  }

  v5 = 0x277CE5310;
  v8 = [v7 isKindOfConfiguration:objc_opt_class()];

  v7 = [v3 configuration];
  if (v8)
  {
    goto LABEL_12;
  }

  v5 = 0x277CE5230;
  v9 = [v7 isKindOfConfiguration:objc_opt_class()];

  v7 = [v3 configuration];
  if (v9)
  {
    goto LABEL_12;
  }

  v5 = 0x277CE5328;
  v10 = [v7 isKindOfConfiguration:objc_opt_class()];

  v7 = [v3 configuration];
  if (v10)
  {
    goto LABEL_12;
  }

  v11 = [v7 isKindOfConfiguration:objc_opt_class()];

  if (v11)
  {
    v7 = [v3 configuration];
    v5 = 0x277CE5298;
LABEL_12:
    v12 = *v5;
    v13 = [v7 getAsKindOfConfiguration:objc_opt_class()];

    v14 = [v13 planeDetection];
    v15 = [v13 planeDetection];

    v16 = (v15 >> 1) & 1;
    goto LABEL_13;
  }

  LOBYTE(v16) = 0;
  v14 = 0;
LABEL_13:
  if (a1 == 1 && (v14 & 1) == 0)
  {
    v17 = _ARLogCoaching();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      v18 = "Coaching requires a horizontal plane, but session does not support horizontal plane detection. Turning off horizontal plane requirement for coaching.";
      v19 = &v24;
LABEL_25:
      _os_log_impl(&dword_23D3AE000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (!((a1 != 2) | v16 & 1))
  {
    v17 = _ARLogCoaching();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "Coaching requires a vertical plane, but session does not support vertical plane detection. Turning off vertical plane requirement for coaching.";
      v19 = buf;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (!((a1 != 3) | v14 & 1 | v16 & 1))
  {
    v17 = _ARLogCoaching();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v18 = "Coaching requires plane detection, but session does not support plane detection. Turning off plane requirement for coaching.";
      v19 = &v22;
      goto LABEL_25;
    }

LABEL_26:

    goto LABEL_27;
  }

LABEL_28:

  return a1;
}

id _ARLogCoaching()
{
  if (_ARLogCoaching_onceToken != -1)
  {
    _ARLogCoaching_cold_1();
  }

  v1 = _ARLogCoaching_logObj;

  return v1;
}

void ARCoachingEnumeratePlaneAnchors(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4[2](v4, v9);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23D3B048C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(result, a2);
    }

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(result, a2);
    }

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278BCD3B8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double ARFLRubberbandValue(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (1.0 - 1.0 / (a4 * ((a1 - a2) / a3) + 1.0)) * a3;
}

double ARFLInverseRubberbandValue(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (-1.0 / ((a1 - a2) / a3 + -1.0) + -1.0) / a4 * a3;
}

id _ARLogCoaching_0()
{
  if (_ARLogCoaching_onceToken_0 != -1)
  {
    _ARLogCoaching_cold_1_0();
  }

  v1 = _ARLogCoaching_logObj_0;

  return v1;
}

id _ARLogGeneral()
{
  if (_ARLogGeneral_onceToken != -1)
  {
    _ARLogGeneral_cold_1();
  }

  v1 = _ARLogGeneral_logObj;

  return v1;
}

double simd_matrix4x4(float32x4_t a1)
{
  _S3 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = a1.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

uint64_t __ARShouldUseLogTypeError_block_invoke()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion = result;
  return result;
}

double ARFLSpringConvertStiffnessDampingToDampingRatioResponse(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double ARFLSpringConvertMassStiffnessDampingToDampingRatioResponse(double *a1, double *a2, double result, double a4, double a5)
{
  if (a1)
  {
    v5 = sqrt(result * a4);
    *a1 = a5 / (v5 + v5);
  }

  if (a2)
  {
    result = 6.28318531 / sqrt(a4 / result);
    *a2 = result;
  }

  return result;
}

double ARFLSpringConvertDampingRatioResponseToStiffnessDamping(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

double ARFLSpringConvertMassStiffnessDampingToStiffnessDamping(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a4 / result);
  v6 = 6.28318531 / (6.28318531 / v5) * (6.28318531 / (6.28318531 / v5));
  if (a1)
  {
    *a1 = v6;
  }

  if (a2)
  {
    v7 = sqrt(result * a4);
    v8 = sqrt(v6);
    result = a5 / (v7 + v7) * (v8 + v8);
    *a2 = result;
  }

  return result;
}

uint64_t operator==(uint64_t a1, uint64_t a2)
{
  v2 = vceqq_f32(*a1, *a2);
  v2.i32[3] = v2.i32[2];
  if ((vminvq_u32(v2) & 0x80000000) == 0)
  {
    return 0;
  }

  v3 = vceqq_f32(*(a1 + 16), *(a2 + 16));
  v3.i32[3] = v3.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) == 0)
  {
    return 0;
  }

  v5 = vceq_f32(*(a1 + 32), *(a2 + 32));
  return vpmin_u32(v5, v5).u32[0] >> 31;
}

id _ARLogGeneral(void)
{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v1 = _ARLogGeneral(void)::logObj;

  return v1;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v1 = _ARLogGeneral(void)::logObj;

  return v1;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::allocator<unsigned int>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_0()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void std::allocator<GTVertexData>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float32x4_t *std::__hash_table<std::__hash_value_type<GTVertexData,unsigned int>,std::__unordered_map_hasher<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::hash<GTVertexData>,std::equal_to<GTVertexData>,true>,std::__unordered_map_equal<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::equal_to<GTVertexData>,std::hash<GTVertexData>,true>,std::allocator<std::__hash_value_type<GTVertexData,unsigned int>>>::find<GTVertexData>(void *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 ^= (v3 << 8) ^ (v3 >> 8) ^ *(a2 + v2);
    v2 += 8;
  }

  while (v2 != 48);
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

  for (result = *v7; result; result = result->i64[0])
  {
    v9 = result->u64[1];
    if (v9 == v3)
    {
      v10 = vceqq_f32(result[1], *a2);
      v10.i32[3] = v10.i32[2];
      if ((vminvq_u32(v10) & 0x80000000) != 0)
      {
        v11 = vceqq_f32(result[2], *(a2 + 16));
        v11.i32[3] = v11.i32[2];
        if ((vminvq_u32(v11) & 0x80000000) != 0)
        {
          v12 = vceq_f32(*result[3].f32, *(a2 + 32));
          if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) != 0)
          {
            return result;
          }
        }
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
  }

  return result;
}

float32x4_t *std::__hash_table<std::__hash_value_type<GTVertexData,unsigned int>,std::__unordered_map_hasher<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::hash<GTVertexData>,std::equal_to<GTVertexData>,true>,std::__unordered_map_equal<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::equal_to<GTVertexData>,std::hash<GTVertexData>,true>,std::allocator<std::__hash_value_type<GTVertexData,unsigned int>>>::__emplace_unique_key_args<GTVertexData,std::pair<GTVertexData,unsigned int>>(void *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 ^= (v3 << 8) ^ (v3 >> 8) ^ *(a2 + v2);
    v2 += 8;
  }

  while (v2 != 48);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
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
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8->u64[1];
    if (v9 == v3)
    {
      break;
    }

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
      goto LABEL_22;
    }

LABEL_21:
    v8 = v8->i64[0];
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  v10 = vceqq_f32(v8[1], *a2);
  v10.i32[3] = v10.i32[2];
  if ((vminvq_u32(v10) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  v11 = vceqq_f32(v8[2], *(a2 + 16));
  v11.i32[3] = v11.i32[2];
  if ((vminvq_u32(v11) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  v12 = vceq_f32(*v8[3].f32, *(a2 + 32));
  if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  return v8;
}

void std::__hash_table<std::__hash_value_type<GTVertexData,unsigned int>,std::__unordered_map_hasher<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::hash<GTVertexData>,std::equal_to<GTVertexData>,true>,std::__unordered_map_equal<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::equal_to<GTVertexData>,std::hash<GTVertexData>,true>,std::allocator<std::__hash_value_type<GTVertexData,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<GTVertexData,unsigned int>,std::__unordered_map_hasher<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::hash<GTVertexData>,std::equal_to<GTVertexData>,true>,std::__unordered_map_equal<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::equal_to<GTVertexData>,std::hash<GTVertexData>,true>,std::allocator<std::__hash_value_type<GTVertexData,unsigned int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<GTVertexData,unsigned int>,std::__unordered_map_hasher<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::hash<GTVertexData>,std::equal_to<GTVertexData>,true>,std::__unordered_map_equal<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::equal_to<GTVertexData>,std::hash<GTVertexData>,true>,std::allocator<std::__hash_value_type<GTVertexData,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void *std::__hash_table<std::__hash_value_type<GTVertexData,unsigned int>,std::__unordered_map_hasher<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::hash<GTVertexData>,std::equal_to<GTVertexData>,true>,std::__unordered_map_equal<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::equal_to<GTVertexData>,std::hash<GTVertexData>,true>,std::allocator<std::__hash_value_type<GTVertexData,unsigned int>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<GTVertexData,unsigned int>,std::__unordered_map_hasher<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::hash<GTVertexData>,std::equal_to<GTVertexData>,true>,std::__unordered_map_equal<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::equal_to<GTVertexData>,std::hash<GTVertexData>,true>,std::allocator<std::__hash_value_type<GTVertexData,unsigned int>>>::~__hash_table(uint64_t a1)
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

void sub_23D3B7F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ARSCNCompositor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23D3B8BA4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_0()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_1()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

__CFString *ARCoachingDeviceGlyphName()
{
  v0 = ARDeviceIsiPad();
  HasHomeButton = ARDeviceHasHomeButton();
  v2 = HasHomeButton;
  if (v0)
  {
    v3 = _ARLogCoaching_1();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (v2)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "Loading glyph for iPad with home button", buf, 2u);
      }

      v5 = @"DeviceC";
    }

    else
    {
      if (v4)
      {
        *v12 = 0;
        _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "Loading glyph for iPad without home button", v12, 2u);
      }

      v5 = @"DeviceD";
    }
  }

  else if (HasHomeButton)
  {
    v3 = _ARLogCoaching_1();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "Loading glyph for iPhone device with home button", v11, 2u);
    }

    v5 = @"DeviceA";
  }

  else
  {
    HasIsland = ARDeviceHasIsland();
    v3 = _ARLogCoaching_1();
    v7 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (HasIsland)
    {
      if (v7)
      {
        *v10 = 0;
        _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "Loading glyph for iPhone with island", v10, 2u);
      }

      v5 = @"DeviceE";
    }

    else
    {
      if (v7)
      {
        *v9 = 0;
        _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "Loading glyph for iPhone device with notch", v9, 2u);
      }

      v5 = @"DeviceB";
    }
  }

  return v5;
}

id _ARLogCoaching_1()
{
  if (_ARLogCoaching_onceToken_1 != -1)
  {
    _ARLogCoaching_cold_1_1();
  }

  v1 = _ARLogCoaching_logObj_1;

  return v1;
}

id ARCoachingLoadDeviceGlyph()
{
  v0 = MEMORY[0x277D755B8];
  v1 = ARCoachingDeviceGlyphName();
  v2 = ARKitUIBundle();
  v3 = [v0 imageNamed:v1 inBundle:v2];

  return v3;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_0()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_0 = result;
  return result;
}

double ARCoachingLayoutScalar()
{
  v0 = ARDeviceIsiPad();
  result = 0.75;
  if (v0)
  {
    return 1.0;
  }

  return result;
}

double ARCoachingMinimumActivationDelay(uint64_t a1)
{
  result = 1.5;
  if (a1 == 4)
  {
    return 0.5;
  }

  return result;
}

double ARCoachingAdditionalActivationDelay(uint64_t a1, char a2)
{
  result = 0.0;
  if (a1 != 4 && (a2 & 1) == 0)
  {
    v3 = ARDeviceSupportsJasper();
    result = 0.0;
    if (v3)
    {
      return 8.5;
    }
  }

  return result;
}

id _ARLogCoaching_2()
{
  if (_ARLogCoaching_onceToken_2 != -1)
  {
    _ARLogCoaching_cold_1_2();
  }

  v1 = _ARLogCoaching_logObj_2;

  return v1;
}

__CFString *getCoachingText(uint64_t a1)
{
  v1 = &stru_284F6BB70;
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        if (getMoveCoachingText_onceToken != -1)
        {
          getCoachingText_cold_3();
        }

        v5 = getMoveCoachingText_moveCoachingText;
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_28;
        }

        if (getContinueCoachingText_onceToken != -1)
        {
          getCoachingText_cold_2();
        }

        v5 = getContinueCoachingText_continueCoachingText;
      }

      goto LABEL_27;
    }

    if (a1 == 3)
    {
      v2 = ARKitCoreBundle();
      v3 = v2;
      v4 = @"Return to the previous area to resume";
    }

    else
    {
      v2 = ARKitCoreBundle();
      v3 = v2;
      v4 = @"Move slowly";
    }

LABEL_22:
    v1 = [v2 localizedStringForKey:v4 value:&stru_284F6BB70 table:@"Localizable"];

    goto LABEL_28;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      v2 = ARKitCoreBundle();
      v3 = v2;
      v4 = &stru_284F6BB70;
    }

    else
    {
      v2 = ARKitCoreBundle();
      v3 = v2;
      v4 = @"Scan buildings across the street";
    }

    goto LABEL_22;
  }

  if (a1 == 7)
  {
    v2 = ARKitCoreBundle();
    v3 = v2;
    v4 = @"Keep scanning different buildings";
    goto LABEL_22;
  }

  if (a1 != 8)
  {
    if (a1 != 9)
    {
      goto LABEL_28;
    }

    v2 = ARKitCoreBundle();
    v3 = v2;
    v4 = @"Slow down";
    goto LABEL_22;
  }

  if (getGeoTrackingLookUpCoachingText_onceToken != -1)
  {
    getCoachingText_cold_1();
  }

  v5 = getGeoTrackingLookUpCoachingText_lookUpCoachingText;
LABEL_27:
  v1 = v5;
LABEL_28:

  return v1;
}

void __getMoveCoachingText_block_invoke()
{
  v6 = ARDeviceClass();
  if ([v6 isEqualToString:@"iPhone"])
  {
    v0 = ARKitCoreBundle();
    v1 = v0;
    v2 = @"Move iPhone to start";
  }

  else if ([v6 isEqualToString:@"iPad"])
  {
    v0 = ARKitCoreBundle();
    v1 = v0;
    v2 = @"Move iPad to start";
  }

  else
  {
    v3 = [v6 isEqualToString:@"iPod"];
    v0 = ARKitCoreBundle();
    v1 = v0;
    if (v3)
    {
      v2 = @"Move iPod touch to start";
    }

    else
    {
      v2 = @"Move device to start";
    }
  }

  v4 = [v0 localizedStringForKey:v2 value:&stru_284F6BB70 table:@"Localizable"];
  v5 = getMoveCoachingText_moveCoachingText;
  getMoveCoachingText_moveCoachingText = v4;
}

void __getContinueCoachingText_block_invoke()
{
  v6 = ARDeviceClass();
  if ([v6 isEqualToString:@"iPhone"])
  {
    v0 = ARKitCoreBundle();
    v1 = v0;
    v2 = @"Continue to move iPhone";
  }

  else if ([v6 isEqualToString:@"iPad"])
  {
    v0 = ARKitCoreBundle();
    v1 = v0;
    v2 = @"Continue to move iPad";
  }

  else
  {
    v3 = [v6 isEqualToString:@"iPod"];
    v0 = ARKitCoreBundle();
    v1 = v0;
    if (v3)
    {
      v2 = @"Continue to move iPod touch";
    }

    else
    {
      v2 = @"Continue to move device";
    }
  }

  v4 = [v0 localizedStringForKey:v2 value:&stru_284F6BB70 table:@"Localizable"];
  v5 = getContinueCoachingText_continueCoachingText;
  getContinueCoachingText_continueCoachingText = v4;
}

void __getGeoTrackingLookUpCoachingText_block_invoke()
{
  v6 = ARDeviceClass();
  if ([v6 isEqualToString:@"iPhone"])
  {
    v0 = ARKitCoreBundle();
    v1 = v0;
    v2 = @"Raise iPhone toward buildings";
  }

  else if ([v6 isEqualToString:@"iPad"])
  {
    v0 = ARKitCoreBundle();
    v1 = v0;
    v2 = @"Raise iPad toward buildings";
  }

  else
  {
    v3 = [v6 isEqualToString:@"iPod"];
    v0 = ARKitCoreBundle();
    v1 = v0;
    if (v3)
    {
      v2 = @"Raise iPod touch toward buildings";
    }

    else
    {
      v2 = @"Raise device toward buildings";
    }
  }

  v4 = [v0 localizedStringForKey:v2 value:&stru_284F6BB70 table:@"Localizable"];
  v5 = getGeoTrackingLookUpCoachingText_lookUpCoachingText;
  getGeoTrackingLookUpCoachingText_lookUpCoachingText = v4;
}

id _ARLogGeneral_0()
{
  if (_ARLogGeneral_onceToken_1 != -1)
  {
    _ARLogGeneral_cold_1_0();
  }

  v1 = _ARLogGeneral_logObj_1;

  return v1;
}

void sub_23D3CC384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23D3CCAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<ARCoachingControlPoint>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ARViewToCameraImageTransform@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v7 = a5 / a4;
  v8 = a4 / a5;
  if ((result - 3) <= 1)
  {
    v7 = v8;
  }

  v9 = *(MEMORY[0x277CBF348] + 8);
  v10 = a6 / a7;
  if (v7 >= v10)
  {
    v13 = *MEMORY[0x277CBF348];
    v11 = 1.0;
    if (v7 <= v10)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = v10 / v7;
      v9 = (1.0 - v12) * 0.5;
    }
  }

  else
  {
    v11 = v7 / v10;
    v12 = 1.0;
    v13 = (1.0 - v11) * 0.5;
  }

  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  if (!a2)
  {
    if (result == 2)
    {
      v13 = v13 + v11;
      *(a3 + 8) = v12;
      *(a3 + 16) = -v11;
      goto LABEL_25;
    }

    if (result == 4)
    {
      v13 = v13 + v11;
      *a3 = -v11;
      v9 = v9 + v12;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = -v12;
      goto LABEL_25;
    }

    if (result != 3)
    {
      v9 = v9 + v12;
      *(a3 + 8) = -v12;
      goto LABEL_24;
    }

    *a3 = v11;
LABEL_18:
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = v12;
    goto LABEL_25;
  }

  if (result == 2)
  {
    v13 = v13 + v11;
    v9 = v9 + v12;
    *(a3 + 8) = -v12;
    *(a3 + 16) = -v11;
    goto LABEL_25;
  }

  if (result == 4)
  {
    *a3 = -v11;
    v13 = v13 + v11;
    goto LABEL_18;
  }

  if (result != 3)
  {
    *(a3 + 8) = v12;
LABEL_24:
    *(a3 + 16) = v11;
    goto LABEL_25;
  }

  *a3 = v11;
  v9 = v9 + v12;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = -v12;
LABEL_25:
  *(a3 + 32) = v13;
  *(a3 + 40) = v9;
  return result;
}

uint64_t ARCameraToDisplayRotation(unint64_t a1)
{
  if (a1 > 4)
  {
    return 90;
  }

  else
  {
    return qword_23D3DC4A8[a1];
  }
}

__CFString *NSStringFromUIInterfaceOrientation(unint64_t a1)
{
  if (a1 > 4)
  {
    return &stru_284F6BB70;
  }

  else
  {
    return off_278BCD680[a1];
  }
}

char *std::vector<ARCoachingControlPoint>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = (&v6[-*a1] >> 5) + 1;
    if (v12 >> 59)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v13 = __src - v11;
    v14 = v7 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    v33 = a1;
    if (v15)
    {
      std::allocator<ARCoachingControlPoint>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v30 = 0;
    v31 = 32 * v16;
    v32 = (32 * v16);
    std::__split_buffer<ARCoachingControlPoint>::emplace_back<ARCoachingControlPoint const&>(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v17;
    a1[1] = v6 + 32;
  }

  else
  {
    v8 = __src + 32;
    if (v6 < 0x20)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 32;
      v10 = *(v6 - 1);
      *v6 = *(v6 - 2);
      *(v6 + 1) = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 32, __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 32;
    if (v25)
    {
      v26 = 0;
    }

    v27 = &a3[v26];
    v28 = *(v27 + 1);
    *v4 = *v27;
    *(v4 + 1) = v28;
  }

  return v4;
}

void sub_23D3CDBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned short>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1] >> 1;
    if (v11 <= -2)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    v30 = a1;
    if (v15)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v27 = 0;
    v28 = 2 * v16;
    v29 = (2 * v16);
    std::__split_buffer<unsigned short>::emplace_back<unsigned short const&>(&v27, a3);
    v17 = v28;
    memcpy(v29, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v28;
    *&v29 = v29 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v22;
    *(&v29 + 1) = v23;
    v27 = v22;
    v28 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 2;
  }

  else
  {
    v8 = __src + 2;
    if (v6 < 2)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 2;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 2, __src, v6 - v8);
      v9 = a1[1];
    }

    v24 = v9 <= a3 || v4 > a3;
    v25 = 2;
    if (v24)
    {
      v25 = 0;
    }

    *v4 = *&a3[v25];
  }

  return v4;
}

void sub_23D3CDDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<ARCoachingPatchData>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<ARCoachingPatchData>::emplace_back<ARCoachingPatchData const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_23D3CDF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ARCoachingControlPoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<ARCoachingControlPoint>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<ARCoachingPatchData>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *std::vector<ARCoachingControlPoint>::__assign_with_size[abi:ne200100]<ARCoachingControlPoint*,ARCoachingControlPoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 5)
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

    if (!(a4 >> 59))
    {
      v10 = v8 >> 4;
      if (v8 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ARCoachingControlPoint>::__vallocate[abi:ne200100](v7, v11);
    }

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 5)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void std::vector<ARCoachingControlPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<ARCoachingControlPoint>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

__n128 std::__split_buffer<ARCoachingControlPoint>::emplace_back<ARCoachingControlPoint const&>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 4;
      }

      std::allocator<ARCoachingControlPoint>::allocate_at_least[abi:ne200100](a1[4], v11);
    }

    v7 = ((v6 >> 5) + 1) / -2;
    v8 = ((v6 >> 5) + 1) / 2;
    v9 = &v5[-32 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-32 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[32 * v7];
    a1[2] = &v9[v10];
  }

  result = *a2;
  v13 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v13;
  a1[2] += 32;
  return result;
}

void *std::__split_buffer<unsigned short>::emplace_back<unsigned short const&>(void *result, _WORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result];
      }

      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](result[4], v11);
    }

    v7 = ((v6 >> 1) + 1) / -2;
    v8 = ((v6 >> 1) + 1 + (((v6 >> 1) + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[2 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 2;
  return result;
}

void std::allocator<unsigned short>::allocate_at_least[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__split_buffer<ARCoachingPatchData>::emplace_back<ARCoachingPatchData const&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

double ARFLCompoundSpringMake@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D3>, double a5@<D4>)
{
  v27 = a5;
  v28 = a4;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 16) = 0u;
  v9 = a1 + 16;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 336) = 1;
  v26 = 0.0;
  v25 = 0.0;
  ARFLSpringConvertDampingRatioResponseToStiffnessDamping(&v26, &v25, 1.0, 0.5);
  ARFLSimpleSpringMake(v9, a4, 0.0, a4, v26, v25);
  ARFLSimpleSpringMake(&v21, a5, 0.0, a5, v26, v25);
  v10 = v22;
  *(a1 + 80) = v21;
  *(a1 + 96) = v10;
  v11 = v24;
  *(a1 + 112) = v23;
  *(a1 + 128) = v11;
  v19 = 0.0;
  v20 = 0.0;
  ARFLSpringConvertStiffnessDampingToDampingRatioResponse(&v20, &v19, a4, a5);
  ARFLSimpleSpringMake(&v21, v20, 0.0, v20, v26, v25);
  v12 = v22;
  *(a1 + 144) = v21;
  *(a1 + 160) = v12;
  v13 = v24;
  *(a1 + 176) = v23;
  *(a1 + 192) = v13;
  ARFLSimpleSpringMake(&v21, v19, 0.0, v19, v26, v25);
  v14 = v22;
  *(a1 + 208) = v21;
  *(a1 + 224) = v14;
  v15 = v24;
  *(a1 + 240) = v23;
  *(a1 + 256) = v15;
  ARFLSpringConvertDampingRatioResponseToStiffnessDamping(&v28, &v27, v20, v19);
  ARFLSimpleSpringMake(&v21, a2, 0.0, a2, v26, v25);
  v16 = v22;
  *(a1 + 272) = v21;
  *(a1 + 288) = v16;
  result = *&v23;
  v18 = v24;
  *(a1 + 304) = v23;
  *(a1 + 320) = v18;
  return result;
}

void ARFLCompoundSpringMakeWithDampingRatioResponse(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D3>, double a5@<D4>)
{
  v8 = 0.0;
  v9 = 0.0;
  ARFLSpringConvertDampingRatioResponseToStiffnessDamping(&v9, &v8, a4, a5);
  ARFLCompoundSpringMake(a1, a2, a3, v9, v8);
}

uint64_t ARFLCompoundSpringSetAnchorImmediately(uint64_t result, double a2)
{
  *(result + 312) = a2;
  *(result + 272) = a2;
  *(result + 280) = 0;
  return result;
}

void ARFLCompoundSpringSetAnchorWithResponse(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 272) = a3;
    *(a1 + 280) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    ARFLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 296) = v7;
    *(a1 + 304) = v5;
    a3 = a2;
  }

  *(a1 + 312) = a3;
}

void ARFLCompoundSpringSetAnchorWithIntermediatePositionAndResponse(uint64_t a1, double a2, double a3, double a4)
{
  if (a4 == 0.0)
  {
    *(a1 + 312) = a2;
  }

  else
  {
    ARFLCompoundSpringSetAnchorWithResponse(a1, a2, a4);
    a2 = a3;
  }

  *(a1 + 272) = a2;
  *(a1 + 280) = 0;
}

uint64_t ARFLCompoundSpringSetStiffnessImmediately(uint64_t result, double a2)
{
  *(result + 56) = a2;
  *(result + 16) = a2;
  *(result + 24) = 0;
  return result;
}

void ARFLCompoundSpringSetStiffnessWithResponse(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    ARFLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 40) = v7;
    *(a1 + 48) = v5;
  }

  *(a1 + 56) = a2;
}

uint64_t ARFLCompoundSpringSetDampingImmediately(uint64_t result, double a2)
{
  *(result + 120) = a2;
  *(result + 80) = a2;
  *(result + 88) = 0;
  return result;
}

void ARFLCompoundSpringSetDampingWithResponse(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 80) = a2;
    *(a1 + 88) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    ARFLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 104) = v7;
    *(a1 + 112) = v5;
  }

  *(a1 + 120) = a2;
}

uint64_t ARFLCompoundSpringSetDampingRatioImmediately(uint64_t result, double a2)
{
  *(result + 184) = a2;
  *(result + 144) = a2;
  *(result + 152) = 0;
  return result;
}

void ARFLCompoundSpringSetDampingRatioSmoothly(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 144) = a2;
    *(a1 + 152) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    ARFLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 168) = v7;
    *(a1 + 176) = v5;
  }

  *(a1 + 184) = a2;
}

uint64_t ARFLCompoundSpringSetResponseImmediately(uint64_t result, double a2)
{
  *(result + 248) = a2;
  *(result + 208) = a2;
  *(result + 216) = 0;
  return result;
}

void ARFLCompoundSpringSetResponseSmoothly(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 208) = a2;
    *(a1 + 216) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    ARFLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 232) = v7;
    *(a1 + 240) = v5;
  }

  *(a1 + 248) = a2;
}

double ARFLCompoundSpringStep@<D0>(void *__src@<X0>, _OWORD *a2@<X8>, double a3@<D0>)
{
  memcpy(a2, __src, 0x158uLL);
  if (*(a2 + 336) == 1)
  {
    v6 = *(__src + 10);
    __dst[0] = *(__src + 9);
    __dst[1] = v6;
    v7 = *(__src + 12);
    __dst[2] = *(__src + 11);
    __dst[3] = v7;
    ARFLSimpleSpringStep(__dst, (a2 + 9), a3);
    v8 = a2[14];
    v25 = a2[13];
    v26 = v8;
    v9 = a2[16];
    v27 = a2[15];
    v28 = v9;
    ARFLSimpleSpringStep(&v25, __dst, a3);
    v10 = __dst[1];
    a2[13] = __dst[0];
    a2[14] = v10;
    v11 = __dst[3];
    a2[15] = __dst[2];
    a2[16] = v11;
  }

  else
  {
    v12 = *(__src + 2);
    __dst[0] = *(__src + 1);
    __dst[1] = v12;
    v13 = *(__src + 4);
    __dst[2] = *(__src + 3);
    __dst[3] = v13;
    ARFLSimpleSpringStep(__dst, (a2 + 1), a3);
    v14 = a2[6];
    v25 = a2[5];
    v26 = v14;
    v15 = a2[8];
    v27 = a2[7];
    v28 = v15;
    ARFLSimpleSpringStep(&v25, __dst, a3);
    v16 = __dst[1];
    a2[5] = __dst[0];
    a2[6] = v16;
    v17 = __dst[3];
    a2[7] = __dst[2];
    a2[8] = v17;
  }

  v18 = a2[18];
  v25 = a2[17];
  v26 = v18;
  v19 = a2[20];
  v27 = a2[19];
  v28 = v19;
  ARFLSimpleSpringStep(&v25, __dst, a3);
  v20 = __dst[1];
  a2[17] = __dst[0];
  a2[18] = v20;
  v21 = __dst[3];
  a2[19] = __dst[2];
  a2[20] = v21;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memcpy(__dst, a2, 0x158uLL);
  _ARFLSimpleSpringFromCompoundSpring(__dst, &v25);
  v23[0] = v25;
  v23[1] = v26;
  v23[2] = v27;
  v23[3] = v28;
  ARFLSimpleSpringStep(v23, __dst, a3);
  result = *__dst;
  *a2 = __dst[0];
  return result;
}

void _ARFLSimpleSpringFromCompoundSpring(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 272);
  if (*(a1 + 336) == 1)
  {
    ARFLSimpleSpringMakeWithDampingRatioResponse(a2, v2, v3, v4, *(a1 + 144), *(a1 + 208));
  }

  else
  {
    ARFLSimpleSpringMake(a2, v2, v3, v4, *(a1 + 16), *(a1 + 80));
  }
}

BOOL ARFLCompoundSpringIsStable(void *__src)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  memcpy(v15, __src, 0x158uLL);
  _ARFLSimpleSpringFromCompoundSpring(v15, &v16);
  if (*(__src + 336) == 1)
  {
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v15[3] = v19;
    result = ARFLSimpleSpringIsStable(v15);
    if (result)
    {
      v3 = *(__src + 18);
      v15[0] = *(__src + 17);
      v15[1] = v3;
      v4 = *(__src + 20);
      v15[2] = *(__src + 19);
      v15[3] = v4;
      result = ARFLSimpleSpringIsStable(v15);
      if (result)
      {
        v5 = *(__src + 10);
        v15[0] = *(__src + 9);
        v15[1] = v5;
        v6 = *(__src + 12);
        v15[2] = *(__src + 11);
        v15[3] = v6;
        result = ARFLSimpleSpringIsStable(v15);
        if (result)
        {
          v7 = *(__src + 14);
          v15[0] = *(__src + 13);
          v15[1] = v7;
          v8 = *(__src + 15);
          v9 = *(__src + 16);
LABEL_10:
          v15[2] = v8;
          v15[3] = v9;
          return ARFLSimpleSpringIsStable(v15);
        }
      }
    }
  }

  else
  {
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v15[3] = v19;
    result = ARFLSimpleSpringIsStable(v15);
    if (result)
    {
      v10 = *(__src + 18);
      v15[0] = *(__src + 17);
      v15[1] = v10;
      v11 = *(__src + 20);
      v15[2] = *(__src + 19);
      v15[3] = v11;
      result = ARFLSimpleSpringIsStable(v15);
      if (result)
      {
        v12 = *(__src + 2);
        v15[0] = *(__src + 1);
        v15[1] = v12;
        v13 = *(__src + 4);
        v15[2] = *(__src + 3);
        v15[3] = v13;
        result = ARFLSimpleSpringIsStable(v15);
        if (result)
        {
          v14 = *(__src + 6);
          v15[0] = *(__src + 5);
          v15[1] = v14;
          v8 = *(__src + 7);
          v9 = *(__src + 8);
          goto LABEL_10;
        }
      }
    }
  }

  return result;
}

id _ARLogCoaching_3()
{
  if (_ARLogCoaching_onceToken_3 != -1)
  {
    _ARLogCoaching_cold_1_3();
  }

  v1 = _ARLogCoaching_logObj_3;

  return v1;
}

float ARCoachingDotsRenderParamsLerp@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *&a4 = a4;
  *a3 = vmla_f32(*a1, vsub_f32(*a2, *a1), *&vdupq_lane_s32(*&a4, 0));
  *(a3 + 8) = vmlaq_n_f32(*(a1 + 8), vsubq_f32(*(a2 + 8), *(a1 + 8)), *&a4);
  return *&a4;
}

id _ARLogCoaching_4()
{
  if (_ARLogCoaching_onceToken_4 != -1)
  {
    _ARLogCoaching_cold_1_4();
  }

  v1 = _ARLogCoaching_logObj_4;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_1()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_1 = result;
  return result;
}

void ARFLSimpleSpringMake(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a4;
}

double ARFLSimpleSpringMakeWithDampingRatioResponse@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v12 = 0;
  v13 = 0.0;
  ARFLSpringConvertDampingRatioResponseToStiffnessDamping(&v13, &v12, a5, a6);
  v11 = v12;
  result = v13;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = result;
  *(a1 + 32) = v11;
  *(a1 + 40) = a4;
  return result;
}

double ARFLSimpleSpringSetDampingRatioResponse(uint64_t a1, double a2, double a3)
{
  v6 = 0;
  v7 = 0.0;
  ARFLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, a2, a3);
  v5 = v6;
  result = v7;
  *(a1 + 24) = v7;
  *(a1 + 32) = v5;
  return result;
}

void ARFLSimpleSpringStep(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 40);
  if (vabdd_f64(*a1, v6) <= *(a1 + 48) && fabs(v5) <= *(a1 + 56))
  {
    v28 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v28;
    v29 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v29;
    return;
  }

  v7 = *a1 - v6;
  v8 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v8;
  v9 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v9;
  v10 = sqrt(*(a1 + 24));
  v11 = *(a1 + 32) * 0.5;
  v12 = -v11;
  v13 = exp(-(v11 * a3));
  v14 = v13;
  v15 = v5 + v11 * v7;
  if (v11 >= v10)
  {
    if (v11 <= v10)
    {
      v20 = v7 + v15 * a3;
      v27 = v20 * (v13 * v12) + v13 * v15;
      goto LABEL_10;
    }

    v22 = sqrt(v11 * v11 - v10 * v10);
    v23 = v22 * a3;
    v24 = v15 / v22;
    v25 = cosh(v23);
    v26 = sinh(v23);
    v20 = v24 * v26 + v7 * v25;
    v21 = v22 * (v24 * v25) + v7 * v26 * v22;
  }

  else
  {
    v16 = sqrt(v11 * v12 + v10 * v10);
    v17 = v16 * a3;
    v18 = v15 / v16;
    v19 = __sincos_stret(v17);
    v20 = v18 * v19.__sinval + v7 * v19.__cosval;
    v21 = v16 * (v18 * v19.__cosval) + -(v19.__sinval * v7) * v16;
  }

  v27 = v14 * v12 * v20 + v14 * v21;
LABEL_10:
  *a2 = v6 + v14 * v20;
  *(a2 + 8) = v27;
}

id _ARLogCoaching_5()
{
  if (_ARLogCoaching_onceToken_5 != -1)
  {
    _ARLogCoaching_cold_1_5();
  }

  v1 = _ARLogCoaching_logObj_5;

  return v1;
}

float ARCoachingDeviceRenderParamsLerp@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *a1 + a4 * (*a2 - *a1);
  v5 = a4;
  v6 = vmla_n_f32(*(a1 + 8), vsub_f32(*(a2 + 8), *(a1 + 8)), v5);
  *a3 = v4;
  *(a3 + 8) = v6;
  result = *(a1 + 16) + (v5 * (*(a2 + 16) - *(a1 + 16)));
  *(a3 + 16) = result;
  return result;
}

id _ARLogCoaching_6()
{
  if (_ARLogCoaching_onceToken_6 != -1)
  {
    _ARLogCoaching_cold_1_6();
  }

  v1 = _ARLogCoaching_logObj_6;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_2()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_2 = result;
  return result;
}

void _simd_slerp_internal(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a2[1];
  v6 = vsubq_f64(*a1, *a2);
  v7 = vsubq_f64(v4, v5);
  v6.f64[0] = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v6, v6), vmulq_f64(v7, v7))));
  v29 = *a2;
  v30 = *a1;
  v8 = vaddq_f64(*a1, *a2);
  v31 = v4;
  v28 = v5;
  v9 = vaddq_f64(v4, v5);
  v10 = atan2(v6.f64[0], sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v8, v8), vmulq_f64(v9, v9)))));
  v11 = v10 + v10;
  v12 = 1.0;
  v13 = v10 + v10 == 0.0;
  v14 = 1.0;
  if (!v13)
  {
    v14 = sin(v11) / v11;
  }

  v15 = 1.0 / v14;
  if (v11 * 0.0 != 0.0)
  {
    v12 = sin(v11 * 0.0) / (v11 * 0.0);
  }

  v16 = vdupq_lane_s64(COERCE__INT64(v15 * v12 * 0.0), 0);
  v17 = 1.0;
  if (v11 != 0.0)
  {
    v27 = v16;
    v18 = sin(v11);
    v16 = v27;
    v17 = v18 / v11;
  }

  v19 = v15 * v17;
  v20 = vmulq_n_f64(v28, v19);
  v21 = vmlaq_f64(vmulq_n_f64(v29, v19), v30, v16);
  v22 = vmlaq_f64(v20, v31, v16);
  v23 = vaddvq_f64(vaddq_f64(vmulq_f64(v21, v21), vmulq_f64(v22, v22)));
  if (v23 == 0.0)
  {
    v24 = xmmword_23D3DC3D0;
    v25 = 0uLL;
  }

  else
  {
    v26 = 1.0 / sqrt(v23);
    v24 = vmulq_n_f64(v22, v26);
    v25 = vmulq_n_f64(v21, v26);
  }

  *a3 = v25;
  a3[1] = v24;
}

void _ARLogGeneral()
{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_73);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_227);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincospif_stret(float a1)
{
  MEMORY[0x2822043D0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}