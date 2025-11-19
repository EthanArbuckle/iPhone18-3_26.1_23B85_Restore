void *___ZL53getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLocv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ModelIOLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL18ModelIOLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782FB320;
    v6 = 0;
    ModelIOLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v2 = ModelIOLibraryCore(char **)::frameworkLibrary;
  if (!ModelIOLibraryCore(char **)::frameworkLibrary)
  {
    ___ZL53getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLocv_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MDLAssetLoadingOptionDefaultUSDColorSpace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL18ModelIOLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  ModelIOLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *anonymous namespace::_normalizedKeyTimes(void *a1, double a2, double a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v7 = [a1 count];
  if (a3 != 0.0 && v7 > 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(a1);
          }

          [*(*(&v15 + 1) + 8 * v12) doubleValue];
          [v6 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", (v13 - a2) / a3)}];
          ++v12;
        }

        while (v10 != v12);
        v10 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [v6 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  }

  return v6;
}

void *anonymous namespace::_valuesWithMDLAnimatedVector3Array(uint64_t a1, int a2, int a3, int a4)
{
  v6 = a2;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:a2];
  if (v6 >= 1)
  {
    v11 = 16 * a3;
    v12 = a1 + 16 * a4;
    do
    {
      LODWORD(v9) = HIDWORD(*v12);
      LODWORD(v10) = *(v12 + 8);
      [v8 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSCNVector3:", *v12, v9, v10)}];
      v12 += v11;
      --v6;
    }

    while (v6);
  }

  return v8;
}

uint64_t anonymous namespace::_getBoundSkeleton(_anonymous_namespace_ *this, MDLObject *a2)
{
  v2 = [(_anonymous_namespace_ *)this componentConformingToProtocol:&unk_282E4E338];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v3 skeleton];
}

uint64_t anonymous namespace::_findMeshes(void *a1, float32x4_t *a2, void *a3, uint64_t a4)
{
  v51 = *MEMORY[0x277D85DE8];
  if ([a1 transform])
  {
    v39 = *a2;
    v40 = a2[1];
    v37 = a2[3];
    v38 = a2[2];
    [objc_msgSend(a1 "transform")];
    v8 = 0;
    v45[0] = v9;
    v45[1] = v10;
    v45[2] = v11;
    v45[3] = v12;
    do
    {
      *(&v46 + v8 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(v45[v8])), v40, *&v45[v8], 1), v38, v45[v8], 2), v37, v45[v8], 3);
      ++v8;
    }

    while (v8 != 4);
  }

  else
  {
    v13 = a2[1];
    v46 = *a2;
    v47 = v13;
    v14 = a2[3];
    v48 = a2[2];
    v49 = v14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 addObject:a1];
    v15 = *(a4 + 8);
    v16 = *(a4 + 16);
    if (v15 >= v16)
    {
      v20 = (v15 - *a4) >> 6;
      v21 = v20 + 1;
      if ((v20 + 1) >> 58)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v22 = v16 - *a4;
      if (v22 >> 5 > v21)
      {
        v21 = v22 >> 5;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFC0)
      {
        v23 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<simd_float4x4>>(a4, v23);
      }

      v24 = (v20 << 6);
      v25 = v47;
      *v24 = v46;
      v24[1] = v25;
      v26 = v49;
      v24[2] = v48;
      v24[3] = v26;
      v19 = (v20 << 6) + 64;
      v27 = *(a4 + 8) - *a4;
      v28 = (v20 << 6) - v27;
      memcpy(v24 - v27, *a4, v27);
      v29 = *a4;
      *a4 = v28;
      *(a4 + 8) = v19;
      *(a4 + 16) = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      v17 = v47;
      *v15 = v46;
      v15[1] = v17;
      v18 = v49;
      v15[2] = v48;
      v15[3] = v18;
      v19 = &v15[4];
    }

    *(a4 + 8) = v19;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v30 = [a1 children];
  result = [v30 countByEnumeratingWithState:&v41 objects:v50 count:16];
  v33 = result;
  if (result)
  {
    v34 = *v42;
    do
    {
      v35 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v41 + 1) + 8 * v35);
        {
        }

        ++v35;
      }

      while (v33 != v35);
      result = [v30 countByEnumeratingWithState:&v41 objects:v50 count:16];
      v33 = result;
    }

    while (result);
  }

  return result;
}

void *std::map<MDLSkeleton *,anonymous namespace::SkelNodes>::operator[](uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *anonymous namespace::boneInverseTransformsFromMDL(_anonymous_namespace_ *this, MDLAnimationBindComponent *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  a28 = *MEMORY[0x277D85DE8];
  v29 = [(_anonymous_namespace_ *)this skeleton];
  v30 = [objc_msgSend(v29 "jointBindTransforms")];
  v31 = [(_anonymous_namespace_ *)this jointPaths];
  if (v31)
  {
    v32 = objc_opt_new();
    if (v30)
    {
      for (i = 0; i != v30; ++i)
      {
        [v32 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", i), objc_msgSend(objc_msgSend(v29, "jointPaths"), "objectAtIndexedSubscript:", i)}];
      }
    }
  }

  else
  {
    v32 = 0;
  }

  MEMORY[0x28223BE20]();
  v34 = (&v50 - 16 * v30) & 0xFFFFFFFFFFFFFFE0;
  [objc_msgSend(v29 "jointBindTransforms")];
  if (v31)
  {
    v30 = [-[_anonymous_namespace_ jointPaths](this "jointPaths")];
  }

  v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:v30];
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      v37 = j;
      if (v31)
      {
        v37 = [objc_msgSend(v32 objectForKeyedSubscript:{objc_msgSend(-[_anonymous_namespace_ jointPaths](this, "jointPaths"), "objectAtIndexedSubscript:", j)), "unsignedLongValue"}];
      }

      v38 = (v34 + (v37 << 7));
      v39 = v38[5];
      a21 = v38[4];
      a22 = v39;
      v40 = v38[7];
      a23 = v38[6];
      a24 = v40;
      v41 = v38[1];
      a17 = *v38;
      a18 = v41;
      v42 = v38[3];
      a19 = v38[2];
      a20 = v42;
      __invert_d4();
      v43 = MEMORY[0x277CCAE60];
      a17 = v45;
      a18 = v46;
      a19 = v47;
      a20 = v48;
      [v35 addObject:{objc_msgSend(v43, "valueWithSCNMatrix4:", &a17)}];
    }
  }

  if (v32)
  {
  }

  return v35;
}

void *anonymous namespace::_getRootNodeName(_anonymous_namespace_ *this, MDLPackedJointAnimation *a2)
{
  if (![-[_anonymous_namespace_ jointPaths](this "jointPaths")])
  {
    return 0;
  }

  v3 = [-[_anonymous_namespace_ jointPaths](this "jointPaths")];
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  if (![v3 length])
  {
    return 0;
  }

  if ([objc_msgSend(v4 substringToIndex:{1), "isEqualToString:", @"/"}])
  {
    v4 = [v4 substringFromIndex:1];
  }

  v5 = [v4 rangeOfString:@"/"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v4;
  }

  return [v4 substringToIndex:v5];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<simd_float4x4>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__tree<std::__value_type<MDLSkeleton *,anonymous namespace::SkelNodes>,std::__map_value_compare<MDLSkeleton *,std::__value_type<MDLSkeleton *,anonymous namespace::SkelNodes>,std::less<MDLSkeleton *>,true>,std::allocator<std::__value_type<MDLSkeleton *,anonymous namespace::SkelNodes>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

double convertUVTranformForModelIO(const simd_float4x4 *a1)
{
  v1 = 0;
  v2 = *MEMORY[0x277D860B8];
  v3 = *(MEMORY[0x277D860B8] + 16);
  v4 = a1->columns[1];
  v5 = vmulq_f32(a1->columns[0], a1->columns[0]);
  *v5.i8 = vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  v6 = vmulq_f32(v4, v4);
  *v6.i8 = vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v7 = vsqrt_f32(vadd_f32(vzip1_s32(*v5.i8, *v6.i8), vzip2_s32(*v5.i8, *v6.i8)));
  v8 = a1->columns[2];
  v9 = a1->columns[3];
  v10 = vmulq_f32(v8, v8);
  v11 = vextq_s8(v10, v10, 8uLL).u64[0];
  v11.f32[0] = sqrtf(vaddv_f32(vadd_f32(*v10.f32, v11)));
  *v10.f32 = v7;
  v10.i64[1] = __PAIR64__(1.0, v11.u32[0]);
  __asm { FMOV            V5.4S, #1.0 }

  v17 = vdivq_f32(_Q5, v10);
  v18.i64[0] = 0;
  v18.i64[1] = v17.u32[2];
  v19 = *(MEMORY[0x277D860B8] + 32);
  v20 = *(MEMORY[0x277D860B8] + 48);
  v21 = vdivq_f32(a1->columns[0], vdupq_lane_s32(v7, 0));
  v22 = vdivq_f32(v4, vdupq_lane_s32(v7, 1));
  v23 = vdivq_f32(v8, vdupq_lane_s32(v11, 0));
  v24 = vzip1q_s32(v21, v23);
  v25 = vzip2q_s32(v21, v23);
  v26 = vzip1q_s32(v22, v20);
  v27 = vzip2q_s32(v22, v20);
  v28 = vzip1q_s32(v24, v26);
  v29 = vzip1q_s32(v25, v27);
  v41 = v8;
  v42 = v9;
  do
  {
    *(&v43 + v1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(&v39 + v1))), v3, *(&v39 + v1), 1), v19, *(&v39 + v1), 2), xmmword_21C27F7F0, *(&v39 + v1), 3);
    v1 += 16;
  }

  while (v1 != 64);
  v30 = 0;
  v32.i64[0] = 0;
  v32.i32[2] = 0;
  v31.i32[0] = 0;
  v31.i64[1] = 0;
  v31.i32[1] = v17.i32[1];
  v32.i32[3] = v17.i32[3];
  v33 = vzip2q_s32(v24, v26);
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17.u32[0], COERCE_FLOAT(*(&v39 + v30))), v31, *(&v39 + v30), 1), v18, *(&v39 + v30), 2), v32, *(&v39 + v30), 3);
    v30 += 16;
  }

  while (v30 != 64);
  v34 = 0;
  v35 = vzip2q_s32(v25, v27);
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*(&v39 + v34))), v33, *(&v39 + v34), 1), v29, *(&v39 + v34), 2), v35, *(&v39 + v34), 3);
    v34 += 16;
  }

  while (v34 != 64);
  v36 = 0;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(&v39 + v36))), v3, *(&v39 + v36), 1), v19, *(&v39 + v36), 2), xmmword_21C27F800, *(&v39 + v36), 3);
    v36 += 16;
  }

  while (v36 != 64);
  v37 = vmulq_n_f32(v21, *v7.i32);
  v37.i32[1] = vnegq_f32(v37).i32[1];
  return *v37.i64;
}

void *std::__tree<std::__value_type<unsigned long long,float>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,float>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,float>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t *std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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

void std::vector<float>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<double>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
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

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *std::vector<unsigned short>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<unsigned int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(this, __n);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

C3D::RenderPass *C3D::SSAORaytracePass::SSAORaytracePass(C3D::RenderPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  result = C3D::RenderPass::RenderPass(a1, a2, a3);
  *result = &unk_282DC2680;
  *(result + 31) = a4;
  return result;
}

float32x4_t C3D::SSAORaytracePass::setup(C3D::SSAORaytracePass *this)
{
  C3D::Pass::setInputCount(this, 2u);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "SSAO-DepthNormal";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1u) + 8) = "SSAO-MinMaxOffset";
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 65) = 0;
  C3D::Pass::parentColorDesc(this, &v10);
  *(v2 + 16) = v10;
  *(v2 + 32) = v11;
  *(v2 + 28) = 115;
  v3 = C3D::Pass::descriptor(**(this + 31));
  *(v2 + 16) = *(C3D::PassDescriptor::outputAtIndex(v3, 0) + 16) / *(*(this + 31) + 12);
  v4 = C3D::Pass::descriptor(**(this + 31));
  *(v2 + 18) = *(C3D::PassDescriptor::outputAtIndex(v4, 0) + 18) / *(*(this + 31) + 12);
  *(v2 + 66) &= 0xFFFCu;
  if (*(v2 + 24) == 5)
  {
    *(this + 19) = 6;
  }

  else if (C3DEngineContextGetEyeCount(*(this + 2)) >= 2)
  {
    EyeCount = C3DEngineContextGetEyeCount(*(this + 2));
    *(this + 19) = EyeCount;
    *(this + 121) = 1;
    if (EyeCount)
    {
      v7 = 0;
      do
      {
        ViewportAtIndex = C3DEngineContextGetViewportAtIndex(*(this + 2), v7);
        *v9.i32 = *(*(this + 31) + 12);
        result = vdivq_f32(ViewportAtIndex, vdupq_lane_s32(v9, 0));
        *(this + v7++ + 8) = result;
      }

      while (v7 < *(this + 19));
    }
  }

  return result;
}

uint64_t C3D::SSAORaytracePass::compile(C3D::SSAORaytracePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = *(*(this + 31) + 16) | (2 * *(*(this + 31) + 17)) | (4 * *(*(this + 31) + 12)) | (*(*(this + 31) + 8) << 6);
  v4 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47));
  *(this + 30) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void C3D::SSAORaytracePass::execute(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  PointOfView = C3DEngineContextGetPointOfView(a1[2]);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView);
    if (Camera)
    {
      v7 = Camera;
      ViewportAtIndex = C3DEngineContextGetViewportAtIndex(a1[2], *(a2 + 16));
      v30 = vmulq_n_f32(ViewportAtIndex, C3DEngineContextGetSuperSamplingFactor(a1[2]));
      v8 = fmax(C3DCameraGetScreenSpaceAmbientOcclusionRadius(v7) * 1000.0, 0.001);
      v33 = v8;
      v34 = v8 * v8;
      v9 = fmax(C3DCameraGetScreenSpaceAmbientOcclusionIntensity(v7), 0.0);
      v10 = v9 / powf(v8, 6.0);
      v36 = v10;
      v37 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionDepthThreshold(v7), 0.0);
      v38 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionNormalThreshold(v7), 0.0);
      v35 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionBias(v7), 0.0);
      v32 = 1140457472;
      v11 = a1[31];
      *v12.i32 = *(v11 + 12);
      v13 = vdupq_lane_s32(v12, 0);
      v28 = vextq_s8(v30, v30, 8uLL).u64[0];
      *v14.f32 = vdiv_f32(v28, *v13.f32);
      v14.i64[1] = v14.i64[0];
      v13.i64[0] = vdivq_f32(v30, v13).u64[0];
      v13.i64[1] = vaddq_f32(vdupq_lane_s64(*&v30, 0), v14).i64[1];
      v31[1] = v13;
      v15 = C3D::DrawNodesPass::getCullingContext(*v11) + (*(a2 + 16) << 6);
      LODWORD(v16) = *(v15 + 1360);
      *v17.f32 = vdiv_f32(COERCE_FLOAT32X2_T(-2.00000048), v28);
      __asm { FMOV            V2.2S, #-1.0 }

      *&v17.i64[1] = -_D2;
      HIDWORD(v16) = *(v15 + 1380);
      v31[0] = vdivq_f32(v17, vdupq_lane_s64(v16, 0));
      v23 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a1[30] + 16) :"state" detail:? :?NSRetainFct];
      if (*(v4 + 3376) != v23)
      {
        *(v4 + 3376) = v23;
        [*(v4 + 3392) setRenderPipelineState:v23];
      }

      SCNMTLRenderCommandEncoder::setFragmentBytes(v4, v31, 0x40uLL, 0);
      v24 = C3D::Pass::inputTextureAtIndex(a1, 0);
      SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v24, 0);
      v25 = C3D::Pass::inputTextureAtIndex(a1, 1u);
      SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v25, 1uLL);
      SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v4);
    }

    else if ((C3D::SSAORaytracePass::execute(C3D::RenderArgs const&)::done & 1) == 0)
    {
      C3D::SSAORaytracePass::execute(C3D::RenderArgs const&)::done = 1;
      v27 = scn_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        C3D::SSAORaytracePass::execute(v27);
      }
    }
  }

  else if ((C3D::SSAORaytracePass::execute(C3D::RenderArgs const&)::done & 1) == 0)
  {
    C3D::SSAORaytracePass::execute(C3D::RenderArgs const&)::done = 1;
    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      C3D::SSAORaytracePass::execute(v26);
    }
  }
}

void C3D::SSAORaytracePassResource::~SSAORaytracePassResource(C3D::SSAORaytracePassResource *this)
{
  *this = &unk_282DC26F0;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC26F0;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t C3DMeshElementGetTypeID()
{
  if (C3DMeshElementGetTypeID_onceToken != -1)
  {
    C3DMeshElementGetTypeID_cold_1();
  }

  return C3DMeshElementGetTypeID_typeID;
}

double __C3DMeshElementGetTypeID_block_invoke()
{
  C3DMeshElementGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DMeshElementContextClassSerializable;
  unk_281740C88 = kC3DC3DMeshElementContextClassSerializable;
  unk_281740C98 = *off_282DC2750;
  qword_281740C40 = _C3DMeshElementCopyInstanceVariables;
  return result;
}

uint64_t C3DMeshElementCreate()
{
  if (C3DMeshElementGetTypeID_onceToken != -1)
  {
    C3DMeshElementGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DMeshElementGetTypeID_typeID, 208);
  if (!Instance)
  {
    v1 = scn_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  *(Instance + 88) = 0;
  *(Instance + 96) = 0;
  *(Instance + 128) = 0x10000;
  *(Instance + 112) = 0;
  *(Instance + 120) = 0;
  *(Instance + 68) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(Instance + 144) = _D0;
  *(Instance + 152) = 1065353216;
  return Instance;
}

uint64_t C3DMeshElementGetEmptyElement()
{
  if (C3DMeshElementGetEmptyElement_onceToken != -1)
  {
    C3DMeshElementGetEmptyElement_cold_1();
  }

  return emptyMeshElement;
}

uint64_t __C3DMeshElementGetEmptyElement_block_invoke()
{
  result = C3DMeshElementCreate();
  emptyMeshElement = result;
  return result;
}

void C3DMeshElementInitIndexed(uint64_t a1, char a2, int a3, char a4, char a5, const void *a6, char a7)
{
  C3DMeshElementSetType(a1, a2);
  *(a1 + 130) = a4;
  *(a1 + 131) = a5;
  *(a1 + 104) = a3;
  __SetIndexes(a1, a6, a7);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
}

void C3DMeshElementSetType(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 88) = a2;
}

CFTypeRef C3DMeshElementInitIndexedWithMTLBuffer(uint64_t a1, char a2, int a3, char a4, char a5, const void *a6, char a7)
{
  C3DMeshElementSetType(a1, a2);
  *(a1 + 130) = a4;
  *(a1 + 131) = a5;
  *(a1 + 104) = a3;
  __SetIndexes(a1, 0, a7);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  result = CFRetain(a6);
  *(a1 + 136) = result;
  return result;
}

uint64_t C3DMeshElementCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DMeshElementCreate();
  __C3DMeshElementCopy(a1, v10, 0);
  return v10;
}

void __C3DMeshElementCopy(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  v22 = *(a1 + 96);
  if (a3 && v22)
  {
    Copy = CFDataCreateCopy(0, v22);
    v24 = *(a2 + 96);
    if (v24 != Copy)
    {
      if (v24)
      {
        CFRelease(v24);
        *(a2 + 96) = 0;
      }

      if (Copy)
      {
        v25 = CFRetain(Copy);
      }

      else
      {
        v25 = 0;
      }

      *(a2 + 96) = v25;
    }

    CFRelease(Copy);
  }

  else
  {
    v26 = *(a2 + 96);
    if (v26 != v22)
    {
      if (v26)
      {
        CFRelease(v26);
        *(a2 + 96) = 0;
        v22 = *(a1 + 96);
      }

      if (v22)
      {
        v27 = CFRetain(v22);
      }

      else
      {
        v27 = 0;
      }

      *(a2 + 96) = v27;
    }
  }

  *(a2 + 104) = *(a1 + 104);
  free(*(a2 + 112));
  *(a2 + 112) = 0;
  if (*(a1 + 112))
  {
    v28 = 4 * *(a1 + 104);
    v29 = malloc_type_malloc(v28, 0xF801574uLL);
    *(a2 + 112) = v29;
    memcpy(v29, *(a1 + 112), v28);
  }

  free(*(a2 + 120));
  *(a2 + 120) = 0;
  if (*(a1 + 120))
  {
    v30 = 2 * *(a1 + 128);
    v31 = malloc_type_malloc(v30, 0xB9BB065DuLL);
    *(a2 + 120) = v31;
    memcpy(v31, *(a1 + 120), v30);
  }

  *(a2 + 128) = *(a1 + 128);
  C3DEntityCopyTo(a1, a2);
}

uint64_t C3DMeshElementCreateDeepCopy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DMeshElementCreate();
  __C3DMeshElementCopy(a1, v10, 1);
  return v10;
}

CFTypeRef C3DMeshElementSetPrimitiveNormals(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 168);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 168) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 168) = result;
  }

  return result;
}

uint64_t C3DMeshElementGetPrimitiveNormals(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 168);
}

uint64_t C3DMeshElementCreateByMergingElements(CFArrayRef theArray)
{
  if (!theArray)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreateByMergingElements_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 0;
  }

  v11 = Count;
  if (Count < 1)
  {
    ValueAtIndex = 0;
    v14 = 1;
  }

  else
  {
    v12 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
      if (C3DMeshElementGetType(ValueAtIndex) < 6)
      {
        break;
      }

      if (v11 == ++v12)
      {
        ValueAtIndex = 0;
        LODWORD(v12) = 0;
        break;
      }
    }

    v14 = (v12 + 1);
  }

  DoubleSided = C3DMeshElementGetDoubleSided(ValueAtIndex);
  IndexCount = C3DMeshElementGetIndexCount(ValueAtIndex);
  Type = C3DMeshElementGetType(ValueAtIndex);
  v18 = Type;
  v19 = ValueAtIndex[80];
  if (Type == 1)
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      C3DMeshElementCreateByMergingElements_cold_2();
    }
  }

  while (1)
  {
    if (v11 <= v14)
    {
      v23 = C3DMeshElementCreate();
      PrimitiveNormals = C3DMeshElementGetPrimitiveNormals(ValueAtIndex);
      C3DMeshElementSetPrimitiveNormals(v23, PrimitiveNormals);
      C3DMeshElementSetDoubleSided(v23, DoubleSided);
      C3DMeshElementSetType(v23, v18);
      Mutable = CFDataCreateMutable(0, IndexCount * v19);
      CFDataSetLength(Mutable, IndexCount * v19);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      if (v11 >= 1)
      {
        v27 = MutableBytePtr;
        for (i = 0; i != v11; ++i)
        {
          v29 = CFArrayGetValueAtIndex(theArray, i);
          if (C3DMeshElementGetType(v29) <= 5)
          {
            Length = CFDataGetLength(v29[12]);
            BytePtr = CFDataGetBytePtr(v29[12]);
            memcpy(v27, BytePtr, Length);
            v27 += Length;
          }
        }
      }

      IndexCountPerPrimitive = C3DMeshElementGetIndexCountPerPrimitive(v23);
      if (IndexCountPerPrimitive <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = IndexCountPerPrimitive;
      }

      *(v23 + 104) = IndexCount / v33;
      __SetIndexes(v23, Mutable, v19);
      free(*(v23 + 120));
      *(v23 + 120) = 0;
      *(v23 + 128) = 0;
      CFRelease(Mutable);
      return v23;
    }

    v21 = CFArrayGetValueAtIndex(theArray, v14);
    if (C3DMeshElementGetType(v21) <= 5)
    {
      break;
    }

LABEL_18:
    ++v14;
  }

  v22 = C3DMeshElementGetIndexCount(v21);
  if (v19 == v21[80])
  {
    IndexCount += v22;
    goto LABEL_18;
  }

  v34 = scn_default_log();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    C3DMeshElementCreateByMergingElements_cold_3();
  }

  return 0;
}

