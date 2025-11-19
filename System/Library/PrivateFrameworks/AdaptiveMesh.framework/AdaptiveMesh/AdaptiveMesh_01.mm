std::string *amt::TriangleMesh::operator=(std::string *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a1[1].__r_.__value_.__r.__words, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 4);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a1[2].__r_.__value_.__r.__words, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 4);
    std::vector<amt::Vec<int,3>>::__assign_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(&a1[3].__r_.__value_.__l.__data_, *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a1[4].__r_.__value_.__r.__words, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
    std::vector<amt::Vec<int,3>>::__assign_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(&a1[5].__r_.__value_.__l.__data_, *(a2 + 120), *(a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 128) - *(a2 + 120)) >> 2));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a1[6].__r_.__value_.__r.__words, *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 4);
    std::vector<amt::Vec<int,3>>::__assign_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(&a1[7].__r_.__value_.__l.__data_, *(a2 + 168), *(a2 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 176) - *(a2 + 168)) >> 2));
  }

  std::string::operator=(a1 + 8, (a2 + 192));
  return a1;
}

uint64_t std::__function::__func<amt::simplifyMesh(amt::TriangleMesh const&,amt::TriangleMesh&,amt::TriangleMesh&,amt::PipelineContext &,amt::AdaptiveMeshConversionParameters const&)::$_0,std::allocator<amt::simplifyMesh(amt::TriangleMesh const&,amt::TriangleMesh&,amt::TriangleMesh&,amt::PipelineContext &,amt::AdaptiveMeshConversionParameters const&)::$_0>,BOOL ()(float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28510E120;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<amt::simplifyMesh(amt::TriangleMesh const&,amt::TriangleMesh&,amt::TriangleMesh&,amt::PipelineContext &,amt::AdaptiveMeshConversionParameters const&)::$_0,std::allocator<amt::simplifyMesh(amt::TriangleMesh const&,amt::TriangleMesh&,amt::TriangleMesh&,amt::PipelineContext &,amt::AdaptiveMeshConversionParameters const&)::$_0>,BOOL ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t amt::Operation::progress(amt::Operation *this, float a2)
{
  v2 = *(*this + 64);
  if (!v2 || (v2(*(this + 1), *(*this + 80), a2) & 1) != 0)
  {
    return 1;
  }

  if (!*(*this + 16))
  {
    return 0;
  }

  v5 = AMTErrorCreateWithErrorCode(-2);
  result = 0;
  **(*this + 16) = v5;
  return result;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<BOOL ()(float)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<amt::Vec<int,3>>::resize(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<amt::Vec<int,3>>::__append(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void std::vector<amt::Vec<int,3>>::__append(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 12 * a2;
      v12 = 12 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 8) = *(a3 + 2);
        *v5 = v13;
        v5 += 12;
        v12 -= 12;
      }

      while (v12);
      v5 = v11;
    }

    a1[1] = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v8 = v7 + a2;
    if (v7 + a2 > 0x1555555555555555)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amt::Vec<int,3>>>(a1, v10);
    }

    v14 = 12 * a2;
    v15 = 12 * v7;
    do
    {
      v16 = *a3;
      *(v15 + 8) = *(a3 + 2);
      *v15 = v16;
      v15 += 12;
      v14 -= 12;
    }

    while (v14);
    v17 = *a1;
    v18 = a1[1];
    v19 = 12 * v7 + *a1 - v18;
    if (v18 != *a1)
    {
      v20 = 12 * v7 + *a1 - v18;
      do
      {
        v21 = *v17;
        *(v20 + 8) = v17[2];
        *v20 = v21;
        v20 += 12;
        v17 += 3;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = 12 * v7 + 12 * a2;
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v6, v10);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v6, v10);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

void amt::TriangleMesh::computeTriangleNormals(uint64_t a1, void *a2, char a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a3;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (-1431655765 * ((*(a1 + 80) - *(a1 + 72)) >> 2)));
  operator new();
}

void sub_23E765CD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t amt::removeDuplicatedTriangles(void *a1, void *a2, void *a3, std::vector<unsigned int> *a4, int a5)
{
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v39 = 0u;
  *__n = 0u;
  v41 = 1065353216;
  if (v7 >= 1)
  {
    v10 = 0;
    v11 = v7 & 0x7FFFFFFF;
    do
    {
      v12 = 0;
      v13 = (*a1 + 12 * v10);
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      if (v14 >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v14;
      }

      if (v14 <= v15)
      {
        v14 = v15;
      }

      if (v14 >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      if (v14 <= v16)
      {
        v14 = v16;
      }

      v19 = v16 < v17;
      if (v16 >= v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = v18;
      }

      if (v19)
      {
        v18 = v17;
      }

      v38[0] = v20;
      v38[1] = v18;
      v38[2] = v14;
      v21 = 0.0;
      do
      {
        v22 = v38[v12];
        started = amt::Adjacency<int>::neighborsStartIndex(a3, v22);
        v24 = amt::Adjacency<int>::neighborsEndIndex(a3, v22);
        if (started < v24)
        {
          v25 = (a3[6] + 4 * started);
          v26 = v24 - started;
          do
          {
            v27 = *v25++;
            v28 = vmulq_f32(*(*a2 + 16 * v10), *(*a2 + 16 * v27));
            v21 = v21 + (v28.f32[2] + vaddv_f32(*v28.f32));
            --v26;
          }

          while (v26);
        }

        ++v12;
      }

      while (v12 != 3);
      v29 = _ZNSt3__112__hash_tableINS_17__hash_value_typeIN3amt3VecIiLi3EEEZNS2_25removeDuplicatedTrianglesERKNS_6vectorIS4_NS_9allocatorIS4_EEEERKNS5_IDv3_fNS6_ISB_EEEERKNS2_9AdjacencyIiEERNS5_IiNS6_IiEEEEbE12TriangleInfoEENS_22__unordered_map_hasherIS4_SO_NS2_7HashVecIiLi3EEENS_8equal_toIS4_EELb1EEENS_21__unordered_map_equalIS4_SO_ST_SR_Lb1EEENS6_ISO_EEE4findIS4_EENS_15__hash_iteratorIPNS_11__hash_nodeISO_PvEEEERKT_(&v39, v38);
      if (v29)
      {
        if (v21 <= *(v29 + 7))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v42 = v38;
        v29 = _ZNSt3__112__hash_tableINS_17__hash_value_typeIN3amt3VecIiLi3EEEZNS2_25removeDuplicatedTrianglesERKNS_6vectorIS4_NS_9allocatorIS4_EEEERKNS5_IDv3_fNS6_ISB_EEEERKNS2_9AdjacencyIiEERNS5_IiNS6_IiEEEEbE12TriangleInfoEENS_22__unordered_map_hasherIS4_SO_NS2_7HashVecIiLi3EEENS_8equal_toIS4_EELb1EEENS_21__unordered_map_equalIS4_SO_ST_SR_Lb1EEENS6_ISO_EEE25__emplace_unique_key_argsIS4_JRKNS_21piecewise_construct_tENS_5tupleIJRKS4_EEENS13_IJEEEEEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeISO_PvEEEEbEERKT_DpOT0_(&v39, v38);
      }

      *(v29 + 7) = v21;
      *(v29 + 8) = v10;
LABEL_28:
      ++v10;
    }

    while (v10 != v11);
  }

  std::vector<int>::resize(a4, 0);
  std::vector<unsigned int>::reserve(a4, __n[1]);
  for (i = __n[0]; i; i = *i)
  {
    if (a5)
    {
      v31 = (*a1 + 12 * *(i + 32));
      v32 = *v31;
      v33 = v31[1];
      if (*v31 == v33)
      {
        continue;
      }

      v34 = v31[2];
      if (v32 == v34 || v33 == v34)
      {
        continue;
      }
    }

    std::vector<int>::push_back[abi:ne200100](&a4->__begin_, (i + 32));
  }

  std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::~__hash_table(&v39);
  return 0;
}

void sub_23E765F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZNK3amt12TriangleMesh22computeTriangleNormalsERNS_6vectorIDv3_fNS_9allocatorIS5_EEEEbEUliE_NS6_ISA_EEFvxEE7__cloneEPNS0_6__baseISC_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28510E1B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float32x4_t _ZNSt3__110__function6__funcIZNK3amt12TriangleMesh22computeTriangleNormalsERNS_6vectorIDv3_fNS_9allocatorIS5_EEEEbEUliE_NS6_ISA_EEFvxEEclEOx(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  amt::TriangleMesh::triangle(v4, *a2, v16);
  v5 = *(v4 + 24);
  v6 = *(v5 + 16 * v16[0]);
  v7 = vsubq_f32(*(v5 + 16 * v16[1]), v6);
  v8 = vsubq_f32(*(v5 + 16 * v16[2]), v6);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vnegq_f32(v7)), v8, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  result = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  *(**(a1 + 16) + 16 * v3) = result;
  if (**(a1 + 24) == 1)
  {
    v11 = 0;
    v12 = **(a1 + 16);
    result = *(v12 + 16 * v3);
    v13 = 0.0;
    do
    {
      v15 = result;
      v14 = *(&v15 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3)));
      v13 = v13 + (v14 * v14);
      ++v11;
    }

    while (v11 != 3);
    if (v13 != 0.0)
    {
      result = vmulq_n_f32(result, 1.0 / sqrtf(v13));
      *(v12 + 16 * v3) = result;
    }
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK3amt12TriangleMesh22computeTriangleNormalsERNS_6vectorIDv3_fNS_9allocatorIS5_EEEEbEUliE_NS6_ISA_EEFvxEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZNK3amt12TriangleMesh22computeTriangleNormalsERNSt3__16vectorIDv3_fNS1_9allocatorIS3_EEEEbEUliE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t amt::Adjacency<int>::neighborsStartIndex(void *a1, int a2)
{
  if (((a1[4] - a1[3]) >> 2) <= a2)
  {
    amt::Adjacency<int>::neighborsStartIndex();
  }

  return *(*a1 + 4 * a2);
}

uint64_t amt::Adjacency<int>::neighborsEndIndex(void *a1, int a2)
{
  v2 = a1[3];
  if (((a1[4] - v2) >> 2) <= a2)
  {
    amt::Adjacency<int>::neighborsEndIndex();
  }

  return (*(v2 + 4 * a2) + *(*a1 + 4 * a2));
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t *_ZNSt3__112__hash_tableINS_17__hash_value_typeIN3amt3VecIiLi3EEEZNS2_25removeDuplicatedTrianglesERKNS_6vectorIS4_NS_9allocatorIS4_EEEERKNS5_IDv3_fNS6_ISB_EEEERKNS2_9AdjacencyIiEERNS5_IiNS6_IiEEEEbE12TriangleInfoEENS_22__unordered_map_hasherIS4_SO_NS2_7HashVecIiLi3EEENS_8equal_toIS4_EELb1EEENS_21__unordered_map_equalIS4_SO_ST_SR_Lb1EEENS6_ISO_EEE4findIS4_EENS_15__hash_iteratorIPNS_11__hash_nodeISO_PvEEEERKT_(void *a1, int *a2)
{
  v2 = 0;
  v3 = *a2;
  do
  {
    v3 ^= (v3 << 6) + (v3 >> 2) + 2654435769u + a2[++v2];
  }

  while (v2 != 2);
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

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v3)
    {
      if (*(result + 4) == *a2 && *(result + 5) == a2[1] && *(result + 6) == a2[2])
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
  }

  return result;
}

uint64_t *_ZNSt3__112__hash_tableINS_17__hash_value_typeIN3amt3VecIiLi3EEEZNS2_25removeDuplicatedTrianglesERKNS_6vectorIS4_NS_9allocatorIS4_EEEERKNS5_IDv3_fNS6_ISB_EEEERKNS2_9AdjacencyIiEERNS5_IiNS6_IiEEEEbE12TriangleInfoEENS_22__unordered_map_hasherIS4_SO_NS2_7HashVecIiLi3EEENS_8equal_toIS4_EELb1EEENS_21__unordered_map_equalIS4_SO_ST_SR_Lb1EEENS6_ISO_EEE25__emplace_unique_key_argsIS4_JRKNS_21piecewise_construct_tENS_5tupleIJRKS4_EEENS13_IJEEEEEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeISO_PvEEEEbEERKT_DpOT0_(void *a1, int *a2)
{
  v2 = 0;
  v3 = *a2;
  do
  {
    v3 ^= (v3 << 6) + (v3 >> 2) + 2654435769u + a2[++v2];
  }

  while (v2 != 2);
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
    v9 = v8[1];
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
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (*(v8 + 4) != *a2 || *(v8 + 5) != a2[1] || *(v8 + 6) != a2[2])
  {
    goto LABEL_21;
  }

  return v8;
}

void *std::vector<amt::Vec<int,3>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<amt::Vec<int,3>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23E766684(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amt::Adjacency<int>::~Adjacency(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t amt::extractConnectedComponents(uint64_t *a1, unsigned int a2, amt::TriangleMesh *a3, std::vector<unsigned int> *this, uint64_t *a5)
{
  if (a5)
  {
    std::vector<std::shared_ptr<amt::TriangleMesh>>::clear[abi:ne200100](a5);
  }

  v9 = a1[1];
  if (*a1 == v9)
  {
    return 0;
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 2);
  v11 = -1431655765 * ((*(a3 + 10) - *(a3 + 9)) >> 2);
  if (v11)
  {
    v12 = v11 == v10;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    amt::extractConnectedComponents();
  }

  v13 = -1431655765 * ((*(a3 + 16) - *(a3 + 15)) >> 2);
  if (v13)
  {
    v14 = v13 == v10;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    amt::extractConnectedComponents();
  }

  v15 = -1431655765 * ((*(a3 + 22) - *(a3 + 21)) >> 2);
  if (v15)
  {
    v16 = v15 == v10;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    amt::extractConnectedComponents();
  }

  v70 = a5;
  v71 = a3;
  v18 = *(a3 + 3);
  v17 = *(a3 + 4);
  v20 = *(a3 + 12);
  v19 = *(a3 + 13);
  v22 = *(a3 + 18);
  v21 = *(a3 + 19);
  v23 = v10;
  std::vector<int>::resize(this, 0);
  v68 = v23;
  __x[0] = -1;
  std::vector<int>::resize(this, v23, __x);
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  *__x = 0u;
  v85 = 0u;
  amt::computeVertexToTriangle(a1, a2, __x);
  memset(&v83, 0, sizeof(v83));
  memset(&v82, 0, sizeof(v82));
  memset(&v81, 0, sizeof(v81));
  memset(&v80, 0, sizeof(v80));
  if (v70)
  {
    if (-1431655765 * ((*(a3 + 10) - *(a3 + 9)) >> 2))
    {
      LODWORD(v79.__begin_) = -1;
      std::vector<int>::resize(&v83, ((v17 - v18) >> 4), &v79);
    }

    if (-1431655765 * ((*(a3 + 16) - *(a3 + 15)) >> 2))
    {
      LODWORD(v79.__begin_) = -1;
      std::vector<int>::resize(&v82, ((v19 - v20) >> 3), &v79);
    }

    if (-1431655765 * ((*(a3 + 22) - *(a3 + 21)) >> 2))
    {
      LODWORD(v79.__begin_) = -1;
      std::vector<int>::resize(&v81, ((v21 - v22) >> 4), &v79);
    }
  }

  memset(&v79, 0, sizeof(v79));
  std::vector<unsigned int>::reserve(&v79, v23);
  v78 = 0;
  v24 = v23;
  v25 = v70;
  v26 = v71;
  v27 = 0;
  if (v68 >= 1)
  {
    v28 = 0;
    do
    {
      if (this->__begin_[v28] == -1)
      {
        this->__begin_[v28] = v27;
        std::vector<int>::push_back[abi:ne200100](&v79.__begin_, &v78);
        v76 = 0;
        v77 = 0;
        if (v25)
        {
          operator new();
        }

        end = v79.__end_;
        if (v79.__begin_ != v79.__end_)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          do
          {
            v33 = *(end - 1);
            v75 = v33;
            v79.__end_ = end - 1;
            if (v70)
            {
              std::vector<int>::push_back[abi:ne200100](&v80.__begin_, &v75);
              if (-1431655765 * ((*(v26 + 10) - *(v26 + 9)) >> 2))
              {
                amt::TriangleMesh::triangle(v26, v75, &v72);
                for (i = 0; i != 12; i += 4)
                {
                  v35 = *(&v72 + i);
                  if (v83.__begin_[v35] == -1)
                  {
                    v83.__begin_[v35] = v30;
                    v36 = v76;
                    v37 = amt::TriangleMesh::position(v26, v35);
                    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_((v36 + 3), v37);
                    ++v30;
                  }
                }

                v38 = v83.__begin_[v73];
                v39 = v83.__begin_[v74];
                LODWORD(v89) = v83.__begin_[v72];
                HIDWORD(v89) = v38;
                v90 = v39;
                std::vector<amt::Vec<int,3>>::push_back[abi:ne200100](v76 + 9, &v89);
              }

              if (-1431655765 * ((*(v26 + 16) - *(v26 + 15)) >> 2))
              {
                amt::TriangleMesh::texCoordTriangle(v26, v75, &v72);
                for (j = 0; j != 12; j += 4)
                {
                  v41 = *(&v72 + j);
                  if (v82.__begin_[v41] == -1)
                  {
                    v82.__begin_[v41] = v31;
                    v42 = v76;
                    v43 = amt::TriangleMesh::texCoord(v71, v41);
                    amt::TriangleMesh::addTexCoord(v42, v43);
                    ++v31;
                  }
                }

                v44 = v82.__begin_[v73];
                v45 = v82.__begin_[v74];
                LODWORD(v89) = v82.__begin_[v72];
                HIDWORD(v89) = v44;
                v90 = v45;
                std::vector<amt::Vec<int,3>>::push_back[abi:ne200100](v76 + 15, &v89);
                v26 = v71;
              }

              v33 = v75;
              if (-1431655765 * ((*(v26 + 22) - *(v26 + 21)) >> 2))
              {
                amt::TriangleMesh::normalTriangle(v26, v75, &v72);
                for (k = 0; k != 12; k += 4)
                {
                  v47 = *(&v72 + k);
                  if (v81.__begin_[v47] == -1)
                  {
                    v81.__begin_[v47] = v32;
                    v48 = v76;
                    v49 = amt::TriangleMesh::normal(v26, v47);
                    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_((v48 + 18), v49);
                    ++v32;
                  }
                }

                v50 = v81.__begin_[v73];
                v51 = v81.__begin_[v74];
                LODWORD(v89) = v81.__begin_[v72];
                HIDWORD(v89) = v50;
                v90 = v51;
                std::vector<amt::Vec<int,3>>::push_back[abi:ne200100](v76 + 21, &v89);
                v33 = v75;
              }
            }

            v52 = 0;
            v53 = *a1 + 12 * v33;
            do
            {
              v54 = *(v53 + 4 * v52);
              if (v54 >= ((v86 - *(&v85 + 1)) >> 2))
              {
                __assert_rtn("neighborsStartIndex", "AMTAdjacency.hpp", 96, "i < size()");
              }

              v55 = *(*(&v85 + 1) + 4 * v54);
              if (v55 >= 1)
              {
                v56 = *(*__x + 4 * v54);
                v57 = v55 + v56;
                do
                {
                  LODWORD(v89) = *(v87 + 4 * v56);
                  if (this->__begin_[v89] == -1)
                  {
                    this->__begin_[v89] = v27;
                    std::vector<int>::push_back[abi:ne200100](&v79.__begin_, &v89);
                  }

                  ++v56;
                }

                while (v56 < v57);
              }

              ++v52;
            }

            while (v52 != 3);
            end = v79.__end_;
            v26 = v71;
          }

          while (v79.__begin_ != v79.__end_);
        }

        v25 = v70;
        if (v70)
        {
          begin = v80.__begin_;
          v59 = v80.__end_;
          while (begin != v59)
          {
            v60 = *begin;
            if (-1431655765 * ((*(v26 + 10) - *(v26 + 9)) >> 2))
            {
              amt::TriangleMesh::triangle(v26, *begin, &v89);
              v61 = 0;
              v62 = v83.__begin_;
              do
              {
                v62[*(&v89 + v61)] = -1;
                v61 += 4;
              }

              while (v61 != 12);
            }

            if (-1431655765 * ((*(v26 + 16) - *(v26 + 15)) >> 2))
            {
              amt::TriangleMesh::texCoordTriangle(v26, v60, &v89);
              v63 = 0;
              v64 = v82.__begin_;
              do
              {
                v64[*(&v89 + v63)] = -1;
                v63 += 4;
              }

              while (v63 != 12);
            }

            if (-1431655765 * ((*(v26 + 22) - *(v26 + 21)) >> 2))
            {
              amt::TriangleMesh::normalTriangle(v26, v60, &v89);
              v65 = 0;
              v66 = v81.__begin_;
              do
              {
                v66[*(&v89 + v65)] = -1;
                v65 += 4;
              }

              while (v65 != 12);
            }

            ++begin;
          }
        }

        if (v77)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v77);
        }

        v27 = (v27 + 1);
        v28 = v78;
        v24 = v68;
      }

      v78 = ++v28;
    }

    while (v28 < v24);
  }

  if (v79.__begin_)
  {
    v79.__end_ = v79.__begin_;
    operator delete(v79.__begin_);
  }

  if (v80.__begin_)
  {
    v80.__end_ = v80.__begin_;
    operator delete(v80.__begin_);
  }

  if (v81.__begin_)
  {
    v81.__end_ = v81.__begin_;
    operator delete(v81.__begin_);
  }

  if (v82.__begin_)
  {
    v82.__end_ = v82.__begin_;
    operator delete(v82.__begin_);
  }

  if (v83.__begin_)
  {
    v83.__end_ = v83.__begin_;
    operator delete(v83.__begin_);
  }

  amt::Adjacency<int>::~Adjacency(__x);
  return v27;
}

