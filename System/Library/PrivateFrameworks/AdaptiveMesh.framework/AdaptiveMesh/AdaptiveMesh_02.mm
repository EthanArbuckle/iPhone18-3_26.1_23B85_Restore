void sub_23E772748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  a16 = &a9;
  _ZNSt3__16vectorIN3amt6MipmapIDv4_fEENS_9allocatorIS4_EEE16__destroy_vectorclB8ne200100Ev(&a16);
  _Unwind_Resume(a1);
}

void amt::Matrix<unsigned char>::resize(uint64_t a1, int a2, int a3)
{
  if (a2 < 1 || a3 <= 0)
  {
    amt::Matrix<unsigned char>::resize();
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a2;
  v4 = (a3 * a2);
  v5 = *(a1 + 8) - *a1;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(a1 + 8) = *a1 + v4;
    }
  }

  else
  {

    std::vector<signed char>::__append(a1, v4 - v5);
  }
}

void *amt::Matrix<unsigned char>::Matrix(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a1 != a2)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  }

  a1[3] = *(a2 + 24);
  return a1;
}

void sub_23E772850(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<AMTMeshSourceSemantic>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
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

void amt::Matrix<float>::resize(uint64_t a1, int a2, int a3)
{
  if (a2 < 1 || a3 <= 0)
  {
    amt::Matrix<unsigned char>::resize();
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a2;
  v4 = (a3 * a2);

  std::vector<int>::resize(a1, v4);
}

unint64_t _ZN3amt4pullIDv4_fLi3EEEvRNSt3__16vectorINS_6MipmapIT_EENS2_9allocatorIS6_EEEERAT0__AT0__Kf(unint64_t result, uint64_t a2)
{
  v2 = *(result + 8) - *result;
  if ((v2 >> 6) >= 2)
  {
    v4 = result;
    v5 = (v2 >> 6) & 0x7FFFFFFF;
    v6 = 1;
    do
    {
      v7 = *v4 + (v6 << 6);
      v8 = *(v7 - 40);
      v9 = *(v7 - 36);
      if (v8 < 2 || v9 < 2)
      {
        break;
      }

      _ZN3amt6MatrixIDv4_fE6assignEiiS1_(*v4 + (v6 << 6), (v9 + 1) >> 1, (v8 + 1) >> 1, 0);
      amt::Matrix<float>::assign(v7 + 32, (v9 + 1) >> 1, (v8 + 1) >> 1, 0);
      v11 = 0;
      v12 = -1;
      do
      {
        if (v11 >= *(v7 + 60))
        {
          amt::updateSamples();
        }

        if (v11 >= *(v7 + 28))
        {
          amt::updateSamples();
        }

        v13 = 0;
        v14 = 0;
        v15 = *(v7 + 32) + 4 * *(v7 + 56) * v11;
        v16 = *v7 + 16 * *(v7 + 24) * v11;
        do
        {
          v17 = 0;
          v18 = 0;
          v19 = 0uLL;
          v20 = a2;
          v21 = v12;
          do
          {
            result = (v17 + 2 * v11);
            if (result >= 1 && v9 >= result)
            {
              if (*(v7 - 4) < result)
              {
                amt::dilatePadding();
              }

              if (*(v7 - 36) < result)
              {
                amt::dilatePadding();
              }

              result = 0;
              v23 = v13;
              do
              {
                if (v23 >= 1 && v8 >= v23)
                {
                  v24 = *(*(v7 - 32) + 4 * *(v7 - 8) * v21 - 4 + 4 * v23);
                  if (v24 > 1.0)
                  {
                    v24 = 1.0;
                  }

                  v25 = *(v20 + result) * v24;
                  v19 = vmlaq_n_f32(v19, *(*(v7 - 64) + 16 * *(v7 - 40) * v21 - 16 + 16 * v23), v25);
                  *v18.i32 = *v18.i32 + v25;
                }

                ++v23;
                result += 4;
              }

              while (result != 12);
            }

            ++v17;
            ++v21;
            v20 += 12;
          }

          while (v17 != 3);
          if (*v18.i32 > 0.0)
          {
            *(v16 + 16 * v14) = vdivq_f32(v19, vdupq_lane_s32(v18, 0));
          }

          *(v15 + 4 * v14++) = v18.i32[0];
          v13 += 2;
        }

        while (v14 != (v8 + 1) >> 1);
        ++v11;
        v12 += 2;
      }

      while (v11 != (v9 + 1) >> 1);
      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void _ZN3amt4pushIDv4_fLi3EEEvRNSt3__16vectorINS_6MipmapIT_EENS2_9allocatorIS6_EEEERAT0__AT0__Kf(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  _ZN3amt6MatrixIDv4_fEC2Eii(&v35, 1, 1);
  amt::Matrix<float>::Matrix(&v38, 1, 1);
  v6 = (v4 - v5) >> 6;
  if (v6 >= 2)
  {
    v7 = (v6 - 2);
    do
    {
      v8 = *a1 + (v7 << 6);
      v9 = *(v8 + 56);
      v10 = *(v8 + 60);
      v11 = *(v8 + 120);
      v12 = *(v8 + 124);
      _ZN3amt6MatrixIDv4_fE6resizeEii(&v35, v10, *(v8 + 56));
      amt::Matrix<float>::resize(&v38, v10, v9);
      if (v10 >= 1)
      {
        v13 = 0;
        do
        {
          if (*(v8 + 60) <= v13)
          {
            __assert_rtn("row", "AMTMatrix.hpp", 521, "rowIndex < _rowCount");
          }

          if (*(v8 + 28) <= v13)
          {
            __assert_rtn("row", "AMTMatrix.hpp", 521, "rowIndex < _rowCount");
          }

          if (SHIDWORD(v40) <= v13)
          {
            __assert_rtn("row", "AMTMatrix.hpp", 517, "rowIndex < _rowCount");
          }

          if (SHIDWORD(v37) <= v13)
          {
            __assert_rtn("row", "AMTMatrix.hpp", 517, "rowIndex < _rowCount");
          }

          if (v9 >= 1)
          {
            v14 = 0;
            v15 = *(v8 + 32) + 4 * *(v8 + 56) * v13;
            v16 = *v8 + 16 * *(v8 + 24) * v13;
            v17 = v38 + 4 * v40 * v13;
            v18 = v35 + 16 * v37 * v13;
            v19 = v13 >> 1;
            do
            {
              v20 = 0;
              v21 = v14 >> 1;
              v22 = 0;
              v23 = 0uLL;
              v24 = a2;
              v25 = 4 * (v13 >> 1) - 4;
              v26 = 16 * (v13 >> 1) - 16;
              do
              {
                v27 = v20 + v19;
                if (v20 + v19 && v27 <= v12)
                {
                  if (v27 > *(v8 + 124))
                  {
                    __assert_rtn("row", "AMTMatrix.hpp", 521, "rowIndex < _rowCount");
                  }

                  if (v27 > *(v8 + 92))
                  {
                    __assert_rtn("row", "AMTMatrix.hpp", 521, "rowIndex < _rowCount");
                  }

                  for (i = 0; i != 3; ++i)
                  {
                    if (v21 + i && (v21 + i) <= v11)
                    {
                      v29 = *(*(v8 + 96) + 4 * (v14 >> 1) + v25 * *(v8 + 120) - 4 + 4 * i);
                      if (v29 > 1.0)
                      {
                        v29 = 1.0;
                      }

                      v30 = *(v24 + 4 * i) * v29;
                      v23 = vmlaq_n_f32(v23, *(*(v8 + 64) + 16 * (v14 >> 1) + v26 * *(v8 + 88) - 16 + 16 * i), v30);
                      *v22.i32 = *v22.i32 + v30;
                    }
                  }
                }

                ++v20;
                v26 += 16;
                v25 += 4;
                v24 += 12;
              }

              while (v20 != 3);
              v31 = fminf(*(v15 + 4 * v14), 1.0);
              *&v17[4 * v14] = v31 + (fminf(*v22.i32, 1.0) * (1.0 - v31));
              if (*v22.i32 > 0.0)
              {
                *&v18[16 * v14] = vmlaq_n_f32(vmulq_n_f32(*(v16 + 16 * v14), v31), vdivq_f32(v23, vdupq_lane_s32(v22, 0)), 1.0 - v31);
              }

              ++v14;
            }

            while (v14 != v9);
          }

          ++v13;
        }

        while (v13 != v10);
      }

      v32 = (*a1 + (v7 << 6));
      _ZN3amt6MatrixIDv4_fEC2ERKS2_(&__p, v32);
      if (v32 != &v35)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v32, v35, v36, (v36 - v35) >> 4);
      }

      v32[3] = v37;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(&v35, __p, v42, (v42 - __p) >> 4);
      v37 = v43;
      if (__p)
      {
        v42 = __p;
        operator delete(__p);
      }

      v33 = (*a1 + (v7 << 6) + 32);
      amt::Matrix<float>::Matrix(&__p, v33);
      if (v33 != &v38)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v33, v38, v39, (v39 - v38) >> 2);
      }

      v33[3] = v40;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v38, __p, v42, (v42 - __p) >> 2);
      v40 = v43;
      if (__p)
      {
        v42 = __p;
        operator delete(__p);
      }
    }

    while (v7-- > 0);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_23E773048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIN3amt6MipmapIDv4_fEENS_9allocatorIS4_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIN3amt6MipmapIDv4_fEENS_9allocatorIS4_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void _ZNSt3__16vectorIN3amt6MipmapIDv4_fEENS_9allocatorIS4_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIN3amt6MipmapIDv4_fEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m(a1, a2);
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

void *_ZNSt3__16vectorIN3amt6MipmapIDv4_fEENS_9allocatorIS4_EEE18__construct_at_endEm(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  if (a2)
  {
    v4 = a2 << 6;
    v5 = v3 + (a2 << 6);
    do
    {
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      _ZN3amt6MatrixIDv4_fEC2Eii(v3, 1, 1);
      result = amt::Matrix<float>::Matrix((v3 + 32), 1, 1);
      v3 += 64;
      v4 -= 64;
    }

    while (v4);
    v3 = v5;
  }

  v2[1] = v3;
  return result;
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIN3amt6MipmapIDv4_fEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *amt::Matrix<float>::Matrix(void *a1, int a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  amt::Matrix<float>::resize(a1, a2, a3);
  return a1;
}

void sub_23E773270(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIN3amt6MipmapIDv4_fEENS_9allocatorIS4_EEE16__destroy_vectorclB8ne200100Ev(void ***a1)
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
        v4 -= 64;
        _ZNSt3__112__destroy_atB8ne200100IN3amt6MipmapIDv4_fEELi0EEEvPT_(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void _ZNSt3__112__destroy_atB8ne200100IN3amt6MipmapIDv4_fEELi0EEEvPT_(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void *_ZN3amt6MatrixIDv4_fEaSERKS2_(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  }

  a1[3] = *(a2 + 24);
  return a1;
}

void *_ZN3amt6MatrixIDv4_fEC2ERKS2_(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  _ZN3amt6MatrixIDv4_fEaSERKS2_(a1, a2);
  return a1;
}

void sub_23E7733E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AMTLog::AMTLog(AMTLog *this)
{
  {
    v1 = this;
    AMTLog::AMTLog();
    this = v1;
  }

  *this = AMTLog::AMTLog(void)::log;
}

_DWORD *amt::Matrix<float>::assign(uint64_t a1, int a2, int a3, int16x4_t a4)
{
  v5 = a4.i32[0];
  if (a2 < 1 || a3 <= 0)
  {
    _ZN3amt6MatrixIDv4_fE6assignEiiS1__cold_1();
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a2;
  return std::vector<float>::assign(a1, (a3 * a2), &v5, a4);
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<float>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_23E786B50)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_23E786B40)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_23E786B50)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_23E786B40)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void _ZN3amt6MatrixIDv4_fE6resizeEii(uint64_t a1, int a2, int a3)
{
  if (a2 < 1 || a3 <= 0)
  {
    amt::Matrix<unsigned char>::resize();
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a2;
  v4 = (a3 * a2);

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a1, v4);
}

void *amt::Matrix<float>::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  a1[3] = *(a2 + 24);
  return a1;
}

void *amt::Matrix<float>::Matrix(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  amt::Matrix<float>::operator=(a1, a2);
  return a1;
}

void sub_23E7737E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amt::rasterizeFlatSideTriangle(int32x2_t *a1, int32x2_t *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 + 28) - 1;
  v5 = *a3;
  v6 = vabd_s32(*a2, *a1);
  v7 = HIDWORD(*a2);
  v8 = -v6.i32[1];
  v9 = *a2;
  v10 = HIDWORD(*a1);
  v11 = a1->u32[0];
  if (v11 < v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  if (v10 < v7)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  result = v6.u32[0];
  v15 = v6.i32[0] - v6.i32[1];
  if (v5 > v11)
  {
    v16 = 1;
  }

  else
  {
    v16 = -1;
  }

  if (v5 - v11 >= 0)
  {
    v17 = v5 - v11;
  }

  else
  {
    v17 = v11 - v5;
  }

  v18 = v17 - v6.i32[1];
  v19 = v10;
  v20 = v11;
  do
  {
    if (v20 != v9 || v19 != v7)
    {
      v22 = v20;
      while (1)
      {
        v23 = 2 * v15;
        if (2 * v15 <= v6.i32[0])
        {
          if (v19 == v7)
          {
            v21 = v7;
            goto LABEL_29;
          }

          v15 += v6.i32[0];
          v21 = (v19 + v13);
          v22 = v20;
        }

        else
        {
          v21 = v19;
        }

        if (v23 >= v8)
        {
          if (v20 == v9)
          {
            v20 = v9;
            goto LABEL_29;
          }

          v15 -= v6.i32[1];
          v20 += v12;
        }

        if (v19 != v21)
        {
          goto LABEL_29;
        }
      }
    }

    v20 = v9;
    v21 = v7;
    v22 = v9;
LABEL_29:
    if (v11 == v5 && v19 == v7)
    {
      v24 = v5;
      v25 = v7;
      LODWORD(v11) = v5;
      goto LABEL_44;
    }

    v24 = v11;
    while (1)
    {
      v26 = 2 * v18;
      if (2 * v18 <= v17)
      {
        if (v19 == v7)
        {
          v25 = v7;
          goto LABEL_44;
        }

        v18 += v17;
        v25 = v19 + v13;
        LODWORD(v11) = v24;
      }

      else
      {
        v25 = v19;
      }

      if (v26 >= v8)
      {
        break;
      }

LABEL_40:
      if (v19 != v25)
      {
        goto LABEL_44;
      }
    }

    if (v24 != v5)
    {
      v18 -= v6.i32[1];
      v24 = (v24 + v16);
      goto LABEL_40;
    }

    v24 = v5;
LABEL_44:
    if (v22 <= v11)
    {
      v27 = v4 - v19;
      v28 = v22;
      v29 = v11 - v22 + 1;
      do
      {
        if (*(a4 + 28) <= v27)
        {
          amt::updateSamples();
        }

        *(*a4 + *(a4 + 24) * v27 + v28++) = 1;
        --v29;
      }

      while (v29);
    }

    if (v21 != v25)
    {
      amt::rasterizeFlatSideTriangle();
    }

    v11 = v24;
    v19 = v21;
  }

  while (v21 != v7);
  if (v10 != v7 && v20 <= v24)
  {
    v30 = v4 - v7;
    v31 = v20;
    v32 = v24 - v20 + 1;
    do
    {
      if (*(a4 + 28) <= v30)
      {
        amt::updateSamples();
      }

      *(*a4 + *(a4 + 24) * v30 + v31++) = 1;
      --v32;
    }

    while (v32);
  }

  return result;
}

std::future<void> *std::vector<std::future<void>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = v8->__state_;
      v8->__state_ = 0;
      ++v8;
    }

    while (v8 != v5);
    do
    {
      std::future<void>::~future(result);
      result = v10 + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::future<void>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::future<void>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::future<void>::~future((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::async[abi:ne200100]<amt::parallel_for (long long,std::function<void ()(long long)>)::{lambda(long long,long long)#1} &,long long &,long long const&>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  if (result)
  {
    v5 = *a2;
    v7 = *a3;
    v9 = *a4;
    std::__make_async_assoc_state[abi:ne200100]<void,std::__async_func<amt::parallel_for (long long,std::function<void ()(long long)>)::{lambda(long long,long long)#1},long long,long long>>();
  }

  if ((result & 2) != 0)
  {
    v6 = *a2;
    v8 = *a3;
    v10 = *a4;
    std::__make_deferred_assoc_state[abi:ne200100]<void,std::__async_func<amt::parallel_for (long long,std::function<void ()(long long)>)::{lambda(long long,long long)#1},long long,long long>>();
  }

  *a5 = 0;
  return result;
}

void sub_23E773D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::thread a12)
{
  if (!atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v12 + 16))(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E773EE4(_Unwind_Exception *exception_object)
{
  if (!atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__async_assoc_state<void,std::__async_func<amt::parallel_for (long long,std::function<void ()(long long)>)::{lambda(long long,long long)#1},long long,long long>>::~__async_assoc_state(uint64_t a1)
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

void std::__async_assoc_state<void,std::__async_func<amt::parallel_for (long long,std::function<void ()(long long)>)::{lambda(long long,long long)#1},long long,long long>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  std::__assoc_sub_state::__on_zero_shared(a1);
}

void std::__async_assoc_state<void,std::__async_func<amt::parallel_for (long long,std::function<void ()(long long)>)::{lambda(long long,long long)#1},long long,long long>>::__execute(std::__assoc_sub_state *this)
{
  shared_owners = this[1].__shared_owners_;
  ptr = this[1].__exception_.__ptr_;
  if (shared_owners < ptr)
  {
    do
    {
      std::function<void ()(long long)>::operator()(this[1].__vftable, shared_owners++);
    }

    while (ptr != shared_owners);
  }

  std::__assoc_sub_state::set_value(this);
}

void sub_23E7740A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  v11.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v10, v11);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x23E774094);
}

void sub_23E7740D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void sub_23E774274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<amt::parallel_for (long long,std::function<void ()(long long)>)::{lambda(long long,long long)#1},long long,long long>>::*)(void),std::__async_assoc_state<void,std::__async_func<amt::parallel_for (long long,std::function<void ()(long long)>)::{lambda(long long,long long)#1},long long,long long>>*>>(uint64_t *a1)
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

void sub_23E774344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>::*)(void),std::__async_assoc_state<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *,std::__async_func<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node * (nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::*)(nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>&,unsigned long,unsigned long,std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul> &,std::atomic<unsigned int> &,std::mutex &),nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>*,std::reference_wrapper<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>>,unsigned long,unsigned long,std::reference_wrapper<std::array<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Interval,3ul>>,std::reference_wrapper<std::atomic<unsigned int>>,std::reference_wrapper<std::mutex>>>*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__deferred_assoc_state<void,std::__async_func<amt::parallel_for (long long,std::function<void ()(long long)>)::{lambda(long long,long long)#1},long long,long long>>::~__deferred_assoc_state(uint64_t a1)
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

void std::__deferred_assoc_state<void,std::__async_func<amt::parallel_for (long long,std::function<void ()(long long)>)::{lambda(long long,long long)#1},long long,long long>>::__execute(std::__assoc_sub_state *this)
{
  shared_owners = this[1].__shared_owners_;
  ptr = this[1].__exception_.__ptr_;
  if (shared_owners < ptr)
  {
    do
    {
      std::function<void ()(long long)>::operator()(this[1].__vftable, shared_owners++);
    }

    while (ptr != shared_owners);
  }

  std::__assoc_sub_state::set_value(this);
}

void sub_23E7744A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  v11.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v10, v11);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x23E77448CLL);
}

void sub_23E7744CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void std::vector<std::future<void>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::future<void>::~future(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **amt::Operation::istat(const void **this, const __CFString *a2, int a3)
{
  valuePtr = a3;
  if (this[3])
  {
    v4 = this;
    v5 = CFNumberCreate(**this, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(v4[3], a2, v5);
    return amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v5);
  }

  return this;
}

uint64_t amt::AMTCopySamples<unsigned char>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 28);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    do
    {
      v8 = v5 + ~v6;
      if (*(result + 28) <= v8)
      {
        amt::dilatePadding();
      }

      if (v7 >= 1)
      {
        v9 = 0;
        v10 = *result + 16 * *(result + 24) * v8;
        v11 = a5;
        do
        {
          if (a4 >= 1)
          {
            v12 = 0;
            v13 = *(v10 + 16 * v9);
            do
            {
              v14 = v13;
              *(v11 + v12) = llroundf(*(&v14 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))));
              ++v12;
            }

            while (a4 != v12);
          }

          ++v9;
          v11 += a3;
        }

        while (v9 != v7);
      }

      ++v6;
      a5 += a2;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t *amt::AMTCopySamples<unsigned short>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 7);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 6);
    v8 = *result;
    v9 = *(result + 6);
    do
    {
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = a5;
        do
        {
          if (a4 >= 1)
          {
            v12 = 0;
            v13 = *(v8 + 16 * (v5 + ~v6) * v7 + 16 * v10);
            do
            {
              v14 = v13;
              *(v11 + 2 * v12) = llroundf(*(&v14 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))));
              ++v12;
            }

            while (a4 != v12);
          }

          ++v10;
          v11 += a3;
        }

        while (v10 != v7);
      }

      ++v6;
      a5 += a2;
    }

    while (v6 != v5);
  }

  return result;
}

const void **amt::AMTWrapper<CGDataProvider *>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<amt::TriangleMesh>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        amt::TriangleMesh::~TriangleMesh(v4 - 27);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

CFTypeRef amt::AMTWrapper<__CFDictionary const*>::set(CFTypeRef *a1, CFTypeRef cf)
{
  result = *a1;
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFRetain(cf);
    *a1 = result;
  }

  return result;
}

const void **amt::AMTWrapper<__AMTAdaptiveMesh *>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void amt::AMTAdaptiveMeshTessellatorBasic::~AMTAdaptiveMeshTessellatorBasic(amt::AMTAdaptiveMeshTessellatorBasic *this)
{
  amt::AMTAdaptiveMeshTessellatorBasic::~AMTAdaptiveMeshTessellatorBasic(this);

  JUMPOUT(0x23EF11E80);
}

{
  v2 = 0;
  *this = &unk_28510E570;
  do
  {
    v3 = *(this + v2 + 144);
    if (v3)
    {
      *(this + v2 + 152) = v3;
      operator delete(v3);
    }

    v2 -= 24;
  }

  while (v2 != -48);
  for (i = 0; i != -48; i -= 24)
  {
    v5 = *(this + i + 96);
    if (v5)
    {
      *(this + i + 104) = v5;
      operator delete(v5);
    }
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  amt::AMTWrapper<__AMTAdaptiveMesh *>::~AMTWrapper(this + 1);
}

BOOL amt::AMTAdaptiveMeshTessellatorBasic::shouldSplitEdge(float32x4_t a1, float32x4_t a2, uint64_t a3, uint64_t a4)
{
  v4 = vsubq_f32(a1, a2);
  v5 = vmulq_f32(v4, v4);
  return sqrtf(v5.f32[2] + vaddv_f32(*v5.f32)) > *(a4 + 64);
}

float32x4_t amt::AMTAdaptiveMeshTessellatorBasic::computeTransformedPositions(uint64_t a1, int *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  v7 = *(a1 + 24);
  if (!v7 || (v13 = *a2, v12 = a2[1], v14 = a2[2], v15 = CFGetTypeID(v7), v15 != AMTMeshSourceGetTypeID()))
  {
    amt::AMTAdaptiveMeshTessellatorBasic::computeTransformedPositions();
  }

  v16 = __AMTMeshSource::vectorAtIndex<double>(*(a1 + 24), v13);
  v17 = __AMTMeshSource::vectorAtIndex<double>(*(a1 + 24), v12);
  v18 = __AMTMeshSource::vectorAtIndex<double>(*(a1 + 24), v14);
  *a3 = vaddq_f32(a6[3], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*a6, *v16), a6[1], v16[1]), a6[2], v16[2]));
  *a4 = vaddq_f32(a6[3], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*a6, *v17), a6[1], v17[1]), a6[2], v17[2]));
  result = vaddq_f32(a6[3], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*a6, *v18), a6[1], v18[1]), a6[2], v18[2]));
  *a5 = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

const void **amt::AMTWrapper<__CFArray *>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **amt::AMTWrapper<__AMTMeshSourceIndices *>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