uint64_t C3DMeshElementGetType(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

BOOL C3DMeshElementGetDoubleSided(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 81) != 0;
}

uint64_t C3DMeshElementGetIndexCount(uint64_t a1)
{
  Type = C3DMeshElementGetType(a1);
  v3 = *(a1 + 104);
  if (Type == 4)
  {
    v4 = *(a1 + 80);
    Length = CFDataGetLength(*(a1 + 96));
    BytePtr = CFDataGetBytePtr(*(a1 + 96));
    if (!v3)
    {
      return 0;
    }

    v7 = BytePtr;
    v8 = 0;
    for (i = 0; i != v3; ++i)
    {
      v8 += __readIndexInBuffer(v7, i, v4, Length);
    }

    return v8;
  }

  else
  {
    v10 = *(a1 + 104);

    return C3DMeshElementGetIndexCountWithTypeAndPrimitiveCount(Type, v10);
  }
}

void C3DMeshElementSetDoubleSided(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 81) = a2;
}

uint64_t C3DMeshElementGetIndexCountPerPrimitive(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 88);
  if (v1 < 4)
  {
    return qword_21C27F888[v1];
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "C3DMeshElementGetIndexCountPerPrimitive";
    _os_log_impl(&dword_21BEF7000, v3, OS_LOG_TYPE_DEFAULT, "Warning: %s does not support non-renderable topologies.", &v4, 0xCu);
  }

  return 0;
}

void C3DMeshElementSetPrimitives(uint64_t a1, int a2, CFTypeRef cf, char a4)
{
  *(a1 + 104) = a2;
  __SetIndexes(a1, cf, a4);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
}

void __SetIndexes(uint64_t a1, CFTypeRef cf, char a3)
{
  *(a1 + 80) = a3;
  v4 = *(a1 + 96);
  if (v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 96) = 0;
    }

    if (cf)
    {
      v4 = CFRetain(cf);
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 96) = v4;
  }

  if (*(a1 + 112))
  {
    free(*(a1 + 112));
    *(a1 + 112) = 0;
    v4 = *(a1 + 96);
  }

  if (v4)
  {
    Length = CFDataGetLength(v4);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    if (Length < v7 + C3DMeshElementGetIndexCount(a1) * v8)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __SetIndexes_cold_1();
      }

      v10 = *(a1 + 96);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 96) = 0;
      }
    }
  }
}

uint64_t C3DMeshElementGetIndexes(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 80);
  }

  return *(a1 + 96);
}

uint64_t C3DMeshElementGetPrimitiveRange(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    return **(a1 + 120);
  }

  else
  {
    return -1;
  }
}

void *C3DMeshElementSetPrimitiveRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  result = *(a1 + 120);
  if (!v6)
  {
    result = malloc_type_realloc(result, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 120) = result;
  }

  *result = a2;
  result[1] = a3;
  *(a1 + 128) = 1;
  return result;
}

uint64_t C3DMeshElementGetPrimitiveRanges(uint64_t a1, _WORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 128);
  }

  return *(a1 + 120);
}

void C3DMeshElementSetPrimitiveRangesNoCopy(uint64_t a1, uint64_t a2, __int16 a3)
{
  free(*(a1 + 120));
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
}

uint64_t C3DMeshElementEnumeratePrimitiveRanges(uint64_t result, uint64_t a2)
{
  if (*(result + 120))
  {
    v2 = result;
    if (*(result + 128))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        result = (*(a2 + 16))(a2, *(*(v2 + 120) + v4), *(*(v2 + 120) + v4 + 8));
        ++v5;
        v4 += 16;
      }

      while (v5 < *(v2 + 128));
    }
  }

  return result;
}

uint64_t C3DMeshElementGetPrimitiveCountByEvaluatingPrimitiveRanges(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (!v1)
  {
    return *(a1 + 104);
  }

  v2 = *(a1 + 128);
  if (!*(a1 + 128))
  {
    return 0;
  }

  result = 0;
  v4 = (v1 + 8);
  do
  {
    v5 = *v4;
    v4 += 2;
    result += v5;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t C3DMeshElementEnumeratePrimitiveIndicesByEvaluatingPrimitiveRanges(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 120))
  {
    v4 = *(result + 128);
    if (*(result + 128))
    {
      v5 = 0;
      do
      {
        v6 = (*(v3 + 120) + 16 * v5);
        v7 = *v6;
        v8 = *(v6 + 1);
        if (v7 < v8 + v7)
        {
          do
          {
            result = (*(a2 + 16))(a2, v7);
            v7 = (v7 + 1);
            LODWORD(v8) = v8 - 1;
          }

          while (v8);
          v4 = *(v3 + 128);
        }

        ++v5;
      }

      while (v5 < v4);
    }
  }

  else if (*(result + 104))
  {
    v9 = 0;
    do
    {
      result = (*(a2 + 16))(a2, v9);
      v9 = (v9 + 1);
    }

    while (v9 < *(v3 + 104));
  }

  return result;
}

uint64_t C3DMeshElementGetContent@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *(a1 + 130);
  if ((a2 & 0x8000000000000000) != 0 || v6 <= a2)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementGetContent_cold_1(v6, v3, v7);
    }
  }

  v8 = *(a1 + 131);
  if ((v8 & 1) == 0)
  {
    v3 *= C3DMeshElementGetIndexCount(a1);
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    BytePtr = CFDataGetBytePtr(v9);
    v11 = *(a1 + 96);
    if (v11)
    {
      Length = CFDataGetLength(v11);
      goto LABEL_12;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_12:
  result = C3DMeshElementGetType(a1);
  if (BytePtr)
  {
    v14 = result == 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 104);
  v16 = *(a1 + 80);
  v17 = (v15 * v16);
  if (!v14)
  {
    v17 = 0;
  }

  *a3 = &BytePtr[v17];
  *(a3 + 8) = Length - v17;
  if (v8)
  {
    v18 = v6;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(a1 + 120);
  *(a3 + 16) = 0;
  *(a3 + 24) = v19;
  *(a3 + 16) = v15;
  v20 = *(a1 + 128);
  if (result == 4)
  {
    v21 = BytePtr;
  }

  else
  {
    v21 = 0;
  }

  *(a3 + 32) = 0;
  *(a3 + 40) = v21;
  *(a3 + 32) = v20;
  *(a3 + 34) = *(a1 + 88);
  *(a3 + 35) = v16;
  *(a3 + 48) = v3;
  *(a3 + 56) = v18;
  return result;
}

uint64_t C3DMeshElementGetVertexCountForPrimitiveAtIndex(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 88) == 4)
  {
    Length = CFDataGetLength(*(a1 + 96));
    BytePtr = CFDataGetBytePtr(*(a1 + 96));
    return __readIndexInBuffer(BytePtr, a2, *(a1 + 80), Length);
  }

  else
  {

    return C3DMeshElementGetIndexCountPerPrimitive(a1);
  }
}

uint64_t __readIndexInBuffer(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a2 + 1) * a3 <= a4)
  {
    switch(a3)
    {
      case 4uLL:
        return *(a1 + 4 * a2);
      case 2uLL:
        return *(a1 + 2 * a2);
      case 1uLL:
        return *(a1 + a2);
      default:
        v9 = scn_default_log();
        result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
        if (result)
        {
          __readIndexInBuffer_cold_1(a3, v9);
          return 0;
        }

        break;
    }
  }

  else
  {
    v7 = scn_default_log();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10[0] = 67109376;
      v10[1] = a2;
      v11 = 2048;
      v12 = a4 / a3;
      _os_log_error_impl(&dword_21BEF7000, v7, OS_LOG_TYPE_ERROR, "Error: __readIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
      return 0;
    }
  }

  return result;
}

uint64_t C3DMeshElementGetIndexCountWithTypeAndPrimitiveCount(int a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      a2 *= 3;
      return a2;
    }

    if (a1 == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      C3DMeshElementGetIndexCountWithTypeAndPrimitiveCount_cold_1();
    }

    return 0;
  }

  if (a1 == 2)
  {
    a2 *= 2;
    return a2;
  }

  if (a1 != 3)
  {
    if (a1 == 5)
    {
LABEL_5:
      a2 += 2;
      return a2;
    }

    goto LABEL_8;
  }

  return a2;
}

const UInt8 *C3DMeshElementGetFastIndexLookupInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (*(a1 + 88) == 4)
  {
    _C3DMeshElementComputePolygonOffsetsIfNeeded(a1);
    *a2 = *(a1 + 112);
    *(a2 + 8) = *(a1 + 104);
    v12 = 1;
  }

  else
  {
    IndexCountPerPrimitive = C3DMeshElementGetIndexCountPerPrimitive(a1);
    v12 = 0;
    *a2 = IndexCountPerPrimitive;
  }

  *(a2 + 37) = *(a1 + 130);
  *(a2 + 38) = v12 | (2 * *(a1 + 131));
  *(a2 + 32) = C3DMeshElementGetIndexCount(a1);
  v14 = *(a1 + 96);
  if (v14)
  {
    v15 = *(a1 + 80);
    Length = CFDataGetLength(*(a1 + 96));
    result = CFDataGetBytePtr(v14);
  }

  else
  {
    v15 = 0;
    Length = 0;
    result = 0;
  }

  *(a2 + 36) = v15;
  *(a2 + 16) = result;
  *(a2 + 24) = Length;
  return result;
}

uint64_t _C3DMeshElementComputePolygonOffsetsIfNeeded(uint64_t result)
{
  if (!*(result + 112))
  {
    v1 = result;
    if (*(result + 88) != 4)
    {
      v2 = scn_default_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        _C3DMeshElementComputePolygonOffsetsIfNeeded_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }

    v10 = *(v1 + 80);
    Length = CFDataGetLength(*(v1 + 96));
    result = CFDataGetBytePtr(*(v1 + 96));
    if (result)
    {
      v12 = result;
      v13 = *(v1 + 104);
      result = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
      *(v1 + 112) = result;
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          result = __readIndexInBuffer(v12, v14, v10, Length);
          v15 += result;
          *(*(v1 + 112) + 4 * v14++) = v15;
        }

        while (v13 != v14);
      }
    }
  }

  return result;
}

uint64_t C3DMeshElementGetIndexUsingFastIndexLookupInfo(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 38))
  {
    v4 = 0;
    v5 = *(a1 + 8);
    if (a2 >= 1 && *a1)
    {
      v4 = *(*a1 + 4 * a2 - 4);
    }

    if ((*(a1 + 38) & 2) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v4 = *a1 * a2;
    if ((*(a1 + 38) & 2) == 0)
    {
LABEL_6:
      a4 *= *(a1 + 32);
      v6 = 1;
      goto LABEL_9;
    }
  }

  v6 = *(a1 + 37);
LABEL_9:
  if (*(a1 + 16))
  {
    return __readIndexInBuffer(*(a1 + 16), a4 + v5 + v6 * (v4 + a3), *(a1 + 36), *(a1 + 24));
  }

  else
  {
    return (a4 + v5 + v6 * (v4 + a3));
  }
}

uint64_t C3DMeshElementGetIndex(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (*(a1 + 88) == 4)
  {
    v16 = *(a1 + 104);
    _C3DMeshElementComputePolygonOffsetsIfNeeded(a1);
    v17 = 0;
    if (a2 >= 1)
    {
      v18 = *(a1 + 112);
      if (v18)
      {
        v17 = *(v18 + 4 * a2 - 4);
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = C3DMeshElementGetIndexCountPerPrimitive(a1) * a2;
  }

  if (*(a1 + 131))
  {
    v19 = *(a1 + 130);
  }

  else
  {
    a4 *= C3DMeshElementGetIndexCount(a1);
    v19 = 1;
  }

  v20 = a4 + v16 + v19 * (a3 + v17);
  v21 = *(a1 + 96);
  if (!v21)
  {
    return v20;
  }

  v22 = *(a1 + 80);
  Length = CFDataGetLength(v21);
  BytePtr = CFDataGetBytePtr(v21);
  return __readIndexInBuffer(BytePtr, v20, v22, Length);
}

uint64_t C3DMeshElementGetChannelsDefineSameTopology(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  IndexCount = C3DMeshElementGetIndexCount(a1);
  v15 = *(a1 + 80);
  Length = CFDataGetLength(*(a1 + 96));
  BytePtr = CFDataGetBytePtr(*(a1 + 96));
  v18 = BytePtr;
  if (*(a1 + 88) == 4)
  {
    v19 = *(a1 + 104) * v15;
    v20 = Length > v19;
    Length -= v19;
    if (!v20)
    {
      C3DMeshElementGetChannelsDefineSameTopology_cold_2();
    }

    v18 = &BytePtr[v19];
  }

  if (*(a1 + 131) == 1)
  {
    if (IndexCount)
    {
      v21 = 0;
      while (1)
      {
        IndexInBuffer = __readIndexInBuffer(v18, a2 + v21 * *(a1 + 130), v15, Length);
        if (IndexInBuffer != __readIndexInBuffer(v18, a3 + v21 * *(a1 + 130), v15, Length))
        {
          break;
        }

        if (IndexCount == ++v21)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else if (memcmp((v18 + v15 * (IndexCount * a2)), (v18 + v15 * (IndexCount * a3)), IndexCount * v15))
  {
    return 0;
  }

  return 1;
}

uint64_t C3DMeshElementGetAllChannelsDefineSameTopology(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 130);
  if (v10 < 2)
  {
    return 1;
  }

  for (i = 1; i < v10; ++i)
  {
    result = C3DMeshElementGetChannelsDefineSameTopology(a1, 0, i);
    if (!result)
    {
      break;
    }
  }

  return result;
}

void C3DMeshElementSetSharedMeshElement(uint64_t a1, char *cf, int a3, int a4)
{
  v8 = *(a1 + 72);
  if (v8 != cf)
  {
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      v9 = CFRetain(cf);
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 72) = v9;
  }

  v10 = cf[80];
  v11 = *(cf + 12);
  *(a1 + 104) = a4;
  *(a1 + 64) = a3;

  __SetIndexes(a1, v11, v10);
}

uint64_t C3DMeshElementGetSharedMeshElement(uint64_t result)
{
  if (*(result + 72))
  {
    return *(result + 72);
  }

  return result;
}

uint64_t C3DMeshElementGetSharedIndexBufferOffset(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

void C3DMeshElementSetInstanceCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 68) = a2;
}

uint64_t C3DMeshElementGetInstanceCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 68);
}

uint64_t C3DMeshElementCreateVolatile()
{
  result = C3DMeshElementCreate();
  *(result + 82) = 1;
  return result;
}

BOOL C3DMeshElementIsVolatile(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 82) != 0;
}

void C3DMeshElementSetVolatileDataPtr(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 160) = a2;
}

uint64_t C3DMeshElementGetVolatileDataPtr(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 160);
}