void sub_23E766E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  amt::Adjacency<int>::~Adjacency(v31 - 176);
  _Unwind_Resume(a1);
}

void amt::TriangleMesh::append(amt::TriangleMesh *this, const amt::TriangleMesh *a2)
{
  v5 = *(this + 3);
  v6 = *(this + 4);
  v4 = (this + 24);
  v44 = v4 + 9;
  v40 = v4 + 15;
  v41 = v4 + 6;
  v7 = (v6 - v5) >> 4;
  v8 = (v4[10] - v4[9]) >> 3;
  v9 = (v4[16] - v4[15]) >> 4;
  v35 = v4[13] - v4[12];
  v38 = (v4[7] - v4[6]) >> 2;
  v42 = v4 + 12;
  v43 = v4 + 18;
  v32 = v4[19];
  v33 = v4[18];
  v10 = (*(a2 + 4) - *(a2 + 3)) >> 4;
  v11 = (*(a2 + 13) - *(a2 + 12)) >> 3;
  v12 = (*(a2 + 19) - *(a2 + 18)) >> 4;
  v28 = *(a2 + 16) - *(a2 + 15);
  v29 = (*(a2 + 10) - *(a2 + 9)) >> 2;
  v13 = *(a2 + 21);
  v30 = *(a2 + 22);
  v47 = 0u;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(v4, v10 + v7, &v47);
  if (v10 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = amt::TriangleMesh::position(a2, v14);
      amt::TriangleMesh::setPosition(this, v7 + v14++, v15);
    }

    while (v10 != v14);
  }

  v34 = v32 - v33;
  v31 = v30 - v13;
  v36 = v35 >> 2;
  v16 = -1431655765 * v38;
  v17 = -1431655765 * v29;
  *&v47 = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEmRKS1_(v44, v11 + v8, &v47);
  if (v11 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = amt::TriangleMesh::texCoord(a2, v18);
      amt::TriangleMesh::setTexCoord(this, v8 + v18++, v19);
    }

    while (v11 != v18);
  }

  v37 = -1431655765 * v36;
  v45 = -1431655765 * (v28 >> 2);
  v47 = 0u;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(v40, v12 + v9, &v47);
  if (v12 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = amt::TriangleMesh::normal(a2, v20);
      amt::TriangleMesh::setNormal(this, v9 + v20++, v21);
    }

    while (v12 != v20);
  }

  v39 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 2);
  *&v47 = -1;
  DWORD2(v47) = -1;
  std::vector<amt::Vec<int,3>>::resize(v41, v17 + v16, &v47);
  if (v17 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      amt::TriangleMesh::triangle(a2, i, v46);
      for (j = 0; j != 12; j += 4)
      {
        *(&v47 + j) = *&v46[j] + v7;
      }

      amt::TriangleMesh::setTriangle(this, i + v16, &v47);
    }
  }

  *&v47 = -1;
  DWORD2(v47) = -1;
  std::vector<amt::Vec<int,3>>::resize(v42, v45 + v37, &v47);
  if (v45 >= 1)
  {
    for (k = 0; k != v45; ++k)
    {
      amt::TriangleMesh::texCoordTriangle(a2, k, v46);
      for (m = 0; m != 12; m += 4)
      {
        *(&v47 + m) = *&v46[m] + v8;
      }

      amt::TriangleMesh::setTexCoordTriangle(this, k + v37, &v47);
    }
  }

  *&v47 = -1;
  DWORD2(v47) = -1;
  std::vector<amt::Vec<int,3>>::resize(v43, (v39 - 1431655765 * (v34 >> 2)), &v47);
  if (v39 >= 1)
  {
    v26 = 0;
    do
    {
      amt::TriangleMesh::normalTriangle(a2, v26, v46);
      for (n = 0; n != 12; n += 4)
      {
        *(&v47 + n) = *&v46[n] + v9;
      }

      amt::TriangleMesh::setNormalTriangle(this, v26 - 1431655765 * (v34 >> 2), &v47);
      ++v26;
    }

    while (v26 != v39);
  }
}

void std::vector<std::shared_ptr<amt::TriangleMesh>>::clear[abi:ne200100](uint64_t *a1)
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

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

void **std::vector<std::shared_ptr<amt::TriangleMesh>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<amt::TriangleMesh>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<amt::TriangleMesh>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void amt::TriangleMesh::addTexCoord(void *a1, void *a2)
{
  v5 = a1[13];
  v4 = a1[14];
  if (v5 >= v4)
  {
    v7 = a1[12];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m((a1 + 12), v11);
    }

    v12 = (8 * v8);
    *v12 = *a2;
    v6 = 8 * v8 + 8;
    v13 = a1[12];
    v14 = a1[13] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[12];
    a1[12] = v15;
    a1[13] = v6;
    a1[14] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  a1[13] = v6;
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_23E786B50)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_23E786B40)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_23E786B50)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_23E786B40)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::shared_ptr<amt::TriangleMesh>::shared_ptr[abi:ne200100]<amt::TriangleMesh,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_23E76789C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<amt::TriangleMesh>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<amt::TriangleMesh>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    amt::TriangleMesh::~TriangleMesh(v2);
    MEMORY[0x23EF11E80]();
  }

  return a1;
}

void std::__shared_ptr_pointer<amt::TriangleMesh *,std::shared_ptr<amt::TriangleMesh>::__shared_ptr_default_delete<amt::TriangleMesh,amt::TriangleMesh>,std::allocator<amt::TriangleMesh>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EF11E80);
}

void **std::__shared_ptr_pointer<amt::TriangleMesh *,std::shared_ptr<amt::TriangleMesh>::__shared_ptr_default_delete<amt::TriangleMesh,amt::TriangleMesh>,std::allocator<amt::TriangleMesh>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    amt::TriangleMesh::~TriangleMesh(result);

    JUMPOUT(0x23EF11E80);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<amt::TriangleMesh *,std::shared_ptr<amt::TriangleMesh>::__shared_ptr_default_delete<amt::TriangleMesh,amt::TriangleMesh>,std::allocator<amt::TriangleMesh>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<amt::TriangleMesh>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<amt::TriangleMesh>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<amt::TriangleMesh>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<amt::TriangleMesh>>::clear[abi:ne200100](uint64_t a1)
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

__n128 amt::TriangleMesh::setPosition(uint64_t a1, int a2, __n128 *a3)
{
  if (a2 < 0 || (v3 = *(a1 + 24), ((*(a1 + 32) - v3) >> 4) <= a2))
  {
    amt::TriangleMesh::setPosition();
  }

  result = *a3;
  *(v3 + 16 * a2) = *a3;
  return result;
}

double amt::TriangleMesh::setTexCoord(uint64_t a1, int a2, double *a3)
{
  if (a2 < 0 || (v3 = *(a1 + 96), ((*(a1 + 104) - v3) >> 3) <= a2))
  {
    amt::TriangleMesh::setTexCoord();
  }

  result = *a3;
  *(v3 + 8 * a2) = *a3;
  return result;
}

__n128 amt::TriangleMesh::setNormal(uint64_t a1, int a2, __n128 *a3)
{
  if (a2 < 0 || (v3 = *(a1 + 144), ((*(a1 + 152) - v3) >> 4) <= a2))
  {
    amt::TriangleMesh::setNormal();
  }

  result = *a3;
  *(v3 + 16 * a2) = *a3;
  return result;
}

uint64_t amt::TriangleMesh::setTriangle(uint64_t result, signed int a2, uint64_t *a3)
{
  if (a2 < 0 || (v3 = *(result + 72), (-1431655765 * ((*(result + 80) - v3) >> 2)) <= a2))
  {
    amt::TriangleMesh::setTriangle();
  }

  v4 = *a3;
  v5 = v3 + 12 * a2;
  *(v5 + 8) = *(a3 + 2);
  *v5 = v4;
  return result;
}

uint64_t amt::TriangleMesh::setTexCoordTriangle(uint64_t result, signed int a2, uint64_t *a3)
{
  if (a2 < 0 || (v3 = *(result + 120), (-1431655765 * ((*(result + 128) - v3) >> 2)) <= a2))
  {
    amt::TriangleMesh::setTexCoordTriangle();
  }

  v4 = *a3;
  v5 = v3 + 12 * a2;
  *(v5 + 8) = *(a3 + 2);
  *v5 = v4;
  return result;
}

uint64_t amt::TriangleMesh::setNormalTriangle(uint64_t result, signed int a2, uint64_t *a3)
{
  if (a2 < 0 || (v3 = *(result + 168), (-1431655765 * ((*(result + 176) - v3) >> 2)) <= a2))
  {
    amt::TriangleMesh::setNormalTriangle();
  }

  v4 = *a3;
  v5 = v3 + 12 * a2;
  *(v5 + 8) = *(a3 + 2);
  *v5 = v4;
  return result;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEmRKS1_(void *a1, unint64_t a2, uint64_t *a3)
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
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEmRKS1_(a1, a2 - v3, a3);
  }
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEmRKS1_(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 3)
  {
    if (a2)
    {
      v12 = *a3;
      v13 = 8 * a2;
      v14 = &v5[a2];
      do
      {
        *v5++ = v12;
        v13 -= 8;
      }

      while (v13);
      v5 = v14;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v6 - *a1;
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
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v11);
    }

    v15 = 8 * v9;
    v16 = 8 * v9 + 8 * a2;
    v17 = 8 * a2;
    v18 = *a3;
    v19 = v15;
    do
    {
      *v19++ = v18;
      v17 -= 8;
    }

    while (v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void std::vector<std::shared_ptr<amt::TriangleMesh>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<amt::TriangleMesh>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void amt::subdivideMesh(amt *this@<X0>, std::vector<unsigned int> *a2@<X1>, amt::MeshSubdivisionInfo *a3@<X2>, std::string *a4@<X8>)
{
  v4 = a3;
  amt::TriangleMesh::TriangleMesh(a4, this);
  if (v4)
  {
    amt::TriangleMesh::subdivideMidPoint(a4, a2, v4);
    if (((a4[6].__r_.__value_.__l.__size_ - a4[6].__r_.__value_.__r.__words[0]) & 0xFFFFFFFF0) != 0)
    {
      v7 = ((a4[1].__r_.__value_.__l.__size_ - a4[1].__r_.__value_.__r.__words[0]) >> 4);
      v15 = 0u;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(a4[6].__r_.__value_.__r.__words, v7, &v15);
      _ZN3amt19interpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_9AdjacencyI7AMTPairEE(&a4[6], a2);
      data = a4[6].__r_.__value_.__l.__data_;
      for (i = a4[6].__r_.__value_.__l.__size_; data != i; ++data)
      {
        v10 = 0;
        v11 = *data;
        v12 = 0.0;
        do
        {
          v14 = v11;
          v13 = *(&v14 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3)));
          v12 = v12 + (v13 * v13);
          ++v10;
        }

        while (v10 != 3);
        if (v12 != 0.0)
        {
          *data = vmulq_n_f32(v11, 1.0 / sqrtf(v12));
        }
      }
    }
  }
}

uint64_t amt::TriangleMesh::operator=(uint64_t a1, uint64_t a2)
{
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1, a2);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 24, (a2 + 24));
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 48, (a2 + 48));
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 72, (a2 + 72));
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 96, (a2 + 96));
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 120, (a2 + 120));
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 144, (a2 + 144));
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 168, (a2 + 168));
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v4 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v4;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  return a1;
}

void amt::fitMidPointSubdivision(amt *this, const amt::TriangleMesh *a2, amt::TriangleMesh *a3, int a4, float a5)
{
  v6 = a3;
  v8 = a2;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  std::vector<amt::Vec<int,3>>::__init_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(&v124, *(a2 + 9), *(v8 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 10) - *(a2 + 9)) >> 2));
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  amt::subdivideMeshMidPoint((*(v8 + 4) - *(v8 + 3)) >> 4, -1431655765 * ((*(v8 + 10) - *(v8 + 9)) >> 2), v6, &v119, &v124, &v116);
  std::vector<amt::SparseMatrix<float>>::vector[abi:ne200100](v115, v6);
  v98 = a4;
  v93 = v8;
  std::vector<amt::SparseMatrix<float>>::vector[abi:ne200100](v114, v6);
  v100 = this;
  v96 = v6;
  std::vector<AMTPair>::vector[abi:ne200100](v113, v116[2 * v6]);
  v101 = v6;
  if (v6 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = v116[2 * v10];
      v12 = v10 + 1;
      v13 = v116[2 * v10 + 2];
      if (v11 >= 1)
      {
        v14 = 0;
        v15 = *(&v120 + 1);
        v16 = v119;
        v17 = v113[0];
        v18 = ((v121 - v15) >> 2) & ~(((v121 - v15) >> 2) >> 31);
        v19 = v122 + 4;
        do
        {
          if (v14 == v18)
          {
            __assert_rtn("neighborsStartIndex", "AMTAdjacency.hpp", 96, "i < size()");
          }

          v20 = *(v15 + 4 * v14);
          if (v20 >= 1)
          {
            v21 = *(v16 + 4 * v14);
            v22 = v20 + v21;
            v23 = (v19 + 8 * v21);
            do
            {
              v24 = &v17[8 * *v23];
              *v24 = *(v23 - 1);
              *(v24 + 1) = v14;
              ++v21;
              v23 += 2;
            }

            while (v21 < v22);
          }

          ++v14;
        }

        while (v14 != v11);
      }

      v25 = v115[0] + 80 * v10;
      amt::SparseMatrix<float>::initialize(v25, v13, v11);
      if (v11 >= 1)
      {
        v26 = 0;
        do
        {
          amt::SparseMatrix<float>::addElementInOrder(v25, v26, v26, 1.0);
          ++v26;
        }

        while (v11 != v26);
      }

      if (v11 < v13)
      {
        v27 = 8 * v11;
        do
        {
          v28 = *(v113[0] + v27 + 4);
          amt::SparseMatrix<float>::addElementInOrder(v25, v11, *(v113[0] + v27), 0.5);
          amt::SparseMatrix<float>::addElementInOrder(v25, v11, v28, 0.5);
          LODWORD(v11) = v11 + 1;
          v27 += 8;
        }

        while (v13 != v11);
      }

      if (*(v25 + 76) >= 1)
      {
        v29 = 0;
        v30 = *(v25 + 24);
        v33 = *v30;
        v31 = v30 + 1;
        v32 = v33;
        do
        {
          v32 += v31[v29];
          v31[v29++] = v32;
        }

        while (v29 < *(v25 + 76));
      }

      amt::SparseMatrix<float>::transpose(v25, &v107);
      v34 = (v114[0] + 80 * v10);
      if (v34 != &v107)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v114[0] + 80 * v10), v107.__begin_, v107.__end_, v107.__end_ - v107.__begin_);
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v34[1].__begin_, v108, v109, (v109 - v108) >> 2);
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v34[2].__begin_, v110, v111, (v111 - v110) >> 2);
      }

      v34[3].__begin_ = v112;
      amt::Adjacency<int>::~Adjacency(&v107);
      ++v10;
    }

    while (v12 != v101);
  }

  v35 = *(v8 + 4) - *(v8 + 3);
  v36 = 2 * (v35 >> 4);
  if (v98 != -1)
  {
    v36 = v98;
  }

  v97 = v36;
  v92 = *(v115[0] + 80 * v96 - 4);
  amt::Vector<float>::Vector(&v107, *(v115[0] + 80 * v96 - 4));
  v37 = v101;
  v38 = v101 + 1;
  std::vector<amt::Vector<float>>::vector[abi:ne200100](v106, v38);
  std::vector<amt::Vector<float>>::vector[abi:ne200100](v105, v38);
  std::vector<amt::Vector<float>>::vector[abi:ne200100](v104, v38);
  v39 = this;
  std::vector<amt::Vector<float>>::vector[abi:ne200100](v103, v38);
  v99 = v35 >> 4;
  v40 = v103[0];
  std::vector<int>::resize(v103[0], (v35 >> 4));
  if (((v107.__end_ - v107.__begin_) >> 2) >= 1)
  {
    bzero(v107.__begin_, (v107.__end_ - v107.__begin_) & 0x1FFFFFFFCLL);
  }

  v41 = v99;
  v94 = 0;
  v95 = v99 - 1;
  v42 = (v35 >> 4) & 0x7FFFFFFF;
  v43 = 80 * v101;
  v44 = v35 >> 4;
  do
  {
    if (v44 >= 1)
    {
      v45 = 0;
      do
      {
        v46 = amt::TriangleMesh::position(v8, v45);
        if (v45 >= ((v40->__end_ - v40->__begin_) >> 2))
        {
          __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
        }

        v40->__begin_[v45++] = *(v46 + 4 * (v94 & 3));
      }

      while (v42 != v45);
    }

    if (v92 >= 1)
    {
      for (i = 0; i != v92; ++i)
      {
        v48 = amt::TriangleMesh::position(v39, i);
        if (i >= ((v107.__end_ - v107.__begin_) >> 2))
        {
          __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
        }

        v107.__begin_[i] = *(v48 + 4 * (v94 & 3));
      }
    }

    if (v37 >= 1)
    {
      v49 = 0;
      v50 = 1;
      do
      {
        amt::operator*(v115[0] + v49, &v103[0][v50 - 1], &__p);
        if (&v103[0][v50] != &__p)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v103[0][v50].__begin_, __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
        }

        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        v49 += 80;
        ++v50;
      }

      while (v43 != v49);
    }

    amt::operator-(&v107, &v103[0][v96], &__p);
    v51 = (v106[0] + 24 * v96);
    if (v51 != &__p)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v51, __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
    }

    v44 = v99;
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    v52 = 24 * (v96 - 1);
    v53 = 80 * (v96 - 1);
    v54 = (v96 - 1) + 1;
    if (v37 >= 1)
    {
      do
      {
        amt::operator*(v114[0] + v53, (v106[0] + v52 + 24), &__p);
        if ((v106[0] + v52) != &__p)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v106[0] + v52), __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
        }

        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        v53 -= 80;
        v52 -= 24;
        v55 = v54-- <= 1;
      }

      while (!v55);
    }

    v56 = v106[0];
    v57 = *v105;
    if (*v105 != v106[0])
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(*v105, *v106[0], *(v106[0] + 8), (*(v106[0] + 8) - *v106[0]) >> 2);
    }

    v39 = v100;
    if (v99 < 1)
    {
      v60 = 0.0;
    }

    else
    {
      v58 = *v56;
      v59 = (*(v56 + 8) - *v56) >> 2;
      if ((v59 & ~(v59 >> 31)) <= v95)
      {
        __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
      }

      v60 = 0.0;
      v61 = v99;
      do
      {
        v62 = *v58++;
        v60 = v60 + (v62 * v62);
        --v61;
      }

      while (v61);
    }

    if (v97 >= 1 && sqrtf(v60 / v41) > a5)
    {
      v63 = 0;
      do
      {
        if (v37 >= 1)
        {
          v64 = 0;
          v65 = 24;
          do
          {
            amt::operator*(v115[0] + v64, (*v105 + v65 - 24), &__p);
            if ((*v105 + v65) != &__p)
            {
              std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((*v105 + v65), __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
            }

            if (__p.__begin_)
            {
              __p.__end_ = __p.__begin_;
              operator delete(__p.__begin_);
            }

            v64 += 80;
            v65 += 24;
          }

          while (v43 != v64);
        }

        if (v104[0] != *v105)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v104[0][3 * v96], *(*v105 + 24 * v96), *(*v105 + 24 * v96 + 8), (*(*v105 + 24 * v96 + 8) - *(*v105 + 24 * v96)) >> 2);
        }

        v67 = 3 * (v96 - 1);
        v66 = 80 * (v96 - 1);
        v68 = (v96 - 1) + 1;
        if (v101 >= 1)
        {
          do
          {
            amt::operator*(v114[0] + v66, &v104[0][v67 + 3], &__p);
            if (&v104[0][v67] != &__p)
            {
              std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v104[0][v67], __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
            }

            if (__p.__begin_)
            {
              __p.__end_ = __p.__begin_;
              operator delete(__p.__begin_);
            }

            v66 -= 80;
            v67 -= 3;
            v55 = v68-- <= 1;
          }

          while (!v55);
        }

        v44 = v99;
        v39 = v100;
        if (v99 < 1)
        {
          v60 = 0.0;
          v37 = v101;
        }

        else
        {
          v69 = 0;
          v70 = v104[0];
          v71 = (v57[1] - *v57) >> 2;
          v72 = v71 & ~(v71 >> 31);
          v73 = 0.0;
          v37 = v101;
          do
          {
            if (v72 == v69 || v69 >= ((v104[0][1] - *v104[0]) >> 2))
            {
              __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
            }

            v73 = v73 + (*(*v57 + 4 * v69) * *(*v104[0] + v69));
            ++v69;
          }

          while (v42 != v69);
          v74 = 0;
          v75 = v60 / v73;
          v76 = *v57;
          v77 = (v57[1] - *v57) >> 2;
          v78 = v77 & ~(v77 >> 31);
          do
          {
            if (v78 == v74 || v74 >= ((v40->__end_ - v40->__begin_) >> 2) || (*&v40->__begin_[v74] = *&v40->__begin_[v74] + (v75 * *(v76 + 4 * v74)), v74 >= ((v70[1] - *v70) >> 2)) || v74 >= ((*(v56 + 8) - *v56) >> 2))
            {
              __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
            }

            *(*v56 + 4 * v74) = *(*v56 + 4 * v74) + (-v75 * *(*v70 + v74));
            ++v74;
          }

          while (v42 != v74);
          v79 = *v56;
          v80 = (*(v56 + 8) - *v56) >> 2;
          if ((v80 & ~(v80 >> 31)) <= v95)
          {
            __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
          }

          v81 = 0.0;
          v82 = v99;
          do
          {
            v83 = *v79++;
            v81 = v81 + (v83 * v83);
            --v82;
          }

          while (v82);
          v84 = 0;
          v85 = *v56;
          v86 = (*(v56 + 8) - *v56) >> 2;
          v87 = v86 & ~(v86 >> 31);
          do
          {
            if (v87 == v84 || v84 >= ((v57[1] - *v57) >> 2))
            {
              __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
            }

            *(*v57 + 4 * v84) = v85[v84] + ((v81 / v60) * *(*v57 + 4 * v84));
            ++v84;
          }

          while (v42 != v84);
          v60 = v81;
        }

        ++v63;
      }

      while (v63 < v97 && sqrtf(v60 / v41) > a5);
    }

    v8 = v93;
    v88 = v94;
    if (v44 >= 1)
    {
      v89 = 0;
      do
      {
        v90 = amt::TriangleMesh::position(v93, v89);
        if (v89 >= ((v40->__end_ - v40->__begin_) >> 2))
        {
          __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
        }

        v91 = v94;
        if (v94 >= 2uLL)
        {
          v91 = 2;
        }

        *(v90 + 4 * v91) = v40->__begin_[v89++];
      }

      while (v42 != v89);
    }

    ++v94;
  }

  while (v88 != 2);
  __p.__begin_ = v103;
  std::vector<amt::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v103[0] = v104;
  std::vector<amt::Vector<float>>::__destroy_vector::operator()[abi:ne200100](v103);
  v104[0] = v105;
  std::vector<amt::Vector<float>>::__destroy_vector::operator()[abi:ne200100](v104);
  *v105 = v106;
  std::vector<amt::Vector<float>>::__destroy_vector::operator()[abi:ne200100](v105);
  if (v107.__begin_)
  {
    v107.__end_ = v107.__begin_;
    operator delete(v107.__begin_);
  }

  if (v113[0])
  {
    v113[1] = v113[0];
    operator delete(v113[0]);
  }

  v107.__begin_ = v114;
  std::vector<amt::SparseMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v107);
  v107.__begin_ = v115;
  std::vector<amt::SparseMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v107);
  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  amt::Adjacency<int>::~Adjacency(&v119);
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }
}