_OWORD *_ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE6assignEmRKS1_(void *a1, unint64_t a2, __int128 *a3)
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

  if (v10)
  {
    v11 = *a3;
    do
    {
      *result++ = v11;
      --v10;
    }

    while (v10);
  }

  if (a2 <= v9)
  {
    a1[1] = *a1 + 16 * a2;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[a2 - v9];
    v14 = *a3;
    v15 = 16 * a2 - 16 * v9;
    do
    {
      *v12++ = v14;
      v15 -= 16;
    }

    while (v15);
    a1[1] = v13;
  }

  return result;
}

void *std::vector<unsigned char>::assign(void **a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = 2 * v6;
      if (2 * v6 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<AMTMeshSourceSemantic>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = v10 - result;
  if (v10 - result >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10 - result;
  }

  if (v12)
  {
    result = memset(result, *a3, v12);
  }

  v13 = a2 >= v11;
  v14 = a2 - v11;
  if (v14 != 0 && v13)
  {
    v15 = a1[1];
    result = memset(v15, *a3, v14);
    v16 = &v15[v14];
  }

  else
  {
    v16 = *a1 + a2;
  }

  a1[1] = v16;
  return result;
}

void *amt::Matrix<unsigned char>::Matrix(void *a1, int a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  amt::Matrix<unsigned char>::resize(a1, a2, a3);
  return a1;
}

void sub_23E774E40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZN3amt6MatrixIDv4_fEC2Eii(void *a1, int a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  _ZN3amt6MatrixIDv4_fE6resizeEii(a1, a2, a3);
  return a1;
}

void sub_23E774E8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **amt::AMTWrapper<CGImage *>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

__n128 std::__function::__func<amt::AMTCreateAttributeMaps(__AMTMesh *,__AMTMesh *,__CFArray const*,long,amt::PipelineContext &)::$_0,std::allocator<amt::AMTCreateAttributeMaps(__AMTMesh *,__AMTMesh *,__CFArray const*,long,amt::PipelineContext &)::$_0>,void ()(long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28510E5B8;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<amt::AMTCreateAttributeMaps(__AMTMesh *,__AMTMesh *,__CFArray const*,long,amt::PipelineContext &)::$_0,std::allocator<amt::AMTCreateAttributeMaps(__AMTMesh *,__AMTMesh *,__CFArray const*,long,amt::PipelineContext &)::$_0>,void ()(long long)>::operator()(uint64_t a1, int *a2)
{
  v3 = 0;
  v4 = *a2;
  v5 = vcvts_n_f32_s32(-*a2, 2uLL);
  v50 = 4 * *a2;
  do
  {
    _ZN3amt6MatrixIDv4_fEC2Eii(v57, 1, 1);
    amt::Matrix<unsigned char>::Matrix(v54, 1, 1);
    v6 = v3 | v50;
    v7 = (**(a1 + 24) + 216 * (v3 | v50));
    if (((*(v7 + 4) - *(v7 + 3)) & 0xFFFFFFFF0) != 0)
    {
      v8 = (**(a1 + 32) + 216 * v6);
      if (((*(v8 + 4) - *(v8 + 3)) & 0xFFFFFFFF0) != 0)
      {
        v9 = **(a1 + 16);
        v10 = *(a1 + 48);
        v52 = *(**(a1 + 40) + 8 * v6);
        v11 = **(a1 + 56);
        amt::Matrix<float>::Matrix(v82, 1, 1);
        _ZN3amt6MatrixIDv4_fE6assignEiiS1_(v57, v11, v11, 0);
        amt::Matrix<float>::assign(v82, v11, v11, 0);
        v49 = v11;
        v81 = 0;
        v80 = 0.0;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v73 = 0;
        v74 = 0;
        v75 = xmmword_23E786AE0;
        v72 = (v7 + 24);
        __p[0] = 10;
        __p[1] = 0x100000000;
        nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::KDTreeSingleIndexAdaptor(v68, 3, &v72, __p);
        v67 = (v8 + 24);
        v62.i64[0] = 10;
        v62.i64[1] = 0x100000000;
        nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::KDTreeSingleIndexAdaptor(__p, 3, &v67, &v62);
        v12 = (vcvts_n_f32_s32(-v3, 2uLL) * v9) | ((v5 * v9) << 32);
        if (v52)
        {
          for (i = 0; i != v52; ++i)
          {
            v14 = amt::TriangleMesh::position(v7, i);
            v73 = &v81;
            v74 = &v80;
            *(&v75 + 1) = 0;
            if (v75)
            {
              *&v79[4 * v75] = 2139095039;
            }

            v62.i32[0] = 0;
            v62.i8[4] = 1;
            nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(__p, &v73, v14, v62.f32);
            v61 = nextafterf(v80, v80 + 1.0);
            v62.i32[0] = 0;
            v62.i8[4] = 1;
            nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::radiusSearch(__p, v14, &v61, &v76, &v62);
            v15 = amt::TriangleMesh::texCoord(v7, i);
            *v16.i64 = amt::AMTImageWrapper::bilinear(v10, COERCE_FLOAT(*v15), COERCE_FLOAT(HIDWORD(*v15)));
            v62 = v16;
            v17 = v76;
            v18 = v77;
            if (v76 == v77)
            {
              v20 = *amt::TriangleMesh::texCoord(v8, v81);
              v60 = v12;
              amt::updateSamples(&v62, v57, v82, &v60, *&v20, *(&v20 + 1), 4.0);
            }

            else
            {
              do
              {
                v19 = *amt::TriangleMesh::texCoord(v8, *v17);
                v60 = v12;
                amt::updateSamples(&v62, v57, v82, &v60, *&v19, *(&v19 + 1), 4.0);
                v17 += 2;
              }

              while (v17 != v18);
            }
          }
        }

        v51 = (*(v8 + 4) - *(v8 + 3)) >> 4;
        if (v51 >= 1)
        {
          v21 = 0;
          do
          {
            v22 = amt::TriangleMesh::position(v8, v21);
            v73 = &v81;
            v74 = &v80;
            *(&v75 + 1) = 0;
            if (v75)
            {
              *&v79[4 * v75] = 2139095039;
            }

            v62.i32[0] = 0;
            v62.i8[4] = 1;
            nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(v68, &v73, v22, v62.f32);
            v61 = nextafterf(v80, v80 + 1.0);
            v62.i32[0] = 0;
            v62.i8[4] = 1;
            nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::radiusSearch(v68, v22, &v61, &v76, &v62);
            v23 = *amt::TriangleMesh::texCoord(v8, v21);
            v25 = v76;
            v24 = v77;
            v53 = v23;
            if (v76 == v77)
            {
              v29 = amt::TriangleMesh::texCoord(v7, v81);
              *v30.i64 = amt::AMTImageWrapper::bilinear(v10, COERCE_FLOAT(*v29), COERCE_FLOAT(HIDWORD(*v29)));
              v62 = v30;
              v60 = v12;
              amt::updateSamples(&v62, v57, v82, &v60, *&v53, *(&v53 + 1), 4.0);
            }

            else
            {
              v26 = *(&v23 + 1);
              do
              {
                v27 = amt::TriangleMesh::texCoord(v7, *v25);
                *v28.i64 = amt::AMTImageWrapper::bilinear(v10, COERCE_FLOAT(*v27), COERCE_FLOAT(HIDWORD(*v27)));
                v62 = v28;
                v60 = v12;
                amt::updateSamples(&v62, v57, v82, &v60, *&v53, v26, 4.0);
                v25 += 2;
              }

              while (v25 != v24);
            }

            ++v21;
          }

          while (v21 != v51);
        }

        amt::Matrix<unsigned char>::resize(v54, v49, v49);
        if (v49 >= 1)
        {
          v32 = 0;
          do
          {
            if (v84 <= v32)
            {
              __assert_rtn("row", "AMTMatrix.hpp", 517, "rowIndex < _rowCount");
            }

            if (v56 <= v32)
            {
              __assert_rtn("row", "AMTMatrix.hpp", 517, "rowIndex < _rowCount");
            }

            if (v59 <= v32)
            {
              __assert_rtn("row", "AMTMatrix.hpp", 517, "rowIndex < _rowCount");
            }

            v33 = (v57[0] + 16 * v58 * v32);
            v34 = v54[0] + v55 * v32;
            v35 = (v82[0] + 4 * v83 * v32);
            v36 = v49;
            do
            {
              if (*v35 <= 0.0)
              {
                v37 = 0;
              }

              else
              {
                v31.i32[0] = *v35;
                v31 = vdivq_f32(*v33, vdupq_lane_s32(*v31.f32, 0));
                *v33 = v31;
                v37 = 1;
              }

              *v34++ = v37;
              ++v33;
              ++v35;
              --v36;
            }

            while (v36);
            ++v32;
          }

          while (v32 != v49);
        }

        v38 = v64;
        if (v64)
        {
          do
          {
            v39 = *v38;
            free(v38);
            v64 = v39;
            v38 = v39;
          }

          while (v39);
        }

        __p[12] = 0;
        v64 = 0;
        v65 = 0;
        v66 = 0;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v40 = v69;
        if (v69)
        {
          do
          {
            v41 = *v40;
            free(v40);
            v69 = v41;
            v40 = v41;
          }

          while (v41);
        }

        v68[12] = 0;
        v69 = 0;
        v70 = 0;
        v71 = 0;
        if (v68[0])
        {
          v68[1] = v68[0];
          operator delete(v68[0]);
        }

        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        if (v82[0])
        {
          v82[1] = v82[0];
          operator delete(v82[0]);
        }

        LODWORD(v42) = **(a1 + 56);
        if (v42 >= 1)
        {
          v43 = 0;
          do
          {
            if (v42 >= 1)
            {
              v44 = 0;
              do
              {
                if (v59 <= v43 || (v45 = v43 + v42 * v4, v46 = *(a1 + 72), *(v46 + 28) <= v45) || (v47 = v44 + v3 * v42, *(*v46 + 16 * *(v46 + 24) * v45 + 16 * v47) = *(v57[0] + v43 * v58 + v44), v56 <= v43) || (v48 = *(a1 + 80), *(v48 + 28) <= v45))
                {
                  __assert_rtn("row", "AMTMatrix.hpp", 517, "rowIndex < _rowCount");
                }

                *(*v48 + *(v48 + 24) * v45 + v47) = *(v54[0] + v55 * v43 + v44++);
                v42 = **(a1 + 56);
              }

              while (v44 < v42);
            }

            ++v43;
          }

          while (v43 < v42);
        }
      }
    }

    if (v54[0])
    {
      v54[1] = v54[0];
      operator delete(v54[0]);
    }

    if (v57[0])
    {
      v57[1] = v57[0];
      operator delete(v57[0]);
    }

    ++v3;
  }

  while (v3 != 4);
}

void sub_23E775750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = a42;
  if (a42)
  {
    do
    {
      v67 = *v66;
      free(v66);
      v66 = v67;
    }

    while (v67);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v68 = a64;
  if (a64)
  {
    do
    {
      v69 = *v68;
      free(v68);
      v68 = v69;
    }

    while (v69);
  }

  if (a51)
  {
    operator delete(a51);
  }

  v70 = *(v64 - 192);
  if (v70)
  {
    *(v64 - 184) = v70;
    operator delete(v70);
  }

  v71 = *(v64 - 152);
  if (v71)
  {
    *(v64 - 144) = v71;
    operator delete(v71);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<amt::AMTCreateAttributeMaps(__AMTMesh *,__AMTMesh *,__CFArray const*,long,amt::PipelineContext &)::$_0,std::allocator<amt::AMTCreateAttributeMaps(__AMTMesh *,__AMTMesh *,__CFArray const*,long,amt::PipelineContext &)::$_0>,void ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **amt::AMTWrapper<__AMTMeshElement *>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void amt::HashAdjacency::init(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v6 = a2[4] - a2[3];
  v39 = a2[6];
  amt::HashAdjacency::init(a1, v6 >> 2);
  if ((v6 >> 2) >= 1)
  {
    v7 = 0;
    v8 = (v6 >> 2) & 0x7FFFFFFF;
    v37 = v4;
    v33 = v8;
    do
    {
      started = amt::Adjacency<int>::neighborsStartIndex(v4, v7);
      v10 = amt::Adjacency<int>::neighborsEndIndex(v4, v7);
      if (v10 == started)
      {
        amt::HashAdjacency::setConfiguration(a1, v7, 50462976, v11);
      }

      else
      {
        v13 = v10;
        if (started + 1 == v10)
        {
          v14 = (v39 + 8 * started);
          v15 = vld1q_dup_f32(v14++);
          v41 = v15;
          v16 = *v14;
          amt::HashAdjacency::setConfiguration(a1, v7, 50462976, *v15.f32);
          v17.i64[0] = 0x100000001;
          v17.i64[1] = 0x100000001;
          amt::HashAdjacency::setMainNeighbor(a1, v7, vaddvq_s32(vshlq_u32(vandq_s8(vshlq_u32(v41, xmmword_23E787800), v17), xmmword_23E7877F0)), SLODWORD(v16));
        }

        else if (a3 >= 1)
        {
          v40 = v10 - started;
          v18 = 0;
          v19 = 16 * v7;
          v35 = 4 * v19;
          v36 = 4 * (16 * v7 + 16 - v19);
          v32 = started;
          while (1)
          {
            v3.i32[0] = dword_23E787848[v18];
            if (v19 != 2147483632)
            {
              memset((v35 + *(a1 + 24)), 255, v36);
            }

            v20 = vmovl_u8(v3);
            v21 = vuzp1_s8(*v20.i8, *v20.i8).u32[0];
            v34 = v13 - started;
            if (v13 <= started)
            {
              break;
            }

            v12.i32[0] = v20.u16[1];
            v12.i32[1] = v20.u16[2];
            v22 = v20.i8[6];
            v20.i32[0] = v21;
            *v12.i8 = vshr_n_s32(vshl_n_s32(*v12.i8, 0x18uLL), 0x18uLL);
            v23 = vextq_s8(vextq_s8(v20, v20, 4uLL), v12, 0xCuLL);
            v23.i32[3] = v22;
            v42 = vnegq_s32(v23);
            v24 = v40;
            v25 = (v39 + 4 + 8 * started);
            while (1)
            {
              v26 = (v25 - 1);
              v27 = vld1q_dup_f32(v26);
              v28 = *v25;
              v29.i64[0] = 0x100000001;
              v29.i64[1] = 0x100000001;
              v30 = vaddvq_s32(vshlq_u32(vandq_s8(vshlq_u32(v27, v42), v29), xmmword_23E7877F0));
              if (amt::HashAdjacency::mainNeighbor(a1, v7, v30) != -1)
              {
                break;
              }

              v25 += 2;
              amt::HashAdjacency::setMainNeighbor(a1, v7, v30, v28);
              if (!--v24)
              {
                goto LABEL_18;
              }
            }

            ++v18;
            v4 = v37;
            LODWORD(v19) = 16 * v7;
            if (v18 == a3)
            {
              v31 = (*(a1 + 56) - *(a1 + 48)) >> 3;
              amt::HashAdjacency::setMainNeighbor(a1, v7, 0, v31);
              amt::HashAdjacency::setMainNeighbor(a1, v7, 1u, v34 + v31);
              std::vector<AMTPair>::__insert_with_size[abi:ne200100]<AMTPair const*,AMTPair const*>((a1 + 48), *(a1 + 56), (v39 + 8 * v32), (v39 + 8 * v13), (8 * v13 - 8 * v32) >> 3);
              goto LABEL_19;
            }
          }

LABEL_18:
          amt::HashAdjacency::setConfiguration(a1, v7, v21, *v20.i8);
          v4 = v37;
LABEL_19:
          v8 = v33;
        }
      }

      ++v7;
    }

    while (v7 != v8);
  }
}

void amt::HashAdjacency::init(std::vector<unsigned int> *this, int a2)
{
  v4 = -12817;
  std::vector<unsigned short>::assign(this, a2, &v4);
  std::vector<int>::resize(this + 1, 16 * a2);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&this[2].__begin_, 0);
}

float amt::HashAdjacency::setConfiguration(void *a1, int a2, __int32 a3, int8x8_t a4)
{
  if (a2 < 0 || ((a1[1] - *a1) >> 1) <= a2)
  {
    amt::HashAdjacency::setConfiguration();
  }

  a4.i32[0] = a3;
  v4 = vadd_s16(vzip1_s8(a4, a4), 0xFD00FE00FF0000);
  v5 = vuzp1_s8(v4, v4);
  if ((vminv_u8(vcgez_s8(v5)) & 0x80) == 0 || (vminv_u8(vcgt_s8(0x1010101010101010, v5)) & 0x80) == 0)
  {
    amt::HashAdjacency::setConfiguration();
  }

  result = COERCE_FLOAT(vaddvq_s32(vshlq_u32(vshrq_n_s32(vshlq_n_s32(vmovl_u16(v4), 0x18uLL), 0x18uLL), xmmword_23E787810)));
  *(*a1 + 2 * a2) = LOWORD(result);
  return result;
}

void *amt::HashAdjacency::setMainNeighbor(void *this, int a2, unsigned int a3, int a4)
{
  if (a2 < 0 || ((this[1] - *this) >> 1) <= a2)
  {
    amt::HashAdjacency::setMainNeighbor();
  }

  if (a3 >= 0x10)
  {
    amt::HashAdjacency::setMainNeighbor();
  }

  *(this[3] + 4 * (a3 | (16 * a2))) = a4;
  return this;
}

uint64_t amt::HashAdjacency::mainNeighbor(amt::HashAdjacency *this, int a2, unsigned int a3)
{
  if (a2 < 0 || ((*(this + 1) - *this) >> 1) <= a2)
  {
    amt::HashAdjacency::mainNeighbor();
  }

  if (a3 >= 0x10)
  {
    amt::HashAdjacency::mainNeighbor();
  }

  return *(*(this + 3) + 4 * (a3 | (16 * a2)));
}

_WORD *std::vector<unsigned short>::assign(void *a1, unint64_t a2, __int16 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 1)
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

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (v5 <= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = v5;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 1;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 1;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = vdupq_n_s64(v11 - 1);
    v15 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = result + 4;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_23E786B50)));
      if (vuzp1_s8(vuzp1_s16(v18, *v14.i8), *v14.i8).u8[0])
      {
        *(v16 - 4) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v14), *&v14).i8[1])
      {
        *(v16 - 3) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_23E786B40)))), *&v14).i8[2])
      {
        *(v16 - 2) = v13;
        *(v16 - 1) = v13;
      }

      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_23E787830)));
      if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i32[1])
      {
        *v16 = v13;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i8[5])
      {
        v16[1] = v13;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_23E787820))))).i8[6])
      {
        v16[2] = v13;
        v16[3] = v13;
      }

      v12 += 8;
      v16 += 8;
    }

    while (v15 != v12);
  }

  v20 = a2 - v10;
  if (a2 <= v10)
  {
    a1[1] = &result[a2];
  }

  else
  {
    v21 = 0;
    v22 = v9 + 2 * v20;
    v23 = *a3;
    v24 = (2 * a2 - (v9 - result) - 2) >> 1;
    v25 = vdupq_n_s64(v24);
    v26 = (v24 & 0x7FFFFFFFFFFFFFF8) + 8;
    v27 = (v9 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_23E786B50)));
      if (vuzp1_s8(vuzp1_s16(v29, *v25.i8), *v25.i8).u8[0])
      {
        *(v27 - 4) = v23;
      }

      if (vuzp1_s8(vuzp1_s16(v29, *&v25), *&v25).i8[1])
      {
        *(v27 - 3) = v23;
      }

      if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_23E786B40)))), *&v25).i8[2])
      {
        *(v27 - 2) = v23;
        *(v27 - 1) = v23;
      }

      v30 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_23E787830)));
      if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i32[1])
      {
        *v27 = v23;
      }

      if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i8[5])
      {
        v27[1] = v23;
      }

      if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_23E787820))))).i8[6])
      {
        v27[2] = v23;
        v27[3] = v23;
      }

      v21 += 8;
      v27 += 8;
    }

    while (v26 != v21);
    a1[1] = v22;
  }

  return result;
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<AMTPair>::__insert_with_size[abi:ne200100]<AMTPair const*,AMTPair const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void amt::AMTAdaptiveMeshTessellatorBasic::tessellate(uint64_t a1, uint64_t a2)
{
  std::vector<amt::Vec<int,3>>::__assign_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>((a1 + 72), *(a1 + 48), *(a1 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 2));
  amt::AMTAdaptiveMeshTessellatorBasic::computeBaseMeshTriangleSubdivisionConfigs(a1, a2);
  if (*(a2 + 68) >= 1)
  {
    v4 = 0;
    do
    {
      amt::AMTAdaptiveMeshTessellatorBasic::subdivide(a1, a2);
      ++v4;
    }

    while (v4 < *(a2 + 68));
  }
}

uint64_t amt::AMTAdaptiveMeshTessellatorBasic::computeBaseMeshTriangleSubdivisionConfigs(int *a1, uint64_t a2)
{
  v6 = *(a1 + 15);
  v4 = (a1 + 30);
  v5 = v6;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((*(v4 - 8) - *(v4 - 9)) >> 2);
  v8 = &v4[1][-v6];
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      *(a1 + 16) = v5 + v7;
    }
  }

  else
  {
    std::vector<signed char>::__append(v4, v7 - v8);
  }

  if (v7 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7 & 0x7FFFFFFF;
    do
    {
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v12 = (*(a1 + 6) + v9);
      v13 = *(v12 + 2);
      v24 = *v12;
      v25 = v13;
      (*(*a1 + 32))(a1, &v24, &v28, &v27, &v26, a2);
      v14 = (*(*a1 + 16))(a1, a2, v28);
      v15 = (*(*a1 + 16))(a1, a2, v27);
      v16 = (*(*a1 + 16))(a1, a2, v26);
      if ((v15 | v16))
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 & 0xFE | (v14 | v15) & 1;
      if ((v16 | v14))
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      *(*(a1 + 15) + v10++) = v18 | v19;
      v9 += 12;
    }

    while (v11 != v10);
  }

  v20 = *(a1 + 2);
  if (!v20 || (v21 = CFGetTypeID(v20), v21 != AMTMeshSourceGetTypeID()))
  {
    amt::AMTAdaptiveMeshTessellatorBasic::computeBaseMeshTriangleSubdivisionConfigs();
  }

  result = AMTMeshSourceGetVectorCount(*(a1 + 2));
  v23 = a1[10];
  if (v23 <= result)
  {
    v23 = result;
  }

  a1[10] = v23;
  return result;
}

__n128 amt::AMTAdaptiveMeshTessellatorBasic::subdivide(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 2);
  v5 = (-1431655764 * ((*(a1 + 80) - *(a1 + 72)) >> 2));
  std::vector<amt::Vec<int,3>>::resize((a1 + 96), v5);
  v6 = *(a1 + 144);
  v7 = *(a1 + 152) - v6;
  if (v5 <= v7)
  {
    if (v5 < v7)
    {
      *(a1 + 152) = v6 + v5;
    }
  }

  else
  {
    std::vector<signed char>::__append((a1 + 144), v5 - v7);
  }

  v31 = (a1 + 144);
  if (v4 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v32 = v4 & 0x7FFFFFFF;
    v33 = a2;
    while (1)
    {
      v11 = *(a1 + 72) + v8;
      v39 = *v11;
      v40 = *(v11 + 8);
      v12 = *(*(a1 + 120) + v9);
      if (!v12)
      {
        goto LABEL_24;
      }

      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v34 = v39;
      v35 = v40;
      (*(*a1 + 32))(a1, &v34, &v38, &v37, &v36, v33);
      v13 = (*(*a1 + 16))(a1, v33, v38);
      v14 = (*(*a1 + 16))(a1, v33, v37);
      v15 = (*(*a1 + 16))(a1, v33, v36);
      v16 = 0;
      if (v12 & 1) != 0 && ((v13 | v14))
      {
        v16 = (*(*a1 + 24))(a1, v33, v38, v37);
      }

      v17 = 0;
      if (v12 & 2) != 0 && ((v14 | v15))
      {
        if ((*(*a1 + 24))(a1, v33, v37, v36))
        {
          v17 = 2;
        }

        else
        {
          v17 = 0;
        }
      }

      v18 = 0;
      if (v12 & 4) != 0 && ((v15 | v13))
      {
        if ((*(*a1 + 24))(a1, v33, v36, v38))
        {
          v18 = 4;
        }

        else
        {
          v18 = 0;
        }
      }

      v19 = v17 | v16 | v18;
      if (v19 > 3)
      {
        if (v19 > 5)
        {
          v38.n128_u64[0] = v39;
          v38.n128_u32[2] = v40;
          if (v19 == 6)
          {
            v21 = amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig6(a1, &v38, v10);
          }

          else
          {
            v21 = amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig7(a1, &v38, v10);
          }
        }

        else
        {
          v38.n128_u64[0] = v39;
          v38.n128_u32[2] = v40;
          if (v19 == 4)
          {
            v21 = amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig4(a1, &v38, v10);
          }

          else
          {
            v21 = amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig5(a1, &v38, v10);
          }
        }

        goto LABEL_25;
      }

      if (v19 > 1)
      {
        v38.n128_u64[0] = v39;
        v38.n128_u32[2] = v40;
        if (v19 == 2)
        {
          v21 = amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig2(a1, &v38, v10);
        }

        else
        {
          v21 = amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig3(a1, &v38, v10);
        }

        goto LABEL_25;
      }

      if (v19)
      {
        v38.n128_u64[0] = v39;
        v38.n128_u32[2] = v40;
        v21 = amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig1(a1, &v38, v10);
      }

      else
      {
LABEL_24:
        v20 = *(a1 + 96) + 12 * v10;
        *v20 = v39;
        *(v20 + 8) = v40;
        (*v31)[v10] = 0;
        v21 = 1;
      }

LABEL_25:
      v10 += v21;
      ++v9;
      v8 += 12;
      if (v32 == v9)
      {
        v22 = v10;
        goto LABEL_39;
      }
    }
  }

  v22 = 0;