uint64_t C3DMeshElementGetBytesPerIndex(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

void C3DIndicesContentEnumeratePrimitives(unsigned __int8 *a1, uint64_t a2, __n128 a3)
{
  v3.n128_u64[0] = MEMORY[0x277D85DD0];
  a3.n128_u64[0] = 0x40000000;
  v3.n128_u64[1] = 0x40000000;
  v4 = __C3DIndicesContentEnumeratePrimitives_block_invoke;
  v5 = &unk_2782FB3C0;
  v6 = a2;
  C3DIndicesContentArrayEnumeratePrimitives(a1, 1, &v3, a3);
}

void C3DIndicesContentArrayEnumeratePrimitives(unsigned __int8 *a1, uint64_t a2, __n128 *a3, __n128 a4)
{
  v236 = a3;
  v4 = a2;
  v251 = *MEMORY[0x277D85DE8];
  v5 = a1[34];
  v238 = *(a1 + 4);
  v6 = a1[35];
  v237 = a1;
  v7 = *(a1 + 5);
  v240 = 0;
  v232 = a2;
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      if (a2 == 1)
      {
        v8 = *v237;
        v9 = *(v237 + 1);
        v10 = *(v237 + 6);
        v11 = *(v237 + 7);
        if (v6 == 1)
        {
          if (v238)
          {
            v197 = 0;
            v198 = 1;
            a4.n128_u64[0] = 67109376;
            v239 = a4;
            do
            {
              v199 = v10 + v11 * (v198 - 1);
              v200 = v10 + v11 * v198;
              if (v200 <= v199)
              {
                v201 = v10 + v11 * (v198 - 1);
              }

              else
              {
                v201 = v10 + v11 * v198;
              }

              if (v9 >= (v201 + 1))
              {
                *v241 = v8->n128_u8[v199];
                v203 = v8->n128_u8[v200];
              }

              else
              {
                v202 = scn_default_log();
                if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
                {
                  *buf = v239.n128_u32[0];
                  *&buf[4] = v201;
                  *&buf[8] = 2048;
                  *&buf[10] = v9;
                  _os_log_error_impl(&dword_21BEF7000, v202, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v203 = 0;
                *v241 = 0;
              }

              *&v241[4] = v203;
              (v236[1].n128_u64[0])(v236, v197, v241, 2, &v240);
              if (v240)
              {
                break;
              }

              ++v197;
              v198 += 2;
            }

            while (v238 != v197);
          }
        }

        else if (v6 == 2)
        {
          if (v238)
          {
            v172 = 0;
            v173 = 1;
            a4.n128_u64[0] = 67109376;
            v239 = a4;
            do
            {
              v174 = v10 + v11 * (v173 - 1);
              v175 = v10 + v11 * v173;
              if (v175 <= v174)
              {
                v176 = v10 + v11 * (v173 - 1);
              }

              else
              {
                v176 = v10 + v11 * v173;
              }

              if (v9 >= (2 * v176 + 2))
              {
                *v241 = v8->n128_u16[v174];
                v178 = v8->n128_u16[v175];
              }

              else
              {
                v177 = scn_default_log();
                if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
                {
                  *buf = v239.n128_u32[0];
                  *&buf[4] = v176;
                  *&buf[8] = 2048;
                  *&buf[10] = v9 >> 1;
                  _os_log_error_impl(&dword_21BEF7000, v177, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v178 = 0;
                *v241 = 0;
              }

              *&v241[4] = v178;
              (v236[1].n128_u64[0])(v236, v172, v241, 2, &v240);
              if (v240)
              {
                break;
              }

              ++v172;
              v173 += 2;
            }

            while (v238 != v172);
          }
        }

        else if (v6 == 4 && v238)
        {
          v12 = 0;
          v13 = 1;
          a4.n128_u64[0] = 67109376;
          v239 = a4;
          do
          {
            v14 = v10 + v11 * (v13 - 1);
            v15 = v10 + v11 * v13;
            if (v15 <= v14)
            {
              v16 = v10 + v11 * (v13 - 1);
            }

            else
            {
              v16 = v10 + v11 * v13;
            }

            if (v9 >= (4 * v16 + 4))
            {
              *v241 = v8->n128_u32[v14];
              v18 = v8->n128_i32[v15];
            }

            else
            {
              v17 = scn_default_log();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = v239.n128_u32[0];
                *&buf[4] = v16;
                *&buf[8] = 2048;
                *&buf[10] = v9 >> 2;
                _os_log_error_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
              }

              v18 = 0;
              *v241 = 0;
            }

            *&v241[4] = v18;
            (v236[1].n128_u64[0])(v236, v12, v241, 2, &v240);
            if (v240)
            {
              break;
            }

            ++v12;
            v13 += 2;
          }

          while (v238 != v12);
        }
      }

      else
      {
        *&v234 = &v222;
        MEMORY[0x28223BE20]();
        v239.n128_u64[0] = v222.n128_u64 - v128;
        if (v6 == 1)
        {
          if (v238)
          {
            v204 = 0;
            v235 = v236 + 1;
            v205 = 4 * v126;
            v233.n128_u64[0] = (v237 + 35);
            *&v127 = 67109376;
            v231 = v127;
            do
            {
              v237 = v204;
              if (v4)
              {
                v206 = 0;
                v207 = 2 * v237;
                v208 = (2 * v237) | 1;
                v209 = v233.n128_u64[0];
                v210 = v239.n128_u64[0];
                do
                {
                  v211 = *(v209 - 27);
                  v212 = *v209;
                  v213 = *(v209 + 13);
                  v214 = *(v209 + 21);
                  v215 = v213 + v214 * v207;
                  v216 = v213 + v214 * v208;
                  if (v216 <= v215)
                  {
                    v217 = v215;
                  }

                  else
                  {
                    v217 = v216;
                  }

                  if (v211 >= v212 + v212 * v217)
                  {
                    v220 = *(v209 - 35);
                    *v210 = *(v220 + v215);
                    v219 = *(v220 + v216);
                  }

                  else
                  {
                    v218 = scn_default_log();
                    if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v231;
                      *&buf[4] = v217;
                      *&buf[8] = 2048;
                      *&buf[10] = v211 / v212;
                      _os_log_error_impl(&dword_21BEF7000, v218, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v219 = 0;
                  }

                  v209 += 64;
                  v210[v205 / 4] = v219;
                  ++v210;
                  v206 += 4;
                }

                while (v205 != v206);
              }

              v221 = v237;
              (v236[1].n128_u64[0])(v236, v237, v239.n128_u64[0], 2, &v240);
              if (v240)
              {
                break;
              }

              v204 = v221 + 1;
              v4 = v232;
            }

            while (v204 != v238);
          }
        }

        else if (v6 == 2)
        {
          if (v238)
          {
            v179 = 0;
            v235 = v236 + 1;
            v180 = 4 * v126;
            v233.n128_u64[0] = (v237 + 35);
            *&v127 = 67109376;
            v231 = v127;
            do
            {
              v237 = v179;
              if (v4)
              {
                v181 = 0;
                v182 = 2 * v237;
                v183 = (2 * v237) | 1;
                v184 = v233.n128_u64[0];
                v185 = v239.n128_u64[0];
                do
                {
                  v186 = *(v184 - 27);
                  v187 = *v184;
                  v188 = *(v184 + 13);
                  v189 = *(v184 + 21);
                  v190 = v188 + v189 * v182;
                  v191 = v188 + v189 * v183;
                  if (v191 <= v190)
                  {
                    v192 = v190;
                  }

                  else
                  {
                    v192 = v191;
                  }

                  if (v186 >= v187 + v187 * v192)
                  {
                    v195 = *(v184 - 35);
                    *v185 = *(v195 + 2 * v190);
                    v194 = *(v195 + 2 * v191);
                  }

                  else
                  {
                    v193 = scn_default_log();
                    if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v231;
                      *&buf[4] = v192;
                      *&buf[8] = 2048;
                      *&buf[10] = v186 / v187;
                      _os_log_error_impl(&dword_21BEF7000, v193, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v194 = 0;
                  }

                  v184 += 64;
                  v185[v180 / 4] = v194;
                  ++v185;
                  v181 += 4;
                }

                while (v180 != v181);
              }

              v196 = v237;
              (v236[1].n128_u64[0])(v236, v237, v239.n128_u64[0], 2, &v240);
              if (v240)
              {
                break;
              }

              v179 = v196 + 1;
              v4 = v232;
            }

            while (v179 != v238);
          }
        }

        else if (v6 == 4 && v238)
        {
          v129 = 0;
          v235 = v236 + 1;
          v130 = 4 * v126;
          v233.n128_u64[0] = (v237 + 35);
          *&v127 = 67109376;
          v231 = v127;
          do
          {
            v237 = v129;
            if (v4)
            {
              v131 = 0;
              v132 = 2 * v237;
              v133 = (2 * v237) | 1;
              v134 = v233.n128_u64[0];
              v135 = v239.n128_u64[0];
              do
              {
                v136 = *(v134 - 27);
                v137 = *v134;
                v138 = *(v134 + 13);
                v139 = *(v134 + 21);
                v140 = v138 + v139 * v132;
                v141 = v138 + v139 * v133;
                if (v141 <= v140)
                {
                  v142 = v140;
                }

                else
                {
                  v142 = v141;
                }

                if (v136 >= v137 + v137 * v142)
                {
                  v145 = *(v134 - 35);
                  *v135 = *(v145 + 4 * v140);
                  v144 = *(v145 + 4 * v141);
                }

                else
                {
                  v143 = scn_default_log();
                  if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v231;
                    *&buf[4] = v142;
                    *&buf[8] = 2048;
                    *&buf[10] = v136 / v137;
                    _os_log_error_impl(&dword_21BEF7000, v143, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v144 = 0;
                }

                v134 += 64;
                v135[v130 / 4] = v144;
                ++v135;
                v131 += 4;
              }

              while (v130 != v131);
            }

            v146 = v237;
            (v236[1].n128_u64[0])(v236, v237, v239.n128_u64[0], 2, &v240);
            if (v240)
            {
              break;
            }

            v129 = v146 + 1;
            v4 = v232;
          }

          while (v129 != v238);
        }
      }

      return;
    }

    goto LABEL_102;
  }

  switch(v5)
  {
    case 3:
      if (a2 == 1)
      {
        v104 = *v237;
        v105 = *(v237 + 1);
        v106 = *(v237 + 6);
        v107 = *(v237 + 7);
        *v241 = 0;
        if (v6 == 1)
        {
          if (v238)
          {
            v160 = 0;
            a4.n128_u64[0] = 67109376;
            v239 = a4;
            do
            {
              if (v105 >= (v106 + 1))
              {
                v162 = v104->n128_u8[v106];
              }

              else
              {
                v161 = scn_default_log();
                if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                {
                  *buf = v239.n128_u32[0];
                  *&buf[4] = v106;
                  *&buf[8] = 2048;
                  *&buf[10] = v105;
                  _os_log_error_impl(&dword_21BEF7000, v161, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v162 = 0;
              }

              *v241 = v162;
              (v236[1].n128_u64[0])(v236, v160, v241, 1, &v240);
              if (v240)
              {
                break;
              }

              ++v160;
              LODWORD(v106) = v106 + v107;
            }

            while (v238 != v160);
          }
        }

        else if (v6 == 2)
        {
          if (v238)
          {
            v147 = 0;
            v148 = 2 * v106 + 2;
            a4.n128_u64[0] = 67109376;
            v239 = a4;
            do
            {
              if (v105 >= (v148 & 0xFFFFFFFE))
              {
                v150 = v104->n128_u16[v106];
              }

              else
              {
                v149 = scn_default_log();
                if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                {
                  *buf = v239.n128_u32[0];
                  *&buf[4] = v106;
                  *&buf[8] = 2048;
                  *&buf[10] = v105 >> 1;
                  _os_log_error_impl(&dword_21BEF7000, v149, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v150 = 0;
              }

              *v241 = v150;
              (v236[1].n128_u64[0])(v236, v147, v241, 1, &v240);
              if (v240)
              {
                break;
              }

              ++v147;
              v148 += 2 * v107;
              LODWORD(v106) = v106 + v107;
            }

            while (v238 != v147);
          }
        }

        else if (v6 == 4 && v238)
        {
          v108 = 0;
          v109 = 4 * v106 + 4;
          a4.n128_u64[0] = 67109376;
          v239 = a4;
          do
          {
            if (v105 >= (v109 & 0xFFFFFFFC))
            {
              v111 = v104->n128_i32[v106];
            }

            else
            {
              v110 = scn_default_log();
              if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
              {
                *buf = v239.n128_u32[0];
                *&buf[4] = v106;
                *&buf[8] = 2048;
                *&buf[10] = v105 >> 2;
                _os_log_error_impl(&dword_21BEF7000, v110, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
              }

              v111 = 0;
            }

            *v241 = v111;
            (v236[1].n128_u64[0])(v236, v108, v241, 1, &v240);
            if (v240)
            {
              break;
            }

            ++v108;
            v109 += 4 * v107;
            LODWORD(v106) = v106 + v107;
          }

          while (v238 != v108);
        }
      }

      else
      {
        v235 = &v222;
        v113 = a2;
        MEMORY[0x28223BE20]();
        v116 = &v222 - v115;
        if (v6 == 1)
        {
          if (v238)
          {
            v163 = 0;
            v239.n128_u64[0] = v236[1].n128_u64;
            v237 += 35;
            *&v114 = 67109376;
            v234 = v114;
            do
            {
              v164 = v113;
              v165 = v237;
              v166 = v116;
              if (v232)
              {
                do
                {
                  v167 = *(v165 - 27);
                  v168 = *v165;
                  v169 = *(v165 + 13) + *(v165 + 21) * v163;
                  if (v167 >= v168 + v168 * v169)
                  {
                    v171 = *(*(v165 - 35) + v169);
                  }

                  else
                  {
                    v170 = scn_default_log();
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v234;
                      *&buf[4] = v169;
                      *&buf[8] = 2048;
                      *&buf[10] = v167 / v168;
                      _os_log_error_impl(&dword_21BEF7000, v170, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v171 = 0;
                  }

                  v165 += 64;
                  *v166 = v171;
                  v166 += 4;
                  --v164;
                }

                while (v164);
              }

              (v236[1].n128_u64[0])(v236, v163, v116, 1, &v240);
              if (v240)
              {
                break;
              }

              ++v163;
            }

            while (v163 != v238);
          }
        }

        else if (v6 == 2)
        {
          if (v238)
          {
            v151 = 0;
            v239.n128_u64[0] = v236[1].n128_u64;
            v237 += 35;
            *&v114 = 67109376;
            v234 = v114;
            do
            {
              v152 = v113;
              v153 = v237;
              v154 = v116;
              if (v232)
              {
                do
                {
                  v155 = *(v153 - 27);
                  v156 = *v153;
                  v157 = *(v153 + 13) + *(v153 + 21) * v151;
                  if (v155 >= v156 + v156 * v157)
                  {
                    v159 = *(*(v153 - 35) + 2 * v157);
                  }

                  else
                  {
                    v158 = scn_default_log();
                    if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v234;
                      *&buf[4] = v157;
                      *&buf[8] = 2048;
                      *&buf[10] = v155 / v156;
                      _os_log_error_impl(&dword_21BEF7000, v158, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v159 = 0;
                  }

                  v153 += 64;
                  *v154 = v159;
                  v154 += 4;
                  --v152;
                }

                while (v152);
              }

              (v236[1].n128_u64[0])(v236, v151, v116, 1, &v240);
              if (v240)
              {
                break;
              }

              ++v151;
            }

            while (v151 != v238);
          }
        }

        else if (v6 == 4 && v238)
        {
          v117 = 0;
          v239.n128_u64[0] = v236[1].n128_u64;
          v237 += 35;
          *&v114 = 67109376;
          v234 = v114;
          do
          {
            v118 = v113;
            v119 = v237;
            v120 = v116;
            if (v232)
            {
              do
              {
                v121 = *(v119 - 27);
                v122 = *v119;
                v123 = *(v119 + 13) + *(v119 + 21) * v117;
                if (v121 >= v122 + v122 * v123)
                {
                  v125 = *(*(v119 - 35) + 4 * v123);
                }

                else
                {
                  v124 = scn_default_log();
                  if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v234;
                    *&buf[4] = v123;
                    *&buf[8] = 2048;
                    *&buf[10] = v121 / v122;
                    _os_log_error_impl(&dword_21BEF7000, v124, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v125 = 0;
                }

                v119 += 64;
                *v120 = v125;
                v120 += 4;
                --v118;
              }

              while (v118);
            }

            (v236[1].n128_u64[0])(v236, v117, v116, 1, &v240);
            if (v240)
            {
              break;
            }

            ++v117;
          }

          while (v117 != v238);
        }
      }

      break;
    case 5:
LABEL_102:
      if (a2 == 1)
      {
        v88 = *(v237 + 1);
        *buf = *v237;
        *&buf[16] = v88;
        v89 = *(v237 + 3);
        v246 = *(v237 + 2);
        v247 = v89;
        if (v238)
        {
          for (i = 0; i != v238; ++i)
          {
            *v241 = *buf;
            v242 = *&buf[16];
            v243 = v246;
            v244 = v247;
            C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex(v241, i, &v248, &v249, &v250);
            (v236[1].n128_u64[0])(v236, i, &v248, 3, &v240);
            if (v240 == 1)
            {
              break;
            }
          }
        }
      }

      else
      {
        v235 = &v222;
        MEMORY[0x28223BE20]();
        v92 = &v222 - v91;
        if (v238)
        {
          v93 = 0;
          v94 = v232;
          v239.n128_u64[0] = v236[1].n128_u64;
          v95 = &v92[8 * v232];
          v96 = &v92[4 * v232];
          do
          {
            v97 = v94;
            v98 = v92;
            v99 = v237;
            v100 = v96;
            v101 = v95;
            if (v232)
            {
              do
              {
                v102 = *(v99 + 1);
                *buf = *v99;
                *&buf[16] = v102;
                v103 = *(v99 + 3);
                v246 = *(v99 + 2);
                v247 = v103;
                C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex(buf, v93, v98, v100, v101++);
                v100 += 4;
                v99 += 64;
                v98 += 4;
                --v97;
              }

              while (v97);
            }

            (v236[1].n128_u64[0])(v236, v93, v92, 3, &v240);
            if (v240)
            {
              break;
            }

            ++v93;
          }

          while (v93 != v238);
        }
      }

      return;
    case 4:
      if (!v238)
      {
        return;
      }

      v19 = 0;
      v239.n128_u32[0] = 0;
      v224 = v236 + 1;
      *&v234 = a2;
      a4.n128_u64[0] = 67109376;
      v233 = a4;
      a4.n128_u64[0] = 67109120;
      v222 = a4;
      v226 = v6;
      v225 = v7;
      while (1)
      {
        switch(v6)
        {
          case 4:
            v20 = *(v7 + 4 * v19);
            break;
          case 2:
            v20 = *(v7 + 2 * v19);
            break;
          case 1:
            v20 = *(v7 + v19);
            break;
          default:
            LODWORD(v20) = 0;
LABEL_44:
            v34 = scn_default_log();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              C3DIndicesContentArrayEnumeratePrimitives_cold_1(v241, &v241[1], v34);
            }

            goto LABEL_100;
        }

        if (v20 <= 2)
        {
          goto LABEL_44;
        }

        v227 = v19;
        v228 = v20;
        if (v4 == 1)
        {
          v21 = *(v237 + 1);
          v235 = *v237;
          v22 = v237[35];
          v23 = *(v237 + 6);
          v24 = *(v237 + 7);
          v25 = v20;
          MEMORY[0x28223BE20]();
          v27 = (&v222 - v26);
          *&v231 = v28;
          if (v6 == 1)
          {
            v68 = v22;
            v69 = v239.n128_u32[0];
            v20 = &v222 - v26;
            v230 = v21 / v22;
            do
            {
              v70 = v23 + v24 * v69;
              if (v21 >= v68 + v68 * v70)
              {
                v72 = v235->n128_u8[v70];
              }

              else
              {
                v71 = scn_default_log();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  *buf = v233.n128_u32[0];
                  *&buf[4] = v23 + v24 * v69;
                  *&buf[8] = 2048;
                  *&buf[10] = v230;
                  _os_log_error_impl(&dword_21BEF7000, v71, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v72 = 0;
              }

              v27->n128_u32[0] = v72;
              v27 = (v27 + 4);
              ++v69;
              --v25;
            }

            while (v25);
          }

          else if (v6 == 2)
          {
            v50 = v239.n128_u32[0];
            v20 = &v222 - v26;
            v51 = (&v222 - v26);
            v230 = v21 / v22;
            do
            {
              v52 = v23 + v24 * v50;
              if (v21 >= v22 + v22 * v52)
              {
                v54 = v235->n128_u16[v52];
              }

              else
              {
                v53 = scn_default_log();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  *buf = v233.n128_u32[0];
                  *&buf[4] = v23 + v24 * v50;
                  *&buf[8] = 2048;
                  *&buf[10] = v230;
                  _os_log_error_impl(&dword_21BEF7000, v53, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v54 = 0;
              }

              v51->n128_u32[0] = v54;
              v51 = (v51 + 4);
              ++v50;
              --v25;
            }

            while (v25);
          }

          else
          {
            v29 = v239.n128_u32[0];
            v20 = &v222 - v26;
            v30 = (&v222 - v26);
            v230 = v21 / v22;
            do
            {
              v31 = v23 + v24 * v29;
              if (v21 >= v22 + v22 * v31)
              {
                v33 = v235->n128_u32[v31];
              }

              else
              {
                v32 = scn_default_log();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  *buf = v233.n128_u32[0];
                  *&buf[4] = v23 + v24 * v29;
                  *&buf[8] = 2048;
                  *&buf[10] = v230;
                  _os_log_error_impl(&dword_21BEF7000, v32, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v33 = 0;
              }

              v30->n128_u32[0] = v33;
              v30 = (v30 + 4);
              ++v29;
              --v25;
            }

            while (v25);
          }

          v19 = v227;
          v86 = v20;
          LODWORD(v20) = v228;
          (v236[1].n128_u64[0])(v236, v227, v86, v228, &v240);
          v87 = v240;
        }

        else
        {
          MEMORY[0x28223BE20]();
          v235 = (&v222 - v35);
          v223 = v36;
          if (v6 == 1)
          {
            if (v4)
            {
              v73 = 0;
              v229 = v228;
              do
              {
                *&v231 = v73;
                v74 = &v237[64 * v73];
                v75 = *v74;
                v76 = *(v74 + 1);
                v77 = v74[35];
                v79 = *(v74 + 6);
                v78 = *(v74 + 7);
                v80 = v229;
                v81 = v239.n128_u32[0];
                v82 = v235;
                v230 = v76 / v77;
                do
                {
                  v83 = v79 + v78 * v81;
                  if (v76 >= v77 + v77 * v83)
                  {
                    v85 = *(v75 + v83);
                  }

                  else
                  {
                    v84 = scn_default_log();
                    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v233.n128_u32[0];
                      *&buf[4] = v79 + v78 * v81;
                      *&buf[8] = 2048;
                      *&buf[10] = v230;
                      _os_log_error_impl(&dword_21BEF7000, v84, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v85 = 0;
                  }

                  v82->n128_u32[0] = v85;
                  v82 = (v82 + 4);
                  ++v81;
                  --v80;
                }

                while (v80);
                v73 = v231 + 1;
              }

              while (v231 + 1 != v234);
            }
          }

          else if (v6 == 2)
          {
            if (v4)
            {
              v55 = 0;
              v229 = v228;
              do
              {
                *&v231 = v55;
                v56 = &v237[64 * v55];
                v57 = *v56;
                v58 = *(v56 + 1);
                v59 = v56[35];
                v61 = *(v56 + 6);
                v60 = *(v56 + 7);
                v62 = v229;
                v63 = v239.n128_u32[0];
                v64 = v235;
                v230 = v58 / v59;
                do
                {
                  v65 = v61 + v60 * v63;
                  if (v58 >= v59 + v59 * v65)
                  {
                    v67 = *(v57 + 2 * v65);
                  }

                  else
                  {
                    v66 = scn_default_log();
                    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v233.n128_u32[0];
                      *&buf[4] = v61 + v60 * v63;
                      *&buf[8] = 2048;
                      *&buf[10] = v230;
                      _os_log_error_impl(&dword_21BEF7000, v66, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v67 = 0;
                  }

                  v64->n128_u32[0] = v67;
                  v64 = (v64 + 4);
                  ++v63;
                  --v62;
                }

                while (v62);
                v55 = v231 + 1;
              }

              while (v231 + 1 != v234);
            }
          }

          else if (v4)
          {
            v37 = 0;
            v229 = v228;
            do
            {
              *&v231 = v37;
              v38 = &v237[64 * v37];
              v39 = *v38;
              v40 = *(v38 + 1);
              v41 = v38[35];
              v43 = *(v38 + 6);
              v42 = *(v38 + 7);
              v44 = v229;
              v45 = v239.n128_u32[0];
              v46 = v235;
              v230 = v40 / v41;
              do
              {
                v47 = v43 + v42 * v45;
                if (v40 >= v41 + v41 * v47)
                {
                  v49 = *(v39 + 4 * v47);
                }

                else
                {
                  v48 = scn_default_log();
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v233.n128_u32[0];
                    *&buf[4] = v43 + v42 * v45;
                    *&buf[8] = 2048;
                    *&buf[10] = v230;
                    _os_log_error_impl(&dword_21BEF7000, v48, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v49 = 0;
                }

                v46->n128_u32[0] = v49;
                v46 = (v46 + 4);
                ++v45;
                --v44;
              }

              while (v44);
              v37 = v231 + 1;
            }

            while (v231 + 1 != v234);
          }

          v19 = v227;
          LODWORD(v20) = v228;
          (v236[1].n128_u64[0])(v236, v227, v235, v228, &v240);
          v87 = v240;
        }

        v4 = v232;
        v6 = v226;
        v7 = v225;
        if (v87)
        {
          return;
        }

LABEL_100:
        v239.n128_u32[0] += v20;
        if (++v19 == v238)
        {
          return;
        }
      }

    default:
      v112 = scn_default_log();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        C3DIndicesContentArrayEnumeratePrimitives_cold_2();
      }

      break;
  }
}

void C3DIndicesContentEnumerateTriangulatedPrimitives(unsigned __int8 *a1, uint64_t a2, __n128 a3)
{
  v3.n128_u64[0] = MEMORY[0x277D85DD0];
  a3.n128_u64[0] = 0x40000000;
  v3.n128_u64[1] = 0x40000000;
  v4 = __C3DIndicesContentEnumerateTriangulatedPrimitives_block_invoke;
  v5 = &unk_2782FB3E8;
  v6 = a2;
  C3DIndicesContentArrayEnumeratePrimitives(a1, 1, &v3, a3);
}

void __C3DIndicesContentEnumerateTriangulatedPrimitives_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a4 == 3)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32));
  }

  else if (a4 < 4)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __C3DIndicesContentEnumerateTriangulatedPrimitives_block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
    v8 = a4 - 2;
    do
    {
      if (v8 == v7)
      {
        break;
      }

      v9 = v7 + 1;
      (*(*(a1 + 32) + 16))(*(a1 + 32));
      v7 = v9;
    }

    while (!a5);
  }
}

void C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex(uint64_t *a1, int a2, _DWORD *a3, _DWORD *a4, int *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 34);
  v10 = 3;
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = v9 != 5;
  if (v9 == 1)
  {
    v13 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v9 != 1)
  {
    v12 = 1;
  }

  v14 = v9 == 0;
  if (*(a1 + 34))
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  if (*(a1 + 34))
  {
    v10 = v13;
    v16 = v11;
  }

  else
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  v18 = *a1;
  if (!*a1)
  {
    *a3 = v10 * a2;
    *a4 = v17 + v15 * a2;
    v29 = v16 + v15 * a2;
LABEL_33:
    *a5 = v29;
    return;
  }

  v19 = *(a1 + 35);
  v20 = a1[6];
  v21 = a1[7];
  v22 = v20 + v10 * a2 * v21;
  v23 = v15 * a2;
  v24 = v20 + v21 * (v17 + v15 * a2);
  v25 = v20 + v21 * (v16 + v23);
  if (v25 <= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  if (v24 <= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  if (a1[1] < (v19 + v19 * v27))
  {
    v28 = scn_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = a1[1];
      v32 = *(a1 + 35);
      v33 = 136315650;
      v34 = "C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
      v35 = 1024;
      v36 = v27;
      v37 = 2048;
      v38 = v31 / v32;
      _os_log_error_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v33, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    return;
  }

  switch(v19)
  {
    case 4:
      *a3 = *(v18 + 4 * v22);
      *a4 = *(v18 + 4 * v24);
      v29 = *(v18 + 4 * v25);
      goto LABEL_33;
    case 2:
      *a3 = *(v18 + 2 * v22);
      *a4 = *(v18 + 2 * v24);
      v29 = *(v18 + 2 * v25);
      goto LABEL_33;
    case 1:
      *a3 = *(v18 + v22);
      *a4 = *(v18 + v24);
      v29 = *(v18 + v25);
      goto LABEL_33;
  }

  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v30 = scn_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_cold_1();
  }
}

void C3DIndicesContentEnumeratePrimitivesByEvaluatingPrimitiveRanges(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v161 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    v24 = *(a1 + 16);
    *buf = *a1;
    *&buf[16] = v24;
    v26 = *(a1 + 48);
    v155 = *(a1 + 32);
    v25.n128_u64[1] = *(&v155 + 1);
    v156 = v26;
    v157.n128_u64[0] = MEMORY[0x277D85DD0];
    v25.n128_u64[0] = 0x40000000;
    v157.n128_u64[1] = 0x40000000;
    v158 = __C3DIndicesContentEnumeratePrimitives_block_invoke;
    v159 = &unk_2782FB3C0;
    v160 = a2;
    C3DIndicesContentArrayEnumeratePrimitives(buf, 1, &v157, v25);
    return;
  }

  v153 = 0;
  v5 = *(a1 + 34);
  v151 = a2;
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      v157.n128_u64[0] = 0;
      v6 = *(a1 + 35);
      switch(v6)
      {
        case 1:
          v126 = *(a1 + 32);
          if (*(a1 + 32))
          {
            v127 = 0;
            a3.n128_u64[0] = 67109376;
            v152 = a3;
            while (1)
            {
              v128 = (*(v4 + 24) + 16 * v127);
              v129 = *v128;
              v130 = v128[1] + *v128;
              if (v129 < v130)
              {
                break;
              }

LABEL_177:
              if (++v127 >= v126)
              {
                return;
              }
            }

            v131 = 2 * v129;
            v132 = v130 - v129;
            while (1)
            {
              v133 = *(v4 + 48);
              v134 = *(v4 + 56);
              v135 = v133 + v134 * v131;
              v136 = v133 + v134 * (v131 + 1);
              v137 = v136 <= v135 ? v135 : v136;
              v138 = *(v4 + 8);
              v139 = *(v4 + 35);
              if (v138 >= v139 + v139 * v137)
              {
                v142 = *v4;
                v157.n128_u32[0] = *(*v4 + v135);
                v141 = *(v142 + v136);
              }

              else
              {
                v140 = scn_default_log();
                if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                {
                  *buf = v152.n128_u32[0];
                  *&buf[4] = v137;
                  *&buf[8] = 2048;
                  *&buf[10] = v138 / v139;
                  _os_log_error_impl(&dword_21BEF7000, v140, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v141 = 0;
                v157.n128_u32[0] = 0;
              }

              v157.n128_u32[1] = v141;
              (*(v151 + 16))(v151, v129, &v157, 2, &v153);
              if (v153)
              {
                break;
              }

              v129 = (v129 + 1);
              v131 += 2;
              if (!--v132)
              {
                v126 = *(v4 + 32);
                goto LABEL_177;
              }
            }
          }

          break;
        case 2:
          v109 = *(a1 + 32);
          if (*(a1 + 32))
          {
            v110 = 0;
            a3.n128_u64[0] = 67109376;
            v152 = a3;
            while (1)
            {
              v111 = (*(v4 + 24) + 16 * v110);
              v112 = *v111;
              v113 = v111[1] + *v111;
              if (v112 < v113)
              {
                break;
              }

LABEL_160:
              if (++v110 >= v109)
              {
                return;
              }
            }

            v114 = 2 * v112;
            v115 = v113 - v112;
            while (1)
            {
              v116 = *(v4 + 48);
              v117 = *(v4 + 56);
              v118 = v116 + v117 * v114;
              v119 = v116 + v117 * (v114 + 1);
              v120 = v119 <= v118 ? v118 : v119;
              v121 = *(v4 + 8);
              v122 = *(v4 + 35);
              if (v121 >= v122 + v122 * v120)
              {
                v125 = *v4;
                v157.n128_u32[0] = *(*v4 + 2 * v118);
                v124 = *(v125 + 2 * v119);
              }

              else
              {
                v123 = scn_default_log();
                if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                {
                  *buf = v152.n128_u32[0];
                  *&buf[4] = v120;
                  *&buf[8] = 2048;
                  *&buf[10] = v121 / v122;
                  _os_log_error_impl(&dword_21BEF7000, v123, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v124 = 0;
                v157.n128_u32[0] = 0;
              }

              v157.n128_u32[1] = v124;
              (*(v151 + 16))(v151, v112, &v157, 2, &v153);
              if (v153)
              {
                break;
              }

              v112 = (v112 + 1);
              v114 += 2;
              if (!--v115)
              {
                v109 = *(v4 + 32);
                goto LABEL_160;
              }
            }
          }

          break;
        case 4:
          v7 = *(a1 + 32);
          if (*(a1 + 32))
          {
            v8 = 0;
            a3.n128_u64[0] = 67109376;
            v152 = a3;
            while (1)
            {
              v9 = (*(v4 + 24) + 16 * v8);
              v10 = *v9;
              v11 = v9[1] + *v9;
              if (v10 < v11)
              {
                break;
              }

LABEL_22:
              if (++v8 >= v7)
              {
                return;
              }
            }

            v12 = 2 * v10;
            v13 = v11 - v10;
            while (1)
            {
              v14 = *(v4 + 48);
              v15 = *(v4 + 56);
              v16 = v14 + v15 * v12;
              v17 = v14 + v15 * (v12 + 1);
              v18 = v17 <= v16 ? v16 : v17;
              v19 = *(v4 + 8);
              v20 = *(v4 + 35);
              if (v19 >= v20 + v20 * v18)
              {
                v23 = *v4;
                v157.n128_u32[0] = *(*v4 + 4 * v16);
                v22 = *(v23 + 4 * v17);
              }

              else
              {
                v21 = scn_default_log();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = v152.n128_u32[0];
                  *&buf[4] = v18;
                  *&buf[8] = 2048;
                  *&buf[10] = v19 / v20;
                  _os_log_error_impl(&dword_21BEF7000, v21, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v22 = 0;
                v157.n128_u32[0] = 0;
              }

              v157.n128_u32[1] = v22;
              (*(v151 + 16))(v151, v10, &v157, 2, &v153);
              if (v153)
              {
                break;
              }

              v10 = (v10 + 1);
              v12 += 2;
              if (!--v13)
              {
                v7 = *(v4 + 32);
                goto LABEL_22;
              }
            }
          }

          break;
      }

      return;
    }

    goto LABEL_88;
  }

  if (v5 != 3)
  {
    if (v5 == 5)
    {
LABEL_88:
      v157.n128_u32[2] = 0;
      v157.n128_u64[0] = 0;
      v64 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v65 = 0;
        while (1)
        {
          v66 = (*(v4 + 24) + 16 * v65);
          v67 = v66[1];
          if (*v66 < v67 + *v66)
          {
            break;
          }

LABEL_95:
          if (++v65 >= v64)
          {
            return;
          }
        }

        v68 = *v66;
        while (1)
        {
          v69 = *(v4 + 16);
          *buf = *v4;
          *&buf[16] = v69;
          v70 = *(v4 + 48);
          v155 = *(v4 + 32);
          v156 = v70;
          C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex(buf, v68, &v157, &v157.n128_u32[1], &v157.n128_i32[2]);
          (*(a2 + 16))(a2, v68, &v157, 3, &v153);
          if (v153)
          {
            break;
          }

          ++v68;
          LODWORD(v67) = v67 - 1;
          if (!v67)
          {
            v64 = *(v4 + 32);
            goto LABEL_95;
          }
        }
      }

      return;
    }

    if (v5 != 4)
    {
      v84 = scn_default_log();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        C3DIndicesContentEnumeratePrimitivesByEvaluatingPrimitiveRanges_cold_2();
      }

      return;
    }

    v27 = *(a1 + 32);
    if (!*(a1 + 32))
    {
      return;
    }

    v144 = 0;
    v146 = a2 + 16;
    a3.n128_u64[0] = 67109376;
    v145 = a3;
    a3.n128_u64[0] = 67109120;
    v143 = a3;
    while (1)
    {
      v28 = (*(v4 + 24) + 16 * v144);
      v29 = *v28;
      if (*v28)
      {
        v30 = 0;
        v31 = 0;
        v32 = *(v4 + 35);
        do
        {
          switch(v32)
          {
            case 4:
              v33 = *(*(v4 + 40) + 4 * v30);
              break;
            case 2:
              v33 = *(*(v4 + 40) + 2 * v30);
              break;
            case 1:
              v33 = *(*(v4 + 40) + v30);
              break;
            default:
              v33 = 0;
              break;
          }

          v31 += v33;
          ++v30;
        }

        while (v29 != v30);
      }

      else
      {
        v31 = 0;
      }

      v34 = v28[1] + v29;
      if (v29 < v34)
      {
        break;
      }

LABEL_86:
      if (++v144 >= v27)
      {
        return;
      }
    }

    v35 = v29;
    v36 = v34;
    v147 = v34;
    while (1)
    {
      v37 = *(v4 + 35);
      switch(v37)
      {
        case 4:
          v38 = *(*(v4 + 40) + 4 * v35);
          break;
        case 2:
          v38 = *(*(v4 + 40) + 2 * v35);
          break;
        case 1:
          v38 = *(*(v4 + 40) + v35);
          break;
        default:
          LODWORD(v38) = 0;
          goto LABEL_63;
      }

      if (v38 > 2)
      {
        v149 = &v143;
        v39 = v38;
        MEMORY[0x28223BE20](a1);
        v41 = (&v143 - v40);
        v42 = *(v4 + 35);
        v150 = v38;
        v148 = v41;
        switch(v42)
        {
          case 4:
            v152.n128_u64[0] = *v4;
            v56 = v31;
            do
            {
              v57 = *(v4 + 48) + *(v4 + 56) * v56;
              v58 = *(v4 + 8);
              v59 = *(v4 + 35);
              if (v58 >= v59 + v59 * v57)
              {
                v61 = *(v152.n128_u64[0] + 4 * v57);
              }

              else
              {
                v60 = scn_default_log();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  *buf = v145.n128_u32[0];
                  *&buf[4] = v57;
                  *&buf[8] = 2048;
                  *&buf[10] = v58 / v59;
                  _os_log_error_impl(&dword_21BEF7000, v60, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v61 = 0;
              }

              v41->n128_u32[0] = v61;
              v41 = (v41 + 4);
              ++v56;
              --v39;
            }

            while (v39);
            break;
          case 2:
            v152.n128_u64[0] = *v4;
            v50 = v31;
            do
            {
              v51 = *(v4 + 48) + *(v4 + 56) * v50;
              v52 = *(v4 + 8);
              v53 = *(v4 + 35);
              if (v52 >= v53 + v53 * v51)
              {
                v55 = *(v152.n128_u64[0] + 2 * v51);
              }

              else
              {
                v54 = scn_default_log();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *buf = v145.n128_u32[0];
                  *&buf[4] = v51;
                  *&buf[8] = 2048;
                  *&buf[10] = v52 / v53;
                  _os_log_error_impl(&dword_21BEF7000, v54, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v55 = 0;
              }

              v41->n128_u32[0] = v55;
              v41 = (v41 + 4);
              ++v50;
              --v39;
            }

            while (v39);
            break;
          case 1:
            v152.n128_u64[0] = *v4;
            v43 = v31;
            do
            {
              v44 = *(v4 + 48) + *(v4 + 56) * v43;
              v45 = *(v4 + 8);
              v46 = *(v4 + 35);
              if (v45 >= v46 + v46 * v44)
              {
                v48 = *(v152.n128_u64[0] + v44);
              }

              else
              {
                v47 = scn_default_log();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  *buf = v145.n128_u32[0];
                  *&buf[4] = v44;
                  *&buf[8] = 2048;
                  *&buf[10] = v45 / v46;
                  _os_log_error_impl(&dword_21BEF7000, v47, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v48 = 0;
              }

              v41->n128_u32[0] = v48;
              v41 = (v41 + 4);
              ++v43;
              --v39;
            }

            while (v39);
            break;
          default:
            bzero(v41, 4 * v38);
            v62 = scn_default_log();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v63 = *(v4 + 35);
              *buf = v143.n128_u32[0];
              *&buf[4] = v63;
              _os_log_error_impl(&dword_21BEF7000, v62, OS_LOG_TYPE_ERROR, "Unreachable code: Invalid bytes per index (%d)", buf, 8u);
            }

            break;
        }

        LODWORD(v38) = v150;
        a1 = (*(v151 + 16))(v151, v35, v148, v150, &v153);
        v36 = v147;
        if (v153)
        {
          return;
        }

        goto LABEL_84;
      }

LABEL_63:
      v49 = scn_default_log();
      a1 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        C3DIndicesContentArrayEnumeratePrimitives_cold_1(&v157, &v157.n128_u8[1], v49);
      }

LABEL_84:
      v31 += v38;
      if (++v35 == v36)
      {
        v27 = *(v4 + 32);
        goto LABEL_86;
      }
    }
  }

  v157.n128_u32[0] = 0;
  v71 = *(a1 + 35);
  switch(v71)
  {
    case 1:
      v97 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v98 = 0;
        a3.n128_u64[0] = 67109376;
        v152 = a3;
        while (1)
        {
          v99 = (*(v4 + 24) + 16 * v98);
          v100 = *v99;
          v101 = v99[1] + *v99;
          if (v100 < v101)
          {
            break;
          }

LABEL_143:
          if (++v98 >= v97)
          {
            return;
          }
        }

        v102 = v100;
        v103 = v101;
        while (1)
        {
          v104 = *(v4 + 48) + *(v4 + 56) * v102;
          v105 = *(v4 + 8);
          v106 = *(v4 + 35);
          if (v105 >= v106 + v106 * v104)
          {
            v108 = *(*v4 + v104);
          }

          else
          {
            v107 = scn_default_log();
            if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              *buf = v152.n128_u32[0];
              *&buf[4] = v104;
              *&buf[8] = 2048;
              *&buf[10] = v105 / v106;
              _os_log_error_impl(&dword_21BEF7000, v107, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v108 = 0;
          }

          v157.n128_u32[0] = v108;
          (*(v151 + 16))(v151, v102, &v157, 1, &v153);
          if (v153)
          {
            break;
          }

          if (v103 == ++v102)
          {
            v97 = *(v4 + 32);
            goto LABEL_143;
          }
        }
      }

      break;
    case 2:
      v85 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v86 = 0;
        a3.n128_u64[0] = 67109376;
        v152 = a3;
        while (1)
        {
          v87 = (*(v4 + 24) + 16 * v86);
          v88 = *v87;
          v89 = v87[1] + *v87;
          if (v88 < v89)
          {
            break;
          }

LABEL_129:
          if (++v86 >= v85)
          {
            return;
          }
        }

        v90 = v88;
        v91 = v89;
        while (1)
        {
          v92 = *(v4 + 48) + *(v4 + 56) * v90;
          v93 = *(v4 + 8);
          v94 = *(v4 + 35);
          if (v93 >= v94 + v94 * v92)
          {
            v96 = *(*v4 + 2 * v92);
          }

          else
          {
            v95 = scn_default_log();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              *buf = v152.n128_u32[0];
              *&buf[4] = v92;
              *&buf[8] = 2048;
              *&buf[10] = v93 / v94;
              _os_log_error_impl(&dword_21BEF7000, v95, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v96 = 0;
          }

          v157.n128_u32[0] = v96;
          (*(v151 + 16))(v151, v90, &v157, 1, &v153);
          if (v153)
          {
            break;
          }

          if (v91 == ++v90)
          {
            v85 = *(v4 + 32);
            goto LABEL_129;
          }
        }
      }

      break;
    case 4:
      v72 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v73 = 0;
        a3.n128_u64[0] = 67109376;
        v152 = a3;
        while (1)
        {
          v74 = (*(v4 + 24) + 16 * v73);
          v75 = *v74;
          v76 = v74[1] + *v74;
          if (v75 < v76)
          {
            break;
          }

LABEL_112:
          if (++v73 >= v72)
          {
            return;
          }
        }

        v77 = v75;
        v78 = v76;
        while (1)
        {
          v79 = *(v4 + 48) + *(v4 + 56) * v77;
          v80 = *(v4 + 8);
          v81 = *(v4 + 35);
          if (v80 >= v81 + v81 * v79)
          {
            v83 = *(*v4 + 4 * v79);
          }

          else
          {
            v82 = scn_default_log();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              *buf = v152.n128_u32[0];
              *&buf[4] = v79;
              *&buf[8] = 2048;
              *&buf[10] = v80 / v81;
              _os_log_error_impl(&dword_21BEF7000, v82, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v83 = 0;
          }

          v157.n128_u32[0] = v83;
          (*(v151 + 16))(v151, v77, &v157, 1, &v153);
          if (v153)
          {
            break;
          }

          if (v78 == ++v77)
          {
            v72 = *(v4 + 32);
            goto LABEL_112;
          }
        }
      }

      break;
  }
}

void C3DMeshElementPrintData(uint64_t a1)
{
  Type = C3DMeshElementGetType(a1);
  v3 = *(a1 + 130);
  if (*(a1 + 130))
  {
    v4 = Type;
    v5 = 0;
    do
    {
      fprintf(*MEMORY[0x277D85E08], "CHANNEL %ld/%ld\n", v5 + 1, v3);
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      C3DMeshElementGetContent(a1, v5, &v11);
      v9[0] = 0;
      v9[1] = v9;
      v9[2] = 0x2000000000;
      v10 = 0;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 0x40000000;
      v7[2] = __C3DMeshElementPrintData_block_invoke;
      v7[3] = &unk_2782FB410;
      v8 = v4;
      v7[4] = v9;
      v6[0] = v11;
      v6[1] = v12;
      v6[2] = v13;
      v6[3] = v14;
      v15.n128_u64[0] = MEMORY[0x277D85DD0];
      v15.n128_u64[1] = 0x40000000;
      v16 = __C3DIndicesContentEnumeratePrimitives_block_invoke;
      v17 = &unk_2782FB3C0;
      v18 = v7;
      C3DIndicesContentArrayEnumeratePrimitives(v6, 1, &v15, v13);
      _Block_object_dispose(v9, 8);
      ++v5;
    }

    while (v3 != v5);
  }
}

uint64_t __C3DMeshElementPrintData_block_invoke(uint64_t result, uint64_t a2, int *a3, unsigned int a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      result = fprintf(*MEMORY[0x277D85E08], "%4u : %4u %4u\n");
      goto LABEL_9;
    }

LABEL_7:
    result = fprintf(*MEMORY[0x277D85E08], "%4u : %4u %4u %4u\n");
    goto LABEL_9;
  }

  if (v6 == 3)
  {
    result = fprintf(*MEMORY[0x277D85E08], "%4u : %4u\n");
    goto LABEL_9;
  }

  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v8 = MEMORY[0x277D85E08];
  fprintf(*MEMORY[0x277D85E08], "%2u : [Polygon %4u]", *(*(*(result + 32) + 8) + 24), a4);
  if (a4)
  {
    v9 = a4;
    do
    {
      v10 = *a3++;
      fprintf(*v8, " %4u", v10);
      --v9;
    }

    while (v9);
  }

  result = fputc(10, *v8);
LABEL_9:
  ++*(*(*(v5 + 32) + 8) + 24);
  return result;
}

id _C3DMeshElementCFFinalize(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshElementWillDie", a1, 0, 1u);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 168) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 136) = 0;
  }

  free(*(a1 + 112));
  free(*(a1 + 120));
  free(*(a1 + 208));

  return C3DEntityCFFinalize(a1);
}

__CFString *_C3DMeshElementCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = *(a1 + 88);
  if (v3 > 5)
  {
    v4 = @"invalid";
  }

  else
  {
    v4 = off_2782FB430[v3];
  }

  v5 = *(a1 + 104);
  v6 = *(a1 + 130);
  v7 = *(a1 + 80);
  v8 = *(a1 + 64);
  v9 = C3DMeshElementComputeACMR(a1, 0x20uLL);
  v10 = *(a1 + 68);
  Length = *(a1 + 96);
  if (Length)
  {
    Length = CFDataGetLength(Length);
  }

  CFStringAppendFormat(Mutable, 0, @"<C3DMeshElement %p type:%@ primCount:%d channels:%d indexBytes:%d offset:%d acmr:%f inst:%d dataSize:%d shared:%p>", a1, v4, v5, v6, v7, v8, v9, v10, Length, *(a1 + 72));
  return Mutable;
}

BOOL _C3DMeshElementInitWithPropertyList(char *a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  if (!a1 && (v7 = scn_default_log(), os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    if (!a2)
    {
LABEL_4:
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        _C3DGeometryFinalizeDeserialization_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }

  else if (!a2)
  {
    goto LABEL_4;
  }

  if ((C3DEntityInitWithPropertyList(a1, a2) & 1) == 0)
  {
    v28 = scn_default_log();
    result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DMeshElementInitWithPropertyList_cold_3();
    return 0;
  }

  *(a1 + 26) = 0;
  Value = CFDictionaryGetValue(a2, @"facesCount");
  if (!Value || !CFNumberGetValue(Value, kCFNumberIntType, a1 + 104))
  {
    v30 = scn_default_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    _C3DMeshElementInitWithPropertyList_cold_8();
    if (!a4)
    {
      return 0;
    }

    goto LABEL_60;
  }

  v24 = CFDictionaryGetValue(a2, @"geometryElement");
  if (!v24)
  {
    goto LABEL_21;
  }

  v25 = v24;
  valuePtr = 0;
  v26 = CFGetTypeID(v24);
  if (v26 == CFNumberGetTypeID() && CFNumberGetValue(v25, kCFNumberIntType, &valuePtr))
  {
    v27 = valuePtr;
    goto LABEL_34;
  }

  v31 = CFGetTypeID(v25);
  if (v31 != CFStringGetTypeID())
  {
LABEL_21:
    v32 = scn_default_log();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    _C3DMeshElementInitWithPropertyList_cold_7();
    if (!a4)
    {
      return 0;
    }

    goto LABEL_60;
  }

  if (CFEqual(v25, @"linesArray"))
  {
    v27 = 2;
    goto LABEL_34;
  }

  if (CFEqual(v25, @"trianglesArray"))
  {
    goto LABEL_27;
  }

  if (CFEqual(v25, @"pointsArray"))
  {
    v27 = 3;
  }

  else if (CFEqual(v25, @"trianglesStrip"))
  {
    v27 = 1;
  }

  else
  {
    if (!CFEqual(v25, @"polygonsArray"))
    {
      v48 = scn_default_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v25;
        _os_log_impl(&dword_21BEF7000, v48, OS_LOG_TYPE_DEFAULT, "Warning: Unknown mesh element type %@, assuming triangles array.", buf, 0xCu);
      }

LABEL_27:
      v27 = 0;
      goto LABEL_34;
    }

    v27 = 4;
  }

LABEL_34:
  a1[88] = v27;
  v33 = CFDictionaryGetValue(a2, @"indexes");
  if (!v33)
  {
    v37 = scn_default_log();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    _C3DMeshElementInitWithPropertyList_cold_6();
    if (!a4)
    {
      return 0;
    }

    goto LABEL_60;
  }

  v34 = v33;
  a1[80] = 4;
  v35 = CFDictionaryGetValue(a2, @"bytesPerIndex");
  if (v35)
  {
    *buf = 0;
    if (!CFNumberGetValue(v35, kCFNumberIntType, buf))
    {
      v45 = scn_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        _C3DMeshElementInitWithPropertyList_cold_4();
        if (!a4)
        {
          return 0;
        }
      }

      else if (!a4)
      {
        return 0;
      }

      if (!*a4)
      {
        *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
      }

      return 0;
    }

    v36 = buf[0];
    a1[80] = buf[0];
  }

  else
  {
    v36 = a1[80];
  }

  v38 = CFDataGetLength(v34) / a1[80];
  if (v38 >= 1)
  {
    v39 = 9;
    if (v36 == 1)
    {
      v39 = 7;
    }

    if (v36 == 2)
    {
      v40 = 8;
    }

    else
    {
      v40 = v39;
    }

    v41 = C3DCopyLittleEndianToHostRepresentationOfData(v34, v40, v38);
    if (v41)
    {
      v42 = v41;
      __SetIndexes(a1, v41, a1[80]);
      CFRelease(v42);
      goto LABEL_50;
    }

    v46 = scn_default_log();
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
LABEL_59:
      if (!a4)
      {
        return 0;
      }

      goto LABEL_60;
    }

    _C3DMeshElementInitWithPropertyList_cold_5();
    if (!a4)
    {
      return 0;
    }

LABEL_60:
    if (!*a4)
    {
      MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
      result = 0;
      *a4 = MalformedDocumentError;
      return result;
    }

    return 0;
  }

LABEL_50:
  v43 = CFDictionaryGetValue(a2, @"doubleSided");
  if (v43)
  {
    v44 = CFBooleanGetValue(v43) != 0;
  }

  else
  {
    v44 = 0;
  }

  C3DMeshElementSetDoubleSided(a1, v44);
  C3DMeshElementConvertStripToTriangleList(a1);
  return 1;
}

__CFDictionary *_C3DMeshElementCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (v14)
  {
    v15 = *MEMORY[0x277CBECE8];
    v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (a1 + 104));
    CFDictionarySetValue(v14, @"facesCount", v16);
    CFRelease(v16);
    v17 = *(a1 + 88);
    if (v17 > 4)
    {
      v18 = 0;
    }

    else
    {
      v18 = off_2782FB460[v17];
    }

    CFDictionarySetValue(v14, @"geometryElement", v18);
    valuePtr = *(a1 + 80);
    v19 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v14, @"bytesPerIndex", v19);
    CFRelease(v19);
    v20 = *(a1 + 96);
    v21 = *(a1 + 80);
    v22 = 7;
    if (v21 != 1)
    {
      v22 = 9;
    }

    if (v21 == 2)
    {
      v23 = 8;
    }

    else
    {
      v23 = v22;
    }

    Length = CFDataGetLength(*(a1 + 96));
    v25 = C3DCopyHostToLittleEndianRepresentationOfData(v20, v23, Length / *(a1 + 80));
    if (v25)
    {
      v26 = v25;
      CFDictionarySetValue(v14, @"indexes", v25);
      CFRelease(v26);
    }

    v27 = MEMORY[0x277CBED28];
    if (!*(a1 + 81))
    {
      v27 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v14, @"doubleSided", *v27);
  }

  return v14;
}

__CFArray *_C3DMeshElementCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v44 = 1;
  valuePtr = 5;
  v41 = a1;
  v42 = a1 + 88;
  v43 = *(a1 + 96);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v5, @"name", @"indexes");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 104;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v9, @"name", @"subElementsCount");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = v4;
  v14 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = v42;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v14, @"name", @"type");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = MEMORY[0x277CBF138];
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v44 = 0;
  valuePtr = 2;
  v43 = v41 + 80;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v19, @"name", @"bytesPerIndex");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v23 = CFDictionaryCreateMutable(0, 4, v18, MEMORY[0x277CBF150]);
  v44 = 0;
  valuePtr = 3;
  v43 = v41 + 81;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v26 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v23, @"name", @"doubleSided");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v27 = MEMORY[0x277CBF150];
  v28 = CFDictionaryCreateMutable(0, 4, v18, MEMORY[0x277CBF150]);
  v44 = 1;
  valuePtr = 5;
  v43 = *(v41 + 168);
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v31 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v28, @"name", @"primitiveNormals");
  CFDictionarySetValue(v28, @"type", v29);
  CFDictionarySetValue(v28, @"address", v31);
  CFDictionarySetValue(v28, @"semantic", v30);
  CFArrayAppendValue(Mutable, v28);
  CFRelease(v30);
  CFRelease(v28);
  CFRelease(v31);
  CFRelease(v29);
  v32 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v27);
  v44 = 0;
  valuePtr = 9;
  v43 = v41 + 176;
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v35 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v32, @"name", @"bbox[0]");
  CFDictionarySetValue(v32, @"type", v33);
  CFDictionarySetValue(v32, @"address", v35);
  CFDictionarySetValue(v32, @"semantic", v34);
  CFArrayAppendValue(Mutable, v32);
  CFRelease(v34);
  CFRelease(v32);
  CFRelease(v35);
  CFRelease(v33);
  v36 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v44 = 0;
  valuePtr = 9;
  v43 = v41 + 192;
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v39 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v36, @"name", @"bbox[1]");
  CFDictionarySetValue(v36, @"type", v37);
  CFDictionarySetValue(v36, @"address", v39);
  CFDictionarySetValue(v36, @"semantic", v38);
  CFArrayAppendValue(Mutable, v36);
  CFRelease(v38);
  CFRelease(v36);
  CFRelease(v39);
  CFRelease(v37);
  return Mutable;
}