void sub_23E768B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char ****a22, uint64_t a23, uint64_t a24, char ***a25, uint64_t a26, uint64_t a27, char **a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char *__p, char *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53)
{
  a22 = &a25;
  std::vector<amt::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a25 = &a28;
  std::vector<amt::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a28 = &a31;
  std::vector<amt::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a31 = &a34;
  std::vector<amt::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&a31);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  if (a47)
  {
    a48 = a47;
    operator delete(a47);
  }

  __p = &a50;
  std::vector<amt::SparseMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a53;
  std::vector<amt::SparseMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v55 = *(v53 - 248);
  if (v55)
  {
    *(v53 - 240) = v55;
    operator delete(v55);
  }

  amt::Adjacency<int>::~Adjacency(v53 - 224);
  v56 = *(v53 - 152);
  if (v56)
  {
    *(v53 - 144) = v56;
    operator delete(v56);
  }

  _Unwind_Resume(a1);
}

void amt::TriangleMesh::subdivideMidPoint(amt::TriangleMesh *this, std::vector<unsigned int> *a2, int a3)
{
  amt::Adjacency<AMTPair>::clear(a2);
  a2[3].__end_ = a2[3].__begin_;
  amt::Adjacency<AMTPair>::clear(a2 + 4);
  a2[7].__end_ = a2[7].__begin_;
  if (a3 >= 1)
  {
    v6 = -1431655765 * ((*(this + 16) - *(this + 15)) >> 2);
    if (v6)
    {
      v7 = (*(this + 13) - *(this + 12)) >> 3;
      if (v7)
      {
        amt::subdivideMeshMidPoint(v7, v6, a3, &a2[4], this + 15, &a2[7].__begin_);
        amt::Adjacency<AMTPair>::optimize(&a2[4].__begin_);
        v8 = a2[7].__begin_[2 * a3];
        *&v16 = 0;
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEmRKS1_(this + 12, v8, &v16);
        _ZN3amt19interpolateMidPointIDv2_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_9AdjacencyI7AMTPairEE(this + 96, &a2[4].__begin_);
      }
    }

    v9 = (this + 72);
    v10 = -1431655765 * ((*(this + 10) - *(this + 9)) >> 2);
    if (v10)
    {
      v11 = *(this + 3);
      v12 = *(this + 4);
      v13 = (this + 24);
      v14 = (v12 - v11) >> 4;
      if (v14)
      {
        amt::subdivideMeshMidPoint(v14, v10, a3, a2, v9, &a2[3].__begin_);
        amt::Adjacency<AMTPair>::optimize(a2);
        v15 = a2[3].__begin_[2 * a3];
        v16 = 0u;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(v13, v15, &v16);
        _ZN3amt19interpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_9AdjacencyI7AMTPairEE(v13, a2);
      }
    }
  }
}

uint64_t _ZN3amt19interpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_9AdjacencyI7AMTPairEE(uint64_t result, void *a2)
{
  v2 = a2[4] - a2[3];
  if ((v2 >> 2) >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v15 = *(*v4 + 16 * v5);
      started = amt::Adjacency<int>::neighborsStartIndex(a2, v5);
      result = amt::Adjacency<int>::neighborsEndIndex(a2, v5);
      v8.i64[0] = 0x3F0000003F000000;
      v8.i64[1] = 0x3F0000003F000000;
      v9 = result - started;
      if (result > started)
      {
        v10 = 8 * started;
        do
        {
          v11 = (a2[6] + v10);
          v12 = *v11;
          if ((v12 & 0x80000000) != 0 || (v13 = (v4[1] - *v4) >> 4, v12 >= v13))
          {
            _ZN3amt19interpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_9AdjacencyI7AMTPairEE_cold_1();
          }

          v14 = v11[1];
          if ((v14 & 0x80000000) != 0 || v14 >= v13)
          {
            _ZN3amt19interpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_9AdjacencyI7AMTPairEE_cold_2();
          }

          *(*v4 + 16 * v14) = vmulq_f32(vaddq_f32(v15, *(*v4 + 16 * v12)), v8);
          v10 += 8;
          --v9;
        }

        while (v9);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

std::string *amt::TriangleMesh::TriangleMesh(std::string *this, const amt::TriangleMesh *a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 4);
  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 4);
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&this[2], *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 4);
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  std::vector<amt::Vec<int,3>>::__init_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(&this[3], *(a2 + 9), *(a2 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&this[4], *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 3);
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  std::vector<amt::Vec<int,3>>::__init_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(&this[5], *(a2 + 15), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 15)) >> 2));
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&this[6], *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 4);
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[7].__r_.__value_.__l.__size_ = 0;
  this[7].__r_.__value_.__r.__words[2] = 0;
  std::vector<amt::Vec<int,3>>::__init_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(&this[7], *(a2 + 21), *(a2 + 22), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 22) - *(a2 + 21)) >> 2));
  if (*(a2 + 215) < 0)
  {
    std::string::__init_copy_ctor_external(this + 8, *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v4 = *(a2 + 12);
    this[8].__r_.__value_.__r.__words[2] = *(a2 + 26);
    *&this[8].__r_.__value_.__l.__data_ = v4;
  }

  return this;
}

void sub_23E7690A8(_Unwind_Exception *exception_object)
{
  v10 = *v8;
  if (*v8)
  {
    *(v1 + 176) = v10;
    operator delete(v10);
  }

  v11 = *v7;
  if (*v7)
  {
    *(v1 + 152) = v11;
    operator delete(v11);
  }

  v12 = *v6;
  if (*v6)
  {
    *(v1 + 128) = v12;
    operator delete(v12);
  }

  v13 = *v5;
  if (*v5)
  {
    *(v1 + 104) = v13;
    operator delete(v13);
  }

  v14 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v14;
    operator delete(v14);
  }

  v15 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v15;
    operator delete(v15);
  }

  v16 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v16;
    operator delete(v16);
  }

  v17 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<amt::Vec<int,3>>::__init_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<amt::Vec<int,3>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23E7691D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_23E76924C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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

void amt::Adjacency<AMTPair>::optimize(void *a1)
{
  v2 = a1[4] - a1[3];
  v3 = v2 >> 2;
  if ((v2 >> 2) <= 0)
  {
    v13 = *a1;
    **a1 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      started = amt::Adjacency<int>::neighborsStartIndex(a1, v4);
      v7 = amt::Adjacency<int>::neighborsEndIndex(a1, v4) - started;
      if (v7 >= 1 && started != v5)
      {
        v9 = 0;
        v10 = 8 * v5;
        v11 = 8 * started;
        do
        {
          *(a1[6] + v10) = *(a1[6] + v11);
          ++v9;
          v10 += 8;
          v11 += 8;
        }

        while (v9 < v7);
      }

      v5 += v7;
      ++v4;
    }

    while (v4 != v3);
    v12 = 0;
    v13 = *a1;
    **a1 = 0;
    v14 = a1[3];
    v15 = (v2 >> 2) & 0x7FFFFFFF;
    v16 = 1;
    do
    {
      v17 = *v14++;
      v12 += v17;
      v13[v16++] = v12;
      --v15;
    }

    while (v15);
  }

  v18 = v13[v3];

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(a1 + 6, v18);
}

uint64_t _ZN3amt19interpolateMidPointIDv2_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_9AdjacencyI7AMTPairEE(uint64_t result, void *a2)
{
  v2 = a2[4] - a2[3];
  if ((v2 >> 2) >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = *(*v4 + 8 * v5);
      started = amt::Adjacency<int>::neighborsStartIndex(a2, v5);
      result = amt::Adjacency<int>::neighborsEndIndex(a2, v5);
      v9 = result - started;
      if (result > started)
      {
        v10 = 8 * started;
        do
        {
          v11 = (a2[6] + v10);
          v12 = *v11;
          if ((v12 & 0x80000000) != 0 || (v13 = (v4[1] - *v4) >> 3, v12 >= v13))
          {
            _ZN3amt19interpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_9AdjacencyI7AMTPairEE_cold_1();
          }

          v14 = v11[1];
          if ((v14 & 0x80000000) != 0 || v14 >= v13)
          {
            _ZN3amt19interpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_9AdjacencyI7AMTPairEE_cold_2();
          }

          *(*v4 + 8 * v14) = vmul_f32(vadd_f32(v7, *(*v4 + 8 * v12)), 0x3F0000003F000000);
          v10 += 8;
          --v9;
        }

        while (v9);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

void amt::Adjacency<AMTPair>::clear(std::vector<unsigned int> *a1)
{
  std::vector<int>::resize(a1, 0);
  std::vector<int>::resize(a1 + 1, 0);

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&a1[2].__begin_, 0);
}

__n128 _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t amt::TriangleMesh::subdivideMidPoint(amt::TriangleMesh *this, int a2)
{
  v9 = 0;
  *__p = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  *v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  amt::TriangleMesh::subdivideMidPoint(this, v3, a2);
  if (__p[1])
  {
    *&v8 = __p[1];
    operator delete(__p[1]);
  }

  amt::Adjacency<int>::~Adjacency(v6);
  if (v4[1])
  {
    *&v5 = v4[1];
    operator delete(v4[1]);
  }

  return amt::Adjacency<int>::~Adjacency(v3);
}

uint64_t nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::~KDTreeSingleIndexAdaptor(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    do
    {
      v3 = *v2;
      free(v2);
      *(a1 + 104) = v3;
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::KDTreeSingleIndexAdaptor(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a3;
  *(a1 + 144) = *a4;
  *(a1 + 160) = a3;
  nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::init(a1, a2, a4);
  return a1;
}

void nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(a1 + 136);
  if (!v3)
  {
    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::init();
  }

  v6 = (v3[1] - *v3) >> 4;
  *(a1 + 48) = v6;
  *(a1 + 56) = v6;
  *(a1 + 64) = 3;
  *(a1 + 32) = *a3;
  v7 = *(a3 + 12);
  if (!v7)
  {
    v8 = std::thread::hardware_concurrency();
    if (v8 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v8;
    }
  }

  *(a1 + 40) = v7;
  if ((*(a3 + 8) & 1) == 0)
  {

    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::buildIndex(a1);
  }
}

uint64_t nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::~KDTreeBaseClass(uint64_t a1)
{
  nanoflann::PooledAllocator::~PooledAllocator((a1 + 96));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::buildIndex(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = **(a1 + 136);
  if (!v1)
  {
    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::init();
  }

  v3 = (v1[1] - *v1) >> 4;
  *(a1 + 48) = v3;
  *(a1 + 56) = v3;
  nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::init_vind(a1);
  nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::freeIndex(a1, a1);
  v4 = *(a1 + 48);
  *(a1 + 56) = v4;
  if (v4)
  {
    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::computeBoundingBox(a1, a1 + 68);
    if (*(a1 + 40) == 1)
    {
      *(a1 + 24) = nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::divideTree(a1, a1, 0, *(a1 + 48), (a1 + 68));
    }

    else
    {
      v6 = 0;
      v7.__m_.__sig = 850045863;
      memset(v7.__m_.__opaque, 0, sizeof(v7.__m_.__opaque));
      *(a1 + 24) = nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::divideTreeConcurrent(a1, a1, 0, *(a1 + 48), (a1 + 68), &v6, &v7);
      std::mutex::~mutex(&v7);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::init_vind(std::vector<unsigned int> *this)
{
  v1 = *this[5].__end_cap_.__value_;
  if (!v1)
  {
    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::init();
  }

  begin = (v1[1] - *v1) >> 4;
  this[2].__begin_ = begin;
  if (begin != this->__end_ - this->__begin_)
  {
    std::vector<int>::resize(this, begin);
    begin = this[2].__begin_;
  }

  if (begin)
  {
    v4 = 0;
    v5 = vdupq_n_s64(begin - 1);
    v6 = xmmword_23E786B40;
    v7 = xmmword_23E786B50;
    v8 = this->__begin_ + 2;
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v8 - 2) = v4;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v8 - 1) = v4 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *v8 = v4 + 2;
        v8[1] = v4 + 3;
      }

      v4 += 4;
      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 4;
    }

    while (((begin + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
  }
}

void *nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::freeIndex(uint64_t a1, void *a2)
{
  result = a2[13];
  if (result)
  {
    do
    {
      v4 = *result;
      free(result);
      a2[13] = v4;
      result = v4;
    }

    while (v4);
  }

  a2[12] = 0;
  a2[13] = 0;
  a2[15] = 0;
  a2[16] = 0;
  a2[3] = 0;
  a2[7] = 0;
  return result;
}

void nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::computeBoundingBox(unsigned int **a1, uint64_t a2)
{
  v2 = *a1[17];
  if (!v2)
  {
    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::init();
  }

  v3 = *(*a1[17] + 8) - *v2;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EF11B00](exception, "[nanoflann] computeBoundingBox() called but no data points found.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = 0;
  v7 = v3 >> 4;
  do
  {
    *v8.i32 = amt::PointCloudWrapper::kdtree_get_pt(a1[17], **a1, v6);
    *(a2 + 8 * v6++) = vdup_lane_s32(v8, 0);
  }

  while (v6 != 3);
  if (v7 >= 2)
  {
    v9 = (a2 + 4);
    for (i = 1; i != v7; ++i)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        pt = amt::PointCloudWrapper::kdtree_get_pt(a1[17], (*a1)[i], v11);
        if (pt < *(v12 - 1))
        {
          *(v12 - 1) = pt;
        }

        if (pt > *v12)
        {
          *v12 = pt;
        }

        ++v11;
        v12 += 2;
      }

      while (v11 != 3);
    }
  }
}

void *nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::divideTree(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, float *a5)
{
  v10 = nanoflann::PooledAllocator::malloc((a2 + 96), 32);
  v11 = v10;
  if (a4 - a3 <= *(a2 + 32))
  {
    v18 = 0;
    v10[2] = 0;
    v10[3] = 0;
    v19 = a5 + 1;
    *v10 = a3;
    v10[1] = a4;
    do
    {
      *(v19 - 1) = amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a2 + 4 * a3), v18);
      *v19 = amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a2 + 4 * a3), v18);
      v19 += 2;
      ++v18;
    }

    while (v18 != 3);
    v20 = a3 + 1;
    if (v20 < a4)
    {
      v21 = a5 + 1;
      do
      {
        v22 = 0;
        v23 = v21;
        do
        {
          pt = amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a2 + 4 * v20), v22);
          if (*(v23 - 1) > pt)
          {
            *(v23 - 1) = pt;
          }

          if (*v23 < pt)
          {
            *v23 = pt;
          }

          ++v22;
          v23 += 2;
        }

        while (v22 != 3);
        ++v20;
      }

      while (v20 != a4);
    }
  }

  else
  {
    v30 = 0;
    v31 = 0;
    nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::middleSplit_(a1, a2, a3, a4 - a3, &v31, &v30 + 1, &v30, a5);
    v12 = SHIDWORD(v30);
    *v11 = HIDWORD(v30);
    v28 = *a5;
    v29 = *(a5 + 2);
    *(&v28 + 2 * v12 + 1) = v30;
    v11[2] = nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::divideTree(a1, a2, a3, v31 + a3, &v28);
    v26 = *a5;
    v27 = *(a5 + 2);
    *(&v26 + 2 * SHIDWORD(v30)) = v30;
    v13 = nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::divideTree(a1, a2, v31 + a3, a4, &v26);
    v14 = 0;
    v11[3] = v13;
    v15 = 8 * SHIDWORD(v30);
    *(v11 + 1) = *(&v28 + v15 + 4);
    *(v11 + 2) = *(&v26 + v15);
    do
    {
      v16.i32[0] = *(&v26 + v14);
      v16.i32[1] = HIDWORD(*(&v28 + v14));
      v17.i32[0] = *(&v28 + v14);
      v17.i32[1] = HIDWORD(*(&v26 + v14));
      *&a5[v14 / 4] = vbsl_s8(vcgt_f32(v17, v16), *(&v26 + v14), *(&v28 + v14));
      v14 += 8;
    }

    while (v14 != 24);
  }

  return v11;
}

void *nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::divideTreeConcurrent(std::__assoc_sub_state *a1, uint64_t a2, uint64_t a3, unint64_t a4, float *a5, atomic_uint *a6, std::mutex *a7)
{
  v52 = a4;
  v53 = a3;
  std::mutex::lock(a7);
  v14 = nanoflann::PooledAllocator::malloc((a2 + 96), 32);
  std::mutex::unlock(a7);
  if (a4 - a3 <= *(a2 + 32))
  {
    v19 = 0;
    v14[2] = 0;
    v14[3] = 0;
    v20 = a5 + 1;
    *v14 = a3;
    v14[1] = a4;
    do
    {
      *(v20 - 1) = amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a2 + 4 * a3), v19);
      *v20 = amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a2 + 4 * a3), v19);
      v20 += 2;
      ++v19;
    }

    while (v19 != 3);
    v21 = a3 + 1;
    if (a3 + 1 < a4)
    {
      v22 = a5 + 1;
      do
      {
        v23 = 0;
        v24 = v22;
        do
        {
          pt = amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a2 + 4 * v21), v23);
          if (*(v24 - 1) > pt)
          {
            *(v24 - 1) = pt;
          }

          if (*v24 < pt)
          {
            *v24 = pt;
          }

          ++v23;
          v24 += 2;
        }

        while (v23 != 3);
        ++v21;
      }

      while (v21 != a4);
    }
  }

  else
  {
    v50 = 0;
    v51 = 0;
    nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::middleSplit_(a1, a2, a3, a4 - a3, &v51, &v50 + 1, &v50, a5);
    v15 = SHIDWORD(v50);
    *v14 = HIDWORD(v50);
    v48 = 0;
    v49 = 0;
    v46 = *a5;
    v47 = *(a5 + 2);
    *(&v46 + 2 * v15 + 1) = v50;
    if (*&a1->__mut_.__m_.__opaque[8] <= (atomic_fetch_add(a6, 1u) + 1))
    {
      atomic_fetch_add(a6, 0xFFFFFFFF);
      v14[2] = nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::divideTreeConcurrent(a1, a2, v53, v51 + v53, &v46, a6, a7);
    }

    else
    {
      *&v38 = nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::divideTreeConcurrent;
      *(&v38 + 1) = 0;
      v44 = a2;
      v45 = a1;
      v42 = &v46;
      v43 = v51 + v53;
      v40 = a7;
      v41 = a6;
      std::async[abi:ne200100]<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long const&,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>(1, &v38, &v45, &v44, &v53, &v43, &v42, &v41, &v37, &v40);
      v16 = v37;
      *&v37 = 0;
      v17 = v49;
      v49 = v16;
      if (v17)
      {
        if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
        }

        v18 = v37;
        if (v37 && !atomic_fetch_add((v37 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v18 + 16))(v18);
        }
      }
    }

    v38 = *a5;
    v39 = *(a5 + 2);
    *(&v38 + 2 * SHIDWORD(v50)) = v50;
    if (*&a1->__mut_.__m_.__opaque[8] <= (atomic_fetch_add(a6, 1u) + 1))
    {
      atomic_fetch_add(a6, 0xFFFFFFFF);
      v14[3] = nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::divideTreeConcurrent(a1, a2, v51 + v53, v52, &v38, a6, a7);
    }

    else
    {
      *&v37 = nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::divideTreeConcurrent;
      *(&v37 + 1) = 0;
      v43 = a2;
      v44 = a1;
      v41 = &v38;
      v42 = (v51 + v53);
      v40 = a6;
      v36 = a7;
      std::async[abi:ne200100]<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long const&,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>(1, &v37, &v44, &v43, &v42, &v52, &v41, &v40, &v45, &v36);
      v26 = v45;
      v45 = 0;
      v27 = v48;
      v48 = v26;
      if (v27)
      {
        if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
        }

        v28 = v45;
        if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v28 + 16))(v28);
        }
      }
    }

    if (v49)
    {
      v14[2] = std::future<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *>::get(&v49);
      atomic_fetch_add(a6, 0xFFFFFFFF);
    }

    if (v48)
    {
      v14[3] = std::future<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *>::get(&v48);
      atomic_fetch_add(a6, 0xFFFFFFFF);
    }

    v29 = 0;
    v30 = 8 * SHIDWORD(v50);
    *(v14 + 1) = *(&v46 + v30 + 4);
    *(v14 + 2) = *(&v38 + v30);
    do
    {
      v31.i32[0] = *(&v38 + v29);
      v31.i32[1] = HIDWORD(*(&v46 + v29));
      v32.i32[0] = *(&v46 + v29);
      v32.i32[1] = HIDWORD(*(&v38 + v29));
      *&a5[v29 / 4] = vbsl_s8(vcgt_f32(v32, v31), *(&v38 + v29), *(&v46 + v29));
      v29 += 8;
    }

    while (v29 != 24);
    v33 = v48;
    if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
    }

    v34 = v49;
    if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
    }
  }

  return v14;
}

