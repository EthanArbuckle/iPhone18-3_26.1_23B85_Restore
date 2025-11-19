void std::vector<double>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_23EE284E0)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_23EE284D0)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_23EE284E0)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_23EE284D0)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_23EE284E0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_23EE284E0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23EE16584(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id ARDeviceANEVersion()
{
  if ([MEMORY[0x277CEE958] hasANE])
  {
    v0 = [MEMORY[0x277CEE958] aneSubType];
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t determineDeviceANEVersionPriorOrEqualToH12()
{
  if (determineDeviceANEVersionPriorOrEqualToH12_onceToken != -1)
  {
    determineDeviceANEVersionPriorOrEqualToH12_cold_1();
  }

  return determineDeviceANEVersionPriorOrEqualToH12_result;
}

void __determineDeviceANEVersionPriorOrEqualToH12_block_invoke()
{
  v2 = ARDeviceANEVersion();
  v0 = [v2 lowercaseString];
  if ([v0 isEqualToString:@"m9"] & 1) != 0 || (objc_msgSend(v0, "isEqualToString:", @"h10") & 1) != 0 || (objc_msgSend(v0, "isEqualToString:", @"h11"))
  {
    v1 = 1;
  }

  else
  {
    v1 = [v0 isEqualToString:@"h12"];
  }

  determineDeviceANEVersionPriorOrEqualToH12_result = v1;
}

uint64_t determineDeviceANEVersionPriorOrEqualToH14()
{
  if (determineDeviceANEVersionPriorOrEqualToH14_onceToken != -1)
  {
    determineDeviceANEVersionPriorOrEqualToH14_cold_1();
  }

  return determineDeviceANEVersionPriorOrEqualToH14_result;
}

void __determineDeviceANEVersionPriorOrEqualToH14_block_invoke()
{
  v2 = ARDeviceANEVersion();
  v0 = [v2 lowercaseString];
  if ([v0 isEqualToString:@"m9"] & 1) != 0 || (objc_msgSend(v0, "isEqualToString:", @"h10") & 1) != 0 || (objc_msgSend(v0, "isEqualToString:", @"h11") & 1) != 0 || (objc_msgSend(v0, "isEqualToString:", @"h12") & 1) != 0 || (objc_msgSend(v0, "isEqualToString:", @"h13"))
  {
    v1 = 1;
  }

  else
  {
    v1 = [v0 isEqualToString:@"h14"];
  }

  determineDeviceANEVersionPriorOrEqualToH14_result = v1;
}

id ABPKMLModelAddANEVersion(void *a1, char a2)
{
  v3 = a1;
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = [MEMORY[0x277CEE958] aneSubType];
  if (![MEMORY[0x277CEE958] hasANE] || (objc_msgSend(v4, "isEqualToString:", @"m9") & 1) != 0)
  {

LABEL_5:
    v5 = v3;
    goto LABEL_6;
  }

  v7 = [v4 uppercaseString];
  v8 = [@"_" stringByAppendingString:v7];
  v5 = [v3 stringByAppendingString:v8];

LABEL_6:

  return v5;
}

__CFString *ABPKMLModelFolder(int a1)
{
  v2 = [MEMORY[0x277CEE958] aneSubType];
  if (a1 && [MEMORY[0x277CEE958] hasANE] && (objc_msgSend(v2, "isEqualToString:", @"m9") & 1) == 0)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [v2 uppercaseString];
    v3 = [v5 initWithFormat:@"%@", v6];
  }

  else
  {
    v3 = &stru_28516DA30;
  }

  return v3;
}

id ABPKMLModelPath(void *a1, void *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (([v6 isEqualToString:@"2DHumanPoseDetectorBreakthrough"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"2DHumanPoseDetector") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"2DHumanPoseDetectorFull") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"3DHumanPoseLifting") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"3DHumanPoseLiftingSequenceFirstStage") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"3DHumanPoseLiftingLSTM"))
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"e5bundles/%@.mlmodelc.bundle", v6];
    v8 = [v5 pathForResource:v7 ofType:0];
  }

  else
  {
    v7 = ABPKMLModelAddANEVersion(v6, a3);
    v12 = ABPKMLModelFolder(a3);
    v8 = [v5 pathForResource:v7 ofType:@"mlmodelc" inDirectory:v12];
  }

  v9 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_INFO, " Loading the model: %@ ", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_23EE17440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ABPK3DLiftingSequence;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23EE18508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