void C3DMaterialSetTextureSampler(uint64_t a1, int a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CommonProfile = C3DMaterialGetCommonProfile(a1);
  C3DEffectCommonProfileSetTextureSampler(CommonProfile, a2, a3);
}

__n128 C3DTransformBoundingSphere(float32x4_t *a1, float32x4_t *a2, __n128 *a3, __n128 a4)
{
  if (!a1 && (v7 = scn_default_log(), os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    C3DTransformBoundingSphere_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DTransformBoundingSphere_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  v23 = *a1;
  v24 = a2[1];
  v30[0] = *a2;
  v30[1] = v24;
  v25 = a2[3];
  v30[2] = a2[2];
  v30[3] = v25;
  result.n128_f64[0] = C3DVector3MultMatrix4x4(v30, v23);
  result.n128_u32[3] = a3->n128_u32[3];
  *a3 = result;
  v27 = vabs_f32(a4.n128_u64[0]);
  if (v27.f32[0] < v27.f32[1])
  {
    v27.f32[0] = v27.f32[1];
  }

  v28 = fabsf(a4.n128_f32[2]);
  if (v27.f32[0] < v28)
  {
    v27.f32[0] = v28;
  }

  result.n128_f32[3] = v27.f32[0] * a1->f32[3];
  *a3 = result;
  return result;
}

uint64_t C3DMeshElementConvertStripToTriangleList(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (C3DMeshElementGetType(a1) == 1)
  {
    v28 = 0;
    Indexes = C3DMeshElementGetIndexes(a1, &v28);
    if (v28 == 2)
    {
      v11 = Indexes;
      Mutable = CFDataCreateMutable(0, 0);
      PrimitiveCount = C3DMeshElementGetPrimitiveCount(a1);
      v14 = 6 * PrimitiveCount;
      v15 = C3DMalloc(6 * PrimitiveCount);
      BytePtr = CFDataGetBytePtr(v11);
      if (PrimitiveCount < 1)
      {
        v26 = 0;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = BytePtr + 4;
        v20 = v15;
        do
        {
          v21 = v19 - 2;
          v22 = *(v19 - 2);
          v23 = *(v19 - 1);
          if (v22 != v23)
          {
            v24 = *v19;
            if (v23 != v24 && v22 != v24)
            {
              if (v17)
              {
                LOWORD(v22) = *v19;
              }

              else
              {
                v21 = v19;
              }

              *v20 = v22;
              *(v20 + 1) = *(v19 - 1);
              *(v20 + 2) = *v21;
              ++v18;
              v20 += 6;
            }
          }

          ++v17;
          ++v19;
        }

        while (PrimitiveCount != v17);
        v26 = v18;
      }

      CFDataAppendBytes(Mutable, v15, v14);
      C3DMeshElementInit(a1, 0, v26, Mutable, 2);
      CFRelease(Mutable);
      if (v15)
      {
        free(v15);
      }
    }
  }

  return 1;
}

void __MakeNormalMatrix(__n128 *a1, _OWORD *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __MakeNormalMatrix_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    __MakeNormalMatrix_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  C3DMatrix4x4ComputeNormalMatrix(a1, a2);
}

void __DestroyMaterialMeshElementCouple(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

CFComparisonResult __CompareMaterials(uint64_t *a1, uint64_t *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __CompareMaterials_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    __CompareMaterials_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (C3DMaterialGetName(*a1))
  {
    Name = C3DMaterialGetName(*a1);
  }

  else
  {
    Name = &stru_282DCC058;
  }

  if (C3DMaterialGetName(*a2))
  {
    v21 = C3DMaterialGetName(*a2);
  }

  else
  {
    v21 = &stru_282DCC058;
  }

  result = CFStringCompare(Name, v21, 0);
  if (result)
  {
    return result;
  }

  v23 = a1[1];
  v24 = a2[1];
  if (!v23)
  {
    PrimitiveCount = 0;
    if (v24)
    {
      goto LABEL_15;
    }

LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  PrimitiveCount = C3DMeshElementGetPrimitiveCount(v23);
  if (!v24)
  {
    goto LABEL_17;
  }

LABEL_15:
  v26 = C3DMeshElementGetPrimitiveCount(v24);
LABEL_18:
  v27 = -1;
  if (PrimitiveCount >= v26)
  {
    v27 = 1;
  }

  if (PrimitiveCount == v26)
  {
    return 0;
  }

  else
  {
    return v27;
  }
}

void __ReorderRendererElements(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  Mesh = C3DGeometryGetMesh(a1);
  MaterialsCount = C3DGeometryGetMaterialsCount(a1);
  if (MaterialsCount >= 1)
  {
    v5 = MaterialsCount;
    if (C3DMeshGetElementsCount(Mesh) == MaterialsCount)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = C3DMalloc(0x10uLL);
        *v7 = 0;
        v7[1] = 0;
        MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, i);
        if (MaterialAtIndex)
        {
          MaterialAtIndex = CFRetain(MaterialAtIndex);
        }

        *v7 = MaterialAtIndex;
        if (C3DMeshGetElementsCount(Mesh) >= 1)
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, i, 0);
          if (ElementAtIndex)
          {
            ElementAtIndex = CFRetain(ElementAtIndex);
          }

          v7[1] = ElementAtIndex;
        }

        CFArrayAppendValue(Mutable, v7);
      }

      if (v5 != 1)
      {
        v13.location = 0;
        v13.length = v5;
        CFArraySortValues(Mutable, v13, __CompareMaterials, 0);
      }

      C3DGeometryRemoveAllMaterials(a1);
      C3DMeshRemoveAllElements(Mesh);
      for (j = 0; j != v5; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
        C3DMeshAppendElement(Mesh, ValueAtIndex[1]);
        C3DGeometryAppendMaterial(a1, *ValueAtIndex);
        __DestroyMaterialMeshElementCouple(ValueAtIndex);
      }
    }
  }

  CFRelease(Mutable);
}