void sub_23E76A2E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3 && !atomic_fetch_add(v3 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(v1 - 120);
  if (v4)
  {
    if (!atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v4 + 16))(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void *nanoflann::PooledAllocator::free_all(nanoflann::PooledAllocator *this)
{
  result = *(this + 1);
  if (result)
  {
    do
    {
      v3 = *result;
      free(result);
      *(this + 1) = v3;
      result = v3;
    }

    while (v3);
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  return result;
}

float amt::PointCloudWrapper::kdtree_get_pt(uint64_t **this, unint64_t a2, unint64_t a3)
{
  if (!*this)
  {
    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::init();
  }

  v3 = **this;
  if (a2 >= ((*this)[1] - v3) >> 4)
  {
    amt::PointCloudWrapper::kdtree_get_pt();
  }

  if (a3 >= 3)
  {
    amt::PointCloudWrapper::kdtree_get_pt();
  }

  return *(v3 + 16 * a2 + 4 * (a3 & 3));
}

void nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::middleSplit_(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, int *a6, float *a7, float *a8)
{
  v16 = a8[1] - *a8;
  v17 = a8 + 3;
  v18 = 2;
  do
  {
    v19 = *(v17 - 1);
    if ((*v17 - v19) > v16)
    {
      v16 = *v17 - v19;
    }

    v17 += 2;
    --v18;
  }

  while (v18);
  v20 = 0;
  *a6 = 0;
  v21 = v16 * 0.99999;
  v22 = a8 + 1;
  v23 = 0.0;
  v24 = -1.0;
  v25 = 0.0;
  do
  {
    if ((*v22 - *(v22 - 1)) > v21)
    {
      LODWORD(v37) = 0;
      LODWORD(v36) = 0;
      nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::computeMinMax(a1, a2, a3, a4, v20, &v37, &v36);
      v26 = *&v36;
      v27 = *&v37;
      v28 = *&v36 - *&v37;
      if ((*&v36 - *&v37) > v24)
      {
        *a6 = v20;
        v25 = v27;
        v23 = v26;
        v24 = v28;
      }
    }

    ++v20;
    v22 += 2;
  }

  while (v20 != 3);
  v29 = *a6;
  v30 = &a8[2 * v29];
  v31 = (*v30 + v30[1]) * 0.5;
  if (v31 <= v23)
  {
    v32 = (*v30 + v30[1]) * 0.5;
  }

  else
  {
    v32 = v23;
  }

  if (v31 >= v25)
  {
    v33 = v32;
  }

  else
  {
    v33 = v25;
  }

  *a7 = v33;
  v36 = 0;
  v37 = 0;
  nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::planeSplit(a1, a2, a3, a4, v29, a7, &v37, &v36);
  v34 = v37;
  v35 = a4 >> 1;
  if (v36 < a4 >> 1)
  {
    v35 = v36;
  }

  if (v37 <= a4 >> 1)
  {
    v34 = v35;
  }

  *a5 = v34;
}

void *nanoflann::PooledAllocator::malloc(size_t *this, uint64_t a2)
{
  v3 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = *this;
  if (v3 <= *this)
  {
    result = this[2];
  }

  else
  {
    this[4] += v4;
    if (v3 <= 0x2000)
    {
      v5 = 8208;
    }

    else
    {
      v5 = v3 + 16;
    }

    v6 = malloc_type_malloc(v5, 0x1242A7ACuLL);
    if (!v6)
    {
      fwrite("Failed to allocate memory.\n", 0x1BuLL, 1uLL, *MEMORY[0x277D85DF8]);
      exception = __cxa_allocate_exception(8uLL);
      v10 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v10, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    *v6 = this[1];
    this[1] = v6;
    v4 = v5 - 16;
    result = v6 + 2;
  }

  *this = v4 - v3;
  v8 = this[3] + v3;
  this[2] = result + v3;
  this[3] = v8;
  return result;
}

void nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::computeMinMax(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, float *a6, float *a7)
{
  v13 = a5;
  pt = amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a1 + 4 * a3), a5);
  *a6 = pt;
  *a7 = pt;
  if (a4 >= 2)
  {
    v15 = a4 - 1;
    v16 = 4 * a3 + 4;
    do
    {
      v17 = amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a1 + v16), v13);
      if (v17 < *a6)
      {
        *a6 = v17;
      }

      if (v17 > *a7)
      {
        *a7 = v17;
      }

      v16 += 4;
      --v15;
    }

    while (v15);
  }
}

void nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::planeSplit(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, float *a6, unint64_t *a7, unint64_t *a8)
{
  v12 = 0;
  v13 = a4 - 1;
  v14 = a5;
  v15 = 4 * a3;
  for (i = a4 - 1; ; --i)
  {
    while (v12 <= i && amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a1 + v15 + 4 * v12), v14) < *a6)
    {
      ++v12;
    }

    v17 = i != 0;
    if (v12 <= i && i)
    {
      v18 = i - 1;
      v19 = v15 + 4 * i;
      while (amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a1 + v19), v14) >= *a6)
      {
        v20 = v18 - 1;
        v17 = v18 != 0;
        if (v12 <= v18)
        {
          v19 -= 4;
          --v18;
          if (v17)
          {
            continue;
          }
        }

        i = v20 + 1;
        goto LABEL_13;
      }

      i = v18 + 1;
      v17 = 1;
    }

LABEL_13:
    if (v12 > i || !v17)
    {
      break;
    }

    v21 = *a1 + 4 * v12;
    v22 = *a1 + 4 * i;
    v23 = *(v21 + 4 * a3);
    *(v21 + 4 * a3) = *(v22 + 4 * a3);
    *(v22 + 4 * a3) = v23;
    ++v12;
  }

  *a7 = v12;
  while (1)
  {
    while (v12 <= v13 && amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a1 + v15 + 4 * v12), v14) <= *a6)
    {
      ++v12;
    }

    v24 = v13 != 0;
    if (v12 <= v13 && v13)
    {
      v25 = v13 - 1;
      v26 = v15 + 4 * v13;
      while (amt::PointCloudWrapper::kdtree_get_pt(*(a2 + 136), *(*a1 + v26), v14) > *a6)
      {
        v27 = v25 - 1;
        v24 = v25 != 0;
        if (v12 <= v25)
        {
          v26 -= 4;
          --v25;
          if (v24)
          {
            continue;
          }
        }

        v13 = v27 + 1;
        goto LABEL_28;
      }

      v13 = v25 + 1;
      v24 = 1;
    }

LABEL_28:
    if (v12 > v13 || !v24)
    {
      break;
    }

    v28 = *a1 + 4 * v12;
    v29 = *a1 + 4 * v13;
    v30 = *(v28 + 4 * a3);
    *(v28 + 4 * a3) = *(v29 + 4 * a3);
    *(v29 + 4 * a3) = v30;
    ++v12;
    --v13;
  }

  *a8 = v12;
}

uint64_t std::async[abi:ne200100]<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long const&,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t *a10)
{
  if (result)
  {
    v10 = *a2;
    v12 = *a3;
    v14 = *a4;
    v16 = *a5;
    v18 = *a6;
    v20 = *a7;
    v22 = *a8;
    v24 = *a10;
    std::__make_async_assoc_state[abi:ne200100]<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>();
  }

  if ((result & 2) != 0)
  {
    v11 = *a2;
    v13 = *a3;
    v15 = *a4;
    v17 = *a5;
    v19 = *a6;
    v21 = *a7;
    v23 = *a8;
    v25 = *a10;
    std::__make_deferred_assoc_state[abi:ne200100]<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>();
  }

  *a9 = 0;
  return result;
}

uint64_t std::async[abi:ne200100]<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long const&,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t *a10)
{
  if (result)
  {
    v10 = *a2;
    v12 = *a3;
    v14 = *a4;
    v16 = *a5;
    v18 = *a6;
    v20 = *a7;
    v22 = *a8;
    v24 = *a10;
    std::__make_async_assoc_state[abi:ne200100]<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>();
  }

  if ((result & 2) != 0)
  {
    v11 = *a2;
    v13 = *a3;
    v15 = *a4;
    v17 = *a5;
    v19 = *a6;
    v21 = *a7;
    v23 = *a8;
    v25 = *a10;
    std::__make_deferred_assoc_state[abi:ne200100]<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>();
  }

  *a9 = 0;
  return result;
}

uint64_t std::future<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *>::get(std::__assoc_sub_state **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
  }

  return v3;
}

void sub_23E76AC48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E76AD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::thread a12)
{
  if (!atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v12 + 16))(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E76AF04(_Unwind_Exception *exception_object)
{
  if (!atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x23EF11E80);
}

uint64_t std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);
  v2 = a1->~__assoc_sub_state_0;

  return (v2)(a1);
}

void sub_23E76B0F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  v10.__ptr_ = &a9;
  std::__assoc_sub_state::set_exception(v9, v10);
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  JUMPOUT(0x23E76B0E0);
}

void sub_23E76B118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void std::__assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *>::set_value<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *>(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x23EF11B50](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

void sub_23E76B37C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>::*)(void),std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>::*)(void),std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>*>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

void sub_23E76B44C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>::*)(void),std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>::*)(void),std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>*>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x23EF11E80](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x23EF11C60]();
    MEMORY[0x23EF11E80](v3, 0x20C4093837F09);
  }

  return a1;
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void std::__deferred_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x23EF11E80);
}

void sub_23E76B694(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  v10.__ptr_ = &a9;
  std::__assoc_sub_state::set_exception(v9, v10);
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  JUMPOUT(0x23E76B684);
}

void sub_23E76B6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void std::__assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *>::move(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v6.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v6);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v5, &a1->__exception_);
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
    __break(1u);
  }

  else
  {
    v3 = a1[1].__vftable;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_23E76B774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<amt::initialDeform(amt::TriangleMesh const&,amt::TriangleMesh const&,amt::TriangleMesh&,amt::FittingParameters const&)::$_0,std::allocator<amt::initialDeform(amt::TriangleMesh const&,amt::TriangleMesh const&,amt::TriangleMesh&,amt::FittingParameters const&)::$_0>,void ()(long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28510E360;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<amt::initialDeform(amt::TriangleMesh const&,amt::TriangleMesh const&,amt::TriangleMesh&,amt::FittingParameters const&)::$_0,std::allocator<amt::initialDeform(amt::TriangleMesh const&,amt::TriangleMesh const&,amt::TriangleMesh&,amt::FittingParameters const&)::$_0>,void ()(long long)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  std::vector<unsigned long>::vector[abi:ne200100](v45, **(a1 + 8));
  std::vector<float>::vector[abi:ne200100](v44, **(a1 + 8));
  v41 = 0;
  v42 = 0;
  v43 = xmmword_23E786AE0;
  v40.i32[2] = 0;
  v40.i64[0] = 0;
  v40 = *amt::TriangleMesh::position(*(a1 + 16), v3);
  v34 = *amt::TriangleMesh::normal(*(a1 + 16), v3);
  v41 = v45[0];
  v42 = v44[0];
  *(&v43 + 1) = 0;
  *v44[0] = 2139095039;
  v4 = *(a1 + 24);
  v36.i32[0] = 0;
  v36.i8[4] = 1;
  nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(v4, &v41, &v40, v36.f32);
  if (SDWORD2(v43) >= 1)
  {
    v5 = 0;
    v6 = DWORD2(v43) & 0x7FFFFFFF;
    while (1)
    {
      v7 = *(v45[0] + v5);
      v8 = vmulq_f32(v34, *amt::TriangleMesh::normal(*(a1 + 32), v7));
      if (*(*(a1 + 40) + 56) <= (v8.f32[2] + vaddv_f32(*v8.f32)))
      {
        break;
      }

      if (v6 == ++v5)
      {
        goto LABEL_19;
      }
    }

    if (v7 != -1)
    {
      started = amt::Adjacency<int>::neighborsStartIndex(*(a1 + 48), v7);
      v10 = amt::Adjacency<int>::neighborsEndIndex(*(a1 + 48), v7);
      v32 = *amt::TriangleMesh::position(*(a1 + 32), v7);
      v30 = vsubq_f32(v32, *amt::TriangleMesh::position(*(a1 + 56), v7));
      v33 = *amt::TriangleMesh::position(*(a1 + 56), v7);
      if (started < v10)
      {
        v11 = started;
        v12 = 1.79769313e308;
        do
        {
          v13 = *(**(a1 + 64) + 4 * v11);
          if (v13 >= (-1431655765 * ((*(*(a1 + 32) + 80) - *(*(a1 + 32) + 72)) >> 2)))
          {
            __assert_rtn("operator()", "AMTPipeline.cpp", 424, "tindex < target.triangleCount()");
          }

          amt::TriangleMesh::triangle(*(a1 + 56), v13, &v37);
          v14 = amt::TriangleMesh::position(*(a1 + 56), v37);
          v15 = amt::TriangleMesh::position(*(a1 + 56), v38);
          v16 = amt::TriangleMesh::position(*(a1 + 56), v39);
          v36.i32[2] = 0;
          v36.i64[0] = 0;
          *v17.i64 = amt::closestPointInTriangle(v14, v15, v16, &v36, v40);
          v18 = 0;
          v19 = vsubq_f32(v40, v17);
          v20 = 0.0;
          do
          {
            v35 = v19;
            v21 = *(&v35 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
            v20 = v20 + (v21 * v21);
            ++v18;
          }

          while (v18 != 3);
          v22 = v20;
          if (v12 > v20)
          {
            v33 = v17;
            v23 = amt::TriangleMesh::position(*(a1 + 32), v37);
            v29 = *v14;
            v31 = *v23;
            v24 = amt::TriangleMesh::position(*(a1 + 32), v38);
            v27 = *v15;
            v28 = *v24;
            v25 = amt::TriangleMesh::position(*(a1 + 32), v39);
            v30 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v28, v27), *v36.f32, 1), vsubq_f32(v31, v29), v36.f32[0]), vsubq_f32(*v25, *v16), v36, 2);
            v12 = v22;
          }

          ++v11;
        }

        while (v10 != v11);
      }

      v26 = *(a1 + 16);
      if (*(*(a1 + 40) + 65))
      {
        v36 = vmlaq_f32(v40, v34, vmulq_f32(v34, vsubq_f32(vaddq_f32(v30, v33), v40)));
      }

      else
      {
        v36 = vaddq_f32(v30, v33);
      }

      amt::TriangleMesh::setPosition(v26, v3, &v36);
    }
  }

LABEL_19:
  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }
}