LABEL_39:
  std::vector<amt::Vec<int,3>>::resize((a1 + 96), v22);
  v23 = *(a1 + 144);
  v24 = *(a1 + 152);
  if (v22 <= v24 - v23)
  {
    if (v22 < v24 - v23)
    {
      v24 = v23 + v22;
    }
  }

  else
  {
    std::vector<signed char>::__append(v31, v22 - (v24 - v23));
    v23 = *(a1 + 144);
    v24 = *(a1 + 152);
  }

  v25 = *(a1 + 72);
  *(a1 + 72) = *(a1 + 96);
  *(a1 + 96) = v25;
  v26 = *(a1 + 88);
  *(a1 + 88) = *(a1 + 112);
  result = *(a1 + 120);
  *(a1 + 112) = v26;
  *(a1 + 120) = v23;
  *(a1 + 144) = result;
  v28 = *(a1 + 136);
  v29 = *(a1 + 160);
  *(a1 + 128) = v24;
  *(a1 + 136) = v29;
  *(a1 + 160) = v28;
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig1(uint64_t a1, int *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a1 + 32);
  if (*a2 <= v6)
  {
    v9 = a2[1];
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = amt::HashAdjacency::neighbor(v8, v9, v10);
  v12 = *(a1 + 40);
  if (v12 <= v11)
  {
    v12 = v11;
  }

  *(a1 + 40) = v12;
  v13 = (*(a1 + 96) + 12 * a3);
  *v13 = v5;
  v13[1] = v11;
  v13[2] = v7;
  v14 = (*(a1 + 96) + 12 * a3);
  v14[3] = v11;
  v14[4] = v6;
  v14[5] = v7;
  *(*(a1 + 144) + a3) = 1;
  *(*(a1 + 144) + a3 + 1) = 1;
  return 2;
}

uint64_t amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig2(uint64_t a1, int *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a1 + 32);
  if (v6 <= v7)
  {
    v9 = a2[2];
  }

  else
  {
    v9 = a2[1];
  }

  if (v7 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = amt::HashAdjacency::neighbor(v8, v9, v10);
  v12 = *(a1 + 40);
  if (v12 <= v11)
  {
    v12 = v11;
  }

  *(a1 + 40) = v12;
  v13 = (*(a1 + 96) + 12 * a3);
  *v13 = v5;
  v13[1] = v6;
  v13[2] = v11;
  v14 = (*(a1 + 96) + 12 * a3);
  v14[3] = v5;
  v14[4] = v11;
  v14[5] = v7;
  *(*(a1 + 144) + a3) = 2;
  *(*(a1 + 144) + a3 + 1) = 2;
  return 2;
}

uint64_t amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig3(uint64_t a1, int *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a1 + 32);
  if (*a2 <= v6)
  {
    v9 = a2[1];
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = amt::HashAdjacency::neighbor(v8, v9, v10);
  if (v6 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v6;
  }

  if (v7 >= v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = v7;
  }

  v14 = amt::HashAdjacency::neighbor(*(a1 + 32), v12, v13);
  v15 = *(a1 + 40);
  if (v15 <= v11)
  {
    v15 = v11;
  }

  if (v15 <= v14)
  {
    v15 = v14;
  }

  *(a1 + 40) = v15;
  v16 = (*(a1 + 96) + 12 * a3);
  *v16 = v5;
  v16[1] = v11;
  v16[2] = v14;
  v17 = (*(a1 + 96) + 12 * a3);
  v17[3] = v11;
  v17[4] = v6;
  v17[5] = v14;
  v18 = (*(a1 + 96) + 12 * a3);
  v18[6] = v5;
  v18[7] = v14;
  v18[8] = v7;
  *(*(a1 + 144) + a3) = 1;
  *(*(a1 + 144) + a3 + 1) = 3;
  *(*(a1 + 144) + a3 + 2) = 2;
  return 3;
}

uint64_t amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig4(uint64_t a1, int *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a1 + 32);
  if (v7 <= *a2)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2[2];
  }

  if (v5 >= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  v11 = amt::HashAdjacency::neighbor(v8, v9, v10);
  v12 = *(a1 + 40);
  if (v12 <= v11)
  {
    v12 = v11;
  }

  *(a1 + 40) = v12;
  v13 = (*(a1 + 96) + 12 * a3);
  *v13 = v5;
  v13[1] = v6;
  v13[2] = v11;
  v14 = (*(a1 + 96) + 12 * a3);
  v14[3] = v11;
  v14[4] = v6;
  v14[5] = v7;
  *(*(a1 + 144) + a3) = 4;
  *(*(a1 + 144) + a3 + 1) = 4;
  return 2;
}

uint64_t amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig5(uint64_t a1, int *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a1 + 32);
  if (*a2 <= v6)
  {
    v9 = a2[1];
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = amt::HashAdjacency::neighbor(v8, v9, v10);
  if (v7 <= v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (v5 >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v5;
  }

  v14 = amt::HashAdjacency::neighbor(*(a1 + 32), v12, v13);
  v15 = *(a1 + 40);
  if (v15 <= v11)
  {
    v15 = v11;
  }

  if (v15 <= v14)
  {
    v15 = v14;
  }

  *(a1 + 40) = v15;
  v16 = (*(a1 + 96) + 12 * a3);
  *v16 = v5;
  v16[1] = v11;
  v16[2] = v14;
  v17 = (*(a1 + 96) + 12 * a3);
  v17[3] = v14;
  v17[4] = v11;
  v17[5] = v7;
  v18 = (*(a1 + 96) + 12 * a3);
  v18[6] = v11;
  v18[7] = v6;
  v18[8] = v7;
  *(*(a1 + 144) + a3) = 5;
  *(*(a1 + 144) + a3 + 1) = 4;
  *(*(a1 + 144) + a3 + 2) = 1;
  return 3;
}

uint64_t amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig6(uint64_t a1, signed int *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a1 + 32);
  if (v6 <= v7)
  {
    v9 = a2[2];
  }

  else
  {
    v9 = a2[1];
  }

  if (v7 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = amt::HashAdjacency::neighbor(v8, v9, v10);
  if (v7 <= v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (v5 >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v5;
  }

  v14 = amt::HashAdjacency::neighbor(*(a1 + 32), v12, v13);
  v15 = *(a1 + 40);
  if (v15 <= v11)
  {
    v15 = v11;
  }

  if (v15 <= v14)
  {
    v15 = v14;
  }

  *(a1 + 40) = v15;
  v16 = (*(a1 + 96) + 12 * a3);
  *v16 = v5;
  v16[1] = v6;
  v16[2] = v11;
  v17 = (*(a1 + 96) + 12 * a3);
  v17[3] = v5;
  v17[4] = v11;
  v17[5] = v14;
  v18 = (*(a1 + 96) + 12 * a3);
  v18[6] = v14;
  v18[7] = v11;
  v18[8] = v7;
  *(*(a1 + 144) + a3) = 2;
  *(*(a1 + 144) + a3 + 1) = 4;
  *(*(a1 + 144) + a3 + 2) = 6;
  return 3;
}

uint64_t amt::AMTAdaptiveMeshTessellatorBasic::subdivideTriangleConfig7(uint64_t a1, int *a2, int a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *(a1 + 32);
  if (*a2 <= v5)
  {
    v9 = a2[1];
  }

  else
  {
    v9 = *a2;
  }

  if (v5 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  v11 = amt::HashAdjacency::neighbor(v8, v9, v10);
  if (v5 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v5;
  }

  if (v7 >= v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = v7;
  }

  v14 = amt::HashAdjacency::neighbor(*(a1 + 32), v12, v13);
  if (v7 <= v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = v7;
  }

  if (v6 >= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v6;
  }

  v17 = amt::HashAdjacency::neighbor(*(a1 + 32), v15, v16);
  v18 = *(a1 + 40);
  if (v18 <= v11)
  {
    v18 = v11;
  }

  if (v18 <= v14)
  {
    v18 = v14;
  }

  if (v18 <= v17)
  {
    v18 = v17;
  }

  *(a1 + 40) = v18;
  v19 = (*(a1 + 96) + 12 * a3);
  *v19 = v6;
  v19[1] = v11;
  v19[2] = v17;
  v20 = (*(a1 + 96) + 12 * a3);
  v20[3] = v11;
  v20[4] = v14;
  v20[5] = v17;
  v21 = (*(a1 + 96) + 12 * a3);
  v21[6] = v11;
  v21[7] = v5;
  v21[8] = v14;
  v22 = (*(a1 + 96) + 12 * a3);
  v22[9] = v17;
  v22[10] = v14;
  v22[11] = v7;
  *(*(a1 + 144) + a3) = 7;
  *(*(a1 + 144) + a3 + 1) = 7;
  *(*(a1 + 144) + a3 + 2) = 7;
  *(*(a1 + 144) + a3 + 3) = 7;
  return 4;
}

uint64_t amt::AMTAdaptiveMeshTessellatorBasic::init(amt::AMTAdaptiveMeshTessellatorBasic *this, CFTypeRef *cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != AMTAdaptiveMeshGetTypeID())
  {
    return 0;
  }

  amt::AMTWrapper<__CFDictionary const*>::set(this + 1, cf);
  v5 = cf[43];
  if (!v5)
  {
    return 0;
  }

  v6 = cf[44];
  v7 = CFGetTypeID(cf[43]);
  TypeID = AMTMeshGetTypeID();
  result = 0;
  if (v7 != TypeID || !v6)
  {
    return result;
  }

  v10 = CFGetTypeID(v6);
  if (v10 != AMTMeshGetTypeID())
  {
    return 0;
  }

  *(this + 2) = __AMTMesh::findSource(v5, 0, 0);
  *(this + 3) = __AMTMesh::findSource(v6, 0, 0);
  result = *(this + 2);
  if (!result)
  {
    return result;
  }

  if (AMTMeshSourceGetVectorCount(result) < 0 || AMTMeshSourceGetComponentsPerVector(*(this + 2)) != 3 || AMTMeshSourceGetDataType(*(this + 2)) != 9)
  {
    return 0;
  }

  result = *(this + 3);
  if (!result)
  {
    return result;
  }

  if (AMTMeshSourceGetVectorCount(result) < 0)
  {
    return 0;
  }

  if (AMTMeshSourceGetComponentsPerVector(*(this + 3)) != 3)
  {
    return 0;
  }

  if (AMTMeshSourceGetDataType(*(this + 3)) != 9)
  {
    return 0;
  }

  v11 = *(v5 + 24);
  if (!v11)
  {
    return 0;
  }

  v12 = CFGetTypeID(v11);
  if (v12 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
LABEL_28:
    *(this + 4) = cf + 2;
    return 1;
  }

  else
  {
    v14 = Count;
    v15 = 0;
    while (1)
    {
      result = CFArrayGetValueAtIndex(v11, v15);
      if (!result)
      {
        break;
      }

      v16 = result;
      v17 = CFGetTypeID(result);
      if (v17 != AMTMeshElementGetTypeID())
      {
        return 0;
      }

      result = AMTMeshElementGetFaceCount(v16);
      if (!result)
      {
        break;
      }

      if (AMTMeshElementGetFaceType(v16))
      {
        return 0;
      }

      FaceCount = AMTMeshElementGetFaceCount(v16);
      result = __AMTMeshElement::findSourceIndices(v16, 0, 0);
      if (!result)
      {
        break;
      }

      v19 = result;
      if (AMTMeshSourceIndicesGetIndexCount(result) != 3 * FaceCount || AMTMeshSourceIndicesGetIndexType(v19) && AMTMeshSourceIndicesGetIndexType(v19) != 1)
      {
        return 0;
      }

      AMTMeshSourceIndicesAppendToVector<int>(v19, this + 6);
      if (v14 == ++v15)
      {
        goto LABEL_28;
      }
    }
  }

  return result;
}

uint64_t amt::HashAdjacency::neighbor(amt::HashAdjacency *this, int a2, unsigned int a3)
{
  *v6.i8 = amt::HashAdjacency::configuration(this, a2);
  if (v6.u8[0] == 15)
  {
    v8 = amt::HashAdjacency::mainNeighbor(this, a2, 0);
    v9 = amt::HashAdjacency::mainNeighbor(this, a2, 1u);
    v10 = v9 - v8;
    if (v9 <= v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      for (i = (*(this + 6) + 8 * v8 + 4); *(i - 1) != a3; i += 2)
      {
        if (!--v10)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return *i;
    }
  }

  else
  {
    v7.i32[0] = v6.u16[1];
    v7.i32[1] = v6.u16[2];
    v13 = v6.i8[6];
    v6.i32[0] = vuzp1_s8(*v6.i8, *v6.i8).i8[0];
    *v7.i8 = vshr_n_s32(vshl_n_s32(*v7.i8, 0x18uLL), 0x18uLL);
    v14 = vextq_s8(vextq_s8(v6, v6, 4uLL), v7, 0xCuLL);
    v14.i32[3] = v13;
    v15.i64[0] = 0x100000001;
    v15.i64[1] = 0x100000001;
    v16 = vaddvq_s32(vshlq_u32(vandq_s8(vshlq_u32(vdupq_n_s32(a3), vnegq_s32(v14)), v15), xmmword_23E7877F0));

    return amt::HashAdjacency::mainNeighbor(this, a2, v16);
  }
}

int16x4_t amt::HashAdjacency::configuration(amt::HashAdjacency *this, int a2)
{
  if (a2 < 0 || ((*(this + 1) - *this) >> 1) <= a2)
  {
    amt::HashAdjacency::configuration();
  }

  v2 = *(*this + 2 * a2);
  v3.i16[0] = v2 & 0xF;
  v3.i16[1] = v2 >> 4;
  v3.i16[2] = HIBYTE(v2) & 0xF;
  v3.i16[3] = v2 >> 12;
  return vadd_s16(v3, 0x3000200010000);
}

CFErrorRef AMTErrorCreateWithMessages(int a1, const char *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = Mutable;
  if (a2)
  {
    v8 = CFStringCreateWithCString(v6, a2, 0x8000100u);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CBEE58], v8);
    Mutable = v12;
  }

  if (a3)
  {
    v9 = CFStringCreateWithCString(v6, a2, 0x8000100u);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CBEE68], v9);
    Mutable = v12;
  }

  v10 = CFErrorCreate(v6, @"AMT", a1, Mutable);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&v12);
  return v10;
}

void sub_23E7776E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

CFErrorRef AMTErrorCreateWithErrorCode(int a1)
{
  values[2] = *MEMORY[0x277D85DE8];
  MainBundle = CFBundleGetMainBundle();
  switch(a1)
  {
    case -14:
      v3 = @"Unsupported image format";
      goto LABEL_17;
    case -13:
      v3 = @"Normal map transfer failed";
      goto LABEL_17;
    case -12:
      v3 = @"Mesh rasterization failed";
      goto LABEL_17;
    case -11:
      v3 = @"Attribute map output creation failed";
      goto LABEL_17;
    case -10:
      v3 = @"Attribute map padding failed";
      goto LABEL_17;
    case -9:
      v3 = @"Attribute map transfer failed";
      goto LABEL_17;
    case -8:
      v3 = @"Unsupported image channel count";
      goto LABEL_17;
    case -7:
      v3 = @"Computing displacements failed";
      goto LABEL_17;
    case -6:
      v3 = @"Subdivision failed";
      goto LABEL_17;
    case -5:
      v3 = @"Parameterization failed";
      goto LABEL_17;
    case -4:
      v3 = @"Triangle deduplication failed";
      goto LABEL_17;
    case -3:
      v3 = @"Simplification failed";
      goto LABEL_17;
    case -2:
      v3 = @"Operation cancelled";
      goto LABEL_17;
    case -1:
      v4 = CFBundleCopyLocalizedString(MainBundle, @"Unexpected input", @"Unexpected input", 0);
      v5 = CFBundleGetMainBundle();
      v6 = @"Input is either NULL or of the wrong type. Please check that has valid.";
      goto LABEL_18;
    default:
      v3 = @"Unkown error";
LABEL_17:
      v4 = CFBundleCopyLocalizedString(MainBundle, v3, v3, 0);
      v5 = CFBundleGetMainBundle();
      v6 = &stru_28510E9C8;
LABEL_18:
      v7 = CFBundleCopyLocalizedString(v5, v6, v6, 0);
      values[0] = v4;
      values[1] = v7;
      v8 = *MEMORY[0x277CBEE68];
      keys[0] = *MEMORY[0x277CBEE58];
      keys[1] = v8;
      if (v7)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v13 = CFDictionaryCreate(0, keys, values, v9, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v10 = CFErrorCreate(0, @"AMT", a1, v13);
      amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&v13);
      CFRelease(v7);
      CFRelease(v4);
      v11 = *MEMORY[0x277D85DE8];
      return v10;
  }
}

void amt::computeVertexToTriangle(uint64_t *a1, unsigned int a2, std::vector<int> *a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  amt::Adjacency<int>::init(a3, a2);
  if (v6 <= 0)
  {
    amt::Adjacency<int>::updateShift(a3);
  }

  else
  {
    v7 = 0;
    v8 = v6 & 0x7FFFFFFF;
    do
    {
      v9 = *a1;
      v10 = *(*a1 + v7);
      if (v10 < 0 || v10 >= a2)
      {
        amt::computeVertexToTriangle();
      }

      v11 = v9 + v7;
      v12 = *(v9 + v7 + 4);
      if ((v12 & 0x80000000) != 0 || v12 >= a2)
      {
        amt::computeVertexToTriangle();
      }

      v13 = *(v9 + v7 + 8);
      if ((v13 & 0x80000000) != 0 || v13 >= a2)
      {
        amt::computeVertexToTriangle();
      }

      amt::Adjacency<int>::incrementNeighborCount(a3, v10);
      v14 = *(v11 + 4);
      if (v14 != *(v9 + v7))
      {
        amt::Adjacency<int>::incrementNeighborCount(a3, v14);
        v14 = *(v9 + v7);
      }

      v15 = *(v9 + v7 + 8);
      if (v15 != v14 && v15 != *(v11 + 4))
      {
        amt::Adjacency<int>::incrementNeighborCount(a3, *(v9 + v7 + 8));
      }

      v7 += 12;
      --v8;
    }

    while (v8);
    amt::Adjacency<int>::updateShift(a3);
    v16 = 0;
    v20 = 0;
    do
    {
      v17 = (*a1 + 12 * v16);
      amt::Adjacency<int>::addNeighbor(a3, *v17, &v20);
      v18 = v17[1];
      if (v18 != *v17)
      {
        amt::Adjacency<int>::addNeighbor(a3, v18, &v20);
        v18 = *v17;
      }

      v19 = v17[2];
      if (v19 != v18 && v19 != v17[1])
      {
        amt::Adjacency<int>::addNeighbor(a3, v17[2], &v20);
      }

      v16 = v20 + 1;
      v20 = v16;
    }

    while (v16 < v6);
  }
}

void amt::Adjacency<int>::init(std::vector<int> *a1, int a2)
{
  __u = 0;
  std::vector<int>::assign(a1, a2 + 1, &__u);
  v4 = 0;
  std::vector<int>::assign(a1 + 1, a2, &v4);
}

void *amt::Adjacency<int>::incrementNeighborCount(void *result, int a2)
{
  if (((result[4] - result[3]) >> 2) <= a2)
  {
    amt::Adjacency<int>::incrementNeighborCount();
  }

  ++*(*result + 4 * a2 + 4);
  return result;
}

void amt::Adjacency<int>::updateShift(std::vector<unsigned int> *a1)
{
  begin = a1->__begin_;
  end = a1->__end_;
  v3 = end - a1->__begin_;
  if ((v3 >> 2) >= 2)
  {
    v4 = (v3 >> 2) & 0x7FFFFFFF;
    v7 = *begin;
    v5 = begin + 1;
    v6 = v7;
    v8 = v4 - 1;
    do
    {
      v6 += *v5;
      *v5++ = v6;
      --v8;
    }

    while (v8);
  }

  std::vector<int>::resize(a1 + 2, *(end - 1));
}

uint64_t amt::Adjacency<int>::addNeighbor(void *a1, unsigned int a2, int *a3)
{
  if ((a2 & 0x80000000) != 0 || (v5 = a1[3], ((a1[4] - v5) >> 2) < a2))
  {
    amt::Adjacency<int>::addNeighbor();
  }

  if (*a3 < 0)
  {
    amt::Adjacency<int>::addNeighbor();
  }

  v7 = *(v5 + 4 * a2);
  result = amt::Adjacency<int>::maxNeighborCount(a1, a2);
  if (v7 >= result)
  {
    amt::Adjacency<int>::addNeighbor();
  }

  v9 = *a3;
  v10 = *(*a1 + 4 * a2);
  v11 = a1[3];
  v12 = *(v11 + 4 * a2);
  *(v11 + 4 * a2) = v12 + 1;
  *(a1[6] + 4 * (v12 + v10)) = v9;
  return result;
}

uint64_t amt::tagAdjacentTriangles(int a1, char a2, void *a3, void *a4)
{
  if (((a3[4] - a3[3]) >> 2) <= a1)
  {
    amt::tagAdjacentTriangles();
  }

  started = amt::Adjacency<int>::neighborsStartIndex(a3, a1);
  result = amt::Adjacency<int>::neighborsEndIndex(a3, a1);
  if (started < result)
  {
    v10 = started;
    do
    {
      *(*a4 + *(a3[6] + 4 * v10++)) = a2;
    }

    while (result != v10);
  }

  return result;
}

uint64_t amt::incrementTagAdjacentTriangles(int a1, void *a2, void *a3)
{
  if (((a2[4] - a2[3]) >> 2) <= a1)
  {
    amt::incrementTagAdjacentTriangles();
  }

  started = amt::Adjacency<int>::neighborsStartIndex(a2, a1);
  result = amt::Adjacency<int>::neighborsEndIndex(a2, a1);
  if (started < result)
  {
    v8 = started;
    do
    {
      v9 = *(a2[6] + 4 * v8);
      ++*(*a3 + v9);
      ++v8;
    }

    while (result != v8);
  }

  return result;
}

uint64_t amt::computeAdjacentVertexCount(int a1, void *a2, void *a3, void *a4)
{
  if (((a3[4] - a3[3]) >> 2) <= a1)
  {
    amt::computeAdjacentVertexCount();
  }

  started = amt::Adjacency<int>::neighborsStartIndex(a3, a1);
  v9 = amt::Adjacency<int>::neighborsEndIndex(a3, a1);
  if (started >= v9)
  {
    result = 0;
    *(*a4 + a1) = 0;
  }

  else
  {
    v10 = started;
    v11 = v9;
    v12 = started;
    do
    {
      v13 = (*a2 + 12 * *(a3[6] + 4 * v12));
      *(*a4 + *v13) = 1;
      *(*a4 + v13[1]) = 1;
      *(*a4 + v13[2]) = 1;
      ++v12;
    }

    while (v9 != v12);
    result = 0;
    *(*a4 + a1) = 0;
    do
    {
      v15 = 0;
      v16 = *a2 + 12 * *(a3[6] + 4 * v10);
      do
      {
        v17 = *(v16 + v15);
        if (*(*a4 + v17))
        {
          result = (result + 1);
          *(*a4 + v17) = 0;
        }

        v15 += 4;
      }

      while (v15 != 12);
      ++v10;
    }

    while (v10 != v11);
  }

  return result;
}