void sub_23EE19268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  _Block_object_dispose(&a21, 8);
  std::deque<std::pair<long,long>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 136);
  if (v29)
  {
    *(v27 - 128) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

double __Block_byref_object_copy__0(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

unint64_t **abpk::RingBuffer<std::vector<float>,9ul>::Iterator<true>::operator-=(unint64_t **result, unint64_t a2)
{
  v2 = result[1];
  if (v2 == 9)
  {
    v2 = **result;
  }

  v3 = a2 % 9;
  if (a2 <= 9)
  {
    v3 = a2;
  }

  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    result[1] = v5;
    if (result[2])
    {
      return result;
    }
  }

  else if (*(result + 16) == 1)
  {
    v5 += 9;
    result[1] = v5;
    *(result + 16) = 0;
  }

  else
  {
    v5 = **result;
    result[1] = v5;
  }

  v6 = **result;
  if (v5 < v6)
  {
    result[1] = v6;
  }

  return result;
}

void sub_23EE19BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ABPK3DLifting;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23EE19EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void *std::deque<std::pair<int,int>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = std::deque<std::pair<int,int>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

uint64_t std::deque<std::pair<int,int>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<std::pair<long,long> *,std::allocator<std::pair<long,long> *>>::~__split_buffer(a1);
}

void *std::deque<std::pair<int,int>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long,long> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::pair<long,long> *,std::allocator<std::pair<long,long> *>>::emplace_back<std::pair<long,long> *&>(a1, &v10);
}

void sub_23EE1AEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EE1B5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ABPKAlgorithmRA;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23EE1C4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  btr::BodyRegistrationInfo::~BodyRegistrationInfo(va);
  v17 = *(v15 - 160);
  if (v17)
  {
    *(v15 - 152) = v17;
    operator delete(v17);
  }

  std::__tree<unsigned char>::destroy(v15 - 136, *(v15 - 128));
  _Unwind_Resume(a1);
}

void sub_23EE1CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  btr::BodyRegistrationInfo::~BodyRegistrationInfo(va);
  v14 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_iEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
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

void sub_23EE1E118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ABPKImagePreProcessing;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t std::vector<ABPKSRT>::__init_with_size[abi:ne200100]<ABPKSRT const*,ABPKSRT const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ABPKSRT>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23EE1F504(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ABPKSRT>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ABPKSRT>>(a1, a2);
  }

  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ABPKSRT>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id CreateABPK3DLiftingAlgorithm()
{
  v0 = determineDeviceANEVersionPriorOrEqualToH12();
  v1 = off_278C715E0;
  if (!v0)
  {
    v1 = off_278C715E8;
  }

  v2 = objc_alloc_init(*v1);

  return v2;
}

void sub_23EE1F78C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

float32x2_t *_distanceBetweenTwoPoses(float32x2_t *result, float32x2_t *a2, uint64_t a3)
{
  for (i = 0.0; a3; --a3)
  {
    if ((vmaxv_u16(vmovn_s32(vcltzq_f32(*result->f32))) & 1) == 0)
    {
      v4 = vsub_f32(*result, *a2);
      i = i + sqrtf(vaddv_f32(vmul_f32(v4, v4)));
    }

    ++a2;
    ++result;
  }

  return result;
}

BOOL _isValueInVector(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if (!v3)
  {
    return 0;
  }

  v4 = v3 >> 3;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (*v2 == a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v7;
    if (v5 == v7)
    {
      break;
    }

    v9 = v2[v7++];
  }

  while (v9 != a2);
  return v8 < v4;
}

void sub_23EE21038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

void sub_23EE21B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23EE23A80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *ABPKImageData.pixelBuffer.getter()
{
  v1 = OBJC_IVAR___ABPKImageData_pixelBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ABPKImageData.pixelBuffer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ABPKImageData_pixelBuffer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double ABPKImageData.timestamp.getter()
{
  v1 = OBJC_IVAR___ABPKImageData_timestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ABPKImageData.timestamp.setter(double a1)
{
  v3 = OBJC_IVAR___ABPKImageData_timestamp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ABPKImageData.__allocating_init(pixelBuffer:timestamp:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___ABPKImageData_pixelBuffer;
  *&v5[OBJC_IVAR___ABPKImageData_pixelBuffer] = 0;
  swift_beginAccess();
  *&v5[v6] = a1;
  *&v5[OBJC_IVAR___ABPKImageData_timestamp] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ABPKImageData.init(pixelBuffer:timestamp:)(uint64_t a1, double a2)
{
  v5 = OBJC_IVAR___ABPKImageData_pixelBuffer;
  *&v2[OBJC_IVAR___ABPKImageData_pixelBuffer] = 0;
  swift_beginAccess();
  *&v2[v5] = a1;
  *&v2[OBJC_IVAR___ABPKImageData_timestamp] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ABPKImageData();
  return objc_msgSendSuper2(&v7, sel_init);
}

id ABPKImageData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ABPKImageData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ABPKImageData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for CVBuffer()
{
  if (!qword_27E393858)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E393858);
    }
  }
}

void cva::MatrixData<int,0ul,0ul,false>::allocate()
{
  __assert_rtn("allocate", "matrixdata.h", 479, "(!m_data) || cva::detail::assertMessage(No matrix data must be allocated.)");
}

{
  __assert_rtn("allocate", "matrixdata.h", 490, "(m_data) || cva::detail::assertMessage(Matrix data must be allocated on exit.)");
}

void _ZNSt3__120__optional_copy_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EEC2B8ne200100ERKS6__cold_1(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void cva::VecLib<float>::gemm()
{
    ;
  }
}

void cva::VecLib<float>::gemv()
{
    ;
  }
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

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
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