void sub_23E76BC68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 120);
  if (v4)
  {
    *(v1 - 112) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<amt::initialDeform(amt::TriangleMesh const&,amt::TriangleMesh const&,amt::TriangleMesh&,amt::FittingParameters const&)::$_0,std::allocator<amt::initialDeform(amt::TriangleMesh const&,amt::TriangleMesh const&,amt::TriangleMesh&,amt::FittingParameters const&)::$_0>,void ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(uint64_t a1, uint64_t *a2, uint64_t a3, float *a4)
{
  if (!a3)
  {
    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>();
  }

  if (!*(a1 + 48))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EF11B00](exception, "[nanoflann] findNeighbors() called before building the index.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = 0;
  v8 = *a4;
  v18 = 0;
  v9 = (a1 + 72);
  v10 = 0.0;
  v17 = 0;
  do
  {
    v11 = *(a3 + v7);
    v12 = *(v9 - 1);
    if (v11 < v12)
    {
      v13 = (v11 - v12) * (v11 - v12);
      *(&v17 + v7) = v13;
      v10 = v10 + v13;
    }

    if (v11 > *v9)
    {
      v14 = (v11 - *v9) * (v11 - *v9);
      *(&v17 + v7) = v14;
      v10 = v10 + v14;
    }

    v7 += 4;
    v9 += 2;
  }

  while (v7 != 12);
  nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::searchLevel<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(a1, a2, a3, v5, &v17, v10, v8 + 1.0);
  return a2[3] == a2[2];
}

double amt::closestPointInTriangle(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, float32x4_t a5)
{
  v6 = *a2;
  v7 = *a1;
  v8 = vsubq_f32(*a2, *a1);
  v9 = *a3;
  v10 = vsubq_f32(*a3, *a1);
  v11 = vsubq_f32(a5, *a1);
  v12 = vmulq_f32(v11, v8);
  v13 = vmulq_f32(v11, v10);
  v14 = vadd_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v12, v12, 8uLL)), vadd_f32(vzip1_s32(*v13.i8, *v12.i8), vzip2_s32(*v13.i8, *v12.i8)));
  *v13.i8 = vcge_f32(vdup_n_s32(0x2EDBE6FFu), v14);
  if (v13.i32[1] & v13.i32[0])
  {
    if (a4)
    {
      *(a4 + 8) = 0;
      *a4 = 1065353216;
      v7 = *a1;
    }
  }

  else
  {
    v15 = vsubq_f32(v9, v6);
    v16 = vsubq_f32(a5, v6);
    v17 = vmulq_f32(v16, v8);
    v18 = v17.f32[2] + vaddv_f32(*v17.f32);
    v19 = vmulq_f32(v16, v15);
    v20 = v19.f32[2] + vaddv_f32(*v19.f32);
    if (v18 < -1.0e-10 || v20 > 1.0e-10)
    {
      v21 = vsubq_f32(a5, v9);
      v22 = vmulq_f32(v21, v10);
      v23 = v22.f32[2] + vaddv_f32(*v22.f32);
      v24 = vmulq_f32(v21, v15);
      v25 = v24.f32[2] + vaddv_f32(*v24.f32);
      if (v23 < -1.0e-10 || v25 < -1.0e-10)
      {
        v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v8)), v10, vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL));
        v27 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
        v28 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
        v29 = vmulq_f32(vmlaq_f32(vmulq_f32(v28, vnegq_f32(v11)), v16, v27), v26);
        v30 = v29.f32[1] + (v29.f32[2] + v29.f32[0]);
        if (v14.f32[1] < 1.0e-10 || v30 > 0.0 || v18 > -1.0e-10)
        {
          v36 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
          v37 = vmulq_f32(v26, vmlaq_f32(vmulq_f32(v36, vnegq_f32(v16)), v21, v28));
          v38 = v37.f32[1] + (v37.f32[2] + v37.f32[0]);
          if (v38 > 0.0 || v20 < 1.0e-10 || v25 > -1.0e-10)
          {
            v43 = vmulq_f32(vmlaq_f32(vmulq_f32(v27, vnegq_f32(v21)), v11, v36), v26);
            v44 = v43.f32[1] + (v43.f32[2] + v43.f32[0]);
            if (v44 > 0.0 || v14.f32[0] < 1.0e-10 || v23 > -1.0e-10)
            {
              v48 = v30 + (v38 + v44);
              if ((v38 / v48) <= 1.0)
              {
                v49 = v38 / v48;
              }

              else
              {
                v49 = 1.0;
              }

              v50 = 0.0;
              if ((v38 / v48) >= 0.0)
              {
                v51 = v49;
              }

              else
              {
                v51 = 0.0;
              }

              v52 = 1.0 - v51;
              if ((1.0 - v51) < 0.0)
              {
                amt::updateSamples();
              }

              v53 = v44 / v48;
              if (v52 >= v53)
              {
                v54 = v53;
              }

              else
              {
                v54 = 1.0 - v51;
              }

              if (v53 >= 0.0)
              {
                v50 = v54;
              }

              v55 = v52 - v50;
              if (a4)
              {
                *(a4 + 8) = v55;
                *a4 = __PAIR64__(LODWORD(v50), LODWORD(v51));
                v7 = *a1;
                v6 = *a2;
                v9 = *a3;
              }

              v7.i64[0] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v6, v50), v7, v51), v9, v55).u64[0];
            }

            else
            {
              v45 = v14.f32[0] / (v14.f32[0] - v23);
              if (v45 <= 1.0)
              {
                v46 = v14.f32[0] / (v14.f32[0] - v23);
              }

              else
              {
                v46 = 1.0;
              }

              v33 = v45 < 0.0;
              v47 = 0.0;
              if (!v33)
              {
                v47 = v46;
              }

              if (a4)
              {
                *(a4 + 8) = v47;
                *a4 = COERCE_UNSIGNED_INT(1.0 - v47);
                v7 = *a1;
              }

              v7.i64[0] = vmlaq_n_f32(v7, v10, v47).u64[0];
            }
          }

          else
          {
            v39 = v20 / (v20 - v25);
            if (v39 <= 1.0)
            {
              v40 = v20 / (v20 - v25);
            }

            else
            {
              v40 = 1.0;
            }

            v33 = v39 < 0.0;
            v41 = 0.0;
            if (!v33)
            {
              v41 = v40;
            }

            if (a4)
            {
              LODWORD(v42) = 0;
              *(&v42 + 1) = 1.0 - v41;
              *(a4 + 8) = v41;
              *a4 = v42;
              v6 = *a2;
            }

            v7.i64[0] = vmlaq_n_f32(v6, v15, v41).u64[0];
          }
        }

        else
        {
          v31 = v14.f32[1] / (v14.f32[1] - v18);
          if (v31 <= 1.0)
          {
            v32 = v14.f32[1] / (v14.f32[1] - v18);
          }

          else
          {
            v32 = 1.0;
          }

          v33 = v31 < 0.0;
          v34 = 0.0;
          if (!v33)
          {
            v34 = v32;
          }

          if (a4)
          {
            *&v35 = 1.0 - v34;
            *(&v35 + 1) = v34;
            *(a4 + 8) = 0;
            *a4 = v35;
            v7 = *a1;
          }

          v7.i64[0] = vmlaq_n_f32(v7, v8, v34).u64[0];
        }
      }

      else
      {
        v7 = *a3;
        if (a4)
        {
          *(a4 + 8) = 1065353216;
          *a4 = 0;
          v7 = *a3;
        }
      }
    }

    else
    {
      v7 = *a2;
      if (a4)
      {
        *(a4 + 8) = 0;
        *a4 = 0x3F80000000000000;
        v7 = *a2;
      }
    }
  }

  return *v7.i64;
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_23E76C220(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_23E76C298(_Unwind_Exception *exception_object)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

uint64_t nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::searchLevel<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, uint64_t a5, float a6, float a7)
{
  if (!a4)
  {
    return 0;
  }

  v14 = *(a4 + 2);
  if (v14 || *(a4 + 3))
  {
    v15 = *a4;
    v16 = *(a3 + 4 * v15);
    v17 = *(a4 + 1);
    v18 = *(a4 + 2);
    v19 = v16 - v17;
    v20 = v16 - v18;
    v21 = (v16 - v17) + (v16 - v18);
    v22 = *(a4 + 3);
    if (v21 >= 0.0)
    {
      v23 = *(a4 + 3);
    }

    else
    {
      v23 = *(a4 + 2);
    }

    if (v21 >= 0.0)
    {
      v24 = v14;
    }

    else
    {
      v24 = *(a4 + 3);
    }

    result = nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::searchLevel<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(a1, a2, a3, v23, a5, a6, a7);
    if (result)
    {
      v26 = v19 * v19;
      if (v21 < 0.0)
      {
        v26 = v20 * v20;
      }

      v27 = *(a5 + 4 * v15);
      v28 = (v26 + a6) - v27;
      *(a5 + 4 * v15) = v26;
      if ((v28 * a7) > *(a2[1] + 4 * a2[2] - 4) || (result = nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::searchLevel<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(a1, a2, a3, v24, a5, v28, a7), result))
      {
        *(a5 + 4 * v15) = v27;
        return 1;
      }
    }
  }

  else
  {
    v29 = *a4;
    if (*a4 >= *(a4 + 1))
    {
      return 1;
    }

    v30 = *(a2[1] + 4 * a2[2] - 4);
    do
    {
      v31 = 0;
      v32 = *(*a1 + 4 * v29);
      v33 = 0.0;
      do
      {
        v34 = *(a3 + 4 * v31);
        pt = amt::PointCloudWrapper::kdtree_get_pt(*(a1 + 160), v32, v31);
        v33 = v33 + ((v34 - pt) * (v34 - pt));
        ++v31;
      }

      while (v31 != 3);
      if (v33 < v30)
      {
        result = nanoflann::KNNResultSet<float,unsigned long,unsigned long>::addPoint(a2, *(*a1 + 4 * v29), v33);
        if (!result)
        {
          break;
        }
      }

      ++v29;
      result = 1;
    }

    while (v29 < *(a4 + 1));
  }

  return result;
}

uint64_t nanoflann::KNNResultSet<float,unsigned long,unsigned long>::addPoint(uint64_t *a1, uint64_t a2, float a3)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = 8 * v3 - 8;
    v5 = (a1[1] + 4 * v3);
    do
    {
      v6 = *(v5 - 1);
      if (v6 <= a3)
      {
        break;
      }

      if (v3 < a1[2])
      {
        *v5 = v6;
        *(*a1 + v4 + 8) = *(*a1 + v4);
      }

      v4 -= 8;
      --v5;
      --v3;
    }

    while (v3);
  }

  v7 = a1[2];
  if (v3 < v7)
  {
    v8 = *a1;
    *(a1[1] + 4 * v3) = a3;
    *(v8 + 8 * v3) = a2;
    v7 = a1[2];
  }

  v9 = a1[3];
  if (v9 < v7)
  {
    a1[3] = v9 + 1;
  }

  return 1;
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

void sub_23E76C7B0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x23EF11E10](v1);
  _Unwind_Resume(a1);
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x23EF11E10](a1 + 128);
  return a1;
}

void amt::smoothWithTriangleCentroidConstraints<float>(uint64_t *a1, void *a2, uint64_t *a3, void *a4, int a5, float a6, float a7)
{
  v106 = *MEMORY[0x277D85DE8];
  v7 = a1 + 9;
  v91 = a1[4] - a1[3];
  v8 = v91 >> 4;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((a1[10] - a1[9]) >> 2);
  v89 = v9;
  if ((v91 >> 4))
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && ((a2[4] - a2[3]) >> 2) == v8 && a4[1] - *a4 == v8)
  {
    memset(&v104, 0, sizeof(v104));
    amt::SparseMatrix<float>::SparseMatrix(v101, v9 + v8, v91 >> 4);
    v90 = (v91 >> 4) & 0x7FFFFFFF;
    v85 = v8 - 1;
    v88 = v91 >> 4;
    if (v8 >= 1)
    {
      v17 = 0;
      do
      {
        amt::computeAdjacentVertices(v17, v7, a2, a4, &v104);
        begin = v104.__begin_;
        v19 = v104.__end_ - v104.__begin_;
        v20 = (v104.__end_ - v104.__begin_) >> 2;
        v21 = *a3;
        if (*(*a3 + v17))
        {
          v22 = v20 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          if (v20 >= 1)
          {
            v23 = 0;
            v24 = (v19 >> 2) & 0x7FFFFFFF;
            do
            {
              amt::SparseMatrix<float>::addElementInOrder(v101, v17, v104.__begin_[v23++], -a6);
            }

            while (v24 != v23);
          }

          amt::SparseMatrix<float>::addElementInOrder(v101, v17, v17, v20 * a6);
          LODWORD(v8) = v91 >> 4;
        }

        else
        {
          v25 = 0.0;
          if (v20 >= 1)
          {
            v26 = 0;
            v27 = (v19 >> 2) & 0x7FFFFFFF;
            v28 = 1;
            do
            {
              v30 = *begin++;
              v29 = v30;
              if (*(v21 + v30))
              {
                v105[v26++] = v29;
              }

              if (v28 >= v27)
              {
                break;
              }

              ++v28;
            }

            while (v26 < 3);
            if (v26 == 2)
            {
              amt::SparseMatrix<float>::addElementInOrder(v101, v17, v105[0], -a6);
              amt::SparseMatrix<float>::addElementInOrder(v101, v17, v105[1], -a6);
              v25 = a6 + a6;
            }
          }

          amt::SparseMatrix<float>::addElementInOrder(v101, v17, v17, v25);
        }

        ++v17;
      }

      while (v17 != v90);
    }

    if (v89 >= 1)
    {
      v31 = 0;
      v32 = v89 & 0x7FFFFFFF;
      v33 = v8;
      do
      {
        v34 = *v7;
        amt::SparseMatrix<float>::addElementInOrder(v101, v33, *(*v7 + v31), 1.0);
        v35 = v34 + v31;
        amt::SparseMatrix<float>::addElementInOrder(v101, v33, *(v35 + 4), 1.0);
        amt::SparseMatrix<float>::addElementInOrder(v101, v33++, *(v35 + 8), 1.0);
        v31 += 12;
        --v32;
      }

      while (v32);
    }

    if (v103 >= 1)
    {
      v36 = 0;
      v37 = v102 + 1;
      v38 = *v102;
      do
      {
        v38 += v37[v36];
        v37[v36++] = v38;
      }

      while (v36 < v103);
    }

    amt::SparseMatrix<float>::transpose(v101, v105);
    v39 = 2 * v8;
    if (a5 != -1)
    {
      v39 = a5;
    }

    v87 = v39;
    amt::Vector<float>::Vector(&v100, v89 + v8);
    amt::Vector<float>::Vector(&v99, v8);
    amt::Vector<float>::Vector(&v98, v89 + v8);
    amt::Vector<float>::Vector(&v97, v8);
    amt::Vector<float>::Vector(&v96, v8);
    amt::Vector<float>::Vector(&v95, v8);
    v40 = (v91 >> 4);
    if (((v100.__end_ - v100.__begin_) >> 2) >= 1)
    {
      bzero(v100.__begin_, (v100.__end_ - v100.__begin_) & 0x1FFFFFFFCLL);
    }

    v41 = 0;
    v42 = v8;
    do
    {
      if (((v99.__end_ - v99.__begin_) >> 2) >= 1)
      {
        bzero(v99.__begin_, (v99.__end_ - v99.__begin_) & 0x1FFFFFFFCLL);
      }

      if (v89 >= 1)
      {
        v43 = 0;
        v44 = v40;
        do
        {
          v45 = a1[9];
          v92 = *amt::TriangleMesh::position(a1, *(v45 + v43));
          v46 = v45 + v43;
          v47 = amt::TriangleMesh::position(a1, *(v46 + 4));
          v93 = v92;
          v48 = *(&v93 & 0xFFFFFFFFFFFFFFF3 | (4 * (v41 & 3)));
          v49 = *(v47 + 4 * (v41 & 3));
          v50 = amt::TriangleMesh::position(a1, *(v46 + 8));
          if (v44 >= ((v100.__end_ - v100.__begin_) >> 2))
          {
            __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
          }

          *&v100.__begin_[v44++] = (v48 + v49) + *(v50 + 4 * (v41 & 3));
          v43 += 12;
        }

        while (12 * (v89 & 0x7FFFFFFF) != v43);
      }

      amt::operator*(v105, &v100, &__p);
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v96, __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v97, v96.__begin_, v96.__end_, v96.__end_ - v96.__begin_);
      if (v88 < 1)
      {
        v52 = 0.0;
      }

      else
      {
        v51 = v96.__begin_;
        if ((((v96.__end_ - v96.__begin_) >> 2) & ~(((v96.__end_ - v96.__begin_) >> 2) >> 31)) <= v85)
        {
          __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
        }

        v52 = 0.0;
        v53 = v40;
        do
        {
          v54 = *v51++;
          v52 = v52 + (v54 * v54);
          --v53;
        }

        while (v53);
      }

      if (v87 >= 1 && sqrtf(v52 / v42) > a7)
      {
        v55 = 0;
        do
        {
          amt::operator*(v101, &v97, &__p);
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v98, __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
          if (__p.__begin_)
          {
            __p.__end_ = __p.__begin_;
            operator delete(__p.__begin_);
          }

          amt::operator*(v105, &v98, &__p);
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v95, __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
          if (__p.__begin_)
          {
            __p.__end_ = __p.__begin_;
            operator delete(__p.__begin_);
          }

          if (v88 < 1)
          {
            v52 = 0.0;
          }

          else
          {
            v56 = ((v95.__end_ - v95.__begin_) >> 2) & ~(((v95.__end_ - v95.__begin_) >> 2) >> 31);
            if (v56 >= v85)
            {
              v57 = v85;
            }

            else
            {
              v57 = ((v95.__end_ - v95.__begin_) >> 2) & ~(((v95.__end_ - v95.__begin_) >> 2) >> 31);
            }

            if ((((v97.__end_ - v97.__begin_) >> 2) & ~(((v97.__end_ - v97.__begin_) >> 2) >> 31)) <= v57 || v56 == v57)
            {
              __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
            }

            v59 = 0;
            v60 = 0.0;
            do
            {
              v60 = v60 + (*&v97.__begin_[v59] * *&v95.__begin_[v59]);
              ++v59;
            }

            while (v40 != v59);
            v61 = 0;
            v62 = v97.__begin_;
            v63 = v99.__begin_;
            v64 = v95.__begin_;
            v65 = v96.__begin_;
            v66 = v52 / v60;
            v67 = 4 * (((v96.__end_ - v96.__begin_) >> 2) & ~(((v96.__end_ - v96.__begin_) >> 2) >> 31));
            v68 = 4 * (((v99.__end_ - v99.__begin_) >> 2) & ~(((v99.__end_ - v99.__begin_) >> 2) >> 31));
            v69 = 4 * (((v95.__end_ - v95.__begin_) >> 2) & ~(((v95.__end_ - v95.__begin_) >> 2) >> 31));
            v70 = 4 * (((v97.__end_ - v97.__begin_) >> 2) & ~(((v97.__end_ - v97.__begin_) >> 2) >> 31));
            do
            {
              if (v70 == v61 || v68 == v61 || (*&v63[v61 / 4] = *&v63[v61 / 4] + (v66 * *&v62[v61 / 4]), v69 == v61) || v67 == v61)
              {
                __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
              }

              *&v65[v61 / 4] = *&v65[v61 / 4] + (-v66 * *&v64[v61 / 4]);
              v61 += 4;
            }

            while (4 * v90 != v61);
            v71 = v96.__begin_;
            if ((((v96.__end_ - v96.__begin_) >> 2) & ~(((v96.__end_ - v96.__begin_) >> 2) >> 31)) <= v85)
            {
              __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
            }

            v72 = 0.0;
            v73 = v40;
            do
            {
              v74 = *v71++;
              v72 = v72 + (v74 * v74);
              --v73;
            }

            while (v73);
            v75 = v96.__begin_;
            v76 = v97.__begin_;
            v77 = ((v96.__end_ - v96.__begin_) >> 2) & ~(((v96.__end_ - v96.__begin_) >> 2) >> 31);
            v78 = ((v97.__end_ - v97.__begin_) >> 2) & ~(((v97.__end_ - v97.__begin_) >> 2) >> 31);
            v79 = v90;
            do
            {
              if (!v77 || !v78)
              {
                __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
              }

              v80 = *v75++;
              *v76 = v80 + ((v72 / v52) * *v76);
              ++v76;
              --v78;
              --v77;
              --v79;
            }

            while (v79);
            v52 = v72;
          }

          ++v55;
        }

        while (v55 < v87 && sqrtf(v52 / v42) > a7);
      }

      if (v88 >= 1)
      {
        v81 = 0;
        do
        {
          v82 = amt::TriangleMesh::position(a1, v81);
          if (v81 >= ((v99.__end_ - v99.__begin_) >> 2))
          {
            __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
          }

          v83 = v41;
          if (v41 >= 2uLL)
          {
            v83 = 2;
          }

          *(v82 + 4 * v83) = v99.__begin_[v81++];
        }

        while (v90 != v81);
      }

      ++v41;
    }

    while (v41 != 3);
    if (v95.__begin_)
    {
      v95.__end_ = v95.__begin_;
      operator delete(v95.__begin_);
    }

    if (v96.__begin_)
    {
      v96.__end_ = v96.__begin_;
      operator delete(v96.__begin_);
    }

    if (v97.__begin_)
    {
      v97.__end_ = v97.__begin_;
      operator delete(v97.__begin_);
    }

    if (v98.__begin_)
    {
      v98.__end_ = v98.__begin_;
      operator delete(v98.__begin_);
    }

    if (v99.__begin_)
    {
      v99.__end_ = v99.__begin_;
      operator delete(v99.__begin_);
    }

    if (v100.__begin_)
    {
      v100.__end_ = v100.__begin_;
      operator delete(v100.__begin_);
    }

    amt::Adjacency<int>::~Adjacency(v105);
    amt::Adjacency<int>::~Adjacency(v101);
    if (v104.__begin_)
    {
      v104.__end_ = v104.__begin_;
      operator delete(v104.__begin_);
    }
  }

  v84 = *MEMORY[0x277D85DE8];
}