void amt::computeAdjacentVertices(int a1, void *a2, void *a3, void *a4, std::vector<unsigned int> *this)
{
  std::vector<int>::resize(this, 0);
  if (((a3[4] - a3[3]) >> 2) <= a1)
  {
    amt::computeAdjacentVertices();
  }

  LODWORD(v10) = amt::Adjacency<int>::neighborsStartIndex(a3, a1);
  v11 = amt::Adjacency<int>::neighborsEndIndex(a3, a1);
  if (v10 >= v11)
  {
    *(*a4 + a1) = 0;
  }

  else
  {
    v10 = v10;
    v12 = v11;
    v13 = v10;
    do
    {
      v14 = (*a2 + 12 * *(a3[6] + 4 * v13));
      *(*a4 + *v14) = 1;
      *(*a4 + v14[1]) = 1;
      *(*a4 + v14[2]) = 1;
      ++v13;
    }

    while (v11 != v13);
    *(*a4 + a1) = 0;
    do
    {
      v15 = 0;
      v16 = *a2 + 12 * *(a3[6] + 4 * v10);
      do
      {
        v17 = *(v16 + v15);
        if (*(*a4 + v17))
        {
          std::vector<int>::push_back[abi:ne200100](&this->__begin_, &v17);
          *(*a4 + v17) = 0;
        }

        v15 += 4;
      }

      while (v15 != 12);
      ++v10;
    }

    while (v10 != v12);
  }
}

void amt::computeAdjacentTriangles(int *a1, void *a2, void *a3, std::vector<unsigned int> *this)
{
  std::vector<int>::resize(this, 0);
  amt::tagAdjacentTriangles(*a1, 0, a2, a3);
  amt::tagAdjacentTriangles(a1[1], 0, a2, a3);
  amt::tagAdjacentTriangles(a1[2], 0, a2, a3);
  for (i = 0; i != 3; ++i)
  {
    v9 = a1[i];
    if (v9 >= ((a2[4] - a2[3]) >> 2))
    {
      amt::computeAdjacentTriangles();
    }

    started = amt::Adjacency<int>::neighborsStartIndex(a2, a1[i]);
    v11 = amt::Adjacency<int>::neighborsEndIndex(a2, v9);
    v12 = v11 - started;
    if (v11 > started)
    {
      v13 = 4 * started;
      do
      {
        v14 = *(a2[6] + v13);
        if (!*(*a3 + v14))
        {
          *(*a3 + v14) = 1;
          std::vector<int>::push_back[abi:ne200100](&this->__begin_, &v14);
        }

        v13 += 4;
        --v12;
      }

      while (v12);
    }
  }
}

void amt::computeEdgeAdjacentTriangles(int a1, int a2, void *a3, void *a4, std::vector<unsigned int> *this)
{
  std::vector<int>::resize(this, 0);
  amt::tagAdjacentTriangles(a1, 0, a3, a4);
  amt::tagAdjacentTriangles(a2, 1, a3, a4);
  started = amt::Adjacency<int>::neighborsStartIndex(a3, a1);
  v11 = amt::Adjacency<int>::neighborsEndIndex(a3, a1);
  v12 = v11 - started;
  if (v11 > started)
  {
    v13 = 4 * started;
    do
    {
      v14 = *(a3[6] + v13);
      if (*(*a4 + v14))
      {
        std::vector<int>::push_back[abi:ne200100](&this->__begin_, &v14);
      }

      v13 += 4;
      --v12;
    }

    while (v12);
  }
}

uint64_t amt::computeEdgeAdjacentTriangleCount(int a1, int a2, void *a3, void *a4)
{
  amt::tagAdjacentTriangles(a1, 0, a3, a4);
  amt::tagAdjacentTriangles(a2, 1, a3, a4);
  started = amt::Adjacency<int>::neighborsStartIndex(a3, a1);
  v9 = amt::Adjacency<int>::neighborsEndIndex(a3, a1);
  result = 0;
  if (started < v9)
  {
    LODWORD(result) = 0;
    v11 = (a3[6] + 4 * started);
    v12 = v9 - started;
    do
    {
      v13 = *v11++;
      if (*(*a4 + v13))
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }

      --v12;
    }

    while (v12);
  }

  return result;
}

void amt::computeBoundaryVertices(void *a1, void *a2, void *a3, void *a4, char **a5)
{
  v5 = a2[4] - a2[3];
  if ((v5 >> 2))
  {
    v10 = (v5 >> 2);
    v11 = *a5;
    v12 = a5[1];
    v13 = (v12 - *a5);
    if (v10 <= v13)
    {
      if (v10 < v13)
      {
        v12 = &v11[v10];
        a5[1] = &v11[v10];
      }
    }

    else
    {
      std::vector<signed char>::__append(a5, v10 - v13);
      v11 = *a5;
      v12 = a5[1];
    }

    if (v12 - v11 >= 1)
    {
      bzero(v11, v12 - v11);
    }

    memset(&__p, 0, sizeof(__p));
    if ((v5 >> 2) >= 1)
    {
      v14 = 0;
      v15 = (v5 >> 2) & 0x7FFFFFFF;
      do
      {
        amt::computeAdjacentVertices(v14, a1, a2, a3, &__p);
        if (((__p.__end_ - __p.__begin_) >> 2) >= 1)
        {
          v16 = 0;
          v17 = ((__p.__end_ - __p.__begin_) >> 2) & 0x7FFFFFFF;
          do
          {
            v18 = __p.__begin_[v16];
            if (v14 < v18 && amt::computeEdgeAdjacentTriangleCount(v14, __p.__begin_[v16], a2, a4) == 1)
            {
              (*a5)[v14] = 1;
              (*a5)[v18] = 1;
            }

            ++v16;
          }

          while (v17 != v16);
        }

        ++v14;
      }

      while (v14 != v15);
      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }
    }
  }
}

void sub_23E778430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amt::saveMaterial(uint64_t *a1, uint64_t a2)
{
  v42[19] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(&v40, a1);
  if (v41[15])
  {
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "newmtl ", 7);
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (v4 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 8);
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v39, MEMORY[0x277D82680]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v39);
    std::ostream::put();
    std::ostream::flush();
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Ka ", 3);
    v10 = amt::operator<<<double,3>(v9, a2 + 48);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v39, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v39);
    std::ostream::put();
    std::ostream::flush();
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Kd ", 3);
    v13 = amt::operator<<<double,3>(v12, a2 + 72);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v39, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v39);
    std::ostream::put();
    std::ostream::flush();
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Ks ", 3);
    v16 = amt::operator<<<double,3>(v15, a2 + 96);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v39, MEMORY[0x277D82680]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v39);
    std::ostream::put();
    std::ostream::flush();
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Tr ", 3);
    v19 = MEMORY[0x23EF11BF0](v18, *(a2 + 128));
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v39, MEMORY[0x277D82680]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v39);
    std::ostream::put();
    std::ostream::flush();
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "illum ", 6);
    v22 = MEMORY[0x23EF11C10](v21, *(a2 + 136));
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(&v39, MEMORY[0x277D82680]);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(&v39);
    std::ostream::put();
    std::ostream::flush();
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Ns ", 3);
    v25 = MEMORY[0x23EF11BF0](v24, *(a2 + 120));
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v26 = std::locale::use_facet(&v39, MEMORY[0x277D82680]);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(&v39);
    std::ostream::put();
    std::ostream::flush();
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "map_Kd ", 7);
    v30 = *(a2 + 24);
    v29 = a2 + 24;
    v28 = v30;
    v31 = *(v29 + 23);
    if (v31 >= 0)
    {
      v32 = v29;
    }

    else
    {
      v32 = v28;
    }

    if (v31 >= 0)
    {
      v33 = *(v29 + 23);
    }

    else
    {
      v33 = *(v29 + 8);
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v32, v33);
    std::ios_base::getloc((v34 + *(*v34 - 24)));
    v35 = std::locale::use_facet(&v39, MEMORY[0x277D82680]);
    (v35->__vftable[2].~facet_0)(v35, 10);
    std::locale::~locale(&v39);
    std::ostream::put();
    std::ostream::flush();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v41[-1] + *(v40 - 24)), *(&v41[3] + *(v40 - 24)) | 4);
    }

    v36 = 0;
  }

  else
  {
    v36 = 0xFFFFFFFFLL;
  }

  v40 = *MEMORY[0x277D82810];
  *(&v41[-1] + *(v40 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x23EF11B90](v41);
  std::ostream::~ostream();
  MEMORY[0x23EF11E10](v42);
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

void *amt::operator<<<double,3>(void *a1, uint64_t a2)
{
  for (i = 0; i != 24; i += 8)
  {
    MEMORY[0x23EF11BF0](a1, *(a2 + i));
    if (i == 16)
    {
      break;
    }

    v6 = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v6, 1);
  }

  return a1;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x23EF11B90](a1 + 1);

  return std::ostream::~ostream();
}

void std::vector<int>::assign(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (__n > (value - begin) >> 2)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (!(__n >> 62))
    {
      v7 = value >> 1;
      if (value >> 1 <= __n)
      {
        v7 = __n;
      }

      if (value >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<float>::__vallocate[abi:ne200100](this, v8);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v10 = end - begin;
  if (v10 >= __n)
  {
    v11 = __n;
  }

  else
  {
    v11 = end - begin;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *__u;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = begin + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_23E786B50)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_23E786B40)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = __n >= v10;
  v20 = __n - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = &end[v20];
    v23 = *__u;
    v24 = (4 * __n - (end - begin) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = end + 2;
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_23E786B50)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_23E786B40)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    this->__end_ = v22;
  }

  else
  {
    this->__end_ = &begin[__n];
  }
}

uint64_t amt::Adjacency<int>::maxNeighborCount(void *a1, int a2)
{
  if (((a1[4] - a1[3]) >> 2) <= a2)
  {
    amt::Adjacency<int>::maxNeighborCount();
  }

  v2 = *(*a1 + 4 * a2);
  v3 = *(*a1 + 4 * a2 + 4);
  result = (v3 - v2);
  if (v3 < v2)
  {
    amt::Adjacency<int>::maxNeighborCount();
  }

  return result;
}

uint64_t _AMTTypeCreateInstance(const __CFAllocator *a1, CFTypeID a2, size_t a3)
{
  if (HIDWORD(a3))
  {
    CFLog();
    return 0;
  }

  else
  {
    Instance = _CFRuntimeCreateInstance();
    v4 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), a3);
    }

    else
    {
      v8 = CFCopyTypeIDDescription(a2);
      CFLog();
      CFRelease(v8);
    }
  }

  return v4;
}

uint64_t amt::parameterize(uint64_t *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a1[3];
  v6 = (a1[4] - v5) >> 4;
  v7 = 3 * v6;
  v8 = a1[9];
  std::vector<float>::vector[abi:ne200100](__p, v7);
  if (v6)
  {
    v9 = 0;
    v10 = __p[0] + 4;
    v11 = (v5 + 8);
    do
    {
      *(v10 - 1) = *(v11 - 2);
      *v10 = *(v11 - 1);
      v12 = *v11;
      v11 += 4;
      v10[1] = v12;
      v9 += 3;
      v10 += 3;
    }

    while (v9 < v7);
  }

  v13 = objc_alloc_init(MEMORY[0x277D0AE88]);
  v14 = objc_alloc_init(MEMORY[0x277D0AE80]);
  [v14 setPositions:__p[0] size:v7];
  [v14 setFaces:v8 size:((a1[10] - a1[9]) >> 2)];
  if ([v14 create:v13])
  {
    v15 = objc_alloc_init(MEMORY[0x277D0AE68]);
    if ([v15 run:v13])
    {
      v16 = objc_alloc_init(MEMORY[0x277D0AE60]);
      [v16 setPackingMethod:0];
      [v16 setTextureResolution:*(a2 + 12)];
      [v16 setNumOfTextures:*(a2 + 20)];
      LODWORD(v17) = *(a2 + 4);
      [v16 setGutter:v17];
      [v16 setTargetNumOfCharts:*(a2 + 8)];
      LODWORD(v18) = *a2;
      [v16 setMaximumStretchRatio:v18];
      [v16 setEnableParallel:*(a2 + 24)];
      [v16 setSkipInitialStretchOptimization:*(a2 + 25)];
      [v16 setOptimizeBoundaryIfFaceNumberLessThan:*(a2 + 16)];
      [v16 setRepairUVSelfIntersection:*(a2 + 26)];
      v19 = objc_alloc_init(MEMORY[0x277D0AE58]);
      [v19 setOptions:v16];
      if ([v19 run:v13])
      {
        v20 = [v19 returnReport];
        v21 = [v20 success];
        if (v21)
        {
          v33 = v20;
          v34 = v15;
          memset(&v35, 0, sizeof(v35));
          v22 = [v13 vertexSize];
          std::vector<int>::resize(&v35, 3 * v22);
          [v13 getPositions:v35.__begin_ size:3 * v22];
          v37 = 0u;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(a1 + 3, v22, &v37);
          if (v22 >= 1)
          {
            v24 = 0;
            v25 = 0;
            do
            {
              v26 = a1[3];
              if (v25 >= ((a1[4] - v26) >> 4))
              {
                __assert_rtn("setPosition", "AMTTriangleMesh.hpp", 306, "posIndex >= 0 && posIndex < positionCount()");
              }

              *&v23 = *&v35.__begin_[v24];
              DWORD2(v23) = v35.__begin_[v24 + 2];
              *(v26 + 16 * v25++) = v23;
              v24 += 3;
            }

            while (v22 != v25);
          }

          v27 = [v13 texCoordSize];
          std::vector<int>::resize(&v35, 2 * v27);
          [v13 getTexCoords:v35.__begin_ size:2 * v27];
          *&v37 = 0;
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEmRKS1_(a1 + 12, v27, &v37);
          if (v27 >= 1)
          {
            v29 = 0;
            for (i = 0; i != v27; ++i)
            {
              v28.n64_u32[0] = v35.__begin_[v29];
              v28.n64_u64[0] = amt::TriangleMesh::setTexCoord(a1, i, v28, *&v35.__begin_[v29 + 1]).n64_u64[0];
              v29 += 2;
            }
          }

          v31 = [v13 faceSize];
          [v13 getFaces:a1[9] size:3 * v31];
          *&v37 = -1;
          DWORD2(v37) = -1;
          std::vector<amt::Vec<int,3>>::resize(a1 + 15, v31, &v37);
          [v13 getTexCoordFaces:a1[15] size:3 * v31];
          v15 = v34;
          v20 = v33;
          if (v35.__begin_)
          {
            v35.__end_ = v35.__begin_;
            operator delete(v35.__begin_);
          }
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v4);
  return v21;
}

void sub_23E7793B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

__n64 amt::TriangleMesh::setTexCoord(amt::TriangleMesh *this, int a2, __n64 result, float a4)
{
  if (a2 < 0 || (v4 = *(this + 12), ((*(this + 13) - v4) >> 3) <= a2))
  {
    amt::TriangleMesh::setTexCoord();
  }

  result.n64_f32[1] = a4;
  *(v4 + 8 * a2) = result;
  return result;
}

void amt::subdivideMeshMidPoint(std::vector<int>::size_type a1, uint64_t a2, int a3, std::vector<int> *a4, void *a5, void *a6)
{
  v10 = a2;
  v12 = a2 << (2 * a3);
  std::vector<amt::SubdivisionLevelInfo>::resize(a6, a3 + 1);
  v57 = a6;
  **a6 = a1 | (v10 << 32);
  std::vector<amt::Vec<int,3>>::resize(a5, v12);
  if (a3 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v56 = a3;
    do
    {
      v58 = v13;
      v15 = a1;
      __x[0] = 0;
      std::vector<int>::resize(a4, a1 + 1, __x);
      if (v10 >= 1)
      {
        v16 = (a4->__begin_ + 1);
        v17 = v10;
        v18 = (*a5 + 8);
        do
        {
          v19 = *(v18 - 2);
          v20 = *(v18 - 1);
          v22 = *v18;
          v18 += 3;
          v21 = v22;
          if (v19 <= v20)
          {
            v23 = v20;
          }

          else
          {
            v23 = v19;
          }

          ++*(v16 + 4 * v23);
          if (v20 <= v21)
          {
            v20 = v21;
          }

          ++*(v16 + 4 * v20);
          if (v21 > v19)
          {
            v19 = v21;
          }

          ++*(v16 + 4 * v19);
          --v17;
        }

        while (v17);
      }

      if (v14 >= a1)
      {
        a1 = a1;
      }

      else
      {
        a1 = a1;
        v24 = &a4->__begin_[v14];
        v27 = *v24;
        v25 = v24 + 1;
        v26 = v27;
        v28 = v15 - v14;
        do
        {
          v26 += *v25;
          *v25++ = v26;
          --v28;
        }

        while (v28);
      }

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&a4[2].__begin_, *(a4->__end_ - 1));
      __x[0] = 0;
      std::vector<int>::resize(a4 + 1, a1, __x);
      a1 = v15;
      if (v10 >= 1)
      {
        v29 = v10;
        a1 = v15;
        do
        {
          v30 = 0;
          v31 = v29 - 1;
          v32 = *a5;
          v33 = *a5 + 12 * (v29 - 1);
          *__x = *v33;
          v62 = *(v33 + 8);
          v59 = -1;
          v60 = -1;
          begin = a4->__begin_;
          v35 = a4[1].__begin_;
          v36 = a4[2].__begin_;
          v37 = (a4->__begin_ + 1);
          do
          {
            v38 = v30 + 1;
            v39 = (v30 + 1);
            v40 = __x[v30];
            if (v30 == 2)
            {
              v39 = 0;
            }

            v41 = __x[v39];
            if (v40 <= v41)
            {
              v42 = __x[v39];
            }

            else
            {
              v42 = __x[v30];
            }

            if (v41 < v40)
            {
              v40 = v41;
            }

            v43 = begin[v42];
            v44 = v35[v42];
            v45 = v44 + v43;
            if (v44 >= 1)
            {
              v46 = &v36[2 * v43 + 1];
              while (*(v46 - 1) != v40)
              {
                ++v43;
                v46 += 2;
                if (v43 >= v45)
                {
                  goto LABEL_34;
                }
              }

              *(&v59 + v30) = *v46;
            }

LABEL_34:
            if (*(&v59 + v30) == -1)
            {
              if (v45 >= *(v37 + 4 * v42))
              {
                amt::subdivideMeshMidPoint();
              }

              v47 = &v36[2 * v45];
              *v47 = v40;
              v47[1] = a1;
              ++v35[v42];
              *(&v59 + v30) = a1;
              a1 = (a1 + 1);
            }

            ++v30;
          }

          while (v38 != 3);
          v48 = v32 + 48 * v31;
          *v48 = v59;
          v50 = HIDWORD(v59);
          v49 = v60;
          *(v48 + 8) = v60;
          v51 = (*a5 + 12 * ((4 * v31) | 1));
          v52 = v59;
          *v51 = __x[0];
          v51[1] = v52;
          v51[2] = v49;
          LODWORD(v48) = __x[1];
          v53 = (*a5 + 12 * ((4 * v31) | 2));
          *v53 = v52;
          v53[1] = v48;
          v53[2] = v50;
          LODWORD(v48) = v62;
          v54 = (*a5 + 12 * ((4 * v31) | 3));
          *v54 = v49;
          v54[1] = v50;
          v54[2] = v48;
        }

        while (v29-- > 1);
      }

      v13 = v58 + 1;
      *(*v57 + 8 * (v58 + 1)) = a1 | (v10 << 34);
      v10 = (4 * v10);
      v14 = v15;
    }

    while (v58 + 1 != v56);
  }
}

void std::vector<amt::SubdivisionLevelInfo>::resize(void *a1, unint64_t a2)
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
    std::vector<amt::SubdivisionLevelInfo>::__append(a1, a2 - v2);
  }
}

void std::vector<amt::SubdivisionLevelInfo>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      memset(*(a1 + 8), 255, 8 * a2);
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
    memset(v11, 255, 8 * a2);
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

uint64_t AMTSaveImage(CGImage *a1, const char *a2)
{
  v4 = objc_autoreleasePoolPush();
  v13 = 11;
  strcpy(cStr, "public.tiff");
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v7 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v8 = CGImageDestinationCreateWithURL(v6, v7, 1uLL, 0);
  v9 = v8;
  if (v8)
  {
    CGImageDestinationAddImage(v8, a1, 0);
    if (CGImageDestinationFinalize(v9))
    {
      CFRelease(v7);
      CFRelease(v6);
      CFRelease(v9);
      v10 = 0;
      goto LABEL_7;
    }

    CFRelease(v7);
    CFRelease(v6);
    CFRelease(v9);
  }

  else
  {
    CFRelease(v6);
    CFRelease(v7);
  }

  v10 = 0xFFFFFFFFLL;
LABEL_7:

  if (v13 < 0)
  {
    operator delete(*cStr);
  }

  objc_autoreleasePoolPop(v4);
  return v10;
}

void sub_23E779AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __AMTMeshSource::_cfFinalize(__AMTMeshSource *this, const void *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }
}

CFStringRef __AMTMeshSource::_cfCopyFormatDescription(__AMTMeshSource *this, const void *a2, const __CFDictionary *a3)
{
  v3 = CFGetAllocator(this);

  return CFStringCreateWithFormat(v3, 0, @"AMTMeshSource");
}

CFStringRef __AMTMeshSource::_cfCopyDebugDescription(__AMTMeshSource *this, const void *a2)
{
  v2 = CFGetAllocator(this);

  return CFStringCreateWithFormat(v2, 0, @"AMTMeshSource");
}

uint64_t AMTMeshSourceGetTypeID()
{
  result = AMTMeshSourceGetTypeID::typeID;
  if (!AMTMeshSourceGetTypeID::typeID)
  {
    {
      {
        AMTMeshSourceGetTypeID::kAMTMeshSourceContextClass = 0;
        qword_27E34F8D0 = CFStringGetCStringPtr(@"AMTMeshSource", 0x8000100u);
        *algn_27E34F8D8 = __AMTMeshSource::_cfInit;
        qword_27E34F8F0 = 0;
        unk_27E34F8F8 = 0;
        qword_27E34F8E0 = 0;
        unk_27E34F8E8 = __AMTMeshSource::_cfFinalize;
        qword_27E34F900 = __AMTMeshSource::_cfCopyFormatDescription;
        qword_27E34F908 = __AMTMeshSource::_cfCopyDebugDescription;
        unk_27E34F910 = 0;
        qword_27E34F918 = 0;
        unk_27E34F920 = 0;
      }
    }

    result = _CFRuntimeRegisterClass();
    AMTMeshSourceGetTypeID::typeID = result;
  }

  return result;
}

uint64_t AMTMeshSourceCreateWithData(const __CFAllocator *a1, CFTypeRef cf, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!cf || (v17 = CFGetTypeID(cf), v17 != CFDataGetTypeID()) || (a6 | a4) < 0 || a4 >= 4 || a7 < 0 || a6 >= 0x10000000 || a9 < 1 || a8 < 0 || a7 > 16)
  {
    CFLog();
    return 0;
  }

  else
  {
    TypeID = AMTMeshSourceGetTypeID();
    Instance = _AMTTypeCreateInstance(a1, TypeID, 0x40uLL);
    if (Instance)
    {
      v20 = CFRetain(cf);
      *(Instance + 16) = v20;
      BytePtr = CFDataGetBytePtr(v20);
      *(Instance + 72) = a3;
      *(Instance + 24) = BytePtr;
      *(Instance + 32) = a4;
      *(Instance + 73) = a5;
      *(Instance + 40) = a6;
      *(Instance + 48) = a7;
      *(Instance + 56) = a8;
      *(Instance + 64) = a9;
    }
  }

  return Instance;
}

uint64_t AMTMeshSourceGetSemantic(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 255;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceGetTypeID())
  {
    return a1[72];
  }

  else
  {
    return 255;
  }
}

uint64_t AMTMeshSourceGetInstance(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceGetTypeID())
  {
    return a1[4];
  }

  else
  {
    return -1;
  }
}