uint64_t _C3DCreateFlattenedGeometryFromNodeHierarchy(float32x4_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(&v95[2] + 4) = *MEMORY[0x277D85DE8];
  v91 = 0;
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  memset(v72, 0, sizeof(v72));
  C3DNodeGetLocalNoPivotMatrix(a1, v72);
  Identity = C3DMatrix4x4GetIdentity();
  C3DNodeSetMatrix(a1, Identity);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  HasPivot = C3DNodeGetHasPivot(a1);
  if (HasPivot)
  {
    PivotMatrix = C3DNodeGetPivotMatrix(a1);
    v8 = PivotMatrix[3];
    v10 = *PivotMatrix;
    v9 = PivotMatrix[1];
    v70 = PivotMatrix[2];
    v71 = v8;
    v68 = v10;
    v69 = v9;
    v11 = C3DMatrix4x4GetIdentity();
    C3DNodeSetPivotMatrix(a1, v11);
  }

  v75 = vdupq_n_s64(3uLL);
  v76 = xmmword_21C27F8B0;
  *&v80 = 0;
  memset(v73, 0, sizeof(v73));
  v77 = 4;
  v74 = 0;
  BYTE8(v80) = a4;
  v12 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  v14 = CFArrayCreateMutable(v12, 0, 0);
  v15 = CFArrayCreateMutable(v12, 0, MEMORY[0x277CBF128]);
  v16 = v12;
  v17 = CFDictionaryCreateMutable(v12, 0, 0, 0);
  context = Mutable;
  v89 = v14;
  v90 = v73;
  v58 = v15;
  v92 = v15;
  v93 = v17;
  v81[0] = 0;
  v81[1] = __CreateAndDispatchRendererElements;
  v81[2] = 0;
  C3DNodeIterateTree(a1, v81, 0, &context);
  v18 = C3DGeometryCreate();
  v19 = C3DMeshCreate();
  C3DGeometrySetMesh(v18, v19);
  v67 = v19;
  CFRelease(v19);
  v59 = v18;
  cf = Mutable;
  context = v18;
  v89 = v73;
  v57 = v17;
  v90 = v17;
  CFDictionaryApplyFunction(Mutable, __MergeRendererElements, &context);
  theArray = v14;
  Count = CFArrayGetCount(v14);
  if (Count >= 1)
  {
    v21 = 0;
    do
    {
      while (1)
      {
        v22 = *(CFArrayGetValueAtIndex(theArray, v21) + 1);
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = ____MergeMeshSources_block_invoke;
        v87[3] = &__block_descriptor_40_e201_v32__0____C3DMeshSource____C3DGenericSource____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DSourceAccessor________CFData__v_v_qb1b1b1_SCC_8c16q20C28l;
        v87[4] = v73;
        C3DMeshApplySources(v22, 1, v87);
        if (v76 == 4)
        {
          break;
        }

        if (++v21 >= Count)
        {
          goto LABEL_12;
        }
      }

      ++v21;
    }

    while (v75.i64[0] != 4 && v21 < Count);
  }

LABEL_12:
  v62 = a1;
  v63 = Count;
  v24 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v65 = _Q0;
  do
  {
    if (*(v73 + v24) >= 1)
    {
      v30 = 0;
      do
      {
        v31 = v80;
        v32 = v75.i64[v24];
        if (!v32)
        {
          v33 = scn_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            _C3DCreateFlattenedGeometryFromNodeHierarchy_cold_1(v94, v95, v33);
          }
        }

        if (v31 <= (0x7FFFFFFF / v32) && v31 * v32 <= 0x1FFFFFFF)
        {
          v35 = malloc_type_calloc(4 * v31 * v32, 1uLL, 0x78595BE0uLL);
          v36 = CFDataCreateWithBytesNoCopy(v16, v35, 4 * v31 * v32, v16);
          v37 = C3DMeshSourceCreate(v36, v24, v31, v32, 1);
          CFRelease(v36);
          if (v37)
          {
            if (v24 == 2)
            {
              v38 = C3DMeshSourceGetCount(v37);
              if (v38 >= 1)
              {
                v39 = v38;
                for (i = 0; i != v39; ++i)
                {
                  C3DMeshSourceSetValueAtIndexAsVector4(v37, i, v65);
                }
              }
            }

            C3DMeshAddSource(v19, v37, 0, 0);
            CFRelease(v37);
          }
        }

        ++v30;
      }

      while (v30 < *(v73 + v24));
    }

    ++v24;
  }

  while (v24 != 9);
  if (Count >= 1)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    do
    {
      v66 = v41;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v41);
      v45 = *(ValueAtIndex + 1);
      v46 = *(ValueAtIndex + 3);
      memset(v86, 0, sizeof(v86));
      if (v46)
      {
        C3DNodeComputeWorldMatrix(v46, v86);
      }

      else
      {
        C3DMatrix4x4MakeIdentity(v86);
      }

      for (j = 0; j != 9; ++j)
      {
        if (*(v73 + j) >= 1)
        {
          v48 = 0;
          v49 = v43;
          while (1)
          {
            SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v67, j, v48, 0);
            v51 = C3DMeshGetSourceWithSemanticAtIndex(v45, j, v48, 1);
            if (!v51)
            {
              goto LABEL_47;
            }

            v43 = v51;
            if ((j - 2) < 3)
            {
              break;
            }

            if (j == 1)
            {
              v84 = 0u;
              v85 = 0u;
              *buf = 0u;
              v83 = 0u;
              C3DMatrix4x4ComputeNormalMatrix(v86, buf);
              v54 = buf;
              v52 = SourceWithSemanticAtIndex;
              v53 = v43;
              goto LABEL_46;
            }

            if (j)
            {
              v55 = scn_default_log();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_21BEF7000, v55, OS_LOG_TYPE_DEFAULT, "Warning: __MergeMeshSources unknown source type\n", buf, 2u);
              }

              goto LABEL_47;
            }

            __TransformAndAppendMeshSource(SourceWithSemanticAtIndex, v51, v86, v42);
LABEL_48:
            ++v48;
            v49 = v43;
            if (v48 >= *(v73 + j))
            {
              goto LABEL_52;
            }
          }

          v52 = SourceWithSemanticAtIndex;
          v53 = v43;
          v54 = 0;
LABEL_46:
          __TransformAndAppendMeshSource(v52, v53, v54, v42);
LABEL_47:
          v43 = v49;
          goto LABEL_48;
        }

LABEL_52:
        ;
      }

      if (v43)
      {
        v42 += C3DMeshSourceGetCount(v43);
      }

      v41 = v66 + 1;
    }

    while (v66 + 1 != v63);
  }

  __ReorderRendererElements(v59);
  CFRelease(cf);
  __DestroyFlattenElementsArray(theArray);
  CFRelease(v58);
  CFRelease(v57);
  CFRelease(theArray);
  C3DNodeSetMatrix(v62, v72);
  if (HasPivot)
  {
    C3DNodeSetPivotMatrix(v62, &v68);
  }

  return v59;
}

uint64_t __CreateAndDispatchRendererElements(const void *a1, const __CFDictionary **a2)
{
  *&v58[5] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[4];
  Geometry = C3DNodeGetGeometry(a1);
  if (Geometry)
  {
    v7 = Geometry;
    if ((C3DNodeIsGizmo(a1) & 1) == 0)
    {
      v8 = a2[1];
      Mesh = C3DGeometryGetMesh(v7);
      if (Mesh)
      {
        v10 = Mesh;
        if (C3DMeshGetPositionSource(Mesh, 1))
        {
          if (!a1)
          {
            v11 = scn_default_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
            {
              C3DGeometryTrackNode_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
            }
          }

          v19 = C3DNodeGetGeometry(a1);
          if (v19)
          {
            v20 = v19;
            v21 = C3DGeometryGetMesh(v19);
            if (v21)
            {
              v22 = v21;
              ElementsCount = C3DMeshGetElementsCount(v21);
              if (ElementsCount)
              {
                v24 = ElementsCount;
                theArray = v8;
                v55 = v4;
                v53 = v10;
                v25 = 0x20040DC1BFBCFLL;
                allocator = *MEMORY[0x277CBECE8];
                Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], ElementsCount, 0);
                if (v24 >= 1)
                {
                  for (i = 0; i != v24; ++i)
                  {
                    v28 = v25;
                    v29 = malloc_type_malloc(0x20uLL, v25);
                    v29[1] = v22;
                    *v29 = C3DMeshGetElementAtIndex(v22, i, 1);
                    v29[2] = C3DGeometryGetMaterialAtIndex(v20, i);
                    v29[3] = a1;
                    v30 = v29;
                    v25 = v28;
                    CFArrayAppendValue(Mutable, v30);
                  }
                }

                if (Mutable)
                {
                  Count = CFArrayGetCount(Mutable);
                  CFArrayAppendValue(v5, a1);
                  if (Count >= 1)
                  {
                    v32 = v25;
                    v33 = 0;
                    v34 = a2[2];
                    v35 = a2[5];
                    do
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v33);
                      if (!ValueAtIndex)
                      {
                        v37 = scn_default_log();
                        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
                        {
                          __CreateAndDispatchRendererElements_cold_2(v57, v58, v37);
                        }
                      }

                      C3DNodeGetWorldAlpha(ValueAtIndex[3]);
                      v40 = 0;
                      if (v38 >= 1.0)
                      {
                        v39 = ValueAtIndex[2];
                        if (!v39 || C3DMaterialIsOpaque(v39))
                        {
                          v40 = 1;
                        }
                      }

                      v41 = ValueAtIndex[2];
                      if (v41 && C3DMaterialIsDoubleSided(v41))
                      {
                        v40 |= 2uLL;
                      }

                      Type = C3DMeshElementGetType(*ValueAtIndex);
                      if (Type == 2)
                      {
                        v43 = (v40 | 0x10);
                      }

                      else if (Type == 1)
                      {
                        v43 = (v40 | 8);
                      }

                      else if (Type)
                      {
                        v43 = v40;
                      }

                      else
                      {
                        v43 = (v40 | 4);
                      }

                      Value = CFDictionaryGetValue(v55, v43);
                      if (!Value)
                      {
                        Value = CFDictionaryCreateMutable(allocator, 0, 0, MEMORY[0x277CBF150]);
                        CFDictionarySetValue(v55, v43, Value);
                        CFRelease(Value);
                      }

                      CFDictionarySetValue(v35, ValueAtIndex, *(v34 + 18));
                      v45 = CFDictionaryGetValue(Value, ValueAtIndex[2]);
                      if (!v45)
                      {
                        v45 = CFArrayCreateMutable(allocator, 0, 0);
                        CFDictionarySetValue(Value, ValueAtIndex[2], v45);
                        CFRelease(v45);
                      }

                      CFArrayAppendValue(v45, ValueAtIndex);
                      ++v33;
                    }

                    while (Count != v33);
                    PositionSource = C3DMeshGetPositionSource(v53, 1);
                    if (PositionSource)
                    {
                      v47 = 0;
                      *(v34 + 18) += C3DMeshSourceGetCount(PositionSource);
                      do
                      {
                        SourcesCountForSemantic = C3DMeshGetSourcesCountForSemantic(v53, v47);
                        if (SourcesCountForSemantic > *(v34 + v47))
                        {
                          *(v34 + v47) = SourcesCountForSemantic;
                        }

                        ++v47;
                      }

                      while (v47 != 9);
                    }

                    v49 = malloc_type_malloc(0x20uLL, v32);
                    v50 = CFArrayGetValueAtIndex(Mutable, 0);
                    v51 = v50[1];
                    *v49 = *v50;
                    v49[1] = v51;
                    CFArrayAppendValue(theArray, v49);
                  }

                  CFRelease(Mutable);
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void __MergeRendererElements(char a1, CFDictionaryRef theDict, uint64_t *a3)
{
  v3 = a3[1];
  context = *a3;
  v6 = 0;
  if (*(v3 + 144) < 0x10000)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  HIDWORD(v6) = v4;
  LOBYTE(v6) = (a1 | *(v3 + 152)) & 1;
  v7 = a3[2];
  CFDictionaryApplyFunction(theDict, __MergeRendererElementsSharingSameMaterial, &context);
}

void __DestroyFlattenElementsArray(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      free(ValueAtIndex);
    }
  }

  CFArrayRemoveAllValues(a1);
}

float32x4_t *C3DSplitMeshIfNeeded(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Geometry = C3DNodeGetGeometry(a1);
  if (!Geometry)
  {
    return 0;
  }

  if (C3DNodeGetSkinner(a1))
  {
    return 0;
  }

  if (C3DNodeGetMorpher(a1))
  {
    return 0;
  }

  Mesh = C3DGeometryGetMesh(Geometry);
  if (!Mesh)
  {
    return 0;
  }

  v15 = Mesh;
  PositionSource = C3DMeshGetPositionSource(Mesh, 1);
  v17 = PositionSource ? C3DMeshSourceGetCount(PositionSource) : 0;
  if (v17 <= a2)
  {
    return 0;
  }

  v12 = C3DNodeCreate();
  Name = C3DNodeGetName(a1);
  if (Name)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"%@-splitContainer", Name);
    C3DNodeSetName(v12, v19);
    CFRelease(v19);
  }

  else
  {
    C3DNodeSetName(v12, @"splitContainer");
  }

  v44 = a1;
  C3DNodeAddChildNode(a1, v12);
  CFRelease(v12);
  v20 = malloc_type_malloc(8 * v17, 0x100004000313F17uLL);
  v53 = 8 * v17;
  v21 = malloc_type_malloc(8 * v17, 0x100004000313F17uLL);
  MaterialsCount = C3DGeometryGetMaterialsCount(Geometry);
  ElementsCount = C3DMeshGetElementsCount(v15);
  if (ElementsCount >= 1)
  {
    v23 = 0;
    v24 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v51 = v12;
    v52 = v15;
    v54 = MaterialsCount;
    do
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(v15, v23, 1);
      v57 = v24 + 1;
      _createSubNodeForSplittedMesh(v12, v24, &v60, &v58, &v59);
      v26 = v58;
      Type = C3DMeshElementGetType(ElementAtIndex);
      if (Type == 3)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2 * (Type == 2);
      }

      C3DMeshElementSetType(v26, v28);
      DoubleSided = C3DMeshElementGetDoubleSided(ElementAtIndex);
      v55 = v26;
      C3DMeshElementSetDoubleSided(v26, DoubleSided);
      PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
      IndexCountPerPrimitive = C3DMeshElementGetIndexCountPerPrimitive(ElementAtIndex);
      bzero(v21, v53);
      v32 = PrimitiveCount;
      v47 = v23 / MaterialsCount;
      v48 = v23;
      if (PrimitiveCount < 1)
      {
        v56 = 0;
        v36 = 0;
      }

      else
      {
        v33 = 0;
        v34 = 0;
        v56 = 0;
        v50 = IndexCountPerPrimitive - 1;
        v46 = PrimitiveCount;
        do
        {
          if (IndexCountPerPrimitive < 1)
          {
            v36 = v33;
          }

          else
          {
            v35 = 0;
            v36 = v33;
            do
            {
              Index = C3DMeshElementGetIndex(ElementAtIndex, v34, v35, 0);
              if (!*(v21 + Index))
              {
                v20[v36++] = Index;
                *(v21 + Index) = v36;
                if (v36 == a2)
                {
                  if (v35 == v50)
                  {
                    v33 = a2;
                  }

                  v34 -= v35 != v50;
                  _finalizeSplit(v56, (v34 + 1), v21, v20, v33, ElementAtIndex, v55, v60, v52);
                  if (v54)
                  {
                    MaterialAtIndex = C3DGeometryGetMaterialAtIndex(Geometry, v48 - v47 * v54);
                    C3DGeometryInsertMaterialAtIndex(v59, MaterialAtIndex, 0);
                  }

                  _createSubNodeForSplittedMesh(v51, v57, &v60, &v58, &v59);
                  v39 = v58;
                  v40 = C3DMeshElementGetType(ElementAtIndex);
                  if (v40 == 3)
                  {
                    v41 = 3;
                  }

                  else
                  {
                    v41 = 2 * (v40 == 2);
                  }

                  C3DMeshElementSetType(v39, v41);
                  v42 = C3DMeshElementGetDoubleSided(ElementAtIndex);
                  v55 = v39;
                  C3DMeshElementSetDoubleSided(v39, v42);
                  bzero(v21, v53);
                  v36 = 0;
                  v56 = v34 + 1;
                  ++v57;
                  v35 = IndexCountPerPrimitive;
                }
              }

              ++v35;
            }

            while (v35 < IndexCountPerPrimitive);
          }

          ++v34;
          v33 = v36;
          v32 = v46;
        }

        while (v34 < v46);
      }

      v15 = v52;
      if (v56 < v32)
      {
        _finalizeSplit(v56, v32, v21, v20, v36, ElementAtIndex, v55, v60, v52);
        if (v54)
        {
          v43 = C3DGeometryGetMaterialAtIndex(Geometry, v48 - v47 * v54);
          C3DGeometryInsertMaterialAtIndex(v59, v43, 0);
        }
      }

      v23 = v48 + 1;
      v12 = v51;
      MaterialsCount = v54;
      v24 = v57;
    }

    while ((v48 + 1) != ElementsCount);
  }

  free(v21);
  free(v20);
  C3DNodeSetGeometry(v44, 0);
  return v12;
}