void sub_23E76D2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a35)
  {
    operator delete(a35);
  }

  amt::Adjacency<int>::~Adjacency(v38 - 208);
  amt::Adjacency<int>::~Adjacency(&a38);
  v40 = *(v38 - 232);
  if (v40)
  {
    *(v38 - 224) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void amt::smoothWithVertexConstraints(void *a1, void *a2, void *a3, void *a4, int a5, float a6, float a7)
{
  v103 = *MEMORY[0x277D85DE8];
  v7 = a1 + 9;
  v8 = a1[4] - a1[3];
  v9 = v8 >> 4;
  if ((v8 >> 4))
  {
    v10 = -1431655765 * ((a1[10] - a1[9]) >> 2) == 0;
    a1[10];
    a1[9];
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && ((a2[4] - a2[3]) >> 2) == v9)
  {
    v12 = a4;
    if (a4[1] - *a4 == v9)
    {
      v17 = a1;
      memset(&v101, 0, sizeof(v101));
      v18 = 2 * v9;
      amt::SparseMatrix<float>::SparseMatrix(v98, 2 * v9, v8 >> 4);
      v90 = v9 - 1;
      v87 = v8 >> 4;
      if (v9 >= 1)
      {
        v84 = 2 * v9;
        v85 = a5;
        v19 = 0;
        v86 = v8;
        v20 = (v8 >> 4) & 0x7FFFFFFF;
        v88 = v12;
        do
        {
          amt::computeAdjacentVertices(v19, v7, a2, v12, &v101);
          begin = v101.__begin_;
          v22 = v101.__end_ - v101.__begin_;
          v23 = (v101.__end_ - v101.__begin_) >> 2;
          v24 = *a3;
          if (*(*a3 + v19))
          {
            v25 = v23 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            v26 = v17;
            v27 = a3;
            v28 = v20;
            if (v23 >= 1)
            {
              v29 = 0;
              v30 = (v22 >> 2) & 0x7FFFFFFF;
              do
              {
                amt::SparseMatrix<float>::addElementInOrder(v98, v19, v101.__begin_[v29++], -a6);
              }

              while (v30 != v29);
            }

            amt::SparseMatrix<float>::addElementInOrder(v98, v19, v19, v23 * a6);
            v20 = v28;
            a3 = v27;
            v17 = v26;
            v12 = v88;
          }

          else
          {
            v31 = 0.0;
            if (v23 >= 1)
            {
              v32 = 0;
              v33 = (v22 >> 2) & 0x7FFFFFFF;
              v34 = 1;
              do
              {
                v36 = *begin++;
                v35 = v36;
                if (*(v24 + v36))
                {
                  v102[v32++] = v35;
                }

                if (v34 >= v33)
                {
                  break;
                }

                ++v34;
              }

              while (v32 < 3);
              if (v32 == 2)
              {
                amt::SparseMatrix<float>::addElementInOrder(v98, v19, v102[0], -a6);
                amt::SparseMatrix<float>::addElementInOrder(v98, v19, v102[1], -a6);
                v31 = a6 + a6;
              }
            }

            amt::SparseMatrix<float>::addElementInOrder(v98, v19, v19, v31);
          }

          ++v19;
        }

        while (v19 != v20);
        v37 = 0;
        v8 = v86;
        LODWORD(v9) = v87;
        v18 = v84;
        a5 = v85;
        do
        {
          amt::SparseMatrix<float>::addElementInOrder(v98, v87 + v37, v37, 1.0);
          ++v37;
        }

        while (v87 != v37);
      }

      if (v100 >= 1)
      {
        v38 = 0;
        v39 = v99 + 1;
        v40 = *v99;
        do
        {
          v40 += v39[v38];
          v39[v38++] = v40;
        }

        while (v38 < v100);
      }

      amt::SparseMatrix<float>::transpose(v98, v102);
      if (a5 == -1)
      {
        v41 = v18;
      }

      else
      {
        v41 = a5;
      }

      v89 = v41;
      amt::Vector<float>::Vector(&v97, v18);
      amt::Vector<float>::Vector(&v96, v9);
      amt::Vector<float>::Vector(&v95, v18);
      amt::Vector<float>::Vector(&v94, v9);
      amt::Vector<float>::Vector(&v93, v9);
      amt::Vector<float>::Vector(&v92, v9);
      v42 = (v8 >> 4);
      if (((v97.__end_ - v97.__begin_) >> 2) >= 1)
      {
        bzero(v97.__begin_, (v97.__end_ - v97.__begin_) & 0x1FFFFFFFCLL);
      }

      v43 = 0;
      v44 = v9;
      v45 = (v8 >> 4);
      do
      {
        if (((v96.__end_ - v96.__begin_) >> 2) >= 1)
        {
          bzero(v96.__begin_, (v96.__end_ - v96.__begin_) & 0x1FFFFFFFCLL);
        }

        if (v9 >= 1)
        {
          v46 = 0;
          v47 = v87;
          v48 = v45;
          do
          {
            v49 = amt::TriangleMesh::position(v17, v46);
            if (v47 >= ((v97.__end_ - v97.__begin_) >> 2))
            {
              __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
            }

            v97.__begin_[v48] = *(v49 + 4 * (v43 & 3));
            ++v46;
            ++v48;
            ++v47;
          }

          while (v45 != v46);
        }

        amt::operator*(v102, &v97, &__p);
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v93, __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
        LODWORD(v9) = v87;
        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v94, v93.__begin_, v93.__end_, v93.__end_ - v93.__begin_);
        if (v87 < 1)
        {
          v51 = 0.0;
        }

        else
        {
          v50 = v93.__begin_;
          if ((((v93.__end_ - v93.__begin_) >> 2) & ~(((v93.__end_ - v93.__begin_) >> 2) >> 31)) <= v90)
          {
            __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
          }

          v51 = 0.0;
          v52 = v42;
          do
          {
            v53 = *v50++;
            v51 = v51 + (v53 * v53);
            --v52;
          }

          while (v52);
        }

        if (v89 >= 1 && sqrtf(v51 / v44) > a7)
        {
          v54 = 0;
          do
          {
            amt::operator*(v98, &v94, &__p);
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v95, __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
            if (__p.__begin_)
            {
              __p.__end_ = __p.__begin_;
              operator delete(__p.__begin_);
            }

            amt::operator*(v102, &v95, &__p);
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v92, __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
            if (__p.__begin_)
            {
              __p.__end_ = __p.__begin_;
              operator delete(__p.__begin_);
            }

            if (v87 < 1)
            {
              v51 = 0.0;
            }

            else
            {
              v55 = ((v92.__end_ - v92.__begin_) >> 2) & ~(((v92.__end_ - v92.__begin_) >> 2) >> 31);
              v56 = v90;
              if (v55 < v90)
              {
                v56 = ((v92.__end_ - v92.__begin_) >> 2) & ~(((v92.__end_ - v92.__begin_) >> 2) >> 31);
              }

              if ((((v94.__end_ - v94.__begin_) >> 2) & ~(((v94.__end_ - v94.__begin_) >> 2) >> 31)) <= v56 || v55 == v56)
              {
                __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
              }

              v58 = 0;
              v59 = 0.0;
              do
              {
                v59 = v59 + (*&v94.__begin_[v58] * *&v92.__begin_[v58]);
                ++v58;
              }

              while (v42 != v58);
              v60 = 0;
              v61 = v94.__begin_;
              v62 = v96.__begin_;
              v63 = v92.__begin_;
              v64 = v93.__begin_;
              v65 = v51 / v59;
              v66 = 4 * (((v93.__end_ - v93.__begin_) >> 2) & ~(((v93.__end_ - v93.__begin_) >> 2) >> 31));
              v67 = 4 * (((v96.__end_ - v96.__begin_) >> 2) & ~(((v96.__end_ - v96.__begin_) >> 2) >> 31));
              v68 = 4 * (((v92.__end_ - v92.__begin_) >> 2) & ~(((v92.__end_ - v92.__begin_) >> 2) >> 31));
              v69 = 4 * (((v94.__end_ - v94.__begin_) >> 2) & ~(((v94.__end_ - v94.__begin_) >> 2) >> 31));
              do
              {
                if (v69 == v60 || v67 == v60 || (*&v62[v60 / 4] = *&v62[v60 / 4] + (v65 * *&v61[v60 / 4]), v68 == v60) || v66 == v60)
                {
                  __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
                }

                *&v64[v60 / 4] = *&v64[v60 / 4] + (-v65 * *&v63[v60 / 4]);
                v60 += 4;
              }

              while (4 * v45 != v60);
              v70 = v93.__begin_;
              if ((((v93.__end_ - v93.__begin_) >> 2) & ~(((v93.__end_ - v93.__begin_) >> 2) >> 31)) <= v90)
              {
                __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
              }

              v71 = 0.0;
              v72 = v42;
              do
              {
                v73 = *v70++;
                v71 = v71 + (v73 * v73);
                --v72;
              }

              while (v72);
              v74 = v93.__begin_;
              v75 = v94.__begin_;
              v76 = ((v93.__end_ - v93.__begin_) >> 2) & ~(((v93.__end_ - v93.__begin_) >> 2) >> 31);
              v77 = ((v94.__end_ - v94.__begin_) >> 2) & ~(((v94.__end_ - v94.__begin_) >> 2) >> 31);
              v78 = v45;
              do
              {
                if (!v76 || !v77)
                {
                  __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
                }

                v79 = *v74++;
                *v75 = v79 + ((v71 / v51) * *v75);
                ++v75;
                --v77;
                --v76;
                --v78;
              }

              while (v78);
              v51 = v71;
            }

            ++v54;
          }

          while (v54 < v89 && sqrtf(v51 / v44) > a7);
        }

        if (v87 >= 1)
        {
          v80 = 0;
          do
          {
            v81 = amt::TriangleMesh::position(v17, v80);
            if (v80 >= ((v96.__end_ - v96.__begin_) >> 2))
            {
              __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
            }

            v82 = v43;
            if (v43 >= 2uLL)
            {
              v82 = 2;
            }

            *(v81 + 4 * v82) = v96.__begin_[v80++];
          }

          while (v45 != v80);
        }

        ++v43;
      }

      while (v43 != 3);
      if (v92.__begin_)
      {
        v92.__end_ = v92.__begin_;
        operator delete(v92.__begin_);
      }

      if (v93.__begin_)
      {
        v93.__end_ = v93.__begin_;
        operator delete(v93.__begin_);
      }

      if (v94.__begin_)
      {
        v94.__end_ = v94.__begin_;
        operator delete(v94.__begin_);
      }

      if (v95.__begin_)
      {
        v95.__end_ = v95.__begin_;
        operator delete(v95.__begin_);
      }

      if (v96.__begin_)
      {
        v96.__end_ = v96.__begin_;
        operator delete(v96.__begin_);
      }

      if (v97.__begin_)
      {
        v97.__end_ = v97.__begin_;
        operator delete(v97.__begin_);
      }

      amt::Adjacency<int>::~Adjacency(v102);
      amt::Adjacency<int>::~Adjacency(v98);
      if (v101.__begin_)
      {
        v101.__end_ = v101.__begin_;
        operator delete(v101.__begin_);
      }
    }
  }

  v83 = *MEMORY[0x277D85DE8];
}

void sub_23E76DCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  amt::Adjacency<int>::~Adjacency(v36 - 208);
  amt::Adjacency<int>::~Adjacency(&a36);
  v38 = *(v36 - 232);
  if (v38)
  {
    *(v36 - 224) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

void *std::vector<signed char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<AMTMeshSourceSemantic>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23E76DE28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<amt::fitMesh(amt::TriangleMesh const&,nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int> const&,amt::TriangleMesh&)::$_0,std::allocator<amt::fitMesh(amt::TriangleMesh const&,nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int> const&,amt::TriangleMesh&)::$_0>,void ()(long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28510E3E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<amt::fitMesh(amt::TriangleMesh const&,nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int> const&,amt::TriangleMesh&)::$_0,std::allocator<amt::fitMesh(amt::TriangleMesh const&,nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int> const&,amt::TriangleMesh&)::$_0>,void ()(long long)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  v13 = 0;
  v11[2] = 1;
  v10 = *amt::TriangleMesh::position(*(a1 + 8), v3);
  v8 = *amt::TriangleMesh::normal(*(a1 + 8), v3);
  v11[0] = &v13;
  v11[1] = &v12;
  v11[3] = 0;
  v12 = 2139095039;
  v4 = *(a1 + 16);
  v9.i32[0] = 0;
  v9.i8[4] = 1;
  nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(v4, v11, &v10, v9.f32);
  v5 = amt::TriangleMesh::position(*(a1 + 24), v13);
  v6 = vmulq_f32(v8, vsubq_f32(*v5, v10));
  v9 = vmlaq_n_f32(v10, v8, v6.f32[2] + vaddv_f32(*v6.f32));
  *&result = amt::TriangleMesh::setPosition(*(a1 + 8), v3, &v9).n128_u64[0];
  return result;
}

uint64_t std::__function::__func<amt::fitMesh(amt::TriangleMesh const&,nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int> const&,amt::TriangleMesh&)::$_0,std::allocator<amt::fitMesh(amt::TriangleMesh const&,nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int> const&,amt::TriangleMesh&)::$_0>,void ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void std::vector<signed char>::__append(char **a1, size_t a2)
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
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
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

void amt::SparseMatrix<float>::addElementInOrder(uint64_t a1, int a2, int a3, float a4)
{
  v18 = a3;
  if (*(a1 + 76) <= a2)
  {
    amt::SparseMatrix<float>::addElementInOrder();
  }

  if (*(a1 + 72) <= a3)
  {
    amt::SparseMatrix<float>::addElementInOrder();
  }

  v6 = *(a1 + 24) + 4 * a2;
  ++*(v6 + 4);
  std::vector<int>::push_back[abi:ne200100]((a1 + 48), &v18);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = *a1;
    v11 = v8 - *a1;
    v12 = v11 >> 2;
    v13 = (v11 >> 2) + 1;
    if (v13 >> 62)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    v15 = v14 >= 0x7FFFFFFFFFFFFFFCLL;
    v16 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v16 = v13;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v16);
    }

    *(4 * v12) = a4;
    v9 = 4 * v12 + 4;
    memcpy(0, v10, v11);
    v17 = *a1;
    *a1 = 0;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = a4;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
}

void amt::SparseMatrix<float>::transpose(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  amt::SparseMatrix<float>::SparseMatrix(a2, *(a1 + 72), *(a1 + 76));
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v4 != v5)
  {
    v6 = *(a2 + 24) + 4;
    do
    {
      v7 = *v4++;
      ++*(v6 + 4 * v7);
    }

    while (v4 != v5);
  }

  if (*(a2 + 76) >= 1)
  {
    v8 = 0;
    v9 = *(a2 + 24);
    v12 = *v9;
    v10 = v9 + 1;
    v11 = v12;
    do
    {
      v11 += v10[v8];
      v10[v8++] = v11;
    }

    while (v8 < *(a2 + 76));
  }

  v13 = *(*(a2 + 32) - 4);
  std::vector<int>::resize((a2 + 48), v13);
  std::vector<int>::resize(a2, v13);
  v14 = *(a1 + 76);
  v15 = *(a2 + 24);
  if (v14 >= 1)
  {
    v16 = 0;
    v17 = *(a1 + 24);
    v18 = *(a2 + 48);
    v19 = *a2;
    do
    {
      v20 = (v17 + 4 * v16);
      v21 = *v20;
      v22 = v20[1];
      if (v21 < v22)
      {
        v23 = (*(a1 + 48) + 4 * v21);
        v24 = (*a1 + 4 * v21);
        v25 = v22 - v21;
        do
        {
          v26 = *v23++;
          v27 = v15[v26];
          v15[v26] = v27 + 1;
          *(v18 + 4 * v27) = v16;
          LODWORD(v26) = *v24++;
          *(v19 + 4 * v27) = v26;
          --v25;
        }

        while (v25);
        v14 = *(a1 + 76);
      }

      ++v16;
    }

    while (v16 < v14);
  }

  v28 = *(a1 + 72);
  if (v28 >= 1)
  {
    v29 = v28 + 1;
    v30 = &v15[v28];
    v31 = v30;
    do
    {
      v32 = *--v31;
      *v30 = v32;
      --v29;
      v30 = v31;
    }

    while (v29 > 1);
  }

  *v15 = 0;
}

std::vector<unsigned int> *amt::operator*@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::vector<unsigned int> *a3@<X8>)
{
  if (*(a1 + 72) != ((a2[1] - *a2) >> 2))
  {
    amt::operator*();
  }

  result = amt::Vector<float>::Vector(a3, *(a1 + 76));
  v7 = *(a1 + 76);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(a1 + 24);
    v10 = *(a1 + 48);
    v11 = *a2;
    v12 = (a2[1] - *a2) >> 2;
    begin = a3->__begin_;
    v14 = (a3->__end_ - a3->__begin_) >> 2;
    v15 = v14 & ~(v14 >> 31);
    do
    {
      v16 = (v9 + 4 * v8);
      v17 = v16[1];
      result = *v16;
      v18 = 0.0;
      if (v17 > result)
      {
        v19 = (*a1 + 4 * result);
        v20 = (v10 + 4 * result);
        LODWORD(result) = v17 - result;
        do
        {
          v22 = *v20++;
          v21 = v22;
          if (v22 >= v12)
          {
            __assert_rtn("operator[]", "AMTMatrix.hpp", 318, "index < size()");
          }

          v23 = *v19++;
          v18 = v18 + (v23 * *(v11 + 4 * v21));
          result = (result - 1);
        }

        while (result);
      }

      if (v8 == v15)
      {
        __assert_rtn("operator[]", "AMTMatrix.hpp", 314, "index < size()");
      }

      *&begin[v8++] = v18;
    }

    while (v8 != v7);
  }

  return result;
}

void sub_23E76E580(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amt::SparseMatrix<float>::SparseMatrix(uint64_t a1, int a2, int a3)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = a3;
  *(a1 + 76) = a2;
  __x = 0;
  std::vector<int>::resize((a1 + 24), a2 + 1, &__x);
  return a1;
}

void sub_23E76E5F8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v1 + 56) = v3;
    operator delete(v3);
  }

  amt::SparseMatrix<float>::SparseMatrix((v1 + 24), v1);
  _Unwind_Resume(a1);
}

std::vector<unsigned int> *amt::Vector<float>::Vector(std::vector<unsigned int> *a1, int a2)
{
  a1->__begin_ = 0;
  a1->__end_ = 0;
  a1->__end_cap_.__value_ = 0;
  std::vector<int>::resize(a1, a2);
  return a1;
}

void sub_23E76E654(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void amt::SparseMatrix<float>::initialize(uint64_t a1, int a2, int a3)
{
  *(a1 + 72) = a3;
  *(a1 + 76) = a2;
  std::vector<int>::resize(a1, 0);
  std::vector<int>::resize((a1 + 24), 0);
  std::vector<int>::resize((a1 + 48), 0);
  v4 = *(a1 + 76);
  __x = 0;
  std::vector<int>::resize((a1 + 24), v4 + 1, &__x);
}

void sub_23E76E83C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<amt::SparseMatrix<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<amt::SparseMatrix<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<amt::SparseMatrix<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amt::SparseMatrix<float>>>(a1, a2);
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amt::SparseMatrix<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<amt::SparseMatrix<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = amt::Adjacency<int>::~Adjacency(v4 - 80);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<AMTPair>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_23E76EA80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<amt::Vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<amt::Vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<amt::Vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amt::Vector<float>>>(a1, a2);
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

std::vector<unsigned int> *std::vector<amt::Vector<float>>::__construct_at_end(std::vector<unsigned int> *result, uint64_t a2)
{
  v2 = result;
  end = result->__end_;
  if (a2)
  {
    v4 = &end[a2];
    v5 = 24 * a2;
    do
    {
      result = amt::Vector<float>::Vector(end++, 0);
      v5 -= 24;
    }

    while (v5);
    end = v4;
  }

  v2->__end_ = end;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amt::Vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<amt::Vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<amt::Vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<amt::Vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

float amt::Vector<float>::operator-=(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = *a2;
  if ((v3 >> 2) != ((*(a2 + 8) - *a2) >> 2))
  {
    amt::Vector<float>::operator-=();
  }

  if ((v3 >> 2) >= 1)
  {
    v5 = (v3 >> 2) & 0x7FFFFFFF;
    do
    {
      v6 = *v4++;
      result = *v2 - v6;
      *v2++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

char **amt::Vector<float>::Vector(char **a1, char **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a1 != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return a1;
}

void sub_23E76ED68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **amt::Operation::ostat(const void **result, const void *a2, uint64_t a3)
{
  if (result[4])
  {
    v5 = result;
    v6 = **result;
    v7 = 0;
    theArray = CFArrayCreateMutable(v6, 3, MEMORY[0x277CBF128]);
    do
    {
      valuePtr = *(a3 + 4 * (v7 & 3));
      v10 = CFNumberCreate(v6, kCFNumberFloat32Type, &valuePtr);
      CFArrayAppendValue(theArray, v10);
      amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v10);
      ++v7;
    }

    while (v7 != 3);
    v8 = theArray;
    theArray = 0;
    amt::AMTWrapper<__CFArray *>::~AMTWrapper(&theArray);
    v9 = v8;
    CFDictionaryAddValue(v5[4], a2, v8);
    return amt::AMTWrapper<__CFArray const*>::~AMTWrapper(&v9);
  }

  return result;
}

{
  if (result[4])
  {
    v4 = result;
    v5 = amt::CFDictionaryCreateWithBox(**result, a3);
    CFDictionaryAddValue(v4[4], a2, v5);
    return amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&v5);
  }

  return result;
}

const void **_ZN3amt9Operation5ostatIDv3_fEEvPK10__CFStringRKNSt3__16vectorIT_NS6_9allocatorIS8_EEEE(const void **result, const void *a2, void *a3)
{
  if (result[4])
  {
    v4 = result;
    v5 = _ZN3amt28CFDictionaryCreateWithVectorIDv3_fEEPK14__CFDictionaryPK13__CFAllocatorRKNSt3__16vectorIT_NS8_9allocatorISA_EEEE(**result, a3);
    CFDictionaryAddValue(v4[4], a2, v5);
    return amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&v5);
  }

  return result;
}

void sub_23E76EEF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

const void **amt::AMTWrapper<__CFArray const*>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFMutableDictionaryRef _ZN3amt28CFDictionaryCreateWithVectorIDv3_fEEPK14__CFDictionaryPK13__CFAllocatorRKNSt3__16vectorIT_NS8_9allocatorISA_EEEE(const __CFAllocator *a1, void *a2)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = (a2[1] - *a2) >> 4;
  v9 = Mutable;
  v7 = CFNumberCreate(a1, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"info.count", v7);
  v5 = v9;
  v9 = 0;
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v7);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&v9);
  return v5;
}

void sub_23E76EFE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(va);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(va1);
  _Unwind_Resume(a1);
}

_OWORD *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6assignEmRKS1_(void *a1, unint64_t a2, _OWORD *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 60))
    {
      v7 = v5 >> 3;
      if (v5 >> 3 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF0)
      {
        v8 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, v8);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  v9 = (a1[1] - result) >> 4;
  if (v9 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = (a1[1] - result) >> 4;
  }

  for (; v10; --v10)
  {
    *result++ = *a3;
  }

  if (a2 <= v9)
  {
    a1[1] = *a1 + 16 * a2;
  }

  else
  {
    v11 = a1[1];
    v12 = &v11[a2 - v9];
    v13 = 16 * a2 - 16 * v9;
    do
    {
      *v11++ = *a3;
      v13 -= 16;
    }

    while (v13);
    a1[1] = v12;
  }

  return result;
}

uint64_t amt::MeshSubdivisionInfo::MeshSubdivisionInfo(uint64_t a1, uint64_t a2)
{
  v4 = amt::Adjacency<AMTPair>::Adjacency(a1, a2);
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  *(v4 + 9) = *(a2 + 72);
  v4[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  amt::Adjacency<AMTPair>::Adjacency(v4 + 12, (a2 + 96));
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 192) = *(a2 + 192);
  return a1;
}