void *AMTMeshSourceGetData(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTMeshSourceGetTypeID())
    {
      return v1[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMTMeshSourceGetDataType(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 255;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceGetTypeID())
  {
    return a1[73];
  }

  else
  {
    return 255;
  }
}

uint64_t AMTMeshSourceGetVectorCount(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceGetTypeID())
  {
    return a1[5];
  }

  else
  {
    return -1;
  }
}

uint64_t AMTMeshSourceGetComponentsPerVector(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceGetTypeID())
  {
    return a1[6];
  }

  else
  {
    return -1;
  }
}

uint64_t AMTMeshSourceGetDataOffset(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceGetTypeID())
  {
    return a1[7];
  }

  else
  {
    return -1;
  }
}

uint64_t AMTMeshSourceGetDataStride(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceGetTypeID())
  {
    return a1[8];
  }

  else
  {
    return -1;
  }
}

void __AMTMesh::_cfFinalize(__AMTMesh *this, const void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {

    CFRelease(v4);
  }
}

CFStringRef __AMTMesh::_cfCopyFormatDescription(__AMTMesh *this, const void *a2, const __CFDictionary *a3)
{
  v3 = CFGetAllocator(this);

  return CFStringCreateWithFormat(v3, 0, @"AMTMesh");
}

CFStringRef __AMTMesh::_cfCopyDebugDescription(__AMTMesh *this, const void *a2)
{
  v2 = CFGetAllocator(this);

  return CFStringCreateWithFormat(v2, 0, @"AMTMesh");
}

uint64_t AMTMeshGetTypeID()
{
  result = AMTMeshGetTypeID::typeID;
  if (!AMTMeshGetTypeID::typeID)
  {
    {
      {
        AMTMeshGetTypeID::kAMTMeshContextClass = 0;
        qword_27E34F940 = CFStringGetCStringPtr(@"AMTMesh", 0x8000100u);
        *algn_27E34F948 = __AMTMesh::_cfInit;
        qword_27E34F960 = 0;
        unk_27E34F968 = 0;
        qword_27E34F950 = 0;
        unk_27E34F958 = __AMTMesh::_cfFinalize;
        qword_27E34F970 = __AMTMesh::_cfCopyFormatDescription;
        qword_27E34F978 = __AMTMesh::_cfCopyDebugDescription;
        unk_27E34F980 = 0;
        qword_27E34F988 = 0;
        unk_27E34F990 = 0;
      }
    }

    result = _CFRuntimeRegisterClass();
    AMTMeshGetTypeID::typeID = result;
  }

  return result;
}

uint64_t AMTMeshCreateWithSources(const __CFAllocator *a1, CFTypeRef cf, const void *a3)
{
  if (cf && (v6 = CFGetTypeID(cf), v7 = CFArrayGetTypeID(), a3) && v6 == v7 && (v8 = CFGetTypeID(a3), v8 == CFArrayGetTypeID()))
  {
    TypeID = AMTMeshGetTypeID();
    Instance = _AMTTypeCreateInstance(a1, TypeID, 0x10uLL);
    if (Instance)
    {
      *(Instance + 16) = CFRetain(cf);
      *(Instance + 24) = CFRetain(a3);
    }
  }

  else
  {
    CFLog();
    return 0;
  }

  return Instance;
}

void *AMTMeshGetSources(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTMeshGetTypeID())
    {
      return v1[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *AMTMeshGetElements(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTMeshGetTypeID())
    {
      return v1[3];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int8 *AMTMeshGetSourceWithSemantic(const void *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != AMTMeshGetTypeID())
  {
    return 0;
  }

  return __AMTMesh::findSource(a1, a2, a3);
}

unsigned __int8 *__AMTMesh::findSource(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = CFGetTypeID(v4);
  if (v7 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 16));
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v10);
    if (ValueAtIndex)
    {
      v12 = ValueAtIndex;
      v13 = CFGetTypeID(ValueAtIndex);
      if (v13 == AMTMeshSourceGetTypeID() && AMTMeshSourceGetSemantic(v12) == a2 && AMTMeshSourceGetInstance(v12) == a3)
      {
        break;
      }
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  return v12;
}

uint64_t AMTMeshCreateWithTriangleMesh(const __CFAllocator *a1, const amt::TriangleMesh *a2)
{
  theArray = CFArrayCreateMutable(a1, 3, MEMORY[0x277CBF128]);
  v4 = *(a2 + 4);
  v5 = v4 - *(a2 + 3);
  if ((v5 & 0xFFFFFFFF0) != 0)
  {
    v6 = MEMORY[0x23EF11640](a1, v4 - *(a2 + 3), 0x100004077774924, 0);
    if (v5 >> 4 >= 1)
    {
      v7 = 0;
      v8 = v5 >> 4;
      do
      {
        v9 = *(*(a2 + 3) + v7);
        *&v6[v7 + 8] = DWORD2(v9);
        *&v6[v7] = v9;
        v7 += 16;
        --v8;
      }

      while (v8);
    }

    v28 = CFDataCreateWithBytesNoCopy(a1, v6, v5, a1);
    v10 = AMTMeshSourceCreateWithData(a1, v28, 0, 0, 9, v5 >> 4, 3, 0, 16);
    amt::AMTWrapper<__CFData const*>::~AMTWrapper(&v28);
    v26 = v10;
    CFArrayAppendValue(theArray, v10);
    amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(&v26);
  }

  v11 = *(a2 + 13);
  v12 = v11 - *(a2 + 12);
  if ((v12 & 0x7FFFFFFF8) != 0)
  {
    v13 = MEMORY[0x23EF11640](a1, v11 - *(a2 + 12), 0x100004077774924, 0);
    if (v12 >> 3 >= 1)
    {
      v14 = 0;
      do
      {
        *&v13[8 * v14] = *(*(a2 + 12) + 8 * v14);
        ++v14;
      }

      while (v12 >> 3 != v14);
    }

    v28 = CFDataCreateWithBytesNoCopy(a1, v13, v12, a1);
    v15 = AMTMeshSourceCreateWithData(a1, v28, 3, 0, 9, v12 >> 3, 2, 0, 8);
    amt::AMTWrapper<__CFData const*>::~AMTWrapper(&v28);
    v26 = v15;
    CFArrayAppendValue(theArray, v15);
    amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(&v26);
  }

  v16 = *(a2 + 19);
  v17 = v16 - *(a2 + 18);
  if ((v17 & 0xFFFFFFFF0) != 0)
  {
    v18 = MEMORY[0x23EF11640](a1, v16 - *(a2 + 18), 0x100004077774924, 0);
    if (v17 >> 4 >= 1)
    {
      v19 = 0;
      v20 = v17 >> 4;
      do
      {
        v21 = *(*(a2 + 18) + v19);
        *&v18[v19 + 8] = DWORD2(v21);
        *&v18[v19] = v21;
        v19 += 16;
        --v20;
      }

      while (v20);
    }

    v28 = CFDataCreateWithBytesNoCopy(a1, v18, v17, a1);
    v22 = AMTMeshSourceCreateWithData(a1, v28, 1, 0, 9, v17 >> 4, 3, 0, 16);
    amt::AMTWrapper<__CFData const*>::~AMTWrapper(&v28);
    v26 = v22;
    CFArrayAppendValue(theArray, v22);
    amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(&v26);
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  v28 = Mutable;
  v26 = AMTMeshElementCreateWithTriangleMesh(a1, a2, 0);
  CFArrayAppendValue(Mutable, v26);
  v24 = AMTMeshCreateWithSources(a1, theArray, v28);
  amt::AMTWrapper<__AMTMeshElement *>::~AMTWrapper(&v26);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(&v28);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(&theArray);
  return v24;
}

void sub_23E77A74C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(va);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(va1);
  _Unwind_Resume(a1);
}

uint64_t AMTMeshElementCreateWithTriangleMesh(const __CFAllocator *a1, const amt::TriangleMesh *a2, uint64_t a3)
{
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v6 = (a2 + 72);
  theArray = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  if (-1431655765 * ((v6[1] - *v6) >> 2))
  {
    v14 = AMTMeshSourceIndicesCreateWithTriangles<int>(a1, v6, 0, 0);
    CFArrayAppendValue(theArray, v14);
    amt::AMTWrapper<__AMTMeshSourceIndices *>::~AMTWrapper(&v14);
  }

  if (-1431655765 * ((*(a2 + 16) - *(a2 + 15)) >> 2))
  {
    v14 = AMTMeshSourceIndicesCreateWithTriangles<int>(a1, a2 + 120, 3, 0);
    CFArrayAppendValue(theArray, v14);
    amt::AMTWrapper<__AMTMeshSourceIndices *>::~AMTWrapper(&v14);
  }

  v9 = *(a2 + 21);
  v10 = *(a2 + 22);
  v11 = a2 + 168;
  if (-1431655765 * ((v10 - v9) >> 2))
  {
    v14 = AMTMeshSourceIndicesCreateWithTriangles<int>(a1, v11, 1, 0);
    CFArrayAppendValue(theArray, v14);
    amt::AMTWrapper<__AMTMeshSourceIndices *>::~AMTWrapper(&v14);
  }

  v12 = AMTMeshElementCreateWithSourceIndicesArray(a1, theArray, 0, (-1431655765 * ((v8 - v7) >> 2)), a3);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(&theArray);
  return v12;
}

void sub_23E77A924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  amt::AMTWrapper<__AMTMeshSourceIndices *>::~AMTWrapper(&a9);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(&a10);
  _Unwind_Resume(a1);
}

uint64_t AMTIndexUnifiedMeshCreateWithMesh(const __CFAllocator *a1, CFTypeRef cf, std::vector<unsigned int> *a3)
{
  if (!cf)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != AMTMeshGetTypeID())
  {
    return 0;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == AMTMeshGetTypeID())
  {
    v8 = *(cf + 2);
  }

  else
  {
    v8 = 0;
  }

  v9 = CFGetTypeID(cf);
  if (v9 == AMTMeshGetTypeID())
  {
    v10 = *(cf + 3);
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
    if (!v8)
    {
      return 0;
    }
  }

  v11 = CFGetTypeID(v8);
  v12 = 0;
  if (v11 != CFArrayGetTypeID() || !v10)
  {
    return v12;
  }

  v13 = CFGetTypeID(v10);
  if (v13 != CFArrayGetTypeID())
  {
    return 0;
  }

  SourceWithSemantic = AMTMeshGetSourceWithSemantic(cf, 0, 0);
  v15 = AMTMeshGetSourceWithSemantic(cf, 3, 0);
  Count = CFArrayGetCount(v8);
  v17 = CFArrayGetCount(v10);
  v12 = 0;
  capacity = Count;
  if (Count >= 1)
  {
    v18 = v17;
    if (v17 >= 1)
    {
      if (SourceWithSemantic)
      {
        v19 = CFGetTypeID(SourceWithSemantic);
        v12 = 0;
        if (v19 == AMTMeshSourceGetTypeID())
        {
          if (v15)
          {
            v20 = CFGetTypeID(v15);
            if (v20 != AMTMeshSourceGetTypeID())
            {
              return 0;
            }

            if (AMTMeshSourceGetVectorCount(v15) < 1)
            {
              return 0;
            }

            VectorCount = AMTMeshSourceGetVectorCount(v15);
            std::vector<int>::resize(a3, VectorCount);
            v65 = 1;
            if (!AMTComputeAttributeToTexCoordIndexMapping(SourceWithSemantic, v10, a3, &v65))
            {
              return 0;
            }

            if (v65 == 1)
            {
              return AMTMeshCreateWithSources(a1, v8, v10);
            }

            else
            {
              theArray = CFArrayCreateMutable(a1, capacity, MEMORY[0x277CBF128]);
              v23 = AMTMeshSourceCreateWithMeshSource(a1, SourceWithSemantic, a3);
              v63 = v23;
              if (v23)
              {
                CFArrayAppendValue(theArray, v23);
                CFArrayAppendValue(theArray, v15);
                v24 = 0;
                v57 = v18;
                v52 = v15;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v8, v24);
                  v26 = ValueAtIndex;
                  if (ValueAtIndex != SourceWithSemantic && ValueAtIndex != v15)
                  {
                    break;
                  }

LABEL_36:
                  if (++v24 == capacity)
                  {
                    v35 = 0;
                    Mutable = CFArrayCreateMutable(a1, v18, MEMORY[0x277CBF128]);
                    while (1)
                    {
                      v36 = CFArrayGetValueAtIndex(v10, v35);
                      v37 = v36;
                      if (!v36)
                      {
                        break;
                      }

                      v38 = CFGetTypeID(v36);
                      if (v38 != AMTMeshElementGetTypeID())
                      {
                        break;
                      }

                      SourceIndicesWithSemantic = AMTMeshElementGetSourceIndicesWithSemantic(v37, 3, 0);
                      v40 = SourceIndicesWithSemantic;
                      if (!SourceIndicesWithSemantic)
                      {
                        break;
                      }

                      v41 = CFGetTypeID(SourceIndicesWithSemantic);
                      if (v41 != AMTMeshSourceIndicesGetTypeID())
                      {
                        break;
                      }

                      if (AMTMeshSourceIndicesGetIndexType(v40) != 1)
                      {
                        break;
                      }

                      Data = AMTMeshSourceIndicesGetData(v40);
                      v43 = Data;
                      if (!Data)
                      {
                        break;
                      }

                      v44 = CFGetTypeID(Data);
                      if (v44 != CFDataGetTypeID())
                      {
                        break;
                      }

                      v61 = CFArrayCreateMutable(a1, 1, MEMORY[0x277CBF128]);
                      IndexType = AMTMeshSourceIndicesGetIndexType(v40);
                      IndexCount = AMTMeshSourceIndicesGetIndexCount(v40);
                      DataOffset = AMTMeshSourceIndicesGetDataOffset(v40);
                      DataStride = AMTMeshSourceIndicesGetDataStride(v40);
                      v60 = AMTMeshSourceIndicesCreateWithData(a1, v43, 0, 0, IndexType, IndexCount, DataOffset, DataStride);
                      CFArrayAppendValue(v61, v60);
                      FaceType = AMTMeshElementGetFaceType(v37);
                      FaceCount = AMTMeshElementGetFaceCount(v37);
                      MaterialIndex = AMTMeshElementGetMaterialIndex(v37);
                      v59 = AMTMeshElementCreateWithSourceIndicesArray(a1, v61, FaceType, FaceCount, MaterialIndex);
                      CFArrayAppendValue(Mutable, v59);
                      amt::AMTWrapper<__AMTMeshElement *>::~AMTWrapper(&v59);
                      amt::AMTWrapper<__AMTMeshSourceIndices *>::~AMTWrapper(&v60);
                      amt::AMTWrapper<__CFArray *>::~AMTWrapper(&v61);
                      if (v57 == ++v35)
                      {
                        v12 = AMTMeshCreateWithSources(a1, theArray, Mutable);
                        goto LABEL_48;
                      }
                    }

                    v12 = 0;
LABEL_48:
                    amt::AMTWrapper<__CFArray *>::~AMTWrapper(&Mutable);
                    goto LABEL_51;
                  }
                }

                Semantic = AMTMeshSourceGetSemantic(ValueAtIndex);
                v53 = v26;
                v54 = v24;
                Instance = AMTMeshSourceGetInstance(v26);
                v27 = 0;
                v28 = 0;
                v29 = 1;
                while (1)
                {
                  v30 = CFArrayGetValueAtIndex(v10, v28);
                  v31 = v30;
                  if (!v30)
                  {
                    break;
                  }

                  v32 = CFGetTypeID(v30);
                  if (v32 != AMTMeshElementGetTypeID())
                  {
                    break;
                  }

                  v33 = AMTMeshElementGetSourceIndicesWithSemantic(v31, Semantic, Instance) != 0;
                  v29 &= v33;
                  v27 |= v33;
                  if (v57 == ++v28)
                  {
                    if (!(v29 & 1 | ((v27 & 1) == 0)))
                    {
                      break;
                    }

                    v34 = AMTMeshSourceCreateWithMeshSource(a1, v53, a3);
                    v18 = v57;
                    v15 = v52;
                    v24 = v54;
                    Mutable = v34;
                    if (v34)
                    {
                      CFArrayAppendValue(theArray, v34);
                      amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(&Mutable);
                      goto LABEL_36;
                    }

                    amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(&Mutable);
                    break;
                  }
                }
              }

              v12 = 0;
LABEL_51:
              amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(&v63);
              amt::AMTWrapper<__CFArray *>::~AMTWrapper(&theArray);
            }
          }
        }
      }
    }
  }

  return v12;
}

void sub_23E77AE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v14 = va_arg(va2, const void *);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(va);
  amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(va1);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(va2);
  _Unwind_Resume(a1);
}

uint64_t AMTComputeAttributeToTexCoordIndexMapping(void *a1, const void *a2, uint64_t a3, char *a4)
{
  v8 = CFGetTypeID(a1);
  if (v8 == AMTMeshSourceGetTypeID())
  {
    v9 = CFGetTypeID(a2);
    if (v9 == CFArrayGetTypeID())
    {
      v10 = *(a3 + 8) - *a3;
      v11 = v10 >> 2;
      if (v10 >> 2 >= 1)
      {
        memset(*a3, 255, v10);
      }

      VectorCount = AMTMeshSourceGetVectorCount(a1);
      if (VectorCount <= v11)
      {
        Semantic = AMTMeshSourceGetSemantic(a1);
        Instance = AMTMeshSourceGetInstance(a1);
        Count = CFArrayGetCount(a2);
        v17 = 1;
        *a4 = 1;
        if (Count >= 1)
        {
          v18 = Count;
          ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
          if (ValueAtIndex)
          {
            v20 = ValueAtIndex;
            v42 = 0;
            v21 = 0;
            v17 = 0;
            v39 = Semantic;
            v38 = Instance;
            v40 = v18;
            while (1)
            {
              v22 = CFGetTypeID(v20);
              if (v22 != AMTMeshElementGetTypeID())
              {
                goto LABEL_39;
              }

              SourceIndicesWithSemantic = AMTMeshElementGetSourceIndicesWithSemantic(v20, Semantic, Instance);
              if (!SourceIndicesWithSemantic)
              {
                goto LABEL_39;
              }

              v24 = SourceIndicesWithSemantic;
              v25 = CFGetTypeID(SourceIndicesWithSemantic);
              if (v25 != AMTMeshSourceIndicesGetTypeID())
              {
                goto LABEL_39;
              }

              v26 = AMTMeshElementGetSourceIndicesWithSemantic(v20, 3, 0);
              v27 = v24;
              if (v26 && ((v28 = v26, v29 = CFGetTypeID(v26), v29 != AMTMeshSourceIndicesGetTypeID()) || (v27 = v28, AMTMeshSourceIndicesGetIndexType(v28) != 1)) || (IndexCount = AMTMeshSourceIndicesGetIndexCount(v27), AMTMeshSourceIndicesGetIndexCount(v24) != IndexCount) || AMTMeshSourceIndicesGetIndexType(v24) != 1)
              {
LABEL_40:
                v21 = 1;
                goto LABEL_39;
              }

              v41 = v17;
              if (IndexCount >= 1)
              {
                v31 = 0;
                while (1)
                {
                  v32 = __AMTMeshSourceIndices::indexAtIndex<int>(v24, v31);
                  v33 = __AMTMeshSourceIndices::indexAtIndex<int>(v27, v31);
                  v21 = 1;
                  if ((v32 & 0x80000000) != 0 || VectorCount <= v32 || (v33 & 0x80000000) != 0 || v11 <= v33)
                  {
                    break;
                  }

                  v34 = *(*a3 + 4 * v33);
                  if (v34 != v32 && v34 != -1)
                  {
                    break;
                  }

                  *(*a3 + 4 * v33) = v32;
                  v36 = *a4;
                  if (v32 != v33)
                  {
                    v36 = 0;
                  }

                  *a4 = v36;
                  if (IndexCount == ++v31)
                  {
                    goto LABEL_33;
                  }
                }

                v17 = v41;
                goto LABEL_39;
              }

LABEL_33:
              v37 = v42 + 1;
              v17 = v42 + 1 >= v40;
              if (v42 + 1 == v40)
              {
                goto LABEL_40;
              }

              ++v42;
              v20 = CFArrayGetValueAtIndex(a2, v37);
              v21 = 1;
              Semantic = v39;
              Instance = v38;
              if (!v20)
              {
                goto LABEL_39;
              }
            }
          }

          v17 = 0;
        }

        v21 = 0;
LABEL_39:
        v12 = v17 & v21;
        return v12 & 1;
      }
    }
  }

  v12 = 0;
  return v12 & 1;
}

CFTypeRef AMTMeshCreateWithMesh(const __CFAllocator *a1, CFTypeRef cf, const __CFDictionary *a3)
{
  if (a3 && (v6 = CFGetTypeID(a3), v6 == CFDictionaryGetTypeID()))
  {
    Value = CFDictionaryGetValue(a3, @"option.unify_indices");
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFBooleanGetTypeID()) && CFBooleanGetValue(v8))
    {
      memset(&__p, 0, sizeof(__p));
      cf = AMTIndexUnifiedMeshCreateWithMesh(a1, cf, &__p);
      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    CFRetain(cf);
  }

  return cf;
}