void _createSubNodeForSplittedMesh(uint64_t a1, uint64_t a2, void *a3, void *a4, __C3DGeometry **a5)
{
  v10 = C3DNodeCreate();
  C3DNodeAddChildNode(a1, v10);
  Name = C3DNodeGetName(a1);
  if (Name)
  {
    v12 = CFStringCreateWithFormat(0, 0, @"%@-split%d", Name, a2);
    C3DNodeSetName(v10, v12);
    CFRelease(v12);
  }

  v13 = C3DGeometryCreate();
  v14 = C3DMeshCreate();
  C3DNodeSetGeometry(v10, v13);
  C3DGeometrySetMesh(v13, v14);
  v15 = C3DMeshElementCreate();
  C3DMeshAppendElement(v14, v15);
  CFRelease(v15);
  CFRelease(v14);
  CFRelease(v13);
  CFRelease(v10);
  *a4 = v15;
  *a3 = v14;
  *a5 = v13;
}

void _finalizeSplit(uint64_t a1, const __CFAllocator *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a1;
  *&v72[5] = *MEMORY[0x277D85DE8];
  v14 = a2 - a1;
  v15 = a5 > 255;
  if (a5 <= 255)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  IndexCountPerPrimitive = C3DMeshElementGetIndexCountPerPrimitive(a6);
  v18 = IndexCountPerPrimitive;
  v66 = a5;
  v19 = a5 < 0x10000;
  if (a5 < 0x10000)
  {
    v20 = v16;
  }

  else
  {
    v20 = 4;
  }

  v21 = 2;
  if (v19)
  {
    v21 = v15;
  }

  length = (IndexCountPerPrimitive << v21) * v14;
  bytes = malloc_type_malloc(length, 0xEE043048uLL);
  bytesDeallocator = a2;
  v55 = a2 - v13;
  v22 = 0;
  if (a2 > v13)
  {
    do
    {
      if (v18 >= 1)
      {
        v23 = 0;
        v67 = &bytes[2 * v22];
        v24 = v22 + bytes;
        theArray = v22;
        v25 = &bytes[4 * v22];
        do
        {
          Index = C3DMeshElementGetIndex(a6, v13, v23, 0);
          if (!*(a3 + 8 * Index))
          {
            v27 = scn_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              _finalizeSplit_cold_1(v69, &v70, v27);
            }
          }

          v28 = *(a3 + 8 * Index) - 1;
          if (v20 == 2)
          {
            *&v67[2 * v23] = v28;
          }

          else if (v20 == 1)
          {
            v24[v23] = v28;
          }

          else
          {
            *&v25[4 * v23] = v28;
          }

          ++v23;
        }

        while (v18 != v23);
        v22 = (theArray + v23);
      }

      ++v13;
    }

    while (v13 != bytesDeallocator);
  }

  if (v22 != (v18 * v55))
  {
    v29 = scn_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      _finalizeSplit_cold_2(v29, v30, v31, v32, v33, v34, v35, v36);
    }
  }

  bytesDeallocatora = *MEMORY[0x277CBECE8];
  v37 = CFDataCreateWithBytesNoCopy(0, bytes, length, *MEMORY[0x277CBECE8]);
  C3DMeshElementSetPrimitives(a7, v55, v37, v20);
  CFRelease(v37);
  theArraya = C3DMeshCopyAllSources(a9, 1);
  bytesa = CFArrayGetCount(theArraya);
  v38 = v66;
  if (bytesa >= 1)
  {
    for (i = 0; i != bytesa; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArraya, i);
      ComponentsCountPerValue = C3DMeshSourceGetComponentsCountPerValue(ValueAtIndex);
      ValueType = C3DMeshSourceGetValueType(ValueAtIndex);
      Accessor = C3DMeshSourceGetAccessor(ValueAtIndex);
      v68 = ComponentsCountPerValue;
      v44 = C3DSizeOfBaseType(ValueType) * ComponentsCountPerValue;
      v45 = v44 * v38;
      v46 = malloc_type_malloc(v44 * v38, 0x100004077774924uLL);
      if (v38 < 1)
      {
        v47 = 0;
      }

      else
      {
        v47 = 0;
        v48 = a4;
        do
        {
          v49 = *v48++;
          ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, v49);
          memcpy(&v46[v47], ValuePtrAtIndex, v44);
          v47 += v44;
          --v38;
        }

        while (v38);
      }

      if (v47 != v45)
      {
        v51 = scn_default_log();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
        {
          _finalizeSplit_cold_3(v71, v72, v51);
        }
      }

      v52 = CFDataCreateWithBytesNoCopy(0, v46, v45, bytesDeallocatora);
      Semantic = C3DMeshSourceGetSemantic(ValueAtIndex);
      v38 = v66;
      v54 = C3DMeshSourceCreate(v52, Semantic, v66, v68, ValueType);
      CFRelease(v52);
      C3DMeshAddSource(a8, v54, 0, 0);
      CFRelease(v54);
    }
  }

  CFRelease(theArraya);
}

void C3DSplitMeshesIfNeededInNodeTree(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v13 = a2;
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
  v12[0] = 0;
  v12[1] = _C3DSplitMeshesIfNeededInNodeTree;
  v12[2] = 0;
  C3DNodeIterateTree(a1, v12, 1, &v13);
  CFRelease(cf);
}

uint64_t _C3DSplitMeshesIfNeededInNodeTree(uint64_t a1, uint64_t *a2)
{
  Geometry = C3DNodeGetGeometry(a1);
  if (Geometry)
  {
    Copy = Geometry;
    v6 = a2[1];
    Value = CFDictionaryGetValue(v6, Geometry);
    if (Value)
    {
      Copy = C3DNodeCreateCopy(Value, 1);
      C3DNodeAddChildNode(a1, Copy);
      C3DNodeSetGeometry(a1, 0);
    }

    else
    {
      v8 = *a2;
      CFRetain(Copy);
      v9 = C3DSplitMeshIfNeeded(a1, v8);
      if (v9)
      {
        CFDictionarySetValue(v6, Copy, v9);
      }
    }

    CFRelease(Copy);
  }

  return 0;
}

uint64_t C3DVRAMResourceGetID(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DVRAMResourceGetID_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 48);
}

void C3DVRAMResourceSetID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DVRAMResourceSetID_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 48) = a2;
}

uint64_t C3DVRAMResourceIsAttachment(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DVRAMResourceSetID_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 60);
}

uint64_t C3DVRAMResourceLock(uint64_t a1)
{
  v1 = (*(a1 + 56) + 1);
  *(a1 + 56) = v1;
  return v1;
}

uint64_t C3DVRAMResourceUnlock(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DVRAMResourceSetID_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    *(a1 + 56) = v10 - 1;
  }

  else
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_21BEF7000, v11, OS_LOG_TYPE_DEFAULT, "Warning: unlock not locked ressource\n", v13, 2u);
    }
  }

  return *(a1 + 56);
}

uint64_t C3DMeshCreateWithMeshSourcesAndMeshElements(const __CFArray *a1, const __CFArray *a2, uint64_t a3)
{
  if (!a3)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateWithMeshSourcesAndMeshElements_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DMeshCreate();
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v16 = Count;
    for (i = 0; i != v16; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      C3DMeshAddSource(v14, ValueAtIndex, *(a3 + i), 0);
    }
  }

  v19 = CFArrayGetCount(a2);
  if (v19 >= 1)
  {
    v20 = v19;
    for (j = 0; j != v20; ++j)
    {
      v22 = CFArrayGetValueAtIndex(a2, j);
      C3DMeshAppendElement(v14, v22);
    }
  }

  return v14;
}

uint64_t C3DMeshCreateByMergingMeshes(const __CFArray *a1)
{
  *(&v54[1] + 4) = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v2 = Count;
  if (Count != 1)
  {
    v42 = C3DMeshCreate();
    Mutable = C3DMeshSourceCreateMutable(0, 0, 0, 3, 1);
    v6 = C3DMeshSourceCreateMutable(0, 1, 0, 3, 1);
    v39 = C3DMeshSourceCreateMutable(0, 3, 0, 2, 1);
    if (v2 >= 1)
    {
      v7 = 0;
      v8 = 0;
      v37 = v6;
      v38 = Mutable;
      v35 = *MEMORY[0x277CBECE8];
      v36 = v2;
      while (1)
      {
        v41 = v8;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
        SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(ValueAtIndex, 0, 0, 1);
        v11 = C3DMeshGetSourceWithSemanticAtIndex(ValueAtIndex, 1, 0, 1);
        v12 = C3DMeshGetSourceWithSemanticAtIndex(ValueAtIndex, 3, 0, 1);
        v13 = C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
        if (v13 >= 1)
        {
          for (i = 0; i != v13; ++i)
          {
            DWORD2(v46) = 0;
            *&v46 = 0;
            *&v15 = C3DMeshSourceGetValueAtIndexAsVector3(SourceWithSemanticAtIndex, i);
            v46 = v15;
            C3DMeshSourceAppendVector3(Mutable, &v46, 1);
            *&bytes[8] = 0;
            *bytes = 0;
            *&v16 = C3DMeshSourceGetValueAtIndexAsVector3(v11, i);
            *bytes = v16;
            C3DMeshSourceAppendVector3(v6, bytes, 1);
            ValueAtIndexAsVector2 = 0.0;
            ValueAtIndexAsVector2 = C3DMeshSourceGetValueAtIndexAsVector2(v12, i);
            C3DMeshSourceAppendVector2(v39, &ValueAtIndexAsVector2, 1);
          }
        }

        v17 = v13 + v7;
        if (C3DMeshGetElementsCount(ValueAtIndex) >= 1)
        {
          break;
        }

LABEL_46:
        v8 = v41 + 1;
        v7 = v17;
        v6 = v37;
        Mutable = v38;
        if (v41 + 1 == v36)
        {
          goto LABEL_47;
        }
      }

      v18 = 0;
      while (1)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(ValueAtIndex, v18, 1);
        Type = C3DMeshElementGetType(ElementAtIndex);
        v21 = CFDataCreateMutable(v35, 0);
        PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        C3DMeshElementGetFastIndexLookupInfo(ElementAtIndex, &v46);
        if (v17 >= 0x10000)
        {
          break;
        }

        if (PrimitiveCount >= 1)
        {
          for (j = 0; PrimitiveCount != j; ++j)
          {
            if (Type == 3)
            {
              *bytes = v46;
              v44 = v47;
              v45 = v48;
              *bytes = v7 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 0, 0);
              p_ValueAtIndexAsVector2 = bytes;
              v25 = v21;
              v26 = 2;
            }

            else if (Type == 2)
            {
              *bytes = v46;
              v44 = v47;
              v45 = v48;
              LOWORD(ValueAtIndexAsVector2) = v7 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 0, 0);
              *bytes = v46;
              v44 = v47;
              v45 = v48;
              WORD1(ValueAtIndexAsVector2) = v7 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 1, 0);
              p_ValueAtIndexAsVector2 = &ValueAtIndexAsVector2;
              v25 = v21;
              v26 = 4;
            }

            else
            {
              if (Type)
              {
                v27 = scn_default_log();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
                {
                  C3DMeshCreateByMergingMeshes_cold_1(v53, v54, v27);
                }

                continue;
              }

              *bytes = v46;
              v44 = v47;
              v45 = v48;
              LOWORD(ValueAtIndexAsVector2) = v7 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 0, 0);
              *bytes = v46;
              v44 = v47;
              v45 = v48;
              WORD1(ValueAtIndexAsVector2) = v7 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 1, 0);
              *bytes = v46;
              v44 = v47;
              v45 = v48;
              WORD2(ValueAtIndexAsVector2) = v7 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 2, 0);
              p_ValueAtIndexAsVector2 = &ValueAtIndexAsVector2;
              v25 = v21;
              v26 = 6;
            }

            CFDataAppendBytes(v25, p_ValueAtIndexAsVector2, v26);
          }
        }

        v33 = 2;
LABEL_43:
        v34 = C3DMeshElementCreate();
        C3DMeshElementInit(v34, Type, PrimitiveCount, v21, v33);
        C3DMeshAppendElement(v42, v34);
        if (v34)
        {
          CFRelease(v34);
        }

        CFRelease(v21);
        if (++v18 >= C3DMeshGetElementsCount(ValueAtIndex))
        {
          goto LABEL_46;
        }
      }

      if (PrimitiveCount < 1)
      {
LABEL_42:
        v33 = 4;
        goto LABEL_43;
      }

      v28 = 0;
      while (1)
      {
        if (Type == 3)
        {
          *bytes = v46;
          v44 = v47;
          v45 = v48;
          *bytes = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v28, 0, 0) + v7;
          v29 = bytes;
          v30 = v21;
          v31 = 4;
        }

        else if (Type == 2)
        {
          *bytes = v46;
          v44 = v47;
          v45 = v48;
          LODWORD(ValueAtIndexAsVector2) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v28, 0, 0) + v7;
          *bytes = v46;
          v44 = v47;
          v45 = v48;
          HIDWORD(ValueAtIndexAsVector2) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v28, 1, 0) + v7;
          v29 = &ValueAtIndexAsVector2;
          v30 = v21;
          v31 = 8;
        }

        else
        {
          if (Type)
          {
            v32 = scn_default_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              C3DMeshCreateByMergingMeshes_cold_1(v49, &v50, v32);
            }

            goto LABEL_39;
          }

          *bytes = v46;
          v44 = v47;
          v45 = v48;
          LODWORD(ValueAtIndexAsVector2) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v28, 0, 0) + v7;
          *bytes = v46;
          v44 = v47;
          v45 = v48;
          HIDWORD(ValueAtIndexAsVector2) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v28, 1, 0) + v7;
          *bytes = v46;
          v44 = v47;
          v45 = v48;
          v52 = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v28, 2, 0) + v7;
          v29 = &ValueAtIndexAsVector2;
          v30 = v21;
          v31 = 12;
        }

        CFDataAppendBytes(v30, v29, v31);
LABEL_39:
        if (PrimitiveCount == ++v28)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_47:
    C3DMeshSourceMakeImmutable(Mutable);
    C3DMeshSourceMakeImmutable(v6);
    C3DMeshSourceMakeImmutable(v39);
    C3DMeshAddSource(v42, Mutable, 0, 0);
    C3DMeshAddSource(v42, v6, 0, 0);
    C3DMeshAddSource(v42, v39, 0, 0);
    CFRelease(Mutable);
    CFRelease(v6);
    CFRelease(v39);
    return v42;
  }

  v3 = CFArrayGetValueAtIndex(a1, 0);

  return C3DMeshCreateCopy(v3);
}

CFTypeRef C3DMeshSubdivide(uint64_t a1, CFIndex a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v120 = *MEMORY[0x277D85DE8];
  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a3);
  if (C3DMeshElementGetType(a3) == 2)
  {
    return 0;
  }

  v104 = a7;
  v101 = C3DMeshElementEditorCreateWithMeshElementAndCapacity(a3, 4 * PrimitiveCount);
  Count = C3DMeshSourceGetCount(a4);
  v16 = C3DEdgeArrayCreateFromMeshElement(a1, a2);
  v17 = C3DEdgeArrayGetCount(v16);
  v18 = malloc_type_malloc(16 * v17, 0x1000040451B5BE8uLL);
  v102 = PrimitiveCount;
  if (a6)
  {
    v19 = malloc_type_malloc(8 * v17, 0x100004000313F17uLL);
    v106 = a5 != 0;
LABEL_7:
    if (v17 >= 1)
    {
      for (i = 0; i != v17; ++i)
      {
        EdgeAtIndex = C3DEdgeArrayGetEdgeAtIndex(v16, i);
        v22 = EdgeAtIndex;
        if (v106)
        {
          *&v23 = C3DMeshSourceGetValueAtIndexAsVector3(a5, *EdgeAtIndex);
          *cfb = v23;
          *v24.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a5, v22[1]);
          *v25.i64 = C3DVector3MidVector(*cfb, v24);
          v26 = vmulq_f32(v25, v25);
          *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
          *v26.f32 = vrsqrte_f32(v27);
          *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
          v18[i] = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
        }

        if (a6)
        {
          ValueAtIndexAsVector2 = C3DMeshSourceGetValueAtIndexAsVector2(a6, *v22);
          v19[i] = vmul_f32(vadd_f32(*&ValueAtIndexAsVector2, COERCE_FLOAT32X2_T(C3DMeshSourceGetValueAtIndexAsVector2(a6, v22[1]))), 0x3F0000003F000000);
        }
      }
    }

    if (v106)
    {
      C3DMeshSourceAppendVector3(a5, v18, v17);
    }

    if (a6)
    {
      C3DMeshSourceAppendVector2(a6, v19, v17);
    }

    if (v19)
    {
      free(v19);
    }

    goto LABEL_20;
  }

  v106 = a5 != 0;
  if (a5)
  {
    v19 = 0;
    goto LABEL_7;
  }

LABEL_20:
  if (v17 >= 1)
  {
    for (j = 0; j != v17; ++j)
    {
      v30 = C3DEdgeArrayGetEdgeAtIndex(v16, j);
      *&v31 = C3DMeshSourceGetValueAtIndexAsVector3(a4, *v30);
      *cfc = v31;
      *v32.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a4, v30[1]);
      *v33.i64 = C3DVector3MidVector(*cfc, v32);
      v18[j] = v33;
    }

    if ((v106 & v104) == 1)
    {
      for (k = 0; k != v17; ++k)
      {
        v35 = C3DEdgeArrayGetEdgeAtIndex(v16, k);
        v36 = *v35;
        v37 = v35[1];
        *v38.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a4, *v35);
        v107 = v38;
        v119 = v38;
        *v39.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a4, v37);
        v100 = v39;
        v118 = v39;
        *&v40 = C3DMeshSourceGetValueAtIndexAsVector3(a5, v36);
        v117 = v40;
        *&v41 = C3DMeshSourceGetValueAtIndexAsVector3(a5, v37);
        v116 = v41;
        v105 = v18[k];
        *v42.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a5, k + Count);
        v43 = v42;
        v44 = vsubq_f32(v107, v105);
        v45 = vmulq_f32(v44, v44);
        v46 = vsubq_f32(v100, v105);
        v47 = vmulq_f32(v46, v46);
        v115 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v45, v45, 8uLL), *&vextq_s8(v47, v47, 8uLL)), vadd_f32(vzip1_s32(*v45.i8, *v47.i8), vzip2_s32(*v45.i8, *v47.i8))));
        v48 = 0uLL;
        v49 = &v119;
        v50 = &v117;
        v51 = &v115;
        v52 = 1;
        *cf = v43;
        do
        {
          v108 = v48;
          v53 = v52;
          v54 = vsubq_f32(*v49, v105);
          v55 = vmulq_f32(v54, v54);
          *&v56 = v55.f32[2] + vaddv_f32(*v55.f32);
          *v55.f32 = vrsqrte_f32(v56);
          *v55.f32 = vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32)));
          v57 = C3DVector3Angle(vmulq_n_f32(v54, vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32))).f32[0]), v43);
          v58 = C3DVector3Angle(*cf, *v50) * 0.5;
          v59 = cosf(v58);
          if (v59 == 0.0)
          {
            v60 = scn_default_log();
            v61 = 1.0;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              C3DMeshSubdivide_cold_1(&buf, v114, v60);
            }
          }

          else
          {
            v61 = v59;
          }

          v62 = v51->f32[0];
          v63 = cosf(v57 - v58);
          v52 = 0;
          v43 = *cf;
          v48 = vaddq_f32(v108, vmulq_n_f32(*cf, ((v63 * v62) / v61) * 0.5));
          v49 = &v118;
          v50 = &v116;
          v51 = (&v115 + 4);
        }

        while ((v53 & 1) != 0);
        v18[k] = vaddq_f32(v105, v48);
      }
    }
  }

  C3DMeshSourceAppendVector3(a4, v18, v17);
  free(v18);
  cfa = C3DTriangulationInfoCreateFromMeshElement(a3, a4, v16);
  if (v102 >= 1)
  {
    for (m = 0; m != v102; ++m)
    {
      EdgesAtFaceIndex = C3DTriangulationInfoGetEdgesAtFaceIndex(cfa, m);
      v67 = *EdgesAtFaceIndex;
      v66 = EdgesAtFaceIndex[1];
      v68 = EdgesAtFaceIndex[2];
      v69 = C3DEdgeArrayGetEdgeAtIndex(v16, *EdgesAtFaceIndex);
      v70 = C3DEdgeArrayGetEdgeAtIndex(v16, v66);
      v71 = C3DEdgeArrayGetEdgeAtIndex(v16, v68);
      Index = C3DMeshElementGetIndex(a3, m, 0, 0);
      v73 = C3DMeshElementGetIndex(a3, m, 2, 0);
      v74 = *v69;
      if (*v69 == Index)
      {
        v75 = v69[1];
        v76 = Count;
        v77 = v67 + Count;
        v78 = v75 == v73;
        if (v75 == v73)
        {
          v79 = v67 + Count;
        }

        else
        {
          v79 = -1;
        }

        if (v78)
        {
          v77 = -1;
        }

        v80 = -1;
      }

      else
      {
        v81 = v69[1];
        v76 = Count;
        v82 = v81 == Index;
        if (v81 == Index)
        {
          v77 = v67 + Count;
        }

        else
        {
          v77 = -1;
        }

        if (v82)
        {
          v80 = -1;
        }

        else
        {
          v80 = v67 + Count;
        }

        v83 = v74 == v73;
        if (v74 == v73)
        {
          v79 = v77;
        }

        else
        {
          v79 = -1;
        }

        if (v83)
        {
          v77 = -1;
        }
      }

      if (*v70 == Index)
      {
        if (v70[1] == v73)
        {
          v79 = v66 + v76;
        }

        else
        {
          v77 = v66 + v76;
        }
      }

      else
      {
        v84 = v70[1];
        v85 = v66 + v76;
        v86 = v84 == Index;
        if (v84 == Index)
        {
          v87 = v66 + v76;
        }

        else
        {
          v80 = v66 + v76;
          v87 = v77;
        }

        if (!v86)
        {
          v85 = v79;
        }

        if (*v70 == v73)
        {
          v79 = v85;
        }

        else
        {
          v77 = v87;
        }
      }

      v88 = *v71;
      if (*v71 == Index)
      {
        v89 = v71[1];
        if (v89 == v73)
        {
          v90 = v68 + v76;
        }

        else
        {
          v90 = v79;
        }

        if (v89 == v73)
        {
          v91 = v77;
        }

        else
        {
          v91 = v68 + v76;
        }
      }

      else
      {
        v92 = v71[1];
        v93 = v68 + v76;
        v94 = v92 == Index;
        if (v92 == Index)
        {
          v95 = v68 + v76;
        }

        else
        {
          v80 = v68 + v76;
          v95 = v77;
        }

        if (!v94)
        {
          v93 = v79;
        }

        if (v88 == v73)
        {
          v90 = v93;
        }

        else
        {
          v90 = v79;
        }

        if (v88 == v73)
        {
          v91 = v77;
        }

        else
        {
          v91 = v95;
        }
      }

      if (v90 == -1 || v91 == -1 || v80 == -1)
      {
        v98 = scn_default_log();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
        {
          C3DMeshSubdivide_cold_2(&v119, (v119.i64 + 4), v98);
        }
      }

      C3DMeshElementEditorSubdivideTriangleAtIndex(v101, m, v90, v91, v80);
    }
  }

  MeshElement = C3DMeshElementEditorGenerateMeshElement(v101);
  CFRetain(MeshElement);
  CFRelease(v101);
  CFRelease(v16);
  CFRelease(cfa);
  return CFAutorelease(MeshElement);
}