void *amt::Adjacency<AMTPair>::Adjacency(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<AMTPair>::__init_with_size[abi:ne200100]<AMTPair*,AMTPair*>((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 3);
  return a1;
}

void sub_23E76F234(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23E76F2C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<AMTPair>::__init_with_size[abi:ne200100]<AMTPair*,AMTPair*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_23E76F344(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void amt::SubdivisionInfo::~SubdivisionInfo(amt::SubdivisionInfo *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  amt::Adjacency<int>::~Adjacency(this);
}

char **amt::Adjacency<AMTPair>::operator=(char **a1, char **a2)
{
  if (a1 != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1 + 3, a2[3], a2[4], (a2[4] - a2[3]) >> 2);
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a1 + 6, a2[6], a2[7], (a2[7] - a2[6]) >> 3);
  }

  return a1;
}

const void **amt::AMTWrapper<__CFData const*>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **amt::Operation::ostat(const void **this, const __CFString *a2, int a3)
{
  valuePtr = a3;
  if (this[4])
  {
    v4 = this;
    v5 = CFNumberCreate(**this, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(v4[4], a2, v5);
    return amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v5);
  }

  return this;
}

void sub_23E76F524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef amt::CFDictionaryCreateWithBox(const __CFAllocator *a1, uint64_t a2)
{
  theDict = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = 0;
  theArray = CFArrayCreateMutable(a1, 3, MEMORY[0x277CBF128]);
  do
  {
    LODWORD(v10) = *(a2 + 4 * (v4 & 3));
    v13 = CFNumberCreate(a1, kCFNumberFloat32Type, &v10);
    CFArrayAppendValue(theArray, v13);
    amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v13);
    ++v4;
  }

  while (v4 != 3);
  v5 = theArray;
  theArray = 0;
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(&theArray);
  v11 = v5;
  v6 = 0;
  theArray = CFArrayCreateMutable(a1, 3, MEMORY[0x277CBF128]);
  do
  {
    valuePtr = *(a2 + 4 * (v6 & 3) + 16);
    v13 = CFNumberCreate(a1, kCFNumberFloat32Type, &valuePtr);
    CFArrayAppendValue(theArray, v13);
    amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v13);
    ++v6;
  }

  while (v6 != 3);
  v7 = theArray;
  theArray = 0;
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(&theArray);
  v10 = v7;
  CFDictionaryAddValue(theDict, @"info.min", v11);
  CFDictionaryAddValue(theDict, @"info.max", v7);
  v8 = theDict;
  theDict = 0;
  amt::AMTWrapper<__CFArray const*>::~AMTWrapper(&v10);
  amt::AMTWrapper<__CFArray const*>::~AMTWrapper(&v11);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&theDict);
  return v8;
}

void sub_23E76F6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  amt::AMTWrapper<__CFArray const*>::~AMTWrapper(va);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(va1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<amt::assignPointCloudColors(amt::TriangleMesh &,__CFArray const*,amt::PipelineContext &,amt::AttributeMapTransferParameters const&)::$_0,std::allocator<amt::assignPointCloudColors(amt::TriangleMesh &,__CFArray const*,amt::PipelineContext &,amt::AttributeMapTransferParameters const&)::$_0>,void ()(long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28510E460;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<amt::assignPointCloudColors(amt::TriangleMesh &,__CFArray const*,amt::PipelineContext &,amt::AttributeMapTransferParameters const&)::$_0,std::allocator<amt::assignPointCloudColors(amt::TriangleMesh &,__CFArray const*,amt::PipelineContext &,amt::AttributeMapTransferParameters const&)::$_0>,void ()(long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  ValueAtIndex = CFArrayGetValueAtIndex(**(a1 + 8), *a2);
  if (ValueAtIndex)
  {
    v5 = ValueAtIndex;
    v6 = CFGetTypeID(ValueAtIndex);
    if (v6 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v5, @"info.attribute_map");
      amt::AMTImageWrapper::AMTImageWrapper(v15, Value);
      v8 = **(a1 + 16);
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = v8 * v3;
        do
        {
          v11 = amt::TriangleMesh::texCoord(*(a1 + 24), v9);
          v12.n128_f64[0] = amt::AMTImageWrapper::bilinear(v15, COERCE_FLOAT(*v11), COERCE_FLOAT(HIDWORD(*v11)));
          v13 = *(a1 + 24);
          v14 = v12;
          amt::TriangleMesh::setColor(v13, v10 + v9++, &v14);
        }

        while (v9 < **(a1 + 16));
      }

      amt::AMTImageWrapper::~AMTImageWrapper(v15);
    }
  }
}

void sub_23E76F8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  amt::AMTImageWrapper::~AMTImageWrapper(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<amt::assignPointCloudColors(amt::TriangleMesh &,__CFArray const*,amt::PipelineContext &,amt::AttributeMapTransferParameters const&)::$_0,std::allocator<amt::assignPointCloudColors(amt::TriangleMesh &,__CFArray const*,amt::PipelineContext &,amt::AttributeMapTransferParameters const&)::$_0>,void ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double amt::AMTImageWrapper::bilinear(amt::AMTImageWrapper *this, double a2, double a3)
{
  v3 = *(this + 12) + -1.0;
  if (v3 < 0.0)
  {
    amt::updateSamples();
  }

  v5 = *(this + 13) + -1.0;
  if (v5 < 0.0)
  {
    amt::updateSamples();
  }

  v6 = (1.0 - a3) * v5;
  v7 = floor(v6);
  v8 = v3 * a2;
  v9 = ceil(v8);
  if (v3 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(this + 12) + -1.0;
  }

  if (v9 < 0.0)
  {
    v10 = 0.0;
  }

  v11 = v10;
  v12 = floor(v8);
  if (v3 >= v12)
  {
    v3 = v12;
  }

  if (v12 < 0.0)
  {
    v3 = 0.0;
  }

  v13 = v3;
  if (v5 >= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(this + 13) + -1.0;
  }

  if (v7 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14;
  v16 = ceil(v6);
  if (v5 >= v16)
  {
    v5 = v16;
  }

  if (v16 < 0.0)
  {
    v5 = 0.0;
  }

  v17 = v5;
  v18 = v8 - v13;
  v19 = v6 - v15;
  v20 = (1.0 - v18) * (1.0 - v19);
  v21 = v18 * (1.0 - v19);
  v22 = (1.0 - v18) * v19;
  v23 = v18 * v19;
  v34 = amt::AMTImageWrapper::color(this, v13, v15);
  v33 = amt::AMTImageWrapper::color(this, v11, v15);
  v32 = amt::AMTImageWrapper::color(this, v13, v17);
  v24 = amt::AMTImageWrapper::color(this, v11, v17);
  v25 = v20;
  v26 = v21;
  v27 = vmlaq_n_f32(vmulq_n_f32(v33, v26), v34, v25);
  v28 = v22;
  v29 = vmlaq_n_f32(v27, v32, v28);
  v30 = v23;
  *&result = vmlaq_n_f32(v29, v24, v30).u64[0];
  return result;
}

__n128 amt::TriangleMesh::setColor(uint64_t a1, int a2, __n128 *a3)
{
  if (a2 < 0 || (v3 = *(a1 + 48), ((*(a1 + 56) - v3) >> 4) <= a2))
  {
    amt::TriangleMesh::setColor();
  }

  result = *a3;
  *(v3 + 16 * a2) = *a3;
  return result;
}

__n128 amt::AMTImageWrapper::color(amt::AMTImageWrapper *this, int a2, int a3)
{
  v6 = amt::AMTImageWrapper::bytesPerComponent(this);
  result.n128_u64[0] = 0;
  if (v6 == 2)
  {
    v12 = amt::AMTImageWrapper::pixelBytes(this, a2, a3);
    result = 0uLL;
    v14 = *(this + 14);
    if (v14 >= 1)
    {
      for (i = 0; i != v14; ++i)
      {
        LOWORD(v13) = *&v12[2 * i];
        v13 = LODWORD(v13);
        v17 = result;
        *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))) = v13;
        result = v17;
      }
    }
  }

  else if (v6 == 1)
  {
    v8 = amt::AMTImageWrapper::pixelBytes(this, a2, a3);
    result = 0uLL;
    v10 = *(this + 14);
    if (v10 >= 1)
    {
      for (j = 0; j != v10; ++j)
      {
        LOBYTE(v9) = v8[j];
        v9 = LODWORD(v9);
        v16 = result;
        *(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3))) = v9;
        result = v16;
      }
    }
  }

  return result;
}

uint64_t amt::AMTImageWrapper::bytesPerComponent(amt::AMTImageWrapper *this)
{
  v2 = *(this + 3);
  if (!v2 || (v3 = CFGetTypeID(v2), v3 != CGImageGetTypeID()))
  {
    amt::AMTImageWrapper::bytesPerComponent();
  }

  v4 = amt::AMTImageWrapper::bitsPerComponent(this);
  v5 = v4 + 7;
  if (v4 < -7)
  {
    v5 = v4 + 14;
  }

  return (v5 >> 3);
}

unsigned __int8 *amt::AMTImageWrapper::pixelBytes(amt::AMTImageWrapper *this, int a2, int a3)
{
  if (a2 < 0 || *(this + 12) <= a2)
  {
    amt::AMTImageWrapper::pixelBytes();
  }

  if (a3 < 0 || *(this + 13) <= a3)
  {
    amt::AMTImageWrapper::pixelBytes();
  }

  v3 = (*(this + 5) + *(this + 16) * a3 + *(this + 15) * a2);
  if (*(this + 68) == 1)
  {
    v4 = *this;
    v5 = *(this + 14) * *v3;
    return (v4 + (v5 * amt::AMTImageWrapper::bytesPerComponent(this)));
  }

  return v3;
}

amt::AMTImageWrapper *amt::AMTImageWrapper::AMTImageWrapper(amt::AMTImageWrapper *this, CGImage *a2)
{
  *(this + 61) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  amt::AMTImageWrapper::init(this, a2);
  return this;
}

void sub_23E76FD28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void amt::AMTImageWrapper::~AMTImageWrapper(amt::AMTImageWrapper *this)
{
  amt::AMTImageWrapper::release(this);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::radiusSearch(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t a5)
{
  v13 = *a3;
  v14 = a4;
  a4[1] = *a4;
  nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::RadiusResultSet<float,unsigned int>>(a1, &v13, a2, a5);
  v8 = *v14;
  v7 = v14[1];
  if (*(a5 + 4) == 1)
  {
    v9 = a4[1];
    v10 = 126 - 2 * __clz((v9 - *a4) >> 3);
    if (v9 == *a4)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    std::__introsort<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *,false>(*a4, v9, &v15, v11, 1);
  }

  return (v7 - v8) >> 3;
}

BOOL nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::RadiusResultSet<float,unsigned int>>(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  if (!a3)
  {
    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>();
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = *(a1 + 24);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x23EF11B00](exception, "[nanoflann] findNeighbors() called before building the index.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v7 = 0;
    v8 = *a4;
    v18 = 0;
    v9 = (a1 + 72);
    v10 = 0.0;
    v17 = 0;
    do
    {
      v11 = *(a3 + v7);
      v12 = *(v9 - 1);
      if (v11 < v12)
      {
        v13 = (v11 - v12) * (v11 - v12);
        *(&v17 + v7) = v13;
        v10 = v10 + v13;
      }

      if (v11 > *v9)
      {
        v14 = (v11 - *v9) * (v11 - *v9);
        *(&v17 + v7) = v14;
        v10 = v10 + v14;
      }

      v7 += 4;
      v9 += 2;
    }

    while (v7 != 12);
    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::searchLevel<nanoflann::RadiusResultSet<float,unsigned int>>(a1, a2, a3, v6, &v17, v10, v8 + 1.0);
  }

  return v4 != 0;
}

uint64_t nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::searchLevel<nanoflann::RadiusResultSet<float,unsigned int>>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, float a6, float a7)
{
  if (!a4)
  {
    return 0;
  }

  v14 = *(a4 + 2);
  if (!v14 && !*(a4 + 3))
  {
    v29 = *a4;
    if (*a4 < *(a4 + 1))
    {
      v30 = *a2;
      do
      {
        v31 = 0;
        v32 = *(*a1 + 4 * v29);
        v33 = 0.0;
        do
        {
          v34 = *(a3 + 4 * v31);
          pt = amt::PointCloudWrapper::kdtree_get_pt(*(a1 + 160), v32, v31);
          v33 = v33 + ((v34 - pt) * (v34 - pt));
          ++v31;
        }

        while (v31 != 3);
        if (v33 < v30 && *a2 > v33)
        {
          v36 = *(*a1 + 4 * v29);
          v37 = *(a2 + 8);
          v39 = *(v37 + 8);
          v38 = *(v37 + 16);
          if (v39 >= v38)
          {
            v41 = *v37;
            v42 = v39 - *v37;
            v43 = v42 >> 3;
            v44 = (v42 >> 3) + 1;
            if (v44 >> 61)
            {
              std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
            }

            v45 = v38 - v41;
            if (v45 >> 2 > v44)
            {
              v44 = v45 >> 2;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF8)
            {
              v46 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = v44;
            }

            if (v46)
            {
              _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(*(a2 + 8), v46);
            }

            v47 = 8 * v43;
            *v47 = v36;
            *(v47 + 4) = v33;
            v40 = 8 * v43 + 8;
            v48 = (v47 - 8 * (v42 >> 3));
            memcpy(v48, v41, v42);
            v49 = *v37;
            *v37 = v48;
            *(v37 + 8) = v40;
            *(v37 + 16) = 0;
            if (v49)
            {
              operator delete(v49);
            }
          }

          else
          {
            *v39 = v36;
            *(v39 + 4) = v33;
            v40 = v39 + 8;
          }

          *(v37 + 8) = v40;
        }

        ++v29;
      }

      while (v29 < *(a4 + 1));
    }

    return 1;
  }

  v15 = *a4;
  v16 = *(a3 + 4 * v15);
  v17 = *(a4 + 1);
  v18 = *(a4 + 2);
  v19 = v16 - v17;
  v20 = v16 - v18;
  v21 = (v16 - v17) + (v16 - v18);
  v22 = *(a4 + 3);
  if (v21 >= 0.0)
  {
    v23 = *(a4 + 3);
  }

  else
  {
    v23 = *(a4 + 2);
  }

  if (v21 >= 0.0)
  {
    v24 = v14;
  }

  else
  {
    v24 = *(a4 + 3);
  }

  result = nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::searchLevel<nanoflann::RadiusResultSet<float,unsigned int>>(a1, a2, a3, v23, a5, a6, a7);
  if (result)
  {
    v26 = v19 * v19;
    if (v21 < 0.0)
    {
      v26 = v20 * v20;
    }

    v27 = *(a5 + 4 * v15);
    v28 = (v26 + a6) - v27;
    *(a5 + 4 * v15) = v26;
    if ((v28 * a7) > *a2 || (result = nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::searchLevel<nanoflann::RadiusResultSet<float,unsigned int>>(a1, a2, a3, v24, a5, v28, a7), result))
    {
      *(a5 + 4 * v15) = v27;
      return 1;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *,false>(uint64_t result, float *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        if (*(a2 - 1) >= v9[1])
        {
          return result;
        }

        v47 = *v9;
LABEL_81:
        *v9 = *(a2 - 1);
        goto LABEL_82;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v48 = v9[3];
      v49 = v9[1];
      v50 = v9[5];
      if (v48 >= v49)
      {
        if (v50 < v48)
        {
          v55 = *(v9 + 1);
          v54 = *(v9 + 2);
          *(v9 + 1) = v54;
          *(v9 + 2) = v55;
          v50 = *(&v55 + 1);
          if (v49 > *(&v54 + 1))
          {
            v56 = *v9;
            *v9 = v54;
            *(v9 + 1) = v56;
          }
        }
      }

      else
      {
        v51 = *v9;
        LODWORD(v52) = HIDWORD(*v9);
        if (v50 < v48)
        {
          *v9 = *(v9 + 2);
          goto LABEL_110;
        }

        *v9 = *(v9 + 1);
        *(v9 + 1) = v51;
        if (v50 < v52)
        {
          *(v9 + 1) = *(v9 + 2);
LABEL_110:
          *(v9 + 2) = v51;
          v50 = v52;
        }
      }

      if (*(a2 - 1) < v50)
      {
        v64 = *(v9 + 2);
        *(v9 + 2) = *(a2 - 1);
        *(a2 - 1) = v64;
        if (v9[5] < v9[3])
        {
          v66 = *(v9 + 1);
          v65 = *(v9 + 2);
          *(v9 + 1) = v65;
          *(v9 + 2) = v66;
          if (v9[1] > *(&v65 + 1))
          {
            v67 = *v9;
            *v9 = v65;
            *(v9 + 1) = v67;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *>(v9, a2);
      }

      else if (v9 != a2)
      {
        while ((v8 + 8) != a2)
        {
          v57 = *(v8 + 12);
          v58 = *(v8 + 4);
          v63 = (v8 + 8);
          v8 += 8;
          if (v57 < v58)
          {
            v59 = *v63;
            v60 = v8;
            do
            {
              v61 = v60;
              v62 = *(v60 - 1);
              v60 -= 2;
              *v61 = v62;
            }

            while (*(v61 - 3) > v57);
            *v60 = v59;
            v60[1] = v57;
          }
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *,nanoflann::ResultItem<unsigned int,float> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v15 = v13[1];
      if (v15 >= v9[1])
      {
        if (v14 < v15)
        {
          v19 = *v13;
          *v13 = *(a2 - 1);
          *(a2 - 1) = v19;
          if (v13[1] < v9[1])
          {
            v20 = *v9;
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        v16 = *v9;
        if (v14 < v15)
        {
          *v9 = *(a2 - 1);
          goto LABEL_29;
        }

        *v9 = *v13;
        *v13 = v16;
        if (*(a2 - 1) < *(&v16 + 1))
        {
          *v13 = *(a2 - 1);
LABEL_29:
          *(a2 - 1) = v16;
        }
      }

      v23 = v13 - 2;
      v24 = *(v13 - 1);
      v25 = *(a2 - 3);
      if (v24 >= v9[3])
      {
        if (v25 < v24)
        {
          v27 = *v23;
          *v23 = *(a2 - 2);
          *(a2 - 2) = v27;
          if (*(v13 - 1) < v9[3])
          {
            v28 = *(v9 + 1);
            *(v9 + 1) = *v23;
            *v23 = v28;
          }
        }
      }

      else
      {
        v26 = *(v9 + 1);
        if (v25 < v24)
        {
          *(v9 + 1) = *(a2 - 2);
          goto LABEL_43;
        }

        *(v9 + 1) = *v23;
        *v23 = v26;
        if (*(a2 - 3) < *(&v26 + 1))
        {
          *v23 = *(a2 - 2);
LABEL_43:
          *(a2 - 2) = v26;
        }
      }

      v29 = (v13 + 2);
      v30 = v13[3];
      v31 = *(a2 - 5);
      if (v30 >= v9[5])
      {
        if (v31 < v30)
        {
          v33 = *v29;
          *v29 = *(a2 - 3);
          *(a2 - 3) = v33;
          if (v13[3] < v9[5])
          {
            v34 = *(v9 + 2);
            *(v9 + 2) = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        v32 = *(v9 + 2);
        if (v31 < v30)
        {
          *(v9 + 2) = *(a2 - 3);
          goto LABEL_52;
        }

        *(v9 + 2) = *v29;
        *v29 = v32;
        if (*(a2 - 5) < *(&v32 + 1))
        {
          *v29 = *(a2 - 3);
LABEL_52:
          *(a2 - 3) = v32;
        }
      }

      v35 = v13[1];
      v36 = *(v13 - 1);
      v37 = v13[3];
      if (v35 >= v36)
      {
        v38 = *v13;
        if (v37 < v35)
        {
          v39 = *v29;
          *v13 = *v29;
          *v29 = v38;
          if (v36 <= *(&v39 + 1))
          {
            v38 = v39;
          }

          else
          {
            v38 = *v23;
            *v23 = v39;
            *v13 = v38;
          }
        }
      }

      else
      {
        v38 = *v23;
        if (v37 >= v35)
        {
          *v23 = *v13;
          *v13 = v38;
          if (v37 < *(&v38 + 1))
          {
            v40 = *v29;
            *v13 = *v29;
            *v29 = v38;
            v38 = v40;
          }
        }

        else
        {
          *v23 = *v29;
          *v29 = v38;
          v38 = *v13;
        }
      }

      v41 = *v9;
      *v9 = v38;
      *v13 = v41;
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v17 = v9[1];
    if (v17 < v13[1])
    {
      v18 = *v13;
      if (v14 < v17)
      {
        *v13 = *(a2 - 1);
        goto LABEL_38;
      }

      *v13 = *v9;
      *v9 = v18;
      if (*(a2 - 1) < *(&v18 + 1))
      {
        *v9 = *(a2 - 1);
LABEL_38:
        *(a2 - 1) = v18;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v14 >= v17)
    {
      goto LABEL_39;
    }

    v21 = *v9;
    *v9 = *(a2 - 1);
    *(a2 - 1) = v21;
    if (v9[1] >= v13[1])
    {
      goto LABEL_39;
    }

    v22 = *v13;
    *v13 = *v9;
    *v9 = v22;
    if (a5)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (*(v9 - 1) >= v9[1])
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::ResultItem<unsigned int,float> *,nanoflann::IndexDist_Sorter &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_64:
    v42 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::ResultItem<unsigned int,float> *,nanoflann::IndexDist_Sorter &>(v9, a2);
    if ((v43 & 1) == 0)
    {
      goto LABEL_67;
    }

    v44 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *>(v9, v42);
    v9 = (v42 + 8);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *>(v42 + 8, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v42;
      if (v44)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v44)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *,false>(v8, v42, a3, -v11, a5 & 1);
      v9 = (v42 + 8);
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v45 = v9[3];
  v46 = *(a2 - 1);
  if (v45 < v9[1])
  {
    v47 = *v9;
    if (v46 < v45)
    {
      goto LABEL_81;
    }

    *v9 = *(v9 + 1);
    *(v9 + 1) = v47;
    if (*(a2 - 1) >= *(&v47 + 1))
    {
      return result;
    }

    *(v9 + 1) = *(a2 - 1);
LABEL_82:
    *(a2 - 1) = v47;
    return result;
  }

  if (v46 < v45)
  {
    v53 = *(v9 + 1);
    *(v9 + 1) = *(a2 - 1);
    *(a2 - 1) = v53;
    if (v9[3] < v9[1])
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }
  }

  return result;
}

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *,0>(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[1];
  v6 = a3[1];
  if (v5 >= result[1])
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (a2[1] >= result[1])
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = a3[1];
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *(&v7 + 1);
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = a3[1];
    if (v6 < *(&v7 + 1))
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *(&v7 + 1);
    }
  }

LABEL_10:
  if (a4[1] < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (a3[1] < a2[1])
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (a2[1] < result[1])
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (a5[1] < a4[1])
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (a4[1] < a3[1])
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (a3[1] < a2[1])
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (a2[1] < result[1])
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *>(uint64_t result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = (result + 8);
    if ((result + 8) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 3);
        v6 = *(v4 + 1);
        v4 = v2;
        if (v5 < v6)
        {
          v7 = *v2;
          v8 = v3;
          while (1)
          {
            *(result + v8 + 8) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 4);
            v8 -= 8;
            if (v9 <= v5)
            {
              v10 = result + v8 + 8;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v7;
          *(v10 + 4) = v5;
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::ResultItem<unsigned int,float> *,nanoflann::IndexDist_Sorter &>(float *a1, float *a2)
{
  v2 = a1[1];
  if (*(a2 - 1) <= v2)
  {
    v6 = (a1 + 2);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 4);
      v6 += 8;
    }

    while (v7 <= v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 2);
      v5 = v3[3];
      v3 += 2;
    }

    while (v5 <= v2);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
    }

    while (v9 > v2);
  }

  v10 = *a1;
  while (v4 < v8)
  {
    v11 = *v4;
    *v4 = *v8;
    *v8 = v11;
    do
    {
      v12 = *(v4 + 12);
      v4 += 8;
    }

    while (v12 <= v2);
    do
    {
      v13 = *(v8 - 1);
      v8 -= 2;
    }

    while (v13 > v2);
  }

  if ((v4 - 8) != a1)
  {
    *a1 = *(v4 - 8);
  }

  *(v4 - 8) = v10;
  *(v4 - 4) = v2;
  return v4;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::ResultItem<unsigned int,float> *,nanoflann::IndexDist_Sorter &>(float *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 3];
    v2 += 2;
  }

  while (v5 < v4);
  v6 = &a1[v2];
  if (v2 == 2)
  {
    while (v6 < a2)
    {
      v7 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
      if (v9 < v4)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 2;
      v8 = *(a2 - 1);
      a2 -= 2;
    }

    while (v8 >= v4);
  }

LABEL_9:
  v10 = &a1[v2];
  if (v6 < v7)
  {
    v11 = v7;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10 + 12);
        v10 += 8;
      }

      while (v13 < v4);
      do
      {
        v14 = *(v11 - 1);
        v11 -= 2;
      }

      while (v14 >= v4);
    }

    while (v10 < v11);
  }

  if ((v10 - 8) != a1)
  {
    *a1 = *(v10 - 8);
  }

  *(v10 - 8) = v3;
  *(v10 - 4) = v4;
  return v10 - 8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 12);
      v5 = *(a2 - 4);
      if (v4 >= *(a1 + 4))
      {
        if (v5 < v4)
        {
          v15 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v15;
          if (*(a1 + 12) < *(a1 + 4))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v3;
        if (*(a2 - 4) >= *(&v3 + 1))
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 8);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 8);
LABEL_13:
      *(a2 - 8) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), (a2 - 8));
        return 1;
      }

      goto LABEL_14;
    }

    v10 = *(a1 + 12);
    v11 = *(a1 + 4);
    v12 = *(a1 + 20);
    if (v10 >= v11)
    {
      if (v12 < v10)
      {
        v20 = *(a1 + 8);
        v19 = *(a1 + 16);
        *(a1 + 8) = v19;
        *(a1 + 16) = v20;
        v12 = *(&v20 + 1);
        if (v11 > *(&v19 + 1))
        {
          v21 = *a1;
          *a1 = v19;
          *(a1 + 8) = v21;
        }
      }

      goto LABEL_48;
    }

    v13 = *a1;
    LODWORD(v14) = HIDWORD(*a1);
    if (v12 >= v10)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v13;
      if (v12 >= v14)
      {
LABEL_48:
        if (*(a2 - 4) < v12)
        {
          v31 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          if (*(a1 + 20) < *(a1 + 12))
          {
            v33 = *(a1 + 8);
            v32 = *(a1 + 16);
            *(a1 + 8) = v32;
            *(a1 + 16) = v33;
            if (*(a1 + 4) > *(&v32 + 1))
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 8) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v13;
    v12 = v14;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 4) < *(a1 + 4))
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = *(a1 + 12);
  v7 = *(a1 + 4);
  v8 = *(a1 + 20);
  if (v6 >= v7)
  {
    if (v8 < v6)
    {
      v17 = *(a1 + 8);
      v16 = *(a1 + 16);
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      if (v7 > *(&v16 + 1))
      {
        v18 = *a1;
        *a1 = v16;
        *(a1 + 8) = v18;
      }
    }
  }

  else
  {
    v9 = *a1;
    if (v8 >= v6)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v9;
      if (v8 >= *(&v9 + 1))
      {
        goto LABEL_34;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v9;
  }

LABEL_34:
  v22 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1 + 16;
  while (1)
  {
    v26 = *(v22 + 4);
    if (v26 < *(v25 + 4))
    {
      v27 = *v22;
      v28 = v23;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 12);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v27;
      *(v30 + 4) = v26;
      if (++v24 == 8)
      {
        return v22 + 8 == a2;
      }
    }

    v25 = v22;
    v23 += 8;
    v22 += 8;
    if (v22 == a2)
    {
      return 1;
    }
  }
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *,nanoflann::ResultItem<unsigned int,float> *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[1] < a1[1])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[2 * v14];
          v18 = v17 + 2;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v19;
          }

          else
          {
            v20 = v17[3];
            v21 = v17[5];
            v22 = v17 + 4;
            if (v20 >= v21)
            {
              v14 = v19;
            }

            else
            {
              v18 = v22;
            }
          }

          *v16 = *v18;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v18 == v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *>(a1, (v18 + 2), a4, ((v18 + 2) - a1) >> 3);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && v8[1] < v8[3])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = a4[1];
      if (v8[1] >= v10)
      {
        v11 = *a4;
        do
        {
          v12 = a4;
          a4 = v8;
          *v12 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && v8[1] < v8[3])
          {
            v8 += 2;
            v7 = v14;
          }
        }

        while (v8[1] >= v10);
        *a4 = v11;
        a4[1] = v10;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,nanoflann::IndexDist_Sorter &,nanoflann::ResultItem<unsigned int,float> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 8 * v4;
    v6 = *(a2 - 4);
    if (*(v5 + 4) < v6)
    {
      v9 = *(a2 - 8);
      v7 = a2 - 8;
      v8 = v9;
      do
      {
        v10 = v7;
        v7 = v5;
        *v10 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 8 * v4;
      }

      while (*(v5 + 4) < v6);
      *v7 = v8;
      *(v7 + 4) = v6;
    }
  }

  return result;
}