void sub_23E77B2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amt::TriangleMeshDecimatorImpl::decimate(uint64_t a1, uint64_t a2)
{
  v128 = 0;
  v126[1] = &v127;
  v126[0] = 0x800000000;
  v125 = 0;
  v123 = &v124;
  v122 = 0x800000000;
  v121 = 0;
  v119 = &v120;
  v118 = 0x800000000;
  v2 = *(a1 + 4);
  if (v2 > *(a2 + 40))
  {
    v5 = -*(a2 + 32);
    v6 = v2;
    v7 = -1.0;
    while (*a1 > *(a2 + 44))
    {
      v8 = 1.0 - v2 / v6;
      if (v8 > v7 + *(a2 + 72))
      {
        if (*(a1 + 464))
        {
          v9 = v8;
          std::function<BOOL ()(float)>::operator()(a1 + 440, v9);
        }

        v7 = v8;
      }

      v10 = amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::extract((a1 + 104));
      v11 = v10;
      if (v10)
      {
        if (*v10 < v5)
        {
          break;
        }

        if (*(a2 + 80) == 1 && (amt::TriangleMeshDecimatorImpl::preservesTrackedTriangleNormalsOrientation(a1, v10, a2) & 1) == 0)
        {
          *v11 = -8388609;
          amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::insert(a1 + 104, v11);
        }

        else
        {
          v13 = *(v11 + 32);
          v12 = *(v11 + 36);
          v116 = v12;
          v117 = v13;
          v14 = *(a1 + 32);
          if (*(v14 + 192 * v13 + 176) == 1 && *(v14 + 192 * v12 + 176) == 1)
          {
            if ((v126[0] & 0x8000000000000000) != 0)
            {
              amt::SmallVector<int,8>::reserve(v126, 0);
            }

            LODWORD(v126[0]) = 0;
            if (v122 < 0)
            {
              amt::SmallVector<int,8>::reserve(&v122, 0);
            }

            LODWORD(v122) = 0;
            if (v118 < 0)
            {
              amt::SmallVector<int,8>::reserve(&v118, 0);
            }

            LODWORD(v118) = 0;
            v15 = *(a1 + 32);
            v16 = v15 + 192 * v116;
            v19 = *(v16 + 64);
            v18 = v16 + 64;
            v17 = v19;
            if (v19 >= 1)
            {
              v20 = *(v18 + 8);
              v21 = *(a1 + 56);
              do
              {
                v22 = *v20++;
                *(v21 + (v22 << 6)) = 0;
                --v17;
              }

              while (v17);
            }

            v23 = v15 + 192 * v117;
            v26 = *(v23 + 64);
            v25 = v23 + 64;
            v24 = v26;
            if (v26 >= 1)
            {
              v27 = *(v25 + 8);
              v28 = *(a1 + 56);
              do
              {
                v29 = *v27++;
                *(v28 + (v29 << 6)) = 1;
                --v24;
              }

              while (v24);
            }

            v30 = v15 + 192 * v116;
            v33 = *(v30 + 64);
            v32 = v30 + 64;
            v31 = v33;
            if (v33 >= 1)
            {
              v34 = *(v32 + 8);
              v35 = *(a1 + 56);
              do
              {
                v36 = *v34++;
                ++*(v35 + (v36 << 6));
                --v31;
              }

              while (v31);
            }

            amt::TriangleMeshDecimatorImpl::extractAdjacentTriangles(a1, v117, 1, 2, v126, &v118);
            amt::TriangleMeshDecimatorImpl::extractAdjacentTriangles(a1, v116, 1, &v122);
            __p = 0;
            v114 = 0;
            v115 = 0;
            amt::TriangleMeshDecimatorImpl::appendIncidentTrianglesTrackedPoints(a1, v126, &__p);
            amt::TriangleMeshDecimatorImpl::appendIncidentTrianglesTrackedPoints(a1, &v122, &__p);
            amt::TriangleMeshDecimatorImpl::appendIncidentTrianglesTrackedPoints(a1, &v118, &__p);
            v37 = *(a1 + 344);
            if (*(v37 + 4 * v117) == -1)
            {
              std::vector<int>::push_back[abi:ne200100](&__p, &v117);
              v37 = *(a1 + 344);
            }

            v38 = v116;
            if (*(v37 + 4 * v116) == -1)
            {
              std::vector<int>::push_back[abi:ne200100](&__p, &v116);
              v38 = v116;
            }

            v39 = *(a1 + 32);
            v40 = v39 + 192 * v117;
            v109 = 0x800000000;
            v43 = *(v40 + 120);
            v42 = (v40 + 120);
            v41 = v43;
            v112 = 0;
            v110 = &v111;
            if (v43 >= 1)
            {
              v44 = 0;
              while (v44 < *v42)
              {
                v45 = *(a1 + 80) + 48 * *(*(v42 + 1) + 4 * v44);
                v47 = *(v45 + 32);
                v46 = *(v45 + 36);
                if (v47 != v117)
                {
                  v95 = v46 == v117;
                  v46 = v47;
                  if (!v95)
                  {
                    v104 = 249;
                    v105 = "opposite";
                    v106 = "v == _vindex0 || v == _vindex1";
                    goto LABEL_125;
                  }
                }

                v107.n128_u32[0] = v46;
                amt::SmallVector<int,8>::push_back(&v109, &v107);
                if (v41 == ++v44)
                {
                  goto LABEL_41;
                }
              }

              v104 = 169;
              v106 = "i < size()";
              v105 = "operator[]";
LABEL_125:
              __assert_rtn(v105, "AMTTriangleMeshDecimator.cpp", v104, v106);
            }

LABEL_41:
            v48 = v39 + 192 * v38;
            v49 = *(v48 + 120);
            if (v49 >= 1)
            {
              v50 = 0;
              while (1)
              {
                if (v50 >= *(v48 + 120))
                {
                  __assert_rtn("operator[]", "AMTTriangleMeshDecimator.cpp", 165, "i < size()");
                }

                v107.n128_u32[0] = *(*(v48 + 128) + 4 * v50);
                v51 = *(a1 + 80) + 48 * v107.n128_i32[0];
                v52 = *(v51 + 32);
                if (v52 == v116)
                {
                  v52 = *(v51 + 36);
                }

                else if (*(v51 + 36) != v116)
                {
                  v101 = 249;
                  v103 = "v == _vindex0 || v == _vindex1";
                  v102 = "opposite";
LABEL_127:
                  __assert_rtn(v102, "AMTTriangleMeshDecimator.cpp", v101, v103);
                }

                if ((v52 & 0x80000000) != 0)
                {
                  v101 = 875;
                  v102 = "decimate";
                  v103 = "vindex >= 0";
                  goto LABEL_127;
                }

                if (v52 == v117)
                {
                  goto LABEL_54;
                }

                v53 = v109;
                if (v109 >= 1)
                {
                  break;
                }

LABEL_53:
                *(v51 + 32) = v117;
                *(v51 + 36) = v52;
                amt::SmallVector<int,8>::push_back(v42, &v107);
LABEL_55:
                if (++v50 == v49)
                {
                  goto LABEL_56;
                }
              }

              v54 = v110;
              while (1)
              {
                v55 = *v54++;
                if (v55 == v52)
                {
                  break;
                }

                if (!--v53)
                {
                  goto LABEL_53;
                }
              }

LABEL_54:
              amt::SmallVector<int,8>::erase((*(a1 + 32) + 192 * v52 + 120), &v107);
              amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::remove((a1 + 104), v51);
              *(v51 + 44) = 0;
              goto LABEL_55;
            }

LABEL_56:
            v56 = v118;
            if (v118 >= 1)
            {
              v57 = 0;
              do
              {
                if (v57 >= v118)
                {
                  __assert_rtn("operator[]", "AMTTriangleMeshDecimator.cpp", 169, "i < size()");
                }

                v107.n128_u32[0] = *(v119 + v57);
                v58 = *(a1 + 56) + (v107.n128_i32[0] << 6);
                *(v58 + 33) = 0;
                amt::SmallVector<int,8>::erase((*(a1 + 32) + 192 * *(v58 + 4) + 64), &v107);
                amt::SmallVector<int,8>::erase((*(a1 + 32) + 192 * *(v58 + 8) + 64), &v107);
                amt::SmallVector<int,8>::erase((*(a1 + 32) + 192 * *(v58 + 12) + 64), &v107);
                ++v57;
              }

              while (v56 != v57);
              LODWORD(v56) = v118;
            }

            *(a1 + 4) -= v56;
            v59 = v117;
            v60 = *(a1 + 32);
            v61 = v122;
            if (v122 < 1)
            {
              v66 = v117;
            }

            else
            {
              v62 = 0;
              v63 = v60 + 192 * v117;
              do
              {
                if (v62 >= v122)
                {
                  __assert_rtn("operator[]", "AMTTriangleMeshDecimator.cpp", 169, "i < size()");
                }

                v107.n128_u32[0] = *(v123 + v62);
                v64 = *(a1 + 56) + (v107.n128_i32[0] << 6);
                for (i = 4; i != 16; i += 4)
                {
                  if (*(v64 + i) == v116)
                  {
                    *(v64 + i) = v117;
                  }
                }

                amt::SmallVector<int,8>::push_back((v63 + 64), &v107);
                ++v62;
              }

              while (v62 != v61);
              v59 = v117;
              v60 = *(a1 + 32);
              v66 = v117;
            }

            v67 = (v60 + 192 * v66);
            v68 = v60 + 192 * v116;
            *(v68 + 176) = 0;
            --*a1;
            *v67 = *(v11 + 16);
            for (j = 16; j != 56; j += 4)
            {
              *(v67 + j) = *(v68 + j) + *(v67 + j);
            }

            v70 = *(*(a1 + 32) + 192 * v66 + 64);
            if (v70 > 0)
            {
              amt::TriangleMeshDecimatorImpl::resetIncidentTrianglesTrackedPoints(a1, v59);
              v71 = __p;
              v72 = v114;
              while (v71 != v72)
              {
                v108 = *v71;
                v107.n128_u32[2] = 0;
                v107.n128_u64[0] = 0;
                v73 = amt::TriangleMeshDecimatorImpl::trackPoint(a1, v108, (*(a1 + 32) + 192 * v117 + 64), &v107, a2);
                v74 = v73;
                if ((v73 & 0x80000000) != 0)
                {
                  __assert_rtn("decimate", "AMTTriangleMeshDecimator.cpp", 936, "tindex0 >= 0");
                }

                *(*(a1 + 344) + 4 * v108) = v73;
                amt::TriangleMesh::setPosition(a1 + 128, v108, &v107);
                std::vector<int>::push_back[abi:ne200100]((*(a1 + 56) + (v74 << 6) + 40), &v108);
                ++v71;
              }

              v75 = *v42;
              if (v75 >= 1)
              {
                for (k = 0; k != v75; ++k)
                {
                  if (k >= *v42)
                  {
                    __assert_rtn("operator[]", "AMTTriangleMeshDecimator.cpp", 169, "i < size()");
                  }

                  amt::TriangleMeshDecimatorImpl::computeEdgeCollapseCost(a1, *(a1 + 80) + 48 * *(*(v42 + 1) + 4 * k), a2);
                }
              }

              for (m = 0; m != v70; ++m)
              {
                v78 = *(a1 + 32);
                v79 = v78 + 192 * v117;
                v81 = *(v79 + 64);
                v80 = v79 + 64;
                if (m >= v81)
                {
                  __assert_rtn("operator[]", "AMTTriangleMeshDecimator.cpp", 169, "i < size()");
                }

                v82 = *(a1 + 56) + (*(*(v80 + 8) + 4 * m) << 6);
                v85 = *(v82 + 4);
                v83 = *(v82 + 8);
                v84 = v82 + 4;
                if (v85 == v117)
                {
                  v85 = *(v84 + 8);
                }

                else if (v83 == v117)
                {
                  v83 = *(v84 + 8);
                }

                v86 = *(v78 + 192 * v83 + 120);
                if (v86 >= 1)
                {
                  v87 = 0;
                  v88 = v83;
                  do
                  {
                    v89 = *(a1 + 32) + 192 * v88;
                    v91 = *(v89 + 120);
                    v90 = v89 + 120;
                    if (v87 >= v91)
                    {
                      __assert_rtn("operator[]", "AMTTriangleMeshDecimator.cpp", 169, "i < size()");
                    }

                    v92 = *(a1 + 80) + 48 * *(*(v90 + 8) + 4 * v87);
                    v93 = *(v92 + 32);
                    v94 = *(v92 + 36);
                    v95 = v93 == v88 && v94 == v85;
                    if (v95 || (v93 == v85 ? (v96 = v94 == v88) : (v96 = 0), v96))
                    {
                      amt::TriangleMeshDecimatorImpl::computeEdgeCollapseCost(a1, v92, a2);
                    }

                    ++v87;
                  }

                  while (v86 != v87);
                }
              }
            }

            v97 = v112;
            v112 = 0;
            if (v97)
            {
              MEMORY[0x23EF11E60](v97, 0x1000C8052888210);
            }

            if (__p)
            {
              v114 = __p;
              operator delete(__p);
            }
          }
        }
      }

      v2 = *(a1 + 4);
      if (v2 <= *(a2 + 40))
      {
        break;
      }
    }

    v98 = v121;
    v121 = 0;
    if (v98)
    {
      MEMORY[0x23EF11E60](v98, 0x1000C8052888210);
    }
  }

  v99 = v125;
  v125 = 0;
  if (v99)
  {
    MEMORY[0x23EF11E60](v99, 0x1000C8052888210);
  }

  result = v128;
  v128 = 0;
  if (result)
  {
    return MEMORY[0x23EF11E60](result, 0x1000C8052888210);
  }

  return result;
}

void sub_23E77BCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a20)
  {
    MEMORY[0x23EF11E60](a20, 0x1000C8052888210);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    MEMORY[0x23EF11E60](a31, 0x1000C8052888210);
  }

  if (a38)
  {
    MEMORY[0x23EF11E60](a38, 0x1000C8052888210);
  }

  v40 = *(v38 - 144);
  *(v38 - 144) = 0;
  if (v40)
  {
    MEMORY[0x23EF11E60](v40, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<BOOL ()(float)>::operator()(uint64_t a1, float a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::extract(uint64_t *a1)
{
  v1 = *a1;
  v2 = (a1[1] - *a1) >> 3;
  if (!v2)
  {
    return 0;
  }

  v3 = v2 - 1;
  v4 = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  v5 = *a1;
  v6 = a1[1];
  *(**a1 + 40) = 0;
  *(*(v5 + 8 * v3) + 40) = v3;
  v7 = *(v6 - 8);
  *(v7 + 40) = -1;
  a1[1] = v6 - 8;
  amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::downheap(a1, 0);
  return v7;
}

void *amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::insert(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v5 - *a1;
  v7 = v6 >> 3;
  *(a2 + 40) = v6 >> 3;
  v8 = *(a1 + 16);
  if (v5 >= v8)
  {
    v10 = v6 >> 3;
    v11 = (v6 >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v4;
    v13 = v12 >> 2;
    if (v12 >> 2 <= v11)
    {
      v13 = v11;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::future<void>>>(a1, v14);
    }

    v15 = (8 * v10);
    *v15 = a2;
    v9 = 8 * v10 + 8;
    v16 = *(a1 + 8) - *a1;
    v17 = v15 - v16;
    memcpy(v15 - v16, *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v5 = a2;
    v9 = (v5 + 1);
  }

  *(a1 + 8) = v9;

  return amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::upheap(a1, v7);
}

_DWORD *amt::TriangleMeshDecimatorImpl::extractAdjacentTriangles(_DWORD *result, int a2, int a3, int a4, _DWORD *a5, _DWORD *a6)
{
  v6 = *(result + 4) + 192 * a2;
  v9 = *(v6 + 64);
  v7 = (v6 + 64);
  v8 = v9;
  if (v9 >= 1)
  {
    v14 = result;
    v15 = 0;
    do
    {
      if (v15 >= *v7)
      {
        amt::TriangleMeshDecimatorImpl::extractAdjacentTriangles();
      }

      v17 = *(*(v7 + 1) + 4 * v15);
      v16 = *(*(v14 + 7) + (v17 << 6));
      result = a5;
      if (v16 == a3 || (result = a6, v16 == a4))
      {
        result = amt::SmallVector<int,8>::push_back(result, &v17);
      }

      ++v15;
    }

    while (v8 != v15);
  }

  return result;
}

_DWORD *amt::TriangleMeshDecimatorImpl::extractAdjacentTriangles(_DWORD *result, int a2, int a3, _DWORD *a4)
{
  v4 = *(result + 4) + 192 * a2;
  v7 = *(v4 + 64);
  v5 = (v4 + 64);
  v6 = v7;
  if (v7 >= 1)
  {
    v10 = result;
    v11 = 0;
    do
    {
      if (v11 >= *v5)
      {
        amt::TriangleMeshDecimatorImpl::extractAdjacentTriangles();
      }

      v12 = *(*(v5 + 1) + 4 * v11);
      if (*(*(v10 + 7) + (v12 << 6)) == a3)
      {
        result = amt::SmallVector<int,8>::push_back(a4, &v12);
      }

      ++v11;
    }

    while (v6 != v11);
  }

  return result;
}

char *amt::TriangleMeshDecimatorImpl::appendIncidentTrianglesTrackedPoints(char *result, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  if (v3 >= 1)
  {
    v6 = result;
    for (i = 0; i != v3; ++i)
    {
      if (i >= *a2)
      {
        amt::TriangleMeshDecimatorImpl::extractAdjacentTriangles();
      }

      v8 = *(v6 + 56) + (*(*(a2 + 1) + 4 * i) << 6);
      result = std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a3, *(a3 + 8), *(v8 + 40), *(v8 + 48), (*(v8 + 48) - *(v8 + 40)) >> 2);
    }
  }

  return result;
}

_DWORD *amt::SmallVector<int,8>::push_back(_DWORD *result, int *a2)
{
  v3 = result;
  v4 = *result;
  if (*result == result[1])
  {
    result = amt::SmallVector<int,8>::reserve(result, 2 * v4);
    v4 = *v3;
  }

  v5 = *a2;
  v6 = *(v3 + 1);
  *v3 = v4 + 1;
  *(v6 + 4 * v4) = v5;
  return result;
}

int *amt::SmallVector<int,8>::erase(int *result, _DWORD *a2)
{
  v2 = *result;
  if (v2 >= 1)
  {
    v3 = 0;
    for (i = (*(result + 1) + 4); *(i - 1) != *a2; ++i)
    {
      if (v2 == ++v3)
      {
        return result;
      }
    }

    v5 = v2 - 1;
    *result = v5;
    if (v5 > v3)
    {
      do
      {
        ++v3;
        *(i - 1) = *i;
        ++i;
      }

      while (v3 < *result);
    }
  }

  return result;
}

uint64_t amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::remove(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 40);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *a1;
  v5 = (a1[1] - *a1) >> 3;
  if (v3 >= v5)
  {
    amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::remove();
  }

  v6 = v5 - 1;
  v7 = *(v4 + 8 * v3);
  *(v4 + 8 * v3) = *(v4 + 8 * v6);
  *(v4 + 8 * v6) = v7;
  v8 = *a1;
  v9 = a1[1];
  *(*(*a1 + 8 * v3) + 40) = v3;
  *(*(v8 + 8 * v6) + 40) = v6;
  a1[1] = v9 - 8;
  *(v2 + 40) = -1;
  v10 = v9 - 8 - v8;
  if (v10 >= 9 && v3 != (v10 >> 3))
  {
    if (**(v8 + 8 * v3) >= *v2)
    {
      amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::upheap(a1, v3);
    }

    else
    {
      amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::downheap(a1, v3);
    }
  }

  return v2;
}

void amt::TriangleMeshDecimatorImpl::resetIncidentTrianglesTrackedPoints(amt::TriangleMeshDecimatorImpl *this, int a2)
{
  v2 = *(this + 4) + 192 * a2;
  v5 = *(v2 + 64);
  v3 = (v2 + 64);
  v4 = v5;
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= *v3)
      {
        amt::TriangleMeshDecimatorImpl::extractAdjacentTriangles();
      }

      std::vector<int>::resize((*(this + 7) + (*(*(v3 + 1) + 4 * v7++) << 6) + 40), 0);
    }

    while (v4 != v7);
  }
}

uint64_t amt::TriangleMeshDecimatorImpl::trackPoint(void *a1, int a2, unsigned int *a3, float32x4_t *a4, uint64_t a5)
{
  v36 = *amt::TriangleMesh::position((a1 + 16), a2);
  v10 = amt::TriangleMesh::normal((a1 + 16), a2);
  v11 = *a3;
  if (v11 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = 0;
  v35 = *v10;
  v13 = 0xFFFFFFFFLL;
  v14 = 3.4028e38;
  do
  {
    if (v12 >= *a3)
    {
      amt::TriangleMeshDecimatorImpl::extractAdjacentTriangles();
    }

    v15 = *(*(a3 + 1) + 4 * v12);
    v16 = a1[7] + (v15 << 6);
    if ((*(v16 + 33) & 1) == 0)
    {
      amt::TriangleMeshDecimatorImpl::trackPoint();
    }

    v17 = 0;
    v18 = a1[4];
    v19 = (v18 + 192 * *(v16 + 4));
    v20 = (v18 + 192 * *(v16 + 8));
    v21 = (v18 + 192 * *(v16 + 12));
    v22 = vsubq_f32(*v20, *v19);
    v23 = vsubq_f32(*v21, *v19);
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), vnegq_f32(v22)), v23, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
    v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
    v26 = 0.0;
    do
    {
      v38 = v25;
      v27 = *(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v17 & 3)));
      v26 = v26 + (v27 * v27);
      ++v17;
    }

    while (v17 != 3);
    if (v26 != 0.0)
    {
      if (*(a5 + 80) != 1 || (v28 = vmulq_f32(v35, vmulq_n_f32(v25, 1.0 / sqrtf(v26))), *(a5 + 64) < (v28.f32[2] + vaddv_f32(*v28.f32))))
      {
        *v29.i64 = amt::closestPointInTriangle(v19, v20, v21, 0, v36);
        v30 = 0;
        v31 = vsubq_f32(v36, v29);
        v32 = 0.0;
        do
        {
          v37 = v31;
          v33 = *(&v37 & 0xFFFFFFFFFFFFFFF3 | (4 * (v30 & 3)));
          v32 = v32 + (v33 * v33);
          ++v30;
        }

        while (v30 != 3);
        if (v32 < v14)
        {
          *a4 = v29;
          v13 = v15;
          v14 = v32;
        }
      }
    }

    ++v12;
  }

  while (v12 != v11);
  return v13;
}

uint64_t *amt::TriangleMeshDecimatorImpl::computeEdgeCollapseCost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a2 + 32);
  v8 = *(a2 + 36);
  v9 = *(a1 + 32);
  v10 = (v9 + 192 * v7);
  v11 = (v9 + 192 * v8);
  do
  {
    v45[v6] = v10[2].f32[v6] + v11[2].f32[v6];
    ++v6;
  }

  while (v6 != 10);
  v12 = v9 + 192 * v7;
  v15 = *(v12 + 64);
  v14 = v12 + 64;
  v13 = v15;
  if (v15 >= 1)
  {
    v16 = *(v14 + 8);
    v17 = *(a1 + 56);
    v18 = v13;
    do
    {
      v19 = *v16++;
      *(v17 + (v19 << 6)) = 0;
      --v18;
    }

    while (v18);
  }

  v20 = v9 + 192 * v8;
  v23 = *(v20 + 64);
  v22 = v20 + 64;
  v21 = v23;
  if (v23 >= 1)
  {
    v24 = *(v22 + 8);
    v25 = *(a1 + 56);
    do
    {
      v26 = *v24++;
      *(v25 + (v26 << 6)) = 1;
      --v21;
    }

    while (v21);
  }

  if (v13 >= 1)
  {
    v27 = *(v14 + 8);
    v28 = *(a1 + 56);
    do
    {
      v29 = *v27++;
      ++*(v28 + (v29 << 6));
      --v13;
    }

    while (v13);
  }

  v41 = *v10->f32;
  v30.f32[0] = amt::TriangleMeshDecimatorImpl::computeCost(a1, v45, v10, v7, v8, a3);
  v40 = v30;
  v31.f32[0] = amt::TriangleMeshDecimatorImpl::computeCost(a1, v45, v11, v7, v8, a3);
  v32 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v40, v31), 0), *v11->f32, v41);
  if (v31.f32[0] >= v40.f32[0])
  {
    v33 = v40.f32[0];
  }

  else
  {
    v33 = v31.f32[0];
  }

  if ((*(a3 + 48) - 1) >= 2)
  {
    v44.i32[2] = 0;
    v44.i64[0] = 0;
  }

  else
  {
    v34.i64[0] = 0x3F0000003F000000;
    v34.i64[1] = 0x3F0000003F000000;
    v42 = v32;
    v44 = vmulq_f32(vaddq_f32(*v10->f32, *v11->f32), v34);
    v35 = amt::TriangleMeshDecimatorImpl::computeCost(a1, v45, &v44, v7, v8, a3);
    v32 = v42;
    if (v35 < v33)
    {
      v32 = v44;
      v33 = v35;
    }

    v36 = *(a3 + 48);
    v44.i32[2] = 0;
    v44.i64[0] = 0;
    if (v36 == 2)
    {
      v43 = v32;
      if (amt::Quadratic::minDistPoint(v45, &v44))
      {
        v37 = amt::TriangleMeshDecimatorImpl::computeCost(a1, v45, &v44, v7, v8, a3);
        v32 = v43;
        if (v37 < v33)
        {
          v32 = v44;
          v33 = v37;
        }
      }

      else
      {
        v32 = v43;
      }
    }
  }

  *(a2 + 16) = v32;
  *a2 = -v33;
  v38 = (a1 + 104);
  if (*(a2 + 40) == -1)
  {
    return amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::insert(v38, a2);
  }

  else
  {
    return amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::update(v38, a2);
  }
}

float amt::TriangleMeshDecimatorImpl::computeCost(uint64_t a1, float *a2, float32x2_t *a3, int a4, int a5, double *a6)
{
  v11 = fabsf(amt::Quadratic::operator()(a2, a3));
  v12 = *a6;
  v13 = a6[3];
  if (*a6 > 0.0 || v13 > 0.0)
  {
    v18 = 1.0;
    v14 = v13;
    v17 = v14;
    amt::TriangleMeshDecimatorImpl::computeAdjacentTrianglesQuality(a1, a4, a3, &v17, &v18);
    amt::TriangleMeshDecimatorImpl::computeAdjacentTrianglesQuality(a1, a5, a3, &v17, &v18);
    if (v13 > 0.0)
    {
      v11 = v11 / (v17 + 0.0000001);
    }

    if (v12 > 0.0)
    {
      v15 = a6[1];
      if (v15 > v18)
      {
        return v11 + (v15 - v18) * *a6;
      }
    }
  }

  return v11;
}

float amt::Quadratic::operator()(float *a1, float32x2_t *a2)
{
  v2 = *a2->f32;
  LODWORD(v3) = HIDWORD(*a2);
  v4 = COERCE_FLOAT(*&a2[1]);
  return a1[9] + (((((((((a1[1] * vmuls_lane_f32(v2.f32[0] + v2.f32[0], *v2.f32, 1)) + (*a1 * vmulq_f32(v2, v2).f32[0])) + (a1[2] * vmuls_lane_f32(v2.f32[0] + v2.f32[0], v2, 2))) + (a1[3] * (v2.f32[0] + v2.f32[0]))) + (a1[4] * vmuls_lane_f32(v3, *a2, 1))) + (a1[5] * vmuls_lane_f32(v3 + v3, *a2->f32, 2))) + (a1[6] * (v3 + v3))) + (a1[7] * vmuls_lane_f32(v4, *a2->f32, 2))) + (a1[8] * (v4 + v4)));
}