uint64_t C3DMeshCopyWithTransform(uint64_t a1, float32x4_t *a2)
{
  memset(v15, 0, sizeof(v15));
  Copy = C3DMeshCreateCopy(a1);
  PositionSource = C3DMeshGetPositionSource(Copy, 0);
  DeepCopy = C3DMeshSourceCreateDeepCopy(PositionSource);
  Accessor = C3DGenericSourceGetAccessor(DeepCopy);
  Count = C3DMeshSourceGetCount(DeepCopy);
  __C3DTransformFloatsInAccessor(Accessor, 0, Count, a2, 0);
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 0, 0);
  C3DMeshSetSourceWithInputSet(Copy, DeepCopy, 0, ChannelForSourceWithSemanticAtIndex);
  NormalSource = C3DMeshGetNormalSource(Copy, 0);
  if (NormalSource)
  {
    v11 = NormalSource;
    v12 = C3DMeshSourceCreateDeepCopy(NormalSource);
    __MakeNormalMatrix(a2, v15);
    __TransformAndAppendMeshSource(v12, v11, v15, 0);
    v13 = C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 1, 0);
    C3DMeshSetSourceWithInputSet(Copy, v12, 0, v13);
    CFRelease(v12);
  }

  CFRelease(DeepCopy);
  return Copy;
}

void __C3DTransformFloatsInAccessor(void *a1, uint64_t a2, uint64_t a3, float32x4_t *a4, int a5)
{
  if (a3 >= 1)
  {
    v19 = v5;
    v20 = v6;
    v9 = a3;
    do
    {
      MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(a1, a2);
      v13.i64[0] = *MutableValuePtrAtIndex;
      v13.i32[2] = *(MutableValuePtrAtIndex + 2);
      v14 = a4[1];
      v18[0] = *a4;
      v18[1] = v14;
      v15 = a4[3];
      v18[2] = a4[2];
      v18[3] = v15;
      if (a5)
      {
        v16 = C3DVector3Rotate(v18, v13);
      }

      else
      {
        v16 = C3DVector3MultMatrix4x4(v18, v13);
      }

      *MutableValuePtrAtIndex = v16;
      *(MutableValuePtrAtIndex + 2) = v17;
      ++a2;
      --v9;
    }

    while (v9);
  }
}

void __TransformAndAppendMeshSource(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  Accessor = C3DGenericSourceGetAccessor(a1);
  v9 = C3DGenericSourceGetAccessor(a2);
  Count = C3DSourceAccessorGetCount(v9);
  if (C3DSourceAccessorCopyDataToAccessor(v9, Accessor, a4))
  {
    MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, 0);
    v12 = C3DSourceAccessorGetCount(Accessor);
    ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(v9);
    _C3DMeshSourceSetupNonInitializedComponents(a1, MutableValuePtrAtIndex, v12, ComponentsCountPerValue);
    if (a3)
    {
      v14 = C3DMeshSourceGetSemantic(a1) == 1;

      __C3DTransformFloatsInAccessor(Accessor, a4, Count, a3, v14);
    }
  }

  else
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __TransformAndAppendMeshSource_cold_1();
    }
  }
}

uint64_t C3DWarmupMaterialVRAMResourcesForEngineContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CommonProfile = C3DMaterialGetCommonProfile(a1);
  if (!CommonProfile)
  {
    return 1;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke;
  v15[3] = &unk_2782FB490;
  v15[5] = CommonProfile;
  v15[6] = a2;
  v15[4] = a3;
  v13[48] = a2;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_2;
  v14[3] = &unk_2782FB490;
  v14[5] = CommonProfile;
  v14[6] = a2;
  v14[4] = a3;
  v13[42] = MEMORY[0x277D85DD0];
  v13[43] = 3221225472;
  v13[44] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_3;
  v13[45] = &unk_2782FB490;
  v13[46] = a3;
  v13[47] = CommonProfile;
  v13[35] = MEMORY[0x277D85DD0];
  v13[36] = 3221225472;
  v13[37] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_4;
  v13[38] = &unk_2782FB490;
  v13[41] = a2;
  v13[40] = CommonProfile;
  v13[39] = a3;
  v13[28] = MEMORY[0x277D85DD0];
  v13[29] = 3221225472;
  v13[30] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_5;
  v13[31] = &unk_2782FB490;
  v13[34] = a2;
  v13[33] = CommonProfile;
  v13[32] = a3;
  v13[21] = MEMORY[0x277D85DD0];
  v13[22] = 3221225472;
  v13[23] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_6;
  v13[24] = &unk_2782FB490;
  v13[27] = a2;
  v13[26] = CommonProfile;
  v13[25] = a3;
  v13[14] = MEMORY[0x277D85DD0];
  v13[15] = 3221225472;
  v13[16] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_7;
  v13[17] = &unk_2782FB490;
  v13[20] = a2;
  v13[19] = CommonProfile;
  v13[18] = a3;
  v13[7] = MEMORY[0x277D85DD0];
  v13[8] = 3221225472;
  v13[9] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_8;
  v13[10] = &unk_2782FB490;
  v13[13] = a2;
  v13[12] = CommonProfile;
  v13[11] = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_9;
  v13[3] = &unk_2782FB490;
  v13[6] = a2;
  v13[5] = CommonProfile;
  v13[4] = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_10;
  v12[3] = &unk_2782FB490;
  v12[6] = a2;
  v12[5] = CommonProfile;
  v12[4] = a3;
  v10[6] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_11;
  v11[3] = &unk_2782FB490;
  v11[6] = a2;
  v11[4] = a3;
  v11[5] = CommonProfile;
  v9[6] = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_12;
  v10[3] = &unk_2782FB490;
  v10[4] = a3;
  v10[5] = CommonProfile;
  v8[6] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_13;
  v9[3] = &unk_2782FB490;
  v9[4] = a3;
  v9[5] = CommonProfile;
  v7[6] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_14;
  v8[3] = &unk_2782FB490;
  v8[4] = a3;
  v8[5] = CommonProfile;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_15;
  v7[3] = &unk_2782FB490;
  v7[4] = a3;
  v7[5] = CommonProfile;
  return C3DExecuteProgressBlocks(v15, v13, v12, v11, v10, v9, v8, v7, v14);
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 1, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 1);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_2(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 2, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 2);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_3(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 4, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 4);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_4(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 3, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 3);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_5(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 0, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 0);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_6(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 5, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 5);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_7(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 6, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 6);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_8(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 7, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 7);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_9(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 9, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 9);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_10(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 8, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 8);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_11(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 10, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 10);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_12(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 11, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 11);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_13(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 15, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 15);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_14(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 12, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 12);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_15(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 13, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 13);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_16(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 14, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 14);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_17(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 16, 0);
  if (EffectSlot)
  {
    v5 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v5];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      ResourceManager = C3DEngineContextGetResourceManager(v3);
      Image = C3DEffectSlotGetImage(v5);
      if (Image)
      {
        v10 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 16);
        C3DResourceManagerMakeImageResident(ResourceManager, v10, TextureSampler, RendererContextGL);
      }
    }
  }

  v12 = a1[4];
  if (v12)
  {
    return (*(v12 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t C3DWarmupGeometryVRAMResourcesForEngineContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(a2);
  ResourceManager = C3DEngineContextGetResourceManager(a2);
  RenderContext = C3DEngineContextGetRenderContext(a2);
  v9 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke;
  v19[3] = &unk_2782FB490;
  v19[5] = a1;
  v19[6] = a2;
  v19[4] = a3;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke_2;
  v18[3] = &unk_2782FB4B8;
  v18[6] = a1;
  v18[7] = ResourceManager;
  v18[8] = RendererContextGL;
  v18[4] = v9;
  v18[5] = a3;
  return C3DExecuteProgressBlocks(v19, v10, v11, v12, v13, v14, v15, v16, v18);
}

BOOL __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke(uint64_t *a1)
{
  MaterialsCount = C3DGeometryGetMaterialsCount(a1[5]);
  if (MaterialsCount < 1)
  {
    return 1;
  }

  else
  {
    v3 = MaterialsCount;
    v4 = 0;
    for (i = 0; i != v3; v4 = i >= v3)
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1[5], i);
      C3DWarmupMaterialVRAMResourcesForEngineContext(MaterialAtIndex, a1[6], a1[4]);
      v7 = a1[4];
      if (v7 && ((*(v7 + 16))() & 1) != 0)
      {
        break;
      }

      ++i;
    }
  }

  return v4;
}

uint64_t __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke_2(void *a1)
{
  Mesh = C3DGeometryGetMesh(a1[6]);
  if (!Mesh)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BEF7000, v6, OS_LOG_TYPE_DEFAULT, "Warning: try to preload a geometry with no mesh", buf, 2u);
    }

    return 1;
  }

  v3 = Mesh;
  v4 = a1[4];
  if (v4)
  {
    EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(a1[6]);
    [(SCNMTLResourceManager *)v4 renderResourceForMesh:v3 dataKind:EffectiveDataKindForRendering];
    return 1;
  }

  v7 = C3DMeshCopyAllSources(Mesh, 1);
  Count = CFArrayGetCount(v7);
  if (Count < 1)
  {
LABEL_16:
    CFRelease(v7);
    return 1;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
    if (C3DMeshSourceGetAccessor(ValueAtIndex) && (Accessor = C3DMeshSourceGetAccessor(ValueAtIndex), C3DSourceAccessorGetData(Accessor)))
    {
      C3DResourceManagerMakeMeshSourceResident(a1[7], ValueAtIndex, a1[8]);
    }

    else
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke_2_cold_1(&v16, v17, v13);
      }
    }

    v14 = a1[5];
    if (v14)
    {
      if ((*(v14 + 16))())
      {
        break;
      }
    }

    if (v9 == ++v10)
    {
      goto LABEL_16;
    }
  }

  CFRelease(v7);
  return 0;
}

uint64_t __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke_27(void *a1)
{
  if (a1[4])
  {
    return 1;
  }

  Mesh = C3DGeometryGetMesh(a1[6]);
  ElementsCount = C3DMeshGetElementsCount(Mesh);
  if (ElementsCount < 1)
  {
    return 1;
  }

  v5 = ElementsCount;
  v6 = 0;
  while (1)
  {
    ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, v6, 1);
    C3DResourceManagerMakeMeshElementResident(a1[7], ElementAtIndex, a1[8]);
    v8 = a1[5];
    if (v8)
    {
      if ((*(v8 + 16))())
      {
        break;
      }
    }

    if (v5 == ++v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t C3DWarmupNodeTreeVRAMResourcesForEngineContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __C3DWarmupNodeTreeVRAMResourcesForEngineContext_block_invoke;
  v10[3] = &unk_2782FB4E0;
  v10[4] = &v11;
  C3DNodeApplyHierarchy(a1, v10);
  v6 = *(v12 + 6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __C3DWarmupNodeTreeVRAMResourcesForEngineContext_block_invoke_2;
  v9[3] = &unk_2782FB530;
  v9[5] = a1;
  v9[6] = a2;
  v9[4] = a3;
  v7 = C3DExecuteIncrementalProgressBlock(v6, v9);
  _Block_object_dispose(&v11, 8);
  return v7;
}

BOOL __C3DWarmupNodeTreeVRAMResourcesForEngineContext_block_invoke_2(void *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __C3DWarmupNodeTreeVRAMResourcesForEngineContext_block_invoke_3;
  v6[3] = &unk_2782FB508;
  v2 = a1[5];
  v3 = a1[6];
  v6[4] = a1[4];
  v6[5] = a2;
  v6[6] = &v7;
  v6[7] = v3;
  C3DNodeApplyHierarchy(v2, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return (v4 & 1) == 0;
}

uint64_t __C3DWarmupNodeTreeVRAMResourcesForEngineContext_block_invoke_3(void *a1, uint64_t a2)
{
  v3 = a1[7];
  v4 = a1[4];
  Geometry = C3DNodeGetGeometry(a2);
  if (Geometry && !C3DWarmupGeometryVRAMResourcesForEngineContext(Geometry, v3, v4))
  {
    (*(a1[5] + 16))();
    *(*(a1[6] + 8) + 24) = 1;
    return 2;
  }

  else
  {
    (*(a1[5] + 16))();
    return 0;
  }
}

uint64_t C3DWarmupSceneVRAMResourcesForEngineContext(const void *a1, __n128 *a2, uint64_t a3)
{
  Scene = C3DEngineContextGetScene(a2);
  if (Scene != a1)
  {
    C3DEngineContextSetScene(a2, a1);
  }

  C3DEngineContextSetupForWarmUp(a2, a3);
  EnginePipeline = C3DSceneGetEnginePipeline(a1);
  if (!EnginePipeline)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DWarmupSceneVRAMResourcesForEngineContext_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v20[0] = EnginePipeline;
  v20[1] = a2;
  v21 = 0u;
  v22 = 0u;
  C3DEnginePipelineApplyNotificationQueue(v20);
  C3DEngineContextApplyModifiers(a2, EnginePipeline);
  RenderContext = C3DEngineContextGetRenderContext(a2);
  if (RenderContext)
  {
    v17 = RenderContext;
    C3DEngineContextRenderWithRenderGraph(a2);
    v18 = [(SCNMTLRenderContext *)v17 resourceManager];
    [-[SCNMTLResourceManager libraryManager](v18) waitForShadersCompilation];
  }

  else
  {
    C3DEngineContextRenderMainTechnique(a2);
  }

  if (Scene != a1)
  {
    C3DEngineContextSetScene(a2, 0);
  }

  C3DEngineContextUnSetupForWarmUp(a2);
  return 1;
}

uint64_t C3DCreateTangentsWithGeometryOptimized(uint64_t a1, int a2)
{
  v107 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  PositionSource = C3DMeshGetPositionSource(a1, a2);
  NormalSource = C3DMeshGetNormalSource(a1, a2);
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 3, 0, a2);
  if (!PositionSource && (v15 = scn_default_log(), os_log_type_enabled(v15, OS_LOG_TYPE_FAULT)))
  {
    C3DCreateTangentsWithGeometryOptimized_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
    if (NormalSource)
    {
      goto LABEL_9;
    }
  }

  else if (NormalSource)
  {
    goto LABEL_9;
  }

  v23 = scn_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    C3DCreateTangentsWithGeometryOptimized_cold_3(v23, v24, v25, v26, v27, v28, v29, v30);
  }

LABEL_9:
  if (!SourceWithSemanticAtIndex)
  {
    v31 = scn_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_4(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  v103 = 0u;
  v104 = 0u;
  C3DMeshSourceGetContent(PositionSource, &v103);
  if (!v103 || (v39 = v104, !v104))
  {
    v77 = scn_default_log();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_5();
    }

    return 0;
  }

  v101 = 0u;
  v102 = 0u;
  C3DMeshSourceGetContent(SourceWithSemanticAtIndex, &v101);
  if (!v101 || v102 != v39)
  {
    v78 = scn_default_log();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_6();
    }

    return 0;
  }

  v99 = 0u;
  v100 = 0u;
  C3DMeshSourceGetContent(NormalSource, &v99);
  if (!v99 || v100 != v39)
  {
    v79 = scn_default_log();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_7();
    }

    return 0;
  }

  v96 = v39;
  v40 = 16 * v39;
  v41 = malloc_type_calloc(v40, 1uLL, 0xAA9FED5CuLL);
  length = v40;
  v42 = malloc_type_calloc(v40, 1uLL, 0x6D8B1743uLL);
  ElementsCount = C3DMeshGetElementsCount(a1);
  if (ElementsCount >= 1)
  {
    v45 = ElementsCount;
    v46 = 0;
    v47 = 0;
    v97 = ElementsCount;
    while (1)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a1, v47, 1);
      if (!C3DMeshElementGetType(ElementAtIndex) || C3DMeshElementGetType(ElementAtIndex) == 1)
      {
        v98 = 0;
        Indexes = C3DMeshElementGetIndexes(ElementAtIndex, &v98);
        if (Indexes)
        {
          v50 = Indexes;
          BytePtr = CFDataGetBytePtr(Indexes);
          if (BytePtr)
          {
            v52 = BytePtr;
            if (v98 == 1)
            {
              v53 = 0;
              v54 = 0;
            }

            else
            {
              if (v98 == 4)
              {
                v54 = 0;
                v53 = BytePtr;
              }

              else if (v98 == 2)
              {
                v53 = 0;
                v54 = BytePtr;
              }

              else
              {
                v55 = scn_default_log();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  v106 = v98;
                  _os_log_error_impl(&dword_21BEF7000, v55, OS_LOG_TYPE_ERROR, "Unreachable code: Unsupported index size (%zu)", buf, 0xCu);
                }

                v53 = 0;
                v54 = 0;
              }

              v52 = 0;
            }

            PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
            v57 = 3 * PrimitiveCount * v98;
            if (v57 > CFDataGetLength(v50))
            {
              free(v41);
              free(v42);
              v93 = scn_default_log();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
              {
                C3DCreateTangentsWithGeometryOptimized_cold_8();
              }

              return 0;
            }

            if (PrimitiveCount < 1)
            {
              v46 = 0;
              v45 = v97;
            }

            else
            {
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = (v54 + 4);
              v65 = (v52 + 2);
              v66 = (v53 + 4);
              v45 = v97;
              do
              {
                if (v54)
                {
                  v63 = *(v64 - 2);
                  v62 = *(v64 - 1);
                  v61 = *v64;
                }

                else if (v53)
                {
                  v63 = *(v66 - 1);
                  v62 = *v66;
                  v61 = v66[1];
                }

                else if (v52)
                {
                  v63 = *(v65 - 2);
                  v62 = *(v65 - 1);
                  v61 = *v65;
                }

                v67 = *(v101 + v63 * BYTE6(v102));
                v68 = vsub_f32(*(v101 + v62 * BYTE6(v102)), v67);
                v69 = vsub_f32(*(v101 + v61 * BYTE6(v102)), v67);
                v70 = (-v68.f32[1] * v69.f32[0]) + (v68.f32[0] * v69.f32[1]);
                if (v70 == 0.0)
                {
                  v69 = vadd_f32(v69, COERCE_FLOAT32X2_T(-3.18618444e-58));
                  v68 = vadd_f32(v68, 0xB4000000B4000000);
                  v70 = (-v68.f32[1] * v69.f32[0]) + (v68.f32[0] * v69.f32[1]);
                }

                v71 = v103 + v63 * BYTE6(v104);
                v58.i64[0] = *v71;
                v58.i32[2] = *(v71 + 8);
                v72 = v103 + v62 * BYTE6(v104);
                v59.i64[0] = *v72;
                v59.i32[2] = *(v72 + 8);
                v73 = v103 + v61 * BYTE6(v104);
                v60.i64[0] = *v73;
                v60.i32[2] = *(v73 + 8);
                v59 = vsubq_f32(v59, v58);
                v58 = vsubq_f32(v60, v58);
                v74 = v70;
                v75 = vrecpe_f32(LODWORD(v70));
                v76 = vmul_f32(v75, vrecps_f32(LODWORD(v74), v75));
                v76.i32[0] = vmul_f32(v76, vrecps_f32(LODWORD(v74), v76)).u32[0];
                v60 = vmulq_n_f32(vmlaq_lane_f32(vmulq_lane_f32(vnegq_f32(v58), v68, 1), v59, v69, 1), v76.f32[0]);
                v60.i32[3] = 0;
                v41[v63] = vaddq_f32(v41[v63], v60);
                v41[v62] = vaddq_f32(v41[v62], v60);
                v41[v61] = vaddq_f32(v41[v61], v60);
                v44 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v59, vnegq_f32(vdupq_lane_s32(v69, 0))), v58, v68.f32[0]), v76.f32[0]);
                v44.i32[3] = 0;
                v42[v63] = vaddq_f32(v44, v42[v63]);
                v42[v62] = vaddq_f32(v44, v42[v62]);
                v42[v61] = vaddq_f32(v44, v42[v61]);
                v64 += 3;
                v65 += 3;
                v66 += 3;
                --PrimitiveCount;
              }

              while (PrimitiveCount);
              v46 = 1;
            }
          }
        }
      }

      if (++v47 == v45)
      {
        goto LABEL_57;
      }
    }
  }

  v46 = 0;
LABEL_57:
  v80 = 0;
  do
  {
    v81 = v99 + v80 * BYTE6(v100);
    v44.i64[0] = *v81;
    v82 = v44;
    v82.i32[2] = *(v81 + 8);
    v44.i32[2] = v82.i32[2];
    v83 = v41[v80];
    v84 = vmulq_f32(v83, v44);
    v84.f32[0] = v84.f32[2] + vaddv_f32(*v84.f32);
    v85 = vmlsq_lane_f32(v83, v82, *v84.f32, 0);
    v86 = vmulq_f32(v85, v85);
    *&v87 = v86.f32[2] + vaddv_f32(*v86.f32);
    *v86.f32 = vrsqrte_f32(v87);
    v44 = vmulq_n_f32(v85, vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32))).f32[0]);
    v88 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), vnegq_f32(v82)), v44, vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL));
    v89 = vmulq_f32(v42[v80], vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL));
    if ((v89.f32[2] + vaddv_f32(*v89.f32)) < 0.0)
    {
      v90 = -1.0;
    }

    else
    {
      v90 = 1.0;
    }

    v44.f32[3] = v90;
    v41[v80++] = v44;
  }

  while (v96 != v80);
  free(v42);
  if ((v46 & 1) == 0)
  {
    free(v41);
    return 0;
  }

  v91 = CFDataCreateWithBytesNoCopy(0, v41, length, *MEMORY[0x277CBECE8]);
  v92 = C3DMeshSourceCreate(v91, 4, v96, 4, 1);
  CFRelease(v91);
  return v92;
}