void std::vector<amt::TriangleMesh>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x84BDA12F684BDA13 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<amt::TriangleMesh>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 216 * a2;
    while (v3 != v7)
    {
      amt::TriangleMesh::~TriangleMesh((v3 - 216));
    }

    a1[1] = v7;
  }
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2)
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
    std::vector<unsigned long>::__append(a1, a2 - v2);
  }
}

const void **amt::Operation::ostat<amt::TriangleMesh>(const void **result, const void *a2, void *a3)
{
  if (result[4])
  {
    v4 = result;
    v5 = amt::CFDictionaryCreateWithVector<amt::TriangleMesh>(**result, a3);
    CFDictionaryAddValue(v4[4], a2, v5);
    return amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&v5);
  }

  return result;
}

void sub_23E771368(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::set<unsigned long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::set<unsigned long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::set<unsigned long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::set<unsigned long>>>(a1, a2);
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::set<unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::set<unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 24;
        std::__tree<unsigned long>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<unsigned long>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned long>::destroy(a1, *a2);
    std::__tree<unsigned long>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<amt::TriangleMesh>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x84BDA12F684BDA13 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 216 * ((216 * a2 - 216) / 0xD8) + 216;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x84BDA12F684BDA13 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x12F684BDA12F684)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x84BDA12F684BDA13 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x97B425ED097B42)
    {
      v9 = 0x12F684BDA12F684;
    }

    else
    {
      v9 = v8;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amt::TriangleMesh>>(a1, v9);
    }

    v16 = 0;
    v17 = 216 * v6;
    v11 = 216 * ((216 * a2 - 216) / 0xD8) + 216;
    bzero((216 * v6), v11);
    v18 = 216 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = 216 * v6 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amt::TriangleMesh>,amt::TriangleMesh*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<amt::TriangleMesh>::~__split_buffer(&v16);
  }
}

void sub_23E771734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<amt::TriangleMesh>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amt::TriangleMesh>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amt::TriangleMesh>,amt::TriangleMesh*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 3);
      *(a4 + 40) = v6[5];
      v6[3] = 0;
      v6[4] = 0;
      v6[5] = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v6 + 3);
      *(a4 + 64) = v6[8];
      v6[6] = 0;
      v6[7] = 0;
      v6[8] = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 88) = v6[11];
      v6[9] = 0;
      v6[10] = 0;
      v6[11] = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 6);
      *(a4 + 112) = v6[14];
      v6[12] = 0;
      v6[13] = 0;
      v6[14] = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 15);
      *(a4 + 136) = v6[17];
      v6[15] = 0;
      v6[16] = 0;
      v6[17] = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 144) = *(v6 + 9);
      *(a4 + 160) = v6[20];
      v6[18] = 0;
      v6[19] = 0;
      v6[20] = 0;
      *(a4 + 168) = 0;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 168) = *(v6 + 21);
      *(a4 + 184) = v6[23];
      v6[21] = 0;
      v6[22] = 0;
      v6[23] = 0;
      v7 = *(v6 + 12);
      *(a4 + 208) = v6[26];
      *(a4 + 192) = v7;
      v6[25] = 0;
      v6[26] = 0;
      v6[24] = 0;
      v6 += 27;
      a4 += 216;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      amt::TriangleMesh::~TriangleMesh(v5);
      v5 = (v8 + 216);
    }
  }
}

uint64_t std::__split_buffer<amt::TriangleMesh>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
    amt::TriangleMesh::~TriangleMesh((i - 216));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
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
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(uint64_t a1, unint64_t *a2)
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

uint64_t *std::__tree<unsigned long>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

CFMutableDictionaryRef amt::CFDictionaryCreateWithVector<amt::TriangleMesh>(const __CFAllocator *a1, void *a2)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3);
  v9 = Mutable;
  v7 = CFNumberCreate(a1, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"info.count", v7);
  v5 = v9;
  v9 = 0;
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v7);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&v9);
  return v5;
}

void sub_23E771E10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(va);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(va1);
  _Unwind_Resume(a1);
}

uint64_t amt::AMTImageWrapper::alphaInfo(amt::AMTImageWrapper *this)
{
  v2 = *(this + 3);
  if (!v2 || (v3 = CFGetTypeID(v2), v3 != CGImageGetTypeID()))
  {
    amt::AMTImageWrapper::alphaInfo();
  }

  v4 = *(this + 3);

  return CGImageGetAlphaInfo(v4);
}

void amt::padAttributeMap(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, char a5)
{
  amt::Matrix<unsigned char>::Matrix(&v25, 1, 1);
  if (a1)
  {
    do
    {
      v10 = amt::dilatePadding(a2, a3, &v25, a1);
      amt::Matrix<unsigned char>::Matrix(&__p, a3);
      if (&v25 != a3)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, v25, v26, v26 - v25);
      }

      v11 = __p;
      a3[3] = v27;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v25, v11, v29, v29 - v11);
      v27 = v30;
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }
    }

    while (!v10);
    v12 = *(a2 + 24);
    if (*(a1 + 24) != v12 || (v13 = *(a2 + 28), *(a1 + 28) != v13))
    {
      v15 = "mask.columnCount() == width && mask.rowCount() == height";
      v24 = 1687;
      v16 = "AMTPipeline.cpp";
      v17 = "trim";
      goto LABEL_34;
    }

    if (v13 >= 1)
    {
      v14 = 0;
      v15 = "rowIndex < _rowCount";
      v16 = "AMTMatrix.hpp";
      v17 = "row";
      while (1)
      {
        if (*(a1 + 28) <= v14)
        {
          v24 = 521;
          goto LABEL_34;
        }

        if (*(a2 + 28) <= v14)
        {
          break;
        }

        if (v12 >= 1)
        {
          v18 = (*a2 + 16 * *(a2 + 24) * v14);
          v19 = (*a1 + *(a1 + 24) * v14);
          v20 = v12;
          do
          {
            if (!*v19++)
            {
              *v18 = 0;
              v18[1] = 0;
            }

            v18 += 2;
            --v20;
          }

          while (v20);
        }

        if (++v14 == v13)
        {
          goto LABEL_19;
        }
      }

      v24 = 517;
LABEL_34:
      __assert_rtn(v17, v16, v24, v15);
    }

LABEL_19:
    amt::Matrix<unsigned char>::operator&=(a3, a1);
  }

  if (*(a4 + 8) >= 1)
  {
    v22 = 0;
    do
    {
      amt::dilatePadding(a2, a3, &v25, 0);
      amt::Matrix<unsigned char>::Matrix(&__p, a3);
      if (&v25 != a3)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, v25, v26, v26 - v25);
      }

      v23 = __p;
      a3[3] = v27;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v25, v23, v29, v29 - v23);
      v27 = v30;
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      ++v22;
    }

    while (v22 < *(a4 + 8));
  }

  if (a5)
  {
    _ZN3amt15pushPullPaddingIDv4_fEEvRNS_6MatrixIT_EERKNS2_IhEE(a2, a3);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_23E7720F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amt::dilatePadding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 24);
  if (*(a2 + 24) != v4 || (v7 = *(a1 + 28), *(a2 + 28) != v7))
  {
    amt::dilatePadding();
  }

  if (a4 && *(a4 + 24) != __PAIR64__(v7, v4))
  {
    amt::dilatePadding();
  }

  amt::Matrix<unsigned char>::resize(a3, v7, v4);
  if (v7 >= 1)
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      if (a4)
      {
        if (*(a4 + 28) <= v11)
        {
          amt::dilatePadding();
        }

        v13 = *a4 + *(a4 + 24) * v11;
      }

      else
      {
        v13 = 0;
      }

      if (*(a2 + 28) <= v11)
      {
        amt::dilatePadding();
      }

      if (*(a3 + 28) <= v11)
      {
        amt::updateSamples();
      }

      if (*(a1 + 28) <= v11)
      {
        amt::updateSamples();
      }

      if (v4 > 0)
      {
        break;
      }

      LODWORD(v19) = v11 + 1;
LABEL_45:
      v11 = v19;
      if (v19 == v7)
      {
        return v12 & 1;
      }
    }

    v14 = 0;
    v15 = *a2 + *(a2 + 24) * v11;
    v16 = *a3 + *(a3 + 24) * v11;
    v17 = (*a1 + 16 * *(a1 + 24) * v11);
    v18 = v11 - 1;
    v19 = v11 + 1;
    while (*(v15 + v14))
    {
      v20 = 1;
LABEL_42:
      *(v16 + v14++) = v20;
      ++v17;
      if (v4 == v14)
      {
        goto LABEL_45;
      }
    }

    v21 = 0uLL;
    if (v14)
    {
      v22 = *(v15 + v14 - 1);
      if (*(v15 + v14 - 1))
      {
        v21 = vaddq_f32(v17[-1], 0);
        v22 = 1;
      }
    }

    else
    {
      v22 = 0;
    }

    if (v14 < v4 - 1 && *(v15 + v14 + 1))
    {
      v10 = v17[1];
      v21 = vaddq_f32(v21, v10);
      ++v22;
    }

    if (v11)
    {
      if (*(a2 + 28) < v11)
      {
        amt::dilatePadding();
      }

      if (*(*a2 + *(a2 + 24) * v18 + v14))
      {
        if (*(a1 + 28) < v11)
        {
          amt::updateSamples();
        }

        v10 = *(*a1 + 16 * *(a1 + 24) * v18 + 16 * v14);
        v21 = vaddq_f32(v21, v10);
        ++v22;
      }
    }

    if (v11 >= v7 - 1)
    {
      goto LABEL_35;
    }

    if (*(a2 + 28) <= v19)
    {
      amt::dilatePadding();
    }

    if (*(*a2 + *(a2 + 24) * v19 + v14))
    {
      if (*(a1 + 28) <= v19)
      {
        amt::updateSamples();
      }

      v10 = *(*a1 + 16 * *(a1 + 24) * v19 + 16 * v14);
      v21 = vaddq_f32(v21, v10);
      ++v22;
    }

    else
    {
LABEL_35:
      if (!v22)
      {
        if (a4)
        {
          v23 = *(v13 + v14) == 0;
        }

        else
        {
          v23 = 1;
        }

        v20 = 0;
        v12 &= v23;
        goto LABEL_41;
      }
    }

    v10.f32[0] = v22;
    v10 = vdupq_lane_s32(*v10.f32, 0);
    v21 = vdivq_f32(v21, v10);
    v20 = 1;
LABEL_41:
    *v17 = v21;
    goto LABEL_42;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t amt::Matrix<unsigned char>::operator&=(uint64_t result, uint64_t a2)
{
  LODWORD(v2) = *(result + 24);
  if (v2 != *(a2 + 24) || (v3 = *(result + 28), v3 != *(a2 + 28)))
  {
    amt::Matrix<unsigned char>::operator&=();
  }

  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      if (*(a2 + 28) <= i)
      {
        amt::dilatePadding();
      }

      if (v2 >= 1)
      {
        v5 = 0;
        v6 = *result + v2 * i;
        v7 = *a2 + *(a2 + 24) * i;
        do
        {
          *(v6 + v5) &= *(v7 + v5);
          ++v5;
          v2 = *(result + 24);
        }

        while (v5 < v2);
        v3 = *(result + 28);
      }
    }
  }

  return result;
}

void _ZN3amt15pushPullPaddingIDv4_fEEvRNS_6MatrixIT_EERKNS2_IhEE(uint64_t a1, unsigned __int8 **a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);
  if (v2 >= 2 && v3 >= 2)
  {
    if (v3 >= v2)
    {
      v7 = *(a1 + 24);
    }

    else
    {
      v7 = *(a1 + 28);
    }

    _ZNSt3__16vectorIN3amt6MipmapIDv4_fEENS_9allocatorIS4_EEEC2B8ne200100Em(v23, __clz(v7 + 1) ^ 0x1F);
    v8 = v23[0];
    _ZN3amt6MatrixIDv4_fEC2ERKS2_(__p, v23[0]);
    _ZN3amt6MatrixIDv4_fEaSERKS2_(v8, a1);
    if (__p != a1)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a1, __p[0], __p[1], (__p[1] - __p[0]) >> 4);
    }

    v9 = __p[0];
    *(a1 + 24) = *(&v28 + 1);
    if (v9)
    {
      __p[1] = v9;
      operator delete(v9);
    }

    amt::Matrix<float>::resize(v8 + 32, v3, v2);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *a2;
    v14 = *(a2 + 6);
    v15 = *(a2 + 7) & ~(*(a2 + 7) >> 31);
    do
    {
      if (v11 == v15)
      {
        __assert_rtn("row", "AMTMatrix.hpp", 521, "rowIndex < _rowCount");
      }

      if (v11 >= *(v8 + 60))
      {
        __assert_rtn("row", "AMTMatrix.hpp", 517, "rowIndex < _rowCount");
      }

      v16 = (*(v8 + 32) + v10 * *(v8 + 56));
      v17 = v2;
      v18 = v13;
      do
      {
        v19 = *v18++;
        *v16++ = v19;
        if (v19)
        {
          ++v12;
        }

        --v17;
      }

      while (v17);
      ++v11;
      v10 += 4;
      v13 += v14;
    }

    while (v11 != v3);
    if (v12)
    {
      v29 = 1031798784;
      *__p = xmmword_23E787580;
      v28 = unk_23E787590;
      _ZN3amt4pullIDv4_fLi3EEEvRNSt3__16vectorINS_6MipmapIT_EENS2_9allocatorIS6_EEEERAT0__AT0__Kf(v23, __p);
      _ZN3amt4pushIDv4_fLi3EEEvRNSt3__16vectorINS_6MipmapIT_EENS2_9allocatorIS6_EEEERAT0__AT0__Kf(v23, __p);
      _ZN3amt6MatrixIDv4_fEC2ERKS2_(&v24, v8);
      _ZN3amt6MatrixIDv4_fEaSERKS2_(v8, a1);
      if (&v24 != a1)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a1, v24, v25, (v25 - v24) >> 4);
      }

      v20 = v24;
      *(a1 + 24) = v26;
      if (v20)
      {
        v25 = v20;
        operator delete(v20);
      }
    }

    else
    {
      AMTLog::AMTLog(__p);
      v21 = __p[0];
      if (os_log_type_enabled(__p[0], OS_LOG_TYPE_INFO))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_23E754000, v21, OS_LOG_TYPE_INFO, "Warning: empty normal map image.", __p, 2u);
      }
    }

    __p[0] = v23;
    _ZNSt3__16vectorIN3amt6MipmapIDv4_fEENS_9allocatorIS4_EEE16__destroy_vectorclB8ne200100Ev(__p);
  }

  v22 = *MEMORY[0x277D85DE8];
}