uint64_t amt::TriangleMeshDecimatorImpl::computeAdjacentTrianglesQuality(uint64_t result, int a2, float32x4_t *a3, float *a4, float *a5)
{
  v5 = *(result + 32);
  v6 = v5 + 192 * a2;
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(v8 + 8);
    v12 = *(result + 56);
    do
    {
      v13 = (v12 + (*(v11 + 4 * v10) << 6));
      if (v13->i32[0] == 1 && (v13[2].i8[0] & 1) == 0)
      {
        v14 = v13->i32[2];
        if (v13->i32[1] == a2)
        {
          v15 = v13->i32[3];
        }

        else if (v14 == a2)
        {
          v14 = v13->i32[3];
          v15 = v13->i32[1];
        }

        else
        {
          v15 = v13->i32[2];
          v14 = v13->i32[1];
        }

        v16 = 0;
        v17 = *(v5 + 192 * v14);
        v18 = vsubq_f32(v17, *a3);
        v19 = *(v5 + 192 * v15);
        v20 = vsubq_f32(v19, *a3);
        v21 = vsubq_f32(v17, v19);
        v22 = 0.0;
        do
        {
          v41 = v18;
          v23 = *(&v41 & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3)));
          v22 = v22 + (v23 * v23);
          ++v16;
        }

        while (v16 != 3);
        v24 = 0;
        v25 = 0.0;
        do
        {
          v40 = v20;
          v26 = *(&v40 & 0xFFFFFFFFFFFFFFF3 | (4 * (v24 & 3)));
          v25 = v25 + (v26 * v26);
          ++v24;
        }

        while (v24 != 3);
        v27 = 0;
        v28 = 0.0;
        do
        {
          v39 = v21;
          v29 = *(&v39 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
          v28 = v28 + (v29 * v29);
          ++v27;
        }

        while (v27 != 3);
        v30 = 0;
        if (v22 < v25)
        {
          v22 = v25;
        }

        v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v18)), v20, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
        v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
        v33 = 0;
        do
        {
          v38 = v32;
          v34 = *(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v30 & 3)));
          *v33.i32 = *v33.i32 + (v34 * v34);
          ++v30;
        }

        while (v30 != 3);
        if (v22 < v28)
        {
          v22 = v28;
        }

        *v33.i32 = sqrtf(*v33.i32);
        if (*v33.i32 > 0.0)
        {
          v32 = vdivq_f32(v32, vdupq_lane_s32(v33, 0));
        }

        v35 = *v33.i32 / v22;
        if (v22 <= 0.0)
        {
          v35 = 0.0;
        }

        if (v35 >= *a4)
        {
          v35 = *a4;
        }

        *a4 = v35;
        v36 = vmulq_f32(v32, v13[1]);
        v37 = v36.f32[2] + vaddv_f32(*v36.f32);
        if (v37 >= *a5)
        {
          v37 = *a5;
        }

        *a5 = v37;
      }

      ++v10;
    }

    while (v10 != v7);
  }

  return result;
}

BOOL amt::Quadratic::minDistPoint(uint64_t a1, _OWORD *a2)
{
  *&v4 = *a1;
  DWORD2(v4) = *(a1 + 8);
  HIDWORD(v4) = HIDWORD(*a1);
  *&v5 = *(a1 + 16);
  *(&v5 + 1) = __PAIR64__(DWORD1(v5), DWORD2(v4));
  v21[0] = v4;
  v21[1] = v5;
  v22 = *(a1 + 28);
  result = amt::Matrix3::inverse(v21, v20);
  if (result)
  {
    v8 = 0;
    v7.i32[0] = *(a1 + 12);
    v7.i32[1] = *(a1 + 24);
    v9 = vnegq_f32(v7);
    v9.f32[2] = -*(a1 + 32);
    v10 = 0uLL;
    v11 = v20;
    do
    {
      v12 = 0;
      v19 = v10;
      *(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) = 0;
      v13 = v19;
      HIDWORD(v13) = HIDWORD(v10);
      v10 = v13;
      do
      {
        v14 = v10;
        v15 = v11[v12];
        v17 = v9;
        v16 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3)));
        v18 = v14;
        *(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) = *(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) + (v15 * v16);
        v10 = v18;
        HIDWORD(v10) = HIDWORD(v14);
        ++v12;
      }

      while (v12 != 3);
      ++v8;
      v11 += 3;
    }

    while (v8 != 3);
    *a2 = v18;
  }

  return result;
}

uint64_t *amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::update(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = result;
    if (v2 >= ((result[1] - *result) >> 3))
    {
      amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::update();
    }

    if (v2 && (v4 = *a2, v4 > **(*result + 8 * amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::parent(result, *(a2 + 40)))))
    {

      return amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::upheap(v3, v2);
    }

    else
    {

      return amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::downheap(v3, v2);
    }
  }

  return result;
}

void amt::TriangleMeshDecimator::~TriangleMeshDecimator(amt::TriangleMeshDecimatorImpl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    amt::TriangleMeshDecimatorImpl::~TriangleMeshDecimatorImpl(v2);
    MEMORY[0x23EF11E80]();
  }
}

uint64_t amt::TriangleMeshDecimatorImpl::decimate(int *a1, amt::TriangleMesh *a2, uint64_t a3)
{
  if (!(-1431655765 * ((*(a2 + 10) - *(a2 + 9)) >> 2)) || ((*(a2 + 4) - *(a2 + 3)) & 0xFFFFFFFF0) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  amt::TriangleMeshDecimatorImpl::init(a1, a2, a3);
  amt::TriangleMeshDecimatorImpl::decimate(a1, a3);
  return 0;
}

uint64_t amt::TriangleMeshDecimatorImpl::decimatedMesh(float32x4_t *this, amt::TriangleMesh *a2)
{
  memset(&__p, 0, sizeof(__p));
  v4 = amt::TriangleMeshDecimatorImpl::decimatedPoints(this, *(a2 + 3), (*(a2 + 4) - *(a2 + 3)) >> 4, &__p);
  if (!v4)
  {
    v5 = *(a2 + 9);
    v6 = this->i32[1];
    if (v6 <= (-1431655765 * ((*(a2 + 10) - v5) >> 2)))
    {
      v7 = this[3].i64[1];
      v8 = this[4].i64[0];
      if (v7 == v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        begin = __p.__begin_;
        do
        {
          if (*(v7 + 33) == 1)
          {
            v11 = (v5 + 12 * v9);
            v12 = *(v7 + 8);
            v13 = *(v7 + 12);
            v14 = begin[*(v7 + 4)];
            *v11 = v14;
            v15 = begin[v12];
            v11[1] = v15;
            v16 = begin[v13];
            v11[2] = v16;
            if (v14 < 0 || (v17 = this->i32[0], v14 >= this->i32[0]))
            {
              v18 = 308;
              v19 = "tri[0] >= 0 && tri[0] < _pointCount";
              goto LABEL_25;
            }

            v18 = 309;
            if ((v15 & 0x80000000) != 0)
            {
              v19 = "tri[1] >= 0 && tri[1] < _pointCount";
              goto LABEL_25;
            }

            v19 = "tri[1] >= 0 && tri[1] < _pointCount";
            if (v15 >= v17)
            {
              goto LABEL_25;
            }

            v18 = 310;
            if ((v16 & 0x80000000) != 0)
            {
              v19 = "tri[2] >= 0 && tri[2] < _pointCount";
LABEL_25:
              __assert_rtn("decimatedMesh", "AMTTriangleMeshDecimator.cpp", v18, v19);
            }

            v19 = "tri[2] >= 0 && tri[2] < _pointCount";
            if (v16 >= v17)
            {
              goto LABEL_25;
            }

            ++v9;
          }

          v7 += 64;
        }

        while (v7 != v8);
        v6 = this->i32[1];
      }

      if (v9 != v6)
      {
        __assert_rtn("decimatedMesh", "AMTTriangleMeshDecimator.cpp", 314, "tcount == _triangleCount");
      }

      v4 = 0;
    }

    else
    {
      v4 = 0xFFFFFFFFLL;
    }
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return v4;
}

void sub_23E77CFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amt::TriangleMeshDecimatorImpl::trackedPoints(float32x4_t *this, float *a2, int *a3, int a4)
{
  if (((this[10].i64[0] - this[9].i64[1]) >> 4) < a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 && a4 >= 1)
  {
    v8 = 0;
    v9 = a2 + 2;
    do
    {
      v10 = vmlaq_n_f32(this[1], *amt::TriangleMesh::position(&this[8], v8), this->f32[2]);
      *(v9 - 1) = v10.i64[0];
      *v9 = v10.f32[2];
      ++v8;
      v9 += 4;
    }

    while (a4 != v8);
  }

  result = 0;
  if (a3 && a4 >= 1)
  {
    v11 = 0;
    v12 = this[21].i64[1];
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 <= -2)
      {
        amt::TriangleMeshDecimatorImpl::trackedPoints();
      }

      if (v13 == -1)
      {
        v15 = this[2].i64[0] + v11;
        if (*(v15 + 64) >= 1)
        {
          v13 = **(v15 + 72);
        }
      }

      *a3++ = v13;
      v11 += 192;
    }

    while (192 * a4 != v11);
    return 0;
  }

  return result;
}

uint64_t amt::TriangleMeshDecimator::setCallBack(uint64_t *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  std::__function::__value_func<BOOL ()(float)>::__value_func[abi:ne200100](v5, a2);
  std::function<BOOL ()(float)>::operator=((v2 + 440), v5);
  result = std::__function::__value_func<BOOL ()(float)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E77D1B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t amt::TriangleMeshDecimatorImpl::preservesTrackedTriangleNormalsOrientation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 32);
  v6 = *(a2 + 36);
  v76 = v6;
  v77[0] = v7;
  v8 = *(a1 + 32);
  v9 = v8 + 192 * v7;
  v75 = 0;
  v73[1] = &v74;
  v73[0] = 0x800000000;
  v70[0] = 0x800000000;
  v12 = *(v9 + 64);
  v10 = (v9 + 64);
  v11 = v12;
  v72 = 0;
  v70[1] = &v71;
  if (v12 >= 1)
  {
    v13 = 0;
    do
    {
      if (v13 >= *v10)
      {
        __assert_rtn("operator[]", "AMTTriangleMeshDecimator.cpp", 165, "i < size()");
      }

      LODWORD(v67) = *(*(v10 + 1) + 4 * v13);
      v14 = *(a1 + 56) + (v67 << 6);
      v16 = *(v14 + 4);
      v15 = v14 + 4;
      if (v16 != v76 && *(v15 + 4) != v76 && *(v15 + 8) != v76)
      {
        amt::SmallVector<int,8>::push_back(v73, &v67);
      }

      ++v13;
    }

    while (v11 != v13);
    v6 = v76;
    v8 = *(a1 + 32);
  }

  v17 = v8 + 192 * v6;
  v20 = *(v17 + 64);
  v18 = (v17 + 64);
  v19 = v20;
  if (v20 >= 1)
  {
    v21 = 0;
    do
    {
      if (v21 >= *v18)
      {
        __assert_rtn("operator[]", "AMTTriangleMeshDecimator.cpp", 165, "i < size()");
      }

      LODWORD(v67) = *(*(v18 + 1) + 4 * v21);
      v22 = *(a1 + 56) + (v67 << 6);
      v24 = *(v22 + 4);
      v23 = v22 + 4;
      if (v24 == v77[0] || *(v23 + 4) == v77[0])
      {
        v25 = v70;
      }

      else if (*(v23 + 8) == v77[0])
      {
        v25 = v70;
      }

      else
      {
        v25 = v73;
      }

      amt::SmallVector<int,8>::push_back(v25, &v67);
      ++v21;
    }

    while (v19 != v21);
  }

  if (LODWORD(v73[0]))
  {
    v26 = *(a1 + 32);
    v27 = 192 * v77[0];
    v28 = 192 * v76;
    v62 = *(v26 + v27);
    v63 = *(v26 + v28);
    *(v26 + v27) = *(a2 + 16);
    *(*(a1 + 32) + v28) = *(a2 + 16);
    v67 = 0;
    v68 = 0;
    v69 = 0;
    amt::TriangleMeshDecimatorImpl::appendIncidentTrianglesTrackedPoints(a1, v73, &v67);
    amt::TriangleMeshDecimatorImpl::appendIncidentTrianglesTrackedPoints(a1, v70, &v67);
    v29 = *(a1 + 344);
    if (*(v29 + 4 * v77[0]) == -1)
    {
      std::vector<int>::push_back[abi:ne200100](&v67, v77);
      v29 = *(a1 + 344);
    }

    if (*(v29 + 4 * v76) == -1)
    {
      std::vector<int>::push_back[abi:ne200100](&v67, &v76);
    }

    v30 = v68 - v67;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, ((v68 - v67) >> 2));
    v31 = v30 >> 2;
    v32 = (v30 >> 2) & 0x7FFFFFFF;
    if ((v30 >> 2) < 1)
    {
      v34 = 0;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v35 = *(v67 + v33);
        if (v35 < 0 || v35 >= ((*(a1 + 160) - *(a1 + 152)) >> 4))
        {
          __assert_rtn("preservesTrackedTriangleNormalsOrientation", "AMTTriangleMeshDecimator.cpp", 740, "vindex >= 0 && vindex < _trackedMesh.positionCount()");
        }

        v36 = amt::TriangleMesh::position((a1 + 128), *(v67 + v33));
        *(__p[0] + v33) = *v36;
        v65.n128_u32[2] = 0;
        v65.n128_u64[0] = 0;
        if ((amt::TriangleMeshDecimatorImpl::trackPoint(a1, v35, v73, &v65, a3) & 0x80000000) != 0)
        {
          v34 = 1;
        }

        else
        {
          amt::TriangleMesh::setPosition(a1 + 128, v35, &v65);
        }

        ++v33;
      }

      while (v32 != v33);
    }

    if (v68 != v67 && (v34 & 1) == 0)
    {
      v61 = v31;
      v38 = 0;
      v39 = (v68 - v67) >> 2;
      while (1)
      {
        v40 = *(v67 + v38);
        started = amt::Adjacency<int>::neighborsStartIndex((a1 + 368), v40);
        v42 = amt::Adjacency<int>::neighborsEndIndex((a1 + 368), v40);
        if (started < v42)
        {
          break;
        }

LABEL_47:
        if (++v38 >= v39)
        {
          v34 = 0;
          goto LABEL_50;
        }
      }

      v43 = started;
      while (1)
      {
        v44 = *(*(a1 + 416) + 4 * v43);
        if ((*(*(a1 + 56) + (v44 << 6) + 32) & 1) == 0)
        {
          amt::TriangleMesh::triangle(a1 + 128, *(*(a1 + 416) + 4 * v43), &v65);
          v45 = amt::TriangleMesh::position((a1 + 128), v65.n128_i32[0]);
          v46 = amt::TriangleMesh::position((a1 + 128), v65.n128_i32[1]);
          v47 = amt::TriangleMesh::position((a1 + 128), v65.n128_i32[2]);
          v48 = 0;
          v49 = vsubq_f32(*v46, *v45);
          v50 = vsubq_f32(*v47, *v45);
          v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v49)), v50, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
          v52 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
          v53 = 0.0;
          do
          {
            v64 = v52;
            v54 = *(&v64 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3)));
            v53 = v53 + (v54 * v54);
            ++v48;
          }

          while (v48 != 3);
          if (v53 != 0.0)
          {
            v55 = vmulq_f32(vmulq_n_f32(v52, 1.0 / sqrtf(v53)), *(*(a1 + 56) + (v44 << 6) + 16));
            if (*(a3 + 56) >= (v55.f32[2] + vaddv_f32(*v55.f32)))
            {
              break;
            }
          }
        }

        if (v42 == ++v43)
        {
          goto LABEL_47;
        }
      }

      v34 = 1;
LABEL_50:
      LODWORD(v31) = v61;
    }

    if (v31 >= 1)
    {
      v56 = 0;
      v57 = 0;
      do
      {
        amt::TriangleMesh::setPosition(a1 + 128, *(v67 + v57++), (__p[0] + v56));
        v56 += 16;
      }

      while (v32 != v57);
    }

    *(*(a1 + 32) + 192 * v77[0]) = v62;
    *(*(a1 + 32) + 192 * v76) = v63;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v37 = v34 ^ 1;
    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }
  }

  else
  {
    v37 = 1;
  }

  v58 = v72;
  v72 = 0;
  if (v58)
  {
    MEMORY[0x23EF11E60](v58, 0x1000C8052888210);
  }

  v59 = v75;
  v75 = 0;
  if (v59)
  {
    MEMORY[0x23EF11E60](v59, 0x1000C8052888210);
  }

  return v37 & 1;
}

void sub_23E77D768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    MEMORY[0x23EF11E60](a31, 0x1000C8052888210);
  }

  v33 = *(v31 - 120);
  *(v31 - 120) = 0;
  if (v33)
  {
    MEMORY[0x23EF11E60](v33, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

BOOL amt::Matrix3::inverse(float *a1, float *a2)
{
  v3 = a1[7];
  v2 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = (v4 * v2) - (v3 * v5);
  v7 = 1.0 / (((*a1 * v6) - (a1[1] * ((a1[3] * v2) - (v5 * a1[6])))) + (a1[2] * ((a1[3] * v3) - (v4 * a1[6]))));
  v8 = fabsf(v7);
  if (v8 != INFINITY)
  {
    *a2 = v6 * v7;
    a2[1] = v7 * ((a1[2] * a1[7]) - (a1[1] * a1[8]));
    a2[2] = v7 * ((a1[1] * a1[5]) - (a1[2] * a1[4]));
    a2[3] = v7 * ((a1[5] * a1[6]) - (a1[3] * a1[8]));
    a2[4] = v7 * ((*a1 * a1[8]) - (a1[2] * a1[6]));
    a2[5] = v7 * ((a1[3] * a1[2]) - (*a1 * a1[5]));
    a2[6] = v7 * ((a1[3] * a1[7]) - (a1[6] * a1[4]));
    a2[7] = v7 * ((a1[6] * a1[1]) - (*a1 * a1[7]));
    a2[8] = v7 * ((*a1 * a1[4]) - (a1[3] * a1[1]));
  }

  return v8 != INFINITY;
}

amt::TriangleMeshDecimatorImpl *amt::TriangleMeshDecimatorImpl::TriangleMeshDecimatorImpl(amt::TriangleMeshDecimatorImpl *this)
{
  *this = 0;
  *(this + 5) = 0u;
  *(this + 2) = 1065353216;
  *(this + 8) = 0u;
  *(this + 58) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 54) = 0;
  amt::TriangleMeshDecimatorImpl::clear(this);
  return this;
}

void sub_23E77DBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__function::__value_func<BOOL ()(float)>::~__value_func[abi:ne200100](v10 + 440);
  amt::Adjacency<int>::~Adjacency(v10 + 368);
  v14 = *(v10 + 344);
  if (v14)
  {
    *(v10 + 352) = v14;
    operator delete(v14);
  }

  amt::TriangleMeshDecimatorImpl::TriangleMeshDecimatorImpl(v12, (v10 + 104), v11, v10);
  a10 = (v10 + 56);
  std::vector<amt::TriangleMeshDecimatorImpl::DTriangle>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 32);
  std::vector<amt::TriangleMeshDecimatorImpl::DVertex>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void amt::TriangleMeshDecimatorImpl::clear(amt::TriangleMeshDecimatorImpl *this)
{
  *this = 0;
  std::vector<amt::TriangleMeshDecimatorImpl::DVertex>::__base_destruct_at_end[abi:ne200100](this + 32, *(this + 4));
  std::vector<amt::TriangleMeshDecimatorImpl::DTriangle>::clear[abi:ne200100](this + 7);
  *(this + 11) = *(this + 10);

  std::vector<amt::TriangleMeshDecimatorImpl::DEdge *>::resize(this + 13, 0);
}

void std::vector<amt::TriangleMeshDecimatorImpl::DTriangle>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
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

uint64_t std::vector<amt::TriangleMeshDecimatorImpl::DVertex>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>>::destroy[abi:ne200100]<amt::TriangleMeshDecimatorImpl::DVertex,void,0>(v3, i))
  {
    i -= 192;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::allocator_traits<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>>::destroy[abi:ne200100]<amt::TriangleMeshDecimatorImpl::DVertex,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 168);
  *(a2 + 168) = 0;
  if (v3)
  {
    MEMORY[0x23EF11E60](v3, 0x1000C8052888210);
  }

  result = *(a2 + 112);
  *(a2 + 112) = 0;
  if (result)
  {

    JUMPOUT(0x23EF11E60);
  }

  return result;
}

void std::vector<amt::TriangleMeshDecimatorImpl::DEdge *>::resize(void *a1, unint64_t a2)
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
    std::vector<amt::TriangleMeshDecimatorImpl::DEdge *>::__append(a1, a2 - v2);
  }
}

void std::vector<amt::TriangleMeshDecimatorImpl::DEdge *>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::future<void>>>(a1, v9);
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

void std::vector<amt::TriangleMeshDecimatorImpl::DTriangle>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<amt::TriangleMeshDecimatorImpl::DTriangle>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<amt::TriangleMeshDecimatorImpl::DVertex>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<amt::TriangleMeshDecimatorImpl::DVertex>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t amt::TriangleMeshDecimatorImpl::init(int *a1, amt::TriangleMesh *a2, uint64_t a3)
{
  if (((*(a2 + 4) - *(a2 + 3)) & 0xFFFFFFFF0) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  v4 = 0xFFFFFFFFLL;
  if (-1431655765 * ((*(a2 + 10) - *(a2 + 9)) >> 2))
  {
    amt::TriangleMeshDecimatorImpl::clear(a1);
    v6 = *(v3 + 4) - *(v3 + 3);
    *a1 = v6 >> 4;
    a1[1] = -1431655765 * ((*(v3 + 10) - *(v3 + 9)) >> 2);
    std::vector<amt::TriangleMeshDecimatorImpl::DVertex>::resize(a1 + 4, (v6 >> 4));
    std::vector<amt::TriangleMeshDecimatorImpl::DTriangle>::resize(a1 + 7, a1[1]);
    *(a1 + 1) = 0u;
    v7 = *a1;
    v113 = 0u;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(a1 + 19, v7, &v113);
    v8 = a1[1];
    v113.i64[0] = -1;
    v113.i32[2] = -1;
    std::vector<amt::Vec<int,3>>::resize(a1 + 25, v8, &v113);
    std::vector<int>::resize((a1 + 86), *a1);
    if (*a1 < 1)
    {
      *v9.i32 = *a1;
      *(a1 + 1) = vdivq_f32(*(a1 + 1), vdupq_lane_s32(v9, 0));
    }

    else
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(a1 + 4) + v10;
        v13 = amt::TriangleMesh::position(v3, v11);
        v14 = *v13;
        *v12 = *v13;
        *(a1 + 1) = vaddq_f32(v14, *(a1 + 1));
        *(v12 + 176) = 1;
        v14.i32[1] = 0;
        *(v12 + 16) = 0u;
        *(v12 + 32) = 0u;
        *(v12 + 48) = 0;
        ++v11;
        v15 = *a1;
        v10 += 192;
      }

      while (v11 < v15);
      v14.f32[0] = v15;
      v16 = vdivq_f32(*(a1 + 1), vdupq_lane_s32(*v14.f32, 0));
      *(a1 + 1) = v16;
      if (v15 >= 1)
      {
        v17 = 0;
        v18 = *(a1 + 4);
        v19 = 0.0;
        do
        {
          v20 = 0;
          v21 = vsubq_f32(*(v18 + 192 * v17), v16);
          v22 = 0.0;
          do
          {
            v104 = v21;
            v23 = *(&v104 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3)));
            v22 = v22 + (v23 * v23);
            ++v20;
          }

          while (v20 != 3);
          if (v19 < v22)
          {
            v19 = v22;
          }

          ++v17;
        }

        while (v17 != v15);
        v24 = 0;
        v25 = 0;
        v26 = sqrtf(v19);
        if (v19 == 0.0)
        {
          v26 = 1.0;
        }

        *(a1 + 2) = v26;
        v99 = 1.0 / v26;
        do
        {
          *(*(a1 + 4) + v24) = vmulq_n_f32(vsubq_f32(*(*(a1 + 4) + v24), *(a1 + 1)), v99);
          amt::TriangleMesh::setPosition((a1 + 32), v25, (*(a1 + 4) + v24));
          *(*(a1 + 43) + 4 * v25++) = -1;
          v24 += 192;
        }

        while (v25 < *a1);
        goto LABEL_21;
      }
    }

    a1[2] = 1065353216;