uint64_t C3DCreateTangentsWithGeometry(uint64_t a1, int a2)
{
  v3 = a1;
  v145 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  PositionSource = C3DMeshGetPositionSource(v3, a2);
  NormalSource = C3DMeshGetNormalSource(v3, a2);
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v3, 3, 0, a2);
  if (!PositionSource && (v15 = scn_default_log(), os_log_type_enabled(v15, OS_LOG_TYPE_FAULT)))
  {
    C3DCreateTangentsWithGeometry_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
    if (!NormalSource)
    {
LABEL_7:
      v23 = scn_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        C3DCreateTangentsWithGeometryOptimized_cold_3(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }
  }

  else if (!NormalSource)
  {
    goto LABEL_7;
  }

  if (!SourceWithSemanticAtIndex)
  {
    v31 = scn_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_4(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  Count = C3DMeshSourceGetCount(PositionSource);
  ElementsCount = C3DMeshGetElementsCount(v3);
  v123 = Count;
  Count *= 16;
  v41 = malloc_type_calloc(Count, 1uLL, 0x16DFB261uLL);
  length = Count;
  v42 = malloc_type_calloc(Count, 1uLL, 0xE14A5E60uLL);
  v137 = 0u;
  v138 = 0u;
  C3DMeshSourceGetContent(PositionSource, &v137);
  v135 = 0u;
  v136 = 0u;
  C3DMeshSourceGetContent(SourceWithSemanticAtIndex, &v135);
  if (ElementsCount < 1)
  {
    v44 = 0;
    goto LABEL_60;
  }

  v43 = 0;
  v44 = 0;
  v124 = ElementsCount;
  v125 = v3;
  do
  {
    ElementAtIndex = C3DMeshGetElementAtIndex(v3, v43, 1);
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    C3DMeshElementGetContent(ElementAtIndex, 0, &v131);
    if (BYTE2(v133) > 1u)
    {
      goto LABEL_57;
    }

    v49 = v132;
    v44 = v132 != 0;
    if (!v132)
    {
      goto LABEL_56;
    }

    v50 = 0;
    do
    {
      if (BYTE2(v133))
      {
        if (v50)
        {
          v51 = 1;
        }

        else
        {
          v51 = 2;
        }

        if (v50)
        {
          v52 = 2;
        }

        else
        {
          v52 = 1;
        }

        v53 = BYTE2(v133) != 5;
        v54 = 1;
        if (BYTE2(v133) == 1)
        {
          v53 = 1;
        }

        else
        {
          v51 = 2;
        }

        if (BYTE2(v133) != 1)
        {
          v52 = 1;
        }
      }

      else
      {
        v54 = 3;
        v53 = 3;
        v51 = 2;
        v52 = 1;
      }

      if (v131)
      {
        v55 = DWORD2(v131);
        v56 = BYTE3(v133);
        v57 = v134 + DWORD2(v134) * v50 * v53;
        v58 = v54 * v50;
        v59 = v134 + (v52 + v54 * v50) * DWORD2(v134);
        v60 = v134 + (v51 + v58) * DWORD2(v134);
        if (v60 <= v57)
        {
          v61 = v57;
        }

        else
        {
          v61 = v60;
        }

        if (v59 <= v61)
        {
          v62 = v61;
        }

        else
        {
          v62 = v59;
        }

        if (*(&v131 + 1) < (BYTE3(v133) + BYTE3(v133) * v62))
        {
          v63 = scn_default_log();
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
LABEL_40:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            goto LABEL_42;
          }

          *buf = 136315650;
          v140 = "C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
          v141 = 1024;
          v142 = v62;
          v143 = 2048;
          v144 = v55 / v56;
          v101 = v63;
          v102 = "Error: %s - index (%u) out of bounds (%lu)";
          v103 = 28;
LABEL_55:
          _os_log_error_impl(&dword_21BEF7000, v101, OS_LOG_TYPE_ERROR, v102, buf, v103);
          goto LABEL_40;
        }

        switch(BYTE3(v133))
        {
          case 4u:
            v66 = *(v131 + 4 * v57);
            v65 = *(v131 + 4 * v59);
            v64 = *(v131 + 4 * v60);
            break;
          case 2u:
            v66 = *(v131 + 2 * v57);
            v65 = *(v131 + 2 * v59);
            v64 = *(v131 + 2 * v60);
            break;
          case 1u:
            v66 = *(v131 + v57);
            v65 = *(v131 + v59);
            v64 = *(v131 + v60);
            break;
          default:
            v100 = scn_default_log();
            if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_40;
            }

            *buf = 67109120;
            LODWORD(v140) = v56;
            v101 = v100;
            v102 = "Unreachable code: Invalid bytes per index (%d)";
            v103 = 8;
            goto LABEL_55;
        }
      }

      else
      {
        v66 = v53 * v50;
        v65 = v52 + v54 * v50;
        v64 = v51 + v54 * v50;
      }

LABEL_42:
      *v67.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v138), (v137 + v66 * BYTE6(v138)), v46, v47.f32[0], v48);
      v130 = v67;
      *v70.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v138), (v137 + v65 * BYTE6(v138)), v67, v68, v69);
      v129 = v70;
      *v73.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v138), (v137 + v64 * BYTE6(v138)), v70, v71, v72);
      v128 = v73;
      *v76.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v136), (v135 + v66 * BYTE6(v136)), v73, v74, v75);
      v127 = v76;
      *v79.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v136), (v135 + v65 * BYTE6(v136)), v76, v77, v78);
      v126 = v79;
      *v46.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v136), (v135 + v64 * BYTE6(v136)), v79, v80, v81);
      v82 = vsubq_f32(v126, v127).u64[0];
      v83 = vsubq_f32(v46, v127).u64[0];
      v84 = v82.f32[1];
      v85 = *(&v83 + 1);
      v46.f32[0] = -*&v83;
      v86 = vmuls_lane_f32(-*&v83, v82, 1) + (v82.f32[0] * *(&v83 + 1));
      if (v86 == 0.0)
      {
        v84 = v82.f32[1] + 0.00000011921;
        v85 = *(&v83 + 1) + -0.00000011921;
        v82.f32[0] = v82.f32[0] + -0.00000011921;
        *&v83 = *&v83 + -0.00000011921;
        v46.f32[0] = -*&v83;
        v86 = (v82.f32[0] * (*(&v83 + 1) + -0.00000011921)) - (*&v83 * (v82.f32[1] + 0.00000011921));
      }

      v87 = vsubq_f32(v129, v130);
      v88 = vsubq_f32(v128, v130);
      v89 = 1.0 / v86;
      v90 = -v84;
      v91 = v89 * ((v85 * v87.f32[2]) - (v84 * v88.f32[2]));
      v92 = 16 * v66;
      v93 = v92 | 8;
      *&v41[v93] = v91 + *&v41[v93];
      v94 = (16 * v65) | 8;
      v95 = 4 * v65;
      *&v41[v94] = v91 + *&v41[v94];
      v96 = vmul_n_f32(vmla_n_f32(vmul_n_f32(*v88.f32, v90), *v87.f32, v85), v89);
      *&v41[v92] = vadd_f32(*&v41[v92], v96);
      v97 = 16 * v64;
      *&v41[v95 * 4] = vadd_f32(v96, *&v41[v95 * 4]);
      *&v41[v97] = vadd_f32(v96, *&v41[v97]);
      v98 = v97 | 8;
      *&v41[v98] = v91 + *&v41[v98];
      v48 = v89 * ((v87.f32[2] * v46.f32[0]) + (v82.f32[0] * v88.f32[2]));
      *(v42 + v93) = v48 + *(v42 + v93);
      *(v42 + v94) = v48 + *(v42 + v94);
      v99 = vmul_n_f32(vmla_n_f32(vmul_n_f32(*v87.f32, v46.f32[0]), *v88.f32, v82.f32[0]), v89);
      *&v42[v92 / 4] = vadd_f32(v99, *&v42[v92 / 4]);
      *&v42[v95] = vadd_f32(v99, *&v42[v95]);
      v47 = *&v42[v97 / 4];
      *v46.f32 = vadd_f32(v99, v47);
      *&v42[v97 / 4] = v46.i64[0];
      v46.f32[0] = v48 + *(v42 + (v97 | 8));
      *(v42 + v98) = v46.i32[0];
      ++v50;
    }

    while (v49 != v50);
    v44 = 1;
LABEL_56:
    ElementsCount = v124;
    v3 = v125;
LABEL_57:
    ++v43;
  }

  while (v43 != ElementsCount);
LABEL_60:
  v131 = 0u;
  v132 = 0u;
  C3DMeshSourceGetContent(NormalSource, &v131);
  if (v123 >= 1)
  {
    v107 = 0;
    v108 = 0;
    do
    {
      *v109.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v132), (v131 + v107 * BYTE6(v132)), v104, v105, v106.f32[0]);
      v110 = &v41[4 * v108];
      v111.i64[0] = *v110;
      v112 = &v41[4 * v108 + 8];
      v113 = v111;
      v113.i32[2] = *v112;
      v111.i32[2] = *v112;
      v114 = vmulq_f32(v109, v111);
      v114.f32[0] = v114.f32[2] + vaddv_f32(*v114.f32);
      v106 = vmlsq_lane_f32(v113, v109, *v114.f32, 0);
      v115 = vmulq_f32(v106, v106);
      v116 = COERCE_UNSIGNED_INT(v115.f32[2] + vaddv_f32(*v115.f32));
      v117 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL), vnegq_f32(v109)), v113, vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL));
      *v109.f32 = vrsqrte_f32(v116);
      *v109.f32 = vmul_f32(*v109.f32, vrsqrts_f32(v116.u32[0], vmul_f32(*v109.f32, *v109.f32)));
      v118 = vmulq_n_f32(v106, vmul_f32(*v109.f32, vrsqrts_f32(v116.u32[0], vmul_f32(*v109.f32, *v109.f32))).f32[0]);
      *v112 = v118.i32[2];
      *v110 = v118.i64[0];
      v118.i64[0] = *&v42[v108];
      v118.i32[2] = v42[v108 + 2];
      v104 = vmulq_f32(vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL), v118);
      v105 = vaddv_f32(*v104.f32);
      if ((v104.f32[2] + v105) < 0.0)
      {
        v104.f32[0] = -1.0;
      }

      else
      {
        v104.f32[0] = 1.0;
      }

      *(v110 + 3) = v104.i32[0];
      ++v107;
      v108 += 4;
    }

    while (v123 != v107);
  }

  free(v42);
  if (v44)
  {
    v119 = CFDataCreateWithBytesNoCopy(0, v41, length, *MEMORY[0x277CBECE8]);
    v120 = C3DMeshSourceCreate(v119, 4, v123, 4, 1);
    CFRelease(v119);
  }

  else
  {
    free(v41);
    return 0;
  }

  return v120;
}

uint64_t C3DCreateNormalsWithMesh(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  PositionSource = C3DMeshGetPositionSource(a1, a2);
  if (!PositionSource)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  if (!C3DMeshGetElementsCount(a1))
  {
    return 0;
  }

  Count = C3DMeshSourceGetCount(PositionSource);
  Mutable = C3DMeshSourceCreateMutable(0, 1, Count, 3, 1);
  _unifyNormalsOptimized(a1, PositionSource, Mutable, a2, a3);
  C3DMeshSourceMakeImmutable(Mutable);
  return Mutable;
}

void _unifyNormalsOptimized(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v71 = 0u;
  v72 = 0u;
  C3DMeshSourceGetContent(a2, &v71);
  if (BYTE4(v72) == 9 && (v69 = 0u, v70 = 0u, C3DMeshSourceGetContent(a3, &v69), BYTE4(v70) == 9))
  {
    if (v72)
    {
      if (a5)
      {
        WeldRemappingTable = C3DMeshSourceCreateWeldRemappingTable(a2);
      }

      else
      {
        WeldRemappingTable = 0;
      }

      ElementsCount = C3DMeshGetElementsCount(a1);
      Count = C3DMeshSourceGetCount(a3);
      v14 = Count;
      v15 = BYTE6(v70);
      if (BYTE6(v70) == 12)
      {
        LODWORD(__pattern4) = 0;
        memset_pattern4(v69, &__pattern4, 12 * Count);
      }

      else if (Count)
      {
        v16 = 0;
        v17 = v69;
        v18 = Count;
        do
        {
          v19 = v17 + v16;
          *v19 = 0;
          *(v19 + 8) = 0;
          v16 += v15;
          --v18;
        }

        while (v18);
      }

      if (ElementsCount >= 1)
      {
        v20 = 0;
        v21 = v72 - 1;
        while (1)
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(a1, v20, a4);
          v23 = a4 ? 0 : C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 0, 0);
          v67 = 0u;
          v68 = 0u;
          __pattern4 = 0u;
          v66 = 0u;
          C3DMeshElementGetContent(ElementAtIndex, v23, &__pattern4);
          if ((v67.n128_u8[2] & 0xFA) == 0)
          {
            break;
          }

          v24 = scn_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v25 = v24;
            v26 = "Warning: C3DUnifyNormalsFromGeometry can only process triangles and polygons";
LABEL_22:
            _os_log_impl(&dword_21BEF7000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
          }

LABEL_27:
          if (ElementsCount == ++v20)
          {
            goto LABEL_28;
          }
        }

        if (__pattern4)
        {
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = ___unifyNormalsOptimized_block_invoke;
          v58[3] = &__block_descriptor_108_e19_v32__0I8_I12I20_B24l;
          v64 = v21;
          v59 = v71;
          v60 = v72;
          v61 = WeldRemappingTable;
          v62 = v69;
          v63 = v70;
          *buf = __pattern4;
          v55 = v66;
          v56 = v67;
          v57 = v68;
          C3DIndicesContentEnumeratePrimitives(buf, v58, v67);
          goto LABEL_27;
        }

        v27 = scn_default_log();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v25 = v27;
        v26 = "Warning: C3DUnifyNormalsFromGeometry empty indices";
        goto LABEL_22;
      }

LABEL_28:
      v28 = BYTE6(v70);
      if (WeldRemappingTable && v14)
      {
        v29 = 0;
        v30 = 0;
        v31 = v69;
        do
        {
          v32 = WeldRemappingTable[v30];
          if (v30 != v32)
          {
            v33 = (v31 + (v32 * v28));
            v34 = *(v33 + 2);
            v35 = *v33;
            v36 = v31 + v29;
            *v36 = v35;
            *(v36 + 8) = v34;
          }

          ++v30;
          v29 += v28;
        }

        while (v14 != v30);
      }

      if (v28 == 12 && (v14 & 0xFFFFFFFC) != 0)
      {
        v37 = 0;
        do
        {
          v38 = (v69 + v37 * BYTE6(v70));
          *v13.f32 = vld3q_f32(v38);
          v41 = vaddq_f32(vmulq_f32(v40, v40), vaddq_f32(vmulq_f32(v13, v13), vmulq_f32(v39, v39)));
          v42 = vrsqrteq_f32(v41);
          v43 = vmulq_f32(v42, vrsqrtsq_f32(v41, vmulq_f32(v42, v42)));
          v73.val[0] = vmulq_f32(v13, v43);
          v73.val[1] = vmulq_f32(v39, v43);
          v73.val[2] = vmulq_f32(v40, v43);
          vst3q_f32(v38, v73);
          v37 += 4;
        }

        while (v37 < (v14 & 0xFFFFFFFC));
      }

      else
      {
        v37 = 0;
      }

      if (v37 < v14)
      {
        v44 = v69;
        v45 = BYTE6(v70);
        v46 = BYTE6(v70) * v37;
        v47 = v14 - v37;
        do
        {
          v48 = v44 + v46;
          v13.i64[0] = *v48;
          v13.i32[2] = *(v48 + 8);
          v49 = vmulq_f32(v13, v13);
          v49.f32[0] = v49.f32[2] + vaddv_f32(*v49.f32);
          v50 = vdupq_lane_s32(*v49.f32, 0);
          v51 = vrsqrteq_f32(v50);
          v52 = vmulq_f32(v51, vrsqrtsq_f32(v50, vmulq_f32(v51, v51)));
          v53 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v49.f32[0] != 0.0)), 0x1FuLL));
          v53.i32[3] = 0;
          v13 = vbslq_s8(vcltzq_s32(v53), vmulq_f32(v13, vmulq_f32(v52, vrsqrtsq_f32(v50, vmulq_f32(v52, v52)))), v13);
          *v48 = v13.i64[0];
          *(v48 + 8) = v13.i32[2];
          v46 += v45;
          --v47;
        }

        while (v47);
      }

      free(WeldRemappingTable);
    }
  }

  else
  {
    _unifyNormals(a1, a2, a3, a4, a5);
  }
}

uint64_t C3DCreateNormalsForMorphTargetWithBaseMesh(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCreateNormalsForMorphTargetWithBaseMesh_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!C3DMeshGetElementsCount(a2))
  {
    return 0;
  }

  PositionSource = C3DMeshGetPositionSource(a1, a3);
  if (!PositionSource)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DCreateNormalsForMorphTargetWithBaseMesh_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  Count = C3DMeshSourceGetCount(PositionSource);
  Mutable = C3DMeshSourceCreateMutable(0, 1, Count, 3, 1);
  _unifyNormalsOptimized(a2, PositionSource, Mutable, a3, 0);
  C3DMeshSourceMakeImmutable(Mutable);
  return Mutable;
}

void C3DMeshUnifyNormals(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (C3DMeshGetElementsCount(a2))
  {
    PositionSource = C3DMeshGetPositionSource(a1, 1);
    if (PositionSource)
    {
      v9 = PositionSource;
      Count = C3DMeshSourceGetCount(PositionSource);
      if (Count)
      {
        v11 = Count;
        v12 = C3DMeshGetPositionSource(a2, 1);
        if (v12)
        {
          v13 = C3DMeshSourceGetCount(v12);
          if (v11 == v13)
          {
            NormalSource = C3DMeshGetNormalSource(a1, 1);
            if (!NormalSource && a3)
            {
              NormalSource = C3DMeshSourceCreateMutable(0, 1, v11, 3, 1);
              __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(a1, NormalSource, 0);
              CFRelease(NormalSource);
            }

            if (NormalSource)
            {
              if (C3DMeshSourceIsMutable(NormalSource))
              {

                _unifyNormalsOptimized(a2, v9, NormalSource, 1, a4);
              }

              else
              {
                MutableCopy = C3DMeshSourceCreateMutableCopy(NormalSource);
                __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(a1, MutableCopy, 0);
                CFRelease(MutableCopy);
                _unifyNormalsOptimized(a2, v9, MutableCopy, 1, a4);

                C3DMeshSourceMakeImmutable(MutableCopy);
              }
            }
          }

          else
          {
            v15 = v13;
            v16 = scn_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              C3DMeshUnifyNormals_cold_1(v11, v15, v16);
            }
          }
        }
      }
    }
  }
}

void C3DApplyScaleFactorOnScene(uint64_t a1, float a2)
{
  RootNode = C3DSceneGetRootNode(a1);
  *&v4 = a2;

  C3DApplyScaleFactorOnNode(RootNode, 1, v4);
}

void C3DApplyScaleFactorOnNode(__n128 *a1, int a2, double a3)
{
  if (a1)
  {
    *v5.i64 = C3DNodeGetPosition(a1);
    C3DNodeSetPosition(a1, vmulq_n_f32(v5, *&a3));
    if (C3DNodeGetHasPivot(a1))
    {
      *v6.i64 = C3DNodeGetPivotPosition(a1);
      v7 = vceqzq_f32(v6);
      v7.i32[3] = v7.i32[2];
      if ((vminvq_u32(v7) & 0x80000000) == 0)
      {
        C3DNodeSetPivotPosition(a1, vmulq_n_f32(v6, *&a3));
      }
    }

    Geometry = C3DNodeGetGeometry(a1);
    if (Geometry)
    {
      Mesh = C3DGeometryGetMesh(Geometry);
      if (Mesh)
      {
        C3DApplyScaleFactorOnMesh(Mesh, vdupq_lane_s32(*&a3, 0));
      }
    }

    Light = C3DNodeGetLight(a1);
    if (Light)
    {
      C3DApplyScaleFactorOnLight(Light, *&a3);
    }

    Camera = C3DNodeGetCamera(a1);
    if (Camera)
    {
      C3DApplyScaleFactorOnCamera(Camera, *&a3);
    }

    if (a2)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __C3DApplyScaleFactorOnNode_block_invoke;
      v13[3] = &__block_descriptor_36_e318_v24__0____C3DNode____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DNode_____C3DNode_____C3DNode_i____C3DMatrix4x4__16f__4_____4__________C3DMatrix4x4_BfQib1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b3b1______SS_I_________C3DGeometry_____C3DDeformerStack_f_____8q16l;
      v14 = LODWORD(a3);
      C3DNodeApplyChildren(a1, v13);
    }
  }
}

void C3DApplyScaleFactorOnLight(uint64_t a1, float a2)
{
  ZNear = C3DLightGetZNear(a1);
  v5 = a2;
  C3DLightSetZNear(a1, ZNear * v5);
  v6 = C3DLightGetZFar(a1) * v5;

  C3DLightSetZFar(a1, v6);
}

float64x2_t C3DApplyScaleFactorOnCamera(uint64_t a1, float a2)
{
  FocusDistance = C3DCameraGetFocusDistance(a1);
  C3DCameraSetFocusDistance(a1, FocusDistance * a2);
  ProjectionInfosPtr = C3DCameraGetProjectionInfosPtr(a1);
  result = vmulq_n_f64(*(ProjectionInfosPtr + 8), a2);
  *(ProjectionInfosPtr + 8) = result;
  return result;
}

void C3DApplyScaleFactorOnMesh(uint64_t a1, float32x4_t a2)
{
  PositionSource = C3DMeshGetPositionSource(a1, 0);
  if (PositionSource)
  {
    v4 = PositionSource;
    ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 0, 0);
    MutableCopy = C3DMeshSourceCreateMutableCopy(v4);
    Count = C3DMeshSourceGetCount(MutableCopy);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        *v10.i64 = C3DMeshSourceGetValueAtIndexAsVector3(MutableCopy, i);
        C3DMeshSourceSetValueAtIndexAsVector3(MutableCopy, i, vmulq_f32(a2, v10));
      }
    }

    C3DMeshSourceMakeImmutable(MutableCopy);
    C3DMeshSetSourceWithInputSet(a1, MutableCopy, 0, ChannelForSourceWithSemanticAtIndex);
    CFRelease(MutableCopy);
  }

  v11 = a2.f32[1] != a2.f32[2];
  if (a2.f32[0] != a2.f32[2])
  {
    v11 = 0;
  }

  v12 = a2.f32[0] == a2.f32[1] && v11;
  NormalSource = C3DMeshGetNormalSource(a1, 0);
  if (!v12)
  {
    v14 = NormalSource;
    if (NormalSource)
    {
      v15 = C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 1, 0);
      v16 = C3DMeshSourceCreateMutableCopy(v14);
      v17 = C3DMeshSourceGetCount(v16);
      if (v17 >= 1)
      {
        v18 = v17;
        v19 = 0;
        __asm { FMOV            V0.4S, #1.0 }

        v27 = vdivq_f32(_Q0, a2);
        do
        {
          *v25.i64 = C3DMeshSourceGetValueAtIndexAsVector3(v16, v19);
          C3DMeshSourceSetValueAtIndexAsVector3(v16, v19++, vmulq_f32(v27, v25));
        }

        while (v18 != v19);
      }

      C3DMeshSourceMakeImmutable(v16);
      C3DMeshSetSourceWithInputSet(a1, v16, 0, v15);

      CFRelease(v16);
    }
  }
}

BOOL C3DGeometryNeedsTexTangent(uint64_t a1, uint64_t *a2)
{
  MaterialsCount = C3DGeometryGetMaterialsCount(a1);
  if (MaterialsCount < 1)
  {
    return 0;
  }

  else
  {
    v5 = MaterialsCount;
    v6 = 0;
    v7 = 1;
    while (1)
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, v6);
      CommonProfile = C3DMaterialGetCommonProfile(MaterialAtIndex);
      if (CommonProfile)
      {
        EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 7, 0);
        if (EffectSlot)
        {
          if (C3DEffectSlotHasImageOrTexture(EffectSlot))
          {
            break;
          }
        }
      }

      v7 = ++v6 < v5;
      if (v5 == v6)
      {
        return v7;
      }
    }

    if (a2)
    {
      *a2 = v6;
    }
  }

  return v7;
}