LABEL_21:
    v105[0] = 0;
    if (a1[1] >= 1)
    {
      v27 = 0;
      do
      {
        v28 = v3;
        amt::TriangleMesh::triangle(v3, v27, &v109);
        v29 = *(a1 + 7) + (v105[0] << 6);
        *(v29 + 33) = 1;
        v30 = v109;
        v31 = HIDWORD(v109);
        v32 = v110;
        *(v29 + 4) = v109;
        *(v29 + 8) = v31;
        *(v29 + 12) = v32;
        v33 = *(a1 + 4);
        v34 = (v33 + 192 * v30);
        v35 = (v33 + 192 * v31);
        v36 = (v33 + 192 * v32);
        amt::SmallVector<int,8>::push_back(v34[4].i32, v105);
        amt::SmallVector<int,8>::push_back(v35[4].i32, v105);
        amt::SmallVector<int,8>::push_back(v36[4].i32, v105);
        v37 = 0;
        v38 = vsubq_f32(*v35, *v34);
        v39 = vsubq_f32(*v36, *v34);
        v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vnegq_f32(v38)), v39, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
        v41 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
        v42 = 0;
        do
        {
          v103 = v41;
          v43 = *(&v103 & 0xFFFFFFFFFFFFFFF3 | (4 * (v37 & 3)));
          *v42.i32 = *v42.i32 + (v43 * v43);
          ++v37;
        }

        while (v37 != 3);
        if (*v42.i32 <= 0.0)
        {
          *(v29 + 32) = 1;
          *(v29 + 16) = 0u;
        }

        else
        {
          *v42.i32 = sqrtf(*v42.i32);
          v44 = vdivq_f32(v41, vdupq_lane_s32(v42, 0));
          *(v29 + 16) = v44;
          *(v29 + 32) = 0;
          v45 = vmulq_f32(v44, *v34);
          v45.f32[0] = v45.f32[2] + vaddv_f32(*v45.f32);
          v46 = v44;
          v46.f32[3] = -v45.f32[0];
          v47 = vuzp1q_s32(vdupq_lane_s32(*v44.f32, 1), v44);
          v48.i32[0] = vdupq_laneq_s32(v44, 2).u32[0];
          v44.i32[3] = v44.i32[2];
          v47.f32[2] = -v45.f32[0];
          v113 = vmulq_n_f32(v46, v44.f32[0]);
          v114 = vmulq_f32(vuzp2q_s32(v44, v44), v47);
          v48.i32[1] = v45.i32[0];
          v44.i32[1] = v45.i32[0];
          v44.f32[0] = -v45.f32[0];
          v115 = vmul_f32(v48, *v44.f32);
          if (*(a3 + 81) == 1)
          {
            for (i = 0; i != 10; ++i)
            {
              v113.f32[i] = *v42.i32 * v113.f32[i];
            }
          }

          for (j = 0; j != 10; ++j)
          {
            v34[1].f32[j] = v113.f32[j] + v34[1].f32[j];
          }

          for (k = 0; k != 10; ++k)
          {
            v35[1].f32[k] = v113.f32[k] + v35[1].f32[k];
          }

          for (m = 0; m != 10; ++m)
          {
            v36[1].f32[m] = v113.f32[m] + v36[1].f32[m];
          }
        }

        amt::TriangleMesh::setTriangle((a1 + 32), v105[0], v30, v31, v32);
        v27 = v105[0] + 1;
        v105[0] = v27;
        v3 = v28;
      }

      while (v27 < a1[1]);
    }

    amt::TriangleMesh::computeNormals((a1 + 32), 1);
    amt::computeVertexToTriangle(a1 + 25, (*(a1 + 20) - *(a1 + 19)) >> 4, (a1 + 92));
    v116 = 0;
    v113.i64[1] = &v114;
    v113.i64[0] = 0x800000000;
    if (*a1 < 1)
    {
      v58 = 0;
    }

    else
    {
      v53 = 0;
      v54 = 0;
      do
      {
        amt::TriangleMeshDecimatorImpl::computeAdjacentVertices(a1, v54, &v113);
        v55 = v113.u32[0];
        if (v113.i32[0] >= 1)
        {
          v56 = v113.i64[1];
          do
          {
            v57 = *v56++;
            if (v57 > v54)
            {
              ++v53;
            }

            --v55;
          }

          while (v55);
        }

        ++v54;
      }

      while (v54 < *a1);
      v58 = v53;
    }

    std::vector<amt::TriangleMeshDecimatorImpl::DEdge>::resize(a1 + 10, v58);
    v112 = 0;
    v110 = &v111;
    v109 = 0x800000000;
    v108 = 0;
    if (*a1 >= 1)
    {
      v59 = 0;
      v60 = 16;
      do
      {
        amt::TriangleMeshDecimatorImpl::computeAdjacentVertices(a1, v59, &v113);
        v61 = v113.u32[0];
        if (v113.i32[0] >= 1)
        {
          v62 = 0;
          while (v62 < v113.i32[0])
          {
            v63 = *(v113.i64[1] + 4 * v62);
            if ((v63 & 0x80000000) != 0 || v63 >= *a1)
            {
              v96 = 480;
              v97 = "init";
              v98 = "vindex1 >= 0 && vindex1 < _pointCount";
              goto LABEL_85;
            }

            if (v59 < v63)
            {
              v64 = *(a1 + 10) + 48 * v108;
              *(v64 + 36) = v63;
              *(v64 + 40) = -1;
              *(v64 + 44) = 1;
              *(v64 + 32) = v59;
              amt::SmallVector<int,8>::push_back((*(a1 + 4) + 192 * v59 + 120), &v108);
              amt::SmallVector<int,8>::push_back((*(a1 + 4) + 192 * v63 + 120), &v108);
              amt::TriangleMeshDecimatorImpl::computeEdgeAdjacentTriangles(a1, v59, v63, &v109);
              if (v109 == 1)
              {
                v65 = *(a3 + 16);
                if (v65 > 0.0)
                {
                  v66 = 0;
                  v67 = *(a1 + 4);
                  v68 = *(v67 + 192 * v59);
                  v69 = (v67 + 192 * v63);
                  v70 = vsubq_f32(*v69, v68);
                  v71 = *(*(a1 + 7) + (*v110 << 6) + 16);
                  v72 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL), vnegq_f32(v70)), v71, vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL));
                  v73 = vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL);
                  v74 = 0;
                  do
                  {
                    v102 = v73;
                    v75 = *(&v102 & 0xFFFFFFFFFFFFFFF3 | (4 * (v66 & 3)));
                    *v74.i32 = *v74.i32 + (v75 * v75);
                    ++v66;
                  }

                  while (v66 != 3);
                  *v74.i32 = sqrtf(*v74.i32);
                  if (*v74.i32 > 0.0)
                  {
                    v76 = vdivq_f32(v73, vdupq_lane_s32(v74, 0));
                    v77 = vmulq_f32(v76, v68);
                    v77.f32[0] = v77.f32[2] + vaddv_f32(*v77.f32);
                    v78 = v76;
                    v78.f32[3] = -v77.f32[0];
                    v79 = vuzp1q_s32(vdupq_lane_s32(*v76.f32, 1), v76);
                    v80.i32[0] = vdupq_laneq_s32(v76, 2).u32[0];
                    v76.i32[3] = v76.i32[2];
                    v79.f32[2] = -v77.f32[0];
                    *v105 = vmulq_n_f32(v78, v76.f32[0]);
                    v106 = vmulq_f32(vuzp2q_s32(v76, v76), v79);
                    v80.i32[1] = v77.i32[0];
                    v77.i32[1] = v77.i32[0];
                    v77.f32[0] = -v77.f32[0];
                    v107 = vmul_f32(v80, *v77.f32);
                    if (*(a3 + 81) == 1)
                    {
                      v81 = 0;
                      v82 = 0.0;
                      do
                      {
                        v101 = v70;
                        v83 = *(&v101 & 0xFFFFFFFFFFFFFFF3 | (4 * (v81 & 3)));
                        v82 = v82 + (v83 * v83);
                        ++v81;
                      }

                      while (v81 != 3);
                      for (n = 0; n != 10; ++n)
                      {
                        *&v105[n] = v82 * *&v105[n];
                      }
                    }

                    v85 = 0;
                    v86 = v65;
                    do
                    {
                      *&v105[v85] = *&v105[v85] * v86;
                      ++v85;
                    }

                    while (v85 != 10);
                    v87 = 0;
                    v88 = v67 + v60;
                    do
                    {
                      *(v88 + v87 * 4) = *&v105[v87] + *(v88 + v87 * 4);
                      ++v87;
                    }

                    while (v87 != 10);
                    v89 = 0;
                    v90 = v69 + 1;
                    do
                    {
                      v90->f32[v89] = *&v105[v89] + v90->f32[v89];
                      ++v89;
                    }

                    while (v89 != 10);
                  }
                }
              }

              ++v108;
            }

            if (++v62 == v61)
            {
              goto LABEL_74;
            }
          }

          v96 = 169;
          v98 = "i < size()";
          v97 = "operator[]";
LABEL_85:
          __assert_rtn(v97, "AMTTriangleMeshDecimator.cpp", v96, v98);
        }

LABEL_74:
        ++v59;
        v60 += 192;
      }

      while (v59 < *a1);
    }

    v92 = *(a1 + 10);
    for (ii = *(a1 + 11); v92 != ii; v92 += 48)
    {
      amt::TriangleMeshDecimatorImpl::computeEdgeCollapseCost(a1, v92, a3);
    }

    v93 = v112;
    v112 = 0;
    if (v93)
    {
      MEMORY[0x23EF11E60](v93, 0x1000C8052888210);
    }

    v94 = v116;
    v116 = 0;
    if (v94)
    {
      MEMORY[0x23EF11E60](v94, 0x1000C8052888210);
    }

    return 0;
  }

  return v4;
}

void sub_23E77E87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = *(v34 - 112);
  *(v34 - 112) = 0;
  if (v36)
  {
    MEMORY[0x23EF11E60](v36, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<amt::TriangleMeshDecimatorImpl::DVertex>::resize(uint64_t *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 6);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    return std::vector<amt::TriangleMeshDecimatorImpl::DVertex>::__append(result, v4);
  }

  if (!v3)
  {
    return std::vector<amt::TriangleMeshDecimatorImpl::DVertex>::__base_destruct_at_end[abi:ne200100](result, *result + 192 * a2);
  }

  return result;
}

void std::vector<amt::TriangleMeshDecimatorImpl::DTriangle>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 6;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + (a2 << 6);
      while (v3 != v6)
      {
        v7 = *(v3 - 24);
        if (v7)
        {
          *(v3 - 16) = v7;
          operator delete(v7);
        }

        v3 -= 64;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<amt::TriangleMeshDecimatorImpl::DTriangle>::__append(a1, v5);
  }
}

uint64_t amt::TriangleMesh::setTriangle(uint64_t this, signed int a2, int a3, int a4, int a5)
{
  if (a2 < 0 || (v5 = *(this + 72), (-1431655765 * ((*(this + 80) - v5) >> 2)) <= a2))
  {
    amt::TriangleMesh::setTriangle();
  }

  v6 = (v5 + 12 * a2);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  return this;
}

uint64_t amt::TriangleMeshDecimatorImpl::computeAdjacentVertices(uint64_t result, int a2, _DWORD *a3)
{
  v5 = result;
  if ((a3[1] & 0x80000000) != 0)
  {
    result = amt::SmallVector<int,8>::reserve(a3, 0);
  }

  *a3 = 0;
  v6 = *(v5 + 32);
  v7 = v6 + 192 * a2;
  v8 = *(v7 + 64);
  if (v8 <= 0)
  {
    *(v7 + 56) = 0;
  }

  else
  {
    v9 = *(v7 + 72);
    v10 = *(v5 + 56);
    v11 = *(v7 + 64);
    do
    {
      v12 = *v9++;
      v13 = (v10 + (v12 << 6));
      *(v6 + 192 * v13[1] + 56) = 1;
      *(v6 + 192 * v13[2] + 56) = 1;
      *(v6 + 192 * v13[3] + 56) = 1;
      --v11;
    }

    while (v11);
    v14 = 0;
    *(v7 + 56) = 0;
    do
    {
      if (v14 >= *(v7 + 64))
      {
        amt::TriangleMeshDecimatorImpl::extractAdjacentTriangles();
      }

      v15 = *(v5 + 56) + (*(*(v7 + 72) + 4 * v14) << 6);
      for (i = 4; i != 16; i += 4)
      {
        v20 = *(v15 + i);
        v17 = *(v5 + 32) + 192 * v20;
        v19 = *(v17 + 56);
        v18 = (v17 + 56);
        if (v19 == 1)
        {
          result = amt::SmallVector<int,8>::push_back(a3, &v20);
          *v18 = 0;
        }
      }

      ++v14;
    }

    while (v14 != v8);
  }

  return result;
}

void std::vector<amt::TriangleMeshDecimatorImpl::DEdge>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<amt::TriangleMeshDecimatorImpl::DEdge>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 48 * a2;
  }
}

uint64_t amt::TriangleMeshDecimatorImpl::computeEdgeAdjacentTriangles(uint64_t result, int a2, int a3, _DWORD *a4)
{
  v7 = result;
  if ((a4[1] & 0x80000000) != 0)
  {
    result = amt::SmallVector<int,8>::reserve(a4, 0);
  }

  *a4 = 0;
  v8 = *(v7 + 32);
  v9 = v8 + 192 * a2;
  v12 = *(v9 + 64);
  v10 = (v9 + 64);
  v11 = v12;
  if (v12 >= 1)
  {
    v13 = *(v10 + 1);
    v14 = *(v7 + 56);
    v15 = v11;
    do
    {
      v16 = *v13++;
      *(v14 + (v16 << 6)) = 0;
      --v15;
    }

    while (v15);
  }

  v17 = v8 + 192 * a3;
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  if (v20 >= 1)
  {
    v21 = *(v19 + 8);
    v22 = *(v7 + 56);
    do
    {
      v23 = *v21++;
      *(v22 + (v23 << 6)) = 1;
      --v18;
    }

    while (v18);
  }

  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if (i >= *v10)
      {
        amt::TriangleMeshDecimatorImpl::extractAdjacentTriangles();
      }

      v25 = *(*(v10 + 1) + 4 * i);
      if (*(*(v7 + 56) + (v25 << 6)))
      {
        result = amt::SmallVector<int,8>::push_back(a4, &v25);
      }
    }
  }

  return result;
}

uint64_t *std::vector<amt::TriangleMeshDecimatorImpl::DVertex>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 6) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 192 * a2;
      do
      {
        *(v4 + 48) = 0uLL;
        *(v4 + 64) = 0uLL;
        *(v4 + 160) = 0uLL;
        *(v4 + 176) = 0uLL;
        *(v4 + 128) = 0uLL;
        *(v4 + 144) = 0uLL;
        *(v4 + 96) = 0uLL;
        *(v4 + 112) = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 0uLL;
        *v4 = 0uLL;
        *(v4 + 80) = 0uLL;
        *(v4 + 72) = v4 + 80;
        *(v4 + 68) = 8;
        *(v4 + 128) = v4 + 136;
        *(v4 + 124) = 8;
        v4 += 192;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 6);
    v7 = v6 + a2;
    if (v6 + a2 > 0x155555555555555)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 6);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAALL)
    {
      v9 = 0x155555555555555;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>>(result, v9);
    }

    v11 = 192 * v6;
    v17 = 0;
    v18 = 192 * v6;
    *(&v19 + 1) = 0;
    v12 = 192 * v6;
    do
    {
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 160) = 0uLL;
      *(v12 + 176) = 0uLL;
      *(v12 + 128) = 0uLL;
      *(v12 + 144) = 0uLL;
      *(v12 + 96) = 0uLL;
      *(v12 + 112) = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 80) = 0uLL;
      *(v12 + 72) = v12 + 80;
      *(v12 + 68) = 8;
      *(v12 + 128) = v12 + 136;
      *(v12 + 124) = 8;
      v12 += 192;
    }

    while (v12 != 192 * v6 + 192 * a2);
    *&v19 = v11 + 192 * a2;
    v13 = result[1];
    v14 = v11 + *result - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>,amt::TriangleMeshDecimatorImpl::DVertex*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = v3[2];
    *(v3 + 1) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<amt::TriangleMeshDecimatorImpl::DVertex>::~__split_buffer(&v17);
  }

  return result;
}

void sub_23E77EE5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<amt::TriangleMeshDecimatorImpl::DVertex>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>,amt::TriangleMeshDecimatorImpl::DVertex*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      *v4 = *v8;
      for (i = 16; i != 56; i += 4)
      {
        *(v4 + i) = *(v8 + i);
      }

      *(v4 + 56) = *(v8 + 56);
      amt::SmallVector<int,8>::SmallVector(v4 + 64, (v8 + 64));
      amt::SmallVector<int,8>::SmallVector(v4 + 120, (v8 + 120));
      *(v4 + 176) = *(v8 + 176);
      v8 += 192;
      v4 = v14 + 192;
      v14 += 192;
    }

    while (v8 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>>::destroy[abi:ne200100]<amt::TriangleMeshDecimatorImpl::DVertex,void,0>(a1, v6);
      v6 += 192;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>,amt::TriangleMeshDecimatorImpl::DVertex*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t amt::SmallVector<int,8>::SmallVector(uint64_t a1, int *a2)
{
  *(a1 + 48) = 0;
  amt::SmallVector<int,8>::copy(a1, a2);
  return a1;
}

void sub_23E77F030(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v3)
  {
    MEMORY[0x23EF11E60](v3, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

int *amt::SmallVector<int,8>::copy(int *result, int *a2)
{
  v3 = result;
  v4 = *a2;
  if (result[1] < *a2)
  {
    result = amt::SmallVector<int,8>::reserve(result, *a2);
  }

  *v3 = v4;
  v5 = *a2;
  if (v5)
  {
    v6 = *(a2 + 1);
    v7 = *(v3 + 1);

    return memmove(v7, v6, 4 * v5);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>,amt::TriangleMeshDecimatorImpl::DVertex*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>,amt::TriangleMeshDecimatorImpl::DVertex*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>,amt::TriangleMeshDecimatorImpl::DVertex*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 192;
      result = std::allocator_traits<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>>::destroy[abi:ne200100]<amt::TriangleMeshDecimatorImpl::DVertex,void,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<amt::TriangleMeshDecimatorImpl::DVertex>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<amt::TriangleMeshDecimatorImpl::DVertex>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<amt::TriangleMeshDecimatorImpl::DVertex>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 192;
    result = std::allocator_traits<std::allocator<amt::TriangleMeshDecimatorImpl::DVertex>>::destroy[abi:ne200100]<amt::TriangleMeshDecimatorImpl::DVertex,void,0>(v5, v4 - 192);
  }

  return result;
}

void std::vector<amt::TriangleMeshDecimatorImpl::DTriangle>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 6;
    v9 = v4 - *a1;
    if (v9 >> 5 > v7)
    {
      v7 = v9 >> 5;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v18 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amt::TriangleMeshDecimatorImpl::DTriangle>>(a1, v10);
    }

    v15 = 0;
    v16 = v8 << 6;
    bzero((v8 << 6), a2 << 6);
    v17 = (v8 << 6) + (a2 << 6);
    v11 = *(a1 + 8);
    v12 = (v8 << 6) + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amt::TriangleMeshDecimatorImpl::DTriangle>,amt::TriangleMeshDecimatorImpl::DTriangle*>(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    *(a1 + 8) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v15 = v13;
    v16 = v13;
    std::__split_buffer<amt::TriangleMeshDecimatorImpl::DTriangle>::~__split_buffer(&v15);
  }
}

void sub_23E77F2FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<amt::TriangleMeshDecimatorImpl::DTriangle>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amt::TriangleMeshDecimatorImpl::DTriangle>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amt::TriangleMeshDecimatorImpl::DTriangle>,amt::TriangleMeshDecimatorImpl::DTriangle*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      v8 = *(v7 + 4);
      *(v4 + 12) = *(v7 + 12);
      *(v4 + 4) = v8;
      v9 = *(v7 + 16);
      LOWORD(v8) = *(v7 + 32);
      *(v4 + 40) = 0;
      v10 = v4 + 40;
      *(v10 - 8) = v8;
      *(v10 - 24) = v9;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v10, *(v7 + 40), *(v7 + 48), (*(v7 + 48) - *(v7 + 40)) >> 2);
      v7 += 64;
      v4 = v16 + 64;
      v16 += 64;
    }

    while (v7 != a3);
    v14 = 1;
    while (v6 != a3)
    {
      v11 = *(v6 + 40);
      if (v11)
      {
        *(v6 + 48) = v11;
        operator delete(v11);
      }

      v6 += 64;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<amt::TriangleMeshDecimatorImpl::DTriangle>,amt::TriangleMeshDecimatorImpl::DTriangle*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<amt::TriangleMeshDecimatorImpl::DTriangle>,amt::TriangleMeshDecimatorImpl::DTriangle*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<amt::TriangleMeshDecimatorImpl::DTriangle>,amt::TriangleMeshDecimatorImpl::DTriangle*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<amt::TriangleMeshDecimatorImpl::DTriangle>,amt::TriangleMeshDecimatorImpl::DTriangle*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 64;
  }
}

uint64_t std::__split_buffer<amt::TriangleMeshDecimatorImpl::DTriangle>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<amt::TriangleMeshDecimatorImpl::DTriangle>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<amt::TriangleMeshDecimatorImpl::DTriangle>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 64;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }
}

void std::vector<amt::TriangleMeshDecimatorImpl::DEdge>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amt::TriangleMeshDecimatorImpl::DEdge>>(a1, v9);
    }

    v11 = 48 * v6;
    v12 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amt::TriangleMeshDecimatorImpl::DEdge>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t amt::TriangleMeshDecimatorImpl::decimatedPoints(float32x4_t *a1, uint64_t a2, __int32 a3, std::vector<int> *this)
{
  result = 0xFFFFFFFFLL;
  if (a2 && a1->i32[0] <= a3)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a1[2].i64[1] - a1[2].i64[0]) >> 6);
    __x = -1;
    std::vector<int>::resize(this, v8, &__x);
    if (v8 < 1)
    {
      v11 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = (a1[2].i64[0] + v9);
        if (v12[11].i8[0] == 1)
        {
          this->__begin_[v10] = v11;
          *(a2 + 16 * v11++) = vmlaq_n_f32(a1[1], *v12, a1->f32[2]);
        }

        ++v10;
        v9 += 192;
      }

      while ((v8 & 0x7FFFFFFF) != v10);
    }

    if (v11 != a1->i32[0])
    {
      amt::TriangleMeshDecimatorImpl::decimatedPoints();
    }

    return 0;
  }

  return result;
}

void *std::function<BOOL ()(float)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(float)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<BOOL ()(float)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<BOOL ()(float)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::__function::__value_func<BOOL ()(float)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23E77FB00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t amt::SmallVector<int,8>::reserve(uint64_t result, int a2)
{
  if (*(result + 4) <= a2)
  {
    operator new[]();
  }

  return result;
}

uint64_t *amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::downheap(uint64_t *result, int a2)
{
  v2 = (result[1] - *result) >> 3;
  if (v2)
  {
    if (a2 < 0 || v2 <= a2)
    {
      amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::downheap();
    }

    v4 = result;
    v5 = *(*result + 8 * a2);
    v6 = amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::left(result, a2);
    result = amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::right(v4, a2);
    v7 = (v4[1] - *v4) >> 3;
    if (v6 < v7)
    {
      v8 = a2;
      while (1)
      {
        v9 = *v4;
        v10 = *(*v4 + 8 * v6);
        if (result >= v7 || (v11 = *(v9 + 8 * result), v12 = *v11, v13 = result, *v10 >= *v11))
        {
          v12 = *v10;
          v11 = *(*v4 + 8 * v6);
          v13 = v6;
        }

        if (*v5 >= v12)
        {
          break;
        }

        *(v9 + 8 * v8) = v11;
        *(v11 + 40) = v8;
        v6 = amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::left(v4, v13);
        result = amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::right(v4, v13);
        v8 = v13;
        if (v6 >= v7)
        {
          goto LABEL_13;
        }
      }

      v13 = v8;
LABEL_13:
      if (v13 != a2)
      {
        *(*v4 + 8 * v13) = v5;
        *(v5 + 40) = v13;
      }
    }
  }

  return result;
}